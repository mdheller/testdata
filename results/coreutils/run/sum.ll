; ModuleID = 'coreutils-8.30/src/sum.bc'
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
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Print checksum and block counts for each FILE.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [124 x i8] c"\0A  -r              use BSD sum algorithm, use 1K blocks\0A  -s, --sysv      use System V sum algorithm, use 512 bytes blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.10 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !53
@.str.12 = private unnamed_addr constant [18 x i8] c"Kayvan Aghaiepour\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"sysv\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%05d %5s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !71
@.str.39 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !77
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !82
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !85
@.str.51 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.53 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.54 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1, !dbg !92
@.str.4.55 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.56 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.57 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.60, i32 0, i32 0), i8* null], align 16, !dbg !107
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4, !dbg !114
@.str.6.58 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.59 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.60 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !123
@.str.65 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.71, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.77, i32 0, i32 0), i8* null], align 16, !dbg !130
@.str.68 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.69 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.70 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.71 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.72 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.73 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.74 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.75 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.76 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.77 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !158
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !165
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !177
@.str.11.78 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.79 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.81 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.82 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.83 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.84 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !184
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !191
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !179
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !193
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.94 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.109 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.110 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.111 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.112 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !198
@.str.1.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.127 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.128 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !207
@.str.141 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.142 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.143 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.144 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.145 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !671 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !676, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 %0, metadata !675, metadata !DIExpression()), !dbg !699
  %3 = icmp eq i32 %0, 0, !dbg !700
  br i1 %3, label %9, label %4, !dbg !701

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !702, !tbaa !704
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !702
  %7 = load i8*, i8** @program_name, align 8, !dbg !702, !tbaa !704
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !702
  br label %63, !dbg !702

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !708
  %11 = load i8*, i8** @program_name, align 8, !dbg !708, !tbaa !704
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !708
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !709
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !704
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !709
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !710
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !704
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #11, !dbg !710
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !713
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !704
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !713
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !714
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !704
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !714
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !715
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !704
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !715
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #11, !dbg !716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !695
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !717
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !684, metadata !DIExpression()) #11, !dbg !718
  br label %30, !dbg !719

; <label>:30:                                     ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !684, metadata !DIExpression()) #11, !dbg !718
  %33 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %31) #14, !dbg !719
  %34 = icmp eq i32 %33, 0, !dbg !719
  br i1 %34, label %40, label %35, !dbg !720

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !721
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !684, metadata !DIExpression()) #11, !dbg !718
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !722
  %38 = load i8*, i8** %37, align 8, !dbg !722, !tbaa !723
  %39 = icmp eq i8* %38, null, !dbg !725
  br i1 %39, label %40, label %30, !dbg !726, !llvm.loop !727

; <label>:40:                                     ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !684, metadata !DIExpression()) #11, !dbg !718
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !684, metadata !DIExpression()) #11, !dbg !718
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !730
  %43 = load i8*, i8** %42, align 8, !dbg !730, !tbaa !732
  %44 = icmp eq i8* %43, null, !dbg !733
  %45 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %43, !dbg !734
  call void @llvm.dbg.value(metadata i8* %45, metadata !683, metadata !DIExpression()) #11, !dbg !735
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !736
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !736
  %48 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !737
  call void @llvm.dbg.value(metadata i8* %48, metadata !691, metadata !DIExpression()) #11, !dbg !738
  %49 = icmp eq i8* %48, null, !dbg !739
  br i1 %49, label %56, label %50, !dbg !741

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !742
  %52 = icmp eq i32 %51, 0, !dbg !742
  br i1 %52, label %56, label %53, !dbg !743

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !744
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !744
  br label %56, !dbg !746

; <label>:56:                                     ; preds = %40, %50, %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !747
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !747
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !748
  %60 = icmp eq i8* %45, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), !dbg !748
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !748
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %45, i8* %61) #11, !dbg !748
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #11, !dbg !749
  br label %63

; <label>:63:                                     ; preds = %56, %4
  tail call void @exit(i32 %0) #15, !dbg !750
  unreachable, !dbg !750
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !756, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i8** %1, metadata !757, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* @bsd_sum_file, metadata !761, metadata !DIExpression()), !dbg !767
  %3 = load i8*, i8** %1, align 8, !dbg !768, !tbaa !704
  tail call void @set_program_name(i8* %3) #11, !dbg !769
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !770
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !771
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !772
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !773
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !774, !tbaa !704
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #11, !dbg !775
  store i1 false, i1* @have_read_stdin, align 1
  br label %10, !dbg !776

; <label>:10:                                     ; preds = %13, %2
  %11 = phi i1 (i8*, i32)* [ @bsd_sum_file, %2 ], [ %14, %13 ], !dbg !777
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !761, metadata !DIExpression()), !dbg !767
  %12 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !780
  call void @llvm.dbg.value(metadata i32 %12, metadata !759, metadata !DIExpression()), !dbg !781
  switch i32 %12, label %20 [
    i32 -1, label %21
    i32 114, label %13
    i32 115, label %15
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !776

; <label>:13:                                     ; preds = %10, %15
  %14 = phi i1 (i8*, i32)* [ @sysv_sum_file, %15 ], [ @bsd_sum_file, %10 ]
  br label %10, !dbg !767, !llvm.loop !782

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* @sysv_sum_file, metadata !761, metadata !DIExpression()), !dbg !767
  br label %13, !dbg !784

; <label>:16:                                     ; preds = %10
  tail call void @usage(i32 0) #16, !dbg !785
  unreachable, !dbg !785

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !704
  %19 = load i8*, i8** @Version, align 8, !dbg !786, !tbaa !704
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !786
  tail call void @exit(i32 0) #15, !dbg !786
  unreachable, !dbg !786

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 1) #16, !dbg !787
  unreachable, !dbg !787

; <label>:21:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !761, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !761, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !761, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !761, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !761, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, metadata !761, metadata !DIExpression()), !dbg !767
  %22 = load i32, i32* @optind, align 4, !dbg !788, !tbaa !789
  %23 = sub nsw i32 %0, %22, !dbg !791
  call void @llvm.dbg.value(metadata i32 %23, metadata !760, metadata !DIExpression()), !dbg !792
  %24 = icmp slt i32 %23, 1, !dbg !793
  br i1 %24, label %27, label %25, !dbg !795

; <label>:25:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i8 1, metadata !758, metadata !DIExpression()), !dbg !796
  %26 = icmp slt i32 %22, %0, !dbg !797
  br i1 %26, label %30, label %42, !dbg !800

; <label>:27:                                     ; preds = %21
  %28 = tail call zeroext i1 %11(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %23) #11, !dbg !801, !callees !802
  %29 = zext i1 %28 to i8, !dbg !803
  call void @llvm.dbg.value(metadata i8 %29, metadata !758, metadata !DIExpression()), !dbg !796
  br label %42, !dbg !804

; <label>:30:                                     ; preds = %25, %30
  %31 = phi i32 [ %40, %30 ], [ %22, %25 ]
  %32 = phi i8 [ %38, %30 ], [ 1, %25 ]
  call void @llvm.dbg.value(metadata i8 %32, metadata !758, metadata !DIExpression()), !dbg !796
  %33 = sext i32 %31 to i64, !dbg !805
  %34 = getelementptr inbounds i8*, i8** %1, i64 %33, !dbg !805
  %35 = load i8*, i8** %34, align 8, !dbg !805, !tbaa !704
  %36 = tail call zeroext i1 %11(i8* %35, i32 %23) #11, !dbg !806, !callees !802
  %37 = zext i1 %36 to i8, !dbg !806
  %38 = and i8 %32, %37, !dbg !807
  %39 = load i32, i32* @optind, align 4, !dbg !808, !tbaa !789
  %40 = add nsw i32 %39, 1, !dbg !808
  store i32 %40, i32* @optind, align 4, !dbg !808, !tbaa !789
  call void @llvm.dbg.value(metadata i8 %38, metadata !758, metadata !DIExpression()), !dbg !796
  %41 = icmp slt i32 %40, %0, !dbg !797
  br i1 %41, label %30, label %42, !dbg !800, !llvm.loop !809

; <label>:42:                                     ; preds = %30, %25, %27
  %43 = phi i8 [ %29, %27 ], [ 1, %25 ], [ %38, %30 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %43, metadata !758, metadata !DIExpression()), !dbg !796
  %44 = load i1, i1* @have_read_stdin, align 1
  br i1 %44, label %45, label %53, !dbg !812

; <label>:45:                                     ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !814, !tbaa !704
  %47 = tail call i32 @rpl_fclose(%struct._IO_FILE* %46) #11, !dbg !815
  %48 = icmp eq i32 %47, -1, !dbg !816
  br i1 %48, label %49, label %53, !dbg !817

; <label>:49:                                     ; preds = %45
  %50 = tail call i32* @__errno_location() #17, !dbg !818
  %51 = load i32, i32* %50, align 4, !dbg !818, !tbaa !789
  %52 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !818
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %52) #11, !dbg !818
  unreachable, !dbg !818

; <label>:53:                                     ; preds = %45, %42
  %54 = and i8 %43, 1, !dbg !819
  %55 = xor i8 %54, 1, !dbg !819
  %56 = zext i8 %55 to i32, !dbg !819
  ret i32 %56, !dbg !820
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @bsd_sum_file(i8*, i32) unnamed_addr #7 !dbg !821 {
  %3 = alloca [652 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !823, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 %1, metadata !824, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 0, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 0, metadata !882, metadata !DIExpression()), !dbg !895
  %4 = getelementptr inbounds [652 x i8], [652 x i8]* %3, i64 0, i64 0, !dbg !896
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %4) #11, !dbg !896
  call void @llvm.dbg.declare(metadata [652 x i8]* %3, metadata !887, metadata !DIExpression()), !dbg !897
  %5 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !898
  %6 = icmp eq i32 %5, 0, !dbg !898
  br i1 %6, label %7, label %9, !dbg !899

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !900, !tbaa !704
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !825, metadata !DIExpression()), !dbg !903
  store i1 true, i1* @have_read_stdin, align 1
  br label %16, !dbg !904

; <label>:9:                                      ; preds = %2
  %10 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)), !dbg !905
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !825, metadata !DIExpression()), !dbg !903
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !907
  br i1 %11, label %12, label %16, !dbg !909

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #17, !dbg !910
  %14 = load i32, i32* %13, align 4, !dbg !910, !tbaa !789
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !912
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %15) #11, !dbg !913
  br label %77, !dbg !914

; <label>:16:                                     ; preds = %9, %7
  %17 = phi %struct._IO_FILE* [ %8, %7 ], [ %10, %9 ], !dbg !915
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !825, metadata !DIExpression()), !dbg !903
  tail call void @fadvise(%struct._IO_FILE* %17, i32 2) #11, !dbg !916
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 2
  br label %20, !dbg !917

; <label>:20:                                     ; preds = %33, %16
  %21 = phi i32 [ 0, %16 ], [ %40, %33 ], !dbg !918
  %22 = phi i64 [ 0, %16 ], [ %35, %33 ], !dbg !918
  call void @llvm.dbg.value(metadata i64 %22, metadata !882, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %21, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !920, metadata !DIExpression()) #11, !dbg !926
  %23 = load i8*, i8** %18, align 8, !dbg !928, !tbaa !929
  %24 = load i8*, i8** %19, align 8, !dbg !928, !tbaa !933
  %25 = icmp ult i8* %23, %24, !dbg !928
  br i1 %25, label %26, label %30, !dbg !928, !prof !934

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !928
  store i8* %27, i8** %18, align 8, !dbg !928, !tbaa !929
  %28 = load i8, i8* %23, align 1, !dbg !928, !tbaa !935
  %29 = zext i8 %28 to i32, !dbg !928
  call void @llvm.dbg.value(metadata i32 %31, metadata !886, metadata !DIExpression()), !dbg !936
  br label %33, !dbg !917

; <label>:30:                                     ; preds = %20
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %17) #11, !dbg !928
  call void @llvm.dbg.value(metadata i32 %31, metadata !886, metadata !DIExpression()), !dbg !936
  %32 = icmp eq i32 %31, -1, !dbg !937
  br i1 %32, label %41, label %33, !dbg !917

; <label>:33:                                     ; preds = %26, %30
  %34 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %35 = add i64 %22, 1, !dbg !938
  call void @llvm.dbg.value(metadata i64 %35, metadata !882, metadata !DIExpression()), !dbg !895
  %36 = lshr i32 %21, 1, !dbg !939
  %37 = shl nuw nsw i32 %21, 15, !dbg !940
  %38 = or i32 %36, %37, !dbg !941
  call void @llvm.dbg.value(metadata i32 %38, metadata !881, metadata !DIExpression()), !dbg !894
  %39 = add i32 %34, %38, !dbg !942
  call void @llvm.dbg.value(metadata i32 %39, metadata !881, metadata !DIExpression()), !dbg !894
  %40 = and i32 %39, 65535, !dbg !943
  call void @llvm.dbg.value(metadata i32 %40, metadata !881, metadata !DIExpression()), !dbg !894
  br label %20, !dbg !917, !llvm.loop !944

; <label>:41:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i32 %21, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %22, metadata !882, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %21, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %22, metadata !882, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %21, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %22, metadata !882, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %21, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %22, metadata !882, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %21, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %22, metadata !882, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i32 %21, metadata !881, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %22, metadata !882, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !946, metadata !DIExpression()), !dbg !949
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 0, !dbg !952
  %43 = load i32, i32* %42, align 8, !dbg !952, !tbaa !953
  %44 = and i32 %43, 32, !dbg !952
  %45 = icmp eq i32 %44, 0, !dbg !954
  br i1 %45, label %52, label %46, !dbg !955

; <label>:46:                                     ; preds = %41
  %47 = tail call i32* @__errno_location() #17, !dbg !956
  %48 = load i32, i32* %47, align 4, !dbg !956, !tbaa !789
  %49 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !958
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %49) #11, !dbg !959
  br i1 %6, label %77, label %50, !dbg !960

; <label>:50:                                     ; preds = %46
  %51 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #11, !dbg !961
  br label %77, !dbg !961

; <label>:52:                                     ; preds = %41
  br i1 %6, label %60, label %53, !dbg !963

; <label>:53:                                     ; preds = %52
  %54 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %17) #11, !dbg !965
  %55 = icmp eq i32 %54, 0, !dbg !966
  br i1 %55, label %60, label %56, !dbg !967

; <label>:56:                                     ; preds = %53
  %57 = tail call i32* @__errno_location() #17, !dbg !968
  %58 = load i32, i32* %57, align 4, !dbg !968, !tbaa !789
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !970
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %59) #11, !dbg !971
  br label %77, !dbg !972

; <label>:60:                                     ; preds = %53, %52
  %61 = call i8* @human_readable(i64 %22, i8* nonnull %4, i32 0, i64 1, i64 1024) #11, !dbg !973
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %21, i8* %61) #11, !dbg !973
  %63 = icmp sgt i32 %1, 1, !dbg !974
  br i1 %63, label %64, label %66, !dbg !976

; <label>:64:                                     ; preds = %60
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #11, !dbg !977
  br label %66, !dbg !977

; <label>:66:                                     ; preds = %64, %60
  call void @llvm.dbg.value(metadata i32 10, metadata !978, metadata !DIExpression()) #11, !dbg !983
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !985, !tbaa !704
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !985
  %69 = load i8*, i8** %68, align 8, !dbg !985, !tbaa !986
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !985
  %71 = load i8*, i8** %70, align 8, !dbg !985, !tbaa !987
  %72 = icmp ult i8* %69, %71, !dbg !985
  br i1 %72, label %75, label %73, !dbg !985, !prof !934

; <label>:73:                                     ; preds = %66
  %74 = call i32 @__overflow(%struct._IO_FILE* %67, i32 10) #11, !dbg !985
  br label %77, !dbg !985

; <label>:75:                                     ; preds = %66
  %76 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !985
  store i8* %76, i8** %68, align 8, !dbg !985, !tbaa !986
  store i8 10, i8* %69, align 1, !dbg !985, !tbaa !935
  br label %77, !dbg !985

; <label>:77:                                     ; preds = %75, %73, %46, %50, %56, %12
  %78 = phi i1 [ false, %56 ], [ false, %12 ], [ false, %50 ], [ false, %46 ], [ true, %73 ], [ true, %75 ], !dbg !988
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %4) #11, !dbg !989
  ret i1 %78, !dbg !989
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @sysv_sum_file(i8*, i32) unnamed_addr #7 !dbg !990 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [652 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !992, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 %1, metadata !993, metadata !DIExpression()), !dbg !1010
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !1011
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %5) #11, !dbg !1011
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !995, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i64 0, metadata !999, metadata !DIExpression()), !dbg !1013
  %6 = getelementptr inbounds [652 x i8], [652 x i8]* %4, i64 0, i64 0, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 652, i8* nonnull %6) #11, !dbg !1014
  call void @llvm.dbg.declare(metadata [652 x i8]* %4, metadata !1000, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i32 0, metadata !1003, metadata !DIExpression()), !dbg !1016
  %7 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !1017
  %8 = icmp eq i32 %7, 0, !dbg !1017
  br i1 %8, label %9, label %10, !dbg !1018

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !1019
  store i1 true, i1* @have_read_stdin, align 1
  br label %17, !dbg !1020

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 0) #11, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %11, metadata !994, metadata !DIExpression()), !dbg !1019
  %12 = icmp eq i32 %11, -1, !dbg !1025
  br i1 %12, label %13, label %17, !dbg !1027

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno_location() #17, !dbg !1028
  %15 = load i32, i32* %14, align 4, !dbg !1028, !tbaa !789
  %16 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1030
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %16) #11, !dbg !1031
  br label %144, !dbg !1032

; <label>:17:                                     ; preds = %10, %9
  %18 = phi i32 [ 0, %9 ], [ %11, %10 ], !dbg !1033
  call void @llvm.dbg.value(metadata i32 %18, metadata !994, metadata !DIExpression()), !dbg !1019
  br label %19, !dbg !1034

; <label>:19:                                     ; preds = %110, %17
  %20 = phi i64 [ 0, %17 ], [ %112, %110 ], !dbg !1013
  %21 = phi i32 [ 0, %17 ], [ %111, %110 ], !dbg !1016
  call void @llvm.dbg.value(metadata i32 %21, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %20, metadata !999, metadata !DIExpression()), !dbg !1013
  %22 = call i64 @safe_read(i32 %18, i8* nonnull %5, i64 8192) #11, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %22, metadata !1005, metadata !DIExpression()), !dbg !1036
  switch i64 %22, label %23 [
    i64 0, label %113
    i64 -1, label %95
  ], !dbg !1037

; <label>:23:                                     ; preds = %19
  %24 = icmp ult i64 %22, 8, !dbg !1038
  br i1 %24, label %25, label %28, !dbg !1038

; <label>:25:                                     ; preds = %85, %23
  %26 = phi i64 [ 0, %23 ], [ %29, %85 ]
  %27 = phi i32 [ %21, %23 ], [ %93, %85 ]
  br label %101, !dbg !1038

; <label>:28:                                     ; preds = %23
  %29 = and i64 %22, -8, !dbg !1038
  %30 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %21, i32 0, !dbg !1038
  %31 = add i64 %29, -8, !dbg !1038
  %32 = lshr exact i64 %31, 3, !dbg !1038
  %33 = add nuw nsw i64 %32, 1, !dbg !1038
  %34 = and i64 %33, 1, !dbg !1038
  %35 = icmp eq i64 %31, 0, !dbg !1038
  br i1 %35, label %67, label %36, !dbg !1038

; <label>:36:                                     ; preds = %28
  %37 = sub nsw i64 %33, %34, !dbg !1038
  br label %38, !dbg !1038

; <label>:38:                                     ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %64, %38 ], !dbg !1040
  %40 = phi <4 x i32> [ %30, %36 ], [ %62, %38 ]
  %41 = phi <4 x i32> [ zeroinitializer, %36 ], [ %63, %38 ]
  %42 = phi i64 [ %37, %36 ], [ %65, %38 ]
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %39, !dbg !1038
  %44 = bitcast i8* %43 to <4 x i8>*, !dbg !1038
  %45 = load <4 x i8>, <4 x i8>* %44, align 16, !dbg !1038, !tbaa !935
  %46 = getelementptr inbounds i8, i8* %43, i64 4, !dbg !1038
  %47 = bitcast i8* %46 to <4 x i8>*, !dbg !1038
  %48 = load <4 x i8>, <4 x i8>* %47, align 4, !dbg !1038, !tbaa !935
  %49 = zext <4 x i8> %45 to <4 x i32>, !dbg !1038
  %50 = zext <4 x i8> %48 to <4 x i32>, !dbg !1038
  %51 = add <4 x i32> %40, %49, !dbg !1041
  %52 = add <4 x i32> %41, %50, !dbg !1041
  %53 = or i64 %39, 8, !dbg !1040
  %54 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %53, !dbg !1038
  %55 = bitcast i8* %54 to <4 x i8>*, !dbg !1038
  %56 = load <4 x i8>, <4 x i8>* %55, align 8, !dbg !1038, !tbaa !935
  %57 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !1038
  %58 = bitcast i8* %57 to <4 x i8>*, !dbg !1038
  %59 = load <4 x i8>, <4 x i8>* %58, align 4, !dbg !1038, !tbaa !935
  %60 = zext <4 x i8> %56 to <4 x i32>, !dbg !1038
  %61 = zext <4 x i8> %59 to <4 x i32>, !dbg !1038
  %62 = add <4 x i32> %51, %60, !dbg !1041
  %63 = add <4 x i32> %52, %61, !dbg !1041
  %64 = add i64 %39, 16, !dbg !1040
  %65 = add i64 %42, -2, !dbg !1040
  %66 = icmp eq i64 %65, 0, !dbg !1040
  br i1 %66, label %67, label %38, !dbg !1040, !llvm.loop !1042

; <label>:67:                                     ; preds = %38, %28
  %68 = phi <4 x i32> [ undef, %28 ], [ %62, %38 ]
  %69 = phi <4 x i32> [ undef, %28 ], [ %63, %38 ]
  %70 = phi i64 [ 0, %28 ], [ %64, %38 ]
  %71 = phi <4 x i32> [ %30, %28 ], [ %62, %38 ]
  %72 = phi <4 x i32> [ zeroinitializer, %28 ], [ %63, %38 ]
  %73 = icmp eq i64 %34, 0, !dbg !1040
  br i1 %73, label %85, label %74, !dbg !1040

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %70, !dbg !1038
  %76 = getelementptr inbounds i8, i8* %75, i64 4, !dbg !1038
  %77 = bitcast i8* %76 to <4 x i8>*, !dbg !1038
  %78 = load <4 x i8>, <4 x i8>* %77, align 4, !dbg !1038, !tbaa !935
  %79 = zext <4 x i8> %78 to <4 x i32>, !dbg !1038
  %80 = add <4 x i32> %72, %79, !dbg !1041
  %81 = bitcast i8* %75 to <4 x i8>*, !dbg !1038
  %82 = load <4 x i8>, <4 x i8>* %81, align 8, !dbg !1038, !tbaa !935
  %83 = zext <4 x i8> %82 to <4 x i32>, !dbg !1038
  %84 = add <4 x i32> %71, %83, !dbg !1041
  br label %85, !dbg !1041

; <label>:85:                                     ; preds = %67, %74
  %86 = phi <4 x i32> [ %68, %67 ], [ %84, %74 ], !dbg !1041
  %87 = phi <4 x i32> [ %69, %67 ], [ %80, %74 ], !dbg !1041
  %88 = add <4 x i32> %87, %86, !dbg !1041
  %89 = shufflevector <4 x i32> %88, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !1041
  %90 = add <4 x i32> %88, %89, !dbg !1041
  %91 = shufflevector <4 x i32> %90, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !1041
  %92 = add <4 x i32> %90, %91, !dbg !1041
  %93 = extractelement <4 x i32> %92, i32 0, !dbg !1041
  %94 = icmp eq i64 %22, %29
  br i1 %94, label %110, label %25, !dbg !1038

; <label>:95:                                     ; preds = %19
  %96 = tail call i32* @__errno_location() #17, !dbg !1046
  %97 = load i32, i32* %96, align 4, !dbg !1046, !tbaa !789
  %98 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1049
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %98) #11, !dbg !1050
  br i1 %8, label %144, label %99, !dbg !1051

; <label>:99:                                     ; preds = %95
  %100 = call i32 @close(i32 %18) #11, !dbg !1052
  br label %144, !dbg !1052

; <label>:101:                                    ; preds = %25, %101
  %102 = phi i64 [ %108, %101 ], [ %26, %25 ]
  %103 = phi i32 [ %107, %101 ], [ %27, %25 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !1007, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %103, metadata !1003, metadata !DIExpression()), !dbg !1016
  %104 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %102, !dbg !1038
  %105 = load i8, i8* %104, align 1, !dbg !1038, !tbaa !935
  %106 = zext i8 %105 to i32, !dbg !1038
  %107 = add i32 %103, %106, !dbg !1041
  %108 = add nuw i64 %102, 1, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %108, metadata !1007, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 %107, metadata !1003, metadata !DIExpression()), !dbg !1016
  %109 = icmp eq i64 %108, %22, !dbg !1055
  br i1 %109, label %110, label %101, !dbg !1043, !llvm.loop !1056

; <label>:110:                                    ; preds = %101, %85
  %111 = phi i32 [ %93, %85 ], [ %107, %101 ], !dbg !1041
  call void @llvm.dbg.value(metadata i32 %107, metadata !1003, metadata !DIExpression()), !dbg !1016
  %112 = add i64 %22, %20, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %112, metadata !999, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 undef, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %112, metadata !999, metadata !DIExpression()), !dbg !1013
  br label %19

; <label>:113:                                    ; preds = %19
  call void @llvm.dbg.value(metadata i64 %20, metadata !999, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %20, metadata !999, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %20, metadata !999, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %20, metadata !999, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %20, metadata !999, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %20, metadata !999, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i32 undef, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %112, metadata !999, metadata !DIExpression()), !dbg !1013
  br i1 %8, label %121, label %114, !dbg !1059

; <label>:114:                                    ; preds = %113
  %115 = call i32 @close(i32 %18) #11, !dbg !1061
  %116 = icmp eq i32 %115, 0, !dbg !1062
  br i1 %116, label %121, label %117, !dbg !1063

; <label>:117:                                    ; preds = %114
  %118 = tail call i32* @__errno_location() #17, !dbg !1064
  %119 = load i32, i32* %118, align 4, !dbg !1064, !tbaa !789
  %120 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1066
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %120) #11, !dbg !1067
  br label %144, !dbg !1068

; <label>:121:                                    ; preds = %114, %113
  %122 = and i32 %21, 65535, !dbg !1069
  %123 = lshr i32 %21, 16, !dbg !1070
  %124 = add nuw nsw i32 %122, %123, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %124, metadata !1001, metadata !DIExpression()), !dbg !1072
  %125 = and i32 %124, 65535, !dbg !1073
  %126 = lshr i32 %124, 16, !dbg !1074
  %127 = add nuw nsw i32 %125, %126, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %127, metadata !1002, metadata !DIExpression()), !dbg !1076
  %128 = call i8* @human_readable(i64 %20, i8* nonnull %6, i32 0, i64 1, i64 512) #11, !dbg !1077
  %129 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %127, i8* %128) #11, !dbg !1077
  %130 = icmp eq i32 %1, 0, !dbg !1078
  br i1 %130, label %133, label %131, !dbg !1080

; <label>:131:                                    ; preds = %121
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #11, !dbg !1081
  br label %133, !dbg !1081

; <label>:133:                                    ; preds = %121, %131
  call void @llvm.dbg.value(metadata i32 10, metadata !978, metadata !DIExpression()) #11, !dbg !1082
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1084, !tbaa !704
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 5, !dbg !1084
  %136 = load i8*, i8** %135, align 8, !dbg !1084, !tbaa !986
  %137 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 6, !dbg !1084
  %138 = load i8*, i8** %137, align 8, !dbg !1084, !tbaa !987
  %139 = icmp ult i8* %136, %138, !dbg !1084
  br i1 %139, label %142, label %140, !dbg !1084, !prof !934

; <label>:140:                                    ; preds = %133
  %141 = call i32 @__overflow(%struct._IO_FILE* %134, i32 10) #11, !dbg !1084
  br label %144, !dbg !1084

; <label>:142:                                    ; preds = %133
  %143 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1084
  store i8* %143, i8** %135, align 8, !dbg !1084, !tbaa !986
  store i8 10, i8* %136, align 1, !dbg !1084, !tbaa !935
  br label %144, !dbg !1084

; <label>:144:                                    ; preds = %95, %99, %142, %140, %117, %13
  %145 = phi i1 [ false, %117 ], [ false, %13 ], [ true, %140 ], [ true, %142 ], [ false, %99 ], [ false, %95 ]
  call void @llvm.lifetime.end.p0i8(i64 652, i8* nonnull %6) #11, !dbg !1085
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %5) #11, !dbg !1085
  ret i1 %145, !dbg !1085
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1086 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1088, metadata !DIExpression()), !dbg !1089
  store i8* %0, i8** @file_name, align 8, !dbg !1090, !tbaa !704
  ret void, !dbg !1091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1092 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1096, metadata !DIExpression()), !dbg !1097
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1098, !tbaa !1099
  ret void, !dbg !1101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1102 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1107, !tbaa !704
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1108
  %3 = icmp eq i32 %2, 0, !dbg !1109
  br i1 %3, label %22, label %4, !dbg !1110

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1111, !tbaa !1099, !range !1112
  %6 = icmp eq i8 %5, 0, !dbg !1111
  br i1 %6, label %11, label %7, !dbg !1113

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1114
  %9 = load i32, i32* %8, align 4, !dbg !1114, !tbaa !789
  %10 = icmp eq i32 %9, 32, !dbg !1115
  br i1 %10, label %22, label %11, !dbg !1116

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %12, metadata !1104, metadata !DIExpression()), !dbg !1118
  %13 = load i8*, i8** @file_name, align 8, !dbg !1119, !tbaa !704
  %14 = icmp eq i8* %13, null, !dbg !1119
  %15 = tail call i32* @__errno_location() #17, !dbg !1121
  %16 = load i32, i32* %15, align 4, !dbg !1121, !tbaa !789
  br i1 %14, label %19, label %17, !dbg !1122

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1123
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1124
  br label %20, !dbg !1124

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #11, !dbg !1125
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1126, !tbaa !789
  tail call void @_exit(i32 %21) #15, !dbg !1127
  unreachable, !dbg !1127

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1128, !tbaa !704
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1130
  %25 = icmp eq i32 %24, 0, !dbg !1131
  br i1 %25, label %28, label %26, !dbg !1132

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1133, !tbaa !789
  tail call void @_exit(i32 %27) #15, !dbg !1134
  unreachable, !dbg !1134

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1135
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1144, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %1, metadata !1145, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %2, metadata !1146, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %3, metadata !1147, metadata !DIExpression()), !dbg !1153
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %5, metadata !1148, metadata !DIExpression()), !dbg !1154
  ret void, !dbg !1155
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1156 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1194, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32 %1, metadata !1195, metadata !DIExpression()), !dbg !1197
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1198
  br i1 %3, label %7, label %4, !dbg !1200

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %5, metadata !1144, metadata !DIExpression()) #11, !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !1145, metadata !DIExpression()) #11, !dbg !1204
  call void @llvm.dbg.value(metadata i64 0, metadata !1146, metadata !DIExpression()) #11, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %1, metadata !1147, metadata !DIExpression()) #11, !dbg !1206
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1207
  call void @llvm.dbg.value(metadata i32 %6, metadata !1148, metadata !DIExpression()) #11, !dbg !1207
  br label %7, !dbg !1208

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1209
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @human_readable(i64, i8*, i32, i64, i64) local_unnamed_addr #7 !dbg !1210 {
  %6 = alloca [41 x i8], align 16
  call void @llvm.dbg.declare(metadata [41 x i8]* %6, metadata !1298, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %0, metadata !1214, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %1, metadata !1215, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %2, metadata !1216, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %3, metadata !1217, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %4, metadata !1218, metadata !DIExpression()), !dbg !1325
  %7 = and i32 %2, 3, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %7, metadata !1219, metadata !DIExpression()), !dbg !1327
  %8 = and i32 %2, 32, !dbg !1328
  %9 = icmp ne i32 %8, 0, !dbg !1329
  %10 = select i1 %9, i32 1024, i32 1000, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %10, metadata !1220, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 -1, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 8, metadata !1224, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i64 1, metadata !1230, metadata !DIExpression()), !dbg !1333
  %11 = tail call %struct.lconv* @localeconv() #11, !dbg !1334
  call void @llvm.dbg.value(metadata %struct.lconv* %11, metadata !1233, metadata !DIExpression()), !dbg !1335
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0, !dbg !1336
  %13 = load i8*, i8** %12, align 8, !dbg !1336, !tbaa !1337
  %14 = tail call i64 @strlen(i8* %13) #14, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %14, metadata !1263, metadata !DIExpression()), !dbg !1340
  %15 = add i64 %14, -1, !dbg !1341
  %16 = icmp ult i64 %15, 16, !dbg !1341
  %17 = select i1 %16, i64 %14, i64 1, !dbg !1341
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %18, metadata !1229, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %17, metadata !1230, metadata !DIExpression()), !dbg !1333
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2, !dbg !1344
  %20 = load i8*, i8** %19, align 8, !dbg !1344, !tbaa !1345
  call void @llvm.dbg.value(metadata i8* %20, metadata !1231, metadata !DIExpression()), !dbg !1346
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1, !dbg !1347
  %22 = load i8*, i8** %21, align 8, !dbg !1347, !tbaa !1349
  %23 = tail call i64 @strlen(i8* %22) #14, !dbg !1350
  %24 = icmp ult i64 %23, 17, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %22, metadata !1232, metadata !DIExpression()), !dbg !1352
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), !dbg !1353
  call void @llvm.dbg.value(metadata i8* %25, metadata !1232, metadata !DIExpression()), !dbg !1352
  %26 = getelementptr inbounds i8, i8* %1, i64 647, !dbg !1354
  call void @llvm.dbg.value(metadata i8* %26, metadata !1226, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %26, metadata !1225, metadata !DIExpression()), !dbg !1356
  %27 = icmp ugt i64 %4, %3, !dbg !1357
  br i1 %27, label %36, label %28, !dbg !1358

; <label>:28:                                     ; preds = %5
  %29 = urem i64 %3, %4, !dbg !1359
  %30 = udiv i64 %3, %4, !dbg !1360
  %31 = icmp eq i64 %29, 0, !dbg !1361
  br i1 %31, label %32, label %56, !dbg !1362

; <label>:32:                                     ; preds = %28
  call void @llvm.dbg.value(metadata i64 %30, metadata !1264, metadata !DIExpression()), !dbg !1363
  %33 = mul i64 %30, %0, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %33, metadata !1221, metadata !DIExpression()), !dbg !1365
  %34 = udiv i64 %33, %30, !dbg !1366
  %35 = icmp eq i64 %34, %0, !dbg !1368
  call void @llvm.dbg.value(metadata i32 0, metadata !1222, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 0, metadata !1228, metadata !DIExpression()), !dbg !1370
  br i1 %35, label %146, label %56

; <label>:36:                                     ; preds = %5
  %37 = icmp eq i64 %3, 0, !dbg !1371
  br i1 %37, label %56, label %38, !dbg !1372

; <label>:38:                                     ; preds = %36
  %39 = urem i64 %4, %3, !dbg !1373
  %40 = udiv i64 %4, %3, !dbg !1374
  %41 = icmp eq i64 %39, 0, !dbg !1375
  br i1 %41, label %42, label %56, !dbg !1376

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i64 %40, metadata !1269, metadata !DIExpression()), !dbg !1377
  %43 = urem i64 %0, %40, !dbg !1378
  %44 = mul i64 %43, 10, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %44, metadata !1272, metadata !DIExpression()), !dbg !1380
  %45 = urem i64 %44, %40, !dbg !1381
  %46 = shl i64 %45, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %46, metadata !1273, metadata !DIExpression()), !dbg !1383
  %47 = udiv i64 %0, %40, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %47, metadata !1221, metadata !DIExpression()), !dbg !1365
  %48 = udiv i64 %44, %40, !dbg !1385
  %49 = trunc i64 %48 to i32, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %49, metadata !1222, metadata !DIExpression()), !dbg !1369
  %50 = icmp ult i64 %46, %40, !dbg !1387
  %51 = icmp ne i64 %46, 0, !dbg !1388
  %52 = zext i1 %51 to i32, !dbg !1388
  %53 = icmp ult i64 %40, %46, !dbg !1389
  %54 = select i1 %53, i32 3, i32 2, !dbg !1390
  %55 = select i1 %50, i32 %52, i32 %54, !dbg !1391
  br label %146, !dbg !1391

; <label>:56:                                     ; preds = %32, %36, %38, %28
  %57 = uitofp i64 %4 to x86_fp80, !dbg !1392
  call void @llvm.dbg.value(metadata x86_fp80 %57, metadata !1274, metadata !DIExpression()), !dbg !1393
  %58 = uitofp i64 %0 to x86_fp80, !dbg !1394
  %59 = uitofp i64 %3 to x86_fp80, !dbg !1395
  %60 = fdiv x86_fp80 %59, %57, !dbg !1396
  %61 = fmul x86_fp80 %60, %58, !dbg !1397
  call void @llvm.dbg.value(metadata x86_fp80 %61, metadata !1277, metadata !DIExpression()), !dbg !1398
  %62 = and i32 %2, 16, !dbg !1399
  %63 = icmp eq i32 %62, 0, !dbg !1399
  br i1 %63, label %68, label %64, !dbg !1400

; <label>:64:                                     ; preds = %56
  %65 = uitofp i32 %10 to x86_fp80
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 0, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata x86_fp80 %65, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()), !dbg !1331
  %66 = fmul x86_fp80 %65, %65, !dbg !1402
  %67 = fcmp ugt x86_fp80 %66, %61, !dbg !1403
  br i1 %67, label %86, label %380, !dbg !1404, !llvm.loop !1405

; <label>:68:                                     ; preds = %56
  %69 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false, i1 true), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %7, metadata !1410, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata x86_fp80 %61, metadata !1415, metadata !DIExpression()), !dbg !1421
  %70 = icmp ne i32 %7, 1, !dbg !1422
  %71 = fcmp olt x86_fp80 %61, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1423
  %72 = and i1 %70, %71, !dbg !1424
  br i1 %72, label %73, label %82, !dbg !1424

; <label>:73:                                     ; preds = %68
  %74 = fptoui x86_fp80 %61 to i64, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %74, metadata !1416, metadata !DIExpression()), !dbg !1426
  %75 = icmp eq i32 %7, 0, !dbg !1427
  %76 = uitofp i64 %74 to x86_fp80, !dbg !1428
  %77 = fcmp une x86_fp80 %61, %76, !dbg !1429
  %78 = and i1 %75, %77, !dbg !1430
  %79 = zext i1 %78 to i64, !dbg !1430
  %80 = add i64 %79, %74, !dbg !1431
  %81 = uitofp i64 %80 to x86_fp80, !dbg !1432
  call void @llvm.dbg.value(metadata x86_fp80 %81, metadata !1415, metadata !DIExpression()), !dbg !1421
  br label %82, !dbg !1433

; <label>:82:                                     ; preds = %68, %73
  %83 = phi x86_fp80 [ %81, %73 ], [ %61, %68 ]
  call void @llvm.dbg.value(metadata x86_fp80 %83, metadata !1415, metadata !DIExpression()), !dbg !1421
  %84 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.53, i64 0, i64 0), x86_fp80 %83) #11, !dbg !1408
  %85 = tail call i64 @strlen(i8* %1) #14, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %85, metadata !1278, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1436
  br label %137, !dbg !1437

; <label>:86:                                     ; preds = %400, %396, %392, %388, %384, %380, %64, %404
  %87 = phi x86_fp80 [ %65, %64 ], [ %381, %380 ], [ %385, %384 ], [ %389, %388 ], [ %393, %392 ], [ %397, %396 ], [ %401, %400 ], [ %402, %404 ], !dbg !1438
  %88 = phi i32 [ 1, %64 ], [ 2, %380 ], [ 3, %384 ], [ 4, %388 ], [ 5, %392 ], [ 6, %396 ], [ 7, %400 ], [ 8, %404 ], !dbg !1440
  %89 = fdiv x86_fp80 %61, %87, !dbg !1441
  call void @llvm.dbg.value(metadata x86_fp80 %89, metadata !1277, metadata !DIExpression()), !dbg !1398
  %90 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false, i1 true), !dbg !1442
  call void @llvm.dbg.value(metadata i32 %7, metadata !1410, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata x86_fp80 %89, metadata !1415, metadata !DIExpression()), !dbg !1445
  %91 = icmp ne i32 %7, 1, !dbg !1446
  %92 = fcmp olt x86_fp80 %89, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1447
  %93 = and i1 %91, %92, !dbg !1448
  br i1 %93, label %94, label %103, !dbg !1448

; <label>:94:                                     ; preds = %86
  %95 = fptoui x86_fp80 %89 to i64, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %95, metadata !1416, metadata !DIExpression()), !dbg !1450
  %96 = icmp eq i32 %7, 0, !dbg !1451
  %97 = uitofp i64 %95 to x86_fp80, !dbg !1452
  %98 = fcmp une x86_fp80 %89, %97, !dbg !1453
  %99 = and i1 %96, %98, !dbg !1454
  %100 = zext i1 %99 to i64, !dbg !1454
  %101 = add i64 %100, %95, !dbg !1455
  %102 = uitofp i64 %101 to x86_fp80, !dbg !1456
  call void @llvm.dbg.value(metadata x86_fp80 %102, metadata !1415, metadata !DIExpression()), !dbg !1445
  br label %103, !dbg !1457

; <label>:103:                                    ; preds = %86, %94
  %104 = phi x86_fp80 [ %102, %94 ], [ %89, %86 ]
  call void @llvm.dbg.value(metadata x86_fp80 %104, metadata !1415, metadata !DIExpression()), !dbg !1445
  %105 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.54, i64 0, i64 0), x86_fp80 %104) #11, !dbg !1442
  %106 = tail call i64 @strlen(i8* %1) #14, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %106, metadata !1278, metadata !DIExpression()), !dbg !1435
  %107 = add i64 %17, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %107, metadata !1279, metadata !DIExpression()), !dbg !1436
  %108 = select i1 %9, i64 2, i64 3, !dbg !1460
  %109 = add i64 %108, %17, !dbg !1462
  %110 = icmp ult i64 %109, %106, !dbg !1463
  br i1 %110, label %119, label %111, !dbg !1464

; <label>:111:                                    ; preds = %103
  %112 = and i32 %2, 8, !dbg !1465
  %113 = icmp eq i32 %112, 0, !dbg !1465
  br i1 %113, label %137, label %114, !dbg !1466

; <label>:114:                                    ; preds = %111
  %115 = add i64 %106, -1, !dbg !1467
  %116 = getelementptr inbounds i8, i8* %1, i64 %115, !dbg !1468
  %117 = load i8, i8* %116, align 1, !dbg !1468, !tbaa !935
  %118 = icmp eq i8 %117, 48, !dbg !1469
  br i1 %118, label %119, label %137, !dbg !1470

; <label>:119:                                    ; preds = %114, %103
  %120 = fmul x86_fp80 %89, 0xK4002A000000000000000, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %7, metadata !1410, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata x86_fp80 %120, metadata !1415, metadata !DIExpression()), !dbg !1475
  %121 = fcmp olt x86_fp80 %120, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1476
  %122 = and i1 %91, %121, !dbg !1477
  br i1 %122, label %123, label %132, !dbg !1477

; <label>:123:                                    ; preds = %119
  %124 = fptoui x86_fp80 %120 to i64, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1416, metadata !DIExpression()), !dbg !1479
  %125 = icmp eq i32 %7, 0, !dbg !1480
  %126 = uitofp i64 %124 to x86_fp80, !dbg !1481
  %127 = fcmp une x86_fp80 %120, %126, !dbg !1482
  %128 = and i1 %125, %127, !dbg !1483
  %129 = zext i1 %128 to i64, !dbg !1483
  %130 = add i64 %129, %124, !dbg !1484
  %131 = uitofp i64 %130 to x86_fp80, !dbg !1485
  call void @llvm.dbg.value(metadata x86_fp80 %131, metadata !1415, metadata !DIExpression()), !dbg !1475
  br label %132, !dbg !1486

; <label>:132:                                    ; preds = %119, %123
  %133 = phi x86_fp80 [ %131, %123 ], [ %120, %119 ]
  call void @llvm.dbg.value(metadata x86_fp80 %133, metadata !1415, metadata !DIExpression()), !dbg !1475
  %134 = fdiv x86_fp80 %133, 0xK4002A000000000000000, !dbg !1471
  %135 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.53, i64 0, i64 0), x86_fp80 %134) #11, !dbg !1471
  %136 = tail call i64 @strlen(i8* %1) #14, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %136, metadata !1278, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1436
  br label %137, !dbg !1488

; <label>:137:                                    ; preds = %114, %132, %111, %82
  %138 = phi i64 [ %85, %82 ], [ %136, %132 ], [ %106, %114 ], [ %106, %111 ], !dbg !1489
  %139 = phi i64 [ 0, %82 ], [ 0, %132 ], [ %107, %114 ], [ %107, %111 ], !dbg !1489
  %140 = phi i32 [ -1, %82 ], [ %88, %132 ], [ %88, %114 ], [ %88, %111 ], !dbg !1490
  call void @llvm.dbg.value(metadata i32 %140, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i64 %139, metadata !1279, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %138, metadata !1278, metadata !DIExpression()), !dbg !1435
  %141 = sub i64 0, %138, !dbg !1491
  %142 = getelementptr inbounds i8, i8* %26, i64 %141, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %142, metadata !1225, metadata !DIExpression()), !dbg !1356
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %142, i8* align 1 %1, i64 %138, i1 false), !dbg !1492
  %143 = getelementptr inbounds i8, i8* %142, i64 %138, !dbg !1493
  %144 = sub i64 0, %139, !dbg !1494
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %145, metadata !1227, metadata !DIExpression()), !dbg !1495
  br label %263, !dbg !1496

; <label>:146:                                    ; preds = %32, %42
  %147 = phi i32 [ 0, %32 ], [ %55, %42 ], !dbg !1497
  %148 = phi i32 [ 0, %32 ], [ %49, %42 ], !dbg !1497
  %149 = phi i64 [ %33, %32 ], [ %47, %42 ], !dbg !1497
  call void @llvm.dbg.value(metadata i64 %149, metadata !1221, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %148, metadata !1222, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %147, metadata !1228, metadata !DIExpression()), !dbg !1370
  %150 = and i32 %2, 16, !dbg !1498
  %151 = icmp ne i32 %150, 0, !dbg !1498
  br i1 %151, label %152, label %217, !dbg !1499

; <label>:152:                                    ; preds = %146
  call void @llvm.dbg.value(metadata i32 0, metadata !1223, metadata !DIExpression()), !dbg !1331
  %153 = zext i32 %10 to i64, !dbg !1500
  %154 = icmp ult i64 %149, %153, !dbg !1501
  br i1 %154, label %217, label %155, !dbg !1502

; <label>:155:                                    ; preds = %152, %179
  %156 = phi i32 [ %180, %179 ], [ %147, %152 ], !dbg !1503
  %157 = phi i32 [ %181, %179 ], [ 0, %152 ], !dbg !1503
  %158 = phi i32 [ %169, %179 ], [ %148, %152 ], !dbg !1503
  %159 = phi i64 [ %168, %179 ], [ %149, %152 ], !dbg !1503
  call void @llvm.dbg.value(metadata i64 %159, metadata !1221, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %158, metadata !1222, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %157, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 %156, metadata !1228, metadata !DIExpression()), !dbg !1370
  %160 = urem i64 %159, %153, !dbg !1504
  %161 = trunc i64 %160 to i32, !dbg !1505
  %162 = mul nuw nsw i32 %161, 10, !dbg !1505
  %163 = add i32 %162, %158, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %163, metadata !1283, metadata !DIExpression()), !dbg !1506
  %164 = urem i32 %163, %10, !dbg !1507
  %165 = shl nuw nsw i32 %164, 1, !dbg !1508
  %166 = lshr i32 %156, 1
  %167 = add nuw nsw i32 %165, %166, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %167, metadata !1290, metadata !DIExpression()), !dbg !1510
  %168 = udiv i64 %159, %153, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %168, metadata !1221, metadata !DIExpression()), !dbg !1365
  %169 = udiv i32 %163, %10, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %169, metadata !1222, metadata !DIExpression()), !dbg !1369
  %170 = icmp ult i32 %167, %10, !dbg !1513
  br i1 %170, label %171, label %175, !dbg !1514

; <label>:171:                                    ; preds = %155
  %172 = sub nsw i32 0, %156, !dbg !1515
  %173 = icmp ne i32 %167, %172, !dbg !1515
  %174 = zext i1 %173 to i32, !dbg !1515
  br label %179, !dbg !1514

; <label>:175:                                    ; preds = %155
  %176 = add nsw i32 %167, %156, !dbg !1516
  %177 = icmp ult i32 %10, %176, !dbg !1517
  %178 = select i1 %177, i32 3, i32 2, !dbg !1518
  br label %179, !dbg !1514

; <label>:179:                                    ; preds = %175, %171
  %180 = phi i32 [ %174, %171 ], [ %178, %175 ], !dbg !1514
  call void @llvm.dbg.value(metadata i32 %180, metadata !1228, metadata !DIExpression()), !dbg !1370
  %181 = add nuw nsw i32 %157, 1, !dbg !1519
  call void @llvm.dbg.value(metadata i32 %181, metadata !1223, metadata !DIExpression()), !dbg !1331
  %182 = icmp uge i64 %168, %153, !dbg !1520
  %183 = icmp ult i32 %181, 8, !dbg !1521
  %184 = and i1 %183, %182, !dbg !1522
  br i1 %184, label %155, label %185, !dbg !1522, !llvm.loop !1523

; <label>:185:                                    ; preds = %179
  call void @llvm.dbg.value(metadata i32 %180, metadata !1228, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %180, metadata !1228, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %180, metadata !1228, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %180, metadata !1228, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %180, metadata !1228, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %180, metadata !1228, metadata !DIExpression()), !dbg !1370
  %186 = icmp ult i64 %168, 10, !dbg !1526
  br i1 %186, label %187, label %217, !dbg !1528

; <label>:187:                                    ; preds = %185
  %188 = icmp eq i32 %7, 1, !dbg !1529
  br i1 %188, label %189, label %193, !dbg !1532

; <label>:189:                                    ; preds = %187
  %190 = and i32 %169, 1, !dbg !1533
  %191 = add nuw nsw i32 %180, %190, !dbg !1534
  %192 = icmp ugt i32 %191, 2, !dbg !1535
  br i1 %192, label %197, label %203, !dbg !1536

; <label>:193:                                    ; preds = %187
  %194 = icmp eq i32 %7, 0, !dbg !1537
  %195 = icmp ne i32 %180, 0, !dbg !1538
  %196 = and i1 %194, %195, !dbg !1539
  br i1 %196, label %197, label %203, !dbg !1539

; <label>:197:                                    ; preds = %193, %189
  %198 = add nsw i32 %169, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %198, metadata !1222, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 0, metadata !1228, metadata !DIExpression()), !dbg !1370
  %199 = icmp eq i32 %198, 10, !dbg !1542
  %200 = add i64 %168, 1, !dbg !1544
  br i1 %199, label %201, label %203

; <label>:201:                                    ; preds = %197
  call void @llvm.dbg.value(metadata i64 %200, metadata !1221, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 0, metadata !1228, metadata !DIExpression()), !dbg !1370
  %202 = icmp ult i64 %200, 10, !dbg !1546
  br i1 %202, label %203, label %217, !dbg !1548

; <label>:203:                                    ; preds = %197, %193, %189, %201
  %204 = phi i64 [ %200, %201 ], [ %168, %189 ], [ %168, %193 ], [ %168, %197 ]
  %205 = phi i32 [ 0, %201 ], [ %169, %189 ], [ %169, %193 ], [ %198, %197 ]
  %206 = phi i32 [ 0, %201 ], [ %180, %189 ], [ %180, %193 ], [ 0, %197 ]
  %207 = icmp ne i32 %205, 0, !dbg !1549
  %208 = and i32 %2, 8, !dbg !1550
  %209 = icmp eq i32 %208, 0, !dbg !1550
  %210 = or i1 %209, %207, !dbg !1551
  br i1 %210, label %211, label %217, !dbg !1551

; <label>:211:                                    ; preds = %203
  %212 = trunc i32 %205 to i8, !dbg !1552
  %213 = add i8 %212, 48, !dbg !1552
  %214 = getelementptr inbounds i8, i8* %1, i64 646, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %214, metadata !1225, metadata !DIExpression()), !dbg !1356
  store i8 %213, i8* %214, align 1, !dbg !1555, !tbaa !935
  %215 = sub i64 0, %17, !dbg !1556
  %216 = getelementptr inbounds i8, i8* %214, i64 %215, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %216, metadata !1225, metadata !DIExpression()), !dbg !1356
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %216, i8* align 1 %18, i64 %17, i1 false), !dbg !1557
  call void @llvm.dbg.value(metadata i32 0, metadata !1228, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 0, metadata !1222, metadata !DIExpression()), !dbg !1369
  br label %217, !dbg !1558

; <label>:217:                                    ; preds = %203, %152, %201, %211, %185, %146
  %218 = phi i32 [ 0, %211 ], [ 0, %201 ], [ %180, %185 ], [ %147, %152 ], [ %147, %146 ], [ %206, %203 ], !dbg !1559
  %219 = phi i8* [ %216, %211 ], [ %26, %201 ], [ %26, %185 ], [ %26, %152 ], [ %26, %146 ], [ %26, %203 ], !dbg !1490
  %220 = phi i32 [ %181, %211 ], [ %181, %201 ], [ %181, %185 ], [ 0, %152 ], [ -1, %146 ], [ %181, %203 ], !dbg !1490
  %221 = phi i32 [ 0, %211 ], [ 0, %201 ], [ %169, %185 ], [ %148, %152 ], [ %148, %146 ], [ 0, %203 ], !dbg !1559
  %222 = phi i64 [ %204, %211 ], [ 10, %201 ], [ %168, %185 ], [ %149, %152 ], [ %149, %146 ], [ %204, %203 ], !dbg !1561
  call void @llvm.dbg.value(metadata i64 %222, metadata !1221, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %221, metadata !1222, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %220, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %219, metadata !1225, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %218, metadata !1228, metadata !DIExpression()), !dbg !1370
  %223 = trunc i32 %2 to i2, !dbg !1562
  switch i2 %223, label %250 [
    i2 1, label %224
    i2 0, label %232
  ], !dbg !1562

; <label>:224:                                    ; preds = %217
  %225 = sext i32 %218 to i64, !dbg !1563
  %226 = and i64 %222, 1, !dbg !1565
  %227 = sub nsw i64 0, %225, !dbg !1566
  %228 = icmp ne i64 %226, %227, !dbg !1566
  %229 = zext i1 %228 to i32, !dbg !1566
  %230 = add nsw i32 %221, %229, !dbg !1567
  %231 = icmp sgt i32 %230, 5, !dbg !1568
  br i1 %231, label %235, label %250, !dbg !1569

; <label>:232:                                    ; preds = %217
  %233 = add nsw i32 %221, %218, !dbg !1570
  %234 = icmp sgt i32 %233, 0, !dbg !1571
  br i1 %234, label %235, label %250, !dbg !1562

; <label>:235:                                    ; preds = %232, %224
  %236 = add i64 %222, 1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %236, metadata !1221, metadata !DIExpression()), !dbg !1365
  %237 = zext i32 %10 to i64, !dbg !1574
  %238 = icmp eq i64 %236, %237, !dbg !1576
  %239 = and i1 %151, %238, !dbg !1577
  %240 = icmp slt i32 %220, 8, !dbg !1578
  %241 = and i1 %240, %239, !dbg !1577
  br i1 %241, label %242, label %250, !dbg !1577

; <label>:242:                                    ; preds = %235
  %243 = add nsw i32 %220, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %243, metadata !1223, metadata !DIExpression()), !dbg !1331
  %244 = and i32 %2, 8, !dbg !1581
  %245 = icmp eq i32 %244, 0, !dbg !1581
  br i1 %245, label %246, label %250, !dbg !1583

; <label>:246:                                    ; preds = %242
  %247 = getelementptr inbounds i8, i8* %219, i64 -1, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %247, metadata !1225, metadata !DIExpression()), !dbg !1356
  store i8 48, i8* %247, align 1, !dbg !1586, !tbaa !935
  %248 = sub i64 0, %17, !dbg !1587
  %249 = getelementptr inbounds i8, i8* %247, i64 %248, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %249, metadata !1225, metadata !DIExpression()), !dbg !1356
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %249, i8* align 1 %18, i64 %17, i1 false), !dbg !1588
  br label %250, !dbg !1589

; <label>:250:                                    ; preds = %246, %242, %217, %235, %232, %224
  %251 = phi i8* [ %219, %235 ], [ %219, %224 ], [ %219, %232 ], [ %219, %217 ], [ %219, %242 ], [ %249, %246 ], !dbg !1556
  %252 = phi i32 [ %220, %235 ], [ %220, %224 ], [ %220, %232 ], [ %220, %217 ], [ %243, %242 ], [ %243, %246 ], !dbg !1503
  %253 = phi i64 [ %236, %235 ], [ %222, %224 ], [ %222, %232 ], [ %222, %217 ], [ 1, %242 ], [ 1, %246 ], !dbg !1590
  call void @llvm.dbg.value(metadata i64 %253, metadata !1221, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %252, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %251, metadata !1225, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %251, metadata !1227, metadata !DIExpression()), !dbg !1495
  br label %254, !dbg !1591

; <label>:254:                                    ; preds = %254, %250
  %255 = phi i8* [ %251, %250 ], [ %260, %254 ], !dbg !1592
  %256 = phi i64 [ %253, %250 ], [ %261, %254 ], !dbg !1593
  call void @llvm.dbg.value(metadata i64 %256, metadata !1221, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %255, metadata !1225, metadata !DIExpression()), !dbg !1356
  %257 = urem i64 %256, 10, !dbg !1594
  %258 = trunc i64 %257 to i8, !dbg !1595
  %259 = or i8 %258, 48, !dbg !1596
  %260 = getelementptr inbounds i8, i8* %255, i64 -1, !dbg !1597
  call void @llvm.dbg.value(metadata i8* %260, metadata !1225, metadata !DIExpression()), !dbg !1356
  store i8 %259, i8* %260, align 1, !dbg !1598, !tbaa !935
  %261 = udiv i64 %256, 10, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %261, metadata !1221, metadata !DIExpression()), !dbg !1365
  %262 = icmp ugt i64 %256, 9, !dbg !1600
  br i1 %262, label %254, label %263, !dbg !1601, !llvm.loop !1602

; <label>:263:                                    ; preds = %254, %137
  %264 = phi i8* [ %145, %137 ], [ %251, %254 ], !dbg !1604
  %265 = phi i8* [ %142, %137 ], [ %260, %254 ], !dbg !1604
  %266 = phi i32 [ %140, %137 ], [ %252, %254 ], !dbg !1605
  call void @llvm.dbg.value(metadata i32 %266, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %265, metadata !1225, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %264, metadata !1227, metadata !DIExpression()), !dbg !1495
  %267 = and i32 %2, 4, !dbg !1606
  %268 = icmp eq i32 %267, 0, !dbg !1606
  br i1 %268, label %314, label %269, !dbg !1607

; <label>:269:                                    ; preds = %263
  %270 = ptrtoint i8* %264 to i64, !dbg !1608
  %271 = ptrtoint i8* %265 to i64, !dbg !1608
  %272 = sub i64 %270, %271, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %265, metadata !1303, metadata !DIExpression()) #11, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %272, metadata !1304, metadata !DIExpression()) #11, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %20, metadata !1305, metadata !DIExpression()) #11, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %25, metadata !1306, metadata !DIExpression()) #11, !dbg !1612
  call void @llvm.dbg.value(metadata i64 -1, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %273 = tail call i64 @strlen(i8* %25) #14, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %273, metadata !1309, metadata !DIExpression()) #11, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %272, metadata !1310, metadata !DIExpression()) #11, !dbg !1616
  %274 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0, !dbg !1617
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %274) #11, !dbg !1617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %274, i8* nonnull align 1 %265, i64 %272, i1 false) #11, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %264, metadata !1307, metadata !DIExpression()) #11, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %272, metadata !1310, metadata !DIExpression()) #11, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %20, metadata !1305, metadata !DIExpression()) #11, !dbg !1611
  call void @llvm.dbg.value(metadata i64 -1, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %275 = load i8, i8* %20, align 1, !dbg !1620, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %275, metadata !1311, metadata !DIExpression()) #11, !dbg !1621
  %276 = icmp eq i8 %275, 0, !dbg !1622
  %277 = icmp ult i8 %275, 127, !dbg !1624
  %278 = zext i8 %275 to i64, !dbg !1626
  %279 = select i1 %277, i64 %278, i64 %272, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %279, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %280 = select i1 %276, i64 -1, i64 %279, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %280, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %281 = icmp ugt i64 %280, %272, !dbg !1629
  %282 = select i1 %281, i64 %272, i64 %280, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %282, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %283 = sub i64 0, %282, !dbg !1632
  %284 = getelementptr inbounds i8, i8* %264, i64 %283, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %284, metadata !1307, metadata !DIExpression()) #11, !dbg !1619
  %285 = sub i64 %272, %282, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %285, metadata !1310, metadata !DIExpression()) #11, !dbg !1616
  %286 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %285, !dbg !1634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %284, i8* nonnull align 1 %286, i64 %282, i1 false) #11, !dbg !1635
  %287 = icmp eq i64 %285, 0, !dbg !1636
  br i1 %287, label %312, label %288, !dbg !1638

; <label>:288:                                    ; preds = %269
  %289 = sub i64 0, %273
  br label %290, !dbg !1638

; <label>:290:                                    ; preds = %290, %288
  %291 = phi i64 [ %285, %288 ], [ %309, %290 ]
  %292 = phi i8* [ %284, %288 ], [ %308, %290 ]
  %293 = phi i64 [ %282, %288 ], [ %306, %290 ]
  %294 = phi i1 [ %276, %288 ], [ %300, %290 ]
  %295 = phi i8* [ %20, %288 ], [ %297, %290 ]
  call void @llvm.dbg.value(metadata i8* %295, metadata !1305, metadata !DIExpression()) #11, !dbg !1611
  %296 = getelementptr inbounds i8, i8* %295, i64 1, !dbg !1639
  call void @llvm.dbg.value(metadata i8* %296, metadata !1305, metadata !DIExpression()) #11, !dbg !1611
  %297 = select i1 %294, i8* %295, i8* %296, !dbg !1628
  %298 = getelementptr inbounds i8, i8* %292, i64 %289, !dbg !1640
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %298, i8* align 1 %25, i64 %273, i1 false) #11, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %291, metadata !1310, metadata !DIExpression()) #11, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %297, metadata !1305, metadata !DIExpression()) #11, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %293, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %298, metadata !1307, metadata !DIExpression()) #11, !dbg !1619
  %299 = load i8, i8* %297, align 1, !dbg !1620, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %299, metadata !1311, metadata !DIExpression()) #11, !dbg !1621
  %300 = icmp eq i8 %299, 0, !dbg !1622
  %301 = icmp ult i8 %299, 127, !dbg !1624
  %302 = zext i8 %299 to i64, !dbg !1626
  %303 = select i1 %301, i64 %302, i64 %291, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %303, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %304 = select i1 %300, i64 %293, i64 %303, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %304, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %305 = icmp ult i64 %291, %304, !dbg !1629
  %306 = select i1 %305, i64 %291, i64 %304, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %306, metadata !1308, metadata !DIExpression()) #11, !dbg !1613
  %307 = sub i64 0, %306, !dbg !1632
  %308 = getelementptr inbounds i8, i8* %298, i64 %307, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %308, metadata !1307, metadata !DIExpression()) #11, !dbg !1619
  %309 = sub i64 %291, %306, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %309, metadata !1310, metadata !DIExpression()) #11, !dbg !1616
  %310 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %309, !dbg !1634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %308, i8* nonnull align 1 %310, i64 %306, i1 false) #11, !dbg !1635
  %311 = icmp eq i64 %309, 0, !dbg !1636
  br i1 %311, label %312, label %290, !dbg !1638

; <label>:312:                                    ; preds = %290, %269
  %313 = phi i8* [ %284, %269 ], [ %308, %290 ], !dbg !1632
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %274) #11, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %313, metadata !1225, metadata !DIExpression()), !dbg !1356
  br label %314, !dbg !1643

; <label>:314:                                    ; preds = %263, %312
  %315 = phi i8* [ %313, %312 ], [ %265, %263 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8* %315, metadata !1225, metadata !DIExpression()), !dbg !1356
  %316 = trunc i32 %2 to i8, !dbg !1644
  %317 = icmp slt i8 %316, 0, !dbg !1644
  br i1 %317, label %318, label %359, !dbg !1645

; <label>:318:                                    ; preds = %314
  %319 = icmp slt i32 %266, 0, !dbg !1646
  br i1 %319, label %320, label %325, !dbg !1647

; <label>:320:                                    ; preds = %318
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 0, metadata !1223, metadata !DIExpression()), !dbg !1331
  %321 = icmp ugt i64 %4, 1, !dbg !1649
  br i1 %321, label %322, label %325, !dbg !1652

; <label>:322:                                    ; preds = %320
  %323 = zext i32 %10 to i64
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 0, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i64 %323, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()), !dbg !1331
  %324 = icmp ult i64 %323, %4, !dbg !1649
  br i1 %324, label %361, label %325, !dbg !1652, !llvm.loop !1653

; <label>:325:                                    ; preds = %376, %322, %361, %364, %367, %370, %373, %320, %318
  %326 = phi i32 [ %266, %318 ], [ 0, %320 ], [ 1, %322 ], [ 2, %361 ], [ 3, %364 ], [ 4, %367 ], [ 5, %370 ], [ 6, %373 ], [ %379, %376 ], !dbg !1655
  call void @llvm.dbg.value(metadata i32 %326, metadata !1223, metadata !DIExpression()), !dbg !1331
  %327 = and i32 %2, 256, !dbg !1656
  %328 = or i32 %326, %327, !dbg !1658
  %329 = icmp eq i32 %328, 0, !dbg !1658
  %330 = and i32 %2, 64, !dbg !1659
  %331 = icmp eq i32 %330, 0, !dbg !1659
  %332 = or i1 %331, %329, !dbg !1660
  br i1 %332, label %335, label %333, !dbg !1660

; <label>:333:                                    ; preds = %325
  %334 = getelementptr inbounds i8, i8* %1, i64 648, !dbg !1661
  call void @llvm.dbg.value(metadata i8* %334, metadata !1226, metadata !DIExpression()), !dbg !1355
  store i8 32, i8* %26, align 1, !dbg !1662, !tbaa !935
  br label %335, !dbg !1663

; <label>:335:                                    ; preds = %325, %333
  %336 = phi i8* [ %334, %333 ], [ %26, %325 ], !dbg !1490
  call void @llvm.dbg.value(metadata i8* %336, metadata !1226, metadata !DIExpression()), !dbg !1355
  %337 = icmp ne i32 %326, 0, !dbg !1664
  br i1 %337, label %338, label %349, !dbg !1666

; <label>:338:                                    ; preds = %335
  %339 = icmp eq i32 %8, 0, !dbg !1667
  %340 = icmp eq i32 %326, 1, !dbg !1668
  %341 = and i1 %339, %340, !dbg !1669
  br i1 %341, label %346, label %342, !dbg !1669

; <label>:342:                                    ; preds = %338
  %343 = sext i32 %326 to i64, !dbg !1670
  %344 = getelementptr inbounds [9 x i8], [9 x i8]* @power_letter, i64 0, i64 %343, !dbg !1670
  %345 = load i8, i8* %344, align 1, !dbg !1670, !tbaa !935
  br label %346, !dbg !1671

; <label>:346:                                    ; preds = %338, %342
  %347 = phi i8 [ %345, %342 ], [ 107, %338 ]
  %348 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !1672
  call void @llvm.dbg.value(metadata i8* %348, metadata !1226, metadata !DIExpression()), !dbg !1355
  store i8 %347, i8* %336, align 1, !dbg !1673, !tbaa !935
  br label %349, !dbg !1674

; <label>:349:                                    ; preds = %346, %335
  %350 = phi i8* [ %348, %346 ], [ %336, %335 ], !dbg !1675
  call void @llvm.dbg.value(metadata i8* %350, metadata !1226, metadata !DIExpression()), !dbg !1355
  %351 = icmp eq i32 %327, 0, !dbg !1676
  br i1 %351, label %359, label %352, !dbg !1678

; <label>:352:                                    ; preds = %349
  %353 = and i1 %9, %337, !dbg !1679
  br i1 %353, label %354, label %356, !dbg !1679

; <label>:354:                                    ; preds = %352
  %355 = getelementptr inbounds i8, i8* %350, i64 1, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %355, metadata !1226, metadata !DIExpression()), !dbg !1355
  store i8 105, i8* %350, align 1, !dbg !1683, !tbaa !935
  br label %356, !dbg !1684

; <label>:356:                                    ; preds = %354, %352
  %357 = phi i8* [ %355, %354 ], [ %350, %352 ], !dbg !1685
  call void @llvm.dbg.value(metadata i8* %357, metadata !1226, metadata !DIExpression()), !dbg !1355
  %358 = getelementptr inbounds i8, i8* %357, i64 1, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %358, metadata !1226, metadata !DIExpression()), !dbg !1355
  store i8 66, i8* %357, align 1, !dbg !1687, !tbaa !935
  br label %359, !dbg !1688

; <label>:359:                                    ; preds = %349, %356, %314
  %360 = phi i8* [ %358, %356 ], [ %350, %349 ], [ %26, %314 ], !dbg !1490
  call void @llvm.dbg.value(metadata i8* %360, metadata !1226, metadata !DIExpression()), !dbg !1355
  store i8 0, i8* %360, align 1, !dbg !1689, !tbaa !935
  ret i8* %315, !dbg !1690

; <label>:361:                                    ; preds = %322
  call void @llvm.dbg.value(metadata i64 %323, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()), !dbg !1331
  %362 = mul nuw nsw i64 %323, %323, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %362, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 2, metadata !1223, metadata !DIExpression()), !dbg !1331
  %363 = icmp ult i64 %362, %4, !dbg !1649
  br i1 %363, label %364, label %325, !dbg !1652, !llvm.loop !1653

; <label>:364:                                    ; preds = %361
  call void @llvm.dbg.value(metadata i64 %362, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 2, metadata !1223, metadata !DIExpression()), !dbg !1331
  %365 = mul nuw nsw i64 %362, %323, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %365, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 3, metadata !1223, metadata !DIExpression()), !dbg !1331
  %366 = icmp ult i64 %365, %4, !dbg !1649
  br i1 %366, label %367, label %325, !dbg !1652, !llvm.loop !1653

; <label>:367:                                    ; preds = %364
  call void @llvm.dbg.value(metadata i64 %365, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 3, metadata !1223, metadata !DIExpression()), !dbg !1331
  %368 = mul nuw nsw i64 %365, %323, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %368, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 4, metadata !1223, metadata !DIExpression()), !dbg !1331
  %369 = icmp ult i64 %368, %4, !dbg !1649
  br i1 %369, label %370, label %325, !dbg !1652, !llvm.loop !1653

; <label>:370:                                    ; preds = %367
  call void @llvm.dbg.value(metadata i64 %368, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 4, metadata !1223, metadata !DIExpression()), !dbg !1331
  %371 = mul nuw nsw i64 %368, %323, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %371, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 5, metadata !1223, metadata !DIExpression()), !dbg !1331
  %372 = icmp ult i64 %371, %4, !dbg !1649
  br i1 %372, label %373, label %325, !dbg !1652, !llvm.loop !1653

; <label>:373:                                    ; preds = %370
  call void @llvm.dbg.value(metadata i64 %371, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 5, metadata !1223, metadata !DIExpression()), !dbg !1331
  %374 = mul i64 %371, %323, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %374, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 6, metadata !1223, metadata !DIExpression()), !dbg !1331
  %375 = icmp ult i64 %374, %4, !dbg !1649
  br i1 %375, label %376, label %325, !dbg !1652, !llvm.loop !1653

; <label>:376:                                    ; preds = %373
  call void @llvm.dbg.value(metadata i64 %374, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 6, metadata !1223, metadata !DIExpression()), !dbg !1331
  %377 = mul i64 %374, %323, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %377, metadata !1293, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 7, metadata !1223, metadata !DIExpression()), !dbg !1331
  %378 = icmp ult i64 %377, %4, !dbg !1649
  %379 = select i1 %378, i32 8, i32 7, !dbg !1652
  br label %325, !dbg !1652

; <label>:380:                                    ; preds = %64
  call void @llvm.dbg.value(metadata x86_fp80 %65, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()), !dbg !1331
  %381 = fmul x86_fp80 %65, %65, !dbg !1438
  call void @llvm.dbg.value(metadata x86_fp80 %381, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 2, metadata !1223, metadata !DIExpression()), !dbg !1331
  %382 = fmul x86_fp80 %381, %65, !dbg !1402
  %383 = fcmp ugt x86_fp80 %382, %61, !dbg !1403
  br i1 %383, label %86, label %384, !dbg !1404, !llvm.loop !1405

; <label>:384:                                    ; preds = %380
  call void @llvm.dbg.value(metadata x86_fp80 %381, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 2, metadata !1223, metadata !DIExpression()), !dbg !1331
  %385 = fmul x86_fp80 %381, %65, !dbg !1438
  call void @llvm.dbg.value(metadata x86_fp80 %385, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 3, metadata !1223, metadata !DIExpression()), !dbg !1331
  %386 = fmul x86_fp80 %385, %65, !dbg !1402
  %387 = fcmp ugt x86_fp80 %386, %61, !dbg !1403
  br i1 %387, label %86, label %388, !dbg !1404, !llvm.loop !1405

; <label>:388:                                    ; preds = %384
  call void @llvm.dbg.value(metadata x86_fp80 %385, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 3, metadata !1223, metadata !DIExpression()), !dbg !1331
  %389 = fmul x86_fp80 %385, %65, !dbg !1438
  call void @llvm.dbg.value(metadata x86_fp80 %389, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 4, metadata !1223, metadata !DIExpression()), !dbg !1331
  %390 = fmul x86_fp80 %389, %65, !dbg !1402
  %391 = fcmp ugt x86_fp80 %390, %61, !dbg !1403
  br i1 %391, label %86, label %392, !dbg !1404, !llvm.loop !1405

; <label>:392:                                    ; preds = %388
  call void @llvm.dbg.value(metadata x86_fp80 %389, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 4, metadata !1223, metadata !DIExpression()), !dbg !1331
  %393 = fmul x86_fp80 %389, %65, !dbg !1438
  call void @llvm.dbg.value(metadata x86_fp80 %393, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 5, metadata !1223, metadata !DIExpression()), !dbg !1331
  %394 = fmul x86_fp80 %393, %65, !dbg !1402
  %395 = fcmp ugt x86_fp80 %394, %61, !dbg !1403
  br i1 %395, label %86, label %396, !dbg !1404, !llvm.loop !1405

; <label>:396:                                    ; preds = %392
  call void @llvm.dbg.value(metadata x86_fp80 %393, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 5, metadata !1223, metadata !DIExpression()), !dbg !1331
  %397 = fmul x86_fp80 %393, %65, !dbg !1438
  call void @llvm.dbg.value(metadata x86_fp80 %397, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 6, metadata !1223, metadata !DIExpression()), !dbg !1331
  %398 = fmul x86_fp80 %397, %65, !dbg !1402
  %399 = fcmp ugt x86_fp80 %398, %61, !dbg !1403
  br i1 %399, label %86, label %400, !dbg !1404, !llvm.loop !1405

; <label>:400:                                    ; preds = %396
  call void @llvm.dbg.value(metadata x86_fp80 %397, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 6, metadata !1223, metadata !DIExpression()), !dbg !1331
  %401 = fmul x86_fp80 %397, %65, !dbg !1438
  call void @llvm.dbg.value(metadata x86_fp80 %401, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 7, metadata !1223, metadata !DIExpression()), !dbg !1331
  %402 = fmul x86_fp80 %401, %65, !dbg !1402
  %403 = fcmp ugt x86_fp80 %402, %61, !dbg !1403
  br i1 %403, label %86, label %404, !dbg !1404, !llvm.loop !1405

; <label>:404:                                    ; preds = %400
  call void @llvm.dbg.value(metadata x86_fp80 %401, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 7, metadata !1223, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata x86_fp80 %402, metadata !1280, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 8, metadata !1223, metadata !DIExpression()), !dbg !1331
  br label %86
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @human_options(i8*, i32* nocapture, i64*) local_unnamed_addr #7 !dbg !1692 {
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1697, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32* %1, metadata !1698, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64* %2, metadata !1699, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %0, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  call void @llvm.dbg.value(metadata i64* %2, metadata !1710, metadata !DIExpression()) #11, !dbg !1722
  call void @llvm.dbg.value(metadata i32* %1, metadata !1711, metadata !DIExpression()) #11, !dbg !1723
  call void @llvm.dbg.value(metadata i32 0, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  %5 = icmp eq i8* %0, null, !dbg !1725
  br i1 %5, label %6, label %16, !dbg !1726

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.55, i64 0, i64 0)) #11, !dbg !1727
  call void @llvm.dbg.value(metadata i8* %7, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  %8 = icmp eq i8* %7, null, !dbg !1728
  br i1 %8, label %9, label %16, !dbg !1729

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.56, i64 0, i64 0)) #11, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %10, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  %11 = icmp eq i8* %10, null, !dbg !1731
  br i1 %11, label %12, label %16, !dbg !1732

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.57, i64 0, i64 0)) #11, !dbg !1733
  %14 = icmp eq i8* %13, null, !dbg !1733
  %15 = select i1 %14, i64 1024, i64 512, !dbg !1733
  store i64 %15, i64* %2, align 8, !dbg !1738, !tbaa !1739
  br label %66, !dbg !1740

; <label>:16:                                     ; preds = %9, %6, %3
  %17 = phi i8* [ %0, %3 ], [ %7, %6 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  %18 = load i8, i8* %17, align 1, !dbg !1741, !tbaa !935
  %19 = icmp eq i8 %18, 39, !dbg !1743
  %20 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1744
  %21 = select i1 %19, i8* %20, i8* %17, !dbg !1746
  %22 = select i1 %19, i32 4, i32 0, !dbg !1746
  call void @llvm.dbg.value(metadata i32 %22, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %21, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  %23 = tail call i64 @argmatch(i8* %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #14, !dbg !1747
  %24 = trunc i64 %23 to i32, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %24, metadata !1712, metadata !DIExpression()) #11, !dbg !1748
  %25 = icmp sgt i32 %24, -1, !dbg !1749
  br i1 %25, label %26, label %32, !dbg !1750

; <label>:26:                                     ; preds = %16
  %27 = shl i64 %23, 32, !dbg !1751
  %28 = ashr exact i64 %27, 32, !dbg !1751
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @block_size_opts, i64 0, i64 %28, !dbg !1751
  %30 = load i32, i32* %29, align 4, !dbg !1751, !tbaa !789
  %31 = or i32 %30, %22, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %31, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  store i64 1, i64* %2, align 8, !dbg !1754, !tbaa !1739
  br label %66, !dbg !1755

; <label>:32:                                     ; preds = %16
  %33 = bitcast i8** %4 to i8*, !dbg !1756
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #11, !dbg !1756
  call void @llvm.dbg.value(metadata i8** %4, metadata !1714, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1757
  %34 = call i32 @xstrtoumax(i8* nonnull %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.58, i64 0, i64 0)) #11, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %34, metadata !1719, metadata !DIExpression()) #11, !dbg !1759
  %35 = icmp eq i32 %34, 0, !dbg !1760
  br i1 %35, label %36, label %65, !dbg !1762

; <label>:36:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i8* %21, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  %37 = load i8, i8* %21, align 1, !dbg !1763, !tbaa !935
  %38 = add i8 %37, -48, !dbg !1766
  %39 = icmp ult i8 %38, 10, !dbg !1766
  br i1 %39, label %63, label %40, !dbg !1767

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %4, align 8, !tbaa !704
  br label %46, !dbg !1767

; <label>:42:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i8* %49, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  %43 = load i8, i8* %49, align 1, !dbg !1763, !tbaa !935
  %44 = add i8 %43, -48, !dbg !1766
  %45 = icmp ult i8 %44, 10, !dbg !1766
  br i1 %45, label %63, label %46, !dbg !1767, !llvm.loop !1768

; <label>:46:                                     ; preds = %42, %40
  %47 = phi i8* [ %21, %40 ], [ %49, %42 ]
  call void @llvm.dbg.value(metadata i8* %47, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  call void @llvm.dbg.value(metadata i8* %41, metadata !1714, metadata !DIExpression()) #11, !dbg !1757
  %48 = icmp eq i8* %47, %41, !dbg !1771
  %49 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %49, metadata !1705, metadata !DIExpression()) #11, !dbg !1720
  br i1 %48, label %50, label %42, !dbg !1774

; <label>:50:                                     ; preds = %46
  %51 = or i32 %22, 128, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %51, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  %52 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !1777
  %53 = load i8, i8* %52, align 1, !dbg !1777, !tbaa !935
  %54 = icmp eq i8 %53, 66, !dbg !1779
  %55 = or i32 %22, 384, !dbg !1780
  %56 = select i1 %54, i32 %55, i32 %51, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %56, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %41, metadata !1714, metadata !DIExpression()) #11, !dbg !1757
  br i1 %54, label %57, label %61, !dbg !1782

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds i8, i8* %41, i64 -2, !dbg !1784
  %59 = load i8, i8* %58, align 1, !dbg !1784, !tbaa !935
  %60 = icmp eq i8 %59, 105, !dbg !1785
  br i1 %60, label %61, label %63, !dbg !1786

; <label>:61:                                     ; preds = %57, %50
  %62 = or i32 %56, 32, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %62, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  br label %63, !dbg !1788

; <label>:63:                                     ; preds = %42, %61, %57, %36
  %64 = phi i32 [ %55, %57 ], [ %62, %61 ], [ %22, %36 ], [ %22, %42 ]
  call void @llvm.dbg.value(metadata i32 %22, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #11, !dbg !1789
  br label %66

; <label>:65:                                     ; preds = %32
  store i32 0, i32* %1, align 4, !dbg !1790, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %22, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #11, !dbg !1789
  br label %68

; <label>:66:                                     ; preds = %63, %26, %12
  %67 = phi i32 [ %31, %26 ], [ 0, %12 ], [ %64, %63 ], !dbg !1792
  call void @llvm.dbg.value(metadata i32 %67, metadata !1713, metadata !DIExpression()) #11, !dbg !1724
  store i32 %67, i32* %1, align 4, !dbg !1793, !tbaa !789
  br label %68, !dbg !1794

; <label>:68:                                     ; preds = %65, %66
  %69 = phi i32 [ 0, %66 ], [ %34, %65 ], !dbg !1795
  call void @llvm.dbg.value(metadata i32 %69, metadata !1700, metadata !DIExpression()), !dbg !1796
  %70 = load i64, i64* %2, align 8, !dbg !1797, !tbaa !1739
  %71 = icmp eq i64 %70, 0, !dbg !1799
  br i1 %71, label %72, label %76, !dbg !1800

; <label>:72:                                     ; preds = %68
  %73 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.57, i64 0, i64 0)) #11, !dbg !1801
  %74 = icmp eq i8* %73, null, !dbg !1801
  %75 = select i1 %74, i64 1024, i64 512, !dbg !1801
  store i64 %75, i64* %2, align 8, !dbg !1804, !tbaa !1739
  call void @llvm.dbg.value(metadata i32 4, metadata !1700, metadata !DIExpression()), !dbg !1796
  br label %76, !dbg !1805

; <label>:76:                                     ; preds = %72, %68
  %77 = phi i32 [ 4, %72 ], [ %69, %68 ], !dbg !1806
  call void @llvm.dbg.value(metadata i32 %77, metadata !1700, metadata !DIExpression()), !dbg !1796
  ret i32 %77, !dbg !1807
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1810, metadata !DIExpression()), !dbg !1813
  %2 = icmp eq i8* %0, null, !dbg !1814
  br i1 %2, label %3, label %6, !dbg !1816

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1817, !tbaa !704
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.65, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1819
  tail call void @abort() #15, !dbg !1820
  unreachable, !dbg !1820

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %7, metadata !1811, metadata !DIExpression()), !dbg !1822
  %8 = icmp eq i8* %7, null, !dbg !1823
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1824
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %10, metadata !1812, metadata !DIExpression()), !dbg !1826
  %11 = ptrtoint i8* %10 to i64, !dbg !1827
  %12 = ptrtoint i8* %0 to i64, !dbg !1827
  %13 = sub i64 %11, %12, !dbg !1827
  %14 = icmp sgt i64 %13, 6, !dbg !1829
  br i1 %14, label %15, label %24, !dbg !1830

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1831
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.66, i64 0, i64 0), i64 7) #14, !dbg !1832
  %18 = icmp eq i32 %17, 0, !dbg !1833
  br i1 %18, label %19, label %24, !dbg !1834

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1810, metadata !DIExpression()), !dbg !1813
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.67, i64 0, i64 0), i64 3) #14, !dbg !1835
  %21 = icmp eq i32 %20, 0, !dbg !1838
  br i1 %21, label %22, label %24, !dbg !1839

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1840
  call void @llvm.dbg.value(metadata i8* %23, metadata !1810, metadata !DIExpression()), !dbg !1813
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1842, !tbaa !704
  br label %24, !dbg !1843

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1810, metadata !DIExpression()), !dbg !1813
  store i8* %25, i8** @program_name, align 8, !dbg !1844, !tbaa !704
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1845, !tbaa !704
  ret void, !dbg !1846
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1847 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1852, metadata !DIExpression()), !dbg !1855
  %2 = tail call i32* @__errno_location() #17, !dbg !1856
  %3 = load i32, i32* %2, align 4, !dbg !1856, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %3, metadata !1853, metadata !DIExpression()), !dbg !1857
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1858
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1858
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1858
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1859
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1854, metadata !DIExpression()), !dbg !1860
  store i32 %3, i32* %2, align 4, !dbg !1861, !tbaa !789
  ret %struct.quoting_options* %8, !dbg !1862
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1863 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1869, metadata !DIExpression()), !dbg !1870
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1871
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1871
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1872
  %5 = load i32, i32* %4, align 8, !dbg !1872, !tbaa !1873
  ret i32 %5, !dbg !1875
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1876 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1880, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %1, metadata !1881, metadata !DIExpression()), !dbg !1883
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1884
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1884
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1885
  store i32 %1, i32* %5, align 8, !dbg !1886, !tbaa !1873
  ret void, !dbg !1887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1888 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1892, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 %1, metadata !1893, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i32 %2, metadata !1894, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %1, metadata !1895, metadata !DIExpression()), !dbg !1903
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1904
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1904
  %6 = lshr i8 %1, 5, !dbg !1905
  %7 = zext i8 %6 to i64, !dbg !1905
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1906
  call void @llvm.dbg.value(metadata i32* %8, metadata !1896, metadata !DIExpression()), !dbg !1907
  %9 = and i8 %1, 31, !dbg !1908
  %10 = zext i8 %9 to i32, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %10, metadata !1898, metadata !DIExpression()), !dbg !1909
  %11 = load i32, i32* %8, align 4, !dbg !1910, !tbaa !789
  %12 = lshr i32 %11, %10, !dbg !1911
  %13 = and i32 %12, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %13, metadata !1899, metadata !DIExpression()), !dbg !1913
  %14 = and i32 %2, 1, !dbg !1914
  %15 = xor i32 %13, %14, !dbg !1915
  %16 = shl i32 %15, %10, !dbg !1916
  %17 = xor i32 %16, %11, !dbg !1917
  store i32 %17, i32* %8, align 4, !dbg !1917, !tbaa !789
  ret i32 %13, !dbg !1918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1919 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1923, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 %1, metadata !1924, metadata !DIExpression()), !dbg !1927
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1928
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1923, metadata !DIExpression()), !dbg !1926
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1931
  %6 = load i32, i32* %5, align 4, !dbg !1931, !tbaa !1932
  call void @llvm.dbg.value(metadata i32 %6, metadata !1925, metadata !DIExpression()), !dbg !1933
  store i32 %1, i32* %5, align 4, !dbg !1934, !tbaa !1932
  ret i32 %6, !dbg !1935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1936 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1940, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %1, metadata !1941, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %2, metadata !1942, metadata !DIExpression()), !dbg !1945
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1946
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1940, metadata !DIExpression()), !dbg !1943
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1949
  store i32 10, i32* %6, align 8, !dbg !1950, !tbaa !1873
  %7 = icmp ne i8* %1, null, !dbg !1951
  %8 = icmp ne i8* %2, null, !dbg !1953
  %9 = and i1 %7, %8, !dbg !1954
  br i1 %9, label %11, label %10, !dbg !1954

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1955
  unreachable, !dbg !1955

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1956
  store i8* %1, i8** %12, align 8, !dbg !1957, !tbaa !1958
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1959
  store i8* %2, i8** %13, align 8, !dbg !1960, !tbaa !1961
  ret void, !dbg !1962
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1967, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i64 %1, metadata !1968, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8* %2, metadata !1969, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %3, metadata !1970, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1971, metadata !DIExpression()), !dbg !1979
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1980
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1972, metadata !DIExpression()), !dbg !1981
  %8 = tail call i32* @__errno_location() #17, !dbg !1982
  %9 = load i32, i32* %8, align 4, !dbg !1982, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %9, metadata !1973, metadata !DIExpression()), !dbg !1983
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1984
  %11 = load i32, i32* %10, align 8, !dbg !1984, !tbaa !1873
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1985
  %13 = load i32, i32* %12, align 4, !dbg !1985, !tbaa !1932
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1986
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1987
  %16 = load i8*, i8** %15, align 8, !dbg !1987, !tbaa !1958
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1988
  %18 = load i8*, i8** %17, align 8, !dbg !1988, !tbaa !1961
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %19, metadata !1974, metadata !DIExpression()), !dbg !1990
  store i32 %9, i32* %8, align 4, !dbg !1991, !tbaa !789
  ret i64 %19, !dbg !1992
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1993 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1999, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %1, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %2, metadata !2001, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %3, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %4, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %5, metadata !2004, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32* %6, metadata !2005, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %7, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %8, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 0, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 0, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* null, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !2012, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2074
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2075
  %14 = icmp eq i64 %13, 1, !dbg !2076
  %15 = lshr i32 %5, 1, !dbg !2077
  %16 = trunc i32 %15 to i8, !dbg !2077
  %17 = and i8 %16, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i8 %17, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2018, metadata !DIExpression()), !dbg !2080
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2081

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2071
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2072
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2073
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2074
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2082
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2078
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2079
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2080
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %39, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %38, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %37, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %36, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %35, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 %34, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %33, metadata !2012, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %32, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %31, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 0, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* %30, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %29, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %28, metadata !2003, metadata !DIExpression()), !dbg !2065
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
  ], !dbg !2084

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 1, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %36, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 5, metadata !2003, metadata !DIExpression()), !dbg !2065
  br label %93, !dbg !2085

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 5, metadata !2003, metadata !DIExpression()), !dbg !2065
  %43 = and i8 %36, 1, !dbg !2086
  %44 = icmp eq i8 %43, 0, !dbg !2086
  br i1 %44, label %45, label %93, !dbg !2085

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2088
  br i1 %46, label %93, label %47, !dbg !2091

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2088, !tbaa !935
  br label %93, !dbg !2088

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.78, i64 0, i64 0), i32 %28), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %49, metadata !2006, metadata !DIExpression()), !dbg !2068
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), i32 %28), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %50, metadata !2007, metadata !DIExpression()), !dbg !2069
  br label %51, !dbg !2097

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %52, metadata !2006, metadata !DIExpression()), !dbg !2068
  %54 = and i8 %36, 1, !dbg !2098
  %55 = icmp eq i8 %54, 0, !dbg !2098
  br i1 %55, label %56, label %71, !dbg !2100

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !2009, metadata !DIExpression()), !dbg !2070
  %57 = load i8, i8* %52, align 1, !dbg !2101, !tbaa !935
  %58 = icmp eq i8 %57, 0, !dbg !2104
  br i1 %58, label %71, label %59, !dbg !2104

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %62, metadata !2009, metadata !DIExpression()), !dbg !2070
  %63 = icmp ult i64 %62, %40, !dbg !2105
  br i1 %63, label %64, label %66, !dbg !2108

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2105
  store i8 %60, i8* %65, align 1, !dbg !2105, !tbaa !935
  br label %66, !dbg !2105

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2108
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2109
  call void @llvm.dbg.value(metadata i8* %68, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %67, metadata !2009, metadata !DIExpression()), !dbg !2070
  %69 = load i8, i8* %68, align 1, !dbg !2101, !tbaa !935
  %70 = icmp eq i8 %69, 0, !dbg !2104
  br i1 %70, label %71, label %59, !dbg !2104, !llvm.loop !2110

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2070
  call void @llvm.dbg.value(metadata i64 %72, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8* %53, metadata !2011, metadata !DIExpression()), !dbg !2072
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %73, metadata !2012, metadata !DIExpression()), !dbg !2073
  br label %93, !dbg !2113

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2074
  br label %75, !dbg !2114

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2082
  call void @llvm.dbg.value(metadata i8 %76, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 1, metadata !2015, metadata !DIExpression()), !dbg !2077
  br label %77, !dbg !2115

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2074
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2082
  call void @llvm.dbg.value(metadata i8 %79, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %78, metadata !2013, metadata !DIExpression()), !dbg !2074
  %80 = and i8 %79, 1, !dbg !2116
  %81 = icmp eq i8 %80, 0, !dbg !2116
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2118
  br label %83, !dbg !2118

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2119
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2077
  call void @llvm.dbg.value(metadata i8 %85, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %84, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 2, metadata !2003, metadata !DIExpression()), !dbg !2065
  %86 = and i8 %85, 1, !dbg !2120
  %87 = icmp eq i8 %86, 0, !dbg !2120
  br i1 %87, label %88, label %93, !dbg !2122

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2123
  br i1 %89, label %93, label %90, !dbg !2126

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2123, !tbaa !935
  br label %93, !dbg !2123

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2015, metadata !DIExpression()), !dbg !2077
  br label %93, !dbg !2127

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2128
  unreachable, !dbg !2128

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2070
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), %41 ], !dbg !2082
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2082
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2082
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %101, metadata !2015, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %99, metadata !2012, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %97, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %94, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 0, metadata !2008, metadata !DIExpression()), !dbg !2130
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
  br label %121, !dbg !2131

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2132
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2070
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2071
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2078
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2079
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2080
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %125, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %122, metadata !2008, metadata !DIExpression()), !dbg !2130
  %130 = icmp eq i64 %125, -1, !dbg !2133
  br i1 %130, label %131, label %135, !dbg !2134

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2135
  %133 = load i8, i8* %132, align 1, !dbg !2135, !tbaa !935
  %134 = icmp eq i8 %133, 0, !dbg !2136
  br i1 %134, label %617, label %137, !dbg !2137

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2138
  br i1 %136, label %617, label %137, !dbg !2137

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2141
  br i1 %107, label %138, label %153, !dbg !2142

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2144
  %140 = and i1 %108, %130, !dbg !2145
  br i1 %140, label %141, label %143, !dbg !2145

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %142, metadata !2002, metadata !DIExpression()), !dbg !2064
  br label %143, !dbg !2147

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2002, metadata !DIExpression()), !dbg !2064
  %145 = icmp ugt i64 %139, %144, !dbg !2148
  br i1 %145, label %153, label %146, !dbg !2149

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2150
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2151
  %149 = icmp ne i32 %148, 0, !dbg !2152
  %150 = or i1 %149, %110, !dbg !2153
  %151 = xor i1 %149, true, !dbg !2153
  %152 = zext i1 %151 to i8, !dbg !2153
  br i1 %150, label %153, label %661, !dbg !2153

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2154
  call void @llvm.dbg.value(metadata i8 %155, metadata !2024, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %154, metadata !2002, metadata !DIExpression()), !dbg !2064
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2155
  %157 = load i8, i8* %156, align 1, !dbg !2155, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %157, metadata !2019, metadata !DIExpression()), !dbg !2156
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
  ], !dbg !2157

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2158

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2159

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2025, metadata !DIExpression()), !dbg !2140
  %161 = and i8 %126, 1, !dbg !2163
  %162 = icmp eq i8 %161, 0, !dbg !2163
  %163 = and i1 %114, %162, !dbg !2163
  br i1 %163, label %164, label %180, !dbg !2163

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2165
  br i1 %165, label %166, label %168, !dbg !2169

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2165
  store i8 39, i8* %167, align 1, !dbg !2165, !tbaa !935
  br label %168, !dbg !2165

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %169, metadata !2009, metadata !DIExpression()), !dbg !2070
  %170 = icmp ult i64 %169, %129, !dbg !2170
  br i1 %170, label %171, label %173, !dbg !2173

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2170
  store i8 36, i8* %172, align 1, !dbg !2170, !tbaa !935
  br label %173, !dbg !2170

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %174, metadata !2009, metadata !DIExpression()), !dbg !2070
  %175 = icmp ult i64 %174, %129, !dbg !2174
  br i1 %175, label %176, label %178, !dbg !2177

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2174
  store i8 39, i8* %177, align 1, !dbg !2174, !tbaa !935
  br label %178, !dbg !2174

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %179, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 1, metadata !2016, metadata !DIExpression()), !dbg !2078
  br label %180, !dbg !2178

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2129
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %182, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %181, metadata !2009, metadata !DIExpression()), !dbg !2070
  %183 = icmp ult i64 %181, %129, !dbg !2179
  br i1 %183, label %184, label %186, !dbg !2182

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2179
  store i8 92, i8* %185, align 1, !dbg !2179, !tbaa !935
  br label %186, !dbg !2179

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %187, metadata !2009, metadata !DIExpression()), !dbg !2070
  br i1 %104, label %188, label %478, !dbg !2183

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2185
  %190 = icmp ult i64 %189, %154, !dbg !2186
  br i1 %190, label %191, label %467, !dbg !2187

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2188
  %193 = load i8, i8* %192, align 1, !dbg !2188, !tbaa !935
  %194 = add i8 %193, -48, !dbg !2189
  %195 = icmp ult i8 %194, 10, !dbg !2189
  br i1 %195, label %196, label %467, !dbg !2189

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2190
  br i1 %197, label %198, label %200, !dbg !2194

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2190
  store i8 48, i8* %199, align 1, !dbg !2190, !tbaa !935
  br label %200, !dbg !2190

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %201, metadata !2009, metadata !DIExpression()), !dbg !2070
  %202 = icmp ult i64 %201, %129, !dbg !2195
  br i1 %202, label %203, label %205, !dbg !2198

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2195
  store i8 48, i8* %204, align 1, !dbg !2195, !tbaa !935
  br label %205, !dbg !2195

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %206, metadata !2009, metadata !DIExpression()), !dbg !2070
  br label %467, !dbg !2199

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2200

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2201

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2202

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2204

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2206
  %213 = icmp ult i64 %212, %154, !dbg !2207
  br i1 %213, label %214, label %467, !dbg !2208

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2209
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2210
  %217 = load i8, i8* %216, align 1, !dbg !2210, !tbaa !935
  %218 = icmp eq i8 %217, 63, !dbg !2211
  br i1 %218, label %219, label %467, !dbg !2212

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2213
  %221 = load i8, i8* %220, align 1, !dbg !2213, !tbaa !935
  %222 = sext i8 %221 to i32, !dbg !2213
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
  ], !dbg !2214

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2215

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2019, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %212, metadata !2008, metadata !DIExpression()), !dbg !2130
  %225 = icmp ult i64 %123, %129, !dbg !2217
  br i1 %225, label %226, label %228, !dbg !2220

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2217
  store i8 63, i8* %227, align 1, !dbg !2217, !tbaa !935
  br label %228, !dbg !2217

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %229, metadata !2009, metadata !DIExpression()), !dbg !2070
  %230 = icmp ult i64 %229, %129, !dbg !2221
  br i1 %230, label %231, label %233, !dbg !2224

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2221
  store i8 34, i8* %232, align 1, !dbg !2221, !tbaa !935
  br label %233, !dbg !2221

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %234, metadata !2009, metadata !DIExpression()), !dbg !2070
  %235 = icmp ult i64 %234, %129, !dbg !2225
  br i1 %235, label %236, label %238, !dbg !2228

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2225
  store i8 34, i8* %237, align 1, !dbg !2225, !tbaa !935
  br label %238, !dbg !2225

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %239, metadata !2009, metadata !DIExpression()), !dbg !2070
  %240 = icmp ult i64 %239, %129, !dbg !2229
  br i1 %240, label %241, label %243, !dbg !2232

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2229
  store i8 63, i8* %242, align 1, !dbg !2229, !tbaa !935
  br label %243, !dbg !2229

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %244, metadata !2009, metadata !DIExpression()), !dbg !2070
  br label %467, !dbg !2233

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2023, metadata !DIExpression()), !dbg !2234
  br label %255, !dbg !2235

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2023, metadata !DIExpression()), !dbg !2234
  br label %255, !dbg !2236

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2023, metadata !DIExpression()), !dbg !2234
  br label %253, !dbg !2237

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2023, metadata !DIExpression()), !dbg !2234
  br label %253, !dbg !2238

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2023, metadata !DIExpression()), !dbg !2234
  br label %255, !dbg !2239

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2023, metadata !DIExpression()), !dbg !2234
  br i1 %114, label %251, label %252, !dbg !2240

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2241

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2244

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2246
  call void @llvm.dbg.value(metadata i8 %254, metadata !2023, metadata !DIExpression()), !dbg !2234
  br i1 %113, label %255, label %661, !dbg !2247

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2246
  call void @llvm.dbg.value(metadata i8 %256, metadata !2023, metadata !DIExpression()), !dbg !2234
  br i1 %103, label %524, label %478, !dbg !2249

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2250
  br i1 %258, label %259, label %264, !dbg !2252

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2253, !tbaa !935
  %261 = icmp ne i8 %260, 0, !dbg !2254
  %262 = icmp ne i64 %122, 0, !dbg !2255
  %263 = or i1 %262, %261, !dbg !2257
  br i1 %263, label %467, label %270, !dbg !2257

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2258
  %266 = icmp ne i64 %122, 0, !dbg !2255
  %267 = or i1 %266, %265, !dbg !2252
  br i1 %267, label %467, label %270, !dbg !2252

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2255
  br i1 %269, label %270, label %467, !dbg !2259

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2141
  br label %271, !dbg !2260

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2246
  call void @llvm.dbg.value(metadata i8 %272, metadata !2026, metadata !DIExpression()), !dbg !2141
  br i1 %113, label %467, label %661, !dbg !2261

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2141
  br i1 %114, label %274, label %467, !dbg !2263

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2264

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2267
  %277 = icmp ne i64 %124, 0, !dbg !2269
  %278 = or i1 %277, %276, !dbg !2270
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2270
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %280, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %279, metadata !2010, metadata !DIExpression()), !dbg !2071
  %281 = icmp ult i64 %123, %280, !dbg !2271
  br i1 %281, label %282, label %284, !dbg !2274

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2271
  store i8 39, i8* %283, align 1, !dbg !2271, !tbaa !935
  br label %284, !dbg !2271

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %285, metadata !2009, metadata !DIExpression()), !dbg !2070
  %286 = icmp ult i64 %285, %280, !dbg !2275
  br i1 %286, label %287, label %289, !dbg !2278

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2275
  store i8 92, i8* %288, align 1, !dbg !2275, !tbaa !935
  br label %289, !dbg !2275

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %290, metadata !2009, metadata !DIExpression()), !dbg !2070
  %291 = icmp ult i64 %290, %280, !dbg !2279
  br i1 %291, label %292, label %294, !dbg !2282

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2279
  store i8 39, i8* %293, align 1, !dbg !2279, !tbaa !935
  br label %294, !dbg !2279

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %295, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 0, metadata !2016, metadata !DIExpression()), !dbg !2078
  br label %467, !dbg !2283

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2284

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2027, metadata !DIExpression()), !dbg !2285
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2286
  %299 = load i16*, i16** %298, align 8, !dbg !2286, !tbaa !704
  %300 = zext i8 %157 to i64, !dbg !2286
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2286
  %302 = load i16, i16* %301, align 2, !dbg !2286, !tbaa !2288
  %303 = lshr i16 %302, 14, !dbg !2289
  %304 = trunc i16 %303 to i8, !dbg !2289
  %305 = and i8 %304, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i8 %305, metadata !2030, metadata !DIExpression()), !dbg !2290
  br label %359, !dbg !2291

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2292
  store i64 0, i64* %10, align 8, !dbg !2293
  call void @llvm.dbg.value(metadata i64 0, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 1, metadata !2030, metadata !DIExpression()), !dbg !2290
  %307 = icmp eq i64 %154, -1, !dbg !2294
  br i1 %307, label %308, label %310, !dbg !2296

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %309, metadata !2002, metadata !DIExpression()), !dbg !2064
  br label %310, !dbg !2298

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2299
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  br label %312, !dbg !2300

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2301
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %314, metadata !2030, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2303
  %315 = add i64 %313, %122, !dbg !2304
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2305
  %317 = sub i64 %311, %315, !dbg !2306
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2031, metadata !DIExpression(DW_OP_deref)), !dbg !2307
  call void @llvm.dbg.value(metadata i32* %12, metadata !2047, metadata !DIExpression(DW_OP_deref)), !dbg !2308
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %318, metadata !2050, metadata !DIExpression()), !dbg !2310
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2311

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  %320 = icmp ugt i64 %311, %315, !dbg !2312
  br i1 %320, label %321, label %344, !dbg !2314

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2027, metadata !DIExpression()), !dbg !2285
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2315
  %325 = load i8, i8* %324, align 1, !dbg !2315, !tbaa !935
  %326 = icmp eq i8 %325, 0, !dbg !2314
  br i1 %326, label %344, label %327, !dbg !2316

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %328, metadata !2027, metadata !DIExpression()), !dbg !2285
  %329 = add i64 %328, %122, !dbg !2318
  %330 = icmp ult i64 %329, %311, !dbg !2312
  br i1 %330, label %321, label %344, !dbg !2314, !llvm.loop !2319

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2320
  %333 = and i1 %116, %332, !dbg !2323
  call void @llvm.dbg.value(metadata i64 1, metadata !2051, metadata !DIExpression()), !dbg !2324
  br i1 %333, label %334, label %347, !dbg !2323

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2051, metadata !DIExpression()), !dbg !2324
  %336 = add i64 %335, %315, !dbg !2325
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2326
  %338 = load i8, i8* %337, align 1, !dbg !2326, !tbaa !935
  %339 = sext i8 %338 to i32, !dbg !2326
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2327

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %341, metadata !2051, metadata !DIExpression()), !dbg !2324
  %342 = icmp ult i64 %341, %318, !dbg !2320
  br i1 %342, label %334, label %347, !dbg !2329, !llvm.loop !2330

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %314, metadata !2030, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %313, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %314, metadata !2030, metadata !DIExpression()), !dbg !2290
  br label %344, !dbg !2332

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2030, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %352, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2332
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2333, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %348, metadata !2047, metadata !DIExpression()), !dbg !2308
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2335
  %350 = icmp eq i32 %349, 0, !dbg !2335
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2336
  call void @llvm.dbg.value(metadata i8 %351, metadata !2030, metadata !DIExpression()), !dbg !2290
  %352 = add i64 %318, %313, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %352, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %351, metadata !2030, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %352, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2332
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2031, metadata !DIExpression(DW_OP_deref)), !dbg !2307
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2338
  %354 = icmp eq i32 %353, 0, !dbg !2339
  br i1 %354, label %312, label %355, !dbg !2340, !llvm.loop !2341

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2343
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 2, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 2, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 2, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 2, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 2, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %94, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %94, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %94, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %94, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %94, metadata !2003, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %311, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 %351, metadata !2030, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %352, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2343
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2344
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2345
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2345
  call void @llvm.dbg.value(metadata i8 %362, metadata !2030, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %361, metadata !2027, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %360, metadata !2002, metadata !DIExpression()), !dbg !2064
  %363 = and i8 %362, 1, !dbg !2346
  %364 = icmp ne i8 %363, 0, !dbg !2346
  call void @llvm.dbg.value(metadata i8 %363, metadata !2026, metadata !DIExpression()), !dbg !2141
  %365 = icmp ult i64 %361, 2, !dbg !2347
  %366 = or i1 %364, %115, !dbg !2348
  %367 = and i1 %365, %366, !dbg !2349
  br i1 %367, label %467, label %368, !dbg !2349

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %369, metadata !2058, metadata !DIExpression()), !dbg !2351
  br label %370, !dbg !2352

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2353
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2357
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2078
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2353
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2359
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2140
  call void @llvm.dbg.value(metadata i8 %376, metadata !2025, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %375, metadata !2024, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %374, metadata !2019, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %373, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %372, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %371, metadata !2008, metadata !DIExpression()), !dbg !2130
  br i1 %366, label %423, label %377, !dbg !2363

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2364

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2025, metadata !DIExpression()), !dbg !2140
  %379 = and i8 %373, 1, !dbg !2367
  %380 = icmp eq i8 %379, 0, !dbg !2367
  %381 = and i1 %114, %380, !dbg !2367
  br i1 %381, label %382, label %398, !dbg !2367

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2369
  br i1 %383, label %384, label %386, !dbg !2373

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2369
  store i8 39, i8* %385, align 1, !dbg !2369, !tbaa !935
  br label %386, !dbg !2369

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %387, metadata !2009, metadata !DIExpression()), !dbg !2070
  %388 = icmp ult i64 %387, %129, !dbg !2374
  br i1 %388, label %389, label %391, !dbg !2377

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2374
  store i8 36, i8* %390, align 1, !dbg !2374, !tbaa !935
  br label %391, !dbg !2374

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %392, metadata !2009, metadata !DIExpression()), !dbg !2070
  %393 = icmp ult i64 %392, %129, !dbg !2378
  br i1 %393, label %394, label %396, !dbg !2381

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2378
  store i8 39, i8* %395, align 1, !dbg !2378, !tbaa !935
  br label %396, !dbg !2378

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %397, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 1, metadata !2016, metadata !DIExpression()), !dbg !2078
  br label %398, !dbg !2382

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2129
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %400, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %399, metadata !2009, metadata !DIExpression()), !dbg !2070
  %401 = icmp ult i64 %399, %129, !dbg !2383
  br i1 %401, label %402, label %404, !dbg !2386

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2383
  store i8 92, i8* %403, align 1, !dbg !2383, !tbaa !935
  br label %404, !dbg !2383

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %405, metadata !2009, metadata !DIExpression()), !dbg !2070
  %406 = icmp ult i64 %405, %129, !dbg !2387
  br i1 %406, label %407, label %411, !dbg !2390

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2387
  %409 = or i8 %408, 48, !dbg !2387
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2387
  store i8 %409, i8* %410, align 1, !dbg !2387, !tbaa !935
  br label %411, !dbg !2387

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %412, metadata !2009, metadata !DIExpression()), !dbg !2070
  %413 = icmp ult i64 %412, %129, !dbg !2391
  br i1 %413, label %414, label %419, !dbg !2394

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2391
  %416 = and i8 %415, 7, !dbg !2391
  %417 = or i8 %416, 48, !dbg !2391
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2391
  store i8 %417, i8* %418, align 1, !dbg !2391, !tbaa !935
  br label %419, !dbg !2391

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %420, metadata !2009, metadata !DIExpression()), !dbg !2070
  %421 = and i8 %374, 7, !dbg !2395
  %422 = or i8 %421, 48, !dbg !2396
  call void @llvm.dbg.value(metadata i8 %422, metadata !2019, metadata !DIExpression()), !dbg !2156
  br label %432, !dbg !2397

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2398
  %425 = icmp eq i8 %424, 0, !dbg !2398
  br i1 %425, label %432, label %426, !dbg !2399

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2400
  br i1 %427, label %428, label %430, !dbg !2403

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2400
  store i8 92, i8* %429, align 1, !dbg !2400, !tbaa !935
  br label %430, !dbg !2400

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %431, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2139
  br label %432, !dbg !2404

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2405
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2078
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2406
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2407
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2409
  call void @llvm.dbg.value(metadata i8 %437, metadata !2025, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %436, metadata !2024, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %435, metadata !2019, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %434, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %433, metadata !2009, metadata !DIExpression()), !dbg !2070
  %438 = add i64 %371, 1, !dbg !2410
  %439 = icmp ugt i64 %369, %438, !dbg !2412
  br i1 %439, label %440, label %562, !dbg !2413

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2414
  %442 = icmp ne i8 %441, 0, !dbg !2414
  %443 = and i8 %437, 1, !dbg !2414
  %444 = icmp eq i8 %443, 0, !dbg !2414
  %445 = and i1 %442, %444, !dbg !2414
  br i1 %445, label %446, label %457, !dbg !2414

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2417
  br i1 %447, label %448, label %450, !dbg !2421

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2417
  store i8 39, i8* %449, align 1, !dbg !2417, !tbaa !935
  br label %450, !dbg !2417

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %451, metadata !2009, metadata !DIExpression()), !dbg !2070
  %452 = icmp ult i64 %451, %129, !dbg !2422
  br i1 %452, label %453, label %455, !dbg !2425

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2422
  store i8 39, i8* %454, align 1, !dbg !2422, !tbaa !935
  br label %455, !dbg !2422

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %456, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 0, metadata !2016, metadata !DIExpression()), !dbg !2078
  br label %457, !dbg !2426

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2427
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %459, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %458, metadata !2009, metadata !DIExpression()), !dbg !2070
  %460 = icmp ult i64 %458, %129, !dbg !2428
  br i1 %460, label %461, label %463, !dbg !2430

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2428
  store i8 %435, i8* %462, align 1, !dbg !2428, !tbaa !935
  br label %463, !dbg !2428

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %464, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %438, metadata !2008, metadata !DIExpression()), !dbg !2130
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2431
  %466 = load i8, i8* %465, align 1, !dbg !2431, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %466, metadata !2019, metadata !DIExpression()), !dbg !2156
  br label %370, !dbg !2432, !llvm.loop !2433

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2436
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2129
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2071
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2437
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2129
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2129
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2154
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2154
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2154
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %476, metadata !2026, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %475, metadata !2025, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %155, metadata !2024, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %474, metadata !2019, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %473, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %472, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %471, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %470, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %469, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %468, metadata !2008, metadata !DIExpression()), !dbg !2130
  br i1 %105, label %489, label %478, !dbg !2438

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
  br i1 %112, label %490, label %512, !dbg !2440

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2441

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
  %501 = lshr i8 %494, 5, !dbg !2442
  %502 = zext i8 %501 to i64, !dbg !2442
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2443
  %504 = load i32, i32* %503, align 4, !dbg !2443, !tbaa !789
  %505 = and i8 %494, 31, !dbg !2444
  %506 = zext i8 %505 to i32, !dbg !2444
  %507 = shl i32 1, %506, !dbg !2445
  %508 = and i32 %504, %507, !dbg !2445
  %509 = icmp eq i32 %508, 0, !dbg !2445
  %510 = icmp eq i8 %155, 0, !dbg !2446
  %511 = and i1 %510, %509, !dbg !2447
  br i1 %511, label %562, label %524, !dbg !2447

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
  %523 = icmp eq i8 %155, 0, !dbg !2446
  br i1 %523, label %562, label %524, !dbg !2448

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2449
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2129
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2071
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2437
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2078
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2079
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2450
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2154
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %532, metadata !2026, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %531, metadata !2019, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %530, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %529, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %528, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %527, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %526, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %525, metadata !2008, metadata !DIExpression()), !dbg !2130
  br i1 %110, label %534, label %661, !dbg !2453

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2025, metadata !DIExpression()), !dbg !2140
  %535 = and i8 %529, 1, !dbg !2455
  %536 = icmp eq i8 %535, 0, !dbg !2455
  %537 = and i1 %114, %536, !dbg !2455
  br i1 %537, label %538, label %554, !dbg !2455

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2457
  br i1 %539, label %540, label %542, !dbg !2461

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2457
  store i8 39, i8* %541, align 1, !dbg !2457, !tbaa !935
  br label %542, !dbg !2457

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %543, metadata !2009, metadata !DIExpression()), !dbg !2070
  %544 = icmp ult i64 %543, %533, !dbg !2462
  br i1 %544, label %545, label %547, !dbg !2465

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2462
  store i8 36, i8* %546, align 1, !dbg !2462, !tbaa !935
  br label %547, !dbg !2462

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %548, metadata !2009, metadata !DIExpression()), !dbg !2070
  %549 = icmp ult i64 %548, %533, !dbg !2466
  br i1 %549, label %550, label %552, !dbg !2469

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2466
  store i8 39, i8* %551, align 1, !dbg !2466, !tbaa !935
  br label %552, !dbg !2466

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %553, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 1, metadata !2016, metadata !DIExpression()), !dbg !2078
  br label %554, !dbg !2470

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2427
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %556, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %555, metadata !2009, metadata !DIExpression()), !dbg !2070
  %557 = icmp ult i64 %555, %533, !dbg !2471
  br i1 %557, label %558, label %560, !dbg !2474

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2471
  store i8 92, i8* %559, align 1, !dbg !2471, !tbaa !935
  br label %560, !dbg !2471

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %561, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %572, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %571, metadata !2026, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %570, metadata !2025, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %569, metadata !2019, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %568, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %567, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %566, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %565, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %564, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %563, metadata !2008, metadata !DIExpression()), !dbg !2130
  br label %589, !dbg !2475

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2449
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2129
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2071
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2437
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2078
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2079
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2478
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2154
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2154
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %571, metadata !2026, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %570, metadata !2025, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %569, metadata !2019, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %568, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %567, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %566, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %565, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %564, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %563, metadata !2008, metadata !DIExpression()), !dbg !2130
  %573 = and i8 %567, 1, !dbg !2475
  %574 = icmp ne i8 %573, 0, !dbg !2475
  %575 = and i8 %570, 1, !dbg !2475
  %576 = icmp eq i8 %575, 0, !dbg !2475
  %577 = and i1 %574, %576, !dbg !2475
  br i1 %577, label %578, label %589, !dbg !2475

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2479
  br i1 %579, label %580, label %582, !dbg !2483

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2479
  store i8 39, i8* %581, align 1, !dbg !2479, !tbaa !935
  br label %582, !dbg !2479

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %583, metadata !2009, metadata !DIExpression()), !dbg !2070
  %584 = icmp ult i64 %583, %572, !dbg !2484
  br i1 %584, label %585, label %587, !dbg !2487

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2484
  store i8 39, i8* %586, align 1, !dbg !2484, !tbaa !935
  br label %587, !dbg !2484

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %588, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 0, metadata !2016, metadata !DIExpression()), !dbg !2078
  br label %589, !dbg !2488

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2427
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %598, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %597, metadata !2009, metadata !DIExpression()), !dbg !2070
  %599 = icmp ult i64 %597, %590, !dbg !2489
  br i1 %599, label %600, label %602, !dbg !2492

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2489
  store i8 %592, i8* %601, align 1, !dbg !2489, !tbaa !935
  br label %602, !dbg !2489

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %603, metadata !2009, metadata !DIExpression()), !dbg !2070
  %604 = and i8 %591, 1, !dbg !2493
  %605 = icmp eq i8 %604, 0, !dbg !2493
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2495
  call void @llvm.dbg.value(metadata i8 %606, metadata !2018, metadata !DIExpression()), !dbg !2080
  br label %607, !dbg !2496

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2449
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2129
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2071
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2437
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2078
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2129
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2080
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %614, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %613, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %612, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %611, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %610, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %609, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %608, metadata !2008, metadata !DIExpression()), !dbg !2130
  %616 = add i64 %608, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %616, metadata !2008, metadata !DIExpression()), !dbg !2130
  br label %121, !dbg !2498, !llvm.loop !2499

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %618, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %618, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %125, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %125, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %126, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %127, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %128, metadata !2018, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  %619 = icmp eq i64 %123, 0, !dbg !2501
  %620 = and i1 %114, %619, !dbg !2503
  %621 = xor i1 %620, true, !dbg !2503
  %622 = or i1 %110, %621, !dbg !2503
  br i1 %622, label %623, label %661, !dbg !2503

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2504
  %625 = xor i1 %624, true, !dbg !2504
  %626 = and i8 %127, 1, !dbg !2506
  %627 = icmp eq i8 %626, 0, !dbg !2506
  %628 = or i1 %627, %625, !dbg !2504
  br i1 %628, label %638, label %629, !dbg !2504

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2507
  %631 = icmp eq i8 %630, 0, !dbg !2507
  br i1 %631, label %634, label %632, !dbg !2510

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %618, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %618, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %618, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %618, metadata !2002, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %95, metadata !2006, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %96, metadata !2007, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64 %124, metadata !2010, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %125, metadata !2002, metadata !DIExpression()), !dbg !2064
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2511
  br label %671, !dbg !2512

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2513
  %636 = icmp ne i64 %124, 0, !dbg !2515
  %637 = and i1 %636, %635, !dbg !2516
  br i1 %637, label %27, label %638, !dbg !2516

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %129, metadata !2000, metadata !DIExpression()), !dbg !2062
  %639 = icmp ne i8* %98, null, !dbg !2517
  %640 = and i1 %639, %110, !dbg !2519
  br i1 %640, label %641, label %656, !dbg !2519

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %123, metadata !2009, metadata !DIExpression()), !dbg !2070
  %642 = load i8, i8* %98, align 1, !dbg !2520, !tbaa !935
  %643 = icmp eq i8 %642, 0, !dbg !2523
  br i1 %643, label %656, label %644, !dbg !2523

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %647, metadata !2009, metadata !DIExpression()), !dbg !2070
  %648 = icmp ult i64 %647, %129, !dbg !2524
  br i1 %648, label %649, label %651, !dbg !2527

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2524
  store i8 %645, i8* %650, align 1, !dbg !2524, !tbaa !935
  br label %651, !dbg !2524

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2527
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2528
  call void @llvm.dbg.value(metadata i8* %653, metadata !2011, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %652, metadata !2009, metadata !DIExpression()), !dbg !2070
  %654 = load i8, i8* %653, align 1, !dbg !2520, !tbaa !935
  %655 = icmp eq i8 %654, 0, !dbg !2523
  br i1 %655, label %656, label %644, !dbg !2523, !llvm.loop !2529

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2070
  call void @llvm.dbg.value(metadata i64 %657, metadata !2009, metadata !DIExpression()), !dbg !2070
  %658 = icmp ult i64 %657, %129, !dbg !2531
  br i1 %658, label %659, label %671, !dbg !2533

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2534
  store i8 0, i8* %660, align 1, !dbg !2535, !tbaa !935
  br label %671, !dbg !2534

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2000, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %663, metadata !2002, metadata !DIExpression()), !dbg !2064
  %665 = icmp ne i32 %662, 2, !dbg !2536
  %666 = icmp eq i8 %102, 0, !dbg !2538
  %667 = or i1 %665, %666, !dbg !2539
  call void @llvm.dbg.value(metadata i32 4, metadata !2003, metadata !DIExpression()), !dbg !2065
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %668, metadata !2003, metadata !DIExpression()), !dbg !2065
  %669 = and i32 %5, -3, !dbg !2540
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2541
  br label %671, !dbg !2542

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2543
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2544 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %1, metadata !2549, metadata !DIExpression()), !dbg !2553
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %3, metadata !2550, metadata !DIExpression()), !dbg !2555
  %4 = icmp eq i8* %3, %0, !dbg !2556
  br i1 %4, label %5, label %71, !dbg !2558

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2559
  call void @llvm.dbg.value(metadata i8* %6, metadata !2551, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8* %6, metadata !2561, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* null, metadata !2567, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 85, metadata !2568, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 84, metadata !2569, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 70, metadata !2570, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 45, metadata !2571, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 56, metadata !2572, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 0, metadata !2574, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 0, metadata !2575, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2576, metadata !DIExpression()), !dbg !2589
  %7 = load i8, i8* %6, align 1, !dbg !2590, !tbaa !935
  %8 = and i8 %7, -33, !dbg !2590
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2590

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2592, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8* null, metadata !2597, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 84, metadata !2598, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 70, metadata !2599, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 45, metadata !2600, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 56, metadata !2601, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2618
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2619
  %11 = load i8, i8* %10, align 1, !dbg !2619, !tbaa !935
  %12 = and i8 %11, -33, !dbg !2619
  %13 = icmp eq i8 %12, 84, !dbg !2619
  br i1 %13, label %14, label %68, !dbg !2619

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2621, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8* null, metadata !2626, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 70, metadata !2627, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 45, metadata !2628, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 56, metadata !2629, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 0, metadata !2630, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2631, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2633, metadata !DIExpression()), !dbg !2645
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2646
  %16 = load i8, i8* %15, align 1, !dbg !2646, !tbaa !935
  %17 = and i8 %16, -33, !dbg !2646
  %18 = icmp eq i8 %17, 70, !dbg !2646
  br i1 %18, label %19, label %68, !dbg !2646

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2648, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* null, metadata !2653, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 45, metadata !2654, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 56, metadata !2655, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 0, metadata !2656, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2670
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2671
  %21 = load i8, i8* %20, align 1, !dbg !2671, !tbaa !935
  %22 = icmp eq i8 %21, 45, !dbg !2671
  br i1 %22, label %23, label %68, !dbg !2673

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2674, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* null, metadata !2679, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 56, metadata !2680, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8 0, metadata !2684, metadata !DIExpression()), !dbg !2694
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2695
  %25 = load i8, i8* %24, align 1, !dbg !2695, !tbaa !935
  %26 = icmp eq i8 %25, 56, !dbg !2695
  br i1 %26, label %27, label %68, !dbg !2697

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2698, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8* null, metadata !2703, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2706, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 0, metadata !2707, metadata !DIExpression()), !dbg !2716
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2717
  %29 = load i8, i8* %28, align 1, !dbg !2717, !tbaa !935
  %30 = icmp eq i8 %29, 0, !dbg !2717
  br i1 %30, label %31, label %68, !dbg !2719

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2720, !tbaa !935
  %33 = icmp eq i8 %32, 96, !dbg !2721
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.81, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.82, i64 0, i64 0), !dbg !2720
  br label %71, !dbg !2722

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2592, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8* null, metadata !2597, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 66, metadata !2598, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8 49, metadata !2599, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 56, metadata !2600, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8 48, metadata !2601, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 51, metadata !2602, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 48, metadata !2603, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2735
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2736
  %37 = load i8, i8* %36, align 1, !dbg !2736, !tbaa !935
  %38 = and i8 %37, -33, !dbg !2736
  %39 = icmp eq i8 %38, 66, !dbg !2736
  br i1 %39, label %40, label %68, !dbg !2736

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2621, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* null, metadata !2626, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 49, metadata !2627, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 56, metadata !2628, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 48, metadata !2629, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8 51, metadata !2630, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 48, metadata !2631, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8 0, metadata !2633, metadata !DIExpression()), !dbg !2746
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2747
  %42 = load i8, i8* %41, align 1, !dbg !2747, !tbaa !935
  %43 = icmp eq i8 %42, 49, !dbg !2747
  br i1 %43, label %44, label %68, !dbg !2748

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2648, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* null, metadata !2653, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 56, metadata !2654, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 48, metadata !2655, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 51, metadata !2656, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 48, metadata !2657, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2757
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2758
  %46 = load i8, i8* %45, align 1, !dbg !2758, !tbaa !935
  %47 = icmp eq i8 %46, 56, !dbg !2758
  br i1 %47, label %48, label %68, !dbg !2759

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2674, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* null, metadata !2679, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 48, metadata !2680, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 51, metadata !2681, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 48, metadata !2682, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 0, metadata !2684, metadata !DIExpression()), !dbg !2767
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2768
  %50 = load i8, i8* %49, align 1, !dbg !2768, !tbaa !935
  %51 = icmp eq i8 %50, 48, !dbg !2768
  br i1 %51, label %52, label %68, !dbg !2769

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2698, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8* null, metadata !2703, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 51, metadata !2704, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 48, metadata !2705, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 0, metadata !2706, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2707, metadata !DIExpression()), !dbg !2776
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2777
  %54 = load i8, i8* %53, align 1, !dbg !2777, !tbaa !935
  %55 = icmp eq i8 %54, 51, !dbg !2777
  br i1 %55, label %56, label %68, !dbg !2778

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2779, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* null, metadata !2784, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 48, metadata !2785, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 0, metadata !2786, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8 0, metadata !2787, metadata !DIExpression()), !dbg !2795
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2796
  %58 = load i8, i8* %57, align 1, !dbg !2796, !tbaa !935
  %59 = icmp eq i8 %58, 48, !dbg !2796
  br i1 %59, label %60, label %68, !dbg !2798

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2799, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* null, metadata !2804, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 0, metadata !2805, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 0, metadata !2806, metadata !DIExpression()), !dbg !2813
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2814
  %62 = load i8, i8* %61, align 1, !dbg !2814, !tbaa !935
  %63 = icmp eq i8 %62, 0, !dbg !2814
  br i1 %63, label %64, label %68, !dbg !2816

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2817, !tbaa !935
  %66 = icmp eq i8 %65, 96, !dbg !2818
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.83, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.84, i64 0, i64 0), !dbg !2817
  br label %71, !dbg !2819

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2820
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.80, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !2821
  br label %71, !dbg !2822

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2823
  ret i8* %72, !dbg !2824
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2825 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %1, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2835, metadata !DIExpression()) #11, !dbg !2848
  call void @llvm.dbg.value(metadata i64 %1, metadata !2840, metadata !DIExpression()) #11, !dbg !2850
  call void @llvm.dbg.value(metadata i64* null, metadata !2841, metadata !DIExpression()) #11, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2842, metadata !DIExpression()) #11, !dbg !2852
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2853
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2843, metadata !DIExpression()) #11, !dbg !2854
  %6 = tail call i32* @__errno_location() #17, !dbg !2855
  %7 = load i32, i32* %6, align 4, !dbg !2855, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %7, metadata !2844, metadata !DIExpression()) #11, !dbg !2856
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2857
  %9 = load i32, i32* %8, align 4, !dbg !2857, !tbaa !1932
  %10 = or i32 %9, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %10, metadata !2845, metadata !DIExpression()) #11, !dbg !2859
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2860
  %12 = load i32, i32* %11, align 8, !dbg !2860, !tbaa !1873
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2861
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2862
  %15 = load i8*, i8** %14, align 8, !dbg !2862, !tbaa !1958
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2863
  %17 = load i8*, i8** %16, align 8, !dbg !2863, !tbaa !1961
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2864
  %19 = add i64 %18, 1, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %19, metadata !2846, metadata !DIExpression()) #11, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %19, metadata !2867, metadata !DIExpression()) #11, !dbg !2872
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2874
  call void @llvm.dbg.value(metadata i8* %20, metadata !2847, metadata !DIExpression()) #11, !dbg !2875
  %21 = load i32, i32* %11, align 8, !dbg !2876, !tbaa !1873
  %22 = load i8*, i8** %14, align 8, !dbg !2877, !tbaa !1958
  %23 = load i8*, i8** %16, align 8, !dbg !2878, !tbaa !1961
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2879
  store i32 %7, i32* %6, align 4, !dbg !2880, !tbaa !789
  ret i8* %20, !dbg !2881
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2835, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %1, metadata !2840, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64* %2, metadata !2841, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2842, metadata !DIExpression()), !dbg !2885
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2886
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2843, metadata !DIExpression()), !dbg !2887
  %7 = tail call i32* @__errno_location() #17, !dbg !2888
  %8 = load i32, i32* %7, align 4, !dbg !2888, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %8, metadata !2844, metadata !DIExpression()), !dbg !2889
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2890
  %10 = load i32, i32* %9, align 4, !dbg !2890, !tbaa !1932
  %11 = icmp ne i64* %2, null, !dbg !2891
  %12 = xor i1 %11, true, !dbg !2891
  %13 = zext i1 %12 to i32, !dbg !2891
  %14 = or i32 %10, %13, !dbg !2892
  call void @llvm.dbg.value(metadata i32 %14, metadata !2845, metadata !DIExpression()), !dbg !2893
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2894
  %16 = load i32, i32* %15, align 8, !dbg !2894, !tbaa !1873
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2895
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2896
  %19 = load i8*, i8** %18, align 8, !dbg !2896, !tbaa !1958
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2897
  %21 = load i8*, i8** %20, align 8, !dbg !2897, !tbaa !1961
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2898
  %23 = add i64 %22, 1, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %23, metadata !2846, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %23, metadata !2867, metadata !DIExpression()) #11, !dbg !2901
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2903
  call void @llvm.dbg.value(metadata i8* %24, metadata !2847, metadata !DIExpression()), !dbg !2904
  %25 = load i32, i32* %15, align 8, !dbg !2905, !tbaa !1873
  %26 = load i8*, i8** %18, align 8, !dbg !2906, !tbaa !1958
  %27 = load i8*, i8** %20, align 8, !dbg !2907, !tbaa !1961
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2908
  store i32 %8, i32* %7, align 4, !dbg !2909, !tbaa !789
  br i1 %11, label %29, label %30, !dbg !2910

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2911, !tbaa !1739
  br label %30, !dbg !2913

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2915 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2919, !tbaa !704
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2917, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 1, metadata !2918, metadata !DIExpression()), !dbg !2921
  %2 = load i32, i32* @nslots, align 4, !dbg !2922, !tbaa !789
  %3 = icmp sgt i32 %2, 1, !dbg !2925
  br i1 %3, label %4, label %12, !dbg !2926

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2918, metadata !DIExpression()), !dbg !2921
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2927
  %7 = load i8*, i8** %6, align 8, !dbg !2927, !tbaa !2928
  tail call void @free(i8* %7) #11, !dbg !2930
  %8 = add nuw nsw i64 %5, 1, !dbg !2931
  call void @llvm.dbg.value(metadata i32 undef, metadata !2918, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2921
  %9 = load i32, i32* @nslots, align 4, !dbg !2922, !tbaa !789
  %10 = sext i32 %9 to i64, !dbg !2925
  %11 = icmp slt i64 %8, %10, !dbg !2925
  br i1 %11, label %4, label %12, !dbg !2926, !llvm.loop !2932

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2934
  %14 = load i8*, i8** %13, align 8, !dbg !2934, !tbaa !2928
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2936
  br i1 %15, label %17, label %16, !dbg !2937

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2938
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2940, !tbaa !2941
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2942, !tbaa !2928
  br label %17, !dbg !2943

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2944
  br i1 %18, label %21, label %19, !dbg !2946

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2947
  tail call void @free(i8* %20) #11, !dbg !2949
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2950, !tbaa !704
  br label %21, !dbg !2951

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2952, !tbaa !789
  ret void, !dbg !2953
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2954 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %1, metadata !2959, metadata !DIExpression()), !dbg !2961
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2962
  ret i8* %3, !dbg !2963
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2968, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %1, metadata !2969, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i64 %2, metadata !2970, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2971, metadata !DIExpression()), !dbg !2986
  %5 = tail call i32* @__errno_location() #17, !dbg !2987
  %6 = load i32, i32* %5, align 4, !dbg !2987, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %6, metadata !2972, metadata !DIExpression()), !dbg !2988
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2989, !tbaa !704
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2973, metadata !DIExpression()), !dbg !2990
  %8 = icmp slt i32 %0, 0, !dbg !2991
  br i1 %8, label %9, label %10, !dbg !2993

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2994
  unreachable, !dbg !2994

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2995, !tbaa !789
  %12 = icmp sgt i32 %11, %0, !dbg !2996
  br i1 %12, label %34, label %13, !dbg !2997

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2998
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2977, metadata !DIExpression()), !dbg !2999
  %15 = icmp eq i32 %0, 2147483647, !dbg !3000
  br i1 %15, label %16, label %17, !dbg !3002

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3003
  unreachable, !dbg !3003

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3004
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3004
  %20 = add nsw i32 %0, 1, !dbg !3005
  %21 = sext i32 %20 to i64, !dbg !3006
  %22 = shl nsw i64 %21, 4, !dbg !3007
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3008
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3008
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2973, metadata !DIExpression()), !dbg !2990
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3009, !tbaa !704
  br i1 %14, label %25, label %26, !dbg !3010

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3011, !tbaa.struct !3013
  br label %26, !dbg !3014

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3015, !tbaa !789
  %28 = sext i32 %27 to i64, !dbg !3016
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3016
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3017
  %31 = sub nsw i32 %20, %27, !dbg !3018
  %32 = sext i32 %31 to i64, !dbg !3019
  %33 = shl nsw i64 %32, 4, !dbg !3020
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3017
  store i32 %20, i32* @nslots, align 4, !dbg !3021, !tbaa !789
  br label %34, !dbg !3022

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3023
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2973, metadata !DIExpression()), !dbg !2990
  %36 = sext i32 %0 to i64, !dbg !3024
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3025
  %38 = load i64, i64* %37, align 8, !dbg !3025, !tbaa !2941
  call void @llvm.dbg.value(metadata i64 %38, metadata !2978, metadata !DIExpression()), !dbg !3026
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3027
  %40 = load i8*, i8** %39, align 8, !dbg !3027, !tbaa !2928
  call void @llvm.dbg.value(metadata i8* %40, metadata !2980, metadata !DIExpression()), !dbg !3028
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3029
  %42 = load i32, i32* %41, align 4, !dbg !3029, !tbaa !1932
  %43 = or i32 %42, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %43, metadata !2981, metadata !DIExpression()), !dbg !3031
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3032
  %45 = load i32, i32* %44, align 8, !dbg !3032, !tbaa !1873
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3033
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3034
  %48 = load i8*, i8** %47, align 8, !dbg !3034, !tbaa !1958
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3035
  %50 = load i8*, i8** %49, align 8, !dbg !3035, !tbaa !1961
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3036
  call void @llvm.dbg.value(metadata i64 %51, metadata !2982, metadata !DIExpression()), !dbg !3037
  %52 = icmp ugt i64 %38, %51, !dbg !3038
  br i1 %52, label %63, label %53, !dbg !3040

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %54, metadata !2978, metadata !DIExpression()), !dbg !3026
  store i64 %54, i64* %37, align 8, !dbg !3043, !tbaa !2941
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3044
  br i1 %55, label %57, label %56, !dbg !3046

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3047
  br label %57, !dbg !3047

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2867, metadata !DIExpression()) #11, !dbg !3048
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %58, metadata !2980, metadata !DIExpression()), !dbg !3028
  store i8* %58, i8** %39, align 8, !dbg !3051, !tbaa !2928
  %59 = load i32, i32* %44, align 8, !dbg !3052, !tbaa !1873
  %60 = load i8*, i8** %47, align 8, !dbg !3053, !tbaa !1958
  %61 = load i8*, i8** %49, align 8, !dbg !3054, !tbaa !1961
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3055
  br label %63, !dbg !3056

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3057
  call void @llvm.dbg.value(metadata i8* %64, metadata !2980, metadata !DIExpression()), !dbg !3028
  store i32 %6, i32* %5, align 4, !dbg !3058, !tbaa !789
  ret i8* %64, !dbg !3059
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3060 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3064, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i8* %1, metadata !3065, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %2, metadata !3066, metadata !DIExpression()), !dbg !3069
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3070
  ret i8* %4, !dbg !3071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3072 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 0, metadata !2958, metadata !DIExpression()) #11, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()) #11, !dbg !3080
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3081
  ret i8* %2, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3083 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i32 0, metadata !3064, metadata !DIExpression()) #11, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %0, metadata !3065, metadata !DIExpression()) #11, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()) #11, !dbg !3094
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3095
  ret i8* %3, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3097 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3101, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 %1, metadata !3102, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3103, metadata !DIExpression()), !dbg !3107
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3108
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3104, metadata !DIExpression(DW_OP_deref)), !dbg !3109
  call void @llvm.dbg.value(metadata i32 %1, metadata !3110, metadata !DIExpression()) #11, !dbg !3116
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3118, !alias.scope !3119
  %6 = icmp eq i32 %1, 10, !dbg !3122
  br i1 %6, label %7, label %8, !dbg !3124

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3125, !noalias !3119
  unreachable, !dbg !3125

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3126
  store i32 %1, i32* %9, align 8, !dbg !3127, !tbaa !1873, !alias.scope !3119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3104, metadata !DIExpression(DW_OP_deref)), !dbg !3109
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3115, metadata !DIExpression(DW_OP_deref)), !dbg !3118
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3129
  ret i8* %10, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3131 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3135, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 %1, metadata !3136, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %2, metadata !3137, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %3, metadata !3138, metadata !DIExpression()), !dbg !3143
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3139, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call void @llvm.dbg.value(metadata i32 %1, metadata !3110, metadata !DIExpression()) #11, !dbg !3146
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3148, !alias.scope !3149
  %7 = icmp eq i32 %1, 10, !dbg !3152
  br i1 %7, label %8, label %9, !dbg !3153

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3154, !noalias !3149
  unreachable, !dbg !3154

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3155
  store i32 %1, i32* %10, align 8, !dbg !3156, !tbaa !1873, !alias.scope !3149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3139, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3115, metadata !DIExpression(DW_OP_deref)), !dbg !3148
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3157
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3158
  ret i8* %11, !dbg !3159
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3160 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3164, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %1, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3101, metadata !DIExpression()) #11, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %0, metadata !3102, metadata !DIExpression()) #11, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()) #11, !dbg !3171
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3173
  call void @llvm.dbg.value(metadata i32 %0, metadata !3110, metadata !DIExpression()) #11, !dbg !3174
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3176, !alias.scope !3177
  %5 = icmp eq i32 %0, 10, !dbg !3180
  br i1 %5, label %6, label %7, !dbg !3181

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3182, !noalias !3177
  unreachable, !dbg !3182

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3183
  store i32 %0, i32* %8, align 8, !dbg !3184, !tbaa !1873, !alias.scope !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3115, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3176
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3186
  ret i8* %9, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3188 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %1, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %2, metadata !3194, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i32 0, metadata !3135, metadata !DIExpression()) #11, !dbg !3198
  call void @llvm.dbg.value(metadata i32 %0, metadata !3136, metadata !DIExpression()) #11, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %1, metadata !3137, metadata !DIExpression()) #11, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %2, metadata !3138, metadata !DIExpression()) #11, !dbg !3202
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3139, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3204
  call void @llvm.dbg.value(metadata i32 %0, metadata !3110, metadata !DIExpression()) #11, !dbg !3205
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3207, !alias.scope !3208
  %6 = icmp eq i32 %0, 10, !dbg !3211
  br i1 %6, label %7, label %8, !dbg !3212

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3213, !noalias !3208
  unreachable, !dbg !3213

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3214
  store i32 %0, i32* %9, align 8, !dbg !3215, !tbaa !1873, !alias.scope !3208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3139, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3204
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3115, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3207
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3216
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3217
  ret i8* %10, !dbg !3218
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3219 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8 %2, metadata !3225, metadata !DIExpression()), !dbg !3229
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3231, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1892, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8 %2, metadata !1893, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 1, metadata !1894, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 %2, metadata !1895, metadata !DIExpression()), !dbg !3238
  %6 = lshr i8 %2, 5, !dbg !3239
  %7 = zext i8 %6 to i64, !dbg !3239
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3240
  call void @llvm.dbg.value(metadata i32* %8, metadata !1896, metadata !DIExpression()), !dbg !3241
  %9 = and i8 %2, 31, !dbg !3242
  %10 = zext i8 %9 to i32, !dbg !3242
  call void @llvm.dbg.value(metadata i32 %10, metadata !1898, metadata !DIExpression()), !dbg !3243
  %11 = load i32, i32* %8, align 4, !dbg !3244, !tbaa !789
  %12 = lshr i32 %11, %10, !dbg !3245
  %13 = and i32 %12, 1, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %13, metadata !1899, metadata !DIExpression()), !dbg !3247
  %14 = xor i32 %13, 1, !dbg !3248
  %15 = shl i32 %14, %10, !dbg !3249
  %16 = xor i32 %15, %11, !dbg !3250
  store i32 %16, i32* %8, align 4, !dbg !3250, !tbaa !789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3233
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3251
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3252
  ret i8* %17, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3254 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3258, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8 %1, metadata !3259, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #11, !dbg !3262
  call void @llvm.dbg.value(metadata i64 -1, metadata !3224, metadata !DIExpression()) #11, !dbg !3264
  call void @llvm.dbg.value(metadata i8 %1, metadata !3225, metadata !DIExpression()) #11, !dbg !3265
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3267, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3226, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1892, metadata !DIExpression()) #11, !dbg !3269
  call void @llvm.dbg.value(metadata i8 %1, metadata !1893, metadata !DIExpression()) #11, !dbg !3271
  call void @llvm.dbg.value(metadata i32 1, metadata !1894, metadata !DIExpression()) #11, !dbg !3272
  call void @llvm.dbg.value(metadata i8 %1, metadata !1895, metadata !DIExpression()) #11, !dbg !3273
  %5 = lshr i8 %1, 5, !dbg !3274
  %6 = zext i8 %5 to i64, !dbg !3274
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3275
  call void @llvm.dbg.value(metadata i32* %7, metadata !1896, metadata !DIExpression()) #11, !dbg !3276
  %8 = and i8 %1, 31, !dbg !3277
  %9 = zext i8 %8 to i32, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %9, metadata !1898, metadata !DIExpression()) #11, !dbg !3278
  %10 = load i32, i32* %7, align 4, !dbg !3279, !tbaa !789
  %11 = lshr i32 %10, %9, !dbg !3280
  %12 = and i32 %11, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i32 %12, metadata !1899, metadata !DIExpression()) #11, !dbg !3282
  %13 = xor i32 %12, 1, !dbg !3283
  %14 = shl i32 %13, %9, !dbg !3284
  %15 = xor i32 %14, %10, !dbg !3285
  store i32 %15, i32* %7, align 4, !dbg !3285, !tbaa !789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3226, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3268
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3286
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3287
  ret i8* %16, !dbg !3288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3289 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %0, metadata !3258, metadata !DIExpression()) #11, !dbg !3293
  call void @llvm.dbg.value(metadata i8 58, metadata !3259, metadata !DIExpression()) #11, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #11, !dbg !3296
  call void @llvm.dbg.value(metadata i64 -1, metadata !3224, metadata !DIExpression()) #11, !dbg !3298
  call void @llvm.dbg.value(metadata i8 58, metadata !3225, metadata !DIExpression()) #11, !dbg !3299
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3301, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3226, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1892, metadata !DIExpression()) #11, !dbg !3303
  call void @llvm.dbg.value(metadata i8 58, metadata !1893, metadata !DIExpression()) #11, !dbg !3305
  call void @llvm.dbg.value(metadata i32 1, metadata !1894, metadata !DIExpression()) #11, !dbg !3306
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()) #11, !dbg !3307
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3308
  call void @llvm.dbg.value(metadata i32* %4, metadata !1896, metadata !DIExpression()) #11, !dbg !3309
  call void @llvm.dbg.value(metadata i32 26, metadata !1898, metadata !DIExpression()) #11, !dbg !3310
  %5 = load i32, i32* %4, align 4, !dbg !3311, !tbaa !789
  %6 = or i32 %5, 67108864, !dbg !3312
  store i32 %6, i32* %4, align 4, !dbg !3312, !tbaa !789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3226, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3302
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3314
  ret i8* %7, !dbg !3315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3316 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3318, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %1, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #11, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #11, !dbg !3324
  call void @llvm.dbg.value(metadata i8 58, metadata !3225, metadata !DIExpression()) #11, !dbg !3325
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3327, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3226, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1892, metadata !DIExpression()) #11, !dbg !3329
  call void @llvm.dbg.value(metadata i8 58, metadata !1893, metadata !DIExpression()) #11, !dbg !3331
  call void @llvm.dbg.value(metadata i32 1, metadata !1894, metadata !DIExpression()) #11, !dbg !3332
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()) #11, !dbg !3333
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3334
  call void @llvm.dbg.value(metadata i32* %5, metadata !1896, metadata !DIExpression()) #11, !dbg !3335
  call void @llvm.dbg.value(metadata i32 26, metadata !1898, metadata !DIExpression()) #11, !dbg !3336
  %6 = load i32, i32* %5, align 4, !dbg !3337, !tbaa !789
  %7 = or i32 %6, 67108864, !dbg !3338
  store i32 %7, i32* %5, align 4, !dbg !3338, !tbaa !789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3226, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3328
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3339
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3340
  ret i8* %8, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3342 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3115, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %1, metadata !3345, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i8* %2, metadata !3346, metadata !DIExpression()), !dbg !3352
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3353
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3353
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3354
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %1, metadata !3110, metadata !DIExpression()) #11, !dbg !3355
  call void @llvm.dbg.value(metadata i32 0, metadata !3115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3348
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3348, !alias.scope !3356
  %8 = icmp eq i32 %1, 10, !dbg !3359
  br i1 %8, label %9, label %10, !dbg !3360

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3361, !noalias !3356
  unreachable, !dbg !3361

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3348
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3354
  store i32 %1, i32* %11, align 8, !dbg !3354
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3354
  %13 = bitcast i32* %12 to i8*, !dbg !3354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3347, metadata !DIExpression(DW_OP_deref)), !dbg !3362
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1892, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8 58, metadata !1893, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 1, metadata !1894, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8 58, metadata !1895, metadata !DIExpression()), !dbg !3367
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3368
  call void @llvm.dbg.value(metadata i32* %14, metadata !1896, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 26, metadata !1898, metadata !DIExpression()), !dbg !3370
  %15 = load i32, i32* %14, align 4, !dbg !3371, !tbaa !789
  %16 = or i32 %15, 67108864, !dbg !3372
  store i32 %16, i32* %14, align 4, !dbg !3372, !tbaa !789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3347, metadata !DIExpression(DW_OP_deref)), !dbg !3362
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3373
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3374
  ret i8* %17, !dbg !3375
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3376 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %1, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %2, metadata !3382, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %3, metadata !3383, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %0, metadata !3388, metadata !DIExpression()) #11, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %1, metadata !3393, metadata !DIExpression()) #11, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %2, metadata !3394, metadata !DIExpression()) #11, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %3, metadata !3395, metadata !DIExpression()) #11, !dbg !3402
  call void @llvm.dbg.value(metadata i64 -1, metadata !3396, metadata !DIExpression()) #11, !dbg !3403
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3405, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3397, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1940, metadata !DIExpression()) #11, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %1, metadata !1941, metadata !DIExpression()) #11, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %2, metadata !1942, metadata !DIExpression()) #11, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1940, metadata !DIExpression()) #11, !dbg !3407
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3411
  store i32 10, i32* %7, align 8, !dbg !3412, !tbaa !1873
  %8 = icmp ne i8* %1, null, !dbg !3413
  %9 = icmp ne i8* %2, null, !dbg !3414
  %10 = and i1 %8, %9, !dbg !3415
  br i1 %10, label %12, label %11, !dbg !3415

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3416
  unreachable, !dbg !3416

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3417
  store i8* %1, i8** %13, align 8, !dbg !3418, !tbaa !1958
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3419
  store i8* %2, i8** %14, align 8, !dbg !3420, !tbaa !1961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3397, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3406
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3422
  ret i8* %15, !dbg !3423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3389 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3388, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %1, metadata !3393, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %2, metadata !3394, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %3, metadata !3395, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %4, metadata !3396, metadata !DIExpression()), !dbg !3428
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3429
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3430, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3397, metadata !DIExpression(DW_OP_deref)), !dbg !3431
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1940, metadata !DIExpression()) #11, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %1, metadata !1941, metadata !DIExpression()) #11, !dbg !3434
  call void @llvm.dbg.value(metadata i8* %2, metadata !1942, metadata !DIExpression()) #11, !dbg !3435
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1940, metadata !DIExpression()) #11, !dbg !3432
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3436
  store i32 10, i32* %8, align 8, !dbg !3437, !tbaa !1873
  %9 = icmp ne i8* %1, null, !dbg !3438
  %10 = icmp ne i8* %2, null, !dbg !3439
  %11 = and i1 %9, %10, !dbg !3440
  br i1 %11, label %13, label %12, !dbg !3440

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3441
  unreachable, !dbg !3441

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3442
  store i8* %1, i8** %14, align 8, !dbg !3443, !tbaa !1958
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3444
  store i8* %2, i8** %15, align 8, !dbg !3445, !tbaa !1961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3397, metadata !DIExpression(DW_OP_deref)), !dbg !3431
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3446
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3447
  ret i8* %16, !dbg !3448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3449 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %1, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %2, metadata !3455, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i32 0, metadata !3380, metadata !DIExpression()) #11, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()) #11, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %1, metadata !3382, metadata !DIExpression()) #11, !dbg !3462
  call void @llvm.dbg.value(metadata i8* %2, metadata !3383, metadata !DIExpression()) #11, !dbg !3463
  call void @llvm.dbg.value(metadata i32 0, metadata !3388, metadata !DIExpression()) #11, !dbg !3464
  call void @llvm.dbg.value(metadata i8* %0, metadata !3393, metadata !DIExpression()) #11, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %1, metadata !3394, metadata !DIExpression()) #11, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %2, metadata !3395, metadata !DIExpression()) #11, !dbg !3468
  call void @llvm.dbg.value(metadata i64 -1, metadata !3396, metadata !DIExpression()) #11, !dbg !3469
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3470
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3470
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3471, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3397, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1940, metadata !DIExpression()) #11, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %0, metadata !1941, metadata !DIExpression()) #11, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %1, metadata !1942, metadata !DIExpression()) #11, !dbg !3476
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1940, metadata !DIExpression()) #11, !dbg !3473
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3477
  store i32 10, i32* %6, align 8, !dbg !3478, !tbaa !1873
  %7 = icmp ne i8* %0, null, !dbg !3479
  %8 = icmp ne i8* %1, null, !dbg !3480
  %9 = and i1 %7, %8, !dbg !3481
  br i1 %9, label %11, label %10, !dbg !3481

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3482
  unreachable, !dbg !3482

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3483
  store i8* %0, i8** %12, align 8, !dbg !3484, !tbaa !1958
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3485
  store i8* %1, i8** %13, align 8, !dbg !3486, !tbaa !1961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3397, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3472
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3488
  ret i8* %14, !dbg !3489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3490 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i8* %1, metadata !3495, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8* %2, metadata !3496, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %3, metadata !3497, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 0, metadata !3388, metadata !DIExpression()) #11, !dbg !3502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3393, metadata !DIExpression()) #11, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3394, metadata !DIExpression()) #11, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %2, metadata !3395, metadata !DIExpression()) #11, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()) #11, !dbg !3507
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3508
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3509, !tbaa.struct !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3397, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3510
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1940, metadata !DIExpression()) #11, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %0, metadata !1941, metadata !DIExpression()) #11, !dbg !3513
  call void @llvm.dbg.value(metadata i8* %1, metadata !1942, metadata !DIExpression()) #11, !dbg !3514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1940, metadata !DIExpression()) #11, !dbg !3511
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3515
  store i32 10, i32* %7, align 8, !dbg !3516, !tbaa !1873
  %8 = icmp ne i8* %0, null, !dbg !3517
  %9 = icmp ne i8* %1, null, !dbg !3518
  %10 = and i1 %8, %9, !dbg !3519
  br i1 %10, label %12, label %11, !dbg !3519

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3520
  unreachable, !dbg !3520

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3521
  store i8* %0, i8** %13, align 8, !dbg !3522, !tbaa !1958
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3523
  store i8* %1, i8** %14, align 8, !dbg !3524, !tbaa !1961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3397, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3510
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3525
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3526
  ret i8* %15, !dbg !3527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3528 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3533, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %2, metadata !3534, metadata !DIExpression()), !dbg !3537
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3538
  ret i8* %4, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3540 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()) #11, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !3533, metadata !DIExpression()) #11, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %1, metadata !3534, metadata !DIExpression()) #11, !dbg !3551
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3552
  ret i8* %3, !dbg !3553
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3558, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8* %1, metadata !3559, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()) #11, !dbg !3562
  call void @llvm.dbg.value(metadata i8* %1, metadata !3533, metadata !DIExpression()) #11, !dbg !3564
  call void @llvm.dbg.value(metadata i64 -1, metadata !3534, metadata !DIExpression()) #11, !dbg !3565
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3566
  ret i8* %3, !dbg !3567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3568 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 0, metadata !3558, metadata !DIExpression()) #11, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #11, !dbg !3576
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()) #11, !dbg !3577
  call void @llvm.dbg.value(metadata i8* %0, metadata !3533, metadata !DIExpression()) #11, !dbg !3579
  call void @llvm.dbg.value(metadata i64 -1, metadata !3534, metadata !DIExpression()) #11, !dbg !3580
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3581
  ret i8* %2, !dbg !3582
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #7 !dbg !3583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3588, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8* %1, metadata !3589, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %2, metadata !3590, metadata !DIExpression()), !dbg !3600
  br label %4, !dbg !3601

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3602

; <label>:6:                                      ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3590, metadata !DIExpression()), !dbg !3600
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #11, !dbg !3602
  call void @llvm.dbg.value(metadata i64 %7, metadata !3591, metadata !DIExpression()), !dbg !3603
  %8 = icmp sgt i64 %7, -1, !dbg !3604
  br i1 %8, label %17, label %9, !dbg !3606

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !3607
  %11 = load i32, i32* %10, align 4, !dbg !3607, !tbaa !789
  %12 = icmp eq i32 %11, 4, !dbg !3607
  br i1 %12, label %6, label %13, !dbg !3609, !llvm.loop !3610

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3613
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3615
  %16 = and i1 %15, %14, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %5, metadata !3590, metadata !DIExpression()), !dbg !3600
  br i1 %16, label %4, label %17

; <label>:17:                                     ; preds = %13, %6
  ret i64 %7, !dbg !3617
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3618 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3657, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %1, metadata !3658, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i8* %2, metadata !3659, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %3, metadata !3660, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8** %4, metadata !3661, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %5, metadata !3662, metadata !DIExpression()), !dbg !3668
  %7 = icmp eq i8* %1, null, !dbg !3669
  br i1 %7, label %10, label %8, !dbg !3671

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3672
  br label %12, !dbg !3672

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3673
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #11, !dbg !3674
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3674
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.94, i64 0, i64 0), i32 5) #11, !dbg !3675
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3675
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
  ], !dbg !3676

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3677
  unreachable, !dbg !3677

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #11, !dbg !3679
  %20 = load i8*, i8** %4, align 8, !dbg !3679, !tbaa !704
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3679
  br label %146, !dbg !3680

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #11, !dbg !3681
  %24 = load i8*, i8** %4, align 8, !dbg !3681, !tbaa !704
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3681
  %26 = load i8*, i8** %25, align 8, !dbg !3681, !tbaa !704
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3681
  br label %146, !dbg !3682

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #11, !dbg !3683
  %30 = load i8*, i8** %4, align 8, !dbg !3683, !tbaa !704
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3683
  %32 = load i8*, i8** %31, align 8, !dbg !3683, !tbaa !704
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3683
  %34 = load i8*, i8** %33, align 8, !dbg !3683, !tbaa !704
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3683
  br label %146, !dbg !3684

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #11, !dbg !3685
  %38 = load i8*, i8** %4, align 8, !dbg !3685, !tbaa !704
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3685
  %40 = load i8*, i8** %39, align 8, !dbg !3685, !tbaa !704
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3685
  %42 = load i8*, i8** %41, align 8, !dbg !3685, !tbaa !704
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3685
  %44 = load i8*, i8** %43, align 8, !dbg !3685, !tbaa !704
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3685
  br label %146, !dbg !3686

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #11, !dbg !3687
  %48 = load i8*, i8** %4, align 8, !dbg !3687, !tbaa !704
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3687
  %50 = load i8*, i8** %49, align 8, !dbg !3687, !tbaa !704
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3687
  %52 = load i8*, i8** %51, align 8, !dbg !3687, !tbaa !704
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3687
  %54 = load i8*, i8** %53, align 8, !dbg !3687, !tbaa !704
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3687
  %56 = load i8*, i8** %55, align 8, !dbg !3687, !tbaa !704
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3687
  br label %146, !dbg !3688

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #11, !dbg !3689
  %60 = load i8*, i8** %4, align 8, !dbg !3689, !tbaa !704
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3689
  %62 = load i8*, i8** %61, align 8, !dbg !3689, !tbaa !704
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3689
  %64 = load i8*, i8** %63, align 8, !dbg !3689, !tbaa !704
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3689
  %66 = load i8*, i8** %65, align 8, !dbg !3689, !tbaa !704
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3689
  %68 = load i8*, i8** %67, align 8, !dbg !3689, !tbaa !704
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3689
  %70 = load i8*, i8** %69, align 8, !dbg !3689, !tbaa !704
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3689
  br label %146, !dbg !3690

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #11, !dbg !3691
  %74 = load i8*, i8** %4, align 8, !dbg !3691, !tbaa !704
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3691
  %76 = load i8*, i8** %75, align 8, !dbg !3691, !tbaa !704
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3691
  %78 = load i8*, i8** %77, align 8, !dbg !3691, !tbaa !704
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3691
  %80 = load i8*, i8** %79, align 8, !dbg !3691, !tbaa !704
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3691
  %82 = load i8*, i8** %81, align 8, !dbg !3691, !tbaa !704
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3691
  %84 = load i8*, i8** %83, align 8, !dbg !3691, !tbaa !704
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3691
  %86 = load i8*, i8** %85, align 8, !dbg !3691, !tbaa !704
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3691
  br label %146, !dbg !3692

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #11, !dbg !3693
  %90 = load i8*, i8** %4, align 8, !dbg !3693, !tbaa !704
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3693
  %92 = load i8*, i8** %91, align 8, !dbg !3693, !tbaa !704
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3693
  %94 = load i8*, i8** %93, align 8, !dbg !3693, !tbaa !704
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3693
  %96 = load i8*, i8** %95, align 8, !dbg !3693, !tbaa !704
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3693
  %98 = load i8*, i8** %97, align 8, !dbg !3693, !tbaa !704
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3693
  %100 = load i8*, i8** %99, align 8, !dbg !3693, !tbaa !704
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3693
  %102 = load i8*, i8** %101, align 8, !dbg !3693, !tbaa !704
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3693
  %104 = load i8*, i8** %103, align 8, !dbg !3693, !tbaa !704
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3693
  br label %146, !dbg !3694

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #11, !dbg !3695
  %108 = load i8*, i8** %4, align 8, !dbg !3695, !tbaa !704
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3695
  %110 = load i8*, i8** %109, align 8, !dbg !3695, !tbaa !704
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3695
  %112 = load i8*, i8** %111, align 8, !dbg !3695, !tbaa !704
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3695
  %114 = load i8*, i8** %113, align 8, !dbg !3695, !tbaa !704
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3695
  %116 = load i8*, i8** %115, align 8, !dbg !3695, !tbaa !704
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3695
  %118 = load i8*, i8** %117, align 8, !dbg !3695, !tbaa !704
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3695
  %120 = load i8*, i8** %119, align 8, !dbg !3695, !tbaa !704
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3695
  %122 = load i8*, i8** %121, align 8, !dbg !3695, !tbaa !704
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3695
  %124 = load i8*, i8** %123, align 8, !dbg !3695, !tbaa !704
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3695
  br label %146, !dbg !3696

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #11, !dbg !3697
  %128 = load i8*, i8** %4, align 8, !dbg !3697, !tbaa !704
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3697
  %130 = load i8*, i8** %129, align 8, !dbg !3697, !tbaa !704
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3697
  %132 = load i8*, i8** %131, align 8, !dbg !3697, !tbaa !704
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3697
  %134 = load i8*, i8** %133, align 8, !dbg !3697, !tbaa !704
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3697
  %136 = load i8*, i8** %135, align 8, !dbg !3697, !tbaa !704
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3697
  %138 = load i8*, i8** %137, align 8, !dbg !3697, !tbaa !704
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3697
  %140 = load i8*, i8** %139, align 8, !dbg !3697, !tbaa !704
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3697
  %142 = load i8*, i8** %141, align 8, !dbg !3697, !tbaa !704
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3697
  %144 = load i8*, i8** %143, align 8, !dbg !3697, !tbaa !704
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3697
  br label %146, !dbg !3698

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3700 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3704, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %1, metadata !3705, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8* %2, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8* %3, metadata !3707, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8** %4, metadata !3708, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 0, metadata !3709, metadata !DIExpression()), !dbg !3715
  br label %6, !dbg !3716

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3718
  call void @llvm.dbg.value(metadata i64 %7, metadata !3709, metadata !DIExpression()), !dbg !3715
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3720
  %9 = load i8*, i8** %8, align 8, !dbg !3720, !tbaa !704
  %10 = icmp eq i8* %9, null, !dbg !3721
  %11 = add i64 %7, 1, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %11, metadata !3709, metadata !DIExpression()), !dbg !3715
  br i1 %10, label %12, label %6, !dbg !3721, !llvm.loop !3723

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %7, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %7, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %7, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %7, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %7, metadata !3709, metadata !DIExpression()), !dbg !3715
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3725
  ret void, !dbg !3726
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3727 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3738, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %1, metadata !3739, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i8* %2, metadata !3740, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8* %3, metadata !3741, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3742, metadata !DIExpression()), !dbg !3750
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3751
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3751
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3744, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 0, metadata !3743, metadata !DIExpression()), !dbg !3753
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3743, metadata !DIExpression()), !dbg !3753
  %11 = load i32, i32* %8, align 8, !dbg !3754
  %12 = icmp ult i32 %11, 41, !dbg !3754
  br i1 %12, label %13, label %18, !dbg !3754

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3754
  %15 = sext i32 %11 to i64, !dbg !3754
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3754
  %17 = add i32 %11, 8, !dbg !3754
  store i32 %17, i32* %8, align 8, !dbg !3754
  br label %21, !dbg !3754

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3754
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3754
  store i8* %20, i8** %10, align 8, !dbg !3754
  br label %21, !dbg !3754

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3754
  %25 = load i8*, i8** %24, align 8, !dbg !3754
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3757
  store i8* %25, i8** %26, align 16, !dbg !3758, !tbaa !704
  %27 = icmp eq i8* %25, null, !dbg !3759
  br i1 %27, label %30, label %28, !dbg !3760

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 1, metadata !3743, metadata !DIExpression()), !dbg !3753
  %29 = icmp ult i32 %22, 41, !dbg !3754
  br i1 %29, label %35, label %32, !dbg !3754

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3761
  call void @llvm.dbg.value(metadata i64 %31, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %31, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3762
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3763
  ret void, !dbg !3763

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3754
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3754
  store i8* %34, i8** %10, align 8, !dbg !3754
  br label %40, !dbg !3754

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3754
  %37 = sext i32 %22 to i64, !dbg !3754
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3754
  %39 = add i32 %22, 8, !dbg !3754
  store i32 %39, i32* %8, align 8, !dbg !3754
  br label %40, !dbg !3754

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3754
  %44 = load i8*, i8** %43, align 8, !dbg !3754
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3757
  store i8* %44, i8** %45, align 8, !dbg !3758, !tbaa !704
  %46 = icmp eq i8* %44, null, !dbg !3759
  br i1 %46, label %30, label %47, !dbg !3760

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 2, metadata !3743, metadata !DIExpression()), !dbg !3753
  %48 = icmp ult i32 %41, 41, !dbg !3754
  br i1 %48, label %52, label %49, !dbg !3754

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3754
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3754
  store i8* %51, i8** %10, align 8, !dbg !3754
  br label %57, !dbg !3754

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3754
  %54 = sext i32 %41 to i64, !dbg !3754
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3754
  %56 = add i32 %41, 8, !dbg !3754
  store i32 %56, i32* %8, align 8, !dbg !3754
  br label %57, !dbg !3754

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3754
  %61 = load i8*, i8** %60, align 8, !dbg !3754
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3757
  store i8* %61, i8** %62, align 16, !dbg !3758, !tbaa !704
  %63 = icmp eq i8* %61, null, !dbg !3759
  br i1 %63, label %30, label %64, !dbg !3760

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 3, metadata !3743, metadata !DIExpression()), !dbg !3753
  %65 = icmp ult i32 %58, 41, !dbg !3754
  br i1 %65, label %69, label %66, !dbg !3754

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3754
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3754
  store i8* %68, i8** %10, align 8, !dbg !3754
  br label %74, !dbg !3754

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3754
  %71 = sext i32 %58 to i64, !dbg !3754
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3754
  %73 = add i32 %58, 8, !dbg !3754
  store i32 %73, i32* %8, align 8, !dbg !3754
  br label %74, !dbg !3754

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3754
  %78 = load i8*, i8** %77, align 8, !dbg !3754
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3757
  store i8* %78, i8** %79, align 8, !dbg !3758, !tbaa !704
  %80 = icmp eq i8* %78, null, !dbg !3759
  br i1 %80, label %30, label %81, !dbg !3760

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 4, metadata !3743, metadata !DIExpression()), !dbg !3753
  %82 = icmp ult i32 %75, 41, !dbg !3754
  br i1 %82, label %86, label %83, !dbg !3754

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3754
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3754
  store i8* %85, i8** %10, align 8, !dbg !3754
  br label %91, !dbg !3754

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3754
  %88 = sext i32 %75 to i64, !dbg !3754
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3754
  %90 = add i32 %75, 8, !dbg !3754
  store i32 %90, i32* %8, align 8, !dbg !3754
  br label %91, !dbg !3754

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3754
  %95 = load i8*, i8** %94, align 8, !dbg !3754
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3757
  store i8* %95, i8** %96, align 16, !dbg !3758, !tbaa !704
  %97 = icmp eq i8* %95, null, !dbg !3759
  br i1 %97, label %30, label %98, !dbg !3760

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 5, metadata !3743, metadata !DIExpression()), !dbg !3753
  %99 = icmp ult i32 %92, 41, !dbg !3754
  br i1 %99, label %103, label %100, !dbg !3754

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3754
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3754
  store i8* %102, i8** %10, align 8, !dbg !3754
  br label %108, !dbg !3754

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3754
  %105 = sext i32 %92 to i64, !dbg !3754
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3754
  %107 = add i32 %92, 8, !dbg !3754
  store i32 %107, i32* %8, align 8, !dbg !3754
  br label %108, !dbg !3754

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3754
  %111 = load i8*, i8** %110, align 8, !dbg !3754
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3757
  store i8* %111, i8** %112, align 8, !dbg !3758, !tbaa !704
  %113 = icmp eq i8* %111, null, !dbg !3759
  br i1 %113, label %30, label %114, !dbg !3760

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 6, metadata !3743, metadata !DIExpression()), !dbg !3753
  %115 = load i8*, i8** %10, align 8, !dbg !3754
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3754
  store i8* %116, i8** %10, align 8, !dbg !3754
  %117 = bitcast i8* %115 to i8**, !dbg !3754
  %118 = load i8*, i8** %117, align 8, !dbg !3754
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3757
  store i8* %118, i8** %119, align 16, !dbg !3758, !tbaa !704
  %120 = icmp eq i8* %118, null, !dbg !3759
  br i1 %120, label %30, label %121, !dbg !3760

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 7, metadata !3743, metadata !DIExpression()), !dbg !3753
  %122 = load i8*, i8** %10, align 8, !dbg !3754
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3754
  store i8* %123, i8** %10, align 8, !dbg !3754
  %124 = bitcast i8* %122 to i8**, !dbg !3754
  %125 = load i8*, i8** %124, align 8, !dbg !3754
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3757
  store i8* %125, i8** %126, align 8, !dbg !3758, !tbaa !704
  %127 = icmp eq i8* %125, null, !dbg !3759
  br i1 %127, label %30, label %128, !dbg !3760

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 8, metadata !3743, metadata !DIExpression()), !dbg !3753
  %129 = load i8*, i8** %10, align 8, !dbg !3754
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3754
  store i8* %130, i8** %10, align 8, !dbg !3754
  %131 = bitcast i8* %129 to i8**, !dbg !3754
  %132 = load i8*, i8** %131, align 8, !dbg !3754
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3757
  store i8* %132, i8** %133, align 16, !dbg !3758, !tbaa !704
  %134 = icmp eq i8* %132, null, !dbg !3759
  br i1 %134, label %30, label %135, !dbg !3760

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3743, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 9, metadata !3743, metadata !DIExpression()), !dbg !3753
  %136 = load i8*, i8** %10, align 8, !dbg !3754
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3754
  store i8* %137, i8** %10, align 8, !dbg !3754
  %138 = bitcast i8* %136 to i8**, !dbg !3754
  %139 = load i8*, i8** %138, align 8, !dbg !3754
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3757
  store i8* %139, i8** %140, align 8, !dbg !3758, !tbaa !704
  %141 = icmp eq i8* %139, null, !dbg !3759
  %142 = select i1 %141, i64 9, i64 10, !dbg !3760
  br label %30, !dbg !3760
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3764 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %1, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %2, metadata !3770, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %3, metadata !3771, metadata !DIExpression()), !dbg !3781
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3782
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3782
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3772, metadata !DIExpression()), !dbg !3783
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3784
  call void @llvm.va_start(i8* nonnull %6), !dbg !3784
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3785
  call void @llvm.va_end(i8* nonnull %6), !dbg !3786
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3787
  ret void, !dbg !3787
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3788 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #11, !dbg !3789
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.108, i64 0, i64 0)) #11, !dbg !3789
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #11, !dbg !3790
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.111, i64 0, i64 0)) #11, !dbg !3790
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.112, i64 0, i64 0), i32 5) #11, !dbg !3791
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3791, !tbaa !704
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3793 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3797, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %1, metadata !3798, metadata !DIExpression()), !dbg !3800
  %3 = udiv i64 9223372036854775807, %1, !dbg !3801
  %4 = icmp ult i64 %3, %0, !dbg !3801
  br i1 %4, label %5, label %6, !dbg !3803

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3804
  unreachable, !dbg !3804

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %7, metadata !3806, metadata !DIExpression()) #11, !dbg !3813
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3815
  call void @llvm.dbg.value(metadata i8* %8, metadata !3812, metadata !DIExpression()) #11, !dbg !3816
  %9 = icmp eq i8* %8, null, !dbg !3817
  %10 = icmp ne i64 %7, 0, !dbg !3819
  %11 = and i1 %10, %9, !dbg !3820
  br i1 %11, label %12, label %13, !dbg !3820

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3821
  unreachable, !dbg !3821

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3822
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3807 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3806, metadata !DIExpression()), !dbg !3823
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3824
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()), !dbg !3825
  %3 = icmp eq i8* %2, null, !dbg !3826
  %4 = icmp ne i64 %0, 0, !dbg !3827
  %5 = and i1 %4, %3, !dbg !3828
  br i1 %5, label %6, label %7, !dbg !3828

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3829
  unreachable, !dbg !3829

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3830
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3831 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %1, metadata !3836, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %2, metadata !3837, metadata !DIExpression()), !dbg !3840
  %4 = udiv i64 9223372036854775807, %2, !dbg !3841
  %5 = icmp ult i64 %4, %1, !dbg !3841
  br i1 %5, label %6, label %7, !dbg !3843

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3844
  unreachable, !dbg !3844

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #11, !dbg !3852
  call void @llvm.dbg.value(metadata i64 %8, metadata !3851, metadata !DIExpression()) #11, !dbg !3854
  %9 = icmp eq i64 %8, 0, !dbg !3855
  %10 = icmp ne i8* %0, null, !dbg !3857
  %11 = and i1 %10, %9, !dbg !3858
  br i1 %11, label %12, label %13, !dbg !3858

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3859
  br label %19, !dbg !3861

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3862
  call void @llvm.dbg.value(metadata i8* %14, metadata !3846, metadata !DIExpression()) #11, !dbg !3852
  %15 = icmp eq i8* %14, null, !dbg !3863
  %16 = icmp ne i64 %8, 0, !dbg !3865
  %17 = and i1 %16, %15, !dbg !3866
  br i1 %17, label %18, label %19, !dbg !3866

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3867
  unreachable, !dbg !3867

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3868
  ret i8* %20, !dbg !3869
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i64 %1, metadata !3851, metadata !DIExpression()), !dbg !3871
  %3 = icmp eq i64 %1, 0, !dbg !3872
  %4 = icmp ne i8* %0, null, !dbg !3873
  %5 = and i1 %4, %3, !dbg !3874
  br i1 %5, label %6, label %7, !dbg !3874

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3875
  br label %13, !dbg !3876

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %8, metadata !3846, metadata !DIExpression()), !dbg !3870
  %9 = icmp eq i8* %8, null, !dbg !3878
  %10 = icmp ne i64 %1, 0, !dbg !3879
  %11 = and i1 %10, %9, !dbg !3880
  br i1 %11, label %12, label %13, !dbg !3880

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3881
  unreachable, !dbg !3881

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3882
  ret i8* %14, !dbg !3883
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !243 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !248, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64* %1, metadata !249, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i64 %2, metadata !250, metadata !DIExpression()), !dbg !3886
  %4 = load i64, i64* %1, align 8, !dbg !3887, !tbaa !1739
  call void @llvm.dbg.value(metadata i64 %4, metadata !251, metadata !DIExpression()), !dbg !3888
  %5 = icmp eq i8* %0, null, !dbg !3889
  br i1 %5, label %6, label %20, !dbg !3891

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3892
  br i1 %7, label %8, label %13, !dbg !3895

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %9, metadata !251, metadata !DIExpression()), !dbg !3888
  %10 = icmp ugt i64 %2, 128, !dbg !3898
  %11 = zext i1 %10 to i64, !dbg !3898
  %12 = add nuw nsw i64 %9, %11, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %12, metadata !251, metadata !DIExpression()), !dbg !3888
  br label %13, !dbg !3900

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3901
  call void @llvm.dbg.value(metadata i64 %14, metadata !251, metadata !DIExpression()), !dbg !3888
  %15 = udiv i64 9223372036854775807, %2, !dbg !3902
  %16 = icmp ult i64 %15, %14, !dbg !3902
  br i1 %16, label %19, label %17, !dbg !3904

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !251, metadata !DIExpression()), !dbg !3888
  store i64 %14, i64* %1, align 8, !dbg !3905, !tbaa !1739
  %18 = mul i64 %14, %2, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #11, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %28, metadata !3851, metadata !DIExpression()) #11, !dbg !3909
  br label %31, !dbg !3910

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3911
  unreachable, !dbg !3911

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3912
  %22 = icmp ugt i64 %21, %4, !dbg !3915
  br i1 %22, label %24, label %23, !dbg !3916

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3917
  unreachable, !dbg !3917

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3918
  %26 = add i64 %4, 1, !dbg !3919
  %27 = add i64 %26, %25, !dbg !3920
  call void @llvm.dbg.value(metadata i64 %27, metadata !251, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %27, metadata !251, metadata !DIExpression()), !dbg !3888
  store i64 %27, i64* %1, align 8, !dbg !3905, !tbaa !1739
  %28 = mul i64 %27, %2, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #11, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %28, metadata !3851, metadata !DIExpression()) #11, !dbg !3909
  %29 = icmp eq i64 %28, 0, !dbg !3921
  br i1 %29, label %30, label %31, !dbg !3910

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3922
  br label %38, !dbg !3923

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %33, metadata !3846, metadata !DIExpression()) #11, !dbg !3907
  %34 = icmp eq i8* %33, null, !dbg !3925
  %35 = icmp ne i64 %32, 0, !dbg !3926
  %36 = and i1 %35, %34, !dbg !3927
  br i1 %36, label %37, label %38, !dbg !3927

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3928
  unreachable, !dbg !3928

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3929
  ret i8* %39, !dbg !3930
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3933, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %0, metadata !3806, metadata !DIExpression()) #11, !dbg !3935
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()) #11, !dbg !3938
  %3 = icmp eq i8* %2, null, !dbg !3939
  %4 = icmp ne i64 %0, 0, !dbg !3940
  %5 = and i1 %4, %3, !dbg !3941
  br i1 %5, label %6, label %7, !dbg !3941

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3942
  unreachable, !dbg !3942

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3944 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3948, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64* %1, metadata !3949, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i8* %0, metadata !248, metadata !DIExpression()) #11, !dbg !3952
  call void @llvm.dbg.value(metadata i64* %1, metadata !249, metadata !DIExpression()) #11, !dbg !3954
  call void @llvm.dbg.value(metadata i64 1, metadata !250, metadata !DIExpression()) #11, !dbg !3955
  %3 = load i64, i64* %1, align 8, !dbg !3956, !tbaa !1739
  call void @llvm.dbg.value(metadata i64 %3, metadata !251, metadata !DIExpression()) #11, !dbg !3957
  %4 = icmp eq i8* %0, null, !dbg !3958
  br i1 %4, label %5, label %12, !dbg !3959

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3960
  br i1 %6, label %9, label %7, !dbg !3961

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !251, metadata !DIExpression()) #11, !dbg !3957
  %8 = icmp slt i64 %3, 0, !dbg !3962
  br i1 %8, label %11, label %9, !dbg !3963

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !251, metadata !DIExpression()) #11, !dbg !3957
  store i64 %10, i64* %1, align 8, !dbg !3964, !tbaa !1739
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #11, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %18, metadata !3851, metadata !DIExpression()) #11, !dbg !3967
  br label %21, !dbg !3968

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3969
  unreachable, !dbg !3969

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3970
  br i1 %13, label %15, label %14, !dbg !3971

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3972
  unreachable, !dbg !3972

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3973
  %17 = add i64 %3, 1, !dbg !3974
  %18 = add i64 %17, %16, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %18, metadata !251, metadata !DIExpression()) #11, !dbg !3957
  call void @llvm.dbg.value(metadata i64 %18, metadata !251, metadata !DIExpression()) #11, !dbg !3957
  store i64 %18, i64* %1, align 8, !dbg !3964, !tbaa !1739
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #11, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %18, metadata !3851, metadata !DIExpression()) #11, !dbg !3967
  %19 = icmp eq i64 %18, 0, !dbg !3976
  br i1 %19, label %20, label %21, !dbg !3968

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3977
  br label %28, !dbg !3978

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3979
  call void @llvm.dbg.value(metadata i8* %23, metadata !3846, metadata !DIExpression()) #11, !dbg !3965
  %24 = icmp eq i8* %23, null, !dbg !3980
  %25 = icmp ne i64 %22, 0, !dbg !3981
  %26 = and i1 %25, %24, !dbg !3982
  br i1 %26, label %27, label %28, !dbg !3982

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3983
  unreachable, !dbg !3983

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3984
  ret i8* %29, !dbg !3985
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3986 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i64 %0, metadata !3806, metadata !DIExpression()) #11, !dbg !3990
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3992
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()) #11, !dbg !3993
  %3 = icmp eq i8* %2, null, !dbg !3994
  %4 = icmp ne i64 %0, 0, !dbg !3995
  %5 = and i1 %4, %3, !dbg !3996
  br i1 %5, label %6, label %7, !dbg !3996

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3997
  unreachable, !dbg !3997

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3998
  ret i8* %2, !dbg !3999
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4000 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4002, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()), !dbg !4006
  %3 = udiv i64 9223372036854775807, %1, !dbg !4007
  %4 = icmp ult i64 %3, %0, !dbg !4007
  br i1 %4, label %8, label %5, !dbg !4009

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %6, metadata !4004, metadata !DIExpression()), !dbg !4011
  %7 = icmp eq i8* %6, null, !dbg !4012
  br i1 %7, label %8, label %9, !dbg !4013

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4014
  unreachable, !dbg !4014

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4015
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4016 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3806, metadata !DIExpression()) #11, !dbg !4026
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4028
  call void @llvm.dbg.value(metadata i8* %3, metadata !3812, metadata !DIExpression()) #11, !dbg !4029
  %4 = icmp eq i8* %3, null, !dbg !4030
  %5 = icmp ne i64 %1, 0, !dbg !4031
  %6 = and i1 %5, %4, !dbg !4032
  br i1 %6, label %7, label %8, !dbg !4032

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4033
  unreachable, !dbg !4033

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4034
  ret i8* %3, !dbg !4035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4036 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4038, metadata !DIExpression()), !dbg !4039
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4040
  %3 = add i64 %2, 1, !dbg !4041
  call void @llvm.dbg.value(metadata i8* %0, metadata !4022, metadata !DIExpression()) #11, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %3, metadata !4023, metadata !DIExpression()) #11, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %3, metadata !3806, metadata !DIExpression()) #11, !dbg !4045
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4047
  call void @llvm.dbg.value(metadata i8* %4, metadata !3812, metadata !DIExpression()) #11, !dbg !4048
  %5 = icmp eq i8* %4, null, !dbg !4049
  %6 = icmp ne i64 %3, 0, !dbg !4050
  %7 = and i1 %6, %5, !dbg !4051
  br i1 %7, label %8, label %9, !dbg !4051

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4052
  unreachable, !dbg !4052

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4053
  ret i8* %4, !dbg !4054
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4055 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4057, !tbaa !789
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.123, i64 0, i64 0), i32 5) #11, !dbg !4058
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i64 0, i64 0), i8* %2) #11, !dbg !4059
  tail call void @abort() #15, !dbg !4060
  unreachable, !dbg !4060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !4061 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4066, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i8** %1, metadata !4067, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i32 %2, metadata !4068, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64* %3, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8* %4, metadata !4070, metadata !DIExpression()), !dbg !4088
  %7 = bitcast i8** %6 to i8*, !dbg !4089
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4089
  call void @llvm.dbg.value(metadata i32 0, metadata !4074, metadata !DIExpression()), !dbg !4090
  %8 = icmp ult i32 %2, 37, !dbg !4091
  br i1 %8, label %10, label %9, !dbg !4091

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.128, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !4091
  unreachable, !dbg !4091

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4094
  call void @llvm.dbg.value(metadata i8** %25, metadata !4072, metadata !DIExpression()), !dbg !4095
  %12 = tail call i32* @__errno_location() #17, !dbg !4096
  store i32 0, i32* %12, align 4, !dbg !4097, !tbaa !789
  call void @llvm.dbg.value(metadata i8* %0, metadata !4075, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %0, metadata !4078, metadata !DIExpression(DW_OP_deref)), !dbg !4099
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4100
  %14 = load i16*, i16** %13, align 8, !tbaa !704
  br label %15, !dbg !4101

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4102
  %17 = load i8, i8* %16, align 1, !dbg !4102, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %17, metadata !4078, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i8* %16, metadata !4075, metadata !DIExpression()), !dbg !4098
  %18 = zext i8 %17 to i64, !dbg !4100
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4100
  %20 = load i16, i16* %19, align 2, !dbg !4100, !tbaa !2288
  %21 = and i16 %20, 8192, !dbg !4100
  %22 = icmp eq i16 %21, 0, !dbg !4101
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %23, metadata !4075, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %23, metadata !4078, metadata !DIExpression(DW_OP_deref)), !dbg !4099
  br i1 %22, label %24, label %15, !dbg !4101, !llvm.loop !4104

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4094
  %26 = icmp eq i8 %17, 45, !dbg !4106
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4108, metadata !DIExpression()) #11, !dbg !4118
  call void @llvm.dbg.value(metadata i8** %25, metadata !4116, metadata !DIExpression()) #11, !dbg !4118
  call void @llvm.dbg.value(metadata i32 %2, metadata !4117, metadata !DIExpression()) #11, !dbg !4118
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4120
  call void @llvm.dbg.value(metadata i64 %28, metadata !4073, metadata !DIExpression()), !dbg !4121
  %29 = load i8*, i8** %25, align 8, !dbg !4122, !tbaa !704
  %30 = icmp eq i8* %29, %0, !dbg !4124
  br i1 %30, label %31, label %40, !dbg !4125

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4126
  br i1 %32, label %265, label %33, !dbg !4129

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4130, !tbaa !935
  %35 = icmp eq i8 %34, 0, !dbg !4130
  br i1 %35, label %265, label %36, !dbg !4131

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4130
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !4132
  %39 = icmp eq i8* %38, null, !dbg !4132
  br i1 %39, label %265, label %47, !dbg !4133

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4134, !tbaa !789
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4136

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4074, metadata !DIExpression()), !dbg !4090
  br label %43, !dbg !4137

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4139
  call void @llvm.dbg.value(metadata i32 %44, metadata !4074, metadata !DIExpression()), !dbg !4090
  %45 = icmp eq i8* %4, null, !dbg !4140
  br i1 %45, label %46, label %47, !dbg !4142

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4073, metadata !DIExpression()), !dbg !4121
  store i64 %28, i64* %3, align 8, !dbg !4143, !tbaa !1739
  br label %265, !dbg !4145

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4146, !tbaa !935
  %51 = sext i8 %50 to i32, !dbg !4146
  %52 = icmp eq i8 %50, 0, !dbg !4147
  br i1 %52, label %262, label %53, !dbg !4148

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4079, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 1, metadata !4082, metadata !DIExpression()), !dbg !4150
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !4151
  %55 = icmp eq i8* %54, null, !dbg !4151
  br i1 %55, label %56, label %58, !dbg !4153

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4073, metadata !DIExpression()), !dbg !4121
  store i64 %49, i64* %3, align 8, !dbg !4154, !tbaa !1739
  %57 = or i32 %48, 2, !dbg !4156
  br label %265, !dbg !4157

; <label>:58:                                     ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !4158

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !4159
  %61 = icmp eq i8* %60, null, !dbg !4159
  br i1 %61, label %72, label %62, !dbg !4162

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4163
  %64 = load i8, i8* %63, align 1, !dbg !4163, !tbaa !935
  %65 = sext i8 %64 to i32, !dbg !4163
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4164

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4165
  %68 = load i8, i8* %67, align 1, !dbg !4165, !tbaa !935
  %69 = icmp eq i8 %68, 66, !dbg !4168
  %70 = select i1 %69, i64 3, i64 1, !dbg !4169
  br label %72, !dbg !4169

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4079, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 2, metadata !4082, metadata !DIExpression()), !dbg !4150
  br label %72, !dbg !4170

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %51, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ], !dbg !4171

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4172, metadata !DIExpression()), !dbg !4178
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4181
  %77 = shl i64 %49, 9, !dbg !4183
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4184
  %79 = zext i1 %76 to i32, !dbg !4184
  call void @llvm.dbg.value(metadata i32 %79, metadata !4083, metadata !DIExpression()), !dbg !4185
  br label %253, !dbg !4186

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4172, metadata !DIExpression()), !dbg !4187
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4189
  %82 = shl i64 %49, 10, !dbg !4190
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4191
  %84 = zext i1 %81 to i32, !dbg !4191
  call void @llvm.dbg.value(metadata i32 %84, metadata !4083, metadata !DIExpression()), !dbg !4185
  br label %253, !dbg !4192

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !4193, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4203
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 6, metadata !4193, metadata !DIExpression()), !dbg !4201
  %87 = icmp ult i64 %86, %49, !dbg !4204
  %88 = mul i64 %49, %73, !dbg !4206
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4207
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4201
  %90 = icmp ult i64 %86, %89, !dbg !4204
  %91 = mul i64 %89, %73, !dbg !4206
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4207
  %93 = or i1 %87, %90, !dbg !4208
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4201
  %94 = icmp ult i64 %86, %92, !dbg !4204
  %95 = mul i64 %92, %73, !dbg !4206
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4207
  %97 = or i1 %93, %94, !dbg !4208
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4201
  %98 = icmp ult i64 %86, %96, !dbg !4204
  %99 = mul i64 %96, %73, !dbg !4206
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4207
  %101 = or i1 %97, %98, !dbg !4208
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4201
  %102 = icmp ult i64 %86, %100, !dbg !4204
  %103 = mul i64 %100, %73, !dbg !4206
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4207
  %105 = or i1 %101, %102, !dbg !4208
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4201
  %106 = icmp ult i64 %86, %104, !dbg !4204
  %107 = mul i64 %104, %73, !dbg !4206
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4207
  %109 = or i1 %105, %106, !dbg !4208
  %110 = zext i1 %109 to i32, !dbg !4208
  call void @llvm.dbg.value(metadata i32 %110, metadata !4200, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4201
  br label %253, !dbg !4209

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4212
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4210
  %113 = icmp ult i64 %112, %49, !dbg !4213
  %114 = mul i64 %49, %73, !dbg !4215
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4216
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4210
  %116 = icmp ult i64 %112, %115, !dbg !4213
  %117 = mul i64 %115, %73, !dbg !4215
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4216
  %119 = or i1 %113, %116, !dbg !4217
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4210
  %120 = icmp ult i64 %112, %118, !dbg !4213
  %121 = mul i64 %118, %73, !dbg !4215
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4216
  %123 = or i1 %119, %120, !dbg !4217
  %124 = zext i1 %123 to i32, !dbg !4217
  call void @llvm.dbg.value(metadata i32 %124, metadata !4200, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4210
  br label %253, !dbg !4209

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4220
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 undef, metadata !4193, metadata !DIExpression()), !dbg !4218
  %127 = icmp ult i64 %126, %49, !dbg !4221
  %128 = mul i64 %49, %73, !dbg !4223
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4224
  %130 = zext i1 %127 to i32, !dbg !4224
  call void @llvm.dbg.value(metadata i32 %130, metadata !4200, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 undef, metadata !4193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4218
  br label %253, !dbg !4209

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4227
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4225
  %133 = icmp ult i64 %132, %49, !dbg !4228
  %134 = mul i64 %49, %73, !dbg !4230
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4231
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4225
  %136 = icmp ult i64 %132, %135, !dbg !4228
  %137 = mul i64 %135, %73, !dbg !4230
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4231
  %139 = or i1 %133, %136, !dbg !4232
  %140 = zext i1 %139 to i32, !dbg !4232
  call void @llvm.dbg.value(metadata i32 %140, metadata !4200, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4225
  br label %253, !dbg !4209

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4235
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4233
  %143 = icmp ult i64 %142, %49, !dbg !4236
  %144 = mul i64 %49, %73, !dbg !4238
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4239
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4233
  %146 = icmp ult i64 %142, %145, !dbg !4236
  %147 = mul i64 %145, %73, !dbg !4238
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4239
  %149 = or i1 %143, %146, !dbg !4240
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4233
  %150 = icmp ult i64 %142, %148, !dbg !4236
  %151 = mul i64 %148, %73, !dbg !4238
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4239
  %153 = or i1 %149, %150, !dbg !4240
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4233
  %154 = icmp ult i64 %142, %152, !dbg !4236
  %155 = mul i64 %152, %73, !dbg !4238
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4239
  %157 = or i1 %153, %154, !dbg !4240
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4233
  %158 = icmp ult i64 %142, %156, !dbg !4236
  %159 = mul i64 %156, %73, !dbg !4238
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4239
  %161 = or i1 %157, %158, !dbg !4240
  %162 = zext i1 %161 to i32, !dbg !4240
  call void @llvm.dbg.value(metadata i32 %162, metadata !4200, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4233
  br label %253, !dbg !4209

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4243
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4241
  %165 = icmp ult i64 %164, %49, !dbg !4244
  %166 = mul i64 %49, %73, !dbg !4246
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4247
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4241
  %168 = icmp ult i64 %164, %167, !dbg !4244
  %169 = mul i64 %167, %73, !dbg !4246
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4247
  %171 = or i1 %165, %168, !dbg !4248
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4241
  %172 = icmp ult i64 %164, %170, !dbg !4244
  %173 = mul i64 %170, %73, !dbg !4246
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4247
  %175 = or i1 %171, %172, !dbg !4248
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4241
  %176 = icmp ult i64 %164, %174, !dbg !4244
  %177 = mul i64 %174, %73, !dbg !4246
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4247
  %179 = or i1 %175, %176, !dbg !4248
  %180 = zext i1 %179 to i32, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %180, metadata !4200, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4241
  br label %253, !dbg !4209

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4172, metadata !DIExpression()), !dbg !4249
  %182 = icmp slt i64 %49, 0, !dbg !4251
  %183 = shl i64 %49, 1, !dbg !4252
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4253
  %185 = lshr i64 %49, 63, !dbg !4253
  %186 = trunc i64 %185 to i32, !dbg !4253
  call void @llvm.dbg.value(metadata i32 %186, metadata !4083, metadata !DIExpression()), !dbg !4185
  br label %253, !dbg !4254

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4257
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 8, metadata !4193, metadata !DIExpression()), !dbg !4255
  %189 = icmp ult i64 %188, %49, !dbg !4258
  %190 = mul i64 %49, %73, !dbg !4260
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4261
  call void @llvm.dbg.value(metadata i32 7, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 7, metadata !4193, metadata !DIExpression()), !dbg !4255
  %192 = icmp ult i64 %188, %191, !dbg !4258
  %193 = mul i64 %191, %73, !dbg !4260
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4261
  %195 = or i1 %189, %192, !dbg !4262
  call void @llvm.dbg.value(metadata i32 6, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 6, metadata !4193, metadata !DIExpression()), !dbg !4255
  %196 = icmp ult i64 %188, %194, !dbg !4258
  %197 = mul i64 %194, %73, !dbg !4260
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4261
  %199 = or i1 %195, %196, !dbg !4262
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4255
  %200 = icmp ult i64 %188, %198, !dbg !4258
  %201 = mul i64 %198, %73, !dbg !4260
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4261
  %203 = or i1 %199, %200, !dbg !4262
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4255
  %204 = icmp ult i64 %188, %202, !dbg !4258
  %205 = mul i64 %202, %73, !dbg !4260
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4261
  %207 = or i1 %203, %204, !dbg !4262
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4255
  %208 = icmp ult i64 %188, %206, !dbg !4258
  %209 = mul i64 %206, %73, !dbg !4260
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4261
  %211 = or i1 %207, %208, !dbg !4262
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4255
  %212 = icmp ult i64 %188, %210, !dbg !4258
  %213 = mul i64 %210, %73, !dbg !4260
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4261
  %215 = or i1 %211, %212, !dbg !4262
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4255
  %216 = icmp ult i64 %188, %214, !dbg !4258
  %217 = mul i64 %214, %73, !dbg !4260
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4261
  %219 = or i1 %215, %216, !dbg !4262
  %220 = zext i1 %219 to i32, !dbg !4262
  call void @llvm.dbg.value(metadata i32 %220, metadata !4200, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4255
  br label %253, !dbg !4209

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !4193, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4265
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i32 7, metadata !4193, metadata !DIExpression()), !dbg !4263
  %223 = icmp ult i64 %222, %49, !dbg !4266
  %224 = mul i64 %49, %73, !dbg !4268
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4269
  call void @llvm.dbg.value(metadata i32 6, metadata !4193, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 6, metadata !4193, metadata !DIExpression()), !dbg !4263
  %226 = icmp ult i64 %222, %225, !dbg !4266
  %227 = mul i64 %225, %73, !dbg !4268
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4269
  %229 = or i1 %223, %226, !dbg !4270
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 5, metadata !4193, metadata !DIExpression()), !dbg !4263
  %230 = icmp ult i64 %222, %228, !dbg !4266
  %231 = mul i64 %228, %73, !dbg !4268
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4269
  %233 = or i1 %229, %230, !dbg !4270
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 4, metadata !4193, metadata !DIExpression()), !dbg !4263
  %234 = icmp ult i64 %222, %232, !dbg !4266
  %235 = mul i64 %232, %73, !dbg !4268
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4269
  %237 = or i1 %233, %234, !dbg !4270
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 3, metadata !4193, metadata !DIExpression()), !dbg !4263
  %238 = icmp ult i64 %222, %236, !dbg !4266
  %239 = mul i64 %236, %73, !dbg !4268
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4269
  %241 = or i1 %237, %238, !dbg !4270
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 2, metadata !4193, metadata !DIExpression()), !dbg !4263
  %242 = icmp ult i64 %222, %240, !dbg !4266
  %243 = mul i64 %240, %73, !dbg !4268
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4269
  %245 = or i1 %241, %242, !dbg !4270
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 1, metadata !4193, metadata !DIExpression()), !dbg !4263
  %246 = icmp ult i64 %222, %244, !dbg !4266
  %247 = mul i64 %244, %73, !dbg !4268
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4269
  %249 = or i1 %245, %246, !dbg !4270
  %250 = zext i1 %249 to i32, !dbg !4270
  call void @llvm.dbg.value(metadata i32 %250, metadata !4200, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4263
  br label %253, !dbg !4209

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4073, metadata !DIExpression()), !dbg !4121
  store i64 %49, i64* %3, align 8, !dbg !4271, !tbaa !1739
  %252 = or i32 %48, 2, !dbg !4272
  br label %265, !dbg !4273

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4274
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4275
  call void @llvm.dbg.value(metadata i32 %255, metadata !4083, metadata !DIExpression()), !dbg !4185
  %256 = or i32 %255, %48, !dbg !4209
  call void @llvm.dbg.value(metadata i32 %256, metadata !4074, metadata !DIExpression()), !dbg !4090
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4276
  store i8* %257, i8** %25, align 8, !dbg !4276, !tbaa !704
  %258 = load i8, i8* %257, align 1, !dbg !4277, !tbaa !935
  %259 = icmp eq i8 %258, 0, !dbg !4277
  %260 = or i32 %256, 2, !dbg !4279
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4280
  call void @llvm.dbg.value(metadata i32 %261, metadata !4074, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 %261, metadata !4074, metadata !DIExpression()), !dbg !4090
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4281
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !4090
  call void @llvm.dbg.value(metadata i32 %264, metadata !4074, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %263, metadata !4073, metadata !DIExpression()), !dbg !4121
  store i64 %263, i64* %3, align 8, !dbg !4282, !tbaa !1739
  br label %265, !dbg !4283

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4284
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4285
  ret i32 %266, !dbg !4285
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4286 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()), !dbg !4296
  %3 = icmp eq i64 %0, 0, !dbg !4297
  %4 = icmp eq i64 %1, 0, !dbg !4298
  %5 = or i1 %3, %4, !dbg !4299
  br i1 %5, label %12, label %6, !dbg !4299

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %7, metadata !4292, metadata !DIExpression()), !dbg !4301
  %8 = udiv i64 %7, %1, !dbg !4302
  %9 = icmp eq i64 %8, %0, !dbg !4304
  br i1 %9, label %12, label %10, !dbg !4305

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4306
  store i32 12, i32* %11, align 4, !dbg !4308, !tbaa !789
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4289, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata i64 %13, metadata !4290, metadata !DIExpression()), !dbg !4296
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4309
  call void @llvm.dbg.value(metadata i8* %15, metadata !4291, metadata !DIExpression()), !dbg !4310
  br label %16, !dbg !4311

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4312
  ret i8* %17, !dbg !4313
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4314 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4353, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i32 0, metadata !4354, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 0, metadata !4356, metadata !DIExpression()), !dbg !4359
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4360
  call void @llvm.dbg.value(metadata i32 %2, metadata !4355, metadata !DIExpression()), !dbg !4361
  %3 = icmp slt i32 %2, 0, !dbg !4362
  br i1 %3, label %4, label %6, !dbg !4364

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4365
  br label %24, !dbg !4366

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4367
  %8 = icmp eq i32 %7, 0, !dbg !4367
  br i1 %8, label %13, label %9, !dbg !4369

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4370
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4371
  %12 = icmp eq i64 %11, -1, !dbg !4372
  br i1 %12, label %16, label %13, !dbg !4373

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4374
  %15 = icmp eq i32 %14, 0, !dbg !4374
  br i1 %15, label %16, label %18, !dbg !4375

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4354, metadata !DIExpression()), !dbg !4358
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4376
  call void @llvm.dbg.value(metadata i32 %21, metadata !4356, metadata !DIExpression()), !dbg !4359
  br label %24, !dbg !4377

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4378
  %20 = load i32, i32* %19, align 4, !dbg !4378, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %20, metadata !4354, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 %20, metadata !4354, metadata !DIExpression()), !dbg !4358
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4376
  call void @llvm.dbg.value(metadata i32 %21, metadata !4356, metadata !DIExpression()), !dbg !4359
  %22 = icmp eq i32 %20, 0, !dbg !4379
  br i1 %22, label %24, label %23, !dbg !4377

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4381, !tbaa !789
  call void @llvm.dbg.value(metadata i32 -1, metadata !4356, metadata !DIExpression()), !dbg !4359
  br label %24, !dbg !4383

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4384
  ret i32 %25, !dbg !4385
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4386 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4425, metadata !DIExpression()), !dbg !4426
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4427
  br i1 %2, label %6, label %3, !dbg !4429

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4430
  %5 = icmp eq i32 %4, 0, !dbg !4430
  br i1 %5, label %6, label %8, !dbg !4431

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4432
  br label %17, !dbg !4433

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4434, metadata !DIExpression()) #11, !dbg !4439
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4441
  %10 = load i32, i32* %9, align 8, !dbg !4441, !tbaa !953
  %11 = and i32 %10, 256, !dbg !4443
  %12 = icmp eq i32 %11, 0, !dbg !4443
  br i1 %12, label %15, label %13, !dbg !4444

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4445
  br label %15, !dbg !4445

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4446
  br label %17, !dbg !4447

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4448
  ret i32 %18, !dbg !4449
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4450 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4489, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 %2, metadata !4491, metadata !DIExpression()), !dbg !4497
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4498
  %5 = load i8*, i8** %4, align 8, !dbg !4498, !tbaa !933
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4499
  %7 = load i8*, i8** %6, align 8, !dbg !4499, !tbaa !929
  %8 = icmp eq i8* %5, %7, !dbg !4500
  br i1 %8, label %9, label %28, !dbg !4501

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4502
  %11 = load i8*, i8** %10, align 8, !dbg !4502, !tbaa !986
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4503
  %13 = load i8*, i8** %12, align 8, !dbg !4503, !tbaa !4504
  %14 = icmp eq i8* %11, %13, !dbg !4505
  br i1 %14, label %15, label %28, !dbg !4506

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4507
  %17 = load i8*, i8** %16, align 8, !dbg !4507, !tbaa !4508
  %18 = icmp eq i8* %17, null, !dbg !4509
  br i1 %18, label %19, label %28, !dbg !4510

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4511
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %21, metadata !4492, metadata !DIExpression()), !dbg !4513
  %22 = icmp eq i64 %21, -1, !dbg !4514
  br i1 %22, label %30, label %23, !dbg !4516

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4517
  %25 = load i32, i32* %24, align 8, !dbg !4518, !tbaa !953
  %26 = and i32 %25, -17, !dbg !4518
  store i32 %26, i32* %24, align 8, !dbg !4518, !tbaa !953
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4519
  store i64 %21, i64* %27, align 8, !dbg !4520, !tbaa !4521
  br label %30, !dbg !4522

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4523
  br label %30, !dbg !4524

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4525
  ret i32 %31, !dbg !4526
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4527 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4544, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i8* %1, metadata !4545, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %2, metadata !4546, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4547, metadata !DIExpression()), !dbg !4556
  %6 = bitcast i32* %5 to i8*, !dbg !4557
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4557
  %7 = icmp eq i32* %0, null, !dbg !4558
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4560
  call void @llvm.dbg.value(metadata i32* %8, metadata !4544, metadata !DIExpression()), !dbg !4553
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4561
  call void @llvm.dbg.value(metadata i64 %9, metadata !4548, metadata !DIExpression()), !dbg !4562
  %10 = icmp ugt i64 %9, -3, !dbg !4563
  %11 = icmp ne i64 %2, 0, !dbg !4564
  %12 = and i1 %11, %10, !dbg !4565
  br i1 %12, label %13, label %18, !dbg !4565

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4566
  br i1 %14, label %18, label %15, !dbg !4567

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4568, !tbaa !935
  call void @llvm.dbg.value(metadata i8 %16, metadata !4550, metadata !DIExpression()), !dbg !4569
  %17 = zext i8 %16 to i32, !dbg !4570
  store i32 %17, i32* %8, align 4, !dbg !4571, !tbaa !789
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4573
  ret i64 %19, !dbg !4573
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #7 !dbg !4574 {
  tail call void @usage(i32 1) #11, !dbg !4575
  ret void, !dbg !4576
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #12 !dbg !4577 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4582, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i8** %1, metadata !4583, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i8* %2, metadata !4584, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %3, metadata !4585, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 -1, metadata !4588, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i8 0, metadata !4589, metadata !DIExpression()), !dbg !4595
  %5 = tail call i64 @strlen(i8* %0) #14, !dbg !4596
  call void @llvm.dbg.value(metadata i64 %5, metadata !4587, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 0, metadata !4586, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i8 0, metadata !4589, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 -1, metadata !4588, metadata !DIExpression()), !dbg !4594
  %6 = load i8*, i8** %1, align 8, !dbg !4599, !tbaa !704
  %7 = icmp eq i8* %6, null, !dbg !4602
  br i1 %7, label %38, label %8, !dbg !4602

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !4602

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !4589, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %13, metadata !4588, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %14, metadata !4586, metadata !DIExpression()), !dbg !4598
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14, !dbg !4603
  %16 = icmp eq i32 %15, 0, !dbg !4603
  br i1 %16, label %17, label %31, !dbg !4606

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14, !dbg !4607
  %19 = icmp eq i64 %18, %5, !dbg !4610
  br i1 %19, label %44, label %20, !dbg !4611

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !4612
  br i1 %21, label %31, label %22, !dbg !4614

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !4615

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !4618
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !4619
  %26 = mul i64 %14, %3, !dbg !4620
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !4621
  %28 = tail call i32 @memcmp(i8* nonnull %25, i8* nonnull %27, i64 %3) #14, !dbg !4622
  %29 = icmp eq i32 %28, 0, !dbg !4622
  br i1 %29, label %31, label %30, !dbg !4623

; <label>:30:                                     ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !4589, metadata !DIExpression()), !dbg !4595
  br label %31, !dbg !4624

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !4626
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !4626
  %34 = add i64 %14, 1, !dbg !4627
  call void @llvm.dbg.value(metadata i8 %33, metadata !4589, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %32, metadata !4588, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %34, metadata !4586, metadata !DIExpression()), !dbg !4598
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !4599
  %36 = load i8*, i8** %35, align 8, !dbg !4599, !tbaa !704
  %37 = icmp eq i8* %36, null, !dbg !4602
  br i1 %37, label %38, label %10, !dbg !4602, !llvm.loop !4628

; <label>:38:                                     ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !4594
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !4595
  call void @llvm.dbg.value(metadata i64 %39, metadata !4588, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i8 %40, metadata !4589, metadata !DIExpression()), !dbg !4595
  %41 = and i8 %40, 1, !dbg !4630
  %42 = icmp eq i8 %41, 0, !dbg !4630
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !4632
  br label %44, !dbg !4632

; <label>:44:                                     ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ], !dbg !4633
  ret i64 %45, !dbg !4634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #7 !dbg !4635 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4639, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i8* %1, metadata !4640, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %2, metadata !4641, metadata !DIExpression()), !dbg !4645
  %4 = icmp eq i64 %2, -1, !dbg !4646
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.141, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.142, i64 0, i64 0), !dbg !4647
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11, !dbg !4648
  call void @llvm.dbg.value(metadata i8* %6, metadata !4642, metadata !DIExpression()), !dbg !4649
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !4650
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !4651
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11, !dbg !4652
  ret void, !dbg !4653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4654 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !4658, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i8* %1, metadata !4659, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i64 %2, metadata !4660, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i8* null, metadata !4662, metadata !DIExpression()), !dbg !4666
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.143, i64 0, i64 0), i32 5) #11, !dbg !4667
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4667, !tbaa !704
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !4667
  call void @llvm.dbg.value(metadata i64 0, metadata !4661, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i8* null, metadata !4662, metadata !DIExpression()), !dbg !4666
  %7 = load i8*, i8** %0, align 8, !dbg !4669, !tbaa !704
  %8 = icmp eq i8* %7, null, !dbg !4672
  br i1 %8, label %33, label %9, !dbg !4672

; <label>:9:                                      ; preds = %3, %27
  %10 = phi i8* [ %31, %27 ], [ %7, %3 ]
  %11 = phi i8* [ %28, %27 ], [ null, %3 ]
  %12 = phi i64 [ %29, %27 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !4662, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %12, metadata !4661, metadata !DIExpression()), !dbg !4668
  %13 = icmp eq i64 %12, 0, !dbg !4673
  %14 = mul i64 %12, %2, !dbg !4675
  %15 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !4675
  br i1 %13, label %19, label %16, !dbg !4676

; <label>:16:                                     ; preds = %9
  %17 = tail call i32 @memcmp(i8* %11, i8* %15, i64 %2) #14, !dbg !4677
  %18 = icmp eq i32 %17, 0, !dbg !4677
  br i1 %18, label %23, label %19, !dbg !4678

; <label>:19:                                     ; preds = %9, %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4679, !tbaa !704
  %21 = tail call i8* @quote(i8* nonnull %10) #11, !dbg !4679
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %20, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.144, i64 0, i64 0), i8* %21) #11, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %15, metadata !4662, metadata !DIExpression()), !dbg !4666
  br label %27, !dbg !4681

; <label>:23:                                     ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4682, !tbaa !704
  %25 = tail call i8* @quote(i8* nonnull %10) #11, !dbg !4682
  %26 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %24, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.145, i64 0, i64 0), i8* %25) #11, !dbg !4682
  br label %27

; <label>:27:                                     ; preds = %19, %23
  %28 = phi i8* [ %15, %19 ], [ %11, %23 ], !dbg !4684
  %29 = add i64 %12, 1, !dbg !4685
  call void @llvm.dbg.value(metadata i8* %28, metadata !4662, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %29, metadata !4661, metadata !DIExpression()), !dbg !4668
  %30 = getelementptr inbounds i8*, i8** %0, i64 %29, !dbg !4669
  %31 = load i8*, i8** %30, align 8, !dbg !4669, !tbaa !704
  %32 = icmp eq i8* %31, null, !dbg !4672
  br i1 %32, label %33, label %9, !dbg !4672, !llvm.loop !4686

; <label>:33:                                     ; preds = %27, %3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4688, !tbaa !704
  call void @llvm.dbg.value(metadata i32 10, metadata !4689, metadata !DIExpression()) #11, !dbg !4729
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %34, metadata !4728, metadata !DIExpression()) #11, !dbg !4731
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 5, !dbg !4732
  %36 = load i8*, i8** %35, align 8, !dbg !4732, !tbaa !986
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 6, !dbg !4732
  %38 = load i8*, i8** %37, align 8, !dbg !4732, !tbaa !987
  %39 = icmp ult i8* %36, %38, !dbg !4732
  br i1 %39, label %42, label %40, !dbg !4732, !prof !934

; <label>:40:                                     ; preds = %33
  %41 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %34, i32 10) #11, !dbg !4732
  br label %44, !dbg !4732

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !4732
  store i8* %43, i8** %35, align 8, !dbg !4732, !tbaa !986
  store i8 10, i8* %36, align 1, !dbg !4732, !tbaa !935
  br label %44, !dbg !4732

; <label>:44:                                     ; preds = %40, %42
  ret void, !dbg !4733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #7 !dbg !4734 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4738, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i8* %1, metadata !4739, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i8** %2, metadata !4740, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i8* %3, metadata !4741, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %4, metadata !4742, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata void ()* %5, metadata !4743, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i8* %1, metadata !4582, metadata !DIExpression()) #11, !dbg !4751
  call void @llvm.dbg.value(metadata i8** %2, metadata !4583, metadata !DIExpression()) #11, !dbg !4753
  call void @llvm.dbg.value(metadata i8* %3, metadata !4584, metadata !DIExpression()) #11, !dbg !4754
  call void @llvm.dbg.value(metadata i64 %4, metadata !4585, metadata !DIExpression()) #11, !dbg !4755
  call void @llvm.dbg.value(metadata i64 -1, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 0, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  %7 = tail call i64 @strlen(i8* %1) #14, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %7, metadata !4587, metadata !DIExpression()) #11, !dbg !4759
  call void @llvm.dbg.value(metadata i64 0, metadata !4586, metadata !DIExpression()) #11, !dbg !4760
  call void @llvm.dbg.value(metadata i8 0, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 -1, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  %8 = load i8*, i8** %2, align 8, !dbg !4761, !tbaa !704
  %9 = icmp eq i8* %8, null, !dbg !4762
  br i1 %9, label %49, label %10, !dbg !4762

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i8* %3, null
  br label %12, !dbg !4762

; <label>:12:                                     ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %15, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i64 %16, metadata !4586, metadata !DIExpression()) #11, !dbg !4760
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #14, !dbg !4763
  %18 = icmp eq i32 %17, 0, !dbg !4763
  br i1 %18, label %19, label %33, !dbg !4764

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #14, !dbg !4765
  %21 = icmp eq i64 %20, %7, !dbg !4766
  br i1 %21, label %43, label %22, !dbg !4767

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !4768
  br i1 %23, label %33, label %24, !dbg !4769

; <label>:24:                                     ; preds = %22
  br i1 %11, label %32, label %25, !dbg !4770

; <label>:25:                                     ; preds = %24
  %26 = mul i64 %15, %4, !dbg !4771
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !4772
  %28 = mul i64 %16, %4, !dbg !4773
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !4774
  %30 = tail call i32 @memcmp(i8* nonnull %27, i8* nonnull %29, i64 %4) #14, !dbg !4775
  %31 = icmp eq i32 %30, 0, !dbg !4775
  br i1 %31, label %33, label %32, !dbg !4776

; <label>:32:                                     ; preds = %25, %24
  call void @llvm.dbg.value(metadata i8 1, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  br label %33, !dbg !4777

; <label>:33:                                     ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ], !dbg !4778
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ], !dbg !4778
  %36 = add i64 %16, 1, !dbg !4779
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i64 %36, metadata !4586, metadata !DIExpression()) #11, !dbg !4760
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !4761
  %38 = load i8*, i8** %37, align 8, !dbg !4761, !tbaa !704
  %39 = icmp eq i8* %38, null, !dbg !4762
  br i1 %39, label %40, label %12, !dbg !4762, !llvm.loop !4628

; <label>:40:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata i64 %34, metadata !4588, metadata !DIExpression()) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %35, metadata !4589, metadata !DIExpression()) #11, !dbg !4757
  %41 = and i8 %35, 1, !dbg !4780
  %42 = icmp eq i8 %41, 0, !dbg !4780
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ], !dbg !4781
  call void @llvm.dbg.value(metadata i64 %44, metadata !4744, metadata !DIExpression()), !dbg !4782
  %45 = icmp sgt i64 %44, -1, !dbg !4783
  br i1 %45, label %54, label %46, !dbg !4785

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %0, metadata !4639, metadata !DIExpression()) #11, !dbg !4786
  call void @llvm.dbg.value(metadata i8* %1, metadata !4640, metadata !DIExpression()) #11, !dbg !4788
  call void @llvm.dbg.value(metadata i64 %44, metadata !4641, metadata !DIExpression()) #11, !dbg !4789
  %47 = icmp eq i64 %44, -1, !dbg !4790
  br i1 %47, label %49, label %48, !dbg !4791

; <label>:48:                                     ; preds = %40, %46
  br label %49, !dbg !4791

; <label>:49:                                     ; preds = %46, %6, %48
  %50 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.142, i64 0, i64 0), %48 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.141, i64 0, i64 0), %6 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.141, i64 0, i64 0), %46 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* %50, i32 5) #11, !dbg !4792
  call void @llvm.dbg.value(metadata i8* %51, metadata !4642, metadata !DIExpression()) #11, !dbg !4793
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !4794
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !4795
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #11, !dbg !4796
  tail call void @argmatch_valid(i8** nonnull %2, i8* %3, i64 %4), !dbg !4797
  tail call void %5() #11, !dbg !4798
  br label %54, !dbg !4799

; <label>:54:                                     ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ], !dbg !4792
  ret i64 %55, !dbg !4800
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #12 !dbg !4801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4805, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i8** %1, metadata !4806, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i8* %2, metadata !4807, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %3, metadata !4808, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 0, metadata !4809, metadata !DIExpression()), !dbg !4814
  %5 = load i8*, i8** %1, align 8, !dbg !4815, !tbaa !704
  %6 = icmp eq i8* %5, null, !dbg !4818
  br i1 %6, label %21, label %7, !dbg !4818

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !4809, metadata !DIExpression()), !dbg !4814
  %8 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %3) #14, !dbg !4819
  %9 = icmp eq i32 %8, 0, !dbg !4819
  call void @llvm.dbg.value(metadata i64 1, metadata !4809, metadata !DIExpression()), !dbg !4814
  br i1 %9, label %21, label %10, !dbg !4821

; <label>:10:                                     ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !4809, metadata !DIExpression()), !dbg !4814
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !4815
  %13 = load i8*, i8** %12, align 8, !dbg !4815, !tbaa !704
  %14 = icmp eq i8* %13, null, !dbg !4818
  br i1 %14, label %21, label %15, !dbg !4818, !llvm.loop !4822

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !4809, metadata !DIExpression()), !dbg !4814
  %16 = mul i64 %11, %3, !dbg !4824
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !4825
  %18 = tail call i32 @memcmp(i8* %0, i8* %17, i64 %3) #14, !dbg !4819
  %19 = icmp eq i32 %18, 0, !dbg !4819
  %20 = add i64 %11, 1, !dbg !4826
  call void @llvm.dbg.value(metadata i64 %20, metadata !4809, metadata !DIExpression()), !dbg !4814
  br i1 %19, label %21, label %10, !dbg !4821, !llvm.loop !4822

; <label>:21:                                     ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !4815
  ret i8* %22, !dbg !4827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4828 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4867, metadata !DIExpression()), !dbg !4872
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4873
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4874, metadata !DIExpression()), !dbg !4877
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4879
  %4 = load i32, i32* %3, align 8, !dbg !4879, !tbaa !953
  %5 = and i32 %4, 32, !dbg !4879
  %6 = icmp eq i32 %5, 0, !dbg !4880
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4881
  %8 = icmp ne i32 %7, 0, !dbg !4882
  br i1 %6, label %9, label %19, !dbg !4883

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4885
  %11 = xor i1 %8, true, !dbg !4886
  %12 = or i1 %10, %11, !dbg !4886
  %13 = sext i1 %8 to i32, !dbg !4886
  br i1 %12, label %22, label %14, !dbg !4886

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4887
  %16 = load i32, i32* %15, align 4, !dbg !4887, !tbaa !789
  %17 = icmp ne i32 %16, 9, !dbg !4888
  %18 = sext i1 %17 to i32, !dbg !4889
  br label %22, !dbg !4889

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4890

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4892
  store i32 0, i32* %21, align 4, !dbg !4894, !tbaa !789
  br label %22, !dbg !4892

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4895
  ret i32 %23, !dbg !4896
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4897 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4902, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.value(metadata i8 1, metadata !4903, metadata !DIExpression()), !dbg !4906
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4907
  call void @llvm.dbg.value(metadata i8* %2, metadata !4904, metadata !DIExpression()), !dbg !4908
  %3 = icmp eq i8* %2, null, !dbg !4909
  br i1 %3, label %11, label %4, !dbg !4911

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0)) #14, !dbg !4912
  %6 = icmp eq i32 %5, 0, !dbg !4917
  br i1 %6, label %10, label %7, !dbg !4918

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0)) #14, !dbg !4919
  %9 = icmp eq i32 %8, 0, !dbg !4920
  br i1 %9, label %10, label %11, !dbg !4921

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4903, metadata !DIExpression()), !dbg !4906
  br label %11, !dbg !4922

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4924 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4929
  call void @llvm.dbg.value(metadata i8* %1, metadata !4928, metadata !DIExpression()), !dbg !4930
  %2 = icmp eq i8* %1, null, !dbg !4931
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4933
  call void @llvm.dbg.value(metadata i8* %3, metadata !4928, metadata !DIExpression()), !dbg !4930
  %4 = load i8, i8* %3, align 1, !dbg !4934, !tbaa !935
  %5 = icmp eq i8 %4, 0, !dbg !4938
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4939
  call void @llvm.dbg.value(metadata i8* %6, metadata !4928, metadata !DIExpression()), !dbg !4930
  ret i8* %6, !dbg !4940
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

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
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !73, !79, !87, !220, !94, !125, !132, !223, !230, !200, !238, !255, !257, !261, !263, !265, !267, !269, !209, !272, !274, !276}
!llvm.ident = !{!665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665}
!llvm.module.flags = !{!666, !667, !668, !669, !670}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 42, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !51)
!3 = !DIFile(filename: "src/sum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !29}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 43, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./lib/human.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!32 = !DIEnumerator(name: "human_ceiling", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "human_round_to_nearest", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "human_floor", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "human_group_digits", value: 4, isUnsigned: true)
!36 = !DIEnumerator(name: "human_suppress_point_zero", value: 8, isUnsigned: true)
!37 = !DIEnumerator(name: "human_autoscale", value: 16, isUnsigned: true)
!38 = !DIEnumerator(name: "human_base_1024", value: 32, isUnsigned: true)
!39 = !DIEnumerator(name: "human_space_before_unit", value: 64, isUnsigned: true)
!40 = !DIEnumerator(name: "human_SI", value: 128, isUnsigned: true)
!41 = !DIEnumerator(name: "human_B", value: 256, isUnsigned: true)
!42 = !{!43, !45, !46, !47, !48}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 62, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !{!52, !53}
!52 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 44, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1024, elements: !68)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !58, line: 50, size: 256, elements: !59)
!58 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!59 = !{!60, !63, !65, !67}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !58, line: 52, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !57, file: !58, line: 55, baseType: !64, size: 32, offset: 64)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !57, file: !58, line: 56, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !57, file: !58, line: 57, baseType: !64, size: 32, offset: 192)
!68 = !{!69}
!69 = !DISubrange(count: 4)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "Version", scope: !73, file: !74, line: 2, type: !61, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !76)
!74 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!75 = !{}
!76 = !{!71}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "file_name", scope: !79, file: !84, line: 46, type: !61, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !81)
!80 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!81 = !{!77, !82}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !79, file: !84, line: 56, type: !70, isLocal: true, isDefinition: true)
!84 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "exit_failure", scope: !87, file: !90, line: 24, type: !91, isLocal: false, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !89)
!88 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!89 = !{!85}
!90 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "power_letter", scope: !94, file: !109, line: 36, type: !120, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !96, retainedTypes: !105, globals: !106)
!95 = !DIFile(filename: "./lib/human.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!96 = !{!29, !97}
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !98, line: 26, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!104 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!105 = !{!61}
!106 = !{!92, !107, !114}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "block_size_args", scope: !94, file: !109, line: 398, type: !110, isLocal: true, isDefinition: true)
!109 = !DIFile(filename: "lib/human.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 192, elements: !112)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!112 = !{!113}
!113 = !DISubrange(count: 3)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "block_size_opts", scope: !94, file: !109, line: 399, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !118)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!118 = !{!119}
!119 = !DISubrange(count: 2)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 72, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 9)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "program_name", scope: !125, file: !129, line: 33, type: !61, isLocal: false, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !127, globals: !128)
!126 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!127 = !{!45, !43}
!128 = !{!123}
!129 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !132, file: !160, line: 85, type: !195, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !134, retainedTypes: !155, globals: !157)
!133 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!134 = !{!5, !135, !140}
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 46, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!143 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!145 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!146 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!147 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!148 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!149 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!150 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!151 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!153 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!154 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!155 = !{!64, !156, !48, !43}
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !{!130, !158, !165, !177, !179, !184, !191, !193}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !132, file: !160, line: 101, type: !161, isLocal: false, isDefinition: true)
!160 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 320, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!163 = !{!164}
!164 = !DISubrange(count: 10)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !132, file: !160, line: 1052, type: !167, isLocal: false, isDefinition: true)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !160, line: 65, size: 448, elements: !168)
!168 = !{!169, !170, !171, !175, !176}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !167, file: !160, line: 68, baseType: !5, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !160, line: 71, baseType: !64, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !167, file: !160, line: 75, baseType: !172, size: 256, offset: 64)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !167, file: !160, line: 78, baseType: !61, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !167, file: !160, line: 81, baseType: !61, size: 64, offset: 384)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !132, file: !160, line: 116, type: !167, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "slot0", scope: !132, file: !160, line: 842, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 256)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "slotvec", scope: !132, file: !160, line: 845, type: !186, isLocal: true, isDefinition: true)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !160, line: 834, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !160, line: 836, baseType: !48, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !187, file: !160, line: 837, baseType: !43, size: 64, offset: 64)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "nslots", scope: !132, file: !160, line: 843, type: !64, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "slotvec0", scope: !132, file: !160, line: 844, type: !187, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 704, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 11)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !200, file: !203, line: 26, type: !204, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !202)
!201 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = !{!198}
!203 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 376, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 47)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !209, file: !214, line: 69, type: !215, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !212, globals: !213)
!210 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!211 = !{!5}
!212 = !{!45, !47}
!213 = !{!207}
!214 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !216, line: 55, baseType: !217)
!216 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null}
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222)
!221 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = !{!20}
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !225)
!224 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = !{!226}
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 40, baseType: !7, size: 32, elements: !228)
!227 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!228 = !{!229}
!229 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !237)
!231 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 41, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!235 = !{!236}
!236 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!237 = !{!45}
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !254)
!239 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!240 = !{!241}
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !243, file: !242, line: 186, baseType: !7, size: 32, elements: !252)
!242 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!243 = distinct !DISubprogram(name: "x2nrealloc", scope: !242, file: !242, line: 174, type: !244, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !247)
!244 = !DISubroutineType(types: !245)
!245 = !{!45, !45, !246, !48}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!247 = !{!248, !249, !250, !251}
!248 = !DILocalVariable(name: "p", arg: 1, scope: !243, file: !242, line: 174, type: !45)
!249 = !DILocalVariable(name: "pn", arg: 2, scope: !243, file: !242, line: 174, type: !246)
!250 = !DILocalVariable(name: "s", arg: 3, scope: !243, file: !242, line: 174, type: !48)
!251 = !DILocalVariable(name: "n", scope: !243, file: !242, line: 176, type: !48)
!252 = !{!253}
!253 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!254 = !{!48, !43, !45}
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!256 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !260)
!258 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!259 = !{!97, !140}
!260 = !{!64, !156}
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !237)
!262 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!264 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !237)
!266 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !237)
!268 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !271)
!270 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!271 = !{!48}
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!273 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!275 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !278, retainedTypes: !237)
!277 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!278 = !{!279}
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !280, line: 41, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!282 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!283 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!284 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!285 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!286 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!287 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!288 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!289 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!290 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!291 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!292 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!293 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!294 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!295 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!298 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!299 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!300 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!301 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!302 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!304 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!305 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!306 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!307 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!310 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!311 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!312 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!314 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!316 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!317 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!320 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!321 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!322 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!323 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!324 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!325 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!326 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!327 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!328 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!329 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!330 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!331 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!390 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!395 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!396 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!397 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!398 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!399 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!401 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!402 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!403 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!404 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!477 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!550 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!551 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!552 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!553 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!554 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!555 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!556 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!557 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!558 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!559 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!560 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!561 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!562 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!563 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!564 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!566 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!567 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!568 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!569 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!570 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!571 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!597 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!598 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!599 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!600 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!601 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!606 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!607 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!608 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!609 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!665 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!666 = !{i32 2, !"Dwarf Version", i32 4}
!667 = !{i32 2, !"Debug Info Version", i32 3}
!668 = !{i32 1, !"wchar_size", i32 4}
!669 = !{i32 7, !"PIC Level", i32 2}
!670 = !{i32 7, !"PIE Level", i32 2}
!671 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !672, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !64}
!674 = !{!675}
!675 = !DILocalVariable(name: "status", arg: 1, scope: !671, file: !3, line: 53, type: !64)
!676 = !DILocalVariable(name: "infomap", scope: !677, file: !678, line: 632, type: !692)
!677 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !678, file: !678, line: 630, type: !679, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !681)
!678 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!679 = !DISubroutineType(types: !680)
!680 = !{null, !61}
!681 = !{!682, !676, !683, !684, !691}
!682 = !DILocalVariable(name: "program", arg: 1, scope: !677, file: !678, line: 630, type: !61)
!683 = !DILocalVariable(name: "node", scope: !677, file: !678, line: 642, type: !61)
!684 = !DILocalVariable(name: "map_prog", scope: !677, file: !678, line: 643, type: !685)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !677, file: !678, line: 632, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !687, file: !678, line: 632, baseType: !61, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !678, line: 632, baseType: !61, size: 64, offset: 64)
!691 = !DILocalVariable(name: "lc_messages", scope: !677, file: !678, line: 655, type: !61)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 896, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 7)
!695 = !DILocation(line: 632, column: 67, scope: !677, inlinedAt: !696)
!696 = distinct !DILocation(line: 76, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 58, column: 5)
!698 = distinct !DILexicalBlock(scope: !671, file: !3, line: 55, column: 7)
!699 = !DILocation(line: 53, column: 12, scope: !671)
!700 = !DILocation(line: 55, column: 14, scope: !698)
!701 = !DILocation(line: 55, column: 7, scope: !671)
!702 = !DILocation(line: 56, column: 5, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !3, line: 56, column: 5)
!704 = !{!705, !705, i64 0}
!705 = !{!"any pointer", !706, i64 0}
!706 = !{!"omnipotent char", !707, i64 0}
!707 = !{!"Simple C/C++ TBAA"}
!708 = !DILocation(line: 59, column: 7, scope: !697)
!709 = !DILocation(line: 63, column: 7, scope: !697)
!710 = !DILocation(line: 580, column: 3, scope: !711, inlinedAt: !712)
!711 = distinct !DISubprogram(name: "emit_stdin_note", scope: !678, file: !678, line: 578, type: !218, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !75)
!712 = distinct !DILocation(line: 67, column: 7, scope: !697)
!713 = !DILocation(line: 69, column: 7, scope: !697)
!714 = !DILocation(line: 74, column: 7, scope: !697)
!715 = !DILocation(line: 75, column: 7, scope: !697)
!716 = !DILocation(line: 632, column: 3, scope: !677, inlinedAt: !696)
!717 = !DILocation(line: 643, column: 36, scope: !677, inlinedAt: !696)
!718 = !DILocation(line: 643, column: 25, scope: !677, inlinedAt: !696)
!719 = !DILocation(line: 645, column: 33, scope: !677, inlinedAt: !696)
!720 = !DILocation(line: 645, column: 3, scope: !677, inlinedAt: !696)
!721 = !DILocation(line: 646, column: 13, scope: !677, inlinedAt: !696)
!722 = !DILocation(line: 645, column: 20, scope: !677, inlinedAt: !696)
!723 = !{!724, !705, i64 0}
!724 = !{!"infomap", !705, i64 0, !705, i64 8}
!725 = !DILocation(line: 645, column: 10, scope: !677, inlinedAt: !696)
!726 = !DILocation(line: 645, column: 28, scope: !677, inlinedAt: !696)
!727 = distinct !{!727, !728, !729}
!728 = !DILocation(line: 645, column: 3, scope: !677)
!729 = !DILocation(line: 646, column: 13, scope: !677)
!730 = !DILocation(line: 648, column: 17, scope: !731, inlinedAt: !696)
!731 = distinct !DILexicalBlock(scope: !677, file: !678, line: 648, column: 7)
!732 = !{!724, !705, i64 8}
!733 = !DILocation(line: 648, column: 7, scope: !731, inlinedAt: !696)
!734 = !DILocation(line: 648, column: 7, scope: !677, inlinedAt: !696)
!735 = !DILocation(line: 642, column: 15, scope: !677, inlinedAt: !696)
!736 = !DILocation(line: 651, column: 3, scope: !677, inlinedAt: !696)
!737 = !DILocation(line: 655, column: 29, scope: !677, inlinedAt: !696)
!738 = !DILocation(line: 655, column: 15, scope: !677, inlinedAt: !696)
!739 = !DILocation(line: 656, column: 7, scope: !740, inlinedAt: !696)
!740 = distinct !DILexicalBlock(scope: !677, file: !678, line: 656, column: 7)
!741 = !DILocation(line: 656, column: 19, scope: !740, inlinedAt: !696)
!742 = !DILocation(line: 656, column: 22, scope: !740, inlinedAt: !696)
!743 = !DILocation(line: 656, column: 7, scope: !677, inlinedAt: !696)
!744 = !DILocation(line: 662, column: 7, scope: !745, inlinedAt: !696)
!745 = distinct !DILexicalBlock(scope: !740, file: !678, line: 657, column: 5)
!746 = !DILocation(line: 664, column: 5, scope: !745, inlinedAt: !696)
!747 = !DILocation(line: 665, column: 3, scope: !677, inlinedAt: !696)
!748 = !DILocation(line: 667, column: 3, scope: !677, inlinedAt: !696)
!749 = !DILocation(line: 669, column: 1, scope: !677, inlinedAt: !696)
!750 = !DILocation(line: 78, column: 3, scope: !671)
!751 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !752, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !755)
!752 = !DISubroutineType(types: !753)
!753 = !{!64, !64, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!755 = !{!756, !757, !758, !759, !760, !761}
!756 = !DILocalVariable(name: "argc", arg: 1, scope: !751, file: !3, line: 221, type: !64)
!757 = !DILocalVariable(name: "argv", arg: 2, scope: !751, file: !3, line: 221, type: !754)
!758 = !DILocalVariable(name: "ok", scope: !751, file: !3, line: 223, type: !70)
!759 = !DILocalVariable(name: "optc", scope: !751, file: !3, line: 224, type: !64)
!760 = !DILocalVariable(name: "files_given", scope: !751, file: !3, line: 225, type: !64)
!761 = !DILocalVariable(name: "sum_func", scope: !751, file: !3, line: 226, type: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!70, !61, !64}
!765 = !DILocation(line: 221, column: 11, scope: !751)
!766 = !DILocation(line: 221, column: 24, scope: !751)
!767 = !DILocation(line: 226, column: 10, scope: !751)
!768 = !DILocation(line: 229, column: 21, scope: !751)
!769 = !DILocation(line: 229, column: 3, scope: !751)
!770 = !DILocation(line: 230, column: 3, scope: !751)
!771 = !DILocation(line: 231, column: 3, scope: !751)
!772 = !DILocation(line: 232, column: 3, scope: !751)
!773 = !DILocation(line: 234, column: 3, scope: !751)
!774 = !DILocation(line: 238, column: 12, scope: !751)
!775 = !DILocation(line: 238, column: 3, scope: !751)
!776 = !DILocation(line: 242, column: 3, scope: !751)
!777 = !DILocation(line: 0, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 245, column: 9)
!779 = distinct !DILexicalBlock(scope: !751, file: !3, line: 243, column: 5)
!780 = !DILocation(line: 242, column: 18, scope: !751)
!781 = !DILocation(line: 224, column: 7, scope: !751)
!782 = distinct !{!782, !776, !783}
!783 = !DILocation(line: 261, column: 5, scope: !751)
!784 = !DILocation(line: 252, column: 11, scope: !778)
!785 = !DILocation(line: 254, column: 9, scope: !778)
!786 = !DILocation(line: 256, column: 9, scope: !778)
!787 = !DILocation(line: 259, column: 11, scope: !778)
!788 = !DILocation(line: 263, column: 24, scope: !751)
!789 = !{!790, !790, i64 0}
!790 = !{!"int", !706, i64 0}
!791 = !DILocation(line: 263, column: 22, scope: !751)
!792 = !DILocation(line: 225, column: 7, scope: !751)
!793 = !DILocation(line: 264, column: 19, scope: !794)
!794 = distinct !DILexicalBlock(scope: !751, file: !3, line: 264, column: 7)
!795 = !DILocation(line: 264, column: 7, scope: !751)
!796 = !DILocation(line: 223, column: 8, scope: !751)
!797 = !DILocation(line: 267, column: 28, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 267, column: 5)
!799 = distinct !DILexicalBlock(scope: !794, file: !3, line: 267, column: 5)
!800 = !DILocation(line: 267, column: 5, scope: !799)
!801 = !DILocation(line: 265, column: 10, scope: !794)
!802 = !{i1 (i8*, i32)* @bsd_sum_file, i1 (i8*, i32)* @sysv_sum_file}
!803 = !DILocation(line: 265, column: 8, scope: !794)
!804 = !DILocation(line: 265, column: 5, scope: !794)
!805 = !DILocation(line: 268, column: 23, scope: !798)
!806 = !DILocation(line: 268, column: 13, scope: !798)
!807 = !DILocation(line: 268, column: 10, scope: !798)
!808 = !DILocation(line: 267, column: 42, scope: !798)
!809 = distinct !{!809, !800, !810}
!810 = !DILocation(line: 268, column: 48, scope: !799)
!811 = !DILocation(line: 0, scope: !799)
!812 = !DILocation(line: 270, column: 23, scope: !813)
!813 = distinct !DILexicalBlock(scope: !751, file: !3, line: 270, column: 7)
!814 = !DILocation(line: 270, column: 34, scope: !813)
!815 = !DILocation(line: 270, column: 26, scope: !813)
!816 = !DILocation(line: 270, column: 41, scope: !813)
!817 = !DILocation(line: 270, column: 7, scope: !751)
!818 = !DILocation(line: 271, column: 5, scope: !813)
!819 = !DILocation(line: 272, column: 10, scope: !751)
!820 = !DILocation(line: 273, column: 1, scope: !751)
!821 = distinct !DISubprogram(name: "bsd_sum_file", scope: !3, file: !3, line: 88, type: !763, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !822)
!822 = !{!823, !824, !825, !881, !882, !886, !887, !891}
!823 = !DILocalVariable(name: "file", arg: 1, scope: !821, file: !3, line: 88, type: !61)
!824 = !DILocalVariable(name: "print_name", arg: 2, scope: !821, file: !3, line: 88, type: !64)
!825 = !DILocalVariable(name: "fp", scope: !821, file: !3, line: 90, type: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !829)
!828 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !831)
!830 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !847, !849, !850, !851, !855, !856, !858, !862, !865, !867, !870, !873, !874, !875, !876, !877}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !829, file: !830, line: 51, baseType: !64, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !829, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !829, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !829, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !829, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !829, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !829, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !829, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !829, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !829, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !829, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !829, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !829, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !830, line: 36, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !829, file: !830, line: 70, baseType: !848, size: 64, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !829, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !829, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !829, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !853, line: 150, baseType: !854)
!853 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!854 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !829, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !829, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!857 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !829, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 1)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !829, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !830, line: 43, baseType: null)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !829, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !853, line: 151, baseType: !854)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !829, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !830, line: 37, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !829, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !830, line: 38, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !829, file: !830, line: 93, baseType: !848, size: 64, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !829, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !829, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !829, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !829, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 20)
!881 = !DILocalVariable(name: "checksum", scope: !821, file: !3, line: 91, type: !64)
!882 = !DILocalVariable(name: "total_bytes", scope: !821, file: !3, line: 92, type: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !884, line: 102, baseType: !885)
!884 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !853, line: 72, baseType: !50)
!886 = !DILocalVariable(name: "ch", scope: !821, file: !3, line: 93, type: !64)
!887 = !DILocalVariable(name: "hbuf", scope: !821, file: !3, line: 94, type: !888)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 5216, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 652)
!891 = !DILocalVariable(name: "is_stdin", scope: !821, file: !3, line: 95, type: !70)
!892 = !DILocation(line: 88, column: 27, scope: !821)
!893 = !DILocation(line: 88, column: 37, scope: !821)
!894 = !DILocation(line: 91, column: 7, scope: !821)
!895 = !DILocation(line: 92, column: 13, scope: !821)
!896 = !DILocation(line: 94, column: 3, scope: !821)
!897 = !DILocation(line: 94, column: 8, scope: !821)
!898 = !DILocation(line: 95, column: 19, scope: !821)
!899 = !DILocation(line: 97, column: 7, scope: !821)
!900 = !DILocation(line: 99, column: 12, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !3, line: 98, column: 5)
!902 = distinct !DILexicalBlock(scope: !821, file: !3, line: 97, column: 7)
!903 = !DILocation(line: 90, column: 9, scope: !821)
!904 = !DILocation(line: 102, column: 5, scope: !901)
!905 = !DILocation(line: 105, column: 12, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 104, column: 5)
!907 = !DILocation(line: 106, column: 14, scope: !908)
!908 = distinct !DILexicalBlock(scope: !906, file: !3, line: 106, column: 11)
!909 = !DILocation(line: 106, column: 11, scope: !906)
!910 = !DILocation(line: 108, column: 21, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 107, column: 9)
!912 = !DILocation(line: 108, column: 34, scope: !911)
!913 = !DILocation(line: 108, column: 11, scope: !911)
!914 = !DILocation(line: 109, column: 11, scope: !911)
!915 = !DILocation(line: 0, scope: !906)
!916 = !DILocation(line: 113, column: 3, scope: !821)
!917 = !DILocation(line: 115, column: 3, scope: !821)
!918 = !DILocation(line: 0, scope: !919)
!919 = distinct !DILexicalBlock(scope: !821, file: !3, line: 116, column: 5)
!920 = !DILocalVariable(name: "__fp", arg: 1, scope: !921, file: !922, line: 66, type: !826)
!921 = distinct !DISubprogram(name: "getc_unlocked", scope: !922, file: !922, line: 66, type: !923, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !925)
!922 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!923 = !DISubroutineType(types: !924)
!924 = !{!64, !826}
!925 = !{!920}
!926 = !DILocation(line: 66, column: 22, scope: !921, inlinedAt: !927)
!927 = distinct !DILocation(line: 115, column: 16, scope: !821)
!928 = !DILocation(line: 68, column: 10, scope: !921, inlinedAt: !927)
!929 = !{!930, !705, i64 8}
!930 = !{!"_IO_FILE", !790, i64 0, !705, i64 8, !705, i64 16, !705, i64 24, !705, i64 32, !705, i64 40, !705, i64 48, !705, i64 56, !705, i64 64, !705, i64 72, !705, i64 80, !705, i64 88, !705, i64 96, !705, i64 104, !790, i64 112, !790, i64 116, !931, i64 120, !932, i64 128, !706, i64 130, !706, i64 131, !705, i64 136, !931, i64 144, !705, i64 152, !705, i64 160, !705, i64 168, !705, i64 176, !931, i64 184, !790, i64 192, !706, i64 196}
!931 = !{!"long", !706, i64 0}
!932 = !{!"short", !706, i64 0}
!933 = !{!930, !705, i64 16}
!934 = !{!"branch_weights", i32 2000, i32 1}
!935 = !{!706, !706, i64 0}
!936 = !DILocation(line: 93, column: 7, scope: !821)
!937 = !DILocation(line: 115, column: 27, scope: !821)
!938 = !DILocation(line: 117, column: 18, scope: !919)
!939 = !DILocation(line: 118, column: 28, scope: !919)
!940 = !DILocation(line: 118, column: 52, scope: !919)
!941 = !DILocation(line: 118, column: 34, scope: !919)
!942 = !DILocation(line: 119, column: 16, scope: !919)
!943 = !DILocation(line: 120, column: 16, scope: !919)
!944 = distinct !{!944, !917, !945}
!945 = !DILocation(line: 121, column: 5, scope: !821)
!946 = !DILocalVariable(name: "__stream", arg: 1, scope: !947, file: !922, line: 135, type: !826)
!947 = distinct !DISubprogram(name: "ferror_unlocked", scope: !922, file: !922, line: 135, type: !923, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !948)
!948 = !{!946}
!949 = !DILocation(line: 135, column: 1, scope: !947, inlinedAt: !950)
!950 = distinct !DILocation(line: 123, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !821, file: !3, line: 123, column: 7)
!952 = !DILocation(line: 137, column: 10, scope: !947, inlinedAt: !950)
!953 = !{!930, !790, i64 0}
!954 = !DILocation(line: 123, column: 7, scope: !951)
!955 = !DILocation(line: 123, column: 7, scope: !821)
!956 = !DILocation(line: 125, column: 17, scope: !957)
!957 = distinct !DILexicalBlock(scope: !951, file: !3, line: 124, column: 5)
!958 = !DILocation(line: 125, column: 30, scope: !957)
!959 = !DILocation(line: 125, column: 7, scope: !957)
!960 = !DILocation(line: 126, column: 11, scope: !957)
!961 = !DILocation(line: 127, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !3, line: 126, column: 11)
!963 = !DILocation(line: 131, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !821, file: !3, line: 131, column: 7)
!965 = !DILocation(line: 131, column: 20, scope: !964)
!966 = !DILocation(line: 131, column: 32, scope: !964)
!967 = !DILocation(line: 131, column: 7, scope: !821)
!968 = !DILocation(line: 133, column: 17, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 132, column: 5)
!970 = !DILocation(line: 133, column: 30, scope: !969)
!971 = !DILocation(line: 133, column: 7, scope: !969)
!972 = !DILocation(line: 134, column: 7, scope: !969)
!973 = !DILocation(line: 137, column: 3, scope: !821)
!974 = !DILocation(line: 139, column: 18, scope: !975)
!975 = distinct !DILexicalBlock(scope: !821, file: !3, line: 139, column: 7)
!976 = !DILocation(line: 139, column: 7, scope: !821)
!977 = !DILocation(line: 140, column: 5, scope: !975)
!978 = !DILocalVariable(name: "__c", arg: 1, scope: !979, file: !922, line: 108, type: !64)
!979 = distinct !DISubprogram(name: "putchar_unlocked", scope: !922, file: !922, line: 108, type: !980, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!64, !64}
!982 = !{!978}
!983 = !DILocation(line: 108, column: 23, scope: !979, inlinedAt: !984)
!984 = distinct !DILocation(line: 141, column: 3, scope: !821)
!985 = !DILocation(line: 110, column: 10, scope: !979, inlinedAt: !984)
!986 = !{!930, !705, i64 40}
!987 = !{!930, !705, i64 48}
!988 = !DILocation(line: 0, scope: !911)
!989 = !DILocation(line: 144, column: 1, scope: !821)
!990 = distinct !DISubprogram(name: "sysv_sum_file", scope: !3, file: !3, line: 152, type: !763, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !991)
!991 = !{!992, !993, !994, !995, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1007}
!992 = !DILocalVariable(name: "file", arg: 1, scope: !990, file: !3, line: 152, type: !61)
!993 = !DILocalVariable(name: "print_name", arg: 2, scope: !990, file: !3, line: 152, type: !64)
!994 = !DILocalVariable(name: "fd", scope: !990, file: !3, line: 154, type: !64)
!995 = !DILocalVariable(name: "buf", scope: !990, file: !3, line: 155, type: !996)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 65536, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 8192)
!999 = !DILocalVariable(name: "total_bytes", scope: !990, file: !3, line: 156, type: !883)
!1000 = !DILocalVariable(name: "hbuf", scope: !990, file: !3, line: 157, type: !888)
!1001 = !DILocalVariable(name: "r", scope: !990, file: !3, line: 158, type: !64)
!1002 = !DILocalVariable(name: "checksum", scope: !990, file: !3, line: 159, type: !64)
!1003 = !DILocalVariable(name: "s", scope: !990, file: !3, line: 162, type: !7)
!1004 = !DILocalVariable(name: "is_stdin", scope: !990, file: !3, line: 164, type: !70)
!1005 = !DILocalVariable(name: "bytes_read", scope: !1006, file: !3, line: 184, type: !48)
!1006 = distinct !DILexicalBlock(scope: !990, file: !3, line: 183, column: 5)
!1007 = !DILocalVariable(name: "i", scope: !1008, file: !3, line: 197, type: !48)
!1008 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 197, column: 7)
!1009 = !DILocation(line: 152, column: 28, scope: !990)
!1010 = !DILocation(line: 152, column: 38, scope: !990)
!1011 = !DILocation(line: 155, column: 3, scope: !990)
!1012 = !DILocation(line: 155, column: 17, scope: !990)
!1013 = !DILocation(line: 156, column: 13, scope: !990)
!1014 = !DILocation(line: 157, column: 3, scope: !990)
!1015 = !DILocation(line: 157, column: 8, scope: !990)
!1016 = !DILocation(line: 162, column: 16, scope: !990)
!1017 = !DILocation(line: 164, column: 19, scope: !990)
!1018 = !DILocation(line: 166, column: 7, scope: !990)
!1019 = !DILocation(line: 154, column: 7, scope: !990)
!1020 = !DILocation(line: 171, column: 5, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 167, column: 5)
!1022 = distinct !DILexicalBlock(scope: !990, file: !3, line: 166, column: 7)
!1023 = !DILocation(line: 174, column: 12, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 173, column: 5)
!1025 = !DILocation(line: 175, column: 14, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 175, column: 11)
!1027 = !DILocation(line: 175, column: 11, scope: !1024)
!1028 = !DILocation(line: 177, column: 21, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 176, column: 9)
!1030 = !DILocation(line: 177, column: 34, scope: !1029)
!1031 = !DILocation(line: 177, column: 11, scope: !1029)
!1032 = !DILocation(line: 178, column: 11, scope: !1029)
!1033 = !DILocation(line: 0, scope: !1024)
!1034 = !DILocation(line: 182, column: 3, scope: !990)
!1035 = !DILocation(line: 184, column: 27, scope: !1006)
!1036 = !DILocation(line: 184, column: 14, scope: !1006)
!1037 = !DILocation(line: 186, column: 11, scope: !1006)
!1038 = !DILocation(line: 198, column: 14, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 197, column: 7)
!1040 = !DILocation(line: 197, column: 43, scope: !1039)
!1041 = !DILocation(line: 198, column: 11, scope: !1039)
!1042 = distinct !{!1042, !1043, !1044, !1045}
!1043 = !DILocation(line: 197, column: 7, scope: !1008)
!1044 = !DILocation(line: 198, column: 19, scope: !1008)
!1045 = !{!"llvm.loop.isvectorized", i32 1}
!1046 = !DILocation(line: 191, column: 21, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 190, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 189, column: 11)
!1049 = !DILocation(line: 191, column: 34, scope: !1047)
!1050 = !DILocation(line: 191, column: 11, scope: !1047)
!1051 = !DILocation(line: 192, column: 15, scope: !1047)
!1052 = !DILocation(line: 193, column: 13, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 192, column: 15)
!1054 = !DILocation(line: 197, column: 19, scope: !1008)
!1055 = !DILocation(line: 197, column: 28, scope: !1039)
!1056 = distinct !{!1056, !1043, !1044, !1057, !1045}
!1057 = !{!"llvm.loop.unroll.runtime.disable"}
!1058 = !DILocation(line: 199, column: 19, scope: !1006)
!1059 = !DILocation(line: 202, column: 17, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !990, file: !3, line: 202, column: 7)
!1061 = !DILocation(line: 202, column: 20, scope: !1060)
!1062 = !DILocation(line: 202, column: 31, scope: !1060)
!1063 = !DILocation(line: 202, column: 7, scope: !990)
!1064 = !DILocation(line: 204, column: 17, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 203, column: 5)
!1066 = !DILocation(line: 204, column: 30, scope: !1065)
!1067 = !DILocation(line: 204, column: 7, scope: !1065)
!1068 = !DILocation(line: 205, column: 7, scope: !1065)
!1069 = !DILocation(line: 208, column: 10, scope: !990)
!1070 = !DILocation(line: 208, column: 40, scope: !990)
!1071 = !DILocation(line: 208, column: 20, scope: !990)
!1072 = !DILocation(line: 158, column: 7, scope: !990)
!1073 = !DILocation(line: 209, column: 17, scope: !990)
!1074 = !DILocation(line: 209, column: 32, scope: !990)
!1075 = !DILocation(line: 209, column: 27, scope: !990)
!1076 = !DILocation(line: 159, column: 7, scope: !990)
!1077 = !DILocation(line: 211, column: 3, scope: !990)
!1078 = !DILocation(line: 213, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !990, file: !3, line: 213, column: 7)
!1080 = !DILocation(line: 213, column: 7, scope: !990)
!1081 = !DILocation(line: 214, column: 5, scope: !1079)
!1082 = !DILocation(line: 108, column: 23, scope: !979, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 215, column: 3, scope: !990)
!1084 = !DILocation(line: 110, column: 10, scope: !979, inlinedAt: !1083)
!1085 = !DILocation(line: 218, column: 1, scope: !990)
!1086 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !84, file: !84, line: 51, type: !679, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !79, retainedNodes: !1087)
!1087 = !{!1088}
!1088 = !DILocalVariable(name: "file", arg: 1, scope: !1086, file: !84, line: 51, type: !61)
!1089 = !DILocation(line: 51, column: 41, scope: !1086)
!1090 = !DILocation(line: 53, column: 13, scope: !1086)
!1091 = !DILocation(line: 54, column: 1, scope: !1086)
!1092 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !84, file: !84, line: 88, type: !1093, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !79, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !70}
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "ignore", arg: 1, scope: !1092, file: !84, line: 88, type: !70)
!1097 = !DILocation(line: 88, column: 37, scope: !1092)
!1098 = !DILocation(line: 90, column: 16, scope: !1092)
!1099 = !{!1100, !1100, i64 0}
!1100 = !{!"_Bool", !706, i64 0}
!1101 = !DILocation(line: 91, column: 1, scope: !1092)
!1102 = distinct !DISubprogram(name: "close_stdout", scope: !84, file: !84, line: 117, type: !218, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !79, retainedNodes: !1103)
!1103 = !{!1104}
!1104 = !DILocalVariable(name: "write_error", scope: !1105, file: !84, line: 122, type: !61)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !84, line: 121, column: 5)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !84, line: 119, column: 7)
!1107 = !DILocation(line: 119, column: 21, scope: !1106)
!1108 = !DILocation(line: 119, column: 7, scope: !1106)
!1109 = !DILocation(line: 119, column: 29, scope: !1106)
!1110 = !DILocation(line: 120, column: 7, scope: !1106)
!1111 = !DILocation(line: 120, column: 12, scope: !1106)
!1112 = !{i8 0, i8 2}
!1113 = !DILocation(line: 120, column: 25, scope: !1106)
!1114 = !DILocation(line: 120, column: 28, scope: !1106)
!1115 = !DILocation(line: 120, column: 34, scope: !1106)
!1116 = !DILocation(line: 119, column: 7, scope: !1102)
!1117 = !DILocation(line: 122, column: 33, scope: !1105)
!1118 = !DILocation(line: 122, column: 19, scope: !1105)
!1119 = !DILocation(line: 123, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1105, file: !84, line: 123, column: 11)
!1121 = !DILocation(line: 0, scope: !1120)
!1122 = !DILocation(line: 123, column: 11, scope: !1105)
!1123 = !DILocation(line: 124, column: 36, scope: !1120)
!1124 = !DILocation(line: 124, column: 9, scope: !1120)
!1125 = !DILocation(line: 127, column: 9, scope: !1120)
!1126 = !DILocation(line: 129, column: 14, scope: !1105)
!1127 = !DILocation(line: 129, column: 7, scope: !1105)
!1128 = !DILocation(line: 134, column: 42, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1102, file: !84, line: 134, column: 7)
!1130 = !DILocation(line: 134, column: 28, scope: !1129)
!1131 = !DILocation(line: 134, column: 50, scope: !1129)
!1132 = !DILocation(line: 134, column: 7, scope: !1102)
!1133 = !DILocation(line: 135, column: 12, scope: !1129)
!1134 = !DILocation(line: 135, column: 5, scope: !1129)
!1135 = !DILocation(line: 136, column: 1, scope: !1102)
!1136 = distinct !DISubprogram(name: "fdadvise", scope: !1137, file: !1137, line: 31, type: !1138, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1143)
!1137 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !64, !1140, !1140, !1142}
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1141, line: 63, baseType: !852)
!1141 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1143 = !{!1144, !1145, !1146, !1147, !1148}
!1144 = !DILocalVariable(name: "fd", arg: 1, scope: !1136, file: !1137, line: 31, type: !64)
!1145 = !DILocalVariable(name: "offset", arg: 2, scope: !1136, file: !1137, line: 31, type: !1140)
!1146 = !DILocalVariable(name: "len", arg: 3, scope: !1136, file: !1137, line: 31, type: !1140)
!1147 = !DILocalVariable(name: "advice", arg: 4, scope: !1136, file: !1137, line: 31, type: !1142)
!1148 = !DILocalVariable(name: "__x", scope: !1149, file: !1137, line: 34, type: !64)
!1149 = distinct !DILexicalBlock(scope: !1136, file: !1137, line: 34, column: 3)
!1150 = !DILocation(line: 31, column: 15, scope: !1136)
!1151 = !DILocation(line: 31, column: 25, scope: !1136)
!1152 = !DILocation(line: 31, column: 39, scope: !1136)
!1153 = !DILocation(line: 31, column: 54, scope: !1136)
!1154 = !DILocation(line: 34, column: 3, scope: !1149)
!1155 = !DILocation(line: 36, column: 1, scope: !1136)
!1156 = distinct !DISubprogram(name: "fadvise", scope: !1137, file: !1137, line: 39, type: !1157, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1193)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !1159, !1142}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1161, file: !830, line: 51, baseType: !64, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1161, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1161, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1161, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1161, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1161, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1161, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1161, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1161, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1161, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1161, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1161, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1161, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1161, file: !830, line: 70, baseType: !1177, size: 64, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1161, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1161, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1161, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1161, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1161, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1161, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1161, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1161, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1161, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1161, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1161, file: !830, line: 93, baseType: !1177, size: 64, offset: 1344)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1161, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1161, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1161, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1161, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!1193 = !{!1194, !1195}
!1194 = !DILocalVariable(name: "fp", arg: 1, scope: !1156, file: !1137, line: 39, type: !1159)
!1195 = !DILocalVariable(name: "advice", arg: 2, scope: !1156, file: !1137, line: 39, type: !1142)
!1196 = !DILocation(line: 39, column: 16, scope: !1156)
!1197 = !DILocation(line: 39, column: 30, scope: !1156)
!1198 = !DILocation(line: 41, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1156, file: !1137, line: 41, column: 7)
!1200 = !DILocation(line: 41, column: 7, scope: !1156)
!1201 = !DILocation(line: 42, column: 15, scope: !1199)
!1202 = !DILocation(line: 31, column: 15, scope: !1136, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 42, column: 5, scope: !1199)
!1204 = !DILocation(line: 31, column: 25, scope: !1136, inlinedAt: !1203)
!1205 = !DILocation(line: 31, column: 39, scope: !1136, inlinedAt: !1203)
!1206 = !DILocation(line: 31, column: 54, scope: !1136, inlinedAt: !1203)
!1207 = !DILocation(line: 34, column: 3, scope: !1149, inlinedAt: !1203)
!1208 = !DILocation(line: 42, column: 5, scope: !1199)
!1209 = !DILocation(line: 43, column: 1, scope: !1156)
!1210 = distinct !DISubprogram(name: "human_readable", scope: !109, file: !109, line: 153, type: !1211, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!43, !883, !43, !64, !883, !883}
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1263, !1264, !1269, !1272, !1273, !1274, !1277, !1278, !1279, !1280, !1283, !1290, !1291, !1293}
!1214 = !DILocalVariable(name: "n", arg: 1, scope: !1210, file: !109, line: 153, type: !883)
!1215 = !DILocalVariable(name: "buf", arg: 2, scope: !1210, file: !109, line: 153, type: !43)
!1216 = !DILocalVariable(name: "opts", arg: 3, scope: !1210, file: !109, line: 153, type: !64)
!1217 = !DILocalVariable(name: "from_block_size", arg: 4, scope: !1210, file: !109, line: 154, type: !883)
!1218 = !DILocalVariable(name: "to_block_size", arg: 5, scope: !1210, file: !109, line: 154, type: !883)
!1219 = !DILocalVariable(name: "inexact_style", scope: !1210, file: !109, line: 156, type: !64)
!1220 = !DILocalVariable(name: "base", scope: !1210, file: !109, line: 158, type: !7)
!1221 = !DILocalVariable(name: "amt", scope: !1210, file: !109, line: 159, type: !883)
!1222 = !DILocalVariable(name: "tenths", scope: !1210, file: !109, line: 160, type: !64)
!1223 = !DILocalVariable(name: "exponent", scope: !1210, file: !109, line: 161, type: !64)
!1224 = !DILocalVariable(name: "exponent_max", scope: !1210, file: !109, line: 162, type: !64)
!1225 = !DILocalVariable(name: "p", scope: !1210, file: !109, line: 163, type: !43)
!1226 = !DILocalVariable(name: "psuffix", scope: !1210, file: !109, line: 164, type: !43)
!1227 = !DILocalVariable(name: "integerlim", scope: !1210, file: !109, line: 165, type: !61)
!1228 = !DILocalVariable(name: "rounding", scope: !1210, file: !109, line: 171, type: !64)
!1229 = !DILocalVariable(name: "decimal_point", scope: !1210, file: !109, line: 173, type: !61)
!1230 = !DILocalVariable(name: "decimal_pointlen", scope: !1210, file: !109, line: 174, type: !48)
!1231 = !DILocalVariable(name: "grouping", scope: !1210, file: !109, line: 175, type: !61)
!1232 = !DILocalVariable(name: "thousands_sep", scope: !1210, file: !109, line: 176, type: !61)
!1233 = !DILocalVariable(name: "l", scope: !1210, file: !109, line: 177, type: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1237, line: 51, size: 768, elements: !1238)
!1237 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !1236, file: !1237, line: 55, baseType: !43, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !1236, file: !1237, line: 56, baseType: !43, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !1236, file: !1237, line: 62, baseType: !43, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !1236, file: !1237, line: 68, baseType: !43, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !1236, file: !1237, line: 69, baseType: !43, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !1236, file: !1237, line: 70, baseType: !43, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !1236, file: !1237, line: 71, baseType: !43, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !1236, file: !1237, line: 72, baseType: !43, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !1236, file: !1237, line: 73, baseType: !43, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !1236, file: !1237, line: 74, baseType: !43, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !1236, file: !1237, line: 75, baseType: !44, size: 8, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !1236, file: !1237, line: 76, baseType: !44, size: 8, offset: 648)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !1236, file: !1237, line: 78, baseType: !44, size: 8, offset: 656)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !1236, file: !1237, line: 80, baseType: !44, size: 8, offset: 664)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !1236, file: !1237, line: 82, baseType: !44, size: 8, offset: 672)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !1236, file: !1237, line: 84, baseType: !44, size: 8, offset: 680)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !1236, file: !1237, line: 91, baseType: !44, size: 8, offset: 688)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !1236, file: !1237, line: 92, baseType: !44, size: 8, offset: 696)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !1236, file: !1237, line: 95, baseType: !44, size: 8, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !1236, file: !1237, line: 97, baseType: !44, size: 8, offset: 712)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !1236, file: !1237, line: 99, baseType: !44, size: 8, offset: 720)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !1236, file: !1237, line: 101, baseType: !44, size: 8, offset: 728)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !1236, file: !1237, line: 108, baseType: !44, size: 8, offset: 736)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !1236, file: !1237, line: 109, baseType: !44, size: 8, offset: 744)
!1263 = !DILocalVariable(name: "pointlen", scope: !1210, file: !109, line: 178, type: !48)
!1264 = !DILocalVariable(name: "multiplier", scope: !1265, file: !109, line: 199, type: !883)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !109, line: 198, column: 9)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !109, line: 197, column: 11)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !109, line: 196, column: 5)
!1268 = distinct !DILexicalBlock(scope: !1210, file: !109, line: 195, column: 7)
!1269 = !DILocalVariable(name: "divisor", scope: !1270, file: !109, line: 211, type: !883)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !109, line: 210, column: 5)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !109, line: 209, column: 12)
!1272 = !DILocalVariable(name: "r10", scope: !1270, file: !109, line: 212, type: !883)
!1273 = !DILocalVariable(name: "r2", scope: !1270, file: !109, line: 213, type: !883)
!1274 = !DILocalVariable(name: "dto_block_size", scope: !1275, file: !109, line: 225, type: !1276)
!1275 = distinct !DILexicalBlock(scope: !1210, file: !109, line: 220, column: 3)
!1276 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1277 = !DILocalVariable(name: "damt", scope: !1275, file: !109, line: 226, type: !1276)
!1278 = !DILocalVariable(name: "buflen", scope: !1275, file: !109, line: 227, type: !48)
!1279 = !DILocalVariable(name: "nonintegerlen", scope: !1275, file: !109, line: 228, type: !48)
!1280 = !DILocalVariable(name: "e", scope: !1281, file: !109, line: 238, type: !1276)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !109, line: 237, column: 7)
!1282 = distinct !DILexicalBlock(scope: !1275, file: !109, line: 230, column: 9)
!1283 = !DILocalVariable(name: "r10", scope: !1284, file: !109, line: 286, type: !7)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !109, line: 285, column: 15)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !109, line: 283, column: 11)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !109, line: 282, column: 13)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !109, line: 279, column: 7)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !109, line: 278, column: 9)
!1289 = distinct !DILexicalBlock(scope: !1210, file: !109, line: 272, column: 3)
!1290 = !DILocalVariable(name: "r2", scope: !1284, file: !109, line: 287, type: !7)
!1291 = !DILocalVariable(name: "digit", scope: !1292, file: !109, line: 349, type: !64)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !109, line: 348, column: 7)
!1293 = !DILocalVariable(name: "power", scope: !1294, file: !109, line: 363, type: !883)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !109, line: 362, column: 9)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !109, line: 361, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !109, line: 360, column: 5)
!1297 = distinct !DILexicalBlock(scope: !1210, file: !109, line: 359, column: 7)
!1298 = !DILocalVariable(name: "buf", scope: !1299, file: !109, line: 89, type: !1315)
!1299 = distinct !DISubprogram(name: "group_number", scope: !109, file: !109, line: 79, type: !1300, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!43, !43, !48, !61, !61}
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1298, !1311}
!1303 = !DILocalVariable(name: "number", arg: 1, scope: !1299, file: !109, line: 79, type: !43)
!1304 = !DILocalVariable(name: "numberlen", arg: 2, scope: !1299, file: !109, line: 79, type: !48)
!1305 = !DILocalVariable(name: "grouping", arg: 3, scope: !1299, file: !109, line: 80, type: !61)
!1306 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !1299, file: !109, line: 80, type: !61)
!1307 = !DILocalVariable(name: "d", scope: !1299, file: !109, line: 82, type: !43)
!1308 = !DILocalVariable(name: "grouplen", scope: !1299, file: !109, line: 83, type: !48)
!1309 = !DILocalVariable(name: "thousands_seplen", scope: !1299, file: !109, line: 84, type: !48)
!1310 = !DILocalVariable(name: "i", scope: !1299, file: !109, line: 85, type: !48)
!1311 = !DILocalVariable(name: "g", scope: !1312, file: !109, line: 96, type: !47)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !109, line: 95, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !109, line: 94, column: 3)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !109, line: 94, column: 3)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 328, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 41)
!1318 = !DILocation(line: 89, column: 8, scope: !1299, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 357, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1210, file: !109, line: 356, column: 7)
!1321 = !DILocation(line: 153, column: 27, scope: !1210)
!1322 = !DILocation(line: 153, column: 36, scope: !1210)
!1323 = !DILocation(line: 153, column: 45, scope: !1210)
!1324 = !DILocation(line: 154, column: 27, scope: !1210)
!1325 = !DILocation(line: 154, column: 54, scope: !1210)
!1326 = !DILocation(line: 157, column: 10, scope: !1210)
!1327 = !DILocation(line: 156, column: 7, scope: !1210)
!1328 = !DILocation(line: 158, column: 28, scope: !1210)
!1329 = !DILocation(line: 158, column: 23, scope: !1210)
!1330 = !DILocation(line: 158, column: 16, scope: !1210)
!1331 = !DILocation(line: 161, column: 7, scope: !1210)
!1332 = !DILocation(line: 162, column: 7, scope: !1210)
!1333 = !DILocation(line: 174, column: 10, scope: !1210)
!1334 = !DILocation(line: 177, column: 27, scope: !1210)
!1335 = !DILocation(line: 177, column: 23, scope: !1210)
!1336 = !DILocation(line: 178, column: 32, scope: !1210)
!1337 = !{!1338, !705, i64 0}
!1338 = !{!"lconv", !705, i64 0, !705, i64 8, !705, i64 16, !705, i64 24, !705, i64 32, !705, i64 40, !705, i64 48, !705, i64 56, !705, i64 64, !705, i64 72, !706, i64 80, !706, i64 81, !706, i64 82, !706, i64 83, !706, i64 84, !706, i64 85, !706, i64 86, !706, i64 87, !706, i64 88, !706, i64 89, !706, i64 90, !706, i64 91, !706, i64 92, !706, i64 93}
!1339 = !DILocation(line: 178, column: 21, scope: !1210)
!1340 = !DILocation(line: 178, column: 10, scope: !1210)
!1341 = !DILocation(line: 179, column: 20, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1210, file: !109, line: 179, column: 7)
!1343 = !DILocation(line: 173, column: 15, scope: !1210)
!1344 = !DILocation(line: 184, column: 17, scope: !1210)
!1345 = !{!1338, !705, i64 16}
!1346 = !DILocation(line: 175, column: 15, scope: !1210)
!1347 = !DILocation(line: 185, column: 18, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1210, file: !109, line: 185, column: 7)
!1349 = !{!1338, !705, i64 8}
!1350 = !DILocation(line: 185, column: 7, scope: !1348)
!1351 = !DILocation(line: 185, column: 33, scope: !1348)
!1352 = !DILocation(line: 176, column: 15, scope: !1210)
!1353 = !DILocation(line: 185, column: 7, scope: !1210)
!1354 = !DILocation(line: 189, column: 46, scope: !1210)
!1355 = !DILocation(line: 164, column: 9, scope: !1210)
!1356 = !DILocation(line: 163, column: 9, scope: !1210)
!1357 = !DILocation(line: 195, column: 21, scope: !1268)
!1358 = !DILocation(line: 195, column: 7, scope: !1210)
!1359 = !DILocation(line: 197, column: 27, scope: !1266)
!1360 = !DILocation(line: 199, column: 50, scope: !1265)
!1361 = !DILocation(line: 197, column: 43, scope: !1266)
!1362 = !DILocation(line: 197, column: 11, scope: !1267)
!1363 = !DILocation(line: 199, column: 21, scope: !1265)
!1364 = !DILocation(line: 200, column: 19, scope: !1265)
!1365 = !DILocation(line: 159, column: 13, scope: !1210)
!1366 = !DILocation(line: 201, column: 19, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1265, file: !109, line: 201, column: 15)
!1368 = !DILocation(line: 201, column: 32, scope: !1367)
!1369 = !DILocation(line: 160, column: 7, scope: !1210)
!1370 = !DILocation(line: 171, column: 7, scope: !1210)
!1371 = !DILocation(line: 209, column: 28, scope: !1271)
!1372 = !DILocation(line: 209, column: 33, scope: !1271)
!1373 = !DILocation(line: 209, column: 50, scope: !1271)
!1374 = !DILocation(line: 211, column: 41, scope: !1270)
!1375 = !DILocation(line: 209, column: 68, scope: !1271)
!1376 = !DILocation(line: 209, column: 12, scope: !1268)
!1377 = !DILocation(line: 211, column: 17, scope: !1270)
!1378 = !DILocation(line: 212, column: 26, scope: !1270)
!1379 = !DILocation(line: 212, column: 37, scope: !1270)
!1380 = !DILocation(line: 212, column: 17, scope: !1270)
!1381 = !DILocation(line: 213, column: 27, scope: !1270)
!1382 = !DILocation(line: 213, column: 38, scope: !1270)
!1383 = !DILocation(line: 213, column: 17, scope: !1270)
!1384 = !DILocation(line: 214, column: 15, scope: !1270)
!1385 = !DILocation(line: 215, column: 20, scope: !1270)
!1386 = !DILocation(line: 215, column: 16, scope: !1270)
!1387 = !DILocation(line: 216, column: 21, scope: !1270)
!1388 = !DILocation(line: 216, column: 35, scope: !1270)
!1389 = !DILocation(line: 216, column: 55, scope: !1270)
!1390 = !DILocation(line: 216, column: 44, scope: !1270)
!1391 = !DILocation(line: 216, column: 18, scope: !1270)
!1392 = !DILocation(line: 225, column: 34, scope: !1275)
!1393 = !DILocation(line: 225, column: 17, scope: !1275)
!1394 = !DILocation(line: 226, column: 24, scope: !1275)
!1395 = !DILocation(line: 226, column: 29, scope: !1275)
!1396 = !DILocation(line: 226, column: 45, scope: !1275)
!1397 = !DILocation(line: 226, column: 26, scope: !1275)
!1398 = !DILocation(line: 226, column: 17, scope: !1275)
!1399 = !DILocation(line: 230, column: 17, scope: !1282)
!1400 = !DILocation(line: 230, column: 9, scope: !1275)
!1401 = !DILocation(line: 238, column: 21, scope: !1281)
!1402 = !DILocation(line: 246, column: 18, scope: !1281)
!1403 = !DILocation(line: 246, column: 25, scope: !1281)
!1404 = !DILocation(line: 246, column: 33, scope: !1281)
!1405 = distinct !{!1405, !1406, !1407}
!1406 = !DILocation(line: 241, column: 9, scope: !1281)
!1407 = !DILocation(line: 246, column: 59, scope: !1281)
!1408 = !DILocation(line: 232, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1282, file: !109, line: 231, column: 7)
!1410 = !DILocalVariable(name: "inexact_style", arg: 1, scope: !1411, file: !109, line: 54, type: !64)
!1411 = distinct !DISubprogram(name: "adjust_value", scope: !109, file: !109, line: 54, type: !1412, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1276, !64, !1276}
!1414 = !{!1410, !1415, !1416}
!1415 = !DILocalVariable(name: "value", arg: 2, scope: !1411, file: !109, line: 54, type: !1276)
!1416 = !DILocalVariable(name: "u", scope: !1417, file: !109, line: 62, type: !883)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !109, line: 61, column: 5)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !109, line: 60, column: 7)
!1419 = !DILocation(line: 54, column: 19, scope: !1411, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 232, column: 9, scope: !1409)
!1421 = !DILocation(line: 54, column: 46, scope: !1411, inlinedAt: !1420)
!1422 = !DILocation(line: 60, column: 21, scope: !1418, inlinedAt: !1420)
!1423 = !DILocation(line: 60, column: 56, scope: !1418, inlinedAt: !1420)
!1424 = !DILocation(line: 60, column: 47, scope: !1418, inlinedAt: !1420)
!1425 = !DILocation(line: 62, column: 21, scope: !1417, inlinedAt: !1420)
!1426 = !DILocation(line: 62, column: 17, scope: !1417, inlinedAt: !1420)
!1427 = !DILocation(line: 63, column: 34, scope: !1417, inlinedAt: !1420)
!1428 = !DILocation(line: 63, column: 54, scope: !1417, inlinedAt: !1420)
!1429 = !DILocation(line: 63, column: 56, scope: !1417, inlinedAt: !1420)
!1430 = !DILocation(line: 63, column: 51, scope: !1417, inlinedAt: !1420)
!1431 = !DILocation(line: 63, column: 17, scope: !1417, inlinedAt: !1420)
!1432 = !DILocation(line: 63, column: 15, scope: !1417, inlinedAt: !1420)
!1433 = !DILocation(line: 64, column: 5, scope: !1417, inlinedAt: !1420)
!1434 = !DILocation(line: 233, column: 18, scope: !1409)
!1435 = !DILocation(line: 227, column: 12, scope: !1275)
!1436 = !DILocation(line: 228, column: 12, scope: !1275)
!1437 = !DILocation(line: 235, column: 7, scope: !1409)
!1438 = !DILocation(line: 243, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1281, file: !109, line: 242, column: 11)
!1440 = !DILocation(line: 244, column: 21, scope: !1439)
!1441 = !DILocation(line: 248, column: 14, scope: !1281)
!1442 = !DILocation(line: 250, column: 9, scope: !1281)
!1443 = !DILocation(line: 54, column: 19, scope: !1411, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 250, column: 9, scope: !1281)
!1445 = !DILocation(line: 54, column: 46, scope: !1411, inlinedAt: !1444)
!1446 = !DILocation(line: 60, column: 21, scope: !1418, inlinedAt: !1444)
!1447 = !DILocation(line: 60, column: 56, scope: !1418, inlinedAt: !1444)
!1448 = !DILocation(line: 60, column: 47, scope: !1418, inlinedAt: !1444)
!1449 = !DILocation(line: 62, column: 21, scope: !1417, inlinedAt: !1444)
!1450 = !DILocation(line: 62, column: 17, scope: !1417, inlinedAt: !1444)
!1451 = !DILocation(line: 63, column: 34, scope: !1417, inlinedAt: !1444)
!1452 = !DILocation(line: 63, column: 54, scope: !1417, inlinedAt: !1444)
!1453 = !DILocation(line: 63, column: 56, scope: !1417, inlinedAt: !1444)
!1454 = !DILocation(line: 63, column: 51, scope: !1417, inlinedAt: !1444)
!1455 = !DILocation(line: 63, column: 17, scope: !1417, inlinedAt: !1444)
!1456 = !DILocation(line: 63, column: 15, scope: !1417, inlinedAt: !1444)
!1457 = !DILocation(line: 64, column: 5, scope: !1417, inlinedAt: !1444)
!1458 = !DILocation(line: 251, column: 18, scope: !1281)
!1459 = !DILocation(line: 252, column: 42, scope: !1281)
!1460 = !DILocation(line: 254, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1281, file: !109, line: 254, column: 13)
!1462 = !DILocation(line: 254, column: 31, scope: !1461)
!1463 = !DILocation(line: 254, column: 60, scope: !1461)
!1464 = !DILocation(line: 255, column: 13, scope: !1461)
!1465 = !DILocation(line: 255, column: 23, scope: !1461)
!1466 = !DILocation(line: 256, column: 17, scope: !1461)
!1467 = !DILocation(line: 256, column: 31, scope: !1461)
!1468 = !DILocation(line: 256, column: 20, scope: !1461)
!1469 = !DILocation(line: 256, column: 36, scope: !1461)
!1470 = !DILocation(line: 254, column: 13, scope: !1281)
!1471 = !DILocation(line: 258, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1461, file: !109, line: 257, column: 11)
!1473 = !DILocation(line: 54, column: 19, scope: !1411, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 258, column: 13, scope: !1472)
!1475 = !DILocation(line: 54, column: 46, scope: !1411, inlinedAt: !1474)
!1476 = !DILocation(line: 60, column: 56, scope: !1418, inlinedAt: !1474)
!1477 = !DILocation(line: 60, column: 47, scope: !1418, inlinedAt: !1474)
!1478 = !DILocation(line: 62, column: 21, scope: !1417, inlinedAt: !1474)
!1479 = !DILocation(line: 62, column: 17, scope: !1417, inlinedAt: !1474)
!1480 = !DILocation(line: 63, column: 34, scope: !1417, inlinedAt: !1474)
!1481 = !DILocation(line: 63, column: 54, scope: !1417, inlinedAt: !1474)
!1482 = !DILocation(line: 63, column: 56, scope: !1417, inlinedAt: !1474)
!1483 = !DILocation(line: 63, column: 51, scope: !1417, inlinedAt: !1474)
!1484 = !DILocation(line: 63, column: 17, scope: !1417, inlinedAt: !1474)
!1485 = !DILocation(line: 63, column: 15, scope: !1417, inlinedAt: !1474)
!1486 = !DILocation(line: 64, column: 5, scope: !1417, inlinedAt: !1474)
!1487 = !DILocation(line: 260, column: 22, scope: !1472)
!1488 = !DILocation(line: 262, column: 11, scope: !1472)
!1489 = !DILocation(line: 0, scope: !1409)
!1490 = !DILocation(line: 0, scope: !1210)
!1491 = !DILocation(line: 265, column: 17, scope: !1275)
!1492 = !DILocation(line: 266, column: 5, scope: !1275)
!1493 = !DILocation(line: 267, column: 20, scope: !1275)
!1494 = !DILocation(line: 267, column: 29, scope: !1275)
!1495 = !DILocation(line: 165, column: 15, scope: !1210)
!1496 = !DILocation(line: 269, column: 3, scope: !1210)
!1497 = !DILocation(line: 0, scope: !1270)
!1498 = !DILocation(line: 278, column: 14, scope: !1288)
!1499 = !DILocation(line: 278, column: 9, scope: !1289)
!1500 = !DILocation(line: 282, column: 13, scope: !1286)
!1501 = !DILocation(line: 282, column: 18, scope: !1286)
!1502 = !DILocation(line: 282, column: 13, scope: !1287)
!1503 = !DILocation(line: 0, scope: !1284)
!1504 = !DILocation(line: 286, column: 41, scope: !1284)
!1505 = !DILocation(line: 286, column: 36, scope: !1284)
!1506 = !DILocation(line: 286, column: 30, scope: !1284)
!1507 = !DILocation(line: 287, column: 40, scope: !1284)
!1508 = !DILocation(line: 287, column: 48, scope: !1284)
!1509 = !DILocation(line: 287, column: 52, scope: !1284)
!1510 = !DILocation(line: 287, column: 30, scope: !1284)
!1511 = !DILocation(line: 288, column: 21, scope: !1284)
!1512 = !DILocation(line: 289, column: 30, scope: !1284)
!1513 = !DILocation(line: 290, column: 32, scope: !1284)
!1514 = !DILocation(line: 290, column: 29, scope: !1284)
!1515 = !DILocation(line: 291, column: 47, scope: !1284)
!1516 = !DILocation(line: 292, column: 46, scope: !1284)
!1517 = !DILocation(line: 292, column: 41, scope: !1284)
!1518 = !DILocation(line: 292, column: 33, scope: !1284)
!1519 = !DILocation(line: 293, column: 25, scope: !1284)
!1520 = !DILocation(line: 295, column: 25, scope: !1285)
!1521 = !DILocation(line: 295, column: 44, scope: !1285)
!1522 = !DILocation(line: 295, column: 32, scope: !1285)
!1523 = distinct !{!1523, !1524, !1525}
!1524 = !DILocation(line: 284, column: 13, scope: !1285)
!1525 = !DILocation(line: 295, column: 58, scope: !1285)
!1526 = !DILocation(line: 297, column: 21, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1285, file: !109, line: 297, column: 17)
!1528 = !DILocation(line: 297, column: 17, scope: !1285)
!1529 = !DILocation(line: 299, column: 35, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !109, line: 299, column: 21)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !109, line: 298, column: 15)
!1532 = !DILocation(line: 299, column: 21, scope: !1531)
!1533 = !DILocation(line: 300, column: 46, scope: !1530)
!1534 = !DILocation(line: 300, column: 36, scope: !1530)
!1535 = !DILocation(line: 300, column: 25, scope: !1530)
!1536 = !DILocation(line: 299, column: 21, scope: !1530)
!1537 = !DILocation(line: 301, column: 37, scope: !1530)
!1538 = !DILocation(line: 301, column: 59, scope: !1530)
!1539 = !DILocation(line: 301, column: 54, scope: !1530)
!1540 = !DILocation(line: 303, column: 27, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1530, file: !109, line: 302, column: 19)
!1542 = !DILocation(line: 306, column: 32, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1541, file: !109, line: 306, column: 25)
!1544 = !DILocation(line: 308, column: 28, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1543, file: !109, line: 307, column: 23)
!1546 = !DILocation(line: 313, column: 25, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1531, file: !109, line: 313, column: 21)
!1548 = !DILocation(line: 314, column: 21, scope: !1547)
!1549 = !DILocation(line: 314, column: 25, scope: !1547)
!1550 = !DILocation(line: 314, column: 43, scope: !1547)
!1551 = !DILocation(line: 314, column: 32, scope: !1547)
!1552 = !DILocation(line: 316, column: 28, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !109, line: 315, column: 19)
!1554 = !DILocation(line: 316, column: 22, scope: !1553)
!1555 = !DILocation(line: 316, column: 26, scope: !1553)
!1556 = !DILocation(line: 317, column: 23, scope: !1553)
!1557 = !DILocation(line: 318, column: 21, scope: !1553)
!1558 = !DILocation(line: 320, column: 19, scope: !1553)
!1559 = !DILocation(line: 0, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1367, file: !109, line: 202, column: 13)
!1561 = !DILocation(line: 0, scope: !1265)
!1562 = !DILocation(line: 325, column: 9, scope: !1289)
!1563 = !DILocation(line: 326, column: 29, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1289, file: !109, line: 325, column: 9)
!1565 = !DILocation(line: 326, column: 45, scope: !1564)
!1566 = !DILocation(line: 326, column: 27, scope: !1564)
!1567 = !DILocation(line: 326, column: 22, scope: !1564)
!1568 = !DILocation(line: 326, column: 13, scope: !1564)
!1569 = !DILocation(line: 325, column: 9, scope: !1564)
!1570 = !DILocation(line: 327, column: 56, scope: !1564)
!1571 = !DILocation(line: 327, column: 47, scope: !1564)
!1572 = !DILocation(line: 329, column: 12, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1564, file: !109, line: 328, column: 7)
!1574 = !DILocation(line: 332, column: 23, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1573, file: !109, line: 331, column: 13)
!1576 = !DILocation(line: 332, column: 20, scope: !1575)
!1577 = !DILocation(line: 332, column: 13, scope: !1575)
!1578 = !DILocation(line: 332, column: 40, scope: !1575)
!1579 = !DILocation(line: 334, column: 21, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !109, line: 333, column: 11)
!1581 = !DILocation(line: 335, column: 25, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1580, file: !109, line: 335, column: 17)
!1583 = !DILocation(line: 335, column: 17, scope: !1580)
!1584 = !DILocation(line: 337, column: 18, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !109, line: 336, column: 15)
!1586 = !DILocation(line: 337, column: 22, scope: !1585)
!1587 = !DILocation(line: 338, column: 19, scope: !1585)
!1588 = !DILocation(line: 339, column: 17, scope: !1585)
!1589 = !DILocation(line: 340, column: 15, scope: !1585)
!1590 = !DILocation(line: 0, scope: !1545)
!1591 = !DILocation(line: 347, column: 5, scope: !1289)
!1592 = !DILocation(line: 0, scope: !1292)
!1593 = !DILocation(line: 0, scope: !1289)
!1594 = !DILocation(line: 349, column: 25, scope: !1292)
!1595 = !DILocation(line: 349, column: 21, scope: !1292)
!1596 = !DILocation(line: 350, column: 22, scope: !1292)
!1597 = !DILocation(line: 350, column: 10, scope: !1292)
!1598 = !DILocation(line: 350, column: 14, scope: !1292)
!1599 = !DILocation(line: 352, column: 17, scope: !1289)
!1600 = !DILocation(line: 352, column: 24, scope: !1289)
!1601 = !DILocation(line: 351, column: 7, scope: !1292)
!1602 = distinct !{!1602, !1591, !1603}
!1603 = !DILocation(line: 352, column: 28, scope: !1289)
!1604 = !DILocation(line: 0, scope: !1275)
!1605 = !DILocation(line: 0, scope: !1439)
!1606 = !DILocation(line: 356, column: 12, scope: !1320)
!1607 = !DILocation(line: 356, column: 7, scope: !1210)
!1608 = !DILocation(line: 357, column: 37, scope: !1320)
!1609 = !DILocation(line: 79, column: 21, scope: !1299, inlinedAt: !1319)
!1610 = !DILocation(line: 79, column: 36, scope: !1299, inlinedAt: !1319)
!1611 = !DILocation(line: 80, column: 27, scope: !1299, inlinedAt: !1319)
!1612 = !DILocation(line: 80, column: 49, scope: !1299, inlinedAt: !1319)
!1613 = !DILocation(line: 83, column: 10, scope: !1299, inlinedAt: !1319)
!1614 = !DILocation(line: 84, column: 29, scope: !1299, inlinedAt: !1319)
!1615 = !DILocation(line: 84, column: 10, scope: !1299, inlinedAt: !1319)
!1616 = !DILocation(line: 85, column: 10, scope: !1299, inlinedAt: !1319)
!1617 = !DILocation(line: 89, column: 3, scope: !1299, inlinedAt: !1319)
!1618 = !DILocation(line: 91, column: 3, scope: !1299, inlinedAt: !1319)
!1619 = !DILocation(line: 82, column: 18, scope: !1299, inlinedAt: !1319)
!1620 = !DILocation(line: 96, column: 25, scope: !1312, inlinedAt: !1319)
!1621 = !DILocation(line: 96, column: 21, scope: !1312, inlinedAt: !1319)
!1622 = !DILocation(line: 98, column: 11, scope: !1623, inlinedAt: !1319)
!1623 = distinct !DILexicalBlock(scope: !1312, file: !109, line: 98, column: 11)
!1624 = !DILocation(line: 100, column: 24, scope: !1625, inlinedAt: !1319)
!1625 = distinct !DILexicalBlock(scope: !1623, file: !109, line: 99, column: 9)
!1626 = !DILocation(line: 100, column: 37, scope: !1625, inlinedAt: !1319)
!1627 = !DILocation(line: 100, column: 22, scope: !1625, inlinedAt: !1319)
!1628 = !DILocation(line: 98, column: 11, scope: !1312, inlinedAt: !1319)
!1629 = !DILocation(line: 104, column: 13, scope: !1630, inlinedAt: !1319)
!1630 = distinct !DILexicalBlock(scope: !1312, file: !109, line: 104, column: 11)
!1631 = !DILocation(line: 104, column: 11, scope: !1312, inlinedAt: !1319)
!1632 = !DILocation(line: 107, column: 9, scope: !1312, inlinedAt: !1319)
!1633 = !DILocation(line: 108, column: 9, scope: !1312, inlinedAt: !1319)
!1634 = !DILocation(line: 109, column: 22, scope: !1312, inlinedAt: !1319)
!1635 = !DILocation(line: 109, column: 7, scope: !1312, inlinedAt: !1319)
!1636 = !DILocation(line: 110, column: 13, scope: !1637, inlinedAt: !1319)
!1637 = distinct !DILexicalBlock(scope: !1312, file: !109, line: 110, column: 11)
!1638 = !DILocation(line: 110, column: 11, scope: !1312, inlinedAt: !1319)
!1639 = !DILocation(line: 101, column: 19, scope: !1625, inlinedAt: !1319)
!1640 = !DILocation(line: 113, column: 9, scope: !1312, inlinedAt: !1319)
!1641 = !DILocation(line: 114, column: 7, scope: !1312, inlinedAt: !1319)
!1642 = !DILocation(line: 116, column: 1, scope: !1299, inlinedAt: !1319)
!1643 = !DILocation(line: 357, column: 5, scope: !1320)
!1644 = !DILocation(line: 359, column: 12, scope: !1297)
!1645 = !DILocation(line: 359, column: 7, scope: !1210)
!1646 = !DILocation(line: 361, column: 20, scope: !1295)
!1647 = !DILocation(line: 361, column: 11, scope: !1296)
!1648 = !DILocation(line: 363, column: 21, scope: !1294)
!1649 = !DILocation(line: 365, column: 33, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !109, line: 365, column: 11)
!1651 = distinct !DILexicalBlock(scope: !1294, file: !109, line: 365, column: 11)
!1652 = !DILocation(line: 365, column: 11, scope: !1651)
!1653 = distinct !{!1653, !1652, !1654}
!1654 = !DILocation(line: 367, column: 15, scope: !1651)
!1655 = !DILocation(line: 0, scope: !1580)
!1656 = !DILocation(line: 370, column: 29, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1296, file: !109, line: 370, column: 11)
!1658 = !DILocation(line: 370, column: 21, scope: !1657)
!1659 = !DILocation(line: 370, column: 50, scope: !1657)
!1660 = !DILocation(line: 370, column: 41, scope: !1657)
!1661 = !DILocation(line: 371, column: 17, scope: !1657)
!1662 = !DILocation(line: 371, column: 20, scope: !1657)
!1663 = !DILocation(line: 371, column: 9, scope: !1657)
!1664 = !DILocation(line: 373, column: 11, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1296, file: !109, line: 373, column: 11)
!1666 = !DILocation(line: 373, column: 11, scope: !1296)
!1667 = !DILocation(line: 374, column: 31, scope: !1665)
!1668 = !DILocation(line: 374, column: 62, scope: !1665)
!1669 = !DILocation(line: 374, column: 50, scope: !1665)
!1670 = !DILocation(line: 376, column: 25, scope: !1665)
!1671 = !DILocation(line: 374, column: 23, scope: !1665)
!1672 = !DILocation(line: 374, column: 17, scope: !1665)
!1673 = !DILocation(line: 374, column: 20, scope: !1665)
!1674 = !DILocation(line: 374, column: 9, scope: !1665)
!1675 = !DILocation(line: 0, scope: !1657)
!1676 = !DILocation(line: 378, column: 16, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1296, file: !109, line: 378, column: 11)
!1678 = !DILocation(line: 378, column: 11, scope: !1296)
!1679 = !DILocation(line: 380, column: 40, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !109, line: 380, column: 15)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !109, line: 379, column: 9)
!1682 = !DILocation(line: 381, column: 21, scope: !1680)
!1683 = !DILocation(line: 381, column: 24, scope: !1680)
!1684 = !DILocation(line: 381, column: 13, scope: !1680)
!1685 = !DILocation(line: 0, scope: !1665)
!1686 = !DILocation(line: 382, column: 19, scope: !1681)
!1687 = !DILocation(line: 382, column: 22, scope: !1681)
!1688 = !DILocation(line: 383, column: 9, scope: !1681)
!1689 = !DILocation(line: 386, column: 12, scope: !1210)
!1690 = !DILocation(line: 389, column: 1, scope: !1210)
!1691 = !DILocation(line: 365, column: 56, scope: !1650)
!1692 = distinct !DISubprogram(name: "human_options", scope: !109, file: !109, line: 462, type: !1693, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1696)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!97, !61, !66, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!1696 = !{!1697, !1698, !1699, !1700}
!1697 = !DILocalVariable(name: "spec", arg: 1, scope: !1692, file: !109, line: 462, type: !61)
!1698 = !DILocalVariable(name: "opts", arg: 2, scope: !1692, file: !109, line: 462, type: !66)
!1699 = !DILocalVariable(name: "block_size", arg: 3, scope: !1692, file: !109, line: 462, type: !1695)
!1700 = !DILocalVariable(name: "e", scope: !1692, file: !109, line: 464, type: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !98, line: 39, baseType: !97)
!1702 = !DILocation(line: 462, column: 28, scope: !1692)
!1703 = !DILocation(line: 462, column: 39, scope: !1692)
!1704 = !DILocation(line: 462, column: 56, scope: !1692)
!1705 = !DILocalVariable(name: "spec", arg: 1, scope: !1706, file: !109, line: 412, type: !61)
!1706 = distinct !DISubprogram(name: "humblock", scope: !109, file: !109, line: 412, type: !1707, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!1701, !61, !1695, !66}
!1709 = !{!1705, !1710, !1711, !1712, !1713, !1714, !1719}
!1710 = !DILocalVariable(name: "block_size", arg: 2, scope: !1706, file: !109, line: 412, type: !1695)
!1711 = !DILocalVariable(name: "options", arg: 3, scope: !1706, file: !109, line: 412, type: !66)
!1712 = !DILocalVariable(name: "i", scope: !1706, file: !109, line: 414, type: !64)
!1713 = !DILocalVariable(name: "opts", scope: !1706, file: !109, line: 415, type: !64)
!1714 = !DILocalVariable(name: "ptr", scope: !1715, file: !109, line: 436, type: !43)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !109, line: 435, column: 9)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !109, line: 429, column: 11)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !109, line: 422, column: 5)
!1718 = distinct !DILexicalBlock(scope: !1706, file: !109, line: 417, column: 7)
!1719 = !DILocalVariable(name: "e", scope: !1715, file: !109, line: 437, type: !1701)
!1720 = !DILocation(line: 412, column: 23, scope: !1706, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 464, column: 20, scope: !1692)
!1722 = !DILocation(line: 412, column: 40, scope: !1706, inlinedAt: !1721)
!1723 = !DILocation(line: 412, column: 57, scope: !1706, inlinedAt: !1721)
!1724 = !DILocation(line: 415, column: 7, scope: !1706, inlinedAt: !1721)
!1725 = !DILocation(line: 417, column: 9, scope: !1718, inlinedAt: !1721)
!1726 = !DILocation(line: 418, column: 7, scope: !1718, inlinedAt: !1721)
!1727 = !DILocation(line: 418, column: 20, scope: !1718, inlinedAt: !1721)
!1728 = !DILocation(line: 418, column: 18, scope: !1718, inlinedAt: !1721)
!1729 = !DILocation(line: 419, column: 7, scope: !1718, inlinedAt: !1721)
!1730 = !DILocation(line: 419, column: 20, scope: !1718, inlinedAt: !1721)
!1731 = !DILocation(line: 419, column: 18, scope: !1718, inlinedAt: !1721)
!1732 = !DILocation(line: 417, column: 7, scope: !1706, inlinedAt: !1721)
!1733 = !DILocation(line: 408, column: 10, scope: !1734, inlinedAt: !1737)
!1734 = distinct !DISubprogram(name: "default_block_size", scope: !109, file: !109, line: 406, type: !1735, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !75)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!883}
!1737 = distinct !DILocation(line: 420, column: 19, scope: !1718, inlinedAt: !1721)
!1738 = !DILocation(line: 420, column: 17, scope: !1718, inlinedAt: !1721)
!1739 = !{!931, !931, i64 0}
!1740 = !DILocation(line: 420, column: 5, scope: !1718, inlinedAt: !1721)
!1741 = !DILocation(line: 423, column: 11, scope: !1742, inlinedAt: !1721)
!1742 = distinct !DILexicalBlock(scope: !1717, file: !109, line: 423, column: 11)
!1743 = !DILocation(line: 423, column: 17, scope: !1742, inlinedAt: !1721)
!1744 = !DILocation(line: 426, column: 15, scope: !1745, inlinedAt: !1721)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !109, line: 424, column: 9)
!1746 = !DILocation(line: 423, column: 11, scope: !1717, inlinedAt: !1721)
!1747 = !DILocation(line: 429, column: 21, scope: !1716, inlinedAt: !1721)
!1748 = !DILocation(line: 414, column: 7, scope: !1706, inlinedAt: !1721)
!1749 = !DILocation(line: 429, column: 13, scope: !1716, inlinedAt: !1721)
!1750 = !DILocation(line: 429, column: 11, scope: !1717, inlinedAt: !1721)
!1751 = !DILocation(line: 431, column: 19, scope: !1752, inlinedAt: !1721)
!1752 = distinct !DILexicalBlock(scope: !1716, file: !109, line: 430, column: 9)
!1753 = !DILocation(line: 431, column: 16, scope: !1752, inlinedAt: !1721)
!1754 = !DILocation(line: 432, column: 23, scope: !1752, inlinedAt: !1721)
!1755 = !DILocation(line: 433, column: 9, scope: !1752, inlinedAt: !1721)
!1756 = !DILocation(line: 436, column: 11, scope: !1715, inlinedAt: !1721)
!1757 = !DILocation(line: 436, column: 17, scope: !1715, inlinedAt: !1721)
!1758 = !DILocation(line: 437, column: 28, scope: !1715, inlinedAt: !1721)
!1759 = !DILocation(line: 437, column: 24, scope: !1715, inlinedAt: !1721)
!1760 = !DILocation(line: 439, column: 17, scope: !1761, inlinedAt: !1721)
!1761 = distinct !DILexicalBlock(scope: !1715, file: !109, line: 439, column: 15)
!1762 = !DILocation(line: 439, column: 15, scope: !1715, inlinedAt: !1721)
!1763 = !DILocation(line: 444, column: 28, scope: !1764, inlinedAt: !1721)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !109, line: 444, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1715, file: !109, line: 444, column: 11)
!1766 = !DILocation(line: 444, column: 34, scope: !1764, inlinedAt: !1721)
!1767 = !DILocation(line: 444, column: 11, scope: !1765, inlinedAt: !1721)
!1768 = distinct !{!1768, !1769, !1770}
!1769 = !DILocation(line: 444, column: 11, scope: !1765)
!1770 = !DILocation(line: 453, column: 15, scope: !1765)
!1771 = !DILocation(line: 445, column: 22, scope: !1772, inlinedAt: !1721)
!1772 = distinct !DILexicalBlock(scope: !1764, file: !109, line: 445, column: 17)
!1773 = !DILocation(line: 444, column: 56, scope: !1764, inlinedAt: !1721)
!1774 = !DILocation(line: 445, column: 17, scope: !1764, inlinedAt: !1721)
!1775 = !DILocation(line: 447, column: 22, scope: !1776, inlinedAt: !1721)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !109, line: 446, column: 15)
!1777 = !DILocation(line: 448, column: 21, scope: !1778, inlinedAt: !1721)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !109, line: 448, column: 21)
!1779 = !DILocation(line: 448, column: 29, scope: !1778, inlinedAt: !1721)
!1780 = !DILocation(line: 449, column: 24, scope: !1778, inlinedAt: !1721)
!1781 = !DILocation(line: 448, column: 21, scope: !1776, inlinedAt: !1721)
!1782 = !DILocation(line: 450, column: 36, scope: !1783, inlinedAt: !1721)
!1783 = distinct !DILexicalBlock(scope: !1776, file: !109, line: 450, column: 21)
!1784 = !DILocation(line: 450, column: 39, scope: !1783, inlinedAt: !1721)
!1785 = !DILocation(line: 450, column: 47, scope: !1783, inlinedAt: !1721)
!1786 = !DILocation(line: 450, column: 21, scope: !1776, inlinedAt: !1721)
!1787 = !DILocation(line: 451, column: 24, scope: !1783, inlinedAt: !1721)
!1788 = !DILocation(line: 451, column: 19, scope: !1783, inlinedAt: !1721)
!1789 = !DILocation(line: 454, column: 9, scope: !1716, inlinedAt: !1721)
!1790 = !DILocation(line: 441, column: 24, scope: !1791, inlinedAt: !1721)
!1791 = distinct !DILexicalBlock(scope: !1761, file: !109, line: 440, column: 13)
!1792 = !DILocation(line: 0, scope: !1706, inlinedAt: !1721)
!1793 = !DILocation(line: 457, column: 12, scope: !1706, inlinedAt: !1721)
!1794 = !DILocation(line: 458, column: 3, scope: !1706, inlinedAt: !1721)
!1795 = !DILocation(line: 0, scope: !1791, inlinedAt: !1721)
!1796 = !DILocation(line: 464, column: 16, scope: !1692)
!1797 = !DILocation(line: 465, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1692, file: !109, line: 465, column: 7)
!1799 = !DILocation(line: 465, column: 19, scope: !1798)
!1800 = !DILocation(line: 465, column: 7, scope: !1692)
!1801 = !DILocation(line: 408, column: 10, scope: !1734, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 467, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !109, line: 466, column: 5)
!1804 = !DILocation(line: 467, column: 19, scope: !1803)
!1805 = !DILocation(line: 469, column: 5, scope: !1803)
!1806 = !DILocation(line: 0, scope: !1692)
!1807 = !DILocation(line: 470, column: 3, scope: !1692)
!1808 = distinct !DISubprogram(name: "set_program_name", scope: !129, file: !129, line: 39, type: !679, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !125, retainedNodes: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DILocalVariable(name: "argv0", arg: 1, scope: !1808, file: !129, line: 39, type: !61)
!1811 = !DILocalVariable(name: "slash", scope: !1808, file: !129, line: 46, type: !61)
!1812 = !DILocalVariable(name: "base", scope: !1808, file: !129, line: 47, type: !61)
!1813 = !DILocation(line: 39, column: 31, scope: !1808)
!1814 = !DILocation(line: 51, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !129, line: 51, column: 7)
!1816 = !DILocation(line: 51, column: 7, scope: !1808)
!1817 = !DILocation(line: 55, column: 14, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !129, line: 52, column: 5)
!1819 = !DILocation(line: 54, column: 7, scope: !1818)
!1820 = !DILocation(line: 56, column: 7, scope: !1818)
!1821 = !DILocation(line: 59, column: 11, scope: !1808)
!1822 = !DILocation(line: 46, column: 15, scope: !1808)
!1823 = !DILocation(line: 60, column: 17, scope: !1808)
!1824 = !DILocation(line: 60, column: 33, scope: !1808)
!1825 = !DILocation(line: 60, column: 11, scope: !1808)
!1826 = !DILocation(line: 47, column: 15, scope: !1808)
!1827 = !DILocation(line: 61, column: 12, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1808, file: !129, line: 61, column: 7)
!1829 = !DILocation(line: 61, column: 20, scope: !1828)
!1830 = !DILocation(line: 61, column: 25, scope: !1828)
!1831 = !DILocation(line: 61, column: 42, scope: !1828)
!1832 = !DILocation(line: 61, column: 28, scope: !1828)
!1833 = !DILocation(line: 61, column: 61, scope: !1828)
!1834 = !DILocation(line: 61, column: 7, scope: !1808)
!1835 = !DILocation(line: 64, column: 11, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !129, line: 64, column: 11)
!1837 = distinct !DILexicalBlock(scope: !1828, file: !129, line: 62, column: 5)
!1838 = !DILocation(line: 64, column: 36, scope: !1836)
!1839 = !DILocation(line: 64, column: 11, scope: !1837)
!1840 = !DILocation(line: 66, column: 24, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !129, line: 65, column: 9)
!1842 = !DILocation(line: 70, column: 41, scope: !1841)
!1843 = !DILocation(line: 72, column: 9, scope: !1841)
!1844 = !DILocation(line: 84, column: 16, scope: !1808)
!1845 = !DILocation(line: 90, column: 27, scope: !1808)
!1846 = !DILocation(line: 92, column: 1, scope: !1808)
!1847 = distinct !DISubprogram(name: "clone_quoting_options", scope: !160, file: !160, line: 122, type: !1848, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1851)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1850, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1851 = !{!1852, !1853, !1854}
!1852 = !DILocalVariable(name: "o", arg: 1, scope: !1847, file: !160, line: 122, type: !1850)
!1853 = !DILocalVariable(name: "e", scope: !1847, file: !160, line: 124, type: !64)
!1854 = !DILocalVariable(name: "p", scope: !1847, file: !160, line: 125, type: !1850)
!1855 = !DILocation(line: 122, column: 48, scope: !1847)
!1856 = !DILocation(line: 124, column: 11, scope: !1847)
!1857 = !DILocation(line: 124, column: 7, scope: !1847)
!1858 = !DILocation(line: 125, column: 40, scope: !1847)
!1859 = !DILocation(line: 125, column: 31, scope: !1847)
!1860 = !DILocation(line: 125, column: 27, scope: !1847)
!1861 = !DILocation(line: 127, column: 9, scope: !1847)
!1862 = !DILocation(line: 128, column: 3, scope: !1847)
!1863 = distinct !DISubprogram(name: "get_quoting_style", scope: !160, file: !160, line: 133, type: !1864, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1868)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!5, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1868 = !{!1869}
!1869 = !DILocalVariable(name: "o", arg: 1, scope: !1863, file: !160, line: 133, type: !1866)
!1870 = !DILocation(line: 133, column: 50, scope: !1863)
!1871 = !DILocation(line: 135, column: 11, scope: !1863)
!1872 = !DILocation(line: 135, column: 46, scope: !1863)
!1873 = !{!1874, !706, i64 0}
!1874 = !{!"quoting_options", !706, i64 0, !790, i64 4, !706, i64 8, !705, i64 40, !705, i64 48}
!1875 = !DILocation(line: 135, column: 3, scope: !1863)
!1876 = distinct !DISubprogram(name: "set_quoting_style", scope: !160, file: !160, line: 141, type: !1877, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1850, !5}
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "o", arg: 1, scope: !1876, file: !160, line: 141, type: !1850)
!1881 = !DILocalVariable(name: "s", arg: 2, scope: !1876, file: !160, line: 141, type: !5)
!1882 = !DILocation(line: 141, column: 44, scope: !1876)
!1883 = !DILocation(line: 141, column: 66, scope: !1876)
!1884 = !DILocation(line: 143, column: 4, scope: !1876)
!1885 = !DILocation(line: 143, column: 39, scope: !1876)
!1886 = !DILocation(line: 143, column: 45, scope: !1876)
!1887 = !DILocation(line: 144, column: 1, scope: !1876)
!1888 = distinct !DISubprogram(name: "set_char_quoting", scope: !160, file: !160, line: 152, type: !1889, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!64, !1850, !44, !64}
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1898, !1899}
!1892 = !DILocalVariable(name: "o", arg: 1, scope: !1888, file: !160, line: 152, type: !1850)
!1893 = !DILocalVariable(name: "c", arg: 2, scope: !1888, file: !160, line: 152, type: !44)
!1894 = !DILocalVariable(name: "i", arg: 3, scope: !1888, file: !160, line: 152, type: !64)
!1895 = !DILocalVariable(name: "uc", scope: !1888, file: !160, line: 154, type: !47)
!1896 = !DILocalVariable(name: "p", scope: !1888, file: !160, line: 155, type: !1897)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1898 = !DILocalVariable(name: "shift", scope: !1888, file: !160, line: 157, type: !64)
!1899 = !DILocalVariable(name: "r", scope: !1888, file: !160, line: 158, type: !64)
!1900 = !DILocation(line: 152, column: 43, scope: !1888)
!1901 = !DILocation(line: 152, column: 51, scope: !1888)
!1902 = !DILocation(line: 152, column: 58, scope: !1888)
!1903 = !DILocation(line: 154, column: 17, scope: !1888)
!1904 = !DILocation(line: 156, column: 6, scope: !1888)
!1905 = !DILocation(line: 156, column: 62, scope: !1888)
!1906 = !DILocation(line: 156, column: 57, scope: !1888)
!1907 = !DILocation(line: 155, column: 17, scope: !1888)
!1908 = !DILocation(line: 157, column: 15, scope: !1888)
!1909 = !DILocation(line: 157, column: 7, scope: !1888)
!1910 = !DILocation(line: 158, column: 12, scope: !1888)
!1911 = !DILocation(line: 158, column: 15, scope: !1888)
!1912 = !DILocation(line: 158, column: 25, scope: !1888)
!1913 = !DILocation(line: 158, column: 7, scope: !1888)
!1914 = !DILocation(line: 159, column: 13, scope: !1888)
!1915 = !DILocation(line: 159, column: 18, scope: !1888)
!1916 = !DILocation(line: 159, column: 23, scope: !1888)
!1917 = !DILocation(line: 159, column: 6, scope: !1888)
!1918 = !DILocation(line: 160, column: 3, scope: !1888)
!1919 = distinct !DISubprogram(name: "set_quoting_flags", scope: !160, file: !160, line: 168, type: !1920, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!64, !1850, !64}
!1922 = !{!1923, !1924, !1925}
!1923 = !DILocalVariable(name: "o", arg: 1, scope: !1919, file: !160, line: 168, type: !1850)
!1924 = !DILocalVariable(name: "i", arg: 2, scope: !1919, file: !160, line: 168, type: !64)
!1925 = !DILocalVariable(name: "r", scope: !1919, file: !160, line: 170, type: !64)
!1926 = !DILocation(line: 168, column: 44, scope: !1919)
!1927 = !DILocation(line: 168, column: 51, scope: !1919)
!1928 = !DILocation(line: 171, column: 8, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1919, file: !160, line: 171, column: 7)
!1930 = !DILocation(line: 171, column: 7, scope: !1919)
!1931 = !DILocation(line: 173, column: 10, scope: !1919)
!1932 = !{!1874, !790, i64 4}
!1933 = !DILocation(line: 170, column: 7, scope: !1919)
!1934 = !DILocation(line: 174, column: 12, scope: !1919)
!1935 = !DILocation(line: 175, column: 3, scope: !1919)
!1936 = distinct !DISubprogram(name: "set_custom_quoting", scope: !160, file: !160, line: 179, type: !1937, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1850, !61, !61}
!1939 = !{!1940, !1941, !1942}
!1940 = !DILocalVariable(name: "o", arg: 1, scope: !1936, file: !160, line: 179, type: !1850)
!1941 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1936, file: !160, line: 180, type: !61)
!1942 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1936, file: !160, line: 180, type: !61)
!1943 = !DILocation(line: 179, column: 45, scope: !1936)
!1944 = !DILocation(line: 180, column: 33, scope: !1936)
!1945 = !DILocation(line: 180, column: 57, scope: !1936)
!1946 = !DILocation(line: 182, column: 8, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1936, file: !160, line: 182, column: 7)
!1948 = !DILocation(line: 182, column: 7, scope: !1936)
!1949 = !DILocation(line: 184, column: 6, scope: !1936)
!1950 = !DILocation(line: 184, column: 12, scope: !1936)
!1951 = !DILocation(line: 185, column: 8, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1936, file: !160, line: 185, column: 7)
!1953 = !DILocation(line: 185, column: 23, scope: !1952)
!1954 = !DILocation(line: 185, column: 19, scope: !1952)
!1955 = !DILocation(line: 186, column: 5, scope: !1952)
!1956 = !DILocation(line: 187, column: 6, scope: !1936)
!1957 = !DILocation(line: 187, column: 17, scope: !1936)
!1958 = !{!1874, !705, i64 40}
!1959 = !DILocation(line: 188, column: 6, scope: !1936)
!1960 = !DILocation(line: 188, column: 18, scope: !1936)
!1961 = !{!1874, !705, i64 48}
!1962 = !DILocation(line: 189, column: 1, scope: !1936)
!1963 = distinct !DISubprogram(name: "quotearg_buffer", scope: !160, file: !160, line: 784, type: !1964, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!48, !43, !48, !61, !48, !1866}
!1966 = !{!1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1967 = !DILocalVariable(name: "buffer", arg: 1, scope: !1963, file: !160, line: 784, type: !43)
!1968 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1963, file: !160, line: 784, type: !48)
!1969 = !DILocalVariable(name: "arg", arg: 3, scope: !1963, file: !160, line: 785, type: !61)
!1970 = !DILocalVariable(name: "argsize", arg: 4, scope: !1963, file: !160, line: 785, type: !48)
!1971 = !DILocalVariable(name: "o", arg: 5, scope: !1963, file: !160, line: 786, type: !1866)
!1972 = !DILocalVariable(name: "p", scope: !1963, file: !160, line: 788, type: !1866)
!1973 = !DILocalVariable(name: "e", scope: !1963, file: !160, line: 789, type: !64)
!1974 = !DILocalVariable(name: "r", scope: !1963, file: !160, line: 790, type: !48)
!1975 = !DILocation(line: 784, column: 24, scope: !1963)
!1976 = !DILocation(line: 784, column: 39, scope: !1963)
!1977 = !DILocation(line: 785, column: 30, scope: !1963)
!1978 = !DILocation(line: 785, column: 42, scope: !1963)
!1979 = !DILocation(line: 786, column: 48, scope: !1963)
!1980 = !DILocation(line: 788, column: 37, scope: !1963)
!1981 = !DILocation(line: 788, column: 33, scope: !1963)
!1982 = !DILocation(line: 789, column: 11, scope: !1963)
!1983 = !DILocation(line: 789, column: 7, scope: !1963)
!1984 = !DILocation(line: 791, column: 43, scope: !1963)
!1985 = !DILocation(line: 791, column: 53, scope: !1963)
!1986 = !DILocation(line: 791, column: 60, scope: !1963)
!1987 = !DILocation(line: 792, column: 43, scope: !1963)
!1988 = !DILocation(line: 792, column: 58, scope: !1963)
!1989 = !DILocation(line: 790, column: 14, scope: !1963)
!1990 = !DILocation(line: 790, column: 10, scope: !1963)
!1991 = !DILocation(line: 793, column: 9, scope: !1963)
!1992 = !DILocation(line: 794, column: 3, scope: !1963)
!1993 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !160, file: !160, line: 256, type: !1994, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !1998)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!48, !43, !48, !61, !48, !5, !64, !1996, !61, !61}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2023, !2024, !2025, !2026, !2027, !2030, !2031, !2047, !2050, !2051, !2058}
!1999 = !DILocalVariable(name: "buffer", arg: 1, scope: !1993, file: !160, line: 256, type: !43)
!2000 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1993, file: !160, line: 256, type: !48)
!2001 = !DILocalVariable(name: "arg", arg: 3, scope: !1993, file: !160, line: 257, type: !61)
!2002 = !DILocalVariable(name: "argsize", arg: 4, scope: !1993, file: !160, line: 257, type: !48)
!2003 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1993, file: !160, line: 258, type: !5)
!2004 = !DILocalVariable(name: "flags", arg: 6, scope: !1993, file: !160, line: 258, type: !64)
!2005 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1993, file: !160, line: 259, type: !1996)
!2006 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1993, file: !160, line: 260, type: !61)
!2007 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1993, file: !160, line: 261, type: !61)
!2008 = !DILocalVariable(name: "i", scope: !1993, file: !160, line: 263, type: !48)
!2009 = !DILocalVariable(name: "len", scope: !1993, file: !160, line: 264, type: !48)
!2010 = !DILocalVariable(name: "orig_buffersize", scope: !1993, file: !160, line: 265, type: !48)
!2011 = !DILocalVariable(name: "quote_string", scope: !1993, file: !160, line: 266, type: !61)
!2012 = !DILocalVariable(name: "quote_string_len", scope: !1993, file: !160, line: 267, type: !48)
!2013 = !DILocalVariable(name: "backslash_escapes", scope: !1993, file: !160, line: 268, type: !70)
!2014 = !DILocalVariable(name: "unibyte_locale", scope: !1993, file: !160, line: 269, type: !70)
!2015 = !DILocalVariable(name: "elide_outer_quotes", scope: !1993, file: !160, line: 270, type: !70)
!2016 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1993, file: !160, line: 271, type: !70)
!2017 = !DILocalVariable(name: "encountered_single_quote", scope: !1993, file: !160, line: 272, type: !70)
!2018 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1993, file: !160, line: 273, type: !70)
!2019 = !DILocalVariable(name: "c", scope: !2020, file: !160, line: 402, type: !47)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !160, line: 401, column: 5)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !160, line: 400, column: 3)
!2022 = distinct !DILexicalBlock(scope: !1993, file: !160, line: 400, column: 3)
!2023 = !DILocalVariable(name: "esc", scope: !2020, file: !160, line: 403, type: !47)
!2024 = !DILocalVariable(name: "is_right_quote", scope: !2020, file: !160, line: 404, type: !70)
!2025 = !DILocalVariable(name: "escaping", scope: !2020, file: !160, line: 405, type: !70)
!2026 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2020, file: !160, line: 406, type: !70)
!2027 = !DILocalVariable(name: "m", scope: !2028, file: !160, line: 610, type: !48)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 608, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !160, line: 426, column: 9)
!2030 = !DILocalVariable(name: "printable", scope: !2028, file: !160, line: 612, type: !70)
!2031 = !DILocalVariable(name: "mbstate", scope: !2032, file: !160, line: 621, type: !2034)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !160, line: 620, column: 15)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !160, line: 614, column: 17)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2035, line: 6, baseType: !2036)
!2035 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2037, line: 21, baseType: !2038)
!2037 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2037, line: 13, size: 64, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2038, file: !2037, line: 15, baseType: !64, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2038, file: !2037, line: 20, baseType: !2042, size: 32, offset: 32)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !2037, line: 16, size: 32, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2042, file: !2037, line: 18, baseType: !7, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2042, file: !2037, line: 19, baseType: !2046, size: 32)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !68)
!2047 = !DILocalVariable(name: "w", scope: !2048, file: !160, line: 631, type: !2049)
!2048 = distinct !DILexicalBlock(scope: !2032, file: !160, line: 630, column: 19)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !49, line: 90, baseType: !64)
!2050 = !DILocalVariable(name: "bytes", scope: !2048, file: !160, line: 632, type: !48)
!2051 = !DILocalVariable(name: "j", scope: !2052, file: !160, line: 657, type: !48)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !160, line: 656, column: 27)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !160, line: 654, column: 29)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !160, line: 649, column: 23)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !160, line: 641, column: 30)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !160, line: 636, column: 30)
!2057 = distinct !DILexicalBlock(scope: !2048, file: !160, line: 634, column: 25)
!2058 = !DILocalVariable(name: "ilim", scope: !2059, file: !160, line: 684, type: !48)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !160, line: 681, column: 15)
!2060 = distinct !DILexicalBlock(scope: !2028, file: !160, line: 680, column: 17)
!2061 = !DILocation(line: 256, column: 33, scope: !1993)
!2062 = !DILocation(line: 256, column: 48, scope: !1993)
!2063 = !DILocation(line: 257, column: 39, scope: !1993)
!2064 = !DILocation(line: 257, column: 51, scope: !1993)
!2065 = !DILocation(line: 258, column: 46, scope: !1993)
!2066 = !DILocation(line: 258, column: 65, scope: !1993)
!2067 = !DILocation(line: 259, column: 47, scope: !1993)
!2068 = !DILocation(line: 260, column: 39, scope: !1993)
!2069 = !DILocation(line: 261, column: 39, scope: !1993)
!2070 = !DILocation(line: 264, column: 10, scope: !1993)
!2071 = !DILocation(line: 265, column: 10, scope: !1993)
!2072 = !DILocation(line: 266, column: 15, scope: !1993)
!2073 = !DILocation(line: 267, column: 10, scope: !1993)
!2074 = !DILocation(line: 268, column: 8, scope: !1993)
!2075 = !DILocation(line: 269, column: 25, scope: !1993)
!2076 = !DILocation(line: 269, column: 36, scope: !1993)
!2077 = !DILocation(line: 270, column: 8, scope: !1993)
!2078 = !DILocation(line: 271, column: 8, scope: !1993)
!2079 = !DILocation(line: 272, column: 8, scope: !1993)
!2080 = !DILocation(line: 273, column: 8, scope: !1993)
!2081 = !DILocation(line: 273, column: 3, scope: !1993)
!2082 = !DILocation(line: 0, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1993, file: !160, line: 317, column: 5)
!2084 = !DILocation(line: 316, column: 3, scope: !1993)
!2085 = !DILocation(line: 323, column: 11, scope: !2083)
!2086 = !DILocation(line: 323, column: 12, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !160, line: 323, column: 11)
!2088 = !DILocation(line: 324, column: 9, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !160, line: 324, column: 9)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !160, line: 324, column: 9)
!2091 = !DILocation(line: 324, column: 9, scope: !2090)
!2092 = !DILocation(line: 362, column: 26, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !160, line: 340, column: 11)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !160, line: 339, column: 13)
!2095 = distinct !DILexicalBlock(scope: !2083, file: !160, line: 338, column: 7)
!2096 = !DILocation(line: 363, column: 27, scope: !2093)
!2097 = !DILocation(line: 364, column: 11, scope: !2093)
!2098 = !DILocation(line: 365, column: 14, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !160, line: 365, column: 13)
!2100 = !DILocation(line: 365, column: 13, scope: !2095)
!2101 = !DILocation(line: 366, column: 43, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !160, line: 366, column: 11)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !160, line: 366, column: 11)
!2104 = !DILocation(line: 366, column: 11, scope: !2103)
!2105 = !DILocation(line: 367, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !160, line: 367, column: 13)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !160, line: 367, column: 13)
!2108 = !DILocation(line: 367, column: 13, scope: !2107)
!2109 = !DILocation(line: 366, column: 70, scope: !2102)
!2110 = distinct !{!2110, !2104, !2111}
!2111 = !DILocation(line: 367, column: 13, scope: !2103)
!2112 = !DILocation(line: 370, column: 28, scope: !2095)
!2113 = !DILocation(line: 372, column: 7, scope: !2083)
!2114 = !DILocation(line: 376, column: 7, scope: !2083)
!2115 = !DILocation(line: 379, column: 7, scope: !2083)
!2116 = !DILocation(line: 381, column: 12, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2083, file: !160, line: 381, column: 11)
!2118 = !DILocation(line: 381, column: 11, scope: !2083)
!2119 = !DILocation(line: 0, scope: !2117)
!2120 = !DILocation(line: 386, column: 12, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2083, file: !160, line: 386, column: 11)
!2122 = !DILocation(line: 386, column: 11, scope: !2083)
!2123 = !DILocation(line: 387, column: 9, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !160, line: 387, column: 9)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !160, line: 387, column: 9)
!2126 = !DILocation(line: 387, column: 9, scope: !2125)
!2127 = !DILocation(line: 394, column: 7, scope: !2083)
!2128 = !DILocation(line: 397, column: 7, scope: !2083)
!2129 = !DILocation(line: 0, scope: !1993)
!2130 = !DILocation(line: 263, column: 10, scope: !1993)
!2131 = !DILocation(line: 400, column: 8, scope: !2022)
!2132 = !DILocation(line: 0, scope: !2021)
!2133 = !DILocation(line: 400, column: 27, scope: !2021)
!2134 = !DILocation(line: 400, column: 19, scope: !2021)
!2135 = !DILocation(line: 400, column: 41, scope: !2021)
!2136 = !DILocation(line: 400, column: 48, scope: !2021)
!2137 = !DILocation(line: 400, column: 3, scope: !2022)
!2138 = !DILocation(line: 400, column: 60, scope: !2021)
!2139 = !DILocation(line: 404, column: 12, scope: !2020)
!2140 = !DILocation(line: 405, column: 12, scope: !2020)
!2141 = !DILocation(line: 406, column: 12, scope: !2020)
!2142 = !DILocation(line: 409, column: 11, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2020, file: !160, line: 408, column: 11)
!2144 = !DILocation(line: 411, column: 17, scope: !2143)
!2145 = !DILocation(line: 412, column: 39, scope: !2143)
!2146 = !DILocation(line: 416, column: 32, scope: !2143)
!2147 = !DILocation(line: 412, column: 19, scope: !2143)
!2148 = !DILocation(line: 412, column: 15, scope: !2143)
!2149 = !DILocation(line: 417, column: 11, scope: !2143)
!2150 = !DILocation(line: 417, column: 26, scope: !2143)
!2151 = !DILocation(line: 417, column: 14, scope: !2143)
!2152 = !DILocation(line: 417, column: 63, scope: !2143)
!2153 = !DILocation(line: 408, column: 11, scope: !2020)
!2154 = !DILocation(line: 0, scope: !2020)
!2155 = !DILocation(line: 424, column: 11, scope: !2020)
!2156 = !DILocation(line: 402, column: 21, scope: !2020)
!2157 = !DILocation(line: 425, column: 7, scope: !2020)
!2158 = !DILocation(line: 428, column: 15, scope: !2029)
!2159 = !DILocation(line: 430, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !160, line: 430, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !160, line: 429, column: 13)
!2162 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 428, column: 15)
!2163 = !DILocation(line: 430, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !160, line: 430, column: 15)
!2165 = !DILocation(line: 430, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !160, line: 430, column: 15)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !160, line: 430, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !160, line: 430, column: 15)
!2169 = !DILocation(line: 430, column: 15, scope: !2167)
!2170 = !DILocation(line: 430, column: 15, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !160, line: 430, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !160, line: 430, column: 15)
!2173 = !DILocation(line: 430, column: 15, scope: !2172)
!2174 = !DILocation(line: 430, column: 15, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !160, line: 430, column: 15)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !160, line: 430, column: 15)
!2177 = !DILocation(line: 430, column: 15, scope: !2176)
!2178 = !DILocation(line: 430, column: 15, scope: !2168)
!2179 = !DILocation(line: 430, column: 15, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !160, line: 430, column: 15)
!2181 = distinct !DILexicalBlock(scope: !2160, file: !160, line: 430, column: 15)
!2182 = !DILocation(line: 430, column: 15, scope: !2181)
!2183 = !DILocation(line: 438, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2161, file: !160, line: 437, column: 19)
!2185 = !DILocation(line: 438, column: 24, scope: !2184)
!2186 = !DILocation(line: 438, column: 28, scope: !2184)
!2187 = !DILocation(line: 438, column: 38, scope: !2184)
!2188 = !DILocation(line: 438, column: 48, scope: !2184)
!2189 = !DILocation(line: 438, column: 59, scope: !2184)
!2190 = !DILocation(line: 440, column: 19, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !160, line: 440, column: 19)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !160, line: 440, column: 19)
!2193 = distinct !DILexicalBlock(scope: !2184, file: !160, line: 439, column: 17)
!2194 = !DILocation(line: 440, column: 19, scope: !2192)
!2195 = !DILocation(line: 441, column: 19, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !160, line: 441, column: 19)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !160, line: 441, column: 19)
!2198 = !DILocation(line: 441, column: 19, scope: !2197)
!2199 = !DILocation(line: 442, column: 17, scope: !2193)
!2200 = !DILocation(line: 449, column: 20, scope: !2162)
!2201 = !DILocation(line: 454, column: 11, scope: !2029)
!2202 = !DILocation(line: 457, column: 19, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 455, column: 13)
!2204 = !DILocation(line: 463, column: 19, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !160, line: 462, column: 19)
!2206 = !DILocation(line: 463, column: 24, scope: !2205)
!2207 = !DILocation(line: 463, column: 28, scope: !2205)
!2208 = !DILocation(line: 463, column: 38, scope: !2205)
!2209 = !DILocation(line: 463, column: 47, scope: !2205)
!2210 = !DILocation(line: 463, column: 41, scope: !2205)
!2211 = !DILocation(line: 463, column: 52, scope: !2205)
!2212 = !DILocation(line: 462, column: 19, scope: !2203)
!2213 = !DILocation(line: 464, column: 25, scope: !2205)
!2214 = !DILocation(line: 464, column: 17, scope: !2205)
!2215 = !DILocation(line: 471, column: 25, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2205, file: !160, line: 465, column: 19)
!2217 = !DILocation(line: 475, column: 21, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !160, line: 475, column: 21)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !160, line: 475, column: 21)
!2220 = !DILocation(line: 475, column: 21, scope: !2219)
!2221 = !DILocation(line: 476, column: 21, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !160, line: 476, column: 21)
!2223 = distinct !DILexicalBlock(scope: !2216, file: !160, line: 476, column: 21)
!2224 = !DILocation(line: 476, column: 21, scope: !2223)
!2225 = !DILocation(line: 477, column: 21, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !160, line: 477, column: 21)
!2227 = distinct !DILexicalBlock(scope: !2216, file: !160, line: 477, column: 21)
!2228 = !DILocation(line: 477, column: 21, scope: !2227)
!2229 = !DILocation(line: 478, column: 21, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !160, line: 478, column: 21)
!2231 = distinct !DILexicalBlock(scope: !2216, file: !160, line: 478, column: 21)
!2232 = !DILocation(line: 478, column: 21, scope: !2231)
!2233 = !DILocation(line: 479, column: 21, scope: !2216)
!2234 = !DILocation(line: 403, column: 21, scope: !2020)
!2235 = !DILocation(line: 492, column: 31, scope: !2029)
!2236 = !DILocation(line: 493, column: 31, scope: !2029)
!2237 = !DILocation(line: 495, column: 31, scope: !2029)
!2238 = !DILocation(line: 496, column: 31, scope: !2029)
!2239 = !DILocation(line: 497, column: 31, scope: !2029)
!2240 = !DILocation(line: 500, column: 15, scope: !2029)
!2241 = !DILocation(line: 502, column: 19, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !160, line: 501, column: 13)
!2243 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 500, column: 15)
!2244 = !DILocation(line: 509, column: 33, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 509, column: 15)
!2246 = !DILocation(line: 0, scope: !2029)
!2247 = !DILocation(line: 514, column: 15, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 513, column: 15)
!2249 = !DILocation(line: 518, column: 15, scope: !2029)
!2250 = !DILocation(line: 526, column: 26, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 526, column: 15)
!2252 = !DILocation(line: 526, column: 15, scope: !2029)
!2253 = !DILocation(line: 526, column: 40, scope: !2251)
!2254 = !DILocation(line: 526, column: 47, scope: !2251)
!2255 = !DILocation(line: 530, column: 17, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 530, column: 15)
!2257 = !DILocation(line: 526, column: 18, scope: !2251)
!2258 = !DILocation(line: 526, column: 65, scope: !2251)
!2259 = !DILocation(line: 530, column: 15, scope: !2029)
!2260 = !DILocation(line: 535, column: 11, scope: !2029)
!2261 = !DILocation(line: 549, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 548, column: 15)
!2263 = !DILocation(line: 556, column: 15, scope: !2029)
!2264 = !DILocation(line: 558, column: 19, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !160, line: 557, column: 13)
!2266 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 556, column: 15)
!2267 = !DILocation(line: 561, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !160, line: 561, column: 19)
!2269 = !DILocation(line: 561, column: 35, scope: !2268)
!2270 = !DILocation(line: 561, column: 30, scope: !2268)
!2271 = !DILocation(line: 570, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !160, line: 570, column: 15)
!2273 = distinct !DILexicalBlock(scope: !2265, file: !160, line: 570, column: 15)
!2274 = !DILocation(line: 570, column: 15, scope: !2273)
!2275 = !DILocation(line: 571, column: 15, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !160, line: 571, column: 15)
!2277 = distinct !DILexicalBlock(scope: !2265, file: !160, line: 571, column: 15)
!2278 = !DILocation(line: 571, column: 15, scope: !2277)
!2279 = !DILocation(line: 572, column: 15, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !160, line: 572, column: 15)
!2281 = distinct !DILexicalBlock(scope: !2265, file: !160, line: 572, column: 15)
!2282 = !DILocation(line: 572, column: 15, scope: !2281)
!2283 = !DILocation(line: 574, column: 13, scope: !2265)
!2284 = !DILocation(line: 614, column: 17, scope: !2028)
!2285 = !DILocation(line: 610, column: 20, scope: !2028)
!2286 = !DILocation(line: 617, column: 29, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2033, file: !160, line: 615, column: 15)
!2288 = !{!932, !932, i64 0}
!2289 = !DILocation(line: 617, column: 27, scope: !2287)
!2290 = !DILocation(line: 612, column: 18, scope: !2028)
!2291 = !DILocation(line: 618, column: 15, scope: !2287)
!2292 = !DILocation(line: 621, column: 17, scope: !2032)
!2293 = !DILocation(line: 622, column: 17, scope: !2032)
!2294 = !DILocation(line: 626, column: 29, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2032, file: !160, line: 626, column: 21)
!2296 = !DILocation(line: 626, column: 21, scope: !2032)
!2297 = !DILocation(line: 627, column: 29, scope: !2295)
!2298 = !DILocation(line: 627, column: 19, scope: !2295)
!2299 = !DILocation(line: 0, scope: !2143)
!2300 = !DILocation(line: 629, column: 17, scope: !2032)
!2301 = !DILocation(line: 624, column: 19, scope: !2032)
!2302 = !DILocation(line: 625, column: 27, scope: !2032)
!2303 = !DILocation(line: 631, column: 21, scope: !2048)
!2304 = !DILocation(line: 632, column: 56, scope: !2048)
!2305 = !DILocation(line: 632, column: 50, scope: !2048)
!2306 = !DILocation(line: 633, column: 53, scope: !2048)
!2307 = !DILocation(line: 621, column: 27, scope: !2032)
!2308 = !DILocation(line: 631, column: 29, scope: !2048)
!2309 = !DILocation(line: 632, column: 36, scope: !2048)
!2310 = !DILocation(line: 632, column: 28, scope: !2048)
!2311 = !DILocation(line: 634, column: 25, scope: !2048)
!2312 = !DILocation(line: 644, column: 38, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2055, file: !160, line: 642, column: 23)
!2314 = !DILocation(line: 644, column: 48, scope: !2313)
!2315 = !DILocation(line: 644, column: 51, scope: !2313)
!2316 = !DILocation(line: 644, column: 25, scope: !2313)
!2317 = !DILocation(line: 645, column: 28, scope: !2313)
!2318 = !DILocation(line: 644, column: 34, scope: !2313)
!2319 = distinct !{!2319, !2316, !2317}
!2320 = !DILocation(line: 658, column: 43, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !160, line: 658, column: 29)
!2322 = distinct !DILexicalBlock(scope: !2052, file: !160, line: 658, column: 29)
!2323 = !DILocation(line: 655, column: 29, scope: !2053)
!2324 = !DILocation(line: 657, column: 36, scope: !2052)
!2325 = !DILocation(line: 659, column: 49, scope: !2321)
!2326 = !DILocation(line: 659, column: 39, scope: !2321)
!2327 = !DILocation(line: 659, column: 31, scope: !2321)
!2328 = !DILocation(line: 658, column: 53, scope: !2321)
!2329 = !DILocation(line: 658, column: 29, scope: !2322)
!2330 = distinct !{!2330, !2329, !2331}
!2331 = !DILocation(line: 667, column: 33, scope: !2322)
!2332 = !DILocation(line: 674, column: 19, scope: !2032)
!2333 = !DILocation(line: 670, column: 41, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2054, file: !160, line: 670, column: 29)
!2335 = !DILocation(line: 670, column: 31, scope: !2334)
!2336 = !DILocation(line: 670, column: 29, scope: !2054)
!2337 = !DILocation(line: 672, column: 27, scope: !2054)
!2338 = !DILocation(line: 675, column: 26, scope: !2032)
!2339 = !DILocation(line: 675, column: 24, scope: !2032)
!2340 = !DILocation(line: 674, column: 19, scope: !2048)
!2341 = distinct !{!2341, !2300, !2342}
!2342 = !DILocation(line: 675, column: 44, scope: !2032)
!2343 = !DILocation(line: 676, column: 15, scope: !2033)
!2344 = !DILocation(line: 0, scope: !2295)
!2345 = !DILocation(line: 0, scope: !2032)
!2346 = !DILocation(line: 678, column: 40, scope: !2028)
!2347 = !DILocation(line: 680, column: 19, scope: !2060)
!2348 = !DILocation(line: 680, column: 45, scope: !2060)
!2349 = !DILocation(line: 680, column: 23, scope: !2060)
!2350 = !DILocation(line: 684, column: 33, scope: !2059)
!2351 = !DILocation(line: 684, column: 24, scope: !2059)
!2352 = !DILocation(line: 686, column: 17, scope: !2059)
!2353 = !DILocation(line: 0, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !160, line: 687, column: 19)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !160, line: 686, column: 17)
!2356 = distinct !DILexicalBlock(scope: !2059, file: !160, line: 686, column: 17)
!2357 = !DILocation(line: 0, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !160, line: 703, column: 21)
!2359 = !DILocation(line: 0, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !160, line: 696, column: 23)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !160, line: 695, column: 30)
!2362 = distinct !DILexicalBlock(scope: !2354, file: !160, line: 688, column: 25)
!2363 = !DILocation(line: 688, column: 43, scope: !2362)
!2364 = !DILocation(line: 690, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !160, line: 690, column: 25)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !160, line: 689, column: 23)
!2367 = !DILocation(line: 690, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !160, line: 690, column: 25)
!2369 = !DILocation(line: 690, column: 25, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !160, line: 690, column: 25)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !160, line: 690, column: 25)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !160, line: 690, column: 25)
!2373 = !DILocation(line: 690, column: 25, scope: !2371)
!2374 = !DILocation(line: 690, column: 25, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !160, line: 690, column: 25)
!2376 = distinct !DILexicalBlock(scope: !2372, file: !160, line: 690, column: 25)
!2377 = !DILocation(line: 690, column: 25, scope: !2376)
!2378 = !DILocation(line: 690, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !160, line: 690, column: 25)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !160, line: 690, column: 25)
!2381 = !DILocation(line: 690, column: 25, scope: !2380)
!2382 = !DILocation(line: 690, column: 25, scope: !2372)
!2383 = !DILocation(line: 690, column: 25, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !160, line: 690, column: 25)
!2385 = distinct !DILexicalBlock(scope: !2365, file: !160, line: 690, column: 25)
!2386 = !DILocation(line: 690, column: 25, scope: !2385)
!2387 = !DILocation(line: 691, column: 25, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !160, line: 691, column: 25)
!2389 = distinct !DILexicalBlock(scope: !2366, file: !160, line: 691, column: 25)
!2390 = !DILocation(line: 691, column: 25, scope: !2389)
!2391 = !DILocation(line: 692, column: 25, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !160, line: 692, column: 25)
!2393 = distinct !DILexicalBlock(scope: !2366, file: !160, line: 692, column: 25)
!2394 = !DILocation(line: 692, column: 25, scope: !2393)
!2395 = !DILocation(line: 693, column: 38, scope: !2366)
!2396 = !DILocation(line: 693, column: 33, scope: !2366)
!2397 = !DILocation(line: 694, column: 23, scope: !2366)
!2398 = !DILocation(line: 695, column: 30, scope: !2361)
!2399 = !DILocation(line: 695, column: 30, scope: !2362)
!2400 = !DILocation(line: 697, column: 25, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !160, line: 697, column: 25)
!2402 = distinct !DILexicalBlock(scope: !2360, file: !160, line: 697, column: 25)
!2403 = !DILocation(line: 697, column: 25, scope: !2402)
!2404 = !DILocation(line: 699, column: 23, scope: !2360)
!2405 = !DILocation(line: 0, scope: !2393)
!2406 = !DILocation(line: 0, scope: !2366)
!2407 = !DILocation(line: 0, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2143, file: !160, line: 418, column: 9)
!2409 = !DILocation(line: 0, scope: !2365)
!2410 = !DILocation(line: 700, column: 35, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2354, file: !160, line: 700, column: 25)
!2412 = !DILocation(line: 700, column: 30, scope: !2411)
!2413 = !DILocation(line: 700, column: 25, scope: !2354)
!2414 = !DILocation(line: 702, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !160, line: 702, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2354, file: !160, line: 702, column: 21)
!2417 = !DILocation(line: 702, column: 21, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !160, line: 702, column: 21)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !160, line: 702, column: 21)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !160, line: 702, column: 21)
!2421 = !DILocation(line: 702, column: 21, scope: !2419)
!2422 = !DILocation(line: 702, column: 21, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !160, line: 702, column: 21)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !160, line: 702, column: 21)
!2425 = !DILocation(line: 702, column: 21, scope: !2424)
!2426 = !DILocation(line: 702, column: 21, scope: !2420)
!2427 = !DILocation(line: 0, scope: !2402)
!2428 = !DILocation(line: 703, column: 21, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2358, file: !160, line: 703, column: 21)
!2430 = !DILocation(line: 703, column: 21, scope: !2358)
!2431 = !DILocation(line: 704, column: 25, scope: !2354)
!2432 = !DILocation(line: 686, column: 17, scope: !2355)
!2433 = distinct !{!2433, !2434, !2435}
!2434 = !DILocation(line: 686, column: 17, scope: !2356)
!2435 = !DILocation(line: 705, column: 19, scope: !2356)
!2436 = !DILocation(line: 0, scope: !2022)
!2437 = !DILocation(line: 416, column: 30, scope: !2143)
!2438 = !DILocation(line: 712, column: 34, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2020, file: !160, line: 712, column: 11)
!2440 = !DILocation(line: 714, column: 14, scope: !2439)
!2441 = !DILocation(line: 715, column: 14, scope: !2439)
!2442 = !DILocation(line: 715, column: 35, scope: !2439)
!2443 = !DILocation(line: 715, column: 17, scope: !2439)
!2444 = !DILocation(line: 715, column: 47, scope: !2439)
!2445 = !DILocation(line: 715, column: 65, scope: !2439)
!2446 = !DILocation(line: 716, column: 15, scope: !2439)
!2447 = !DILocation(line: 716, column: 11, scope: !2439)
!2448 = !DILocation(line: 712, column: 11, scope: !2020)
!2449 = !DILocation(line: 400, column: 10, scope: !2022)
!2450 = !DILocation(line: 0, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !160, line: 519, column: 13)
!2452 = distinct !DILexicalBlock(scope: !2029, file: !160, line: 518, column: 15)
!2453 = !DILocation(line: 720, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2020, file: !160, line: 720, column: 7)
!2455 = !DILocation(line: 720, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !160, line: 720, column: 7)
!2457 = !DILocation(line: 720, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !160, line: 720, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !160, line: 720, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !160, line: 720, column: 7)
!2461 = !DILocation(line: 720, column: 7, scope: !2459)
!2462 = !DILocation(line: 720, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !160, line: 720, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !160, line: 720, column: 7)
!2465 = !DILocation(line: 720, column: 7, scope: !2464)
!2466 = !DILocation(line: 720, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !160, line: 720, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2460, file: !160, line: 720, column: 7)
!2469 = !DILocation(line: 720, column: 7, scope: !2468)
!2470 = !DILocation(line: 720, column: 7, scope: !2460)
!2471 = !DILocation(line: 720, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !160, line: 720, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2454, file: !160, line: 720, column: 7)
!2474 = !DILocation(line: 720, column: 7, scope: !2473)
!2475 = !DILocation(line: 723, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !160, line: 723, column: 7)
!2477 = distinct !DILexicalBlock(scope: !2020, file: !160, line: 723, column: 7)
!2478 = !DILocation(line: 424, column: 9, scope: !2020)
!2479 = !DILocation(line: 723, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !160, line: 723, column: 7)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !160, line: 723, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !160, line: 723, column: 7)
!2483 = !DILocation(line: 723, column: 7, scope: !2481)
!2484 = !DILocation(line: 723, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !160, line: 723, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !160, line: 723, column: 7)
!2487 = !DILocation(line: 723, column: 7, scope: !2486)
!2488 = !DILocation(line: 723, column: 7, scope: !2482)
!2489 = !DILocation(line: 724, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !160, line: 724, column: 7)
!2491 = distinct !DILexicalBlock(scope: !2020, file: !160, line: 724, column: 7)
!2492 = !DILocation(line: 724, column: 7, scope: !2491)
!2493 = !DILocation(line: 726, column: 13, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2020, file: !160, line: 726, column: 11)
!2495 = !DILocation(line: 726, column: 11, scope: !2020)
!2496 = !DILocation(line: 728, column: 5, scope: !2021)
!2497 = !DILocation(line: 400, column: 75, scope: !2021)
!2498 = !DILocation(line: 400, column: 3, scope: !2021)
!2499 = distinct !{!2499, !2137, !2500}
!2500 = !DILocation(line: 728, column: 5, scope: !2022)
!2501 = !DILocation(line: 730, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !1993, file: !160, line: 730, column: 7)
!2503 = !DILocation(line: 730, column: 16, scope: !2502)
!2504 = !DILocation(line: 738, column: 51, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !1993, file: !160, line: 738, column: 7)
!2506 = !DILocation(line: 739, column: 10, scope: !2505)
!2507 = !DILocation(line: 741, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !160, line: 741, column: 11)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !160, line: 740, column: 5)
!2510 = !DILocation(line: 741, column: 11, scope: !2509)
!2511 = !DILocation(line: 742, column: 16, scope: !2508)
!2512 = !DILocation(line: 742, column: 9, scope: !2508)
!2513 = !DILocation(line: 746, column: 18, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2508, file: !160, line: 746, column: 16)
!2515 = !DILocation(line: 746, column: 32, scope: !2514)
!2516 = !DILocation(line: 746, column: 29, scope: !2514)
!2517 = !DILocation(line: 755, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !1993, file: !160, line: 755, column: 7)
!2519 = !DILocation(line: 755, column: 20, scope: !2518)
!2520 = !DILocation(line: 756, column: 12, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !160, line: 756, column: 5)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !160, line: 756, column: 5)
!2523 = !DILocation(line: 756, column: 5, scope: !2522)
!2524 = !DILocation(line: 757, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !160, line: 757, column: 7)
!2526 = distinct !DILexicalBlock(scope: !2521, file: !160, line: 757, column: 7)
!2527 = !DILocation(line: 757, column: 7, scope: !2526)
!2528 = !DILocation(line: 756, column: 39, scope: !2521)
!2529 = distinct !{!2529, !2523, !2530}
!2530 = !DILocation(line: 757, column: 7, scope: !2522)
!2531 = !DILocation(line: 759, column: 11, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !1993, file: !160, line: 759, column: 7)
!2533 = !DILocation(line: 759, column: 7, scope: !1993)
!2534 = !DILocation(line: 760, column: 5, scope: !2532)
!2535 = !DILocation(line: 760, column: 17, scope: !2532)
!2536 = !DILocation(line: 766, column: 21, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !1993, file: !160, line: 766, column: 7)
!2538 = !DILocation(line: 766, column: 54, scope: !2537)
!2539 = !DILocation(line: 766, column: 51, scope: !2537)
!2540 = !DILocation(line: 770, column: 42, scope: !1993)
!2541 = !DILocation(line: 768, column: 10, scope: !1993)
!2542 = !DILocation(line: 768, column: 3, scope: !1993)
!2543 = !DILocation(line: 772, column: 1, scope: !1993)
!2544 = distinct !DISubprogram(name: "gettext_quote", scope: !160, file: !160, line: 207, type: !2545, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!61, !61, !5}
!2547 = !{!2548, !2549, !2550, !2551}
!2548 = !DILocalVariable(name: "msgid", arg: 1, scope: !2544, file: !160, line: 207, type: !61)
!2549 = !DILocalVariable(name: "s", arg: 2, scope: !2544, file: !160, line: 207, type: !5)
!2550 = !DILocalVariable(name: "translation", scope: !2544, file: !160, line: 209, type: !61)
!2551 = !DILocalVariable(name: "locale_code", scope: !2544, file: !160, line: 210, type: !61)
!2552 = !DILocation(line: 207, column: 28, scope: !2544)
!2553 = !DILocation(line: 207, column: 54, scope: !2544)
!2554 = !DILocation(line: 209, column: 29, scope: !2544)
!2555 = !DILocation(line: 209, column: 15, scope: !2544)
!2556 = !DILocation(line: 212, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2544, file: !160, line: 212, column: 7)
!2558 = !DILocation(line: 212, column: 7, scope: !2544)
!2559 = !DILocation(line: 233, column: 17, scope: !2544)
!2560 = !DILocation(line: 210, column: 15, scope: !2544)
!2561 = !DILocalVariable(name: "s1", arg: 1, scope: !2562, file: !2563, line: 160, type: !61)
!2562 = distinct !DISubprogram(name: "strcaseeq0", scope: !2563, file: !2563, line: 160, type: !2564, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2566)
!2563 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44, !44, !44, !44}
!2566 = !{!2561, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2567 = !DILocalVariable(name: "s2", arg: 2, scope: !2562, file: !2563, line: 160, type: !61)
!2568 = !DILocalVariable(name: "s20", arg: 3, scope: !2562, file: !2563, line: 160, type: !44)
!2569 = !DILocalVariable(name: "s21", arg: 4, scope: !2562, file: !2563, line: 160, type: !44)
!2570 = !DILocalVariable(name: "s22", arg: 5, scope: !2562, file: !2563, line: 160, type: !44)
!2571 = !DILocalVariable(name: "s23", arg: 6, scope: !2562, file: !2563, line: 160, type: !44)
!2572 = !DILocalVariable(name: "s24", arg: 7, scope: !2562, file: !2563, line: 160, type: !44)
!2573 = !DILocalVariable(name: "s25", arg: 8, scope: !2562, file: !2563, line: 160, type: !44)
!2574 = !DILocalVariable(name: "s26", arg: 9, scope: !2562, file: !2563, line: 160, type: !44)
!2575 = !DILocalVariable(name: "s27", arg: 10, scope: !2562, file: !2563, line: 160, type: !44)
!2576 = !DILocalVariable(name: "s28", arg: 11, scope: !2562, file: !2563, line: 160, type: !44)
!2577 = !DILocation(line: 160, column: 25, scope: !2562, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 234, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2544, file: !160, line: 234, column: 7)
!2580 = !DILocation(line: 160, column: 41, scope: !2562, inlinedAt: !2578)
!2581 = !DILocation(line: 160, column: 50, scope: !2562, inlinedAt: !2578)
!2582 = !DILocation(line: 160, column: 60, scope: !2562, inlinedAt: !2578)
!2583 = !DILocation(line: 160, column: 70, scope: !2562, inlinedAt: !2578)
!2584 = !DILocation(line: 160, column: 80, scope: !2562, inlinedAt: !2578)
!2585 = !DILocation(line: 160, column: 90, scope: !2562, inlinedAt: !2578)
!2586 = !DILocation(line: 160, column: 100, scope: !2562, inlinedAt: !2578)
!2587 = !DILocation(line: 160, column: 110, scope: !2562, inlinedAt: !2578)
!2588 = !DILocation(line: 160, column: 120, scope: !2562, inlinedAt: !2578)
!2589 = !DILocation(line: 160, column: 130, scope: !2562, inlinedAt: !2578)
!2590 = !DILocation(line: 162, column: 7, scope: !2591, inlinedAt: !2578)
!2591 = distinct !DILexicalBlock(scope: !2562, file: !2563, line: 162, column: 7)
!2592 = !DILocalVariable(name: "s1", arg: 1, scope: !2593, file: !2563, line: 146, type: !61)
!2593 = distinct !DISubprogram(name: "strcaseeq1", scope: !2563, file: !2563, line: 146, type: !2594, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44, !44, !44}
!2596 = !{!2592, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2597 = !DILocalVariable(name: "s2", arg: 2, scope: !2593, file: !2563, line: 146, type: !61)
!2598 = !DILocalVariable(name: "s21", arg: 3, scope: !2593, file: !2563, line: 146, type: !44)
!2599 = !DILocalVariable(name: "s22", arg: 4, scope: !2593, file: !2563, line: 146, type: !44)
!2600 = !DILocalVariable(name: "s23", arg: 5, scope: !2593, file: !2563, line: 146, type: !44)
!2601 = !DILocalVariable(name: "s24", arg: 6, scope: !2593, file: !2563, line: 146, type: !44)
!2602 = !DILocalVariable(name: "s25", arg: 7, scope: !2593, file: !2563, line: 146, type: !44)
!2603 = !DILocalVariable(name: "s26", arg: 8, scope: !2593, file: !2563, line: 146, type: !44)
!2604 = !DILocalVariable(name: "s27", arg: 9, scope: !2593, file: !2563, line: 146, type: !44)
!2605 = !DILocalVariable(name: "s28", arg: 10, scope: !2593, file: !2563, line: 146, type: !44)
!2606 = !DILocation(line: 146, column: 25, scope: !2593, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 167, column: 16, scope: !2608, inlinedAt: !2578)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !2563, line: 164, column: 11)
!2609 = distinct !DILexicalBlock(scope: !2591, file: !2563, line: 163, column: 5)
!2610 = !DILocation(line: 146, column: 41, scope: !2593, inlinedAt: !2607)
!2611 = !DILocation(line: 146, column: 50, scope: !2593, inlinedAt: !2607)
!2612 = !DILocation(line: 146, column: 60, scope: !2593, inlinedAt: !2607)
!2613 = !DILocation(line: 146, column: 70, scope: !2593, inlinedAt: !2607)
!2614 = !DILocation(line: 146, column: 80, scope: !2593, inlinedAt: !2607)
!2615 = !DILocation(line: 146, column: 90, scope: !2593, inlinedAt: !2607)
!2616 = !DILocation(line: 146, column: 100, scope: !2593, inlinedAt: !2607)
!2617 = !DILocation(line: 146, column: 110, scope: !2593, inlinedAt: !2607)
!2618 = !DILocation(line: 146, column: 120, scope: !2593, inlinedAt: !2607)
!2619 = !DILocation(line: 148, column: 7, scope: !2620, inlinedAt: !2607)
!2620 = distinct !DILexicalBlock(scope: !2593, file: !2563, line: 148, column: 7)
!2621 = !DILocalVariable(name: "s1", arg: 1, scope: !2622, file: !2563, line: 132, type: !61)
!2622 = distinct !DISubprogram(name: "strcaseeq2", scope: !2563, file: !2563, line: 132, type: !2623, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44, !44}
!2625 = !{!2621, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633}
!2626 = !DILocalVariable(name: "s2", arg: 2, scope: !2622, file: !2563, line: 132, type: !61)
!2627 = !DILocalVariable(name: "s22", arg: 3, scope: !2622, file: !2563, line: 132, type: !44)
!2628 = !DILocalVariable(name: "s23", arg: 4, scope: !2622, file: !2563, line: 132, type: !44)
!2629 = !DILocalVariable(name: "s24", arg: 5, scope: !2622, file: !2563, line: 132, type: !44)
!2630 = !DILocalVariable(name: "s25", arg: 6, scope: !2622, file: !2563, line: 132, type: !44)
!2631 = !DILocalVariable(name: "s26", arg: 7, scope: !2622, file: !2563, line: 132, type: !44)
!2632 = !DILocalVariable(name: "s27", arg: 8, scope: !2622, file: !2563, line: 132, type: !44)
!2633 = !DILocalVariable(name: "s28", arg: 9, scope: !2622, file: !2563, line: 132, type: !44)
!2634 = !DILocation(line: 132, column: 25, scope: !2622, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 153, column: 16, scope: !2636, inlinedAt: !2607)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !2563, line: 150, column: 11)
!2637 = distinct !DILexicalBlock(scope: !2620, file: !2563, line: 149, column: 5)
!2638 = !DILocation(line: 132, column: 41, scope: !2622, inlinedAt: !2635)
!2639 = !DILocation(line: 132, column: 50, scope: !2622, inlinedAt: !2635)
!2640 = !DILocation(line: 132, column: 60, scope: !2622, inlinedAt: !2635)
!2641 = !DILocation(line: 132, column: 70, scope: !2622, inlinedAt: !2635)
!2642 = !DILocation(line: 132, column: 80, scope: !2622, inlinedAt: !2635)
!2643 = !DILocation(line: 132, column: 90, scope: !2622, inlinedAt: !2635)
!2644 = !DILocation(line: 132, column: 100, scope: !2622, inlinedAt: !2635)
!2645 = !DILocation(line: 132, column: 110, scope: !2622, inlinedAt: !2635)
!2646 = !DILocation(line: 134, column: 7, scope: !2647, inlinedAt: !2635)
!2647 = distinct !DILexicalBlock(scope: !2622, file: !2563, line: 134, column: 7)
!2648 = !DILocalVariable(name: "s1", arg: 1, scope: !2649, file: !2563, line: 118, type: !61)
!2649 = distinct !DISubprogram(name: "strcaseeq3", scope: !2563, file: !2563, line: 118, type: !2650, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!64, !61, !61, !44, !44, !44, !44, !44, !44}
!2652 = !{!2648, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2653 = !DILocalVariable(name: "s2", arg: 2, scope: !2649, file: !2563, line: 118, type: !61)
!2654 = !DILocalVariable(name: "s23", arg: 3, scope: !2649, file: !2563, line: 118, type: !44)
!2655 = !DILocalVariable(name: "s24", arg: 4, scope: !2649, file: !2563, line: 118, type: !44)
!2656 = !DILocalVariable(name: "s25", arg: 5, scope: !2649, file: !2563, line: 118, type: !44)
!2657 = !DILocalVariable(name: "s26", arg: 6, scope: !2649, file: !2563, line: 118, type: !44)
!2658 = !DILocalVariable(name: "s27", arg: 7, scope: !2649, file: !2563, line: 118, type: !44)
!2659 = !DILocalVariable(name: "s28", arg: 8, scope: !2649, file: !2563, line: 118, type: !44)
!2660 = !DILocation(line: 118, column: 25, scope: !2649, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 139, column: 16, scope: !2662, inlinedAt: !2635)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !2563, line: 136, column: 11)
!2663 = distinct !DILexicalBlock(scope: !2647, file: !2563, line: 135, column: 5)
!2664 = !DILocation(line: 118, column: 41, scope: !2649, inlinedAt: !2661)
!2665 = !DILocation(line: 118, column: 50, scope: !2649, inlinedAt: !2661)
!2666 = !DILocation(line: 118, column: 60, scope: !2649, inlinedAt: !2661)
!2667 = !DILocation(line: 118, column: 70, scope: !2649, inlinedAt: !2661)
!2668 = !DILocation(line: 118, column: 80, scope: !2649, inlinedAt: !2661)
!2669 = !DILocation(line: 118, column: 90, scope: !2649, inlinedAt: !2661)
!2670 = !DILocation(line: 118, column: 100, scope: !2649, inlinedAt: !2661)
!2671 = !DILocation(line: 120, column: 7, scope: !2672, inlinedAt: !2661)
!2672 = distinct !DILexicalBlock(scope: !2649, file: !2563, line: 120, column: 7)
!2673 = !DILocation(line: 120, column: 7, scope: !2649, inlinedAt: !2661)
!2674 = !DILocalVariable(name: "s1", arg: 1, scope: !2675, file: !2563, line: 104, type: !61)
!2675 = distinct !DISubprogram(name: "strcaseeq4", scope: !2563, file: !2563, line: 104, type: !2676, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!64, !61, !61, !44, !44, !44, !44, !44}
!2678 = !{!2674, !2679, !2680, !2681, !2682, !2683, !2684}
!2679 = !DILocalVariable(name: "s2", arg: 2, scope: !2675, file: !2563, line: 104, type: !61)
!2680 = !DILocalVariable(name: "s24", arg: 3, scope: !2675, file: !2563, line: 104, type: !44)
!2681 = !DILocalVariable(name: "s25", arg: 4, scope: !2675, file: !2563, line: 104, type: !44)
!2682 = !DILocalVariable(name: "s26", arg: 5, scope: !2675, file: !2563, line: 104, type: !44)
!2683 = !DILocalVariable(name: "s27", arg: 6, scope: !2675, file: !2563, line: 104, type: !44)
!2684 = !DILocalVariable(name: "s28", arg: 7, scope: !2675, file: !2563, line: 104, type: !44)
!2685 = !DILocation(line: 104, column: 25, scope: !2675, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 125, column: 16, scope: !2687, inlinedAt: !2661)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !2563, line: 122, column: 11)
!2688 = distinct !DILexicalBlock(scope: !2672, file: !2563, line: 121, column: 5)
!2689 = !DILocation(line: 104, column: 41, scope: !2675, inlinedAt: !2686)
!2690 = !DILocation(line: 104, column: 50, scope: !2675, inlinedAt: !2686)
!2691 = !DILocation(line: 104, column: 60, scope: !2675, inlinedAt: !2686)
!2692 = !DILocation(line: 104, column: 70, scope: !2675, inlinedAt: !2686)
!2693 = !DILocation(line: 104, column: 80, scope: !2675, inlinedAt: !2686)
!2694 = !DILocation(line: 104, column: 90, scope: !2675, inlinedAt: !2686)
!2695 = !DILocation(line: 106, column: 7, scope: !2696, inlinedAt: !2686)
!2696 = distinct !DILexicalBlock(scope: !2675, file: !2563, line: 106, column: 7)
!2697 = !DILocation(line: 106, column: 7, scope: !2675, inlinedAt: !2686)
!2698 = !DILocalVariable(name: "s1", arg: 1, scope: !2699, file: !2563, line: 90, type: !61)
!2699 = distinct !DISubprogram(name: "strcaseeq5", scope: !2563, file: !2563, line: 90, type: !2700, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!64, !61, !61, !44, !44, !44, !44}
!2702 = !{!2698, !2703, !2704, !2705, !2706, !2707}
!2703 = !DILocalVariable(name: "s2", arg: 2, scope: !2699, file: !2563, line: 90, type: !61)
!2704 = !DILocalVariable(name: "s25", arg: 3, scope: !2699, file: !2563, line: 90, type: !44)
!2705 = !DILocalVariable(name: "s26", arg: 4, scope: !2699, file: !2563, line: 90, type: !44)
!2706 = !DILocalVariable(name: "s27", arg: 5, scope: !2699, file: !2563, line: 90, type: !44)
!2707 = !DILocalVariable(name: "s28", arg: 6, scope: !2699, file: !2563, line: 90, type: !44)
!2708 = !DILocation(line: 90, column: 25, scope: !2699, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 111, column: 16, scope: !2710, inlinedAt: !2686)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !2563, line: 108, column: 11)
!2711 = distinct !DILexicalBlock(scope: !2696, file: !2563, line: 107, column: 5)
!2712 = !DILocation(line: 90, column: 41, scope: !2699, inlinedAt: !2709)
!2713 = !DILocation(line: 90, column: 50, scope: !2699, inlinedAt: !2709)
!2714 = !DILocation(line: 90, column: 60, scope: !2699, inlinedAt: !2709)
!2715 = !DILocation(line: 90, column: 70, scope: !2699, inlinedAt: !2709)
!2716 = !DILocation(line: 90, column: 80, scope: !2699, inlinedAt: !2709)
!2717 = !DILocation(line: 92, column: 7, scope: !2718, inlinedAt: !2709)
!2718 = distinct !DILexicalBlock(scope: !2699, file: !2563, line: 92, column: 7)
!2719 = !DILocation(line: 92, column: 7, scope: !2699, inlinedAt: !2709)
!2720 = !DILocation(line: 235, column: 12, scope: !2579)
!2721 = !DILocation(line: 235, column: 21, scope: !2579)
!2722 = !DILocation(line: 235, column: 5, scope: !2579)
!2723 = !DILocation(line: 146, column: 25, scope: !2593, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 167, column: 16, scope: !2608, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 236, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2544, file: !160, line: 236, column: 7)
!2727 = !DILocation(line: 146, column: 41, scope: !2593, inlinedAt: !2724)
!2728 = !DILocation(line: 146, column: 50, scope: !2593, inlinedAt: !2724)
!2729 = !DILocation(line: 146, column: 60, scope: !2593, inlinedAt: !2724)
!2730 = !DILocation(line: 146, column: 70, scope: !2593, inlinedAt: !2724)
!2731 = !DILocation(line: 146, column: 80, scope: !2593, inlinedAt: !2724)
!2732 = !DILocation(line: 146, column: 90, scope: !2593, inlinedAt: !2724)
!2733 = !DILocation(line: 146, column: 100, scope: !2593, inlinedAt: !2724)
!2734 = !DILocation(line: 146, column: 110, scope: !2593, inlinedAt: !2724)
!2735 = !DILocation(line: 146, column: 120, scope: !2593, inlinedAt: !2724)
!2736 = !DILocation(line: 148, column: 7, scope: !2620, inlinedAt: !2724)
!2737 = !DILocation(line: 132, column: 25, scope: !2622, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 153, column: 16, scope: !2636, inlinedAt: !2724)
!2739 = !DILocation(line: 132, column: 41, scope: !2622, inlinedAt: !2738)
!2740 = !DILocation(line: 132, column: 50, scope: !2622, inlinedAt: !2738)
!2741 = !DILocation(line: 132, column: 60, scope: !2622, inlinedAt: !2738)
!2742 = !DILocation(line: 132, column: 70, scope: !2622, inlinedAt: !2738)
!2743 = !DILocation(line: 132, column: 80, scope: !2622, inlinedAt: !2738)
!2744 = !DILocation(line: 132, column: 90, scope: !2622, inlinedAt: !2738)
!2745 = !DILocation(line: 132, column: 100, scope: !2622, inlinedAt: !2738)
!2746 = !DILocation(line: 132, column: 110, scope: !2622, inlinedAt: !2738)
!2747 = !DILocation(line: 134, column: 7, scope: !2647, inlinedAt: !2738)
!2748 = !DILocation(line: 134, column: 7, scope: !2622, inlinedAt: !2738)
!2749 = !DILocation(line: 118, column: 25, scope: !2649, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 139, column: 16, scope: !2662, inlinedAt: !2738)
!2751 = !DILocation(line: 118, column: 41, scope: !2649, inlinedAt: !2750)
!2752 = !DILocation(line: 118, column: 50, scope: !2649, inlinedAt: !2750)
!2753 = !DILocation(line: 118, column: 60, scope: !2649, inlinedAt: !2750)
!2754 = !DILocation(line: 118, column: 70, scope: !2649, inlinedAt: !2750)
!2755 = !DILocation(line: 118, column: 80, scope: !2649, inlinedAt: !2750)
!2756 = !DILocation(line: 118, column: 90, scope: !2649, inlinedAt: !2750)
!2757 = !DILocation(line: 118, column: 100, scope: !2649, inlinedAt: !2750)
!2758 = !DILocation(line: 120, column: 7, scope: !2672, inlinedAt: !2750)
!2759 = !DILocation(line: 120, column: 7, scope: !2649, inlinedAt: !2750)
!2760 = !DILocation(line: 104, column: 25, scope: !2675, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 125, column: 16, scope: !2687, inlinedAt: !2750)
!2762 = !DILocation(line: 104, column: 41, scope: !2675, inlinedAt: !2761)
!2763 = !DILocation(line: 104, column: 50, scope: !2675, inlinedAt: !2761)
!2764 = !DILocation(line: 104, column: 60, scope: !2675, inlinedAt: !2761)
!2765 = !DILocation(line: 104, column: 70, scope: !2675, inlinedAt: !2761)
!2766 = !DILocation(line: 104, column: 80, scope: !2675, inlinedAt: !2761)
!2767 = !DILocation(line: 104, column: 90, scope: !2675, inlinedAt: !2761)
!2768 = !DILocation(line: 106, column: 7, scope: !2696, inlinedAt: !2761)
!2769 = !DILocation(line: 106, column: 7, scope: !2675, inlinedAt: !2761)
!2770 = !DILocation(line: 90, column: 25, scope: !2699, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 111, column: 16, scope: !2710, inlinedAt: !2761)
!2772 = !DILocation(line: 90, column: 41, scope: !2699, inlinedAt: !2771)
!2773 = !DILocation(line: 90, column: 50, scope: !2699, inlinedAt: !2771)
!2774 = !DILocation(line: 90, column: 60, scope: !2699, inlinedAt: !2771)
!2775 = !DILocation(line: 90, column: 70, scope: !2699, inlinedAt: !2771)
!2776 = !DILocation(line: 90, column: 80, scope: !2699, inlinedAt: !2771)
!2777 = !DILocation(line: 92, column: 7, scope: !2718, inlinedAt: !2771)
!2778 = !DILocation(line: 92, column: 7, scope: !2699, inlinedAt: !2771)
!2779 = !DILocalVariable(name: "s1", arg: 1, scope: !2780, file: !2563, line: 76, type: !61)
!2780 = distinct !DISubprogram(name: "strcaseeq6", scope: !2563, file: !2563, line: 76, type: !2781, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!64, !61, !61, !44, !44, !44}
!2783 = !{!2779, !2784, !2785, !2786, !2787}
!2784 = !DILocalVariable(name: "s2", arg: 2, scope: !2780, file: !2563, line: 76, type: !61)
!2785 = !DILocalVariable(name: "s26", arg: 3, scope: !2780, file: !2563, line: 76, type: !44)
!2786 = !DILocalVariable(name: "s27", arg: 4, scope: !2780, file: !2563, line: 76, type: !44)
!2787 = !DILocalVariable(name: "s28", arg: 5, scope: !2780, file: !2563, line: 76, type: !44)
!2788 = !DILocation(line: 76, column: 25, scope: !2780, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 97, column: 16, scope: !2790, inlinedAt: !2771)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !2563, line: 94, column: 11)
!2791 = distinct !DILexicalBlock(scope: !2718, file: !2563, line: 93, column: 5)
!2792 = !DILocation(line: 76, column: 41, scope: !2780, inlinedAt: !2789)
!2793 = !DILocation(line: 76, column: 50, scope: !2780, inlinedAt: !2789)
!2794 = !DILocation(line: 76, column: 60, scope: !2780, inlinedAt: !2789)
!2795 = !DILocation(line: 76, column: 70, scope: !2780, inlinedAt: !2789)
!2796 = !DILocation(line: 78, column: 7, scope: !2797, inlinedAt: !2789)
!2797 = distinct !DILexicalBlock(scope: !2780, file: !2563, line: 78, column: 7)
!2798 = !DILocation(line: 78, column: 7, scope: !2780, inlinedAt: !2789)
!2799 = !DILocalVariable(name: "s1", arg: 1, scope: !2800, file: !2563, line: 62, type: !61)
!2800 = distinct !DISubprogram(name: "strcaseeq7", scope: !2563, file: !2563, line: 62, type: !2801, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!64, !61, !61, !44, !44}
!2803 = !{!2799, !2804, !2805, !2806}
!2804 = !DILocalVariable(name: "s2", arg: 2, scope: !2800, file: !2563, line: 62, type: !61)
!2805 = !DILocalVariable(name: "s27", arg: 3, scope: !2800, file: !2563, line: 62, type: !44)
!2806 = !DILocalVariable(name: "s28", arg: 4, scope: !2800, file: !2563, line: 62, type: !44)
!2807 = !DILocation(line: 62, column: 25, scope: !2800, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 83, column: 16, scope: !2809, inlinedAt: !2789)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !2563, line: 80, column: 11)
!2810 = distinct !DILexicalBlock(scope: !2797, file: !2563, line: 79, column: 5)
!2811 = !DILocation(line: 62, column: 41, scope: !2800, inlinedAt: !2808)
!2812 = !DILocation(line: 62, column: 50, scope: !2800, inlinedAt: !2808)
!2813 = !DILocation(line: 62, column: 60, scope: !2800, inlinedAt: !2808)
!2814 = !DILocation(line: 64, column: 7, scope: !2815, inlinedAt: !2808)
!2815 = distinct !DILexicalBlock(scope: !2800, file: !2563, line: 64, column: 7)
!2816 = !DILocation(line: 236, column: 7, scope: !2544)
!2817 = !DILocation(line: 237, column: 12, scope: !2726)
!2818 = !DILocation(line: 237, column: 21, scope: !2726)
!2819 = !DILocation(line: 237, column: 5, scope: !2726)
!2820 = !DILocation(line: 239, column: 13, scope: !2544)
!2821 = !DILocation(line: 239, column: 11, scope: !2544)
!2822 = !DILocation(line: 239, column: 3, scope: !2544)
!2823 = !DILocation(line: 0, scope: !2544)
!2824 = !DILocation(line: 240, column: 1, scope: !2544)
!2825 = distinct !DISubprogram(name: "quotearg_alloc", scope: !160, file: !160, line: 799, type: !2826, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!43, !61, !48, !1866}
!2828 = !{!2829, !2830, !2831}
!2829 = !DILocalVariable(name: "arg", arg: 1, scope: !2825, file: !160, line: 799, type: !61)
!2830 = !DILocalVariable(name: "argsize", arg: 2, scope: !2825, file: !160, line: 799, type: !48)
!2831 = !DILocalVariable(name: "o", arg: 3, scope: !2825, file: !160, line: 800, type: !1866)
!2832 = !DILocation(line: 799, column: 29, scope: !2825)
!2833 = !DILocation(line: 799, column: 41, scope: !2825)
!2834 = !DILocation(line: 800, column: 47, scope: !2825)
!2835 = !DILocalVariable(name: "arg", arg: 1, scope: !2836, file: !160, line: 812, type: !61)
!2836 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !160, file: !160, line: 812, type: !2837, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!43, !61, !48, !246, !1866}
!2839 = !{!2835, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847}
!2840 = !DILocalVariable(name: "argsize", arg: 2, scope: !2836, file: !160, line: 812, type: !48)
!2841 = !DILocalVariable(name: "size", arg: 3, scope: !2836, file: !160, line: 812, type: !246)
!2842 = !DILocalVariable(name: "o", arg: 4, scope: !2836, file: !160, line: 813, type: !1866)
!2843 = !DILocalVariable(name: "p", scope: !2836, file: !160, line: 815, type: !1866)
!2844 = !DILocalVariable(name: "e", scope: !2836, file: !160, line: 816, type: !64)
!2845 = !DILocalVariable(name: "flags", scope: !2836, file: !160, line: 818, type: !64)
!2846 = !DILocalVariable(name: "bufsize", scope: !2836, file: !160, line: 819, type: !48)
!2847 = !DILocalVariable(name: "buf", scope: !2836, file: !160, line: 823, type: !43)
!2848 = !DILocation(line: 812, column: 33, scope: !2836, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 802, column: 10, scope: !2825)
!2850 = !DILocation(line: 812, column: 45, scope: !2836, inlinedAt: !2849)
!2851 = !DILocation(line: 812, column: 62, scope: !2836, inlinedAt: !2849)
!2852 = !DILocation(line: 813, column: 51, scope: !2836, inlinedAt: !2849)
!2853 = !DILocation(line: 815, column: 37, scope: !2836, inlinedAt: !2849)
!2854 = !DILocation(line: 815, column: 33, scope: !2836, inlinedAt: !2849)
!2855 = !DILocation(line: 816, column: 11, scope: !2836, inlinedAt: !2849)
!2856 = !DILocation(line: 816, column: 7, scope: !2836, inlinedAt: !2849)
!2857 = !DILocation(line: 818, column: 18, scope: !2836, inlinedAt: !2849)
!2858 = !DILocation(line: 818, column: 24, scope: !2836, inlinedAt: !2849)
!2859 = !DILocation(line: 818, column: 7, scope: !2836, inlinedAt: !2849)
!2860 = !DILocation(line: 819, column: 69, scope: !2836, inlinedAt: !2849)
!2861 = !DILocation(line: 820, column: 53, scope: !2836, inlinedAt: !2849)
!2862 = !DILocation(line: 821, column: 49, scope: !2836, inlinedAt: !2849)
!2863 = !DILocation(line: 822, column: 49, scope: !2836, inlinedAt: !2849)
!2864 = !DILocation(line: 819, column: 20, scope: !2836, inlinedAt: !2849)
!2865 = !DILocation(line: 822, column: 62, scope: !2836, inlinedAt: !2849)
!2866 = !DILocation(line: 819, column: 10, scope: !2836, inlinedAt: !2849)
!2867 = !DILocalVariable(name: "n", arg: 1, scope: !2868, file: !242, line: 216, type: !48)
!2868 = distinct !DISubprogram(name: "xcharalloc", scope: !242, file: !242, line: 216, type: !2869, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!43, !48}
!2871 = !{!2867}
!2872 = !DILocation(line: 216, column: 20, scope: !2868, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 823, column: 15, scope: !2836, inlinedAt: !2849)
!2874 = !DILocation(line: 218, column: 10, scope: !2868, inlinedAt: !2873)
!2875 = !DILocation(line: 823, column: 9, scope: !2836, inlinedAt: !2849)
!2876 = !DILocation(line: 824, column: 60, scope: !2836, inlinedAt: !2849)
!2877 = !DILocation(line: 826, column: 32, scope: !2836, inlinedAt: !2849)
!2878 = !DILocation(line: 826, column: 47, scope: !2836, inlinedAt: !2849)
!2879 = !DILocation(line: 824, column: 3, scope: !2836, inlinedAt: !2849)
!2880 = !DILocation(line: 827, column: 9, scope: !2836, inlinedAt: !2849)
!2881 = !DILocation(line: 802, column: 3, scope: !2825)
!2882 = !DILocation(line: 812, column: 33, scope: !2836)
!2883 = !DILocation(line: 812, column: 45, scope: !2836)
!2884 = !DILocation(line: 812, column: 62, scope: !2836)
!2885 = !DILocation(line: 813, column: 51, scope: !2836)
!2886 = !DILocation(line: 815, column: 37, scope: !2836)
!2887 = !DILocation(line: 815, column: 33, scope: !2836)
!2888 = !DILocation(line: 816, column: 11, scope: !2836)
!2889 = !DILocation(line: 816, column: 7, scope: !2836)
!2890 = !DILocation(line: 818, column: 18, scope: !2836)
!2891 = !DILocation(line: 818, column: 27, scope: !2836)
!2892 = !DILocation(line: 818, column: 24, scope: !2836)
!2893 = !DILocation(line: 818, column: 7, scope: !2836)
!2894 = !DILocation(line: 819, column: 69, scope: !2836)
!2895 = !DILocation(line: 820, column: 53, scope: !2836)
!2896 = !DILocation(line: 821, column: 49, scope: !2836)
!2897 = !DILocation(line: 822, column: 49, scope: !2836)
!2898 = !DILocation(line: 819, column: 20, scope: !2836)
!2899 = !DILocation(line: 822, column: 62, scope: !2836)
!2900 = !DILocation(line: 819, column: 10, scope: !2836)
!2901 = !DILocation(line: 216, column: 20, scope: !2868, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 823, column: 15, scope: !2836)
!2903 = !DILocation(line: 218, column: 10, scope: !2868, inlinedAt: !2902)
!2904 = !DILocation(line: 823, column: 9, scope: !2836)
!2905 = !DILocation(line: 824, column: 60, scope: !2836)
!2906 = !DILocation(line: 826, column: 32, scope: !2836)
!2907 = !DILocation(line: 826, column: 47, scope: !2836)
!2908 = !DILocation(line: 824, column: 3, scope: !2836)
!2909 = !DILocation(line: 827, column: 9, scope: !2836)
!2910 = !DILocation(line: 828, column: 7, scope: !2836)
!2911 = !DILocation(line: 829, column: 11, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2836, file: !160, line: 828, column: 7)
!2913 = !DILocation(line: 829, column: 5, scope: !2912)
!2914 = !DILocation(line: 830, column: 3, scope: !2836)
!2915 = distinct !DISubprogram(name: "quotearg_free", scope: !160, file: !160, line: 848, type: !218, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2916)
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "sv", scope: !2915, file: !160, line: 850, type: !186)
!2918 = !DILocalVariable(name: "i", scope: !2915, file: !160, line: 851, type: !64)
!2919 = !DILocation(line: 850, column: 24, scope: !2915)
!2920 = !DILocation(line: 850, column: 19, scope: !2915)
!2921 = !DILocation(line: 851, column: 7, scope: !2915)
!2922 = !DILocation(line: 852, column: 19, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !160, line: 852, column: 3)
!2924 = distinct !DILexicalBlock(scope: !2915, file: !160, line: 852, column: 3)
!2925 = !DILocation(line: 852, column: 17, scope: !2923)
!2926 = !DILocation(line: 852, column: 3, scope: !2924)
!2927 = !DILocation(line: 853, column: 17, scope: !2923)
!2928 = !{!2929, !705, i64 8}
!2929 = !{!"slotvec", !931, i64 0, !705, i64 8}
!2930 = !DILocation(line: 853, column: 5, scope: !2923)
!2931 = !DILocation(line: 852, column: 28, scope: !2923)
!2932 = distinct !{!2932, !2926, !2933}
!2933 = !DILocation(line: 853, column: 20, scope: !2924)
!2934 = !DILocation(line: 854, column: 13, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2915, file: !160, line: 854, column: 7)
!2936 = !DILocation(line: 854, column: 17, scope: !2935)
!2937 = !DILocation(line: 854, column: 7, scope: !2915)
!2938 = !DILocation(line: 856, column: 7, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !160, line: 855, column: 5)
!2940 = !DILocation(line: 857, column: 21, scope: !2939)
!2941 = !{!2929, !931, i64 0}
!2942 = !DILocation(line: 858, column: 20, scope: !2939)
!2943 = !DILocation(line: 859, column: 5, scope: !2939)
!2944 = !DILocation(line: 860, column: 10, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2915, file: !160, line: 860, column: 7)
!2946 = !DILocation(line: 860, column: 7, scope: !2915)
!2947 = !DILocation(line: 862, column: 13, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !160, line: 861, column: 5)
!2949 = !DILocation(line: 862, column: 7, scope: !2948)
!2950 = !DILocation(line: 863, column: 15, scope: !2948)
!2951 = !DILocation(line: 864, column: 5, scope: !2948)
!2952 = !DILocation(line: 865, column: 10, scope: !2915)
!2953 = !DILocation(line: 866, column: 1, scope: !2915)
!2954 = distinct !DISubprogram(name: "quotearg_n", scope: !160, file: !160, line: 931, type: !2955, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!43, !64, !61}
!2957 = !{!2958, !2959}
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2954, file: !160, line: 931, type: !64)
!2959 = !DILocalVariable(name: "arg", arg: 2, scope: !2954, file: !160, line: 931, type: !61)
!2960 = !DILocation(line: 931, column: 17, scope: !2954)
!2961 = !DILocation(line: 931, column: 32, scope: !2954)
!2962 = !DILocation(line: 933, column: 10, scope: !2954)
!2963 = !DILocation(line: 933, column: 3, scope: !2954)
!2964 = distinct !DISubprogram(name: "quotearg_n_options", scope: !160, file: !160, line: 877, type: !2965, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!43, !64, !61, !48, !1866}
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973, !2974, !2977, !2978, !2980, !2981, !2982}
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2964, file: !160, line: 877, type: !64)
!2969 = !DILocalVariable(name: "arg", arg: 2, scope: !2964, file: !160, line: 877, type: !61)
!2970 = !DILocalVariable(name: "argsize", arg: 3, scope: !2964, file: !160, line: 877, type: !48)
!2971 = !DILocalVariable(name: "options", arg: 4, scope: !2964, file: !160, line: 878, type: !1866)
!2972 = !DILocalVariable(name: "e", scope: !2964, file: !160, line: 880, type: !64)
!2973 = !DILocalVariable(name: "sv", scope: !2964, file: !160, line: 882, type: !186)
!2974 = !DILocalVariable(name: "preallocated", scope: !2975, file: !160, line: 889, type: !70)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !160, line: 888, column: 5)
!2976 = distinct !DILexicalBlock(scope: !2964, file: !160, line: 887, column: 7)
!2977 = !DILocalVariable(name: "nmax", scope: !2975, file: !160, line: 890, type: !64)
!2978 = !DILocalVariable(name: "size", scope: !2979, file: !160, line: 903, type: !48)
!2979 = distinct !DILexicalBlock(scope: !2964, file: !160, line: 902, column: 3)
!2980 = !DILocalVariable(name: "val", scope: !2979, file: !160, line: 904, type: !43)
!2981 = !DILocalVariable(name: "flags", scope: !2979, file: !160, line: 906, type: !64)
!2982 = !DILocalVariable(name: "qsize", scope: !2979, file: !160, line: 907, type: !48)
!2983 = !DILocation(line: 877, column: 25, scope: !2964)
!2984 = !DILocation(line: 877, column: 40, scope: !2964)
!2985 = !DILocation(line: 877, column: 52, scope: !2964)
!2986 = !DILocation(line: 878, column: 51, scope: !2964)
!2987 = !DILocation(line: 880, column: 11, scope: !2964)
!2988 = !DILocation(line: 880, column: 7, scope: !2964)
!2989 = !DILocation(line: 882, column: 24, scope: !2964)
!2990 = !DILocation(line: 882, column: 19, scope: !2964)
!2991 = !DILocation(line: 884, column: 9, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2964, file: !160, line: 884, column: 7)
!2993 = !DILocation(line: 884, column: 7, scope: !2964)
!2994 = !DILocation(line: 885, column: 5, scope: !2992)
!2995 = !DILocation(line: 887, column: 7, scope: !2976)
!2996 = !DILocation(line: 887, column: 14, scope: !2976)
!2997 = !DILocation(line: 887, column: 7, scope: !2964)
!2998 = !DILocation(line: 889, column: 31, scope: !2975)
!2999 = !DILocation(line: 890, column: 11, scope: !2975)
!3000 = !DILocation(line: 892, column: 16, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2975, file: !160, line: 892, column: 11)
!3002 = !DILocation(line: 892, column: 11, scope: !2975)
!3003 = !DILocation(line: 893, column: 9, scope: !3001)
!3004 = !DILocation(line: 895, column: 32, scope: !2975)
!3005 = !DILocation(line: 895, column: 61, scope: !2975)
!3006 = !DILocation(line: 895, column: 58, scope: !2975)
!3007 = !DILocation(line: 895, column: 66, scope: !2975)
!3008 = !DILocation(line: 895, column: 22, scope: !2975)
!3009 = !DILocation(line: 895, column: 15, scope: !2975)
!3010 = !DILocation(line: 896, column: 11, scope: !2975)
!3011 = !DILocation(line: 897, column: 15, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2975, file: !160, line: 896, column: 11)
!3013 = !{i64 0, i64 8, !1739, i64 8, i64 8, !704}
!3014 = !DILocation(line: 897, column: 9, scope: !3012)
!3015 = !DILocation(line: 898, column: 20, scope: !2975)
!3016 = !DILocation(line: 898, column: 18, scope: !2975)
!3017 = !DILocation(line: 898, column: 7, scope: !2975)
!3018 = !DILocation(line: 898, column: 38, scope: !2975)
!3019 = !DILocation(line: 898, column: 31, scope: !2975)
!3020 = !DILocation(line: 898, column: 48, scope: !2975)
!3021 = !DILocation(line: 899, column: 14, scope: !2975)
!3022 = !DILocation(line: 900, column: 5, scope: !2975)
!3023 = !DILocation(line: 0, scope: !2964)
!3024 = !DILocation(line: 903, column: 19, scope: !2979)
!3025 = !DILocation(line: 903, column: 25, scope: !2979)
!3026 = !DILocation(line: 903, column: 12, scope: !2979)
!3027 = !DILocation(line: 904, column: 23, scope: !2979)
!3028 = !DILocation(line: 904, column: 11, scope: !2979)
!3029 = !DILocation(line: 906, column: 26, scope: !2979)
!3030 = !DILocation(line: 906, column: 32, scope: !2979)
!3031 = !DILocation(line: 906, column: 9, scope: !2979)
!3032 = !DILocation(line: 908, column: 55, scope: !2979)
!3033 = !DILocation(line: 909, column: 46, scope: !2979)
!3034 = !DILocation(line: 910, column: 55, scope: !2979)
!3035 = !DILocation(line: 911, column: 55, scope: !2979)
!3036 = !DILocation(line: 907, column: 20, scope: !2979)
!3037 = !DILocation(line: 907, column: 12, scope: !2979)
!3038 = !DILocation(line: 913, column: 14, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2979, file: !160, line: 913, column: 9)
!3040 = !DILocation(line: 913, column: 9, scope: !2979)
!3041 = !DILocation(line: 915, column: 35, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3039, file: !160, line: 914, column: 7)
!3043 = !DILocation(line: 915, column: 20, scope: !3042)
!3044 = !DILocation(line: 916, column: 17, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3042, file: !160, line: 916, column: 13)
!3046 = !DILocation(line: 916, column: 13, scope: !3042)
!3047 = !DILocation(line: 917, column: 11, scope: !3045)
!3048 = !DILocation(line: 216, column: 20, scope: !2868, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 918, column: 27, scope: !3042)
!3050 = !DILocation(line: 218, column: 10, scope: !2868, inlinedAt: !3049)
!3051 = !DILocation(line: 918, column: 19, scope: !3042)
!3052 = !DILocation(line: 919, column: 69, scope: !3042)
!3053 = !DILocation(line: 921, column: 44, scope: !3042)
!3054 = !DILocation(line: 922, column: 44, scope: !3042)
!3055 = !DILocation(line: 919, column: 9, scope: !3042)
!3056 = !DILocation(line: 923, column: 7, scope: !3042)
!3057 = !DILocation(line: 0, scope: !2979)
!3058 = !DILocation(line: 925, column: 11, scope: !2979)
!3059 = !DILocation(line: 926, column: 5, scope: !2979)
!3060 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !160, file: !160, line: 937, type: !3061, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!43, !64, !61, !48}
!3063 = !{!3064, !3065, !3066}
!3064 = !DILocalVariable(name: "n", arg: 1, scope: !3060, file: !160, line: 937, type: !64)
!3065 = !DILocalVariable(name: "arg", arg: 2, scope: !3060, file: !160, line: 937, type: !61)
!3066 = !DILocalVariable(name: "argsize", arg: 3, scope: !3060, file: !160, line: 937, type: !48)
!3067 = !DILocation(line: 937, column: 21, scope: !3060)
!3068 = !DILocation(line: 937, column: 36, scope: !3060)
!3069 = !DILocation(line: 937, column: 48, scope: !3060)
!3070 = !DILocation(line: 939, column: 10, scope: !3060)
!3071 = !DILocation(line: 939, column: 3, scope: !3060)
!3072 = distinct !DISubprogram(name: "quotearg", scope: !160, file: !160, line: 943, type: !3073, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!43, !61}
!3075 = !{!3076}
!3076 = !DILocalVariable(name: "arg", arg: 1, scope: !3072, file: !160, line: 943, type: !61)
!3077 = !DILocation(line: 943, column: 23, scope: !3072)
!3078 = !DILocation(line: 931, column: 17, scope: !2954, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 945, column: 10, scope: !3072)
!3080 = !DILocation(line: 931, column: 32, scope: !2954, inlinedAt: !3079)
!3081 = !DILocation(line: 933, column: 10, scope: !2954, inlinedAt: !3079)
!3082 = !DILocation(line: 945, column: 3, scope: !3072)
!3083 = distinct !DISubprogram(name: "quotearg_mem", scope: !160, file: !160, line: 949, type: !3084, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!43, !61, !48}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "arg", arg: 1, scope: !3083, file: !160, line: 949, type: !61)
!3088 = !DILocalVariable(name: "argsize", arg: 2, scope: !3083, file: !160, line: 949, type: !48)
!3089 = !DILocation(line: 949, column: 27, scope: !3083)
!3090 = !DILocation(line: 949, column: 39, scope: !3083)
!3091 = !DILocation(line: 937, column: 21, scope: !3060, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 951, column: 10, scope: !3083)
!3093 = !DILocation(line: 937, column: 36, scope: !3060, inlinedAt: !3092)
!3094 = !DILocation(line: 937, column: 48, scope: !3060, inlinedAt: !3092)
!3095 = !DILocation(line: 939, column: 10, scope: !3060, inlinedAt: !3092)
!3096 = !DILocation(line: 951, column: 3, scope: !3083)
!3097 = distinct !DISubprogram(name: "quotearg_n_style", scope: !160, file: !160, line: 955, type: !3098, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!43, !64, !5, !61}
!3100 = !{!3101, !3102, !3103, !3104}
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !160, line: 955, type: !64)
!3102 = !DILocalVariable(name: "s", arg: 2, scope: !3097, file: !160, line: 955, type: !5)
!3103 = !DILocalVariable(name: "arg", arg: 3, scope: !3097, file: !160, line: 955, type: !61)
!3104 = !DILocalVariable(name: "o", scope: !3097, file: !160, line: 957, type: !1867)
!3105 = !DILocation(line: 955, column: 23, scope: !3097)
!3106 = !DILocation(line: 955, column: 45, scope: !3097)
!3107 = !DILocation(line: 955, column: 60, scope: !3097)
!3108 = !DILocation(line: 957, column: 3, scope: !3097)
!3109 = !DILocation(line: 957, column: 32, scope: !3097)
!3110 = !DILocalVariable(name: "style", arg: 1, scope: !3111, file: !160, line: 193, type: !5)
!3111 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !160, file: !160, line: 193, type: !3112, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!167, !5}
!3114 = !{!3110, !3115}
!3115 = !DILocalVariable(name: "o", scope: !3111, file: !160, line: 195, type: !167)
!3116 = !DILocation(line: 193, column: 48, scope: !3111, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 957, column: 36, scope: !3097)
!3118 = !DILocation(line: 195, column: 26, scope: !3111, inlinedAt: !3117)
!3119 = !{!3120}
!3120 = distinct !{!3120, !3121, !"quoting_options_from_style: argument 0"}
!3121 = distinct !{!3121, !"quoting_options_from_style"}
!3122 = !DILocation(line: 196, column: 13, scope: !3123, inlinedAt: !3117)
!3123 = distinct !DILexicalBlock(scope: !3111, file: !160, line: 196, column: 7)
!3124 = !DILocation(line: 196, column: 7, scope: !3111, inlinedAt: !3117)
!3125 = !DILocation(line: 197, column: 5, scope: !3123, inlinedAt: !3117)
!3126 = !DILocation(line: 198, column: 5, scope: !3111, inlinedAt: !3117)
!3127 = !DILocation(line: 198, column: 11, scope: !3111, inlinedAt: !3117)
!3128 = !DILocation(line: 958, column: 10, scope: !3097)
!3129 = !DILocation(line: 959, column: 1, scope: !3097)
!3130 = !DILocation(line: 958, column: 3, scope: !3097)
!3131 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !160, file: !160, line: 962, type: !3132, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!43, !64, !5, !61, !48}
!3134 = !{!3135, !3136, !3137, !3138, !3139}
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3131, file: !160, line: 962, type: !64)
!3136 = !DILocalVariable(name: "s", arg: 2, scope: !3131, file: !160, line: 962, type: !5)
!3137 = !DILocalVariable(name: "arg", arg: 3, scope: !3131, file: !160, line: 963, type: !61)
!3138 = !DILocalVariable(name: "argsize", arg: 4, scope: !3131, file: !160, line: 963, type: !48)
!3139 = !DILocalVariable(name: "o", scope: !3131, file: !160, line: 965, type: !1867)
!3140 = !DILocation(line: 962, column: 27, scope: !3131)
!3141 = !DILocation(line: 962, column: 49, scope: !3131)
!3142 = !DILocation(line: 963, column: 35, scope: !3131)
!3143 = !DILocation(line: 963, column: 47, scope: !3131)
!3144 = !DILocation(line: 965, column: 3, scope: !3131)
!3145 = !DILocation(line: 965, column: 32, scope: !3131)
!3146 = !DILocation(line: 193, column: 48, scope: !3111, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 965, column: 36, scope: !3131)
!3148 = !DILocation(line: 195, column: 26, scope: !3111, inlinedAt: !3147)
!3149 = !{!3150}
!3150 = distinct !{!3150, !3151, !"quoting_options_from_style: argument 0"}
!3151 = distinct !{!3151, !"quoting_options_from_style"}
!3152 = !DILocation(line: 196, column: 13, scope: !3123, inlinedAt: !3147)
!3153 = !DILocation(line: 196, column: 7, scope: !3111, inlinedAt: !3147)
!3154 = !DILocation(line: 197, column: 5, scope: !3123, inlinedAt: !3147)
!3155 = !DILocation(line: 198, column: 5, scope: !3111, inlinedAt: !3147)
!3156 = !DILocation(line: 198, column: 11, scope: !3111, inlinedAt: !3147)
!3157 = !DILocation(line: 966, column: 10, scope: !3131)
!3158 = !DILocation(line: 967, column: 1, scope: !3131)
!3159 = !DILocation(line: 966, column: 3, scope: !3131)
!3160 = distinct !DISubprogram(name: "quotearg_style", scope: !160, file: !160, line: 970, type: !3161, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!43, !5, !61}
!3163 = !{!3164, !3165}
!3164 = !DILocalVariable(name: "s", arg: 1, scope: !3160, file: !160, line: 970, type: !5)
!3165 = !DILocalVariable(name: "arg", arg: 2, scope: !3160, file: !160, line: 970, type: !61)
!3166 = !DILocation(line: 970, column: 36, scope: !3160)
!3167 = !DILocation(line: 970, column: 51, scope: !3160)
!3168 = !DILocation(line: 955, column: 23, scope: !3097, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 972, column: 10, scope: !3160)
!3170 = !DILocation(line: 955, column: 45, scope: !3097, inlinedAt: !3169)
!3171 = !DILocation(line: 955, column: 60, scope: !3097, inlinedAt: !3169)
!3172 = !DILocation(line: 957, column: 3, scope: !3097, inlinedAt: !3169)
!3173 = !DILocation(line: 957, column: 32, scope: !3097, inlinedAt: !3169)
!3174 = !DILocation(line: 193, column: 48, scope: !3111, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 957, column: 36, scope: !3097, inlinedAt: !3169)
!3176 = !DILocation(line: 195, column: 26, scope: !3111, inlinedAt: !3175)
!3177 = !{!3178}
!3178 = distinct !{!3178, !3179, !"quoting_options_from_style: argument 0"}
!3179 = distinct !{!3179, !"quoting_options_from_style"}
!3180 = !DILocation(line: 196, column: 13, scope: !3123, inlinedAt: !3175)
!3181 = !DILocation(line: 196, column: 7, scope: !3111, inlinedAt: !3175)
!3182 = !DILocation(line: 197, column: 5, scope: !3123, inlinedAt: !3175)
!3183 = !DILocation(line: 198, column: 5, scope: !3111, inlinedAt: !3175)
!3184 = !DILocation(line: 198, column: 11, scope: !3111, inlinedAt: !3175)
!3185 = !DILocation(line: 958, column: 10, scope: !3097, inlinedAt: !3169)
!3186 = !DILocation(line: 959, column: 1, scope: !3097, inlinedAt: !3169)
!3187 = !DILocation(line: 972, column: 3, scope: !3160)
!3188 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !160, file: !160, line: 976, type: !3189, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!43, !5, !61, !48}
!3191 = !{!3192, !3193, !3194}
!3192 = !DILocalVariable(name: "s", arg: 1, scope: !3188, file: !160, line: 976, type: !5)
!3193 = !DILocalVariable(name: "arg", arg: 2, scope: !3188, file: !160, line: 976, type: !61)
!3194 = !DILocalVariable(name: "argsize", arg: 3, scope: !3188, file: !160, line: 976, type: !48)
!3195 = !DILocation(line: 976, column: 40, scope: !3188)
!3196 = !DILocation(line: 976, column: 55, scope: !3188)
!3197 = !DILocation(line: 976, column: 67, scope: !3188)
!3198 = !DILocation(line: 962, column: 27, scope: !3131, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 978, column: 10, scope: !3188)
!3200 = !DILocation(line: 962, column: 49, scope: !3131, inlinedAt: !3199)
!3201 = !DILocation(line: 963, column: 35, scope: !3131, inlinedAt: !3199)
!3202 = !DILocation(line: 963, column: 47, scope: !3131, inlinedAt: !3199)
!3203 = !DILocation(line: 965, column: 3, scope: !3131, inlinedAt: !3199)
!3204 = !DILocation(line: 965, column: 32, scope: !3131, inlinedAt: !3199)
!3205 = !DILocation(line: 193, column: 48, scope: !3111, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 965, column: 36, scope: !3131, inlinedAt: !3199)
!3207 = !DILocation(line: 195, column: 26, scope: !3111, inlinedAt: !3206)
!3208 = !{!3209}
!3209 = distinct !{!3209, !3210, !"quoting_options_from_style: argument 0"}
!3210 = distinct !{!3210, !"quoting_options_from_style"}
!3211 = !DILocation(line: 196, column: 13, scope: !3123, inlinedAt: !3206)
!3212 = !DILocation(line: 196, column: 7, scope: !3111, inlinedAt: !3206)
!3213 = !DILocation(line: 197, column: 5, scope: !3123, inlinedAt: !3206)
!3214 = !DILocation(line: 198, column: 5, scope: !3111, inlinedAt: !3206)
!3215 = !DILocation(line: 198, column: 11, scope: !3111, inlinedAt: !3206)
!3216 = !DILocation(line: 966, column: 10, scope: !3131, inlinedAt: !3199)
!3217 = !DILocation(line: 967, column: 1, scope: !3131, inlinedAt: !3199)
!3218 = !DILocation(line: 978, column: 3, scope: !3188)
!3219 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !160, file: !160, line: 982, type: !3220, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!43, !61, !48, !44}
!3222 = !{!3223, !3224, !3225, !3226}
!3223 = !DILocalVariable(name: "arg", arg: 1, scope: !3219, file: !160, line: 982, type: !61)
!3224 = !DILocalVariable(name: "argsize", arg: 2, scope: !3219, file: !160, line: 982, type: !48)
!3225 = !DILocalVariable(name: "ch", arg: 3, scope: !3219, file: !160, line: 982, type: !44)
!3226 = !DILocalVariable(name: "options", scope: !3219, file: !160, line: 984, type: !167)
!3227 = !DILocation(line: 982, column: 32, scope: !3219)
!3228 = !DILocation(line: 982, column: 44, scope: !3219)
!3229 = !DILocation(line: 982, column: 58, scope: !3219)
!3230 = !DILocation(line: 984, column: 3, scope: !3219)
!3231 = !DILocation(line: 985, column: 13, scope: !3219)
!3232 = !{i64 0, i64 4, !935, i64 4, i64 4, !789, i64 8, i64 32, !935, i64 40, i64 8, !704, i64 48, i64 8, !704}
!3233 = !DILocation(line: 984, column: 26, scope: !3219)
!3234 = !DILocation(line: 152, column: 43, scope: !1888, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 986, column: 3, scope: !3219)
!3236 = !DILocation(line: 152, column: 51, scope: !1888, inlinedAt: !3235)
!3237 = !DILocation(line: 152, column: 58, scope: !1888, inlinedAt: !3235)
!3238 = !DILocation(line: 154, column: 17, scope: !1888, inlinedAt: !3235)
!3239 = !DILocation(line: 156, column: 62, scope: !1888, inlinedAt: !3235)
!3240 = !DILocation(line: 156, column: 57, scope: !1888, inlinedAt: !3235)
!3241 = !DILocation(line: 155, column: 17, scope: !1888, inlinedAt: !3235)
!3242 = !DILocation(line: 157, column: 15, scope: !1888, inlinedAt: !3235)
!3243 = !DILocation(line: 157, column: 7, scope: !1888, inlinedAt: !3235)
!3244 = !DILocation(line: 158, column: 12, scope: !1888, inlinedAt: !3235)
!3245 = !DILocation(line: 158, column: 15, scope: !1888, inlinedAt: !3235)
!3246 = !DILocation(line: 158, column: 25, scope: !1888, inlinedAt: !3235)
!3247 = !DILocation(line: 158, column: 7, scope: !1888, inlinedAt: !3235)
!3248 = !DILocation(line: 159, column: 18, scope: !1888, inlinedAt: !3235)
!3249 = !DILocation(line: 159, column: 23, scope: !1888, inlinedAt: !3235)
!3250 = !DILocation(line: 159, column: 6, scope: !1888, inlinedAt: !3235)
!3251 = !DILocation(line: 987, column: 10, scope: !3219)
!3252 = !DILocation(line: 988, column: 1, scope: !3219)
!3253 = !DILocation(line: 987, column: 3, scope: !3219)
!3254 = distinct !DISubprogram(name: "quotearg_char", scope: !160, file: !160, line: 991, type: !3255, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!43, !61, !44}
!3257 = !{!3258, !3259}
!3258 = !DILocalVariable(name: "arg", arg: 1, scope: !3254, file: !160, line: 991, type: !61)
!3259 = !DILocalVariable(name: "ch", arg: 2, scope: !3254, file: !160, line: 991, type: !44)
!3260 = !DILocation(line: 991, column: 28, scope: !3254)
!3261 = !DILocation(line: 991, column: 38, scope: !3254)
!3262 = !DILocation(line: 982, column: 32, scope: !3219, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 993, column: 10, scope: !3254)
!3264 = !DILocation(line: 982, column: 44, scope: !3219, inlinedAt: !3263)
!3265 = !DILocation(line: 982, column: 58, scope: !3219, inlinedAt: !3263)
!3266 = !DILocation(line: 984, column: 3, scope: !3219, inlinedAt: !3263)
!3267 = !DILocation(line: 985, column: 13, scope: !3219, inlinedAt: !3263)
!3268 = !DILocation(line: 984, column: 26, scope: !3219, inlinedAt: !3263)
!3269 = !DILocation(line: 152, column: 43, scope: !1888, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 986, column: 3, scope: !3219, inlinedAt: !3263)
!3271 = !DILocation(line: 152, column: 51, scope: !1888, inlinedAt: !3270)
!3272 = !DILocation(line: 152, column: 58, scope: !1888, inlinedAt: !3270)
!3273 = !DILocation(line: 154, column: 17, scope: !1888, inlinedAt: !3270)
!3274 = !DILocation(line: 156, column: 62, scope: !1888, inlinedAt: !3270)
!3275 = !DILocation(line: 156, column: 57, scope: !1888, inlinedAt: !3270)
!3276 = !DILocation(line: 155, column: 17, scope: !1888, inlinedAt: !3270)
!3277 = !DILocation(line: 157, column: 15, scope: !1888, inlinedAt: !3270)
!3278 = !DILocation(line: 157, column: 7, scope: !1888, inlinedAt: !3270)
!3279 = !DILocation(line: 158, column: 12, scope: !1888, inlinedAt: !3270)
!3280 = !DILocation(line: 158, column: 15, scope: !1888, inlinedAt: !3270)
!3281 = !DILocation(line: 158, column: 25, scope: !1888, inlinedAt: !3270)
!3282 = !DILocation(line: 158, column: 7, scope: !1888, inlinedAt: !3270)
!3283 = !DILocation(line: 159, column: 18, scope: !1888, inlinedAt: !3270)
!3284 = !DILocation(line: 159, column: 23, scope: !1888, inlinedAt: !3270)
!3285 = !DILocation(line: 159, column: 6, scope: !1888, inlinedAt: !3270)
!3286 = !DILocation(line: 987, column: 10, scope: !3219, inlinedAt: !3263)
!3287 = !DILocation(line: 988, column: 1, scope: !3219, inlinedAt: !3263)
!3288 = !DILocation(line: 993, column: 3, scope: !3254)
!3289 = distinct !DISubprogram(name: "quotearg_colon", scope: !160, file: !160, line: 997, type: !3073, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "arg", arg: 1, scope: !3289, file: !160, line: 997, type: !61)
!3292 = !DILocation(line: 997, column: 29, scope: !3289)
!3293 = !DILocation(line: 991, column: 28, scope: !3254, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 999, column: 10, scope: !3289)
!3295 = !DILocation(line: 991, column: 38, scope: !3254, inlinedAt: !3294)
!3296 = !DILocation(line: 982, column: 32, scope: !3219, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 993, column: 10, scope: !3254, inlinedAt: !3294)
!3298 = !DILocation(line: 982, column: 44, scope: !3219, inlinedAt: !3297)
!3299 = !DILocation(line: 982, column: 58, scope: !3219, inlinedAt: !3297)
!3300 = !DILocation(line: 984, column: 3, scope: !3219, inlinedAt: !3297)
!3301 = !DILocation(line: 985, column: 13, scope: !3219, inlinedAt: !3297)
!3302 = !DILocation(line: 984, column: 26, scope: !3219, inlinedAt: !3297)
!3303 = !DILocation(line: 152, column: 43, scope: !1888, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 986, column: 3, scope: !3219, inlinedAt: !3297)
!3305 = !DILocation(line: 152, column: 51, scope: !1888, inlinedAt: !3304)
!3306 = !DILocation(line: 152, column: 58, scope: !1888, inlinedAt: !3304)
!3307 = !DILocation(line: 154, column: 17, scope: !1888, inlinedAt: !3304)
!3308 = !DILocation(line: 156, column: 57, scope: !1888, inlinedAt: !3304)
!3309 = !DILocation(line: 155, column: 17, scope: !1888, inlinedAt: !3304)
!3310 = !DILocation(line: 157, column: 7, scope: !1888, inlinedAt: !3304)
!3311 = !DILocation(line: 158, column: 12, scope: !1888, inlinedAt: !3304)
!3312 = !DILocation(line: 159, column: 6, scope: !1888, inlinedAt: !3304)
!3313 = !DILocation(line: 987, column: 10, scope: !3219, inlinedAt: !3297)
!3314 = !DILocation(line: 988, column: 1, scope: !3219, inlinedAt: !3297)
!3315 = !DILocation(line: 999, column: 3, scope: !3289)
!3316 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !160, file: !160, line: 1003, type: !3084, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3317)
!3317 = !{!3318, !3319}
!3318 = !DILocalVariable(name: "arg", arg: 1, scope: !3316, file: !160, line: 1003, type: !61)
!3319 = !DILocalVariable(name: "argsize", arg: 2, scope: !3316, file: !160, line: 1003, type: !48)
!3320 = !DILocation(line: 1003, column: 33, scope: !3316)
!3321 = !DILocation(line: 1003, column: 45, scope: !3316)
!3322 = !DILocation(line: 982, column: 32, scope: !3219, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1005, column: 10, scope: !3316)
!3324 = !DILocation(line: 982, column: 44, scope: !3219, inlinedAt: !3323)
!3325 = !DILocation(line: 982, column: 58, scope: !3219, inlinedAt: !3323)
!3326 = !DILocation(line: 984, column: 3, scope: !3219, inlinedAt: !3323)
!3327 = !DILocation(line: 985, column: 13, scope: !3219, inlinedAt: !3323)
!3328 = !DILocation(line: 984, column: 26, scope: !3219, inlinedAt: !3323)
!3329 = !DILocation(line: 152, column: 43, scope: !1888, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 986, column: 3, scope: !3219, inlinedAt: !3323)
!3331 = !DILocation(line: 152, column: 51, scope: !1888, inlinedAt: !3330)
!3332 = !DILocation(line: 152, column: 58, scope: !1888, inlinedAt: !3330)
!3333 = !DILocation(line: 154, column: 17, scope: !1888, inlinedAt: !3330)
!3334 = !DILocation(line: 156, column: 57, scope: !1888, inlinedAt: !3330)
!3335 = !DILocation(line: 155, column: 17, scope: !1888, inlinedAt: !3330)
!3336 = !DILocation(line: 157, column: 7, scope: !1888, inlinedAt: !3330)
!3337 = !DILocation(line: 158, column: 12, scope: !1888, inlinedAt: !3330)
!3338 = !DILocation(line: 159, column: 6, scope: !1888, inlinedAt: !3330)
!3339 = !DILocation(line: 987, column: 10, scope: !3219, inlinedAt: !3323)
!3340 = !DILocation(line: 988, column: 1, scope: !3219, inlinedAt: !3323)
!3341 = !DILocation(line: 1005, column: 3, scope: !3316)
!3342 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !160, file: !160, line: 1009, type: !3098, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3343)
!3343 = !{!3344, !3345, !3346, !3347}
!3344 = !DILocalVariable(name: "n", arg: 1, scope: !3342, file: !160, line: 1009, type: !64)
!3345 = !DILocalVariable(name: "s", arg: 2, scope: !3342, file: !160, line: 1009, type: !5)
!3346 = !DILocalVariable(name: "arg", arg: 3, scope: !3342, file: !160, line: 1009, type: !61)
!3347 = !DILocalVariable(name: "options", scope: !3342, file: !160, line: 1011, type: !167)
!3348 = !DILocation(line: 195, column: 26, scope: !3111, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 1012, column: 13, scope: !3342)
!3350 = !DILocation(line: 1009, column: 29, scope: !3342)
!3351 = !DILocation(line: 1009, column: 51, scope: !3342)
!3352 = !DILocation(line: 1009, column: 66, scope: !3342)
!3353 = !DILocation(line: 1011, column: 3, scope: !3342)
!3354 = !DILocation(line: 1012, column: 13, scope: !3342)
!3355 = !DILocation(line: 193, column: 48, scope: !3111, inlinedAt: !3349)
!3356 = !{!3357}
!3357 = distinct !{!3357, !3358, !"quoting_options_from_style: argument 0"}
!3358 = distinct !{!3358, !"quoting_options_from_style"}
!3359 = !DILocation(line: 196, column: 13, scope: !3123, inlinedAt: !3349)
!3360 = !DILocation(line: 196, column: 7, scope: !3111, inlinedAt: !3349)
!3361 = !DILocation(line: 197, column: 5, scope: !3123, inlinedAt: !3349)
!3362 = !DILocation(line: 1011, column: 26, scope: !3342)
!3363 = !DILocation(line: 152, column: 43, scope: !1888, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 1013, column: 3, scope: !3342)
!3365 = !DILocation(line: 152, column: 51, scope: !1888, inlinedAt: !3364)
!3366 = !DILocation(line: 152, column: 58, scope: !1888, inlinedAt: !3364)
!3367 = !DILocation(line: 154, column: 17, scope: !1888, inlinedAt: !3364)
!3368 = !DILocation(line: 156, column: 57, scope: !1888, inlinedAt: !3364)
!3369 = !DILocation(line: 155, column: 17, scope: !1888, inlinedAt: !3364)
!3370 = !DILocation(line: 157, column: 7, scope: !1888, inlinedAt: !3364)
!3371 = !DILocation(line: 158, column: 12, scope: !1888, inlinedAt: !3364)
!3372 = !DILocation(line: 159, column: 6, scope: !1888, inlinedAt: !3364)
!3373 = !DILocation(line: 1014, column: 10, scope: !3342)
!3374 = !DILocation(line: 1015, column: 1, scope: !3342)
!3375 = !DILocation(line: 1014, column: 3, scope: !3342)
!3376 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !160, file: !160, line: 1018, type: !3377, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!43, !64, !61, !61, !61}
!3379 = !{!3380, !3381, !3382, !3383}
!3380 = !DILocalVariable(name: "n", arg: 1, scope: !3376, file: !160, line: 1018, type: !64)
!3381 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3376, file: !160, line: 1018, type: !61)
!3382 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3376, file: !160, line: 1019, type: !61)
!3383 = !DILocalVariable(name: "arg", arg: 4, scope: !3376, file: !160, line: 1019, type: !61)
!3384 = !DILocation(line: 1018, column: 24, scope: !3376)
!3385 = !DILocation(line: 1018, column: 39, scope: !3376)
!3386 = !DILocation(line: 1019, column: 32, scope: !3376)
!3387 = !DILocation(line: 1019, column: 57, scope: !3376)
!3388 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !160, line: 1026, type: !64)
!3389 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !160, file: !160, line: 1026, type: !3390, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!43, !64, !61, !61, !61, !48}
!3392 = !{!3388, !3393, !3394, !3395, !3396, !3397}
!3393 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3389, file: !160, line: 1026, type: !61)
!3394 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3389, file: !160, line: 1027, type: !61)
!3395 = !DILocalVariable(name: "arg", arg: 4, scope: !3389, file: !160, line: 1028, type: !61)
!3396 = !DILocalVariable(name: "argsize", arg: 5, scope: !3389, file: !160, line: 1028, type: !48)
!3397 = !DILocalVariable(name: "o", scope: !3389, file: !160, line: 1030, type: !167)
!3398 = !DILocation(line: 1026, column: 28, scope: !3389, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1021, column: 10, scope: !3376)
!3400 = !DILocation(line: 1026, column: 43, scope: !3389, inlinedAt: !3399)
!3401 = !DILocation(line: 1027, column: 36, scope: !3389, inlinedAt: !3399)
!3402 = !DILocation(line: 1028, column: 36, scope: !3389, inlinedAt: !3399)
!3403 = !DILocation(line: 1028, column: 48, scope: !3389, inlinedAt: !3399)
!3404 = !DILocation(line: 1030, column: 3, scope: !3389, inlinedAt: !3399)
!3405 = !DILocation(line: 1030, column: 30, scope: !3389, inlinedAt: !3399)
!3406 = !DILocation(line: 1030, column: 26, scope: !3389, inlinedAt: !3399)
!3407 = !DILocation(line: 179, column: 45, scope: !1936, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 1031, column: 3, scope: !3389, inlinedAt: !3399)
!3409 = !DILocation(line: 180, column: 33, scope: !1936, inlinedAt: !3408)
!3410 = !DILocation(line: 180, column: 57, scope: !1936, inlinedAt: !3408)
!3411 = !DILocation(line: 184, column: 6, scope: !1936, inlinedAt: !3408)
!3412 = !DILocation(line: 184, column: 12, scope: !1936, inlinedAt: !3408)
!3413 = !DILocation(line: 185, column: 8, scope: !1952, inlinedAt: !3408)
!3414 = !DILocation(line: 185, column: 23, scope: !1952, inlinedAt: !3408)
!3415 = !DILocation(line: 185, column: 19, scope: !1952, inlinedAt: !3408)
!3416 = !DILocation(line: 186, column: 5, scope: !1952, inlinedAt: !3408)
!3417 = !DILocation(line: 187, column: 6, scope: !1936, inlinedAt: !3408)
!3418 = !DILocation(line: 187, column: 17, scope: !1936, inlinedAt: !3408)
!3419 = !DILocation(line: 188, column: 6, scope: !1936, inlinedAt: !3408)
!3420 = !DILocation(line: 188, column: 18, scope: !1936, inlinedAt: !3408)
!3421 = !DILocation(line: 1032, column: 10, scope: !3389, inlinedAt: !3399)
!3422 = !DILocation(line: 1033, column: 1, scope: !3389, inlinedAt: !3399)
!3423 = !DILocation(line: 1021, column: 3, scope: !3376)
!3424 = !DILocation(line: 1026, column: 28, scope: !3389)
!3425 = !DILocation(line: 1026, column: 43, scope: !3389)
!3426 = !DILocation(line: 1027, column: 36, scope: !3389)
!3427 = !DILocation(line: 1028, column: 36, scope: !3389)
!3428 = !DILocation(line: 1028, column: 48, scope: !3389)
!3429 = !DILocation(line: 1030, column: 3, scope: !3389)
!3430 = !DILocation(line: 1030, column: 30, scope: !3389)
!3431 = !DILocation(line: 1030, column: 26, scope: !3389)
!3432 = !DILocation(line: 179, column: 45, scope: !1936, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 1031, column: 3, scope: !3389)
!3434 = !DILocation(line: 180, column: 33, scope: !1936, inlinedAt: !3433)
!3435 = !DILocation(line: 180, column: 57, scope: !1936, inlinedAt: !3433)
!3436 = !DILocation(line: 184, column: 6, scope: !1936, inlinedAt: !3433)
!3437 = !DILocation(line: 184, column: 12, scope: !1936, inlinedAt: !3433)
!3438 = !DILocation(line: 185, column: 8, scope: !1952, inlinedAt: !3433)
!3439 = !DILocation(line: 185, column: 23, scope: !1952, inlinedAt: !3433)
!3440 = !DILocation(line: 185, column: 19, scope: !1952, inlinedAt: !3433)
!3441 = !DILocation(line: 186, column: 5, scope: !1952, inlinedAt: !3433)
!3442 = !DILocation(line: 187, column: 6, scope: !1936, inlinedAt: !3433)
!3443 = !DILocation(line: 187, column: 17, scope: !1936, inlinedAt: !3433)
!3444 = !DILocation(line: 188, column: 6, scope: !1936, inlinedAt: !3433)
!3445 = !DILocation(line: 188, column: 18, scope: !1936, inlinedAt: !3433)
!3446 = !DILocation(line: 1032, column: 10, scope: !3389)
!3447 = !DILocation(line: 1033, column: 1, scope: !3389)
!3448 = !DILocation(line: 1032, column: 3, scope: !3389)
!3449 = distinct !DISubprogram(name: "quotearg_custom", scope: !160, file: !160, line: 1036, type: !3450, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!43, !61, !61, !61}
!3452 = !{!3453, !3454, !3455}
!3453 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3449, file: !160, line: 1036, type: !61)
!3454 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3449, file: !160, line: 1036, type: !61)
!3455 = !DILocalVariable(name: "arg", arg: 3, scope: !3449, file: !160, line: 1037, type: !61)
!3456 = !DILocation(line: 1036, column: 30, scope: !3449)
!3457 = !DILocation(line: 1036, column: 54, scope: !3449)
!3458 = !DILocation(line: 1037, column: 30, scope: !3449)
!3459 = !DILocation(line: 1018, column: 24, scope: !3376, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 1039, column: 10, scope: !3449)
!3461 = !DILocation(line: 1018, column: 39, scope: !3376, inlinedAt: !3460)
!3462 = !DILocation(line: 1019, column: 32, scope: !3376, inlinedAt: !3460)
!3463 = !DILocation(line: 1019, column: 57, scope: !3376, inlinedAt: !3460)
!3464 = !DILocation(line: 1026, column: 28, scope: !3389, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1021, column: 10, scope: !3376, inlinedAt: !3460)
!3466 = !DILocation(line: 1026, column: 43, scope: !3389, inlinedAt: !3465)
!3467 = !DILocation(line: 1027, column: 36, scope: !3389, inlinedAt: !3465)
!3468 = !DILocation(line: 1028, column: 36, scope: !3389, inlinedAt: !3465)
!3469 = !DILocation(line: 1028, column: 48, scope: !3389, inlinedAt: !3465)
!3470 = !DILocation(line: 1030, column: 3, scope: !3389, inlinedAt: !3465)
!3471 = !DILocation(line: 1030, column: 30, scope: !3389, inlinedAt: !3465)
!3472 = !DILocation(line: 1030, column: 26, scope: !3389, inlinedAt: !3465)
!3473 = !DILocation(line: 179, column: 45, scope: !1936, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 1031, column: 3, scope: !3389, inlinedAt: !3465)
!3475 = !DILocation(line: 180, column: 33, scope: !1936, inlinedAt: !3474)
!3476 = !DILocation(line: 180, column: 57, scope: !1936, inlinedAt: !3474)
!3477 = !DILocation(line: 184, column: 6, scope: !1936, inlinedAt: !3474)
!3478 = !DILocation(line: 184, column: 12, scope: !1936, inlinedAt: !3474)
!3479 = !DILocation(line: 185, column: 8, scope: !1952, inlinedAt: !3474)
!3480 = !DILocation(line: 185, column: 23, scope: !1952, inlinedAt: !3474)
!3481 = !DILocation(line: 185, column: 19, scope: !1952, inlinedAt: !3474)
!3482 = !DILocation(line: 186, column: 5, scope: !1952, inlinedAt: !3474)
!3483 = !DILocation(line: 187, column: 6, scope: !1936, inlinedAt: !3474)
!3484 = !DILocation(line: 187, column: 17, scope: !1936, inlinedAt: !3474)
!3485 = !DILocation(line: 188, column: 6, scope: !1936, inlinedAt: !3474)
!3486 = !DILocation(line: 188, column: 18, scope: !1936, inlinedAt: !3474)
!3487 = !DILocation(line: 1032, column: 10, scope: !3389, inlinedAt: !3465)
!3488 = !DILocation(line: 1033, column: 1, scope: !3389, inlinedAt: !3465)
!3489 = !DILocation(line: 1039, column: 3, scope: !3449)
!3490 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !160, file: !160, line: 1043, type: !3491, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!43, !61, !61, !61, !48}
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3490, file: !160, line: 1043, type: !61)
!3495 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3490, file: !160, line: 1043, type: !61)
!3496 = !DILocalVariable(name: "arg", arg: 3, scope: !3490, file: !160, line: 1044, type: !61)
!3497 = !DILocalVariable(name: "argsize", arg: 4, scope: !3490, file: !160, line: 1044, type: !48)
!3498 = !DILocation(line: 1043, column: 34, scope: !3490)
!3499 = !DILocation(line: 1043, column: 58, scope: !3490)
!3500 = !DILocation(line: 1044, column: 34, scope: !3490)
!3501 = !DILocation(line: 1044, column: 46, scope: !3490)
!3502 = !DILocation(line: 1026, column: 28, scope: !3389, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1046, column: 10, scope: !3490)
!3504 = !DILocation(line: 1026, column: 43, scope: !3389, inlinedAt: !3503)
!3505 = !DILocation(line: 1027, column: 36, scope: !3389, inlinedAt: !3503)
!3506 = !DILocation(line: 1028, column: 36, scope: !3389, inlinedAt: !3503)
!3507 = !DILocation(line: 1028, column: 48, scope: !3389, inlinedAt: !3503)
!3508 = !DILocation(line: 1030, column: 3, scope: !3389, inlinedAt: !3503)
!3509 = !DILocation(line: 1030, column: 30, scope: !3389, inlinedAt: !3503)
!3510 = !DILocation(line: 1030, column: 26, scope: !3389, inlinedAt: !3503)
!3511 = !DILocation(line: 179, column: 45, scope: !1936, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 1031, column: 3, scope: !3389, inlinedAt: !3503)
!3513 = !DILocation(line: 180, column: 33, scope: !1936, inlinedAt: !3512)
!3514 = !DILocation(line: 180, column: 57, scope: !1936, inlinedAt: !3512)
!3515 = !DILocation(line: 184, column: 6, scope: !1936, inlinedAt: !3512)
!3516 = !DILocation(line: 184, column: 12, scope: !1936, inlinedAt: !3512)
!3517 = !DILocation(line: 185, column: 8, scope: !1952, inlinedAt: !3512)
!3518 = !DILocation(line: 185, column: 23, scope: !1952, inlinedAt: !3512)
!3519 = !DILocation(line: 185, column: 19, scope: !1952, inlinedAt: !3512)
!3520 = !DILocation(line: 186, column: 5, scope: !1952, inlinedAt: !3512)
!3521 = !DILocation(line: 187, column: 6, scope: !1936, inlinedAt: !3512)
!3522 = !DILocation(line: 187, column: 17, scope: !1936, inlinedAt: !3512)
!3523 = !DILocation(line: 188, column: 6, scope: !1936, inlinedAt: !3512)
!3524 = !DILocation(line: 188, column: 18, scope: !1936, inlinedAt: !3512)
!3525 = !DILocation(line: 1032, column: 10, scope: !3389, inlinedAt: !3503)
!3526 = !DILocation(line: 1033, column: 1, scope: !3389, inlinedAt: !3503)
!3527 = !DILocation(line: 1046, column: 3, scope: !3490)
!3528 = distinct !DISubprogram(name: "quote_n_mem", scope: !160, file: !160, line: 1061, type: !3529, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!61, !64, !61, !48}
!3531 = !{!3532, !3533, !3534}
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !160, line: 1061, type: !64)
!3533 = !DILocalVariable(name: "arg", arg: 2, scope: !3528, file: !160, line: 1061, type: !61)
!3534 = !DILocalVariable(name: "argsize", arg: 3, scope: !3528, file: !160, line: 1061, type: !48)
!3535 = !DILocation(line: 1061, column: 18, scope: !3528)
!3536 = !DILocation(line: 1061, column: 33, scope: !3528)
!3537 = !DILocation(line: 1061, column: 45, scope: !3528)
!3538 = !DILocation(line: 1063, column: 10, scope: !3528)
!3539 = !DILocation(line: 1063, column: 3, scope: !3528)
!3540 = distinct !DISubprogram(name: "quote_mem", scope: !160, file: !160, line: 1067, type: !3541, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!61, !61, !48}
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "arg", arg: 1, scope: !3540, file: !160, line: 1067, type: !61)
!3545 = !DILocalVariable(name: "argsize", arg: 2, scope: !3540, file: !160, line: 1067, type: !48)
!3546 = !DILocation(line: 1067, column: 24, scope: !3540)
!3547 = !DILocation(line: 1067, column: 36, scope: !3540)
!3548 = !DILocation(line: 1061, column: 18, scope: !3528, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 1069, column: 10, scope: !3540)
!3550 = !DILocation(line: 1061, column: 33, scope: !3528, inlinedAt: !3549)
!3551 = !DILocation(line: 1061, column: 45, scope: !3528, inlinedAt: !3549)
!3552 = !DILocation(line: 1063, column: 10, scope: !3528, inlinedAt: !3549)
!3553 = !DILocation(line: 1069, column: 3, scope: !3540)
!3554 = distinct !DISubprogram(name: "quote_n", scope: !160, file: !160, line: 1073, type: !3555, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!61, !64, !61}
!3557 = !{!3558, !3559}
!3558 = !DILocalVariable(name: "n", arg: 1, scope: !3554, file: !160, line: 1073, type: !64)
!3559 = !DILocalVariable(name: "arg", arg: 2, scope: !3554, file: !160, line: 1073, type: !61)
!3560 = !DILocation(line: 1073, column: 14, scope: !3554)
!3561 = !DILocation(line: 1073, column: 29, scope: !3554)
!3562 = !DILocation(line: 1061, column: 18, scope: !3528, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 1075, column: 10, scope: !3554)
!3564 = !DILocation(line: 1061, column: 33, scope: !3528, inlinedAt: !3563)
!3565 = !DILocation(line: 1061, column: 45, scope: !3528, inlinedAt: !3563)
!3566 = !DILocation(line: 1063, column: 10, scope: !3528, inlinedAt: !3563)
!3567 = !DILocation(line: 1075, column: 3, scope: !3554)
!3568 = distinct !DISubprogram(name: "quote", scope: !160, file: !160, line: 1079, type: !3569, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !132, retainedNodes: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!61, !61}
!3571 = !{!3572}
!3572 = !DILocalVariable(name: "arg", arg: 1, scope: !3568, file: !160, line: 1079, type: !61)
!3573 = !DILocation(line: 1079, column: 20, scope: !3568)
!3574 = !DILocation(line: 1073, column: 14, scope: !3554, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 1081, column: 10, scope: !3568)
!3576 = !DILocation(line: 1073, column: 29, scope: !3554, inlinedAt: !3575)
!3577 = !DILocation(line: 1061, column: 18, scope: !3528, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 1075, column: 10, scope: !3554, inlinedAt: !3575)
!3579 = !DILocation(line: 1061, column: 33, scope: !3528, inlinedAt: !3578)
!3580 = !DILocation(line: 1061, column: 45, scope: !3528, inlinedAt: !3578)
!3581 = !DILocation(line: 1063, column: 10, scope: !3528, inlinedAt: !3578)
!3582 = !DILocation(line: 1081, column: 3, scope: !3568)
!3583 = distinct !DISubprogram(name: "safe_read", scope: !3584, file: !3584, line: 56, type: !3585, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !3587)
!3584 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!48, !64, !45, !48}
!3587 = !{!3588, !3589, !3590, !3591}
!3588 = !DILocalVariable(name: "fd", arg: 1, scope: !3583, file: !3584, line: 56, type: !64)
!3589 = !DILocalVariable(name: "buf", arg: 2, scope: !3583, file: !3584, line: 56, type: !45)
!3590 = !DILocalVariable(name: "count", arg: 3, scope: !3583, file: !3584, line: 56, type: !48)
!3591 = !DILocalVariable(name: "result", scope: !3592, file: !3584, line: 60, type: !3595)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !3584, line: 59, column: 5)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3584, line: 58, column: 3)
!3594 = distinct !DILexicalBlock(scope: !3583, file: !3584, line: 58, column: 3)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3596, line: 108, baseType: !3597)
!3596 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !853, line: 191, baseType: !854)
!3598 = !DILocation(line: 56, column: 14, scope: !3583)
!3599 = !DILocation(line: 56, column: 30, scope: !3583)
!3600 = !DILocation(line: 56, column: 42, scope: !3583)
!3601 = !DILocation(line: 58, column: 3, scope: !3583)
!3602 = !DILocation(line: 60, column: 24, scope: !3592)
!3603 = !DILocation(line: 60, column: 15, scope: !3592)
!3604 = !DILocation(line: 62, column: 13, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3592, file: !3584, line: 62, column: 11)
!3606 = !DILocation(line: 62, column: 11, scope: !3592)
!3607 = !DILocation(line: 64, column: 16, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3605, file: !3584, line: 64, column: 16)
!3609 = !DILocation(line: 64, column: 16, scope: !3605)
!3610 = distinct !{!3610, !3611, !3612}
!3611 = !DILocation(line: 58, column: 3, scope: !3594)
!3612 = !DILocation(line: 70, column: 5, scope: !3594)
!3613 = !DILocation(line: 66, column: 22, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3608, file: !3584, line: 66, column: 16)
!3615 = !DILocation(line: 66, column: 51, scope: !3614)
!3616 = !DILocation(line: 66, column: 32, scope: !3614)
!3617 = !DILocation(line: 71, column: 1, scope: !3583)
!3618 = distinct !DISubprogram(name: "version_etc_arn", scope: !234, file: !234, line: 62, type: !3619, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3656)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3621, !61, !61, !61, !3655, !48}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3623, file: !830, line: 51, baseType: !64, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3623, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3623, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3623, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3623, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3623, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3623, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3623, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3623, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3623, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3623, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3623, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3623, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3623, file: !830, line: 70, baseType: !3639, size: 64, offset: 832)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3623, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3623, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3623, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3623, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3623, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3623, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3623, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3623, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3623, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3623, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3623, file: !830, line: 93, baseType: !3639, size: 64, offset: 1344)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3623, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3623, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3623, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3623, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662}
!3657 = !DILocalVariable(name: "stream", arg: 1, scope: !3618, file: !234, line: 62, type: !3621)
!3658 = !DILocalVariable(name: "command_name", arg: 2, scope: !3618, file: !234, line: 63, type: !61)
!3659 = !DILocalVariable(name: "package", arg: 3, scope: !3618, file: !234, line: 63, type: !61)
!3660 = !DILocalVariable(name: "version", arg: 4, scope: !3618, file: !234, line: 64, type: !61)
!3661 = !DILocalVariable(name: "authors", arg: 5, scope: !3618, file: !234, line: 65, type: !3655)
!3662 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3618, file: !234, line: 65, type: !48)
!3663 = !DILocation(line: 62, column: 24, scope: !3618)
!3664 = !DILocation(line: 63, column: 30, scope: !3618)
!3665 = !DILocation(line: 63, column: 56, scope: !3618)
!3666 = !DILocation(line: 64, column: 30, scope: !3618)
!3667 = !DILocation(line: 65, column: 39, scope: !3618)
!3668 = !DILocation(line: 65, column: 55, scope: !3618)
!3669 = !DILocation(line: 67, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3618, file: !234, line: 67, column: 7)
!3671 = !DILocation(line: 67, column: 7, scope: !3618)
!3672 = !DILocation(line: 68, column: 5, scope: !3670)
!3673 = !DILocation(line: 70, column: 5, scope: !3670)
!3674 = !DILocation(line: 84, column: 3, scope: !3618)
!3675 = !DILocation(line: 86, column: 3, scope: !3618)
!3676 = !DILocation(line: 95, column: 3, scope: !3618)
!3677 = !DILocation(line: 99, column: 7, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3618, file: !234, line: 96, column: 5)
!3679 = !DILocation(line: 102, column: 7, scope: !3678)
!3680 = !DILocation(line: 103, column: 7, scope: !3678)
!3681 = !DILocation(line: 106, column: 7, scope: !3678)
!3682 = !DILocation(line: 107, column: 7, scope: !3678)
!3683 = !DILocation(line: 110, column: 7, scope: !3678)
!3684 = !DILocation(line: 112, column: 7, scope: !3678)
!3685 = !DILocation(line: 117, column: 7, scope: !3678)
!3686 = !DILocation(line: 119, column: 7, scope: !3678)
!3687 = !DILocation(line: 124, column: 7, scope: !3678)
!3688 = !DILocation(line: 126, column: 7, scope: !3678)
!3689 = !DILocation(line: 131, column: 7, scope: !3678)
!3690 = !DILocation(line: 134, column: 7, scope: !3678)
!3691 = !DILocation(line: 139, column: 7, scope: !3678)
!3692 = !DILocation(line: 142, column: 7, scope: !3678)
!3693 = !DILocation(line: 147, column: 7, scope: !3678)
!3694 = !DILocation(line: 151, column: 7, scope: !3678)
!3695 = !DILocation(line: 156, column: 7, scope: !3678)
!3696 = !DILocation(line: 160, column: 7, scope: !3678)
!3697 = !DILocation(line: 167, column: 7, scope: !3678)
!3698 = !DILocation(line: 171, column: 7, scope: !3678)
!3699 = !DILocation(line: 173, column: 1, scope: !3618)
!3700 = distinct !DISubprogram(name: "version_etc_ar", scope: !234, file: !234, line: 180, type: !3701, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !3621, !61, !61, !61, !3655}
!3703 = !{!3704, !3705, !3706, !3707, !3708, !3709}
!3704 = !DILocalVariable(name: "stream", arg: 1, scope: !3700, file: !234, line: 180, type: !3621)
!3705 = !DILocalVariable(name: "command_name", arg: 2, scope: !3700, file: !234, line: 181, type: !61)
!3706 = !DILocalVariable(name: "package", arg: 3, scope: !3700, file: !234, line: 181, type: !61)
!3707 = !DILocalVariable(name: "version", arg: 4, scope: !3700, file: !234, line: 182, type: !61)
!3708 = !DILocalVariable(name: "authors", arg: 5, scope: !3700, file: !234, line: 182, type: !3655)
!3709 = !DILocalVariable(name: "n_authors", scope: !3700, file: !234, line: 184, type: !48)
!3710 = !DILocation(line: 180, column: 23, scope: !3700)
!3711 = !DILocation(line: 181, column: 29, scope: !3700)
!3712 = !DILocation(line: 181, column: 55, scope: !3700)
!3713 = !DILocation(line: 182, column: 29, scope: !3700)
!3714 = !DILocation(line: 182, column: 59, scope: !3700)
!3715 = !DILocation(line: 184, column: 10, scope: !3700)
!3716 = !DILocation(line: 186, column: 8, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3700, file: !234, line: 186, column: 3)
!3718 = !DILocation(line: 0, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3717, file: !234, line: 186, column: 3)
!3720 = !DILocation(line: 186, column: 23, scope: !3719)
!3721 = !DILocation(line: 186, column: 3, scope: !3717)
!3722 = !DILocation(line: 186, column: 52, scope: !3719)
!3723 = distinct !{!3723, !3721, !3724}
!3724 = !DILocation(line: 187, column: 5, scope: !3717)
!3725 = !DILocation(line: 188, column: 3, scope: !3700)
!3726 = !DILocation(line: 189, column: 1, scope: !3700)
!3727 = distinct !DISubprogram(name: "version_etc_va", scope: !234, file: !234, line: 196, type: !3728, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3737)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3621, !61, !61, !61, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !231, line: 189, size: 192, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3731, file: !231, line: 189, baseType: !7, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3731, file: !231, line: 189, baseType: !7, size: 32, offset: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3731, file: !231, line: 189, baseType: !45, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3731, file: !231, line: 189, baseType: !45, size: 64, offset: 128)
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3738 = !DILocalVariable(name: "stream", arg: 1, scope: !3727, file: !234, line: 196, type: !3621)
!3739 = !DILocalVariable(name: "command_name", arg: 2, scope: !3727, file: !234, line: 197, type: !61)
!3740 = !DILocalVariable(name: "package", arg: 3, scope: !3727, file: !234, line: 197, type: !61)
!3741 = !DILocalVariable(name: "version", arg: 4, scope: !3727, file: !234, line: 198, type: !61)
!3742 = !DILocalVariable(name: "authors", arg: 5, scope: !3727, file: !234, line: 198, type: !3730)
!3743 = !DILocalVariable(name: "n_authors", scope: !3727, file: !234, line: 200, type: !48)
!3744 = !DILocalVariable(name: "authtab", scope: !3727, file: !234, line: 201, type: !3745)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !163)
!3746 = !DILocation(line: 196, column: 23, scope: !3727)
!3747 = !DILocation(line: 197, column: 29, scope: !3727)
!3748 = !DILocation(line: 197, column: 55, scope: !3727)
!3749 = !DILocation(line: 198, column: 29, scope: !3727)
!3750 = !DILocation(line: 198, column: 46, scope: !3727)
!3751 = !DILocation(line: 201, column: 3, scope: !3727)
!3752 = !DILocation(line: 201, column: 15, scope: !3727)
!3753 = !DILocation(line: 200, column: 10, scope: !3727)
!3754 = !DILocation(line: 205, column: 35, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !234, line: 203, column: 3)
!3756 = distinct !DILexicalBlock(scope: !3727, file: !234, line: 203, column: 3)
!3757 = !DILocation(line: 205, column: 14, scope: !3755)
!3758 = !DILocation(line: 205, column: 33, scope: !3755)
!3759 = !DILocation(line: 205, column: 67, scope: !3755)
!3760 = !DILocation(line: 203, column: 3, scope: !3756)
!3761 = !DILocation(line: 0, scope: !3755)
!3762 = !DILocation(line: 208, column: 3, scope: !3727)
!3763 = !DILocation(line: 210, column: 1, scope: !3727)
!3764 = distinct !DISubprogram(name: "version_etc", scope: !234, file: !234, line: 227, type: !3765, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3621, !61, !61, !61, null}
!3767 = !{!3768, !3769, !3770, !3771, !3772}
!3768 = !DILocalVariable(name: "stream", arg: 1, scope: !3764, file: !234, line: 227, type: !3621)
!3769 = !DILocalVariable(name: "command_name", arg: 2, scope: !3764, file: !234, line: 228, type: !61)
!3770 = !DILocalVariable(name: "package", arg: 3, scope: !3764, file: !234, line: 228, type: !61)
!3771 = !DILocalVariable(name: "version", arg: 4, scope: !3764, file: !234, line: 229, type: !61)
!3772 = !DILocalVariable(name: "authors", scope: !3764, file: !234, line: 231, type: !3773)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1141, line: 52, baseType: !3774)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3775, line: 48, baseType: !3776)
!3775 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !231, line: 231, baseType: !3777)
!3777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3731, size: 192, elements: !860)
!3778 = !DILocation(line: 227, column: 20, scope: !3764)
!3779 = !DILocation(line: 228, column: 26, scope: !3764)
!3780 = !DILocation(line: 228, column: 52, scope: !3764)
!3781 = !DILocation(line: 229, column: 26, scope: !3764)
!3782 = !DILocation(line: 231, column: 3, scope: !3764)
!3783 = !DILocation(line: 231, column: 11, scope: !3764)
!3784 = !DILocation(line: 233, column: 3, scope: !3764)
!3785 = !DILocation(line: 234, column: 3, scope: !3764)
!3786 = !DILocation(line: 235, column: 3, scope: !3764)
!3787 = !DILocation(line: 236, column: 1, scope: !3764)
!3788 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !234, file: !234, line: 239, type: !218, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !75)
!3789 = !DILocation(line: 245, column: 3, scope: !3788)
!3790 = !DILocation(line: 251, column: 3, scope: !3788)
!3791 = !DILocation(line: 256, column: 3, scope: !3788)
!3792 = !DILocation(line: 258, column: 1, scope: !3788)
!3793 = distinct !DISubprogram(name: "xnmalloc", scope: !242, file: !242, line: 99, type: !3794, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!45, !48, !48}
!3796 = !{!3797, !3798}
!3797 = !DILocalVariable(name: "n", arg: 1, scope: !3793, file: !242, line: 99, type: !48)
!3798 = !DILocalVariable(name: "s", arg: 2, scope: !3793, file: !242, line: 99, type: !48)
!3799 = !DILocation(line: 99, column: 18, scope: !3793)
!3800 = !DILocation(line: 99, column: 28, scope: !3793)
!3801 = !DILocation(line: 101, column: 7, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3793, file: !242, line: 101, column: 7)
!3803 = !DILocation(line: 101, column: 7, scope: !3793)
!3804 = !DILocation(line: 102, column: 5, scope: !3802)
!3805 = !DILocation(line: 103, column: 21, scope: !3793)
!3806 = !DILocalVariable(name: "n", arg: 1, scope: !3807, file: !3808, line: 39, type: !48)
!3807 = distinct !DISubprogram(name: "xmalloc", scope: !3808, file: !3808, line: 39, type: !3809, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3811)
!3808 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!45, !48}
!3811 = !{!3806, !3812}
!3812 = !DILocalVariable(name: "p", scope: !3807, file: !3808, line: 41, type: !45)
!3813 = !DILocation(line: 39, column: 17, scope: !3807, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 103, column: 10, scope: !3793)
!3815 = !DILocation(line: 41, column: 13, scope: !3807, inlinedAt: !3814)
!3816 = !DILocation(line: 41, column: 9, scope: !3807, inlinedAt: !3814)
!3817 = !DILocation(line: 42, column: 8, scope: !3818, inlinedAt: !3814)
!3818 = distinct !DILexicalBlock(scope: !3807, file: !3808, line: 42, column: 7)
!3819 = !DILocation(line: 42, column: 15, scope: !3818, inlinedAt: !3814)
!3820 = !DILocation(line: 42, column: 10, scope: !3818, inlinedAt: !3814)
!3821 = !DILocation(line: 43, column: 5, scope: !3818, inlinedAt: !3814)
!3822 = !DILocation(line: 103, column: 3, scope: !3793)
!3823 = !DILocation(line: 39, column: 17, scope: !3807)
!3824 = !DILocation(line: 41, column: 13, scope: !3807)
!3825 = !DILocation(line: 41, column: 9, scope: !3807)
!3826 = !DILocation(line: 42, column: 8, scope: !3818)
!3827 = !DILocation(line: 42, column: 15, scope: !3818)
!3828 = !DILocation(line: 42, column: 10, scope: !3818)
!3829 = !DILocation(line: 43, column: 5, scope: !3818)
!3830 = !DILocation(line: 44, column: 3, scope: !3807)
!3831 = distinct !DISubprogram(name: "xnrealloc", scope: !242, file: !242, line: 112, type: !3832, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!45, !45, !48, !48}
!3834 = !{!3835, !3836, !3837}
!3835 = !DILocalVariable(name: "p", arg: 1, scope: !3831, file: !242, line: 112, type: !45)
!3836 = !DILocalVariable(name: "n", arg: 2, scope: !3831, file: !242, line: 112, type: !48)
!3837 = !DILocalVariable(name: "s", arg: 3, scope: !3831, file: !242, line: 112, type: !48)
!3838 = !DILocation(line: 112, column: 18, scope: !3831)
!3839 = !DILocation(line: 112, column: 28, scope: !3831)
!3840 = !DILocation(line: 112, column: 38, scope: !3831)
!3841 = !DILocation(line: 114, column: 7, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3831, file: !242, line: 114, column: 7)
!3843 = !DILocation(line: 114, column: 7, scope: !3831)
!3844 = !DILocation(line: 115, column: 5, scope: !3842)
!3845 = !DILocation(line: 116, column: 25, scope: !3831)
!3846 = !DILocalVariable(name: "p", arg: 1, scope: !3847, file: !3808, line: 51, type: !45)
!3847 = distinct !DISubprogram(name: "xrealloc", scope: !3808, file: !3808, line: 51, type: !3848, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!45, !45, !48}
!3850 = !{!3846, !3851}
!3851 = !DILocalVariable(name: "n", arg: 2, scope: !3847, file: !3808, line: 51, type: !48)
!3852 = !DILocation(line: 51, column: 17, scope: !3847, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 116, column: 10, scope: !3831)
!3854 = !DILocation(line: 51, column: 27, scope: !3847, inlinedAt: !3853)
!3855 = !DILocation(line: 53, column: 8, scope: !3856, inlinedAt: !3853)
!3856 = distinct !DILexicalBlock(scope: !3847, file: !3808, line: 53, column: 7)
!3857 = !DILocation(line: 53, column: 13, scope: !3856, inlinedAt: !3853)
!3858 = !DILocation(line: 53, column: 10, scope: !3856, inlinedAt: !3853)
!3859 = !DILocation(line: 57, column: 7, scope: !3860, inlinedAt: !3853)
!3860 = distinct !DILexicalBlock(scope: !3856, file: !3808, line: 54, column: 5)
!3861 = !DILocation(line: 58, column: 7, scope: !3860, inlinedAt: !3853)
!3862 = !DILocation(line: 61, column: 7, scope: !3847, inlinedAt: !3853)
!3863 = !DILocation(line: 62, column: 8, scope: !3864, inlinedAt: !3853)
!3864 = distinct !DILexicalBlock(scope: !3847, file: !3808, line: 62, column: 7)
!3865 = !DILocation(line: 62, column: 13, scope: !3864, inlinedAt: !3853)
!3866 = !DILocation(line: 62, column: 10, scope: !3864, inlinedAt: !3853)
!3867 = !DILocation(line: 63, column: 5, scope: !3864, inlinedAt: !3853)
!3868 = !DILocation(line: 0, scope: !3847, inlinedAt: !3853)
!3869 = !DILocation(line: 116, column: 3, scope: !3831)
!3870 = !DILocation(line: 51, column: 17, scope: !3847)
!3871 = !DILocation(line: 51, column: 27, scope: !3847)
!3872 = !DILocation(line: 53, column: 8, scope: !3856)
!3873 = !DILocation(line: 53, column: 13, scope: !3856)
!3874 = !DILocation(line: 53, column: 10, scope: !3856)
!3875 = !DILocation(line: 57, column: 7, scope: !3860)
!3876 = !DILocation(line: 58, column: 7, scope: !3860)
!3877 = !DILocation(line: 61, column: 7, scope: !3847)
!3878 = !DILocation(line: 62, column: 8, scope: !3864)
!3879 = !DILocation(line: 62, column: 13, scope: !3864)
!3880 = !DILocation(line: 62, column: 10, scope: !3864)
!3881 = !DILocation(line: 63, column: 5, scope: !3864)
!3882 = !DILocation(line: 0, scope: !3847)
!3883 = !DILocation(line: 65, column: 1, scope: !3847)
!3884 = !DILocation(line: 174, column: 19, scope: !243)
!3885 = !DILocation(line: 174, column: 30, scope: !243)
!3886 = !DILocation(line: 174, column: 41, scope: !243)
!3887 = !DILocation(line: 176, column: 14, scope: !243)
!3888 = !DILocation(line: 176, column: 10, scope: !243)
!3889 = !DILocation(line: 178, column: 9, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !243, file: !242, line: 178, column: 7)
!3891 = !DILocation(line: 178, column: 7, scope: !243)
!3892 = !DILocation(line: 180, column: 13, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !242, line: 180, column: 11)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !242, line: 179, column: 5)
!3895 = !DILocation(line: 180, column: 11, scope: !3894)
!3896 = !DILocation(line: 188, column: 30, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3893, file: !242, line: 181, column: 9)
!3898 = !DILocation(line: 189, column: 16, scope: !3897)
!3899 = !DILocation(line: 189, column: 13, scope: !3897)
!3900 = !DILocation(line: 190, column: 9, scope: !3897)
!3901 = !DILocation(line: 0, scope: !3897)
!3902 = !DILocation(line: 191, column: 11, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3894, file: !242, line: 191, column: 11)
!3904 = !DILocation(line: 191, column: 11, scope: !3894)
!3905 = !DILocation(line: 206, column: 7, scope: !243)
!3906 = !DILocation(line: 207, column: 25, scope: !243)
!3907 = !DILocation(line: 51, column: 17, scope: !3847, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 207, column: 10, scope: !243)
!3909 = !DILocation(line: 51, column: 27, scope: !3847, inlinedAt: !3908)
!3910 = !DILocation(line: 53, column: 10, scope: !3856, inlinedAt: !3908)
!3911 = !DILocation(line: 192, column: 9, scope: !3903)
!3912 = !DILocation(line: 200, column: 69, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !242, line: 200, column: 11)
!3914 = distinct !DILexicalBlock(scope: !3890, file: !242, line: 195, column: 5)
!3915 = !DILocation(line: 201, column: 11, scope: !3913)
!3916 = !DILocation(line: 200, column: 11, scope: !3914)
!3917 = !DILocation(line: 202, column: 9, scope: !3913)
!3918 = !DILocation(line: 203, column: 14, scope: !3914)
!3919 = !DILocation(line: 203, column: 18, scope: !3914)
!3920 = !DILocation(line: 203, column: 9, scope: !3914)
!3921 = !DILocation(line: 53, column: 8, scope: !3856, inlinedAt: !3908)
!3922 = !DILocation(line: 57, column: 7, scope: !3860, inlinedAt: !3908)
!3923 = !DILocation(line: 58, column: 7, scope: !3860, inlinedAt: !3908)
!3924 = !DILocation(line: 61, column: 7, scope: !3847, inlinedAt: !3908)
!3925 = !DILocation(line: 62, column: 8, scope: !3864, inlinedAt: !3908)
!3926 = !DILocation(line: 62, column: 13, scope: !3864, inlinedAt: !3908)
!3927 = !DILocation(line: 62, column: 10, scope: !3864, inlinedAt: !3908)
!3928 = !DILocation(line: 63, column: 5, scope: !3864, inlinedAt: !3908)
!3929 = !DILocation(line: 0, scope: !3847, inlinedAt: !3908)
!3930 = !DILocation(line: 207, column: 3, scope: !243)
!3931 = distinct !DISubprogram(name: "xcharalloc", scope: !242, file: !242, line: 216, type: !2869, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3932)
!3932 = !{!3933}
!3933 = !DILocalVariable(name: "n", arg: 1, scope: !3931, file: !242, line: 216, type: !48)
!3934 = !DILocation(line: 216, column: 20, scope: !3931)
!3935 = !DILocation(line: 39, column: 17, scope: !3807, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 218, column: 10, scope: !3931)
!3937 = !DILocation(line: 41, column: 13, scope: !3807, inlinedAt: !3936)
!3938 = !DILocation(line: 41, column: 9, scope: !3807, inlinedAt: !3936)
!3939 = !DILocation(line: 42, column: 8, scope: !3818, inlinedAt: !3936)
!3940 = !DILocation(line: 42, column: 15, scope: !3818, inlinedAt: !3936)
!3941 = !DILocation(line: 42, column: 10, scope: !3818, inlinedAt: !3936)
!3942 = !DILocation(line: 43, column: 5, scope: !3818, inlinedAt: !3936)
!3943 = !DILocation(line: 218, column: 3, scope: !3931)
!3944 = distinct !DISubprogram(name: "x2realloc", scope: !3808, file: !3808, line: 74, type: !3945, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!45, !45, !246}
!3947 = !{!3948, !3949}
!3948 = !DILocalVariable(name: "p", arg: 1, scope: !3944, file: !3808, line: 74, type: !45)
!3949 = !DILocalVariable(name: "pn", arg: 2, scope: !3944, file: !3808, line: 74, type: !246)
!3950 = !DILocation(line: 74, column: 18, scope: !3944)
!3951 = !DILocation(line: 74, column: 29, scope: !3944)
!3952 = !DILocation(line: 174, column: 19, scope: !243, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 76, column: 10, scope: !3944)
!3954 = !DILocation(line: 174, column: 30, scope: !243, inlinedAt: !3953)
!3955 = !DILocation(line: 174, column: 41, scope: !243, inlinedAt: !3953)
!3956 = !DILocation(line: 176, column: 14, scope: !243, inlinedAt: !3953)
!3957 = !DILocation(line: 176, column: 10, scope: !243, inlinedAt: !3953)
!3958 = !DILocation(line: 178, column: 9, scope: !3890, inlinedAt: !3953)
!3959 = !DILocation(line: 178, column: 7, scope: !243, inlinedAt: !3953)
!3960 = !DILocation(line: 180, column: 13, scope: !3893, inlinedAt: !3953)
!3961 = !DILocation(line: 180, column: 11, scope: !3894, inlinedAt: !3953)
!3962 = !DILocation(line: 191, column: 11, scope: !3903, inlinedAt: !3953)
!3963 = !DILocation(line: 191, column: 11, scope: !3894, inlinedAt: !3953)
!3964 = !DILocation(line: 206, column: 7, scope: !243, inlinedAt: !3953)
!3965 = !DILocation(line: 51, column: 17, scope: !3847, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 207, column: 10, scope: !243, inlinedAt: !3953)
!3967 = !DILocation(line: 51, column: 27, scope: !3847, inlinedAt: !3966)
!3968 = !DILocation(line: 53, column: 10, scope: !3856, inlinedAt: !3966)
!3969 = !DILocation(line: 192, column: 9, scope: !3903, inlinedAt: !3953)
!3970 = !DILocation(line: 201, column: 11, scope: !3913, inlinedAt: !3953)
!3971 = !DILocation(line: 200, column: 11, scope: !3914, inlinedAt: !3953)
!3972 = !DILocation(line: 202, column: 9, scope: !3913, inlinedAt: !3953)
!3973 = !DILocation(line: 203, column: 14, scope: !3914, inlinedAt: !3953)
!3974 = !DILocation(line: 203, column: 18, scope: !3914, inlinedAt: !3953)
!3975 = !DILocation(line: 203, column: 9, scope: !3914, inlinedAt: !3953)
!3976 = !DILocation(line: 53, column: 8, scope: !3856, inlinedAt: !3966)
!3977 = !DILocation(line: 57, column: 7, scope: !3860, inlinedAt: !3966)
!3978 = !DILocation(line: 58, column: 7, scope: !3860, inlinedAt: !3966)
!3979 = !DILocation(line: 61, column: 7, scope: !3847, inlinedAt: !3966)
!3980 = !DILocation(line: 62, column: 8, scope: !3864, inlinedAt: !3966)
!3981 = !DILocation(line: 62, column: 13, scope: !3864, inlinedAt: !3966)
!3982 = !DILocation(line: 62, column: 10, scope: !3864, inlinedAt: !3966)
!3983 = !DILocation(line: 63, column: 5, scope: !3864, inlinedAt: !3966)
!3984 = !DILocation(line: 0, scope: !3847, inlinedAt: !3966)
!3985 = !DILocation(line: 76, column: 3, scope: !3944)
!3986 = distinct !DISubprogram(name: "xzalloc", scope: !3808, file: !3808, line: 84, type: !3809, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3987)
!3987 = !{!3988}
!3988 = !DILocalVariable(name: "s", arg: 1, scope: !3986, file: !3808, line: 84, type: !48)
!3989 = !DILocation(line: 84, column: 17, scope: !3986)
!3990 = !DILocation(line: 39, column: 17, scope: !3807, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 86, column: 18, scope: !3986)
!3992 = !DILocation(line: 41, column: 13, scope: !3807, inlinedAt: !3991)
!3993 = !DILocation(line: 41, column: 9, scope: !3807, inlinedAt: !3991)
!3994 = !DILocation(line: 42, column: 8, scope: !3818, inlinedAt: !3991)
!3995 = !DILocation(line: 42, column: 15, scope: !3818, inlinedAt: !3991)
!3996 = !DILocation(line: 42, column: 10, scope: !3818, inlinedAt: !3991)
!3997 = !DILocation(line: 43, column: 5, scope: !3818, inlinedAt: !3991)
!3998 = !DILocation(line: 86, column: 10, scope: !3986)
!3999 = !DILocation(line: 86, column: 3, scope: !3986)
!4000 = distinct !DISubprogram(name: "xcalloc", scope: !3808, file: !3808, line: 93, type: !3794, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !4001)
!4001 = !{!4002, !4003, !4004}
!4002 = !DILocalVariable(name: "n", arg: 1, scope: !4000, file: !3808, line: 93, type: !48)
!4003 = !DILocalVariable(name: "s", arg: 2, scope: !4000, file: !3808, line: 93, type: !48)
!4004 = !DILocalVariable(name: "p", scope: !4000, file: !3808, line: 95, type: !45)
!4005 = !DILocation(line: 93, column: 17, scope: !4000)
!4006 = !DILocation(line: 93, column: 27, scope: !4000)
!4007 = !DILocation(line: 100, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4000, file: !3808, line: 100, column: 7)
!4009 = !DILocation(line: 101, column: 7, scope: !4008)
!4010 = !DILocation(line: 101, column: 18, scope: !4008)
!4011 = !DILocation(line: 95, column: 9, scope: !4000)
!4012 = !DILocation(line: 101, column: 16, scope: !4008)
!4013 = !DILocation(line: 100, column: 7, scope: !4000)
!4014 = !DILocation(line: 102, column: 5, scope: !4008)
!4015 = !DILocation(line: 103, column: 3, scope: !4000)
!4016 = distinct !DISubprogram(name: "xmemdup", scope: !3808, file: !3808, line: 111, type: !4017, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !4021)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!45, !4019, !48}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "p", arg: 1, scope: !4016, file: !3808, line: 111, type: !4019)
!4023 = !DILocalVariable(name: "s", arg: 2, scope: !4016, file: !3808, line: 111, type: !48)
!4024 = !DILocation(line: 111, column: 22, scope: !4016)
!4025 = !DILocation(line: 111, column: 32, scope: !4016)
!4026 = !DILocation(line: 39, column: 17, scope: !3807, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 113, column: 18, scope: !4016)
!4028 = !DILocation(line: 41, column: 13, scope: !3807, inlinedAt: !4027)
!4029 = !DILocation(line: 41, column: 9, scope: !3807, inlinedAt: !4027)
!4030 = !DILocation(line: 42, column: 8, scope: !3818, inlinedAt: !4027)
!4031 = !DILocation(line: 42, column: 15, scope: !3818, inlinedAt: !4027)
!4032 = !DILocation(line: 42, column: 10, scope: !3818, inlinedAt: !4027)
!4033 = !DILocation(line: 43, column: 5, scope: !3818, inlinedAt: !4027)
!4034 = !DILocation(line: 113, column: 10, scope: !4016)
!4035 = !DILocation(line: 113, column: 3, scope: !4016)
!4036 = distinct !DISubprogram(name: "xstrdup", scope: !3808, file: !3808, line: 119, type: !3073, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !4037)
!4037 = !{!4038}
!4038 = !DILocalVariable(name: "string", arg: 1, scope: !4036, file: !3808, line: 119, type: !61)
!4039 = !DILocation(line: 119, column: 22, scope: !4036)
!4040 = !DILocation(line: 121, column: 27, scope: !4036)
!4041 = !DILocation(line: 121, column: 43, scope: !4036)
!4042 = !DILocation(line: 111, column: 22, scope: !4016, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 121, column: 10, scope: !4036)
!4044 = !DILocation(line: 111, column: 32, scope: !4016, inlinedAt: !4043)
!4045 = !DILocation(line: 39, column: 17, scope: !3807, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 113, column: 18, scope: !4016, inlinedAt: !4043)
!4047 = !DILocation(line: 41, column: 13, scope: !3807, inlinedAt: !4046)
!4048 = !DILocation(line: 41, column: 9, scope: !3807, inlinedAt: !4046)
!4049 = !DILocation(line: 42, column: 8, scope: !3818, inlinedAt: !4046)
!4050 = !DILocation(line: 42, column: 15, scope: !3818, inlinedAt: !4046)
!4051 = !DILocation(line: 42, column: 10, scope: !3818, inlinedAt: !4046)
!4052 = !DILocation(line: 43, column: 5, scope: !3818, inlinedAt: !4046)
!4053 = !DILocation(line: 113, column: 10, scope: !4016, inlinedAt: !4043)
!4054 = !DILocation(line: 121, column: 3, scope: !4036)
!4055 = distinct !DISubprogram(name: "xalloc_die", scope: !4056, file: !4056, line: 32, type: !218, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !255, retainedNodes: !75)
!4056 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4057 = !DILocation(line: 34, column: 10, scope: !4055)
!4058 = !DILocation(line: 34, column: 33, scope: !4055)
!4059 = !DILocation(line: 34, column: 3, scope: !4055)
!4060 = !DILocation(line: 40, column: 3, scope: !4055)
!4061 = distinct !DISubprogram(name: "xstrtoumax", scope: !4062, file: !4062, line: 88, type: !4063, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !4065)
!4062 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!1701, !61, !754, !64, !1695, !61}
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4078, !4079, !4082, !4083}
!4066 = !DILocalVariable(name: "s", arg: 1, scope: !4061, file: !4062, line: 88, type: !61)
!4067 = !DILocalVariable(name: "ptr", arg: 2, scope: !4061, file: !4062, line: 88, type: !754)
!4068 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4061, file: !4062, line: 88, type: !64)
!4069 = !DILocalVariable(name: "val", arg: 4, scope: !4061, file: !4062, line: 89, type: !1695)
!4070 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4061, file: !4062, line: 89, type: !61)
!4071 = !DILocalVariable(name: "t_ptr", scope: !4061, file: !4062, line: 91, type: !43)
!4072 = !DILocalVariable(name: "p", scope: !4061, file: !4062, line: 92, type: !754)
!4073 = !DILocalVariable(name: "tmp", scope: !4061, file: !4062, line: 93, type: !883)
!4074 = !DILocalVariable(name: "err", scope: !4061, file: !4062, line: 94, type: !1701)
!4075 = !DILocalVariable(name: "q", scope: !4076, file: !4062, line: 104, type: !61)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !4062, line: 103, column: 5)
!4077 = distinct !DILexicalBlock(scope: !4061, file: !4062, line: 102, column: 7)
!4078 = !DILocalVariable(name: "ch", scope: !4076, file: !4062, line: 105, type: !47)
!4079 = !DILocalVariable(name: "base", scope: !4080, file: !4062, line: 141, type: !64)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !4062, line: 140, column: 5)
!4081 = distinct !DILexicalBlock(scope: !4061, file: !4062, line: 139, column: 7)
!4082 = !DILocalVariable(name: "suffixes", scope: !4080, file: !4062, line: 142, type: !64)
!4083 = !DILocalVariable(name: "overflow", scope: !4080, file: !4062, line: 143, type: !1701)
!4084 = !DILocation(line: 88, column: 24, scope: !4061)
!4085 = !DILocation(line: 88, column: 34, scope: !4061)
!4086 = !DILocation(line: 88, column: 43, scope: !4061)
!4087 = !DILocation(line: 89, column: 24, scope: !4061)
!4088 = !DILocation(line: 89, column: 41, scope: !4061)
!4089 = !DILocation(line: 91, column: 3, scope: !4061)
!4090 = !DILocation(line: 94, column: 16, scope: !4061)
!4091 = !DILocation(line: 96, column: 3, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !4062, line: 96, column: 3)
!4093 = distinct !DILexicalBlock(scope: !4061, file: !4062, line: 96, column: 3)
!4094 = !DILocation(line: 98, column: 8, scope: !4061)
!4095 = !DILocation(line: 92, column: 10, scope: !4061)
!4096 = !DILocation(line: 100, column: 3, scope: !4061)
!4097 = !DILocation(line: 100, column: 9, scope: !4061)
!4098 = !DILocation(line: 104, column: 19, scope: !4076)
!4099 = !DILocation(line: 105, column: 21, scope: !4076)
!4100 = !DILocation(line: 106, column: 14, scope: !4076)
!4101 = !DILocation(line: 106, column: 7, scope: !4076)
!4102 = !DILocation(line: 0, scope: !4076)
!4103 = !DILocation(line: 107, column: 15, scope: !4076)
!4104 = distinct !{!4104, !4101, !4105}
!4105 = !DILocation(line: 107, column: 17, scope: !4076)
!4106 = !DILocation(line: 108, column: 14, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4076, file: !4062, line: 108, column: 11)
!4108 = !DILocalVariable(name: "nptr", arg: 1, scope: !4109, file: !4110, line: 336, type: !4113)
!4109 = distinct !DISubprogram(name: "strtoumax", scope: !4110, file: !4110, line: 336, type: !4111, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !4115)
!4110 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!883, !4113, !4114, !64}
!4113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!4114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !754)
!4115 = !{!4108, !4116, !4117}
!4116 = !DILocalVariable(name: "endptr", arg: 2, scope: !4109, file: !4110, line: 336, type: !4114)
!4117 = !DILocalVariable(name: "base", arg: 3, scope: !4109, file: !4110, line: 336, type: !64)
!4118 = !DILocation(line: 336, column: 1, scope: !4109, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 112, column: 9, scope: !4061)
!4120 = !DILocation(line: 339, column: 10, scope: !4109, inlinedAt: !4119)
!4121 = !DILocation(line: 93, column: 14, scope: !4061)
!4122 = !DILocation(line: 114, column: 7, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4061, file: !4062, line: 114, column: 7)
!4124 = !DILocation(line: 114, column: 10, scope: !4123)
!4125 = !DILocation(line: 114, column: 7, scope: !4061)
!4126 = !DILocation(line: 118, column: 11, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !4062, line: 118, column: 11)
!4128 = distinct !DILexicalBlock(scope: !4123, file: !4062, line: 115, column: 5)
!4129 = !DILocation(line: 118, column: 26, scope: !4127)
!4130 = !DILocation(line: 118, column: 29, scope: !4127)
!4131 = !DILocation(line: 118, column: 33, scope: !4127)
!4132 = !DILocation(line: 118, column: 36, scope: !4127)
!4133 = !DILocation(line: 118, column: 11, scope: !4128)
!4134 = !DILocation(line: 123, column: 12, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4123, file: !4062, line: 123, column: 12)
!4136 = !DILocation(line: 123, column: 12, scope: !4123)
!4137 = !DILocation(line: 128, column: 5, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4135, file: !4062, line: 124, column: 5)
!4139 = !DILocation(line: 0, scope: !4061)
!4140 = !DILocation(line: 133, column: 8, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4061, file: !4062, line: 133, column: 7)
!4142 = !DILocation(line: 133, column: 7, scope: !4061)
!4143 = !DILocation(line: 135, column: 12, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4141, file: !4062, line: 134, column: 5)
!4145 = !DILocation(line: 136, column: 7, scope: !4144)
!4146 = !DILocation(line: 139, column: 7, scope: !4081)
!4147 = !DILocation(line: 139, column: 11, scope: !4081)
!4148 = !DILocation(line: 139, column: 7, scope: !4061)
!4149 = !DILocation(line: 141, column: 11, scope: !4080)
!4150 = !DILocation(line: 142, column: 11, scope: !4080)
!4151 = !DILocation(line: 145, column: 12, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4080, file: !4062, line: 145, column: 11)
!4153 = !DILocation(line: 145, column: 11, scope: !4080)
!4154 = !DILocation(line: 147, column: 16, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4152, file: !4062, line: 146, column: 9)
!4156 = !DILocation(line: 148, column: 22, scope: !4155)
!4157 = !DILocation(line: 148, column: 11, scope: !4155)
!4158 = !DILocation(line: 151, column: 7, scope: !4080)
!4159 = !DILocation(line: 163, column: 15, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !4062, line: 163, column: 15)
!4161 = distinct !DILexicalBlock(scope: !4080, file: !4062, line: 152, column: 9)
!4162 = !DILocation(line: 163, column: 15, scope: !4161)
!4163 = !DILocation(line: 164, column: 21, scope: !4160)
!4164 = !DILocation(line: 164, column: 13, scope: !4160)
!4165 = !DILocation(line: 167, column: 21, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !4062, line: 167, column: 21)
!4167 = distinct !DILexicalBlock(scope: !4160, file: !4062, line: 165, column: 15)
!4168 = !DILocation(line: 167, column: 29, scope: !4166)
!4169 = !DILocation(line: 167, column: 21, scope: !4167)
!4170 = !DILocation(line: 175, column: 17, scope: !4167)
!4171 = !DILocation(line: 179, column: 7, scope: !4080)
!4172 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4173, file: !4062, line: 60, type: !64)
!4173 = distinct !DISubprogram(name: "bkm_scale", scope: !4062, file: !4062, line: 60, type: !4174, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !4176)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!1701, !1695, !64}
!4176 = !{!4177, !4172}
!4177 = !DILocalVariable(name: "x", arg: 1, scope: !4173, file: !4062, line: 60, type: !1695)
!4178 = !DILocation(line: 60, column: 31, scope: !4173, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 182, column: 22, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4080, file: !4062, line: 180, column: 9)
!4181 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4179)
!4182 = distinct !DILexicalBlock(scope: !4173, file: !4062, line: 67, column: 7)
!4183 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4179)
!4184 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4179)
!4185 = !DILocation(line: 143, column: 20, scope: !4080)
!4186 = !DILocation(line: 183, column: 11, scope: !4180)
!4187 = !DILocation(line: 60, column: 31, scope: !4173, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 189, column: 22, scope: !4180)
!4189 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4188)
!4190 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4188)
!4191 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4188)
!4192 = !DILocation(line: 190, column: 11, scope: !4180)
!4193 = !DILocalVariable(name: "power", arg: 3, scope: !4194, file: !4062, line: 77, type: !64)
!4194 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4062, file: !4062, line: 77, type: !4195, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!1701, !1695, !64, !64}
!4197 = !{!4198, !4199, !4193, !4200}
!4198 = !DILocalVariable(name: "x", arg: 1, scope: !4194, file: !4062, line: 77, type: !1695)
!4199 = !DILocalVariable(name: "base", arg: 2, scope: !4194, file: !4062, line: 77, type: !64)
!4200 = !DILocalVariable(name: "err", scope: !4194, file: !4062, line: 79, type: !1701)
!4201 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 197, column: 22, scope: !4180)
!4203 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4202)
!4204 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4202)
!4206 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4205)
!4207 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4205)
!4208 = !DILocation(line: 81, column: 9, scope: !4194, inlinedAt: !4202)
!4209 = !DILocation(line: 241, column: 11, scope: !4080)
!4210 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 202, column: 22, scope: !4180)
!4212 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4211)
!4213 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4211)
!4215 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4214)
!4216 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4214)
!4217 = !DILocation(line: 81, column: 9, scope: !4194, inlinedAt: !4211)
!4218 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 207, column: 22, scope: !4180)
!4220 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4219)
!4221 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4219)
!4223 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4222)
!4224 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4222)
!4225 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 212, column: 22, scope: !4180)
!4227 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4226)
!4228 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4226)
!4230 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4229)
!4231 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4229)
!4232 = !DILocation(line: 81, column: 9, scope: !4194, inlinedAt: !4226)
!4233 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 216, column: 22, scope: !4180)
!4235 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4234)
!4236 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4234)
!4238 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4237)
!4239 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4237)
!4240 = !DILocation(line: 81, column: 9, scope: !4194, inlinedAt: !4234)
!4241 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 221, column: 22, scope: !4180)
!4243 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4242)
!4244 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4242)
!4246 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4245)
!4247 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4245)
!4248 = !DILocation(line: 81, column: 9, scope: !4194, inlinedAt: !4242)
!4249 = !DILocation(line: 60, column: 31, scope: !4173, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 225, column: 22, scope: !4180)
!4251 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4250)
!4252 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4250)
!4253 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4250)
!4254 = !DILocation(line: 226, column: 11, scope: !4180)
!4255 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 229, column: 22, scope: !4180)
!4257 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4256)
!4258 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4256)
!4260 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4259)
!4261 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4259)
!4262 = !DILocation(line: 81, column: 9, scope: !4194, inlinedAt: !4256)
!4263 = !DILocation(line: 77, column: 50, scope: !4194, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 233, column: 22, scope: !4180)
!4265 = !DILocation(line: 79, column: 16, scope: !4194, inlinedAt: !4264)
!4266 = !DILocation(line: 67, column: 39, scope: !4182, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 81, column: 12, scope: !4194, inlinedAt: !4264)
!4268 = !DILocation(line: 72, column: 6, scope: !4173, inlinedAt: !4267)
!4269 = !DILocation(line: 67, column: 7, scope: !4173, inlinedAt: !4267)
!4270 = !DILocation(line: 81, column: 9, scope: !4194, inlinedAt: !4264)
!4271 = !DILocation(line: 237, column: 16, scope: !4180)
!4272 = !DILocation(line: 238, column: 22, scope: !4180)
!4273 = !DILocation(line: 238, column: 11, scope: !4180)
!4274 = !DILocation(line: 0, scope: !4127)
!4275 = !DILocation(line: 0, scope: !4180)
!4276 = !DILocation(line: 242, column: 10, scope: !4080)
!4277 = !DILocation(line: 243, column: 11, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4080, file: !4062, line: 243, column: 11)
!4279 = !DILocation(line: 244, column: 13, scope: !4278)
!4280 = !DILocation(line: 243, column: 11, scope: !4080)
!4281 = !DILocation(line: 119, column: 13, scope: !4127)
!4282 = !DILocation(line: 247, column: 8, scope: !4061)
!4283 = !DILocation(line: 248, column: 3, scope: !4061)
!4284 = !DILocation(line: 0, scope: !4107)
!4285 = !DILocation(line: 249, column: 1, scope: !4061)
!4286 = distinct !DISubprogram(name: "rpl_calloc", scope: !4287, file: !4287, line: 42, type: !3794, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !4288)
!4287 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4288 = !{!4289, !4290, !4291, !4292}
!4289 = !DILocalVariable(name: "n", arg: 1, scope: !4286, file: !4287, line: 42, type: !48)
!4290 = !DILocalVariable(name: "s", arg: 2, scope: !4286, file: !4287, line: 42, type: !48)
!4291 = !DILocalVariable(name: "result", scope: !4286, file: !4287, line: 44, type: !45)
!4292 = !DILocalVariable(name: "bytes", scope: !4293, file: !4287, line: 56, type: !48)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !4287, line: 53, column: 5)
!4294 = distinct !DILexicalBlock(scope: !4286, file: !4287, line: 47, column: 7)
!4295 = !DILocation(line: 42, column: 20, scope: !4286)
!4296 = !DILocation(line: 42, column: 30, scope: !4286)
!4297 = !DILocation(line: 47, column: 9, scope: !4294)
!4298 = !DILocation(line: 47, column: 19, scope: !4294)
!4299 = !DILocation(line: 47, column: 14, scope: !4294)
!4300 = !DILocation(line: 56, column: 24, scope: !4293)
!4301 = !DILocation(line: 56, column: 14, scope: !4293)
!4302 = !DILocation(line: 57, column: 17, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4293, file: !4287, line: 57, column: 11)
!4304 = !DILocation(line: 57, column: 21, scope: !4303)
!4305 = !DILocation(line: 57, column: 11, scope: !4293)
!4306 = !DILocation(line: 59, column: 11, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !4287, line: 58, column: 9)
!4308 = !DILocation(line: 59, column: 17, scope: !4307)
!4309 = !DILocation(line: 65, column: 12, scope: !4286)
!4310 = !DILocation(line: 44, column: 9, scope: !4286)
!4311 = !DILocation(line: 72, column: 3, scope: !4286)
!4312 = !DILocation(line: 0, scope: !4307)
!4313 = !DILocation(line: 73, column: 1, scope: !4286)
!4314 = distinct !DISubprogram(name: "rpl_fclose", scope: !4315, file: !4315, line: 58, type: !4316, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !263, retainedNodes: !4352)
!4315 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!64, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4320, file: !830, line: 51, baseType: !64, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4320, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4320, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4320, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4320, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4320, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4320, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4320, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4320, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4320, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4320, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4320, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4320, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4320, file: !830, line: 70, baseType: !4336, size: 64, offset: 832)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4320, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4320, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4320, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4320, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4320, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4320, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4320, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4320, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4320, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4320, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4320, file: !830, line: 93, baseType: !4336, size: 64, offset: 1344)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4320, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4320, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4320, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4320, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!4352 = !{!4353, !4354, !4355, !4356}
!4353 = !DILocalVariable(name: "fp", arg: 1, scope: !4314, file: !4315, line: 58, type: !4318)
!4354 = !DILocalVariable(name: "saved_errno", scope: !4314, file: !4315, line: 60, type: !64)
!4355 = !DILocalVariable(name: "fd", scope: !4314, file: !4315, line: 61, type: !64)
!4356 = !DILocalVariable(name: "result", scope: !4314, file: !4315, line: 62, type: !64)
!4357 = !DILocation(line: 58, column: 19, scope: !4314)
!4358 = !DILocation(line: 60, column: 7, scope: !4314)
!4359 = !DILocation(line: 62, column: 7, scope: !4314)
!4360 = !DILocation(line: 65, column: 8, scope: !4314)
!4361 = !DILocation(line: 61, column: 7, scope: !4314)
!4362 = !DILocation(line: 66, column: 10, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4314, file: !4315, line: 66, column: 7)
!4364 = !DILocation(line: 66, column: 7, scope: !4314)
!4365 = !DILocation(line: 67, column: 12, scope: !4363)
!4366 = !DILocation(line: 67, column: 5, scope: !4363)
!4367 = !DILocation(line: 72, column: 9, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4314, file: !4315, line: 72, column: 7)
!4369 = !DILocation(line: 72, column: 23, scope: !4368)
!4370 = !DILocation(line: 72, column: 33, scope: !4368)
!4371 = !DILocation(line: 72, column: 26, scope: !4368)
!4372 = !DILocation(line: 72, column: 59, scope: !4368)
!4373 = !DILocation(line: 73, column: 7, scope: !4368)
!4374 = !DILocation(line: 73, column: 10, scope: !4368)
!4375 = !DILocation(line: 72, column: 7, scope: !4314)
!4376 = !DILocation(line: 100, column: 12, scope: !4314)
!4377 = !DILocation(line: 105, column: 7, scope: !4314)
!4378 = !DILocation(line: 74, column: 19, scope: !4368)
!4379 = !DILocation(line: 105, column: 19, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4314, file: !4315, line: 105, column: 7)
!4381 = !DILocation(line: 107, column: 13, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4380, file: !4315, line: 106, column: 5)
!4383 = !DILocation(line: 109, column: 5, scope: !4382)
!4384 = !DILocation(line: 0, scope: !4314)
!4385 = !DILocation(line: 112, column: 1, scope: !4314)
!4386 = distinct !DISubprogram(name: "rpl_fflush", scope: !4387, file: !4387, line: 129, type: !4388, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !265, retainedNodes: !4424)
!4387 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!64, !4390}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !4392)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4392, file: !830, line: 51, baseType: !64, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4392, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4392, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4392, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4392, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4392, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4392, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4392, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4392, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4392, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4392, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4392, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4392, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4392, file: !830, line: 70, baseType: !4408, size: 64, offset: 832)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4392, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4392, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4392, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4392, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4392, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4392, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4392, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4392, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4392, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4392, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4392, file: !830, line: 93, baseType: !4408, size: 64, offset: 1344)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4392, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4392, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4392, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4392, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!4424 = !{!4425}
!4425 = !DILocalVariable(name: "stream", arg: 1, scope: !4386, file: !4387, line: 129, type: !4390)
!4426 = !DILocation(line: 129, column: 19, scope: !4386)
!4427 = !DILocation(line: 150, column: 14, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4386, file: !4387, line: 150, column: 7)
!4429 = !DILocation(line: 150, column: 22, scope: !4428)
!4430 = !DILocation(line: 150, column: 27, scope: !4428)
!4431 = !DILocation(line: 150, column: 7, scope: !4386)
!4432 = !DILocation(line: 151, column: 12, scope: !4428)
!4433 = !DILocation(line: 151, column: 5, scope: !4428)
!4434 = !DILocalVariable(name: "fp", arg: 1, scope: !4435, file: !4387, line: 41, type: !4390)
!4435 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4387, file: !4387, line: 41, type: !4436, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !265, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !4390}
!4438 = !{!4434}
!4439 = !DILocation(line: 41, column: 48, scope: !4435, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 156, column: 3, scope: !4386)
!4441 = !DILocation(line: 43, column: 11, scope: !4442, inlinedAt: !4440)
!4442 = distinct !DILexicalBlock(scope: !4435, file: !4387, line: 43, column: 7)
!4443 = !DILocation(line: 43, column: 18, scope: !4442, inlinedAt: !4440)
!4444 = !DILocation(line: 43, column: 7, scope: !4435, inlinedAt: !4440)
!4445 = !DILocation(line: 45, column: 5, scope: !4442, inlinedAt: !4440)
!4446 = !DILocation(line: 158, column: 10, scope: !4386)
!4447 = !DILocation(line: 158, column: 3, scope: !4386)
!4448 = !DILocation(line: 0, scope: !4386)
!4449 = !DILocation(line: 232, column: 1, scope: !4386)
!4450 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4451, file: !4451, line: 28, type: !4452, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !267, retainedNodes: !4488)
!4451 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!64, !4454, !1140, !64}
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4456, file: !830, line: 51, baseType: !64, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4456, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4456, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4456, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4456, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4456, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4456, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4456, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4456, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4456, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4456, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4456, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4456, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4456, file: !830, line: 70, baseType: !4472, size: 64, offset: 832)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4456, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4456, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4456, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4456, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4456, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4456, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4456, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4456, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4456, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4456, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4456, file: !830, line: 93, baseType: !4472, size: 64, offset: 1344)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4456, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4456, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4456, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4456, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!4488 = !{!4489, !4490, !4491, !4492}
!4489 = !DILocalVariable(name: "fp", arg: 1, scope: !4450, file: !4451, line: 28, type: !4454)
!4490 = !DILocalVariable(name: "offset", arg: 2, scope: !4450, file: !4451, line: 28, type: !1140)
!4491 = !DILocalVariable(name: "whence", arg: 3, scope: !4450, file: !4451, line: 28, type: !64)
!4492 = !DILocalVariable(name: "pos", scope: !4493, file: !4451, line: 117, type: !1140)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !4451, line: 113, column: 5)
!4494 = distinct !DILexicalBlock(scope: !4450, file: !4451, line: 52, column: 7)
!4495 = !DILocation(line: 28, column: 15, scope: !4450)
!4496 = !DILocation(line: 28, column: 25, scope: !4450)
!4497 = !DILocation(line: 28, column: 37, scope: !4450)
!4498 = !DILocation(line: 52, column: 11, scope: !4494)
!4499 = !DILocation(line: 52, column: 31, scope: !4494)
!4500 = !DILocation(line: 52, column: 24, scope: !4494)
!4501 = !DILocation(line: 53, column: 7, scope: !4494)
!4502 = !DILocation(line: 53, column: 14, scope: !4494)
!4503 = !DILocation(line: 53, column: 35, scope: !4494)
!4504 = !{!930, !705, i64 32}
!4505 = !DILocation(line: 53, column: 28, scope: !4494)
!4506 = !DILocation(line: 54, column: 7, scope: !4494)
!4507 = !DILocation(line: 54, column: 14, scope: !4494)
!4508 = !{!930, !705, i64 72}
!4509 = !DILocation(line: 54, column: 28, scope: !4494)
!4510 = !DILocation(line: 52, column: 7, scope: !4450)
!4511 = !DILocation(line: 117, column: 26, scope: !4493)
!4512 = !DILocation(line: 117, column: 19, scope: !4493)
!4513 = !DILocation(line: 117, column: 13, scope: !4493)
!4514 = !DILocation(line: 118, column: 15, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4493, file: !4451, line: 118, column: 11)
!4516 = !DILocation(line: 118, column: 11, scope: !4493)
!4517 = !DILocation(line: 129, column: 11, scope: !4493)
!4518 = !DILocation(line: 129, column: 18, scope: !4493)
!4519 = !DILocation(line: 130, column: 11, scope: !4493)
!4520 = !DILocation(line: 130, column: 19, scope: !4493)
!4521 = !{!930, !931, i64 144}
!4522 = !DILocation(line: 161, column: 7, scope: !4493)
!4523 = !DILocation(line: 163, column: 10, scope: !4450)
!4524 = !DILocation(line: 163, column: 3, scope: !4450)
!4525 = !DILocation(line: 0, scope: !4450)
!4526 = !DILocation(line: 164, column: 1, scope: !4450)
!4527 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4528, file: !4528, line: 385, type: !4529, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4543)
!4528 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!48, !4531, !61, !48, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2035, line: 6, baseType: !4534)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2037, line: 21, baseType: !4535)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2037, line: 13, size: 64, elements: !4536)
!4536 = !{!4537, !4538}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4535, file: !2037, line: 15, baseType: !64, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4535, file: !2037, line: 20, baseType: !4539, size: 32, offset: 32)
!4539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4535, file: !2037, line: 16, size: 32, elements: !4540)
!4540 = !{!4541, !4542}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4539, file: !2037, line: 18, baseType: !7, size: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4539, file: !2037, line: 19, baseType: !2046, size: 32)
!4543 = !{!4544, !4545, !4546, !4547, !4548, !4549, !4550}
!4544 = !DILocalVariable(name: "pwc", arg: 1, scope: !4527, file: !4528, line: 385, type: !4531)
!4545 = !DILocalVariable(name: "s", arg: 2, scope: !4527, file: !4528, line: 385, type: !61)
!4546 = !DILocalVariable(name: "n", arg: 3, scope: !4527, file: !4528, line: 385, type: !48)
!4547 = !DILocalVariable(name: "ps", arg: 4, scope: !4527, file: !4528, line: 385, type: !4532)
!4548 = !DILocalVariable(name: "ret", scope: !4527, file: !4528, line: 387, type: !48)
!4549 = !DILocalVariable(name: "wc", scope: !4527, file: !4528, line: 388, type: !2049)
!4550 = !DILocalVariable(name: "uc", scope: !4551, file: !4528, line: 449, type: !47)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 448, column: 5)
!4552 = distinct !DILexicalBlock(scope: !4527, file: !4528, line: 447, column: 7)
!4553 = !DILocation(line: 385, column: 23, scope: !4527)
!4554 = !DILocation(line: 385, column: 40, scope: !4527)
!4555 = !DILocation(line: 385, column: 50, scope: !4527)
!4556 = !DILocation(line: 385, column: 64, scope: !4527)
!4557 = !DILocation(line: 388, column: 3, scope: !4527)
!4558 = !DILocation(line: 404, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4527, file: !4528, line: 404, column: 7)
!4560 = !DILocation(line: 404, column: 7, scope: !4527)
!4561 = !DILocation(line: 439, column: 9, scope: !4527)
!4562 = !DILocation(line: 387, column: 10, scope: !4527)
!4563 = !DILocation(line: 447, column: 19, scope: !4552)
!4564 = !DILocation(line: 447, column: 31, scope: !4552)
!4565 = !DILocation(line: 447, column: 26, scope: !4552)
!4566 = !DILocation(line: 447, column: 41, scope: !4552)
!4567 = !DILocation(line: 447, column: 7, scope: !4527)
!4568 = !DILocation(line: 449, column: 26, scope: !4551)
!4569 = !DILocation(line: 449, column: 21, scope: !4551)
!4570 = !DILocation(line: 450, column: 14, scope: !4551)
!4571 = !DILocation(line: 450, column: 12, scope: !4551)
!4572 = !DILocation(line: 0, scope: !4551)
!4573 = !DILocation(line: 456, column: 1, scope: !4527)
!4574 = distinct !DISubprogram(name: "__argmatch_die", scope: !214, file: !214, line: 62, type: !218, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !75)
!4575 = !DILocation(line: 64, column: 3, scope: !4574)
!4576 = !DILocation(line: 65, column: 1, scope: !4574)
!4577 = distinct !DISubprogram(name: "argmatch", scope: !214, file: !214, line: 84, type: !4578, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !4581)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!4580, !61, !3655, !61, !48}
!4580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !49, line: 51, baseType: !854)
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589}
!4582 = !DILocalVariable(name: "arg", arg: 1, scope: !4577, file: !214, line: 84, type: !61)
!4583 = !DILocalVariable(name: "arglist", arg: 2, scope: !4577, file: !214, line: 84, type: !3655)
!4584 = !DILocalVariable(name: "vallist", arg: 3, scope: !4577, file: !214, line: 85, type: !61)
!4585 = !DILocalVariable(name: "valsize", arg: 4, scope: !4577, file: !214, line: 85, type: !48)
!4586 = !DILocalVariable(name: "i", scope: !4577, file: !214, line: 87, type: !48)
!4587 = !DILocalVariable(name: "arglen", scope: !4577, file: !214, line: 88, type: !48)
!4588 = !DILocalVariable(name: "matchind", scope: !4577, file: !214, line: 89, type: !4580)
!4589 = !DILocalVariable(name: "ambiguous", scope: !4577, file: !214, line: 90, type: !70)
!4590 = !DILocation(line: 84, column: 23, scope: !4577)
!4591 = !DILocation(line: 84, column: 47, scope: !4577)
!4592 = !DILocation(line: 85, column: 23, scope: !4577)
!4593 = !DILocation(line: 85, column: 39, scope: !4577)
!4594 = !DILocation(line: 89, column: 13, scope: !4577)
!4595 = !DILocation(line: 90, column: 8, scope: !4577)
!4596 = !DILocation(line: 92, column: 12, scope: !4577)
!4597 = !DILocation(line: 88, column: 10, scope: !4577)
!4598 = !DILocation(line: 87, column: 10, scope: !4577)
!4599 = !DILocation(line: 95, column: 15, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !214, line: 95, column: 3)
!4601 = distinct !DILexicalBlock(scope: !4577, file: !214, line: 95, column: 3)
!4602 = !DILocation(line: 95, column: 3, scope: !4601)
!4603 = !DILocation(line: 97, column: 12, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !214, line: 97, column: 11)
!4605 = distinct !DILexicalBlock(scope: !4600, file: !214, line: 96, column: 5)
!4606 = !DILocation(line: 97, column: 11, scope: !4605)
!4607 = !DILocation(line: 99, column: 15, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !214, line: 99, column: 15)
!4609 = distinct !DILexicalBlock(scope: !4604, file: !214, line: 98, column: 9)
!4610 = !DILocation(line: 99, column: 35, scope: !4608)
!4611 = !DILocation(line: 99, column: 15, scope: !4609)
!4612 = !DILocation(line: 102, column: 29, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4608, file: !214, line: 102, column: 20)
!4614 = !DILocation(line: 102, column: 20, scope: !4608)
!4615 = !DILocation(line: 109, column: 19, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !214, line: 108, column: 19)
!4617 = distinct !DILexicalBlock(scope: !4613, file: !214, line: 106, column: 13)
!4618 = !DILocation(line: 109, column: 48, scope: !4616)
!4619 = !DILocation(line: 109, column: 38, scope: !4616)
!4620 = !DILocation(line: 110, column: 48, scope: !4616)
!4621 = !DILocation(line: 110, column: 38, scope: !4616)
!4622 = !DILocation(line: 109, column: 22, scope: !4616)
!4623 = !DILocation(line: 108, column: 19, scope: !4617)
!4624 = !DILocation(line: 115, column: 17, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4616, file: !214, line: 111, column: 17)
!4626 = !DILocation(line: 0, scope: !4577)
!4627 = !DILocation(line: 95, column: 28, scope: !4600)
!4628 = distinct !{!4628, !4602, !4629}
!4629 = !DILocation(line: 118, column: 5, scope: !4601)
!4630 = !DILocation(line: 119, column: 7, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4577, file: !214, line: 119, column: 7)
!4632 = !DILocation(line: 122, column: 5, scope: !4631)
!4633 = !DILocation(line: 0, scope: !4631)
!4634 = !DILocation(line: 123, column: 1, scope: !4577)
!4635 = distinct !DISubprogram(name: "argmatch_invalid", scope: !214, file: !214, line: 131, type: !4636, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !4638)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{null, !61, !61, !4580}
!4638 = !{!4639, !4640, !4641, !4642}
!4639 = !DILocalVariable(name: "context", arg: 1, scope: !4635, file: !214, line: 131, type: !61)
!4640 = !DILocalVariable(name: "value", arg: 2, scope: !4635, file: !214, line: 131, type: !61)
!4641 = !DILocalVariable(name: "problem", arg: 3, scope: !4635, file: !214, line: 131, type: !4580)
!4642 = !DILocalVariable(name: "format", scope: !4635, file: !214, line: 133, type: !61)
!4643 = !DILocation(line: 131, column: 31, scope: !4635)
!4644 = !DILocation(line: 131, column: 52, scope: !4635)
!4645 = !DILocation(line: 131, column: 69, scope: !4635)
!4646 = !DILocation(line: 133, column: 33, scope: !4635)
!4647 = !DILocation(line: 133, column: 25, scope: !4635)
!4648 = !DILocation(line: 0, scope: !4635)
!4649 = !DILocation(line: 133, column: 15, scope: !4635)
!4650 = !DILocation(line: 137, column: 24, scope: !4635)
!4651 = !DILocation(line: 138, column: 10, scope: !4635)
!4652 = !DILocation(line: 137, column: 3, scope: !4635)
!4653 = !DILocation(line: 139, column: 1, scope: !4635)
!4654 = distinct !DISubprogram(name: "argmatch_valid", scope: !214, file: !214, line: 146, type: !4655, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !4657)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{null, !3655, !61, !48}
!4657 = !{!4658, !4659, !4660, !4661, !4662}
!4658 = !DILocalVariable(name: "arglist", arg: 1, scope: !4654, file: !214, line: 146, type: !3655)
!4659 = !DILocalVariable(name: "vallist", arg: 2, scope: !4654, file: !214, line: 147, type: !61)
!4660 = !DILocalVariable(name: "valsize", arg: 3, scope: !4654, file: !214, line: 147, type: !48)
!4661 = !DILocalVariable(name: "i", scope: !4654, file: !214, line: 149, type: !48)
!4662 = !DILocalVariable(name: "last_val", scope: !4654, file: !214, line: 150, type: !61)
!4663 = !DILocation(line: 146, column: 36, scope: !4654)
!4664 = !DILocation(line: 147, column: 29, scope: !4654)
!4665 = !DILocation(line: 147, column: 45, scope: !4654)
!4666 = !DILocation(line: 150, column: 15, scope: !4654)
!4667 = !DILocation(line: 154, column: 3, scope: !4654)
!4668 = !DILocation(line: 149, column: 10, scope: !4654)
!4669 = !DILocation(line: 155, column: 15, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !214, line: 155, column: 3)
!4671 = distinct !DILexicalBlock(scope: !4654, file: !214, line: 155, column: 3)
!4672 = !DILocation(line: 155, column: 3, scope: !4671)
!4673 = !DILocation(line: 156, column: 12, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4670, file: !214, line: 156, column: 9)
!4675 = !DILocation(line: 0, scope: !4674)
!4676 = !DILocation(line: 157, column: 9, scope: !4674)
!4677 = !DILocation(line: 157, column: 12, scope: !4674)
!4678 = !DILocation(line: 156, column: 9, scope: !4670)
!4679 = !DILocation(line: 159, column: 9, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4674, file: !214, line: 158, column: 7)
!4681 = !DILocation(line: 161, column: 7, scope: !4680)
!4682 = !DILocation(line: 164, column: 9, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4674, file: !214, line: 163, column: 7)
!4684 = !DILocation(line: 0, scope: !4654)
!4685 = !DILocation(line: 155, column: 28, scope: !4670)
!4686 = distinct !{!4686, !4672, !4687}
!4687 = !DILocation(line: 165, column: 7, scope: !4671)
!4688 = !DILocation(line: 166, column: 3, scope: !4654)
!4689 = !DILocalVariable(name: "__c", arg: 1, scope: !4690, file: !922, line: 101, type: !64)
!4690 = distinct !DISubprogram(name: "putc_unlocked", scope: !922, file: !922, line: 101, type: !4691, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !4727)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!64, !64, !4693}
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !4695)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4696)
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4695, file: !830, line: 51, baseType: !64, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4695, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4695, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4695, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4695, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4695, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4695, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4695, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4695, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4695, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4695, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4695, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4695, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4695, file: !830, line: 70, baseType: !4711, size: 64, offset: 832)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4695, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4695, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4695, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4695, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4695, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4695, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4695, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4695, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4695, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4695, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4695, file: !830, line: 93, baseType: !4711, size: 64, offset: 1344)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4695, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4695, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4695, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4695, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!4727 = !{!4689, !4728}
!4728 = !DILocalVariable(name: "__stream", arg: 2, scope: !4690, file: !922, line: 101, type: !4693)
!4729 = !DILocation(line: 101, column: 20, scope: !4690, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 166, column: 3, scope: !4654)
!4731 = !DILocation(line: 101, column: 31, scope: !4690, inlinedAt: !4730)
!4732 = !DILocation(line: 103, column: 10, scope: !4690, inlinedAt: !4730)
!4733 = !DILocation(line: 167, column: 1, scope: !4654)
!4734 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !214, file: !214, line: 176, type: !4735, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !4737)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!4580, !61, !61, !3655, !61, !48, !215}
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4743, !4744}
!4738 = !DILocalVariable(name: "context", arg: 1, scope: !4734, file: !214, line: 176, type: !61)
!4739 = !DILocalVariable(name: "arg", arg: 2, scope: !4734, file: !214, line: 177, type: !61)
!4740 = !DILocalVariable(name: "arglist", arg: 3, scope: !4734, file: !214, line: 177, type: !3655)
!4741 = !DILocalVariable(name: "vallist", arg: 4, scope: !4734, file: !214, line: 178, type: !61)
!4742 = !DILocalVariable(name: "valsize", arg: 5, scope: !4734, file: !214, line: 178, type: !48)
!4743 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !4734, file: !214, line: 179, type: !215)
!4744 = !DILocalVariable(name: "res", scope: !4734, file: !214, line: 181, type: !4580)
!4745 = !DILocation(line: 176, column: 35, scope: !4734)
!4746 = !DILocation(line: 177, column: 35, scope: !4734)
!4747 = !DILocation(line: 177, column: 59, scope: !4734)
!4748 = !DILocation(line: 178, column: 35, scope: !4734)
!4749 = !DILocation(line: 178, column: 51, scope: !4734)
!4750 = !DILocation(line: 179, column: 40, scope: !4734)
!4751 = !DILocation(line: 84, column: 23, scope: !4577, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 181, column: 19, scope: !4734)
!4753 = !DILocation(line: 84, column: 47, scope: !4577, inlinedAt: !4752)
!4754 = !DILocation(line: 85, column: 23, scope: !4577, inlinedAt: !4752)
!4755 = !DILocation(line: 85, column: 39, scope: !4577, inlinedAt: !4752)
!4756 = !DILocation(line: 89, column: 13, scope: !4577, inlinedAt: !4752)
!4757 = !DILocation(line: 90, column: 8, scope: !4577, inlinedAt: !4752)
!4758 = !DILocation(line: 92, column: 12, scope: !4577, inlinedAt: !4752)
!4759 = !DILocation(line: 88, column: 10, scope: !4577, inlinedAt: !4752)
!4760 = !DILocation(line: 87, column: 10, scope: !4577, inlinedAt: !4752)
!4761 = !DILocation(line: 95, column: 15, scope: !4600, inlinedAt: !4752)
!4762 = !DILocation(line: 95, column: 3, scope: !4601, inlinedAt: !4752)
!4763 = !DILocation(line: 97, column: 12, scope: !4604, inlinedAt: !4752)
!4764 = !DILocation(line: 97, column: 11, scope: !4605, inlinedAt: !4752)
!4765 = !DILocation(line: 99, column: 15, scope: !4608, inlinedAt: !4752)
!4766 = !DILocation(line: 99, column: 35, scope: !4608, inlinedAt: !4752)
!4767 = !DILocation(line: 99, column: 15, scope: !4609, inlinedAt: !4752)
!4768 = !DILocation(line: 102, column: 29, scope: !4613, inlinedAt: !4752)
!4769 = !DILocation(line: 102, column: 20, scope: !4608, inlinedAt: !4752)
!4770 = !DILocation(line: 109, column: 19, scope: !4616, inlinedAt: !4752)
!4771 = !DILocation(line: 109, column: 48, scope: !4616, inlinedAt: !4752)
!4772 = !DILocation(line: 109, column: 38, scope: !4616, inlinedAt: !4752)
!4773 = !DILocation(line: 110, column: 48, scope: !4616, inlinedAt: !4752)
!4774 = !DILocation(line: 110, column: 38, scope: !4616, inlinedAt: !4752)
!4775 = !DILocation(line: 109, column: 22, scope: !4616, inlinedAt: !4752)
!4776 = !DILocation(line: 108, column: 19, scope: !4617, inlinedAt: !4752)
!4777 = !DILocation(line: 115, column: 17, scope: !4625, inlinedAt: !4752)
!4778 = !DILocation(line: 0, scope: !4577, inlinedAt: !4752)
!4779 = !DILocation(line: 95, column: 28, scope: !4600, inlinedAt: !4752)
!4780 = !DILocation(line: 119, column: 7, scope: !4631, inlinedAt: !4752)
!4781 = !DILocation(line: 0, scope: !4631, inlinedAt: !4752)
!4782 = !DILocation(line: 181, column: 13, scope: !4734)
!4783 = !DILocation(line: 182, column: 11, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4734, file: !214, line: 182, column: 7)
!4785 = !DILocation(line: 182, column: 7, scope: !4734)
!4786 = !DILocation(line: 131, column: 31, scope: !4635, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 187, column: 3, scope: !4734)
!4788 = !DILocation(line: 131, column: 52, scope: !4635, inlinedAt: !4787)
!4789 = !DILocation(line: 131, column: 69, scope: !4635, inlinedAt: !4787)
!4790 = !DILocation(line: 133, column: 33, scope: !4635, inlinedAt: !4787)
!4791 = !DILocation(line: 133, column: 25, scope: !4635, inlinedAt: !4787)
!4792 = !DILocation(line: 0, scope: !4734)
!4793 = !DILocation(line: 133, column: 15, scope: !4635, inlinedAt: !4787)
!4794 = !DILocation(line: 137, column: 24, scope: !4635, inlinedAt: !4787)
!4795 = !DILocation(line: 138, column: 10, scope: !4635, inlinedAt: !4787)
!4796 = !DILocation(line: 137, column: 3, scope: !4635, inlinedAt: !4787)
!4797 = !DILocation(line: 188, column: 3, scope: !4734)
!4798 = !DILocation(line: 189, column: 3, scope: !4734)
!4799 = !DILocation(line: 191, column: 3, scope: !4734)
!4800 = !DILocation(line: 192, column: 1, scope: !4734)
!4801 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !214, file: !214, line: 197, type: !4802, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!61, !61, !3655, !61, !48}
!4804 = !{!4805, !4806, !4807, !4808, !4809}
!4805 = !DILocalVariable(name: "value", arg: 1, scope: !4801, file: !214, line: 197, type: !61)
!4806 = !DILocalVariable(name: "arglist", arg: 2, scope: !4801, file: !214, line: 198, type: !3655)
!4807 = !DILocalVariable(name: "vallist", arg: 3, scope: !4801, file: !214, line: 199, type: !61)
!4808 = !DILocalVariable(name: "valsize", arg: 4, scope: !4801, file: !214, line: 199, type: !48)
!4809 = !DILocalVariable(name: "i", scope: !4801, file: !214, line: 201, type: !48)
!4810 = !DILocation(line: 197, column: 35, scope: !4801)
!4811 = !DILocation(line: 198, column: 42, scope: !4801)
!4812 = !DILocation(line: 199, column: 35, scope: !4801)
!4813 = !DILocation(line: 199, column: 51, scope: !4801)
!4814 = !DILocation(line: 201, column: 10, scope: !4801)
!4815 = !DILocation(line: 203, column: 15, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !214, line: 203, column: 3)
!4817 = distinct !DILexicalBlock(scope: !4801, file: !214, line: 203, column: 3)
!4818 = !DILocation(line: 203, column: 3, scope: !4817)
!4819 = !DILocation(line: 204, column: 10, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4816, file: !214, line: 204, column: 9)
!4821 = !DILocation(line: 204, column: 9, scope: !4816)
!4822 = distinct !{!4822, !4818, !4823}
!4823 = !DILocation(line: 205, column: 23, scope: !4817)
!4824 = !DILocation(line: 204, column: 43, scope: !4820)
!4825 = !DILocation(line: 204, column: 33, scope: !4820)
!4826 = !DILocation(line: 203, column: 28, scope: !4816)
!4827 = !DILocation(line: 207, column: 1, scope: !4801)
!4828 = distinct !DISubprogram(name: "close_stream", scope: !4829, file: !4829, line: 56, type: !4830, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !272, retainedNodes: !4866)
!4829 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!64, !4832}
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !4834)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4835)
!4835 = !{!4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4834, file: !830, line: 51, baseType: !64, size: 32)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4834, file: !830, line: 54, baseType: !43, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4834, file: !830, line: 55, baseType: !43, size: 64, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4834, file: !830, line: 56, baseType: !43, size: 64, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4834, file: !830, line: 57, baseType: !43, size: 64, offset: 256)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4834, file: !830, line: 58, baseType: !43, size: 64, offset: 320)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4834, file: !830, line: 59, baseType: !43, size: 64, offset: 384)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4834, file: !830, line: 60, baseType: !43, size: 64, offset: 448)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4834, file: !830, line: 61, baseType: !43, size: 64, offset: 512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4834, file: !830, line: 64, baseType: !43, size: 64, offset: 576)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4834, file: !830, line: 65, baseType: !43, size: 64, offset: 640)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4834, file: !830, line: 66, baseType: !43, size: 64, offset: 704)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4834, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4834, file: !830, line: 70, baseType: !4850, size: 64, offset: 832)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4834, file: !830, line: 72, baseType: !64, size: 32, offset: 896)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4834, file: !830, line: 73, baseType: !64, size: 32, offset: 928)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4834, file: !830, line: 74, baseType: !852, size: 64, offset: 960)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4834, file: !830, line: 77, baseType: !156, size: 16, offset: 1024)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4834, file: !830, line: 78, baseType: !857, size: 8, offset: 1040)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4834, file: !830, line: 79, baseType: !859, size: 8, offset: 1048)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4834, file: !830, line: 81, baseType: !863, size: 64, offset: 1088)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4834, file: !830, line: 89, baseType: !866, size: 64, offset: 1152)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4834, file: !830, line: 91, baseType: !868, size: 64, offset: 1216)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4834, file: !830, line: 92, baseType: !871, size: 64, offset: 1280)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4834, file: !830, line: 93, baseType: !4850, size: 64, offset: 1344)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4834, file: !830, line: 94, baseType: !45, size: 64, offset: 1408)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4834, file: !830, line: 95, baseType: !48, size: 64, offset: 1472)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4834, file: !830, line: 96, baseType: !64, size: 32, offset: 1536)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4834, file: !830, line: 98, baseType: !878, size: 160, offset: 1568)
!4866 = !{!4867, !4868, !4870, !4871}
!4867 = !DILocalVariable(name: "stream", arg: 1, scope: !4828, file: !4829, line: 56, type: !4832)
!4868 = !DILocalVariable(name: "some_pending", scope: !4828, file: !4829, line: 58, type: !4869)
!4869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4870 = !DILocalVariable(name: "prev_fail", scope: !4828, file: !4829, line: 59, type: !4869)
!4871 = !DILocalVariable(name: "fclose_fail", scope: !4828, file: !4829, line: 60, type: !4869)
!4872 = !DILocation(line: 56, column: 21, scope: !4828)
!4873 = !DILocation(line: 58, column: 30, scope: !4828)
!4874 = !DILocalVariable(name: "__stream", arg: 1, scope: !4875, file: !922, line: 135, type: !4832)
!4875 = distinct !DISubprogram(name: "ferror_unlocked", scope: !922, file: !922, line: 135, type: !4830, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !272, retainedNodes: !4876)
!4876 = !{!4874}
!4877 = !DILocation(line: 135, column: 1, scope: !4875, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 59, column: 27, scope: !4828)
!4879 = !DILocation(line: 137, column: 10, scope: !4875, inlinedAt: !4878)
!4880 = !DILocation(line: 59, column: 43, scope: !4828)
!4881 = !DILocation(line: 60, column: 29, scope: !4828)
!4882 = !DILocation(line: 60, column: 45, scope: !4828)
!4883 = !DILocation(line: 70, column: 17, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4828, file: !4829, line: 70, column: 7)
!4885 = !DILocation(line: 58, column: 50, scope: !4828)
!4886 = !DILocation(line: 70, column: 33, scope: !4884)
!4887 = !DILocation(line: 70, column: 53, scope: !4884)
!4888 = !DILocation(line: 70, column: 59, scope: !4884)
!4889 = !DILocation(line: 70, column: 7, scope: !4828)
!4890 = !DILocation(line: 72, column: 11, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4884, file: !4829, line: 71, column: 5)
!4892 = !DILocation(line: 73, column: 9, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4891, file: !4829, line: 72, column: 11)
!4894 = !DILocation(line: 73, column: 15, scope: !4893)
!4895 = !DILocation(line: 0, scope: !4828)
!4896 = !DILocation(line: 78, column: 1, scope: !4828)
!4897 = distinct !DISubprogram(name: "hard_locale", scope: !4898, file: !4898, line: 38, type: !4899, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4901)
!4898 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!70, !64}
!4901 = !{!4902, !4903, !4904}
!4902 = !DILocalVariable(name: "category", arg: 1, scope: !4897, file: !4898, line: 38, type: !64)
!4903 = !DILocalVariable(name: "hard", scope: !4897, file: !4898, line: 40, type: !70)
!4904 = !DILocalVariable(name: "p", scope: !4897, file: !4898, line: 41, type: !61)
!4905 = !DILocation(line: 38, column: 18, scope: !4897)
!4906 = !DILocation(line: 40, column: 8, scope: !4897)
!4907 = !DILocation(line: 41, column: 19, scope: !4897)
!4908 = !DILocation(line: 41, column: 15, scope: !4897)
!4909 = !DILocation(line: 43, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4897, file: !4898, line: 43, column: 7)
!4911 = !DILocation(line: 43, column: 7, scope: !4897)
!4912 = !DILocation(line: 47, column: 15, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !4898, line: 47, column: 15)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !4898, line: 46, column: 9)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !4898, line: 45, column: 11)
!4916 = distinct !DILexicalBlock(scope: !4910, file: !4898, line: 44, column: 5)
!4917 = !DILocation(line: 47, column: 31, scope: !4913)
!4918 = !DILocation(line: 47, column: 36, scope: !4913)
!4919 = !DILocation(line: 47, column: 39, scope: !4913)
!4920 = !DILocation(line: 47, column: 59, scope: !4913)
!4921 = !DILocation(line: 47, column: 15, scope: !4914)
!4922 = !DILocation(line: 48, column: 13, scope: !4913)
!4923 = !DILocation(line: 71, column: 3, scope: !4897)
!4924 = distinct !DISubprogram(name: "locale_charset", scope: !4925, file: !4925, line: 687, type: !4926, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !276, retainedNodes: !4927)
!4925 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4926 = !DISubroutineType(types: !105)
!4927 = !{!4928}
!4928 = !DILocalVariable(name: "codeset", scope: !4924, file: !4925, line: 689, type: !61)
!4929 = !DILocation(line: 696, column: 13, scope: !4924)
!4930 = !DILocation(line: 689, column: 15, scope: !4924)
!4931 = !DILocation(line: 754, column: 15, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4924, file: !4925, line: 754, column: 7)
!4933 = !DILocation(line: 754, column: 7, scope: !4924)
!4934 = !DILocation(line: 907, column: 13, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !4925, line: 907, column: 13)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !4925, line: 897, column: 7)
!4937 = distinct !DILexicalBlock(scope: !4924, file: !4925, line: 856, column: 3)
!4938 = !DILocation(line: 907, column: 24, scope: !4935)
!4939 = !DILocation(line: 907, column: 13, scope: !4936)
!4940 = !DILocation(line: 995, column: 3, scope: !4924)
