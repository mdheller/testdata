; ModuleID = 'coreutils-8.30/src/cat.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Concatenate FILE(s) to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [335 x i8] c"\0A  -A, --show-all           equivalent to -vET\0A  -b, --number-nonblank    number nonempty output lines, overrides -n\0A  -e                       equivalent to -vE\0A  -E, --show-ends          display $ at end of each line\0A  -n, --number             number all output lines\0A  -s, --squeeze-blank      suppress repeated empty output lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [212 x i8] c"  -t                       equivalent to -vT\0A  -T, --show-tabs          display TAB characters as ^I\0A  -u                       (ignored)\0A  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [137 x i8] c"\0AExamples:\0A  %s f - g  Output f's contents, then standard input, then g's contents.\0A  %s        Copy standard input to standard output.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1
@main.long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.23 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@infile = internal unnamed_addr global i8* null, align 8, !dbg !46
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !50
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@newlines2 = internal unnamed_addr global i32 0, align 4, !dbg !52
@.str.47 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1
@line_num_start = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), align 8, !dbg !56
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !58
@line_num_print = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 12), align 8, !dbg !63
@.str.29 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !143
@.str.48 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !149
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !154
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !157
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !164
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !171
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !199
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !204
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !216
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !223
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !230
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !218
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !232
@.str.94 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.95 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.96 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.97 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.98 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.99 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.100 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.101 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.102 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.103 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.104 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.105 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.106 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.107 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.110 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.111 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.112 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.113 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.114 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.115 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !238
@.str.1.126 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !699 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !704, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32 %0, metadata !703, metadata !DIExpression()), !dbg !727
  %3 = icmp eq i32 %0, 0, !dbg !728
  br i1 %3, label %9, label %4, !dbg !729

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !730, !tbaa !732
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !730
  %7 = load i8*, i8** @program_name, align 8, !dbg !730, !tbaa !732
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !730
  br label %69, !dbg !730

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !736
  %11 = load i8*, i8** @program_name, align 8, !dbg !736, !tbaa !732
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !736
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !737
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !732
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !737
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !738
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !732
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !738
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !743
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !732
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !743
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !744
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !732
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !744
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !745
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !732
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !745
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !746
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !732
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !746
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !747
  %32 = load i8*, i8** @program_name, align 8, !dbg !747, !tbaa !732
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* %32, i8* %32) #10, !dbg !747
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #10, !dbg !748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %34, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !723
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !749
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !712, metadata !DIExpression()) #10, !dbg !750
  br label %36, !dbg !751

; <label>:36:                                     ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !712, metadata !DIExpression()) #10, !dbg !750
  %39 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %37) #14, !dbg !751
  %40 = icmp eq i32 %39, 0, !dbg !751
  br i1 %40, label %46, label %41, !dbg !752

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !753
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !712, metadata !DIExpression()) #10, !dbg !750
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !754
  %44 = load i8*, i8** %43, align 8, !dbg !754, !tbaa !755
  %45 = icmp eq i8* %44, null, !dbg !757
  br i1 %45, label %46, label %36, !dbg !758, !llvm.loop !759

; <label>:46:                                     ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !712, metadata !DIExpression()) #10, !dbg !750
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !712, metadata !DIExpression()) #10, !dbg !750
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !762
  %49 = load i8*, i8** %48, align 8, !dbg !762, !tbaa !764
  %50 = icmp eq i8* %49, null, !dbg !765
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %49, !dbg !766
  call void @llvm.dbg.value(metadata i8* %51, metadata !711, metadata !DIExpression()) #10, !dbg !767
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !768
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !768
  %54 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !769
  call void @llvm.dbg.value(metadata i8* %54, metadata !719, metadata !DIExpression()) #10, !dbg !770
  %55 = icmp eq i8* %54, null, !dbg !771
  br i1 %55, label %62, label %56, !dbg !773

; <label>:56:                                     ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #14, !dbg !774
  %58 = icmp eq i32 %57, 0, !dbg !774
  br i1 %58, label %62, label %59, !dbg !775

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !776
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !776
  br label %62, !dbg !778

; <label>:62:                                     ; preds = %46, %56, %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !779
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !779
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !780
  %66 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !780
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), !dbg !780
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %51, i8* %67) #10, !dbg !780
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #10, !dbg !781
  br label %69

; <label>:69:                                     ; preds = %62, %4
  tail call void @exit(i32 %0) #15, !dbg !782
  unreachable, !dbg !782
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !66, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i8** %1, metadata !67, metadata !DIExpression()), !dbg !784
  %5 = tail call i32 @getpagesize() #16, !dbg !785
  %6 = sext i32 %5 to i64, !dbg !785
  call void @llvm.dbg.value(metadata i64 %6, metadata !70, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i8 1, metadata !73, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 0, metadata !86, metadata !DIExpression()), !dbg !788
  %7 = bitcast %struct.stat* %4 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #10, !dbg !789
  call void @llvm.dbg.value(metadata i8 0, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 0, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 0, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 0, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 0, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 0, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !796
  %8 = load i8*, i8** %1, align 8, !dbg !797, !tbaa !732
  tail call void @set_program_name(i8* %8) #10, !dbg !798
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !799
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !800
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !801
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !802
  br label %13, !dbg !803

; <label>:13:                                     ; preds = %21, %2
  %14 = phi i8 [ 0, %2 ], [ %22, %21 ], !dbg !790
  %15 = phi i8 [ 0, %2 ], [ %23, %21 ], !dbg !791
  %16 = phi i8 [ 0, %2 ], [ %24, %21 ], !dbg !792
  %17 = phi i8 [ 0, %2 ], [ %25, %21 ], !dbg !793
  %18 = phi i8 [ 0, %2 ], [ %26, %21 ], !dbg !794
  %19 = phi i8 [ 0, %2 ], [ %27, %21 ], !dbg !804
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !790
  %20 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null) #10, !dbg !807
  call void @llvm.dbg.value(metadata i32 %20, metadata !75, metadata !DIExpression()), !dbg !808
  switch i32 %20, label %41 [
    i32 -1, label %42
    i32 98, label %28
    i32 101, label %29
    i32 110, label %30
    i32 115, label %31
    i32 116, label %32
    i32 117, label %21
    i32 118, label %33
    i32 65, label %34
    i32 69, label %35
    i32 84, label %36
    i32 -130, label %37
    i32 -131, label %38
  ], !dbg !803

; <label>:21:                                     ; preds = %13, %36, %35, %34, %33, %32, %31, %30, %29, %28
  %22 = phi i8 [ %14, %36 ], [ %14, %35 ], [ %14, %34 ], [ %14, %33 ], [ %14, %32 ], [ %14, %31 ], [ 1, %30 ], [ %14, %29 ], [ 1, %28 ], [ %14, %13 ]
  %23 = phi i8 [ %15, %36 ], [ %15, %35 ], [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ %15, %29 ], [ 1, %28 ], [ %15, %13 ]
  %24 = phi i8 [ %16, %36 ], [ %16, %35 ], [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ 1, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %13 ]
  %25 = phi i8 [ %17, %36 ], [ 1, %35 ], [ 1, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ 1, %29 ], [ %17, %28 ], [ %17, %13 ]
  %26 = phi i8 [ %18, %36 ], [ %18, %35 ], [ 1, %34 ], [ 1, %33 ], [ 1, %32 ], [ %18, %31 ], [ %18, %30 ], [ 1, %29 ], [ %18, %28 ], [ %18, %13 ]
  %27 = phi i8 [ 1, %36 ], [ %19, %35 ], [ 1, %34 ], [ %19, %33 ], [ 1, %32 ], [ %19, %31 ], [ %19, %30 ], [ %19, %29 ], [ %19, %28 ], [ %19, %13 ]
  br label %13, !dbg !795, !llvm.loop !809

; <label>:28:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 1, metadata !125, metadata !DIExpression()), !dbg !791
  br label %21, !dbg !811

; <label>:29:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !794
  br label %21, !dbg !812

; <label>:30:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !124, metadata !DIExpression()), !dbg !790
  br label %21, !dbg !813

; <label>:31:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !126, metadata !DIExpression()), !dbg !792
  br label %21, !dbg !814

; <label>:32:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !794
  br label %21, !dbg !815

; <label>:33:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !794
  br label %21, !dbg !816

; <label>:34:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 1, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 1, metadata !129, metadata !DIExpression()), !dbg !795
  br label %21, !dbg !817

; <label>:35:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !127, metadata !DIExpression()), !dbg !793
  br label %21, !dbg !818

; <label>:36:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !129, metadata !DIExpression()), !dbg !795
  br label %21, !dbg !819

; <label>:37:                                     ; preds = %13
  tail call void @usage(i32 0) #17, !dbg !820
  unreachable, !dbg !820

; <label>:38:                                     ; preds = %13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !732
  %40 = load i8*, i8** @Version, align 8, !dbg !821, !tbaa !732
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* null) #10, !dbg !821
  tail call void @exit(i32 0) #15, !dbg !821
  unreachable, !dbg !821

; <label>:41:                                     ; preds = %13
  tail call void @usage(i32 1) #17, !dbg !822
  unreachable, !dbg !822

; <label>:42:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !87, metadata !DIExpression(DW_OP_deref)), !dbg !823
  call void @llvm.dbg.value(metadata i32 1, metadata !824, metadata !DIExpression()) #10, !dbg !832
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !831, metadata !DIExpression()) #10, !dbg !832
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !835, metadata !DIExpression(DW_OP_deref)), !dbg !840
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !835, metadata !DIExpression(DW_OP_deref)), !dbg !842
  %43 = call i32 @__fxstat(i32 1, i32 1, %struct.stat* nonnull %4) #10, !dbg !845
  %44 = icmp slt i32 %43, 0, !dbg !846
  br i1 %44, label %45, label %49, !dbg !847

; <label>:45:                                     ; preds = %42
  %46 = tail call i32* @__errno_location() #16, !dbg !848
  %47 = load i32, i32* %46, align 4, !dbg !848, !tbaa !849
  %48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !848
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* %48) #10, !dbg !848
  unreachable, !dbg !848

; <label>:49:                                     ; preds = %42
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !87, metadata !DIExpression(DW_OP_deref)), !dbg !823
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 9, !dbg !851
  %51 = load i64, i64* %50, align 8, !dbg !851, !tbaa !852
  %52 = icmp sgt i64 %51, 0, !dbg !851
  %53 = icmp ult i64 %51, 2305843009213693953, !dbg !851
  %54 = and i1 %52, %53, !dbg !851
  %55 = and i1 %52, %53, !dbg !851
  %56 = xor i1 %55, true, !dbg !851
  %57 = icmp slt i64 %51, 131072, !dbg !851
  %58 = or i1 %57, %56, !dbg !851
  %59 = select i1 %54, i64 %51, i64 512, !dbg !851
  %60 = select i1 %58, i64 131072, i64 %59, !dbg !851
  call void @llvm.dbg.value(metadata i64 %60, metadata !68, metadata !DIExpression()), !dbg !856
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !857
  %62 = load i64, i64* %61, align 8, !dbg !857, !tbaa !858
  call void @llvm.dbg.value(metadata i64 %62, metadata !77, metadata !DIExpression()), !dbg !859
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !860
  %64 = load i64, i64* %63, align 8, !dbg !860, !tbaa !861
  call void @llvm.dbg.value(metadata i64 %64, metadata !82, metadata !DIExpression()), !dbg !862
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !863
  %66 = load i32, i32* %65, align 8, !dbg !863, !tbaa !864
  %67 = and i32 %66, 61440, !dbg !863
  %68 = icmp eq i32 %67, 32768, !dbg !863
  %69 = icmp eq i8 %14, 0, !dbg !865
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !796
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8** @infile, align 8, !dbg !867, !tbaa !732
  %70 = load i32, i32* @optind, align 4, !dbg !868, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %70, metadata !76, metadata !DIExpression()), !dbg !869
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8
  %72 = or i8 %16, %14
  %73 = or i8 %72, %17
  %74 = or i8 %73, %18
  %75 = or i8 %74, %19
  %76 = icmp eq i8 %75, 0
  %77 = add nsw i64 %6, -1
  %78 = add nsw i64 %6, 18
  %79 = add i64 %78, %60
  %80 = icmp eq i8 %18, 0
  %81 = icmp ne i8 %19, 0
  %82 = icmp ne i8 %15, 0
  %83 = icmp eq i8 %17, 0
  %84 = icmp eq i8 %16, 0
  %85 = bitcast i32* %3 to i8*
  %86 = or i1 %69, %82
  %87 = xor i1 %81, true
  %88 = sext i32 %70 to i64, !dbg !870
  %89 = sext i32 %0 to i64, !dbg !870
  br label %90, !dbg !870

; <label>:90:                                     ; preds = %468, %49
  %91 = phi i64 [ %471, %468 ], [ %88, %49 ], !dbg !871
  %92 = phi i8 [ %469, %468 ], [ 1, %49 ], !dbg !871
  %93 = phi i8 [ %470, %468 ], [ 0, %49 ], !dbg !874
  call void @llvm.dbg.value(metadata i8 %93, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i64 %91, metadata !76, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i8 %92, metadata !73, metadata !DIExpression()), !dbg !787
  %94 = icmp slt i64 %91, %89, !dbg !877
  br i1 %94, label %97, label %95, !dbg !879

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** @infile, align 8, !dbg !880, !tbaa !732
  br label %102, !dbg !879

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds i8*, i8** %1, i64 %91, !dbg !881
  %99 = bitcast i8** %98 to i64*, !dbg !881
  %100 = load i64, i64* %99, align 8, !dbg !881, !tbaa !732
  store i64 %100, i64* bitcast (i8** @infile to i64*), align 8, !dbg !882, !tbaa !732
  %101 = inttoptr i64 %100 to i8*, !dbg !883
  br label %102, !dbg !883

; <label>:102:                                    ; preds = %95, %97
  %103 = phi i8* [ %96, %95 ], [ %101, %97 ], !dbg !880
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !880
  %105 = icmp eq i32 %104, 0, !dbg !880
  br i1 %105, label %106, label %107, !dbg !884

; <label>:106:                                    ; preds = %102
  call void @llvm.dbg.value(metadata i8 1, metadata !86, metadata !DIExpression()), !dbg !788
  store i32 0, i32* @input_desc, align 4, !dbg !885, !tbaa !849
  br label %115, !dbg !886

; <label>:107:                                    ; preds = %102
  %108 = call i32 (i8*, i32, ...) @open(i8* %103, i32 0) #10, !dbg !887
  store i32 %108, i32* @input_desc, align 4, !dbg !889, !tbaa !849
  %109 = icmp slt i32 %108, 0, !dbg !890
  br i1 %109, label %110, label %115, !dbg !892

; <label>:110:                                    ; preds = %107
  %111 = tail call i32* @__errno_location() #16, !dbg !893
  %112 = load i32, i32* %111, align 4, !dbg !893, !tbaa !849
  %113 = load i8*, i8** @infile, align 8, !dbg !895, !tbaa !732
  %114 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %113) #10, !dbg !895
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %114) #10, !dbg !896
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !787
  br label %468, !dbg !897

; <label>:115:                                    ; preds = %106, %107
  %116 = phi i32 [ 0, %106 ], [ %108, %107 ], !dbg !898
  %117 = phi i8 [ 1, %106 ], [ %93, %107 ], !dbg !899
  call void @llvm.dbg.value(metadata i8 %117, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !87, metadata !DIExpression(DW_OP_deref)), !dbg !823
  call void @llvm.dbg.value(metadata i32 %116, metadata !824, metadata !DIExpression()) #10, !dbg !900
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !831, metadata !DIExpression()) #10, !dbg !900
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !835, metadata !DIExpression(DW_OP_deref)), !dbg !840
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !835, metadata !DIExpression(DW_OP_deref)), !dbg !842
  %118 = call i32 @__fxstat(i32 1, i32 %116, %struct.stat* nonnull %4) #10, !dbg !902
  %119 = icmp slt i32 %118, 0, !dbg !903
  br i1 %119, label %120, label %125, !dbg !904

; <label>:120:                                    ; preds = %115
  %121 = tail call i32* @__errno_location() #16, !dbg !905
  %122 = load i32, i32* %121, align 4, !dbg !905, !tbaa !849
  %123 = load i8*, i8** @infile, align 8, !dbg !906, !tbaa !732
  %124 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %123) #10, !dbg !906
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %124) #10, !dbg !907
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !787
  br label %454, !dbg !908

; <label>:125:                                    ; preds = %115
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !87, metadata !DIExpression(DW_OP_deref)), !dbg !823
  %126 = load i64, i64* %50, align 8, !dbg !909, !tbaa !852
  %127 = icmp sgt i64 %126, 0, !dbg !909
  %128 = icmp ult i64 %126, 2305843009213693953, !dbg !909
  %129 = and i1 %127, %128, !dbg !909
  %130 = and i1 %127, %128, !dbg !909
  %131 = xor i1 %130, true, !dbg !909
  %132 = icmp slt i64 %126, 131072, !dbg !909
  %133 = or i1 %132, %131, !dbg !909
  %134 = select i1 %129, i64 %126, i64 512, !dbg !909
  %135 = select i1 %133, i64 131072, i64 %134, !dbg !909
  call void @llvm.dbg.value(metadata i64 %135, metadata !69, metadata !DIExpression()), !dbg !910
  %136 = load i32, i32* @input_desc, align 4, !dbg !911, !tbaa !849
  call void @fdadvise(i32 %136, i64 0, i64 0, i32 2) #10, !dbg !912
  %137 = load i64, i64* %61, align 8, !dbg !913
  %138 = icmp eq i64 %137, %62, !dbg !915
  %139 = and i1 %68, %138, !dbg !916
  %140 = load i64, i64* %63, align 8, !dbg !917
  %141 = icmp eq i64 %140, %64, !dbg !918
  %142 = and i1 %139, %141, !dbg !916
  br i1 %142, label %143, label %152, !dbg !916

; <label>:143:                                    ; preds = %125
  %144 = load i32, i32* @input_desc, align 4, !dbg !919, !tbaa !849
  %145 = call i64 @lseek(i32 %144, i64 0, i32 1) #10, !dbg !920
  %146 = load i64, i64* %71, align 8, !dbg !921, !tbaa !922
  %147 = icmp slt i64 %145, %146, !dbg !923
  br i1 %147, label %148, label %152, !dbg !924

; <label>:148:                                    ; preds = %143
  %149 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !925
  %150 = load i8*, i8** @infile, align 8, !dbg !927, !tbaa !732
  %151 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %150) #10, !dbg !927
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %149, i8* %151) #10, !dbg !928
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !787
  br label %454, !dbg !929

; <label>:152:                                    ; preds = %143, %125
  br i1 %76, label %153, label %179, !dbg !930

; <label>:153:                                    ; preds = %152
  %154 = icmp ugt i64 %135, %60, !dbg !932
  %155 = select i1 %154, i64 %135, i64 %60, !dbg !932
  call void @llvm.dbg.value(metadata i64 %155, metadata !69, metadata !DIExpression()), !dbg !910
  %156 = add i64 %77, %155, !dbg !934
  %157 = call noalias i8* @xmalloc(i64 %156) #10, !dbg !935
  call void @llvm.dbg.value(metadata i8* %157, metadata !71, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %157, metadata !937, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i64 %6, metadata !944, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8* %157, metadata !945, metadata !DIExpression()), !dbg !950
  %158 = getelementptr inbounds i8, i8* %157, i64 %6, !dbg !951
  %159 = getelementptr inbounds i8, i8* %158, i64 -1, !dbg !952
  call void @llvm.dbg.value(metadata i8* %159, metadata !946, metadata !DIExpression()), !dbg !953
  %160 = ptrtoint i8* %159 to i64, !dbg !954
  %161 = urem i64 %160, %6, !dbg !955
  %162 = sub i64 0, %161, !dbg !956
  %163 = getelementptr inbounds i8, i8* %159, i64 %162, !dbg !956
  call void @llvm.dbg.value(metadata i8* %163, metadata !957, metadata !DIExpression()) #10, !dbg !967
  call void @llvm.dbg.value(metadata i64 %155, metadata !962, metadata !DIExpression()) #10, !dbg !969
  br label %164, !dbg !970

; <label>:164:                                    ; preds = %172, %153
  %165 = load i32, i32* @input_desc, align 4, !dbg !971, !tbaa !849
  %166 = call i64 @safe_read(i32 %165, i8* nonnull %163, i64 %155) #10, !dbg !972
  call void @llvm.dbg.value(metadata i64 %166, metadata !963, metadata !DIExpression()) #10, !dbg !973
  switch i64 %166, label %172 [
    i64 -1, label %167
    i64 0, label %450
  ], !dbg !974

; <label>:167:                                    ; preds = %164
  %168 = tail call i32* @__errno_location() #16, !dbg !975
  %169 = load i32, i32* %168, align 4, !dbg !975, !tbaa !849
  %170 = load i8*, i8** @infile, align 8, !dbg !978, !tbaa !732
  %171 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %170) #10, !dbg !978
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %171) #10, !dbg !979
  br label %450, !dbg !980

; <label>:172:                                    ; preds = %164
  call void @llvm.dbg.value(metadata i64 %166, metadata !964, metadata !DIExpression()) #10, !dbg !981
  %173 = call i64 @full_write(i32 1, i8* nonnull %163, i64 %166) #10, !dbg !982
  %174 = icmp eq i64 %173, %166, !dbg !984
  br i1 %174, label %164, label %175, !dbg !985, !llvm.loop !986

; <label>:175:                                    ; preds = %172
  %176 = tail call i32* @__errno_location() #16, !dbg !989
  %177 = load i32, i32* %176, align 4, !dbg !989, !tbaa !849
  %178 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !989
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %177, i8* %178) #10, !dbg !989
  unreachable, !dbg !989

; <label>:179:                                    ; preds = %152
  %180 = add i64 %135, %6, !dbg !990
  %181 = call noalias i8* @xmalloc(i64 %180) #10, !dbg !992
  call void @llvm.dbg.value(metadata i8* %181, metadata !71, metadata !DIExpression()), !dbg !936
  %182 = shl i64 %135, 2, !dbg !993
  %183 = add i64 %79, %182, !dbg !994
  %184 = call noalias i8* @xmalloc(i64 %183) #10, !dbg !995
  call void @llvm.dbg.value(metadata i8* %184, metadata !72, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8* %181, metadata !937, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %6, metadata !944, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8* %181, metadata !945, metadata !DIExpression()), !dbg !1000
  %185 = getelementptr inbounds i8, i8* %181, i64 %6, !dbg !1001
  %186 = getelementptr inbounds i8, i8* %185, i64 -1, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %186, metadata !946, metadata !DIExpression()), !dbg !1003
  %187 = ptrtoint i8* %186 to i64, !dbg !1004
  %188 = urem i64 %187, %6, !dbg !1005
  %189 = sub i64 0, %188, !dbg !1006
  %190 = getelementptr inbounds i8, i8* %186, i64 %189, !dbg !1006
  call void @llvm.dbg.value(metadata i8* %184, metadata !937, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 %6, metadata !944, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i8* %184, metadata !945, metadata !DIExpression()), !dbg !1010
  %191 = getelementptr inbounds i8, i8* %184, i64 %6, !dbg !1011
  %192 = getelementptr inbounds i8, i8* %191, i64 -1, !dbg !1012
  call void @llvm.dbg.value(metadata i8* %192, metadata !946, metadata !DIExpression()), !dbg !1013
  %193 = ptrtoint i8* %192 to i64, !dbg !1014
  %194 = urem i64 %193, %6, !dbg !1015
  %195 = sub i64 0, %194, !dbg !1016
  %196 = getelementptr inbounds i8, i8* %192, i64 %195, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %190, metadata !1017, metadata !DIExpression()) #10, !dbg !1049
  call void @llvm.dbg.value(metadata i64 %135, metadata !1022, metadata !DIExpression()) #10, !dbg !1051
  call void @llvm.dbg.value(metadata i8* %196, metadata !1023, metadata !DIExpression()) #10, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %60, metadata !1024, metadata !DIExpression()) #10, !dbg !1053
  call void @llvm.dbg.value(metadata i1 %80, metadata !1025, metadata !DIExpression()) #10, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %81, metadata !1026, metadata !DIExpression()) #10, !dbg !1055
  call void @llvm.dbg.value(metadata i1 %69, metadata !1027, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i1 %82, metadata !1028, metadata !DIExpression()) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i1 %83, metadata !1029, metadata !DIExpression()) #10, !dbg !1058
  call void @llvm.dbg.value(metadata i1 %84, metadata !1030, metadata !DIExpression()) #10, !dbg !1059
  %197 = load i32, i32* @newlines2, align 4, !dbg !1060, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %197, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 1, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %190, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %198, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %196, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %199 = ptrtoint i8* %196 to i64, !dbg !1067
  %200 = getelementptr inbounds i8, i8* %196, i64 %60
  br label %201, !dbg !1068

; <label>:201:                                    ; preds = %341, %179
  %202 = phi i64 [ %199, %179 ], [ %342, %341 ], !dbg !1067
  %203 = phi i8* [ %198, %179 ], [ %343, %341 ], !dbg !1069
  %204 = phi i8* [ %190, %179 ], [ %335, %341 ], !dbg !1070
  %205 = phi i32 [ %197, %179 ], [ %344, %341 ], !dbg !1061
  %206 = phi i8 [ 1, %179 ], [ %337, %341 ], !dbg !1071
  call void @llvm.dbg.value(metadata i8 %206, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %204, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %203, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  %207 = inttoptr i64 %202 to i8*, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %207, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %208 = icmp ugt i8* %200, %207, !dbg !1076
  br i1 %208, label %225, label %209, !dbg !1077

; <label>:209:                                    ; preds = %201, %217
  %210 = phi i8* [ %218, %217 ], [ %196, %201 ], !dbg !1078
  call void @llvm.dbg.value(metadata i8* %210, metadata !1039, metadata !DIExpression()) #10, !dbg !1080
  %211 = call i64 @full_write(i32 1, i8* %210, i64 %60) #10, !dbg !1081
  %212 = icmp eq i64 %211, %60, !dbg !1083
  br i1 %212, label %217, label %213, !dbg !1084

; <label>:213:                                    ; preds = %209
  %214 = tail call i32* @__errno_location() #16, !dbg !1085
  %215 = load i32, i32* %214, align 4, !dbg !1085, !tbaa !849
  %216 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1085
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %215, i8* %216) #10, !dbg !1085
  unreachable, !dbg !1085

; <label>:217:                                    ; preds = %209
  %218 = getelementptr inbounds i8, i8* %210, i64 %60, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %218, metadata !1039, metadata !DIExpression()) #10, !dbg !1080
  call void @llvm.dbg.value(metadata i8** undef, metadata !1035, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1066
  %219 = ptrtoint i8* %218 to i64, !dbg !1087
  %220 = sub i64 %202, %219, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %220, metadata !1044, metadata !DIExpression()) #10, !dbg !1088
  %221 = icmp ult i64 %220, %60, !dbg !1089
  br i1 %221, label %222, label %209, !dbg !1090, !llvm.loop !1091

; <label>:222:                                    ; preds = %217
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %196, i8* align 1 %218, i64 %220, i1 false) #10, !dbg !1094
  %223 = getelementptr inbounds i8, i8* %196, i64 %220, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %223, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %224 = ptrtoint i8* %223 to i64, !dbg !1096
  br label %225, !dbg !1097

; <label>:225:                                    ; preds = %222, %201
  %226 = phi i8* [ %223, %222 ], [ %207, %201 ]
  %227 = phi i64 [ %224, %222 ], [ %202, %201 ], !dbg !1098
  %228 = icmp ugt i8* %203, %204, !dbg !1099
  br i1 %228, label %229, label %288, !dbg !1100

; <label>:229:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 0, metadata !1045, metadata !DIExpression()) #10, !dbg !1101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #10, !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, metadata !1048, metadata !DIExpression()) #10, !dbg !1103
  store i32 0, i32* %3, align 4, !dbg !1103, !tbaa !849
  %230 = and i8 %206, 1, !dbg !1104
  %231 = icmp eq i8 %230, 0, !dbg !1104
  br i1 %231, label %247, label %232, !dbg !1105

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* @input_desc, align 4, !dbg !1106, !tbaa !849
  call void @llvm.dbg.value(metadata i32* %3, metadata !1048, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1103
  %234 = call i32 (i32, i64, ...) @ioctl(i32 %233, i64 21531, i32* nonnull %3) #10, !dbg !1107
  %235 = icmp slt i32 %234, 0, !dbg !1108
  br i1 %235, label %236, label %243, !dbg !1109

; <label>:236:                                    ; preds = %232
  %237 = tail call i32* @__errno_location() #16, !dbg !1110
  %238 = load i32, i32* %237, align 4, !dbg !1110, !tbaa !849
  switch i32 %238, label %239 [
    i32 95, label %243
    i32 25, label %243
    i32 22, label %243
    i32 19, label %243
    i32 38, label %243
  ], !dbg !1111

; <label>:239:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  %240 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !1112
  %241 = load i8*, i8** @infile, align 8, !dbg !1114, !tbaa !732
  %242 = call i8* @quotearg_style(i32 4, i8* %241) #10, !dbg !1114
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %238, i8* %240, i8* %242) #10, !dbg !1115
  br label %448, !dbg !1116

; <label>:243:                                    ; preds = %236, %236, %236, %236, %236, %232
  %244 = phi i8 [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ %206, %232 ]
  %245 = load i32, i32* %3, align 4, !dbg !1117, !tbaa !849
  call void @llvm.dbg.value(metadata i8 %244, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %245, metadata !1048, metadata !DIExpression()) #10, !dbg !1103
  %246 = icmp eq i32 %245, 0, !dbg !1119
  br i1 %246, label %247, label %258, !dbg !1120

; <label>:247:                                    ; preds = %243, %229
  %248 = phi i8 [ %244, %243 ], [ %206, %229 ]
  call void @llvm.dbg.value(metadata i8** undef, metadata !1035, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %196, metadata !1121, metadata !DIExpression()) #10, !dbg !1128
  call void @llvm.dbg.value(metadata i8** undef, metadata !1126, metadata !DIExpression()) #10, !dbg !1131
  %249 = sub i64 %227, %199, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %249, metadata !1127, metadata !DIExpression()) #10, !dbg !1133
  %250 = icmp eq i64 %249, 0, !dbg !1134
  br i1 %250, label %258, label %251, !dbg !1136

; <label>:251:                                    ; preds = %247
  %252 = call i64 @full_write(i32 1, i8* nonnull %196, i64 %249) #10, !dbg !1137
  %253 = icmp eq i64 %252, %249, !dbg !1140
  br i1 %253, label %258, label %254, !dbg !1141

; <label>:254:                                    ; preds = %251
  %255 = tail call i32* @__errno_location() #16, !dbg !1142
  %256 = load i32, i32* %255, align 4, !dbg !1142, !tbaa !849
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1142
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %256, i8* %257) #10, !dbg !1142
  unreachable, !dbg !1142

; <label>:258:                                    ; preds = %251, %247, %243
  %259 = phi i8 [ %244, %243 ], [ %248, %247 ], [ %248, %251 ]
  %260 = phi i64 [ %227, %243 ], [ %227, %247 ], [ %199, %251 ], !dbg !1067
  %261 = load i32, i32* @input_desc, align 4, !dbg !1143, !tbaa !849
  %262 = call i64 @safe_read(i32 %261, i8* nonnull %190, i64 %135) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %262, metadata !1036, metadata !DIExpression()) #10, !dbg !1145
  switch i64 %262, label %286 [
    i64 -1, label %263
    i64 0, label %276
  ], !dbg !1146

; <label>:263:                                    ; preds = %258
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  %264 = tail call i32* @__errno_location() #16, !dbg !1147
  %265 = load i32, i32* %264, align 4, !dbg !1147, !tbaa !849
  %266 = load i8*, i8** @infile, align 8, !dbg !1150, !tbaa !732
  %267 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %266) #10, !dbg !1150
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %267) #10, !dbg !1151
  call void @llvm.dbg.value(metadata i8** undef, metadata !1035, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %196, metadata !1121, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i8** undef, metadata !1126, metadata !DIExpression()) #10, !dbg !1154
  %268 = sub i64 %260, %199, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %268, metadata !1127, metadata !DIExpression()) #10, !dbg !1156
  %269 = icmp eq i64 %268, 0, !dbg !1157
  br i1 %269, label %448, label %270, !dbg !1158

; <label>:270:                                    ; preds = %263
  %271 = call i64 @full_write(i32 1, i8* nonnull %196, i64 %268) #10, !dbg !1159
  %272 = icmp eq i64 %271, %268, !dbg !1160
  br i1 %272, label %448, label %273, !dbg !1161

; <label>:273:                                    ; preds = %270
  %274 = load i32, i32* %264, align 4, !dbg !1162, !tbaa !849
  %275 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1162
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %274, i8* %275) #10, !dbg !1162
  unreachable, !dbg !1162

; <label>:276:                                    ; preds = %258
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %205, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8** undef, metadata !1035, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %196, metadata !1121, metadata !DIExpression()) #10, !dbg !1163
  call void @llvm.dbg.value(metadata i8** undef, metadata !1126, metadata !DIExpression()) #10, !dbg !1167
  %277 = sub i64 %260, %199, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %277, metadata !1127, metadata !DIExpression()) #10, !dbg !1169
  %278 = icmp eq i64 %277, 0, !dbg !1170
  br i1 %278, label %448, label %279, !dbg !1171

; <label>:279:                                    ; preds = %276
  %280 = call i64 @full_write(i32 1, i8* nonnull %196, i64 %277) #10, !dbg !1172
  %281 = icmp eq i64 %280, %277, !dbg !1173
  br i1 %281, label %448, label %282, !dbg !1174

; <label>:282:                                    ; preds = %279
  %283 = tail call i32* @__errno_location() #16, !dbg !1175
  %284 = load i32, i32* %283, align 4, !dbg !1175, !tbaa !849
  %285 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1175
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %284, i8* %285) #10, !dbg !1175
  unreachable, !dbg !1175

; <label>:286:                                    ; preds = %258
  call void @llvm.dbg.value(metadata i8* %190, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  %287 = getelementptr inbounds i8, i8* %190, i64 %262, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %287, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  store i8 10, i8* %287, align 1, !dbg !1177, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %244, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %287, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %190, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #10, !dbg !1179
  br label %332

; <label>:288:                                    ; preds = %225
  %289 = add nsw i32 %205, 1, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %289, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  %290 = icmp sgt i32 %205, -1, !dbg !1183
  br i1 %290, label %291, label %323, !dbg !1184

; <label>:291:                                    ; preds = %288
  %292 = icmp eq i32 %205, 0, !dbg !1185
  %293 = or i1 %84, %292, !dbg !1188
  %294 = select i1 %292, i32 1, i32 2, !dbg !1188
  br i1 %293, label %295, label %332, !dbg !1188

; <label>:295:                                    ; preds = %291
  call void @llvm.dbg.value(metadata i32 %294, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  br i1 %86, label %323, label %296, !dbg !1189

; <label>:296:                                    ; preds = %295
  %297 = load i8*, i8** @line_num_start, align 8
  br label %298, !dbg !1191

; <label>:298:                                    ; preds = %303, %296
  %299 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %296 ], [ %304, %303 ], !dbg !1197
  call void @llvm.dbg.value(metadata i8* %299, metadata !1194, metadata !DIExpression()) #10, !dbg !1199
  %300 = load i8, i8* %299, align 1, !dbg !1200, !tbaa !1178
  %301 = add i8 %300, 1, !dbg !1200
  store i8 %301, i8* %299, align 1, !dbg !1200, !tbaa !1178
  %302 = icmp slt i8 %300, 57, !dbg !1202
  br i1 %302, label %317, label %303, !dbg !1203

; <label>:303:                                    ; preds = %298
  %304 = getelementptr inbounds i8, i8* %299, i64 -1, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %304, metadata !1194, metadata !DIExpression()) #10, !dbg !1199
  store i8 48, i8* %299, align 1, !dbg !1205, !tbaa !1178
  %305 = icmp ult i8* %304, %297, !dbg !1206
  br i1 %305, label %306, label %298, !dbg !1207, !llvm.loop !1208

; <label>:306:                                    ; preds = %303
  %307 = icmp ugt i8* %297, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1211
  br i1 %307, label %308, label %310, !dbg !1213

; <label>:308:                                    ; preds = %306
  %309 = getelementptr inbounds i8, i8* %297, i64 -1, !dbg !1214
  store i8* %309, i8** @line_num_start, align 8, !dbg !1214, !tbaa !732
  store i8 49, i8* %309, align 1, !dbg !1215, !tbaa !1178
  br label %311, !dbg !1216

; <label>:310:                                    ; preds = %306
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1217, !tbaa !1178
  br label %311

; <label>:311:                                    ; preds = %310, %308
  %312 = phi i8* [ %297, %310 ], [ %309, %308 ], !dbg !1218
  %313 = load i8*, i8** @line_num_print, align 8, !dbg !1220, !tbaa !732
  %314 = icmp ult i8* %312, %313, !dbg !1221
  br i1 %314, label %315, label %319, !dbg !1222

; <label>:315:                                    ; preds = %311
  %316 = getelementptr inbounds i8, i8* %313, i64 -1, !dbg !1223
  store i8* %316, i8** @line_num_print, align 8, !dbg !1223, !tbaa !732
  br label %319, !dbg !1224

; <label>:317:                                    ; preds = %298
  %318 = load i8*, i8** @line_num_print, align 8, !dbg !1225, !tbaa !732
  br label %319, !dbg !1226

; <label>:319:                                    ; preds = %317, %315, %311
  %320 = phi i8* [ %318, %317 ], [ %313, %311 ], [ %316, %315 ], !dbg !1225
  call void @llvm.dbg.value(metadata i8* %226, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %226, metadata !1227, metadata !DIExpression()) #10, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %320, metadata !1235, metadata !DIExpression()) #10, !dbg !1236
  %321 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %226, i1 false, i1 true) #10, !dbg !1238
  %322 = call i8* @__stpcpy_chk(i8* nonnull %226, i8* nonnull %320, i64 %321) #10, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %322, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  br label %323, !dbg !1240

; <label>:323:                                    ; preds = %319, %295, %288
  %324 = phi i8* [ %226, %295 ], [ %322, %319 ], [ %226, %288 ]
  %325 = phi i32 [ %294, %295 ], [ %294, %319 ], [ %289, %288 ], !dbg !1241
  call void @llvm.dbg.value(metadata i32 %325, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  br i1 %83, label %328, label %326, !dbg !1242

; <label>:326:                                    ; preds = %323
  call void @llvm.dbg.value(metadata i8* %324, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %327 = getelementptr inbounds i8, i8* %324, i64 1, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %327, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 36, i8* %324, align 1, !dbg !1245, !tbaa !1178
  br label %328, !dbg !1246

; <label>:328:                                    ; preds = %323, %326
  %329 = phi i8* [ %327, %326 ], [ %324, %323 ]
  call void @llvm.dbg.value(metadata i8* %329, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %330 = getelementptr inbounds i8, i8* %329, i64 1, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %330, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %331 = ptrtoint i8* %330 to i64, !dbg !1247
  store i8 10, i8* %329, align 1, !dbg !1248, !tbaa !1178
  br label %332

; <label>:332:                                    ; preds = %328, %291, %286
  %333 = phi i64 [ %260, %286 ], [ %331, %328 ], [ %227, %291 ], !dbg !1249
  %334 = phi i8* [ %190, %286 ], [ %203, %328 ], [ %203, %291 ]
  %335 = phi i8* [ %287, %286 ], [ %204, %328 ], [ %204, %291 ], !dbg !1070
  %336 = phi i32 [ %205, %286 ], [ %325, %328 ], [ 2, %291 ], !dbg !1250
  %337 = phi i8 [ %259, %286 ], [ %206, %328 ], [ %206, %291 ], !dbg !1249
  %338 = getelementptr inbounds i8, i8* %334, i64 1, !dbg !1252
  %339 = load i8, i8* %334, align 1, !dbg !1252, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %339, metadata !1031, metadata !DIExpression()) #10, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %338, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  %340 = icmp eq i8 %339, 10, !dbg !1256
  br i1 %340, label %341, label %345, !dbg !1257

; <label>:341:                                    ; preds = %416, %438, %332
  %342 = phi i64 [ %333, %332 ], [ %429, %438 ], [ %380, %416 ]
  %343 = phi i8* [ %338, %332 ], [ %430, %438 ], [ %381, %416 ]
  %344 = phi i32 [ %336, %332 ], [ -1, %438 ], [ -1, %416 ]
  br label %201, !dbg !1062, !llvm.loop !1258

; <label>:345:                                    ; preds = %332
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %335, metadata !1034, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %336, metadata !1037, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %337, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  %346 = icmp slt i32 %336, 0, !dbg !1261
  %347 = or i1 %69, %346, !dbg !1263
  br i1 %347, label %377, label %348, !dbg !1263

; <label>:348:                                    ; preds = %345
  %349 = load i8*, i8** @line_num_start, align 8
  br label %350, !dbg !1264

; <label>:350:                                    ; preds = %355, %348
  %351 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %348 ], [ %356, %355 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8* %351, metadata !1194, metadata !DIExpression()) #10, !dbg !1268
  %352 = load i8, i8* %351, align 1, !dbg !1269, !tbaa !1178
  %353 = add i8 %352, 1, !dbg !1269
  store i8 %353, i8* %351, align 1, !dbg !1269, !tbaa !1178
  %354 = icmp slt i8 %352, 57, !dbg !1270
  br i1 %354, label %369, label %355, !dbg !1271

; <label>:355:                                    ; preds = %350
  %356 = getelementptr inbounds i8, i8* %351, i64 -1, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %356, metadata !1194, metadata !DIExpression()) #10, !dbg !1268
  store i8 48, i8* %351, align 1, !dbg !1273, !tbaa !1178
  %357 = icmp ult i8* %356, %349, !dbg !1274
  br i1 %357, label %358, label %350, !dbg !1275, !llvm.loop !1208

; <label>:358:                                    ; preds = %355
  %359 = icmp ugt i8* %349, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1276
  br i1 %359, label %360, label %362, !dbg !1277

; <label>:360:                                    ; preds = %358
  %361 = getelementptr inbounds i8, i8* %349, i64 -1, !dbg !1278
  store i8* %361, i8** @line_num_start, align 8, !dbg !1278, !tbaa !732
  store i8 49, i8* %361, align 1, !dbg !1279, !tbaa !1178
  br label %363, !dbg !1280

; <label>:362:                                    ; preds = %358
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1281, !tbaa !1178
  br label %363

; <label>:363:                                    ; preds = %362, %360
  %364 = phi i8* [ %349, %362 ], [ %361, %360 ], !dbg !1282
  %365 = load i8*, i8** @line_num_print, align 8, !dbg !1283, !tbaa !732
  %366 = icmp ult i8* %364, %365, !dbg !1284
  br i1 %366, label %367, label %371, !dbg !1285

; <label>:367:                                    ; preds = %363
  %368 = getelementptr inbounds i8, i8* %365, i64 -1, !dbg !1286
  store i8* %368, i8** @line_num_print, align 8, !dbg !1286, !tbaa !732
  br label %371, !dbg !1287

; <label>:369:                                    ; preds = %350
  %370 = load i8*, i8** @line_num_print, align 8, !dbg !1288, !tbaa !732
  br label %371, !dbg !1289

; <label>:371:                                    ; preds = %369, %367, %363
  %372 = phi i8* [ %370, %369 ], [ %365, %363 ], [ %368, %367 ], !dbg !1288
  %373 = inttoptr i64 %333 to i8*, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %373, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %373, metadata !1227, metadata !DIExpression()) #10, !dbg !1290
  call void @llvm.dbg.value(metadata i8* %372, metadata !1235, metadata !DIExpression()) #10, !dbg !1290
  %374 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %373, i1 false, i1 true) #10, !dbg !1292
  %375 = call i8* @__stpcpy_chk(i8* nonnull %373, i8* nonnull %372, i64 %374) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %375, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %376 = ptrtoint i8* %375 to i64, !dbg !1294
  br label %377, !dbg !1295

; <label>:377:                                    ; preds = %371, %345
  %378 = phi i64 [ %333, %345 ], [ %376, %371 ], !dbg !1296
  br i1 %80, label %428, label %379, !dbg !1297

; <label>:379:                                    ; preds = %377, %423
  %380 = phi i64 [ %425, %423 ], [ %378, %377 ], !dbg !1298
  %381 = phi i8* [ %426, %423 ], [ %338, %377 ], !dbg !1305
  %382 = phi i8 [ %427, %423 ], [ %339, %377 ], !dbg !1305
  call void @llvm.dbg.value(metadata i8 %382, metadata !1031, metadata !DIExpression()) #10, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %381, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  %383 = icmp ugt i8 %382, 31, !dbg !1306
  br i1 %383, label %384, label %410, !dbg !1307

; <label>:384:                                    ; preds = %379
  %385 = icmp ult i8 %382, 127, !dbg !1308
  br i1 %385, label %386, label %389, !dbg !1309

; <label>:386:                                    ; preds = %384
  %387 = inttoptr i64 %380 to i8*, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %387, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %388 = getelementptr inbounds i8, i8* %387, i64 1, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %388, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 %382, i8* %387, align 1, !dbg !1311, !tbaa !1178
  br label %423, !dbg !1312

; <label>:389:                                    ; preds = %384
  %390 = icmp eq i8 %382, 127, !dbg !1313
  %391 = inttoptr i64 %380 to i8*, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %391, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %392 = getelementptr inbounds i8, i8* %391, i64 1, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %392, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  br i1 %390, label %393, label %395, !dbg !1317

; <label>:393:                                    ; preds = %389
  store i8 94, i8* %391, align 1, !dbg !1318, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %392, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %394 = getelementptr inbounds i8, i8* %391, i64 2, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %394, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 63, i8* %392, align 1, !dbg !1321, !tbaa !1178
  br label %423, !dbg !1322

; <label>:395:                                    ; preds = %389
  store i8 77, i8* %391, align 1, !dbg !1323, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %392, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %396 = getelementptr inbounds i8, i8* %391, i64 2, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %396, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 45, i8* %392, align 1, !dbg !1325, !tbaa !1178
  %397 = icmp ugt i8 %382, -97, !dbg !1326
  br i1 %397, label %398, label %406, !dbg !1328

; <label>:398:                                    ; preds = %395
  %399 = icmp eq i8 %382, -1, !dbg !1329
  br i1 %399, label %403, label %400, !dbg !1332

; <label>:400:                                    ; preds = %398
  %401 = xor i8 %382, -128, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %396, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %402 = getelementptr inbounds i8, i8* %391, i64 3, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %402, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 %401, i8* %396, align 1, !dbg !1335, !tbaa !1178
  br label %423, !dbg !1336

; <label>:403:                                    ; preds = %398
  call void @llvm.dbg.value(metadata i8* %396, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %404 = getelementptr inbounds i8, i8* %391, i64 3, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %404, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 94, i8* %396, align 1, !dbg !1339, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %404, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %405 = getelementptr inbounds i8, i8* %391, i64 4, !dbg !1340
  call void @llvm.dbg.value(metadata i8* %405, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 63, i8* %404, align 1, !dbg !1341, !tbaa !1178
  br label %423

; <label>:406:                                    ; preds = %395
  call void @llvm.dbg.value(metadata i8* %396, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %407 = getelementptr inbounds i8, i8* %391, i64 3, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %407, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 94, i8* %396, align 1, !dbg !1344, !tbaa !1178
  %408 = add i8 %382, -64, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %407, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %409 = getelementptr inbounds i8, i8* %391, i64 4, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %409, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 %408, i8* %407, align 1, !dbg !1347, !tbaa !1178
  br label %423

; <label>:410:                                    ; preds = %379
  %411 = icmp ne i8 %382, 9, !dbg !1348
  %412 = or i1 %81, %411, !dbg !1350
  br i1 %412, label %416, label %413, !dbg !1350

; <label>:413:                                    ; preds = %410
  %414 = inttoptr i64 %380 to i8*, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %414, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %415 = getelementptr inbounds i8, i8* %414, i64 1, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %415, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 9, i8* %414, align 1, !dbg !1352, !tbaa !1178
  br label %423, !dbg !1353

; <label>:416:                                    ; preds = %410
  %417 = icmp eq i8 %382, 10, !dbg !1354
  br i1 %417, label %341, label %418, !dbg !1356, !llvm.loop !1357

; <label>:418:                                    ; preds = %416
  %419 = inttoptr i64 %380 to i8*, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %419, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %420 = getelementptr inbounds i8, i8* %419, i64 1, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %420, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 94, i8* %419, align 1, !dbg !1362, !tbaa !1178
  %421 = add i8 %382, 64, !dbg !1363
  call void @llvm.dbg.value(metadata i8* %420, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %422 = getelementptr inbounds i8, i8* %419, i64 2, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %422, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 %421, i8* %420, align 1, !dbg !1365, !tbaa !1178
  br label %423

; <label>:423:                                    ; preds = %418, %413, %406, %403, %400, %393, %386
  %424 = phi i8* [ %388, %386 ], [ %394, %393 ], [ %405, %403 ], [ %402, %400 ], [ %409, %406 ], [ %422, %418 ], [ %415, %413 ]
  %425 = ptrtoint i8* %424 to i64, !dbg !1366
  %426 = getelementptr inbounds i8, i8* %381, i64 1, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %426, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  %427 = load i8, i8* %381, align 1, !dbg !1368, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %427, metadata !1031, metadata !DIExpression()) #10, !dbg !1255
  br label %379, !dbg !1369, !llvm.loop !1370

; <label>:428:                                    ; preds = %377, %443
  %429 = phi i64 [ %445, %443 ], [ %378, %377 ], !dbg !1373
  %430 = phi i8* [ %446, %443 ], [ %338, %377 ], !dbg !1378
  %431 = phi i8 [ %447, %443 ], [ %339, %377 ], !dbg !1378
  call void @llvm.dbg.value(metadata i8 %431, metadata !1031, metadata !DIExpression()) #10, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %430, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  %432 = icmp ne i8 %431, 9, !dbg !1379
  %433 = or i1 %432, %87, !dbg !1380
  br i1 %433, label %438, label %434, !dbg !1380

; <label>:434:                                    ; preds = %428
  %435 = inttoptr i64 %429 to i8*, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %435, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %436 = getelementptr inbounds i8, i8* %435, i64 1, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %436, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 94, i8* %435, align 1, !dbg !1383, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %436, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %437 = getelementptr inbounds i8, i8* %435, i64 2, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %437, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 73, i8* %436, align 1, !dbg !1385, !tbaa !1178
  br label %443, !dbg !1386

; <label>:438:                                    ; preds = %428
  %439 = icmp eq i8 %431, 10, !dbg !1387
  br i1 %439, label %341, label %440, !dbg !1388, !llvm.loop !1357

; <label>:440:                                    ; preds = %438
  %441 = inttoptr i64 %429 to i8*, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %441, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  %442 = getelementptr inbounds i8, i8* %441, i64 1, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %442, metadata !1035, metadata !DIExpression()) #10, !dbg !1066
  store i8 %431, i8* %441, align 1, !dbg !1390, !tbaa !1178
  br label %443

; <label>:443:                                    ; preds = %440, %434
  %444 = phi i8* [ %442, %440 ], [ %437, %434 ]
  %445 = ptrtoint i8* %444 to i64, !dbg !1391
  %446 = getelementptr inbounds i8, i8* %430, i64 1, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %446, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  %447 = load i8, i8* %430, align 1, !dbg !1393, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %447, metadata !1031, metadata !DIExpression()) #10, !dbg !1255
  br label %428, !dbg !1394, !llvm.loop !1395

; <label>:448:                                    ; preds = %276, %279, %263, %270, %239
  %449 = phi i8 [ 0, %239 ], [ 0, %270 ], [ 0, %263 ], [ 1, %279 ], [ 1, %276 ]
  store i32 %205, i32* @newlines2, align 4, !dbg !1398, !tbaa !849
  call void @llvm.dbg.value(metadata i8 %244, metadata !1038, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %190, metadata !1033, metadata !DIExpression()) #10, !dbg !1065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #10, !dbg !1179
  call void @free(i8* %184) #10, !dbg !1399
  br label %450

; <label>:450:                                    ; preds = %164, %167, %448
  %451 = phi i8 [ %449, %448 ], [ 0, %167 ], [ 1, %164 ]
  %452 = phi i8* [ %181, %448 ], [ %157, %167 ], [ %157, %164 ], !dbg !1400
  %453 = and i8 %92, %451, !dbg !1400
  call void @llvm.dbg.value(metadata i8* %452, metadata !71, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8 %453, metadata !73, metadata !DIExpression()), !dbg !787
  call void @free(i8* %452) #10, !dbg !1401
  br label %454, !dbg !1401

; <label>:454:                                    ; preds = %450, %148, %120
  %455 = phi i8 [ 0, %120 ], [ 0, %148 ], [ %453, %450 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %455, metadata !73, metadata !DIExpression()), !dbg !787
  %456 = load i8*, i8** @infile, align 8, !dbg !1402, !tbaa !732
  %457 = call i32 @strcmp(i8* %456, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !1402
  %458 = icmp eq i32 %457, 0, !dbg !1402
  br i1 %458, label %468, label %459, !dbg !1404

; <label>:459:                                    ; preds = %454
  %460 = load i32, i32* @input_desc, align 4, !dbg !1405, !tbaa !849
  %461 = call i32 @close(i32 %460) #10, !dbg !1406
  %462 = icmp slt i32 %461, 0, !dbg !1407
  br i1 %462, label %463, label %468, !dbg !1408

; <label>:463:                                    ; preds = %459
  %464 = tail call i32* @__errno_location() #16, !dbg !1409
  %465 = load i32, i32* %464, align 4, !dbg !1409, !tbaa !849
  %466 = load i8*, i8** @infile, align 8, !dbg !1411, !tbaa !732
  %467 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %466) #10, !dbg !1411
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %465, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %467) #10, !dbg !1412
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !787
  br label %468, !dbg !1413

; <label>:468:                                    ; preds = %454, %459, %463, %110
  %469 = phi i8 [ %455, %454 ], [ 0, %463 ], [ %455, %459 ], [ 0, %110 ], !dbg !1414
  %470 = phi i8 [ %117, %454 ], [ %117, %463 ], [ %117, %459 ], [ %93, %110 ], !dbg !899
  call void @llvm.dbg.value(metadata i8 %470, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8 %469, metadata !73, metadata !DIExpression()), !dbg !787
  %471 = add nsw i64 %91, 1, !dbg !1415
  call void @llvm.dbg.value(metadata i32 undef, metadata !76, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !869
  %472 = icmp slt i64 %471, %89, !dbg !1416
  br i1 %472, label %90, label %473, !dbg !1417, !llvm.loop !1418

; <label>:473:                                    ; preds = %468
  call void @llvm.dbg.value(metadata i8 %469, metadata !73, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 %470, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8 %469, metadata !73, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 %470, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8 %469, metadata !73, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 %470, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8 %469, metadata !73, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 %470, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8 %469, metadata !73, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 %470, metadata !86, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8 %469, metadata !73, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 %470, metadata !86, metadata !DIExpression()), !dbg !788
  %474 = and i8 %470, 1, !dbg !1420
  %475 = icmp eq i8 %474, 0, !dbg !1420
  br i1 %475, label %483, label %476, !dbg !1422

; <label>:476:                                    ; preds = %473
  %477 = call i32 @close(i32 0) #10, !dbg !1423
  %478 = icmp slt i32 %477, 0, !dbg !1424
  br i1 %478, label %479, label %483, !dbg !1425

; <label>:479:                                    ; preds = %476
  %480 = tail call i32* @__errno_location() #16, !dbg !1426
  %481 = load i32, i32* %480, align 4, !dbg !1426, !tbaa !849
  %482 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !1426
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %481, i8* %482) #10, !dbg !1426
  unreachable, !dbg !1426

; <label>:483:                                    ; preds = %473, %476
  %484 = and i8 %469, 1, !dbg !1427
  %485 = xor i8 %484, 1, !dbg !1427
  %486 = zext i8 %485 to i32, !dbg !1427
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #10, !dbg !1428
  ret i32 %486, !dbg !1428
}

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1431, metadata !DIExpression()), !dbg !1432
  store i8* %0, i8** @file_name, align 8, !dbg !1433, !tbaa !732
  ret void, !dbg !1434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1435 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1439, metadata !DIExpression()), !dbg !1440
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1441, !tbaa !1442
  ret void, !dbg !1444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1445 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1450, !tbaa !732
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1451
  %3 = icmp eq i32 %2, 0, !dbg !1452
  br i1 %3, label %22, label %4, !dbg !1453

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1454, !tbaa !1442, !range !1455
  %6 = icmp eq i8 %5, 0, !dbg !1454
  br i1 %6, label %11, label %7, !dbg !1456

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #16, !dbg !1457
  %9 = load i32, i32* %8, align 4, !dbg !1457, !tbaa !849
  %10 = icmp eq i32 %9, 32, !dbg !1458
  br i1 %10, label %22, label %11, !dbg !1459

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1460
  call void @llvm.dbg.value(metadata i8* %12, metadata !1447, metadata !DIExpression()), !dbg !1461
  %13 = load i8*, i8** @file_name, align 8, !dbg !1462, !tbaa !732
  %14 = icmp eq i8* %13, null, !dbg !1462
  %15 = tail call i32* @__errno_location() #16, !dbg !1464
  %16 = load i32, i32* %15, align 4, !dbg !1464, !tbaa !849
  br i1 %14, label %19, label %17, !dbg !1465

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1466
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.52, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1467
  br label %20, !dbg !1467

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.53, i64 0, i64 0), i8* %12) #10, !dbg !1468
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1469, !tbaa !849
  tail call void @_exit(i32 %21) #15, !dbg !1470
  unreachable, !dbg !1470

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1471, !tbaa !732
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1473
  %25 = icmp eq i32 %24, 0, !dbg !1474
  br i1 %25, label %28, label %26, !dbg !1475

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1476, !tbaa !849
  tail call void @_exit(i32 %27) #15, !dbg !1477
  unreachable, !dbg !1477

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1478
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1479 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1487, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %1, metadata !1488, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %2, metadata !1489, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i32 %3, metadata !1490, metadata !DIExpression()), !dbg !1496
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %5, metadata !1491, metadata !DIExpression()), !dbg !1497
  ret void, !dbg !1498
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1499 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1552, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %1, metadata !1553, metadata !DIExpression()), !dbg !1555
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1556
  br i1 %3, label %7, label %4, !dbg !1558

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %5, metadata !1487, metadata !DIExpression()) #10, !dbg !1560
  call void @llvm.dbg.value(metadata i64 0, metadata !1488, metadata !DIExpression()) #10, !dbg !1562
  call void @llvm.dbg.value(metadata i64 0, metadata !1489, metadata !DIExpression()) #10, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %1, metadata !1490, metadata !DIExpression()) #10, !dbg !1564
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %6, metadata !1491, metadata !DIExpression()) #10, !dbg !1565
  br label %7, !dbg !1566

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1567
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_write(i32, i8*, i64) local_unnamed_addr #7 !dbg !1568 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1573, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i8* %1, metadata !1574, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %2, metadata !1575, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i64 0, metadata !1576, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i8* %1, metadata !1577, metadata !DIExpression()), !dbg !1584
  %4 = icmp eq i64 %2, 0, !dbg !1585
  br i1 %4, label %17, label %5, !dbg !1586

; <label>:5:                                      ; preds = %3, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %3 ], !dbg !1583
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ], !dbg !1584
  %8 = phi i64 [ %15, %12 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !1575, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8* %7, metadata !1577, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64 %6, metadata !1576, metadata !DIExpression()), !dbg !1583
  %9 = tail call i64 @safe_write(i32 %0, i8* %7, i64 %8) #10, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %9, metadata !1578, metadata !DIExpression()), !dbg !1588
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !1589

; <label>:10:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i64 %6, metadata !1576, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %6, metadata !1576, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %6, metadata !1576, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %6, metadata !1576, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %6, metadata !1576, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %6, metadata !1576, metadata !DIExpression()), !dbg !1583
  %11 = tail call i32* @__errno_location() #16, !dbg !1590
  store i32 28, i32* %11, align 4, !dbg !1593, !tbaa !849
  br label %17, !dbg !1594

; <label>:12:                                     ; preds = %5
  %13 = add i64 %9, %6, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %13, metadata !1576, metadata !DIExpression()), !dbg !1583
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !1596
  call void @llvm.dbg.value(metadata i8* %14, metadata !1577, metadata !DIExpression()), !dbg !1584
  %15 = sub i64 %8, %9, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %15, metadata !1575, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i64 %15, metadata !1575, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8* %14, metadata !1577, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64 %13, metadata !1576, metadata !DIExpression()), !dbg !1583
  %16 = icmp eq i64 %15, 0, !dbg !1585
  br i1 %16, label %17, label %5, !llvm.loop !1598

; <label>:17:                                     ; preds = %12, %5, %10, %3
  %18 = phi i64 [ 0, %3 ], [ %6, %10 ], [ %6, %5 ], [ %13, %12 ], !dbg !1583
  call void @llvm.dbg.value(metadata i64 %18, metadata !1576, metadata !DIExpression()), !dbg !1583
  ret i64 %18, !dbg !1600
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1603, metadata !DIExpression()), !dbg !1606
  %2 = icmp eq i8* %0, null, !dbg !1607
  br i1 %2, label %3, label %6, !dbg !1609

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1610, !tbaa !732
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1612
  tail call void @abort() #15, !dbg !1613
  unreachable, !dbg !1613

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %7, metadata !1604, metadata !DIExpression()), !dbg !1615
  %8 = icmp eq i8* %7, null, !dbg !1616
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1617
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %10, metadata !1605, metadata !DIExpression()), !dbg !1619
  %11 = ptrtoint i8* %10 to i64, !dbg !1620
  %12 = ptrtoint i8* %0 to i64, !dbg !1620
  %13 = sub i64 %11, %12, !dbg !1620
  %14 = icmp sgt i64 %13, 6, !dbg !1622
  br i1 %14, label %15, label %24, !dbg !1623

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1624
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #14, !dbg !1625
  %18 = icmp eq i32 %17, 0, !dbg !1626
  br i1 %18, label %19, label %24, !dbg !1627

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1603, metadata !DIExpression()), !dbg !1606
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #14, !dbg !1628
  %21 = icmp eq i32 %20, 0, !dbg !1631
  br i1 %21, label %22, label %24, !dbg !1632

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %23, metadata !1603, metadata !DIExpression()), !dbg !1606
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1635, !tbaa !732
  br label %24, !dbg !1636

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1603, metadata !DIExpression()), !dbg !1606
  store i8* %25, i8** @program_name, align 8, !dbg !1637, !tbaa !732
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1638, !tbaa !732
  ret void, !dbg !1639
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1640 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1645, metadata !DIExpression()), !dbg !1648
  %2 = tail call i32* @__errno_location() #16, !dbg !1649
  %3 = load i32, i32* %2, align 4, !dbg !1649, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %3, metadata !1646, metadata !DIExpression()), !dbg !1650
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1651
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1651
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1651
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1652
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1652
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1647, metadata !DIExpression()), !dbg !1653
  store i32 %3, i32* %2, align 4, !dbg !1654, !tbaa !849
  ret %struct.quoting_options* %8, !dbg !1655
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1656 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1662, metadata !DIExpression()), !dbg !1663
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1664
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1664
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1665
  %5 = load i32, i32* %4, align 8, !dbg !1665, !tbaa !1666
  ret i32 %5, !dbg !1668
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1669 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1673, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %1, metadata !1674, metadata !DIExpression()), !dbg !1676
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1677
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1677
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1678
  store i32 %1, i32* %5, align 8, !dbg !1679, !tbaa !1666
  ret void, !dbg !1680
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1681 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1685, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8 %1, metadata !1686, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %2, metadata !1687, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %1, metadata !1688, metadata !DIExpression()), !dbg !1696
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1697
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1697
  %6 = lshr i8 %1, 5, !dbg !1698
  %7 = zext i8 %6 to i64, !dbg !1698
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1699
  call void @llvm.dbg.value(metadata i32* %8, metadata !1689, metadata !DIExpression()), !dbg !1700
  %9 = and i8 %1, 31, !dbg !1701
  %10 = zext i8 %9 to i32, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %10, metadata !1691, metadata !DIExpression()), !dbg !1702
  %11 = load i32, i32* %8, align 4, !dbg !1703, !tbaa !849
  %12 = lshr i32 %11, %10, !dbg !1704
  %13 = and i32 %12, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %13, metadata !1692, metadata !DIExpression()), !dbg !1706
  %14 = and i32 %2, 1, !dbg !1707
  %15 = xor i32 %13, %14, !dbg !1708
  %16 = shl i32 %15, %10, !dbg !1709
  %17 = xor i32 %16, %11, !dbg !1710
  store i32 %17, i32* %8, align 4, !dbg !1710, !tbaa !849
  ret i32 %13, !dbg !1711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1712 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1716, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %1, metadata !1717, metadata !DIExpression()), !dbg !1720
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1721
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1716, metadata !DIExpression()), !dbg !1719
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1724
  %6 = load i32, i32* %5, align 4, !dbg !1724, !tbaa !1725
  call void @llvm.dbg.value(metadata i32 %6, metadata !1718, metadata !DIExpression()), !dbg !1726
  store i32 %1, i32* %5, align 4, !dbg !1727, !tbaa !1725
  ret i32 %6, !dbg !1728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1729 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1733, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8* %1, metadata !1734, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8* %2, metadata !1735, metadata !DIExpression()), !dbg !1738
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1739
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1741
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1733, metadata !DIExpression()), !dbg !1736
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1742
  store i32 10, i32* %6, align 8, !dbg !1743, !tbaa !1666
  %7 = icmp ne i8* %1, null, !dbg !1744
  %8 = icmp ne i8* %2, null, !dbg !1746
  %9 = and i1 %7, %8, !dbg !1747
  br i1 %9, label %11, label %10, !dbg !1747

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1748
  unreachable, !dbg !1748

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1749
  store i8* %1, i8** %12, align 8, !dbg !1750, !tbaa !1751
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1752
  store i8* %2, i8** %13, align 8, !dbg !1753, !tbaa !1754
  ret void, !dbg !1755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1756 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1760, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %1, metadata !1761, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8* %2, metadata !1762, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64 %3, metadata !1763, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1764, metadata !DIExpression()), !dbg !1772
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1773
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1765, metadata !DIExpression()), !dbg !1774
  %8 = tail call i32* @__errno_location() #16, !dbg !1775
  %9 = load i32, i32* %8, align 4, !dbg !1775, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %9, metadata !1766, metadata !DIExpression()), !dbg !1776
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1777
  %11 = load i32, i32* %10, align 8, !dbg !1777, !tbaa !1666
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1778
  %13 = load i32, i32* %12, align 4, !dbg !1778, !tbaa !1725
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1779
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1780
  %16 = load i8*, i8** %15, align 8, !dbg !1780, !tbaa !1751
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1781
  %18 = load i8*, i8** %17, align 8, !dbg !1781, !tbaa !1754
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %19, metadata !1767, metadata !DIExpression()), !dbg !1783
  store i32 %9, i32* %8, align 4, !dbg !1784, !tbaa !849
  ret i64 %19, !dbg !1785
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1786 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1792, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %1, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %2, metadata !1794, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i32 %4, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %5, metadata !1797, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32* %6, metadata !1798, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %7, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %8, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* null, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 0, metadata !1805, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1869
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1870
  %14 = icmp eq i64 %13, 1, !dbg !1871
  %15 = lshr i32 %5, 1, !dbg !1872
  %16 = trunc i32 %15 to i8, !dbg !1872
  %17 = and i8 %16, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i8 %17, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1875
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1876

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1866
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1867
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1868
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1869
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1877
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1873
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1874
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1875
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %39, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %38, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %37, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %36, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %35, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %34, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %33, metadata !1805, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %32, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %31, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8* %30, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %29, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %28, metadata !1796, metadata !DIExpression()), !dbg !1860
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
  ], !dbg !1879

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 %36, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 5, metadata !1796, metadata !DIExpression()), !dbg !1860
  br label %93, !dbg !1880

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 5, metadata !1796, metadata !DIExpression()), !dbg !1860
  %43 = and i8 %36, 1, !dbg !1881
  %44 = icmp eq i8 %43, 0, !dbg !1881
  br i1 %44, label %45, label %93, !dbg !1880

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1883
  br i1 %46, label %93, label %47, !dbg !1886

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1883, !tbaa !1178
  br label %93, !dbg !1883

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %28), !dbg !1887
  call void @llvm.dbg.value(metadata i8* %49, metadata !1799, metadata !DIExpression()), !dbg !1863
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %28), !dbg !1891
  call void @llvm.dbg.value(metadata i8* %50, metadata !1800, metadata !DIExpression()), !dbg !1864
  br label %51, !dbg !1892

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %52, metadata !1799, metadata !DIExpression()), !dbg !1863
  %54 = and i8 %36, 1, !dbg !1893
  %55 = icmp eq i8 %54, 0, !dbg !1893
  br i1 %55, label %56, label %71, !dbg !1895

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()), !dbg !1865
  %57 = load i8, i8* %52, align 1, !dbg !1896, !tbaa !1178
  %58 = icmp eq i8 %57, 0, !dbg !1899
  br i1 %58, label %71, label %59, !dbg !1899

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %62, metadata !1802, metadata !DIExpression()), !dbg !1865
  %63 = icmp ult i64 %62, %40, !dbg !1900
  br i1 %63, label %64, label %66, !dbg !1903

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1900
  store i8 %60, i8* %65, align 1, !dbg !1900, !tbaa !1178
  br label %66, !dbg !1900

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1903
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1904
  call void @llvm.dbg.value(metadata i8* %68, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %67, metadata !1802, metadata !DIExpression()), !dbg !1865
  %69 = load i8, i8* %68, align 1, !dbg !1896, !tbaa !1178
  %70 = icmp eq i8 %69, 0, !dbg !1899
  br i1 %70, label %71, label %59, !dbg !1899, !llvm.loop !1905

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1865
  call void @llvm.dbg.value(metadata i64 %72, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %53, metadata !1804, metadata !DIExpression()), !dbg !1867
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %73, metadata !1805, metadata !DIExpression()), !dbg !1868
  br label %93, !dbg !1908

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1869
  br label %75, !dbg !1909

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8 %76, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1872
  br label %77, !dbg !1910

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1869
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8 %79, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 %78, metadata !1806, metadata !DIExpression()), !dbg !1869
  %80 = and i8 %79, 1, !dbg !1911
  %81 = icmp eq i8 %80, 0, !dbg !1911
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1913
  br label %83, !dbg !1913

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1914
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1872
  call void @llvm.dbg.value(metadata i8 %85, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 %84, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1860
  %86 = and i8 %85, 1, !dbg !1915
  %87 = icmp eq i8 %86, 0, !dbg !1915
  br i1 %87, label %88, label %93, !dbg !1917

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1918
  br i1 %89, label %93, label %90, !dbg !1921

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1918, !tbaa !1178
  br label %93, !dbg !1918

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1872
  br label %93, !dbg !1922

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1923
  unreachable, !dbg !1923

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1865
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], !dbg !1877
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1877
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1877
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1924
  call void @llvm.dbg.value(metadata i8 %101, metadata !1808, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %99, metadata !1805, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %97, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %94, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()), !dbg !1925
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
  br label %121, !dbg !1926

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1927
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1865
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1866
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1873
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1874
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1875
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %125, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %122, metadata !1801, metadata !DIExpression()), !dbg !1925
  %130 = icmp eq i64 %125, -1, !dbg !1928
  br i1 %130, label %131, label %135, !dbg !1929

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1930
  %133 = load i8, i8* %132, align 1, !dbg !1930, !tbaa !1178
  %134 = icmp eq i8 %133, 0, !dbg !1931
  br i1 %134, label %617, label %137, !dbg !1932

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1933
  br i1 %136, label %617, label %137, !dbg !1932

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1936
  br i1 %107, label %138, label %153, !dbg !1937

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1939
  %140 = and i1 %108, %130, !dbg !1940
  br i1 %140, label %141, label %143, !dbg !1940

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %142, metadata !1795, metadata !DIExpression()), !dbg !1859
  br label %143, !dbg !1942

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1795, metadata !DIExpression()), !dbg !1859
  %145 = icmp ugt i64 %139, %144, !dbg !1943
  br i1 %145, label %153, label %146, !dbg !1944

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1945
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1946
  %149 = icmp ne i32 %148, 0, !dbg !1947
  %150 = or i1 %149, %110, !dbg !1948
  %151 = xor i1 %149, true, !dbg !1948
  %152 = zext i1 %151 to i8, !dbg !1948
  br i1 %150, label %153, label %661, !dbg !1948

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1949
  call void @llvm.dbg.value(metadata i8 %155, metadata !1817, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %154, metadata !1795, metadata !DIExpression()), !dbg !1859
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1950
  %157 = load i8, i8* %156, align 1, !dbg !1950, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %157, metadata !1812, metadata !DIExpression()), !dbg !1951
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
  ], !dbg !1952

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1953

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1954

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1935
  %161 = and i8 %126, 1, !dbg !1958
  %162 = icmp eq i8 %161, 0, !dbg !1958
  %163 = and i1 %114, %162, !dbg !1958
  br i1 %163, label %164, label %180, !dbg !1958

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1960
  br i1 %165, label %166, label %168, !dbg !1964

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1960
  store i8 39, i8* %167, align 1, !dbg !1960, !tbaa !1178
  br label %168, !dbg !1960

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %169, metadata !1802, metadata !DIExpression()), !dbg !1865
  %170 = icmp ult i64 %169, %129, !dbg !1965
  br i1 %170, label %171, label %173, !dbg !1968

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1965
  store i8 36, i8* %172, align 1, !dbg !1965, !tbaa !1178
  br label %173, !dbg !1965

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %174, metadata !1802, metadata !DIExpression()), !dbg !1865
  %175 = icmp ult i64 %174, %129, !dbg !1969
  br i1 %175, label %176, label %178, !dbg !1972

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1969
  store i8 39, i8* %177, align 1, !dbg !1969, !tbaa !1178
  br label %178, !dbg !1969

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %179, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1873
  br label %180, !dbg !1973

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1924
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1924
  call void @llvm.dbg.value(metadata i8 %182, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %181, metadata !1802, metadata !DIExpression()), !dbg !1865
  %183 = icmp ult i64 %181, %129, !dbg !1974
  br i1 %183, label %184, label %186, !dbg !1977

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1974
  store i8 92, i8* %185, align 1, !dbg !1974, !tbaa !1178
  br label %186, !dbg !1974

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %187, metadata !1802, metadata !DIExpression()), !dbg !1865
  br i1 %104, label %188, label %478, !dbg !1978

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1980
  %190 = icmp ult i64 %189, %154, !dbg !1981
  br i1 %190, label %191, label %467, !dbg !1982

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1983
  %193 = load i8, i8* %192, align 1, !dbg !1983, !tbaa !1178
  %194 = add i8 %193, -48, !dbg !1984
  %195 = icmp ult i8 %194, 10, !dbg !1984
  br i1 %195, label %196, label %467, !dbg !1984

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1985
  br i1 %197, label %198, label %200, !dbg !1989

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1985
  store i8 48, i8* %199, align 1, !dbg !1985, !tbaa !1178
  br label %200, !dbg !1985

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %201, metadata !1802, metadata !DIExpression()), !dbg !1865
  %202 = icmp ult i64 %201, %129, !dbg !1990
  br i1 %202, label %203, label %205, !dbg !1993

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1990
  store i8 48, i8* %204, align 1, !dbg !1990, !tbaa !1178
  br label %205, !dbg !1990

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %206, metadata !1802, metadata !DIExpression()), !dbg !1865
  br label %467, !dbg !1994

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1995

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1996

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1997

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1999

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2001
  %213 = icmp ult i64 %212, %154, !dbg !2002
  br i1 %213, label %214, label %467, !dbg !2003

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2004
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2005
  %217 = load i8, i8* %216, align 1, !dbg !2005, !tbaa !1178
  %218 = icmp eq i8 %217, 63, !dbg !2006
  br i1 %218, label %219, label %467, !dbg !2007

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2008
  %221 = load i8, i8* %220, align 1, !dbg !2008, !tbaa !1178
  %222 = sext i8 %221 to i32, !dbg !2008
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
  ], !dbg !2009

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2010

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1812, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %212, metadata !1801, metadata !DIExpression()), !dbg !1925
  %225 = icmp ult i64 %123, %129, !dbg !2012
  br i1 %225, label %226, label %228, !dbg !2015

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2012
  store i8 63, i8* %227, align 1, !dbg !2012, !tbaa !1178
  br label %228, !dbg !2012

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %229, metadata !1802, metadata !DIExpression()), !dbg !1865
  %230 = icmp ult i64 %229, %129, !dbg !2016
  br i1 %230, label %231, label %233, !dbg !2019

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2016
  store i8 34, i8* %232, align 1, !dbg !2016, !tbaa !1178
  br label %233, !dbg !2016

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %234, metadata !1802, metadata !DIExpression()), !dbg !1865
  %235 = icmp ult i64 %234, %129, !dbg !2020
  br i1 %235, label %236, label %238, !dbg !2023

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2020
  store i8 34, i8* %237, align 1, !dbg !2020, !tbaa !1178
  br label %238, !dbg !2020

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %239, metadata !1802, metadata !DIExpression()), !dbg !1865
  %240 = icmp ult i64 %239, %129, !dbg !2024
  br i1 %240, label %241, label %243, !dbg !2027

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2024
  store i8 63, i8* %242, align 1, !dbg !2024, !tbaa !1178
  br label %243, !dbg !2024

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %244, metadata !1802, metadata !DIExpression()), !dbg !1865
  br label %467, !dbg !2028

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1816, metadata !DIExpression()), !dbg !2029
  br label %255, !dbg !2030

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1816, metadata !DIExpression()), !dbg !2029
  br label %255, !dbg !2031

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1816, metadata !DIExpression()), !dbg !2029
  br label %253, !dbg !2032

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1816, metadata !DIExpression()), !dbg !2029
  br label %253, !dbg !2033

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1816, metadata !DIExpression()), !dbg !2029
  br label %255, !dbg !2034

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1816, metadata !DIExpression()), !dbg !2029
  br i1 %114, label %251, label %252, !dbg !2035

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2036

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2039

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2041
  call void @llvm.dbg.value(metadata i8 %254, metadata !1816, metadata !DIExpression()), !dbg !2029
  br i1 %113, label %255, label %661, !dbg !2042

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2041
  call void @llvm.dbg.value(metadata i8 %256, metadata !1816, metadata !DIExpression()), !dbg !2029
  br i1 %103, label %524, label %478, !dbg !2044

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2045
  br i1 %258, label %259, label %264, !dbg !2047

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2048, !tbaa !1178
  %261 = icmp ne i8 %260, 0, !dbg !2049
  %262 = icmp ne i64 %122, 0, !dbg !2050
  %263 = or i1 %262, %261, !dbg !2052
  br i1 %263, label %467, label %270, !dbg !2052

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2053
  %266 = icmp ne i64 %122, 0, !dbg !2050
  %267 = or i1 %266, %265, !dbg !2047
  br i1 %267, label %467, label %270, !dbg !2047

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2050
  br i1 %269, label %270, label %467, !dbg !2054

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1819, metadata !DIExpression()), !dbg !1936
  br label %271, !dbg !2055

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2041
  call void @llvm.dbg.value(metadata i8 %272, metadata !1819, metadata !DIExpression()), !dbg !1936
  br i1 %113, label %467, label %661, !dbg !2056

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 1, metadata !1819, metadata !DIExpression()), !dbg !1936
  br i1 %114, label %274, label %467, !dbg !2058

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2059

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2062
  %277 = icmp ne i64 %124, 0, !dbg !2064
  %278 = or i1 %277, %276, !dbg !2065
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2065
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %280, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %279, metadata !1803, metadata !DIExpression()), !dbg !1866
  %281 = icmp ult i64 %123, %280, !dbg !2066
  br i1 %281, label %282, label %284, !dbg !2069

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2066
  store i8 39, i8* %283, align 1, !dbg !2066, !tbaa !1178
  br label %284, !dbg !2066

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %285, metadata !1802, metadata !DIExpression()), !dbg !1865
  %286 = icmp ult i64 %285, %280, !dbg !2070
  br i1 %286, label %287, label %289, !dbg !2073

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2070
  store i8 92, i8* %288, align 1, !dbg !2070, !tbaa !1178
  br label %289, !dbg !2070

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %290, metadata !1802, metadata !DIExpression()), !dbg !1865
  %291 = icmp ult i64 %290, %280, !dbg !2074
  br i1 %291, label %292, label %294, !dbg !2077

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2074
  store i8 39, i8* %293, align 1, !dbg !2074, !tbaa !1178
  br label %294, !dbg !2074

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %295, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1873
  br label %467, !dbg !2078

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2079

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1820, metadata !DIExpression()), !dbg !2080
  %298 = tail call i16** @__ctype_b_loc() #16, !dbg !2081
  %299 = load i16*, i16** %298, align 8, !dbg !2081, !tbaa !732
  %300 = zext i8 %157 to i64, !dbg !2081
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2081
  %302 = load i16, i16* %301, align 2, !dbg !2081, !tbaa !2083
  %303 = lshr i16 %302, 14, !dbg !2085
  %304 = trunc i16 %303 to i8, !dbg !2085
  %305 = and i8 %304, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i8 %305, metadata !1823, metadata !DIExpression()), !dbg !2086
  br label %359, !dbg !2087

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2088
  store i64 0, i64* %10, align 8, !dbg !2089
  call void @llvm.dbg.value(metadata i64 0, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !2086
  %307 = icmp eq i64 %154, -1, !dbg !2090
  br i1 %307, label %308, label %310, !dbg !2092

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %309, metadata !1795, metadata !DIExpression()), !dbg !1859
  br label %310, !dbg !2094

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2095
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  br label %312, !dbg !2096

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2097
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2098
  call void @llvm.dbg.value(metadata i8 %314, metadata !1823, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2099
  %315 = add i64 %313, %122, !dbg !2100
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2101
  %317 = sub i64 %311, %315, !dbg !2102
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1824, metadata !DIExpression(DW_OP_deref)), !dbg !2103
  call void @llvm.dbg.value(metadata i32* %12, metadata !1842, metadata !DIExpression(DW_OP_deref)), !dbg !2104
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %318, metadata !1845, metadata !DIExpression()), !dbg !2106
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2107

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  %320 = icmp ugt i64 %311, %315, !dbg !2108
  br i1 %320, label %321, label %344, !dbg !2110

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1820, metadata !DIExpression()), !dbg !2080
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2111
  %325 = load i8, i8* %324, align 1, !dbg !2111, !tbaa !1178
  %326 = icmp eq i8 %325, 0, !dbg !2110
  br i1 %326, label %344, label %327, !dbg !2112

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %328, metadata !1820, metadata !DIExpression()), !dbg !2080
  %329 = add i64 %328, %122, !dbg !2114
  %330 = icmp ult i64 %329, %311, !dbg !2108
  br i1 %330, label %321, label %344, !dbg !2110, !llvm.loop !2115

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2116
  %333 = and i1 %116, %332, !dbg !2119
  call void @llvm.dbg.value(metadata i64 1, metadata !1846, metadata !DIExpression()), !dbg !2120
  br i1 %333, label %334, label %347, !dbg !2119

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1846, metadata !DIExpression()), !dbg !2120
  %336 = add i64 %335, %315, !dbg !2121
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2122
  %338 = load i8, i8* %337, align 1, !dbg !2122, !tbaa !1178
  %339 = sext i8 %338 to i32, !dbg !2122
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2123

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %341, metadata !1846, metadata !DIExpression()), !dbg !2120
  %342 = icmp ult i64 %341, %318, !dbg !2116
  br i1 %342, label %334, label %347, !dbg !2125, !llvm.loop !2126

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %314, metadata !1823, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %313, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %314, metadata !1823, metadata !DIExpression()), !dbg !2086
  br label %344, !dbg !2128

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1823, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %352, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2128
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2129, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %348, metadata !1842, metadata !DIExpression()), !dbg !2104
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !2131
  %350 = icmp eq i32 %349, 0, !dbg !2131
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2132
  call void @llvm.dbg.value(metadata i8 %351, metadata !1823, metadata !DIExpression()), !dbg !2086
  %352 = add i64 %318, %313, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %352, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %351, metadata !1823, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %352, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2128
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1824, metadata !DIExpression(DW_OP_deref)), !dbg !2103
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2134
  %354 = icmp eq i32 %353, 0, !dbg !2135
  br i1 %354, label %312, label %355, !dbg !2136, !llvm.loop !2137

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2139
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i32 %94, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %94, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %94, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %94, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %94, metadata !1796, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %100, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %311, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %351, metadata !1823, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %352, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2139
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2140
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2141
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2141
  call void @llvm.dbg.value(metadata i8 %362, metadata !1823, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %361, metadata !1820, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %360, metadata !1795, metadata !DIExpression()), !dbg !1859
  %363 = and i8 %362, 1, !dbg !2142
  %364 = icmp ne i8 %363, 0, !dbg !2142
  call void @llvm.dbg.value(metadata i8 %363, metadata !1819, metadata !DIExpression()), !dbg !1936
  %365 = icmp ult i64 %361, 2, !dbg !2143
  %366 = or i1 %364, %115, !dbg !2144
  %367 = and i1 %365, %366, !dbg !2145
  br i1 %367, label %467, label %368, !dbg !2145

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %369, metadata !1853, metadata !DIExpression()), !dbg !2147
  br label %370, !dbg !2148

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2149
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2153
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1873
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2149
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2155
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1935
  call void @llvm.dbg.value(metadata i8 %376, metadata !1818, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %375, metadata !1817, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 %374, metadata !1812, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %373, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %372, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %371, metadata !1801, metadata !DIExpression()), !dbg !1925
  br i1 %366, label %423, label %377, !dbg !2159

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2160

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1935
  %379 = and i8 %373, 1, !dbg !2163
  %380 = icmp eq i8 %379, 0, !dbg !2163
  %381 = and i1 %114, %380, !dbg !2163
  br i1 %381, label %382, label %398, !dbg !2163

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2165
  br i1 %383, label %384, label %386, !dbg !2169

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2165
  store i8 39, i8* %385, align 1, !dbg !2165, !tbaa !1178
  br label %386, !dbg !2165

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %387, metadata !1802, metadata !DIExpression()), !dbg !1865
  %388 = icmp ult i64 %387, %129, !dbg !2170
  br i1 %388, label %389, label %391, !dbg !2173

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2170
  store i8 36, i8* %390, align 1, !dbg !2170, !tbaa !1178
  br label %391, !dbg !2170

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %392, metadata !1802, metadata !DIExpression()), !dbg !1865
  %393 = icmp ult i64 %392, %129, !dbg !2174
  br i1 %393, label %394, label %396, !dbg !2177

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2174
  store i8 39, i8* %395, align 1, !dbg !2174, !tbaa !1178
  br label %396, !dbg !2174

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %397, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1873
  br label %398, !dbg !2178

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1924
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1924
  call void @llvm.dbg.value(metadata i8 %400, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %399, metadata !1802, metadata !DIExpression()), !dbg !1865
  %401 = icmp ult i64 %399, %129, !dbg !2179
  br i1 %401, label %402, label %404, !dbg !2182

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2179
  store i8 92, i8* %403, align 1, !dbg !2179, !tbaa !1178
  br label %404, !dbg !2179

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %405, metadata !1802, metadata !DIExpression()), !dbg !1865
  %406 = icmp ult i64 %405, %129, !dbg !2183
  br i1 %406, label %407, label %411, !dbg !2186

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2183
  %409 = or i8 %408, 48, !dbg !2183
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2183
  store i8 %409, i8* %410, align 1, !dbg !2183, !tbaa !1178
  br label %411, !dbg !2183

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %412, metadata !1802, metadata !DIExpression()), !dbg !1865
  %413 = icmp ult i64 %412, %129, !dbg !2187
  br i1 %413, label %414, label %419, !dbg !2190

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2187
  %416 = and i8 %415, 7, !dbg !2187
  %417 = or i8 %416, 48, !dbg !2187
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2187
  store i8 %417, i8* %418, align 1, !dbg !2187, !tbaa !1178
  br label %419, !dbg !2187

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %420, metadata !1802, metadata !DIExpression()), !dbg !1865
  %421 = and i8 %374, 7, !dbg !2191
  %422 = or i8 %421, 48, !dbg !2192
  call void @llvm.dbg.value(metadata i8 %422, metadata !1812, metadata !DIExpression()), !dbg !1951
  br label %432, !dbg !2193

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2194
  %425 = icmp eq i8 %424, 0, !dbg !2194
  br i1 %425, label %432, label %426, !dbg !2195

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2196
  br i1 %427, label %428, label %430, !dbg !2199

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2196
  store i8 92, i8* %429, align 1, !dbg !2196, !tbaa !1178
  br label %430, !dbg !2196

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %431, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1934
  br label %432, !dbg !2200

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2201
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1873
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2202
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2203
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2205
  call void @llvm.dbg.value(metadata i8 %437, metadata !1818, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %436, metadata !1817, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 %435, metadata !1812, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %434, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %433, metadata !1802, metadata !DIExpression()), !dbg !1865
  %438 = add i64 %371, 1, !dbg !2206
  %439 = icmp ugt i64 %369, %438, !dbg !2208
  br i1 %439, label %440, label %562, !dbg !2209

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2210
  %442 = icmp ne i8 %441, 0, !dbg !2210
  %443 = and i8 %437, 1, !dbg !2210
  %444 = icmp eq i8 %443, 0, !dbg !2210
  %445 = and i1 %442, %444, !dbg !2210
  br i1 %445, label %446, label %457, !dbg !2210

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2213
  br i1 %447, label %448, label %450, !dbg !2217

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2213
  store i8 39, i8* %449, align 1, !dbg !2213, !tbaa !1178
  br label %450, !dbg !2213

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %451, metadata !1802, metadata !DIExpression()), !dbg !1865
  %452 = icmp ult i64 %451, %129, !dbg !2218
  br i1 %452, label %453, label %455, !dbg !2221

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2218
  store i8 39, i8* %454, align 1, !dbg !2218, !tbaa !1178
  br label %455, !dbg !2218

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %456, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1873
  br label %457, !dbg !2222

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2223
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1924
  call void @llvm.dbg.value(metadata i8 %459, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %458, metadata !1802, metadata !DIExpression()), !dbg !1865
  %460 = icmp ult i64 %458, %129, !dbg !2224
  br i1 %460, label %461, label %463, !dbg !2226

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2224
  store i8 %435, i8* %462, align 1, !dbg !2224, !tbaa !1178
  br label %463, !dbg !2224

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %464, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %438, metadata !1801, metadata !DIExpression()), !dbg !1925
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2227
  %466 = load i8, i8* %465, align 1, !dbg !2227, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %466, metadata !1812, metadata !DIExpression()), !dbg !1951
  br label %370, !dbg !2228, !llvm.loop !2229

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2232
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1924
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1866
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2233
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1924
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1924
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1949
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1949
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1949
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %476, metadata !1819, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %475, metadata !1818, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %155, metadata !1817, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 %474, metadata !1812, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %473, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %472, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %471, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %470, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %469, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %468, metadata !1801, metadata !DIExpression()), !dbg !1925
  br i1 %105, label %489, label %478, !dbg !2234

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
  br i1 %112, label %490, label %512, !dbg !2236

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2237

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
  %501 = lshr i8 %494, 5, !dbg !2238
  %502 = zext i8 %501 to i64, !dbg !2238
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2239
  %504 = load i32, i32* %503, align 4, !dbg !2239, !tbaa !849
  %505 = and i8 %494, 31, !dbg !2240
  %506 = zext i8 %505 to i32, !dbg !2240
  %507 = shl i32 1, %506, !dbg !2241
  %508 = and i32 %504, %507, !dbg !2241
  %509 = icmp eq i32 %508, 0, !dbg !2241
  %510 = icmp eq i8 %155, 0, !dbg !2242
  %511 = and i1 %510, %509, !dbg !2243
  br i1 %511, label %562, label %524, !dbg !2243

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
  %523 = icmp eq i8 %155, 0, !dbg !2242
  br i1 %523, label %562, label %524, !dbg !2244

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2245
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1924
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1866
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2233
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1873
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1874
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2246
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1949
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %532, metadata !1819, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %531, metadata !1812, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %530, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %529, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %528, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %527, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %526, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %525, metadata !1801, metadata !DIExpression()), !dbg !1925
  br i1 %110, label %534, label %661, !dbg !2249

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1935
  %535 = and i8 %529, 1, !dbg !2251
  %536 = icmp eq i8 %535, 0, !dbg !2251
  %537 = and i1 %114, %536, !dbg !2251
  br i1 %537, label %538, label %554, !dbg !2251

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2253
  br i1 %539, label %540, label %542, !dbg !2257

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2253
  store i8 39, i8* %541, align 1, !dbg !2253, !tbaa !1178
  br label %542, !dbg !2253

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %543, metadata !1802, metadata !DIExpression()), !dbg !1865
  %544 = icmp ult i64 %543, %533, !dbg !2258
  br i1 %544, label %545, label %547, !dbg !2261

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2258
  store i8 36, i8* %546, align 1, !dbg !2258, !tbaa !1178
  br label %547, !dbg !2258

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %548, metadata !1802, metadata !DIExpression()), !dbg !1865
  %549 = icmp ult i64 %548, %533, !dbg !2262
  br i1 %549, label %550, label %552, !dbg !2265

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2262
  store i8 39, i8* %551, align 1, !dbg !2262, !tbaa !1178
  br label %552, !dbg !2262

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %553, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1873
  br label %554, !dbg !2266

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2223
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1924
  call void @llvm.dbg.value(metadata i8 %556, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %555, metadata !1802, metadata !DIExpression()), !dbg !1865
  %557 = icmp ult i64 %555, %533, !dbg !2267
  br i1 %557, label %558, label %560, !dbg !2270

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2267
  store i8 92, i8* %559, align 1, !dbg !2267, !tbaa !1178
  br label %560, !dbg !2267

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %561, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %572, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %571, metadata !1819, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %570, metadata !1818, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %569, metadata !1812, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %568, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %567, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %566, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %565, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %564, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %563, metadata !1801, metadata !DIExpression()), !dbg !1925
  br label %589, !dbg !2271

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2245
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1924
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1866
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2233
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1873
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1874
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2274
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1949
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1949
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %571, metadata !1819, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %570, metadata !1818, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %569, metadata !1812, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %568, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %567, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %566, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %565, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %564, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %563, metadata !1801, metadata !DIExpression()), !dbg !1925
  %573 = and i8 %567, 1, !dbg !2271
  %574 = icmp ne i8 %573, 0, !dbg !2271
  %575 = and i8 %570, 1, !dbg !2271
  %576 = icmp eq i8 %575, 0, !dbg !2271
  %577 = and i1 %574, %576, !dbg !2271
  br i1 %577, label %578, label %589, !dbg !2271

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2275
  br i1 %579, label %580, label %582, !dbg !2279

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2275
  store i8 39, i8* %581, align 1, !dbg !2275, !tbaa !1178
  br label %582, !dbg !2275

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %583, metadata !1802, metadata !DIExpression()), !dbg !1865
  %584 = icmp ult i64 %583, %572, !dbg !2280
  br i1 %584, label %585, label %587, !dbg !2283

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2280
  store i8 39, i8* %586, align 1, !dbg !2280, !tbaa !1178
  br label %587, !dbg !2280

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %588, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1873
  br label %589, !dbg !2284

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2223
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1924
  call void @llvm.dbg.value(metadata i8 %598, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %597, metadata !1802, metadata !DIExpression()), !dbg !1865
  %599 = icmp ult i64 %597, %590, !dbg !2285
  br i1 %599, label %600, label %602, !dbg !2288

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2285
  store i8 %592, i8* %601, align 1, !dbg !2285, !tbaa !1178
  br label %602, !dbg !2285

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %603, metadata !1802, metadata !DIExpression()), !dbg !1865
  %604 = and i8 %591, 1, !dbg !2289
  %605 = icmp eq i8 %604, 0, !dbg !2289
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2291
  call void @llvm.dbg.value(metadata i8 %606, metadata !1811, metadata !DIExpression()), !dbg !1875
  br label %607, !dbg !2292

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2245
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1924
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1866
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2233
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1873
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1924
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1875
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %614, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %613, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %612, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %611, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %610, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %609, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %608, metadata !1801, metadata !DIExpression()), !dbg !1925
  %616 = add i64 %608, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %616, metadata !1801, metadata !DIExpression()), !dbg !1925
  br label %121, !dbg !2294, !llvm.loop !2295

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %618, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %618, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %125, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %125, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  %619 = icmp eq i64 %123, 0, !dbg !2297
  %620 = and i1 %114, %619, !dbg !2299
  %621 = xor i1 %620, true, !dbg !2299
  %622 = or i1 %110, %621, !dbg !2299
  br i1 %622, label %623, label %661, !dbg !2299

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2300
  %625 = xor i1 %624, true, !dbg !2300
  %626 = and i8 %127, 1, !dbg !2302
  %627 = icmp eq i8 %626, 0, !dbg !2302
  %628 = or i1 %627, %625, !dbg !2300
  br i1 %628, label %638, label %629, !dbg !2300

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2303
  %631 = icmp eq i8 %630, 0, !dbg !2303
  br i1 %631, label %634, label %632, !dbg !2306

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %618, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %618, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %618, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %618, metadata !1795, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %95, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %96, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %125, metadata !1795, metadata !DIExpression()), !dbg !1859
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2307
  br label %671, !dbg !2308

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2309
  %636 = icmp ne i64 %124, 0, !dbg !2311
  %637 = and i1 %636, %635, !dbg !2312
  br i1 %637, label %27, label %638, !dbg !2312

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1857
  %639 = icmp ne i8* %98, null, !dbg !2313
  %640 = and i1 %639, %110, !dbg !2315
  br i1 %640, label %641, label %656, !dbg !2315

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1865
  %642 = load i8, i8* %98, align 1, !dbg !2316, !tbaa !1178
  %643 = icmp eq i8 %642, 0, !dbg !2319
  br i1 %643, label %656, label %644, !dbg !2319

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %647, metadata !1802, metadata !DIExpression()), !dbg !1865
  %648 = icmp ult i64 %647, %129, !dbg !2320
  br i1 %648, label %649, label %651, !dbg !2323

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2320
  store i8 %645, i8* %650, align 1, !dbg !2320, !tbaa !1178
  br label %651, !dbg !2320

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2323
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %653, metadata !1804, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %652, metadata !1802, metadata !DIExpression()), !dbg !1865
  %654 = load i8, i8* %653, align 1, !dbg !2316, !tbaa !1178
  %655 = icmp eq i8 %654, 0, !dbg !2319
  br i1 %655, label %656, label %644, !dbg !2319, !llvm.loop !2325

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1865
  call void @llvm.dbg.value(metadata i64 %657, metadata !1802, metadata !DIExpression()), !dbg !1865
  %658 = icmp ult i64 %657, %129, !dbg !2327
  br i1 %658, label %659, label %671, !dbg !2329

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2330
  store i8 0, i8* %660, align 1, !dbg !2331, !tbaa !1178
  br label %671, !dbg !2330

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1793, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %663, metadata !1795, metadata !DIExpression()), !dbg !1859
  %665 = icmp ne i32 %662, 2, !dbg !2332
  %666 = icmp eq i8 %102, 0, !dbg !2334
  %667 = or i1 %665, %666, !dbg !2335
  call void @llvm.dbg.value(metadata i32 4, metadata !1796, metadata !DIExpression()), !dbg !1860
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %668, metadata !1796, metadata !DIExpression()), !dbg !1860
  %669 = and i32 %5, -3, !dbg !2336
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2337
  br label %671, !dbg !2338

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2339
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2340 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2344, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %1, metadata !2345, metadata !DIExpression()), !dbg !2349
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %3, metadata !2346, metadata !DIExpression()), !dbg !2351
  %4 = icmp eq i8* %3, %0, !dbg !2352
  br i1 %4, label %5, label %71, !dbg !2354

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %6, metadata !2347, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %6, metadata !2357, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* null, metadata !2363, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 85, metadata !2364, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 84, metadata !2365, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 70, metadata !2366, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 45, metadata !2367, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 56, metadata !2368, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2370, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2371, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2385
  %7 = load i8, i8* %6, align 1, !dbg !2386, !tbaa !1178
  %8 = and i8 %7, -33, !dbg !2386
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2386

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2388, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8* null, metadata !2393, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 84, metadata !2394, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 70, metadata !2395, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 45, metadata !2396, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 56, metadata !2397, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2414
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2415
  %11 = load i8, i8* %10, align 1, !dbg !2415, !tbaa !1178
  %12 = and i8 %11, -33, !dbg !2415
  %13 = icmp eq i8 %12, 84, !dbg !2415
  br i1 %13, label %14, label %68, !dbg !2415

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2417, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* null, metadata !2422, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 70, metadata !2423, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 45, metadata !2424, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 56, metadata !2425, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2441
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2442
  %16 = load i8, i8* %15, align 1, !dbg !2442, !tbaa !1178
  %17 = and i8 %16, -33, !dbg !2442
  %18 = icmp eq i8 %17, 70, !dbg !2442
  br i1 %18, label %19, label %68, !dbg !2442

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2444, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* null, metadata !2449, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 45, metadata !2450, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 56, metadata !2451, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 0, metadata !2452, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2453, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 0, metadata !2454, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2466
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2467
  %21 = load i8, i8* %20, align 1, !dbg !2467, !tbaa !1178
  %22 = icmp eq i8 %21, 45, !dbg !2467
  br i1 %22, label %23, label %68, !dbg !2469

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2470, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* null, metadata !2475, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 56, metadata !2476, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 0, metadata !2477, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 0, metadata !2478, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 0, metadata !2479, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2490
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2491
  %25 = load i8, i8* %24, align 1, !dbg !2491, !tbaa !1178
  %26 = icmp eq i8 %25, 56, !dbg !2491
  br i1 %26, label %27, label %68, !dbg !2493

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2494, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8* null, metadata !2499, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2512
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2513
  %29 = load i8, i8* %28, align 1, !dbg !2513, !tbaa !1178
  %30 = icmp eq i8 %29, 0, !dbg !2513
  br i1 %30, label %31, label %68, !dbg !2515

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2516, !tbaa !1178
  %33 = icmp eq i8 %32, 96, !dbg !2517
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !2516
  br label %71, !dbg !2518

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2388, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* null, metadata !2393, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8 66, metadata !2394, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 49, metadata !2395, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 56, metadata !2396, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 48, metadata !2397, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8 51, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 48, metadata !2399, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2531
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2532
  %37 = load i8, i8* %36, align 1, !dbg !2532, !tbaa !1178
  %38 = and i8 %37, -33, !dbg !2532
  %39 = icmp eq i8 %38, 66, !dbg !2532
  br i1 %39, label %40, label %68, !dbg !2532

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2417, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* null, metadata !2422, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 49, metadata !2423, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 56, metadata !2424, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 48, metadata !2425, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 51, metadata !2426, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 48, metadata !2427, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2542
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2543
  %42 = load i8, i8* %41, align 1, !dbg !2543, !tbaa !1178
  %43 = icmp eq i8 %42, 49, !dbg !2543
  br i1 %43, label %44, label %68, !dbg !2544

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2444, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* null, metadata !2449, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 56, metadata !2450, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 48, metadata !2451, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 51, metadata !2452, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 48, metadata !2453, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2454, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2553
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2554
  %46 = load i8, i8* %45, align 1, !dbg !2554, !tbaa !1178
  %47 = icmp eq i8 %46, 56, !dbg !2554
  br i1 %47, label %48, label %68, !dbg !2555

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2470, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* null, metadata !2475, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 48, metadata !2476, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 51, metadata !2477, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 48, metadata !2478, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, metadata !2479, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2563
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2564
  %50 = load i8, i8* %49, align 1, !dbg !2564, !tbaa !1178
  %51 = icmp eq i8 %50, 48, !dbg !2564
  br i1 %51, label %52, label %68, !dbg !2565

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2494, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* null, metadata !2499, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 51, metadata !2500, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 48, metadata !2501, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2572
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2573
  %54 = load i8, i8* %53, align 1, !dbg !2573, !tbaa !1178
  %55 = icmp eq i8 %54, 51, !dbg !2573
  br i1 %55, label %56, label %68, !dbg !2574

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2575, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* null, metadata !2580, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 48, metadata !2581, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2591
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2592
  %58 = load i8, i8* %57, align 1, !dbg !2592, !tbaa !1178
  %59 = icmp eq i8 %58, 48, !dbg !2592
  br i1 %59, label %60, label %68, !dbg !2594

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2595, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* null, metadata !2600, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2609
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2610
  %62 = load i8, i8* %61, align 1, !dbg !2610, !tbaa !1178
  %63 = icmp eq i8 %62, 0, !dbg !2610
  br i1 %63, label %64, label %68, !dbg !2612

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2613, !tbaa !1178
  %66 = icmp eq i8 %65, 96, !dbg !2614
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !2613
  br label %71, !dbg !2615

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2616
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !2617
  br label %71, !dbg !2618

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2619
  ret i8* %72, !dbg !2620
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2621 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64 %1, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()) #10, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()) #10, !dbg !2646
  call void @llvm.dbg.value(metadata i64* null, metadata !2637, metadata !DIExpression()) #10, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2638, metadata !DIExpression()) #10, !dbg !2648
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2649
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2639, metadata !DIExpression()) #10, !dbg !2650
  %6 = tail call i32* @__errno_location() #16, !dbg !2651
  %7 = load i32, i32* %6, align 4, !dbg !2651, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %7, metadata !2640, metadata !DIExpression()) #10, !dbg !2652
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2653
  %9 = load i32, i32* %8, align 4, !dbg !2653, !tbaa !1725
  %10 = or i32 %9, 1, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %10, metadata !2641, metadata !DIExpression()) #10, !dbg !2655
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2656
  %12 = load i32, i32* %11, align 8, !dbg !2656, !tbaa !1666
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2657
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2658
  %15 = load i8*, i8** %14, align 8, !dbg !2658, !tbaa !1751
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2659
  %17 = load i8*, i8** %16, align 8, !dbg !2659, !tbaa !1754
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2660
  %19 = add i64 %18, 1, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %19, metadata !2642, metadata !DIExpression()) #10, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %19, metadata !2663, metadata !DIExpression()) #10, !dbg !2668
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2670
  call void @llvm.dbg.value(metadata i8* %20, metadata !2643, metadata !DIExpression()) #10, !dbg !2671
  %21 = load i32, i32* %11, align 8, !dbg !2672, !tbaa !1666
  %22 = load i8*, i8** %14, align 8, !dbg !2673, !tbaa !1751
  %23 = load i8*, i8** %16, align 8, !dbg !2674, !tbaa !1754
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2675
  store i32 %7, i32* %6, align 4, !dbg !2676, !tbaa !849
  ret i8* %20, !dbg !2677
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64* %2, metadata !2637, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression()), !dbg !2681
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2682
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2639, metadata !DIExpression()), !dbg !2683
  %7 = tail call i32* @__errno_location() #16, !dbg !2684
  %8 = load i32, i32* %7, align 4, !dbg !2684, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %8, metadata !2640, metadata !DIExpression()), !dbg !2685
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2686
  %10 = load i32, i32* %9, align 4, !dbg !2686, !tbaa !1725
  %11 = icmp ne i64* %2, null, !dbg !2687
  %12 = xor i1 %11, true, !dbg !2687
  %13 = zext i1 %12 to i32, !dbg !2687
  %14 = or i32 %10, %13, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %14, metadata !2641, metadata !DIExpression()), !dbg !2689
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2690
  %16 = load i32, i32* %15, align 8, !dbg !2690, !tbaa !1666
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2691
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2692
  %19 = load i8*, i8** %18, align 8, !dbg !2692, !tbaa !1751
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2693
  %21 = load i8*, i8** %20, align 8, !dbg !2693, !tbaa !1754
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2694
  %23 = add i64 %22, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %23, metadata !2642, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %23, metadata !2663, metadata !DIExpression()) #10, !dbg !2697
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %24, metadata !2643, metadata !DIExpression()), !dbg !2700
  %25 = load i32, i32* %15, align 8, !dbg !2701, !tbaa !1666
  %26 = load i8*, i8** %18, align 8, !dbg !2702, !tbaa !1751
  %27 = load i8*, i8** %20, align 8, !dbg !2703, !tbaa !1754
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2704
  store i32 %8, i32* %7, align 4, !dbg !2705, !tbaa !849
  br i1 %11, label %29, label %30, !dbg !2706

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2707, !tbaa !2709
  br label %30, !dbg !2710

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2712 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2716, !tbaa !732
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 1, metadata !2715, metadata !DIExpression()), !dbg !2718
  %2 = load i32, i32* @nslots, align 4, !dbg !2719, !tbaa !849
  %3 = icmp sgt i32 %2, 1, !dbg !2722
  br i1 %3, label %4, label %12, !dbg !2723

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2715, metadata !DIExpression()), !dbg !2718
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2724
  %7 = load i8*, i8** %6, align 8, !dbg !2724, !tbaa !2725
  tail call void @free(i8* %7) #10, !dbg !2727
  %8 = add nuw nsw i64 %5, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i32 undef, metadata !2715, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2718
  %9 = load i32, i32* @nslots, align 4, !dbg !2719, !tbaa !849
  %10 = sext i32 %9 to i64, !dbg !2722
  %11 = icmp slt i64 %8, %10, !dbg !2722
  br i1 %11, label %4, label %12, !dbg !2723, !llvm.loop !2729

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2731
  %14 = load i8*, i8** %13, align 8, !dbg !2731, !tbaa !2725
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2733
  br i1 %15, label %17, label %16, !dbg !2734

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2735
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2737, !tbaa !2738
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2739, !tbaa !2725
  br label %17, !dbg !2740

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2741
  br i1 %18, label %21, label %19, !dbg !2743

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2744
  tail call void @free(i8* %20) #10, !dbg !2746
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2747, !tbaa !732
  br label %21, !dbg !2748

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2749, !tbaa !849
  ret void, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %1, metadata !2756, metadata !DIExpression()), !dbg !2758
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2759
  ret i8* %3, !dbg !2760
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %1, metadata !2766, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %2, metadata !2767, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2768, metadata !DIExpression()), !dbg !2783
  %5 = tail call i32* @__errno_location() #16, !dbg !2784
  %6 = load i32, i32* %5, align 4, !dbg !2784, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %6, metadata !2769, metadata !DIExpression()), !dbg !2785
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2786, !tbaa !732
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2770, metadata !DIExpression()), !dbg !2787
  %8 = icmp slt i32 %0, 0, !dbg !2788
  br i1 %8, label %9, label %10, !dbg !2790

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2791
  unreachable, !dbg !2791

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2792, !tbaa !849
  %12 = icmp sgt i32 %11, %0, !dbg !2793
  br i1 %12, label %34, label %13, !dbg !2794

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2795
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2774, metadata !DIExpression()), !dbg !2796
  %15 = icmp eq i32 %0, 2147483647, !dbg !2797
  br i1 %15, label %16, label %17, !dbg !2799

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2800
  unreachable, !dbg !2800

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2801
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2801
  %20 = add nsw i32 %0, 1, !dbg !2802
  %21 = sext i32 %20 to i64, !dbg !2803
  %22 = shl nsw i64 %21, 4, !dbg !2804
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2805
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2805
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2770, metadata !DIExpression()), !dbg !2787
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2806, !tbaa !732
  br i1 %14, label %25, label %26, !dbg !2807

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2808, !tbaa.struct !2810
  br label %26, !dbg !2811

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2812, !tbaa !849
  %28 = sext i32 %27 to i64, !dbg !2813
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2813
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2814
  %31 = sub nsw i32 %20, %27, !dbg !2815
  %32 = sext i32 %31 to i64, !dbg !2816
  %33 = shl nsw i64 %32, 4, !dbg !2817
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2814
  store i32 %20, i32* @nslots, align 4, !dbg !2818, !tbaa !849
  br label %34, !dbg !2819

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2820
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2770, metadata !DIExpression()), !dbg !2787
  %36 = sext i32 %0 to i64, !dbg !2821
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2822
  %38 = load i64, i64* %37, align 8, !dbg !2822, !tbaa !2738
  call void @llvm.dbg.value(metadata i64 %38, metadata !2775, metadata !DIExpression()), !dbg !2823
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2824
  %40 = load i8*, i8** %39, align 8, !dbg !2824, !tbaa !2725
  call void @llvm.dbg.value(metadata i8* %40, metadata !2777, metadata !DIExpression()), !dbg !2825
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2826
  %42 = load i32, i32* %41, align 4, !dbg !2826, !tbaa !1725
  %43 = or i32 %42, 1, !dbg !2827
  call void @llvm.dbg.value(metadata i32 %43, metadata !2778, metadata !DIExpression()), !dbg !2828
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2829
  %45 = load i32, i32* %44, align 8, !dbg !2829, !tbaa !1666
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2830
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2831
  %48 = load i8*, i8** %47, align 8, !dbg !2831, !tbaa !1751
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2832
  %50 = load i8*, i8** %49, align 8, !dbg !2832, !tbaa !1754
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %51, metadata !2779, metadata !DIExpression()), !dbg !2834
  %52 = icmp ugt i64 %38, %51, !dbg !2835
  br i1 %52, label %63, label %53, !dbg !2837

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %54, metadata !2775, metadata !DIExpression()), !dbg !2823
  store i64 %54, i64* %37, align 8, !dbg !2840, !tbaa !2738
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2841
  br i1 %55, label %57, label %56, !dbg !2843

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2844
  br label %57, !dbg !2844

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2663, metadata !DIExpression()) #10, !dbg !2845
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %58, metadata !2777, metadata !DIExpression()), !dbg !2825
  store i8* %58, i8** %39, align 8, !dbg !2848, !tbaa !2725
  %59 = load i32, i32* %44, align 8, !dbg !2849, !tbaa !1666
  %60 = load i8*, i8** %47, align 8, !dbg !2850, !tbaa !1751
  %61 = load i8*, i8** %49, align 8, !dbg !2851, !tbaa !1754
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2852
  br label %63, !dbg !2853

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2854
  call void @llvm.dbg.value(metadata i8* %64, metadata !2777, metadata !DIExpression()), !dbg !2825
  store i32 %6, i32* %5, align 4, !dbg !2855, !tbaa !849
  ret i8* %64, !dbg !2856
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2862, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %2, metadata !2863, metadata !DIExpression()), !dbg !2866
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2867
  ret i8* %4, !dbg !2868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2869 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2755, metadata !DIExpression()) #10, !dbg !2875
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #10, !dbg !2877
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2878
  ret i8* %2, !dbg !2879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2884, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %1, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 0, metadata !2861, metadata !DIExpression()) #10, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %0, metadata !2862, metadata !DIExpression()) #10, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %1, metadata !2863, metadata !DIExpression()) #10, !dbg !2891
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2892
  ret i8* %3, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2894 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %1, metadata !2899, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8* %2, metadata !2900, metadata !DIExpression()), !dbg !2904
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2905
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2901, metadata !DIExpression(DW_OP_deref)), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()) #10, !dbg !2913
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2915, !alias.scope !2916
  %6 = icmp eq i32 %1, 10, !dbg !2919
  br i1 %6, label %7, label %8, !dbg !2921

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2922, !noalias !2916
  unreachable, !dbg !2922

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2923
  store i32 %1, i32* %9, align 8, !dbg !2924, !tbaa !1666, !alias.scope !2916
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2901, metadata !DIExpression(DW_OP_deref)), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2912, metadata !DIExpression(DW_OP_deref)), !dbg !2915
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2926
  ret i8* %10, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2928 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2932, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 %1, metadata !2933, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* %2, metadata !2934, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i64 %3, metadata !2935, metadata !DIExpression()), !dbg !2940
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2941
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2936, metadata !DIExpression(DW_OP_deref)), !dbg !2942
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()) #10, !dbg !2943
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2945, !alias.scope !2946
  %7 = icmp eq i32 %1, 10, !dbg !2949
  br i1 %7, label %8, label %9, !dbg !2950

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2951, !noalias !2946
  unreachable, !dbg !2951

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2952
  store i32 %1, i32* %10, align 8, !dbg !2953, !tbaa !1666, !alias.scope !2946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2936, metadata !DIExpression(DW_OP_deref)), !dbg !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2912, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2954
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2955
  ret i8* %11, !dbg !2956
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2957 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 0, metadata !2898, metadata !DIExpression()) #10, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %0, metadata !2899, metadata !DIExpression()) #10, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %1, metadata !2900, metadata !DIExpression()) #10, !dbg !2968
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2969
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2969
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2901, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()) #10, !dbg !2971
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2973, !alias.scope !2974
  %5 = icmp eq i32 %0, 10, !dbg !2977
  br i1 %5, label %6, label %7, !dbg !2978

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2979, !noalias !2974
  unreachable, !dbg !2979

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2980
  store i32 %0, i32* %8, align 8, !dbg !2981, !tbaa !1666, !alias.scope !2974
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2901, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2970
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2912, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2973
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2982
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2983
  ret i8* %9, !dbg !2984
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2985 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %1, metadata !2990, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %2, metadata !2991, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32 0, metadata !2932, metadata !DIExpression()) #10, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()) #10, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2934, metadata !DIExpression()) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %2, metadata !2935, metadata !DIExpression()) #10, !dbg !2999
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3000
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2936, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3001
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()) #10, !dbg !3002
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !3004, !alias.scope !3005
  %6 = icmp eq i32 %0, 10, !dbg !3008
  br i1 %6, label %7, label %8, !dbg !3009

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3010, !noalias !3005
  unreachable, !dbg !3010

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3011
  store i32 %0, i32* %9, align 8, !dbg !3012, !tbaa !1666, !alias.scope !3005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2936, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2912, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3004
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !3013
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3014
  ret i8* %10, !dbg !3015
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3016 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 %2, metadata !3022, metadata !DIExpression()), !dbg !3026
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3027
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3028, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3023, metadata !DIExpression(DW_OP_deref)), !dbg !3030
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1685, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %2, metadata !1686, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 1, metadata !1687, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %2, metadata !1688, metadata !DIExpression()), !dbg !3035
  %6 = lshr i8 %2, 5, !dbg !3036
  %7 = zext i8 %6 to i64, !dbg !3036
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3037
  call void @llvm.dbg.value(metadata i32* %8, metadata !1689, metadata !DIExpression()), !dbg !3038
  %9 = and i8 %2, 31, !dbg !3039
  %10 = zext i8 %9 to i32, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %10, metadata !1691, metadata !DIExpression()), !dbg !3040
  %11 = load i32, i32* %8, align 4, !dbg !3041, !tbaa !849
  %12 = lshr i32 %11, %10, !dbg !3042
  %13 = and i32 %12, 1, !dbg !3043
  call void @llvm.dbg.value(metadata i32 %13, metadata !1692, metadata !DIExpression()), !dbg !3044
  %14 = xor i32 %13, 1, !dbg !3045
  %15 = shl i32 %14, %10, !dbg !3046
  %16 = xor i32 %15, %11, !dbg !3047
  store i32 %16, i32* %8, align 4, !dbg !3047, !tbaa !849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3023, metadata !DIExpression(DW_OP_deref)), !dbg !3030
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3048
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3049
  ret i8* %17, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3051 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 %1, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #10, !dbg !3059
  call void @llvm.dbg.value(metadata i64 -1, metadata !3021, metadata !DIExpression()) #10, !dbg !3061
  call void @llvm.dbg.value(metadata i8 %1, metadata !3022, metadata !DIExpression()) #10, !dbg !3062
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3064, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3023, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3065
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1685, metadata !DIExpression()) #10, !dbg !3066
  call void @llvm.dbg.value(metadata i8 %1, metadata !1686, metadata !DIExpression()) #10, !dbg !3068
  call void @llvm.dbg.value(metadata i32 1, metadata !1687, metadata !DIExpression()) #10, !dbg !3069
  call void @llvm.dbg.value(metadata i8 %1, metadata !1688, metadata !DIExpression()) #10, !dbg !3070
  %5 = lshr i8 %1, 5, !dbg !3071
  %6 = zext i8 %5 to i64, !dbg !3071
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3072
  call void @llvm.dbg.value(metadata i32* %7, metadata !1689, metadata !DIExpression()) #10, !dbg !3073
  %8 = and i8 %1, 31, !dbg !3074
  %9 = zext i8 %8 to i32, !dbg !3074
  call void @llvm.dbg.value(metadata i32 %9, metadata !1691, metadata !DIExpression()) #10, !dbg !3075
  %10 = load i32, i32* %7, align 4, !dbg !3076, !tbaa !849
  %11 = lshr i32 %10, %9, !dbg !3077
  %12 = and i32 %11, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %12, metadata !1692, metadata !DIExpression()) #10, !dbg !3079
  %13 = xor i32 %12, 1, !dbg !3080
  %14 = shl i32 %13, %9, !dbg !3081
  %15 = xor i32 %14, %10, !dbg !3082
  store i32 %15, i32* %7, align 4, !dbg !3082, !tbaa !849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3023, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3065
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3083
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3084
  ret i8* %16, !dbg !3085
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3086 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i8* %0, metadata !3055, metadata !DIExpression()) #10, !dbg !3090
  call void @llvm.dbg.value(metadata i8 58, metadata !3056, metadata !DIExpression()) #10, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #10, !dbg !3093
  call void @llvm.dbg.value(metadata i64 -1, metadata !3021, metadata !DIExpression()) #10, !dbg !3095
  call void @llvm.dbg.value(metadata i8 58, metadata !3022, metadata !DIExpression()) #10, !dbg !3096
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3097
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3098, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3023, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1685, metadata !DIExpression()) #10, !dbg !3100
  call void @llvm.dbg.value(metadata i8 58, metadata !1686, metadata !DIExpression()) #10, !dbg !3102
  call void @llvm.dbg.value(metadata i32 1, metadata !1687, metadata !DIExpression()) #10, !dbg !3103
  call void @llvm.dbg.value(metadata i8 58, metadata !1688, metadata !DIExpression()) #10, !dbg !3104
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3105
  call void @llvm.dbg.value(metadata i32* %4, metadata !1689, metadata !DIExpression()) #10, !dbg !3106
  call void @llvm.dbg.value(metadata i32 26, metadata !1691, metadata !DIExpression()) #10, !dbg !3107
  %5 = load i32, i32* %4, align 4, !dbg !3108, !tbaa !849
  %6 = or i32 %5, 67108864, !dbg !3109
  store i32 %6, i32* %4, align 4, !dbg !3109, !tbaa !849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3023, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3099
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3110
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3111
  ret i8* %7, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3113 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #10, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()) #10, !dbg !3121
  call void @llvm.dbg.value(metadata i8 58, metadata !3022, metadata !DIExpression()) #10, !dbg !3122
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3123
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3124, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3023, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1685, metadata !DIExpression()) #10, !dbg !3126
  call void @llvm.dbg.value(metadata i8 58, metadata !1686, metadata !DIExpression()) #10, !dbg !3128
  call void @llvm.dbg.value(metadata i32 1, metadata !1687, metadata !DIExpression()) #10, !dbg !3129
  call void @llvm.dbg.value(metadata i8 58, metadata !1688, metadata !DIExpression()) #10, !dbg !3130
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3131
  call void @llvm.dbg.value(metadata i32* %5, metadata !1689, metadata !DIExpression()) #10, !dbg !3132
  call void @llvm.dbg.value(metadata i32 26, metadata !1691, metadata !DIExpression()) #10, !dbg !3133
  %6 = load i32, i32* %5, align 4, !dbg !3134, !tbaa !849
  %7 = or i32 %6, 67108864, !dbg !3135
  store i32 %7, i32* %5, align 4, !dbg !3135, !tbaa !849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3023, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3125
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3136
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3137
  ret i8* %8, !dbg !3138
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3139 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3145
  call void @llvm.dbg.value(metadata i32 %0, metadata !3141, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %1, metadata !3142, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8* %2, metadata !3143, metadata !DIExpression()), !dbg !3149
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3150
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3151
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3151
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()) #10, !dbg !3152
  call void @llvm.dbg.value(metadata i32 0, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3145
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3145, !alias.scope !3153
  %8 = icmp eq i32 %1, 10, !dbg !3156
  br i1 %8, label %9, label %10, !dbg !3157

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3158, !noalias !3153
  unreachable, !dbg !3158

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3145
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3151
  store i32 %1, i32* %11, align 8, !dbg !3151
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3151
  %13 = bitcast i32* %12 to i8*, !dbg !3151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3151
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3151
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3144, metadata !DIExpression(DW_OP_deref)), !dbg !3159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1685, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8 58, metadata !1686, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 1, metadata !1687, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8 58, metadata !1688, metadata !DIExpression()), !dbg !3164
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3165
  call void @llvm.dbg.value(metadata i32* %14, metadata !1689, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 26, metadata !1691, metadata !DIExpression()), !dbg !3167
  %15 = load i32, i32* %14, align 4, !dbg !3168, !tbaa !849
  %16 = or i32 %15, 67108864, !dbg !3169
  store i32 %16, i32* %14, align 4, !dbg !3169, !tbaa !849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3144, metadata !DIExpression(DW_OP_deref)), !dbg !3159
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3170
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3171
  ret i8* %17, !dbg !3172
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3173 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3177, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %1, metadata !3178, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8* %2, metadata !3179, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* %3, metadata !3180, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()) #10, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %1, metadata !3190, metadata !DIExpression()) #10, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()) #10, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %3, metadata !3192, metadata !DIExpression()) #10, !dbg !3199
  call void @llvm.dbg.value(metadata i64 -1, metadata !3193, metadata !DIExpression()) #10, !dbg !3200
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3202, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3194, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1733, metadata !DIExpression()) #10, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %1, metadata !1734, metadata !DIExpression()) #10, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %2, metadata !1735, metadata !DIExpression()) #10, !dbg !3207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1733, metadata !DIExpression()) #10, !dbg !3204
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3208
  store i32 10, i32* %7, align 8, !dbg !3209, !tbaa !1666
  %8 = icmp ne i8* %1, null, !dbg !3210
  %9 = icmp ne i8* %2, null, !dbg !3211
  %10 = and i1 %8, %9, !dbg !3212
  br i1 %10, label %12, label %11, !dbg !3212

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3213
  unreachable, !dbg !3213

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3214
  store i8* %1, i8** %13, align 8, !dbg !3215, !tbaa !1751
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3216
  store i8* %2, i8** %14, align 8, !dbg !3217, !tbaa !1754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3194, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3203
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3219
  ret i8* %15, !dbg !3220
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3186 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8* %1, metadata !3190, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %3, metadata !3192, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %4, metadata !3193, metadata !DIExpression()), !dbg !3225
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3227, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3194, metadata !DIExpression(DW_OP_deref)), !dbg !3228
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1733, metadata !DIExpression()) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %1, metadata !1734, metadata !DIExpression()) #10, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %2, metadata !1735, metadata !DIExpression()) #10, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1733, metadata !DIExpression()) #10, !dbg !3229
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3233
  store i32 10, i32* %8, align 8, !dbg !3234, !tbaa !1666
  %9 = icmp ne i8* %1, null, !dbg !3235
  %10 = icmp ne i8* %2, null, !dbg !3236
  %11 = and i1 %9, %10, !dbg !3237
  br i1 %11, label %13, label %12, !dbg !3237

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3238
  unreachable, !dbg !3238

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3239
  store i8* %1, i8** %14, align 8, !dbg !3240, !tbaa !1751
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3241
  store i8* %2, i8** %15, align 8, !dbg !3242, !tbaa !1754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3194, metadata !DIExpression(DW_OP_deref)), !dbg !3228
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3244
  ret i8* %16, !dbg !3245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3246 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %2, metadata !3252, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i32 0, metadata !3177, metadata !DIExpression()) #10, !dbg !3256
  call void @llvm.dbg.value(metadata i8* %0, metadata !3178, metadata !DIExpression()) #10, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %1, metadata !3179, metadata !DIExpression()) #10, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %2, metadata !3180, metadata !DIExpression()) #10, !dbg !3260
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()) #10, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3190, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %1, metadata !3191, metadata !DIExpression()) #10, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %2, metadata !3192, metadata !DIExpression()) #10, !dbg !3265
  call void @llvm.dbg.value(metadata i64 -1, metadata !3193, metadata !DIExpression()) #10, !dbg !3266
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3267
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3268, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3194, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1733, metadata !DIExpression()) #10, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %0, metadata !1734, metadata !DIExpression()) #10, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %1, metadata !1735, metadata !DIExpression()) #10, !dbg !3273
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1733, metadata !DIExpression()) #10, !dbg !3270
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3274
  store i32 10, i32* %6, align 8, !dbg !3275, !tbaa !1666
  %7 = icmp ne i8* %0, null, !dbg !3276
  %8 = icmp ne i8* %1, null, !dbg !3277
  %9 = and i1 %7, %8, !dbg !3278
  br i1 %9, label %11, label %10, !dbg !3278

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3279
  unreachable, !dbg !3279

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3280
  store i8* %0, i8** %12, align 8, !dbg !3281, !tbaa !1751
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3282
  store i8* %1, i8** %13, align 8, !dbg !3283, !tbaa !1754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3194, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3269
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3284
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3285
  ret i8* %14, !dbg !3286
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3287 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3291, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %1, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %2, metadata !3293, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %3, metadata !3294, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()) #10, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %0, metadata !3190, metadata !DIExpression()) #10, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %1, metadata !3191, metadata !DIExpression()) #10, !dbg !3302
  call void @llvm.dbg.value(metadata i8* %2, metadata !3192, metadata !DIExpression()) #10, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %3, metadata !3193, metadata !DIExpression()) #10, !dbg !3304
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3305
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3306, !tbaa.struct !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3194, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1733, metadata !DIExpression()) #10, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %0, metadata !1734, metadata !DIExpression()) #10, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %1, metadata !1735, metadata !DIExpression()) #10, !dbg !3311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1733, metadata !DIExpression()) #10, !dbg !3308
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3312
  store i32 10, i32* %7, align 8, !dbg !3313, !tbaa !1666
  %8 = icmp ne i8* %0, null, !dbg !3314
  %9 = icmp ne i8* %1, null, !dbg !3315
  %10 = and i1 %8, %9, !dbg !3316
  br i1 %10, label %12, label %11, !dbg !3316

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3317
  unreachable, !dbg !3317

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3318
  store i8* %0, i8** %13, align 8, !dbg !3319, !tbaa !1751
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3320
  store i8* %1, i8** %14, align 8, !dbg !3321, !tbaa !1754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3194, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3307
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3323
  ret i8* %15, !dbg !3324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8* %1, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %2, metadata !3331, metadata !DIExpression()), !dbg !3334
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3335
  ret i8* %4, !dbg !3336
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3329, metadata !DIExpression()) #10, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3330, metadata !DIExpression()) #10, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %1, metadata !3331, metadata !DIExpression()) #10, !dbg !3348
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3349
  ret i8* %3, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3351 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %1, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()) #10, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %1, metadata !3330, metadata !DIExpression()) #10, !dbg !3361
  call void @llvm.dbg.value(metadata i64 -1, metadata !3331, metadata !DIExpression()) #10, !dbg !3362
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3363
  ret i8* %3, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3365 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 0, metadata !3355, metadata !DIExpression()) #10, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %0, metadata !3356, metadata !DIExpression()) #10, !dbg !3373
  call void @llvm.dbg.value(metadata i32 0, metadata !3329, metadata !DIExpression()) #10, !dbg !3374
  call void @llvm.dbg.value(metadata i8* %0, metadata !3330, metadata !DIExpression()) #10, !dbg !3376
  call void @llvm.dbg.value(metadata i64 -1, metadata !3331, metadata !DIExpression()) #10, !dbg !3377
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3378
  ret i8* %2, !dbg !3379
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #7 !dbg !3380 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %2, metadata !3387, metadata !DIExpression()), !dbg !3396
  br label %4, !dbg !3397

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3398

; <label>:6:                                      ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3387, metadata !DIExpression()), !dbg !3396
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %7, metadata !3388, metadata !DIExpression()), !dbg !3399
  %8 = icmp sgt i64 %7, -1, !dbg !3400
  br i1 %8, label %17, label %9, !dbg !3402

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #16, !dbg !3403
  %11 = load i32, i32* %10, align 4, !dbg !3403, !tbaa !849
  %12 = icmp eq i32 %11, 4, !dbg !3403
  br i1 %12, label %6, label %13, !dbg !3405, !llvm.loop !3406

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3409
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3411
  %16 = and i1 %15, %14, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %5, metadata !3387, metadata !DIExpression()), !dbg !3396
  br i1 %16, label %4, label %17

; <label>:17:                                     ; preds = %13, %6
  ret i64 %7, !dbg !3413
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8* %1, metadata !3417, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 %2, metadata !3418, metadata !DIExpression()), !dbg !3425
  br label %4, !dbg !3426

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3427

; <label>:6:                                      ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3418, metadata !DIExpression()), !dbg !3425
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #10, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %7, metadata !3419, metadata !DIExpression()), !dbg !3428
  %8 = icmp sgt i64 %7, -1, !dbg !3429
  br i1 %8, label %17, label %9, !dbg !3431

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #16, !dbg !3432
  %11 = load i32, i32* %10, align 4, !dbg !3432, !tbaa !849
  %12 = icmp eq i32 %11, 4, !dbg !3432
  br i1 %12, label %6, label %13, !dbg !3434, !llvm.loop !3435

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3438
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3440
  %16 = and i1 %15, %14, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %5, metadata !3418, metadata !DIExpression()), !dbg !3425
  br i1 %16, label %4, label %17

; <label>:17:                                     ; preds = %13, %6
  ret i64 %7, !dbg !3442
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3443 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3482, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8* %1, metadata !3483, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %2, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %3, metadata !3485, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8** %4, metadata !3486, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %5, metadata !3487, metadata !DIExpression()), !dbg !3493
  %7 = icmp eq i8* %1, null, !dbg !3494
  br i1 %7, label %10, label %8, !dbg !3496

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3497
  br label %12, !dbg !3497

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.95, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3498
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i64 0, i64 0), i32 5) #10, !dbg !3499
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3499
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.97, i64 0, i64 0), i32 5) #10, !dbg !3500
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3500
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
  ], !dbg !3501

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3502
  unreachable, !dbg !3502

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.98, i64 0, i64 0), i32 5) #10, !dbg !3504
  %20 = load i8*, i8** %4, align 8, !dbg !3504, !tbaa !732
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3504
  br label %146, !dbg !3505

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.99, i64 0, i64 0), i32 5) #10, !dbg !3506
  %24 = load i8*, i8** %4, align 8, !dbg !3506, !tbaa !732
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3506
  %26 = load i8*, i8** %25, align 8, !dbg !3506, !tbaa !732
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3506
  br label %146, !dbg !3507

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.100, i64 0, i64 0), i32 5) #10, !dbg !3508
  %30 = load i8*, i8** %4, align 8, !dbg !3508, !tbaa !732
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3508
  %32 = load i8*, i8** %31, align 8, !dbg !3508, !tbaa !732
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3508
  %34 = load i8*, i8** %33, align 8, !dbg !3508, !tbaa !732
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3508
  br label %146, !dbg !3509

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.101, i64 0, i64 0), i32 5) #10, !dbg !3510
  %38 = load i8*, i8** %4, align 8, !dbg !3510, !tbaa !732
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3510
  %40 = load i8*, i8** %39, align 8, !dbg !3510, !tbaa !732
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3510
  %42 = load i8*, i8** %41, align 8, !dbg !3510, !tbaa !732
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3510
  %44 = load i8*, i8** %43, align 8, !dbg !3510, !tbaa !732
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3510
  br label %146, !dbg !3511

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.102, i64 0, i64 0), i32 5) #10, !dbg !3512
  %48 = load i8*, i8** %4, align 8, !dbg !3512, !tbaa !732
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3512
  %50 = load i8*, i8** %49, align 8, !dbg !3512, !tbaa !732
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3512
  %52 = load i8*, i8** %51, align 8, !dbg !3512, !tbaa !732
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3512
  %54 = load i8*, i8** %53, align 8, !dbg !3512, !tbaa !732
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3512
  %56 = load i8*, i8** %55, align 8, !dbg !3512, !tbaa !732
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3512
  br label %146, !dbg !3513

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.103, i64 0, i64 0), i32 5) #10, !dbg !3514
  %60 = load i8*, i8** %4, align 8, !dbg !3514, !tbaa !732
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3514
  %62 = load i8*, i8** %61, align 8, !dbg !3514, !tbaa !732
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3514
  %64 = load i8*, i8** %63, align 8, !dbg !3514, !tbaa !732
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3514
  %66 = load i8*, i8** %65, align 8, !dbg !3514, !tbaa !732
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3514
  %68 = load i8*, i8** %67, align 8, !dbg !3514, !tbaa !732
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3514
  %70 = load i8*, i8** %69, align 8, !dbg !3514, !tbaa !732
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3514
  br label %146, !dbg !3515

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.104, i64 0, i64 0), i32 5) #10, !dbg !3516
  %74 = load i8*, i8** %4, align 8, !dbg !3516, !tbaa !732
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3516
  %76 = load i8*, i8** %75, align 8, !dbg !3516, !tbaa !732
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3516
  %78 = load i8*, i8** %77, align 8, !dbg !3516, !tbaa !732
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3516
  %80 = load i8*, i8** %79, align 8, !dbg !3516, !tbaa !732
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3516
  %82 = load i8*, i8** %81, align 8, !dbg !3516, !tbaa !732
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3516
  %84 = load i8*, i8** %83, align 8, !dbg !3516, !tbaa !732
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3516
  %86 = load i8*, i8** %85, align 8, !dbg !3516, !tbaa !732
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3516
  br label %146, !dbg !3517

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.105, i64 0, i64 0), i32 5) #10, !dbg !3518
  %90 = load i8*, i8** %4, align 8, !dbg !3518, !tbaa !732
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3518
  %92 = load i8*, i8** %91, align 8, !dbg !3518, !tbaa !732
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3518
  %94 = load i8*, i8** %93, align 8, !dbg !3518, !tbaa !732
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3518
  %96 = load i8*, i8** %95, align 8, !dbg !3518, !tbaa !732
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3518
  %98 = load i8*, i8** %97, align 8, !dbg !3518, !tbaa !732
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3518
  %100 = load i8*, i8** %99, align 8, !dbg !3518, !tbaa !732
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3518
  %102 = load i8*, i8** %101, align 8, !dbg !3518, !tbaa !732
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3518
  %104 = load i8*, i8** %103, align 8, !dbg !3518, !tbaa !732
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3518
  br label %146, !dbg !3519

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.106, i64 0, i64 0), i32 5) #10, !dbg !3520
  %108 = load i8*, i8** %4, align 8, !dbg !3520, !tbaa !732
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3520
  %110 = load i8*, i8** %109, align 8, !dbg !3520, !tbaa !732
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3520
  %112 = load i8*, i8** %111, align 8, !dbg !3520, !tbaa !732
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3520
  %114 = load i8*, i8** %113, align 8, !dbg !3520, !tbaa !732
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3520
  %116 = load i8*, i8** %115, align 8, !dbg !3520, !tbaa !732
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3520
  %118 = load i8*, i8** %117, align 8, !dbg !3520, !tbaa !732
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3520
  %120 = load i8*, i8** %119, align 8, !dbg !3520, !tbaa !732
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3520
  %122 = load i8*, i8** %121, align 8, !dbg !3520, !tbaa !732
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3520
  %124 = load i8*, i8** %123, align 8, !dbg !3520, !tbaa !732
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3520
  br label %146, !dbg !3521

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.107, i64 0, i64 0), i32 5) #10, !dbg !3522
  %128 = load i8*, i8** %4, align 8, !dbg !3522, !tbaa !732
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3522
  %130 = load i8*, i8** %129, align 8, !dbg !3522, !tbaa !732
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3522
  %132 = load i8*, i8** %131, align 8, !dbg !3522, !tbaa !732
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3522
  %134 = load i8*, i8** %133, align 8, !dbg !3522, !tbaa !732
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3522
  %136 = load i8*, i8** %135, align 8, !dbg !3522, !tbaa !732
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3522
  %138 = load i8*, i8** %137, align 8, !dbg !3522, !tbaa !732
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3522
  %140 = load i8*, i8** %139, align 8, !dbg !3522, !tbaa !732
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3522
  %142 = load i8*, i8** %141, align 8, !dbg !3522, !tbaa !732
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3522
  %144 = load i8*, i8** %143, align 8, !dbg !3522, !tbaa !732
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3522
  br label %146, !dbg !3523

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3525 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3529, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3530, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8* %2, metadata !3531, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8* %3, metadata !3532, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8** %4, metadata !3533, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 0, metadata !3534, metadata !DIExpression()), !dbg !3540
  br label %6, !dbg !3541

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3543
  call void @llvm.dbg.value(metadata i64 %7, metadata !3534, metadata !DIExpression()), !dbg !3540
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3545
  %9 = load i8*, i8** %8, align 8, !dbg !3545, !tbaa !732
  %10 = icmp eq i8* %9, null, !dbg !3546
  %11 = add i64 %7, 1, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %11, metadata !3534, metadata !DIExpression()), !dbg !3540
  br i1 %10, label %12, label %6, !dbg !3546, !llvm.loop !3548

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3534, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %7, metadata !3534, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %7, metadata !3534, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %7, metadata !3534, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %7, metadata !3534, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %7, metadata !3534, metadata !DIExpression()), !dbg !3540
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3550
  ret void, !dbg !3551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3552 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3563, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i8* %1, metadata !3564, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %2, metadata !3565, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8* %3, metadata !3566, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3567, metadata !DIExpression()), !dbg !3575
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3576
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3576
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3569, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 0, metadata !3568, metadata !DIExpression()), !dbg !3578
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3568, metadata !DIExpression()), !dbg !3578
  %11 = load i32, i32* %8, align 8, !dbg !3579
  %12 = icmp ult i32 %11, 41, !dbg !3579
  br i1 %12, label %13, label %18, !dbg !3579

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3579
  %15 = sext i32 %11 to i64, !dbg !3579
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3579
  %17 = add i32 %11, 8, !dbg !3579
  store i32 %17, i32* %8, align 8, !dbg !3579
  br label %21, !dbg !3579

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3579
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3579
  store i8* %20, i8** %10, align 8, !dbg !3579
  br label %21, !dbg !3579

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3579
  %25 = load i8*, i8** %24, align 8, !dbg !3579
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3582
  store i8* %25, i8** %26, align 16, !dbg !3583, !tbaa !732
  %27 = icmp eq i8* %25, null, !dbg !3584
  br i1 %27, label %30, label %28, !dbg !3585

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 1, metadata !3568, metadata !DIExpression()), !dbg !3578
  %29 = icmp ult i32 %22, 41, !dbg !3579
  br i1 %29, label %35, label %32, !dbg !3579

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3586
  call void @llvm.dbg.value(metadata i64 %31, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %31, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3587
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3588
  ret void, !dbg !3588

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3579
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3579
  store i8* %34, i8** %10, align 8, !dbg !3579
  br label %40, !dbg !3579

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3579
  %37 = sext i32 %22 to i64, !dbg !3579
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3579
  %39 = add i32 %22, 8, !dbg !3579
  store i32 %39, i32* %8, align 8, !dbg !3579
  br label %40, !dbg !3579

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3579
  %44 = load i8*, i8** %43, align 8, !dbg !3579
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3582
  store i8* %44, i8** %45, align 8, !dbg !3583, !tbaa !732
  %46 = icmp eq i8* %44, null, !dbg !3584
  br i1 %46, label %30, label %47, !dbg !3585

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 2, metadata !3568, metadata !DIExpression()), !dbg !3578
  %48 = icmp ult i32 %41, 41, !dbg !3579
  br i1 %48, label %52, label %49, !dbg !3579

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3579
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3579
  store i8* %51, i8** %10, align 8, !dbg !3579
  br label %57, !dbg !3579

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3579
  %54 = sext i32 %41 to i64, !dbg !3579
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3579
  %56 = add i32 %41, 8, !dbg !3579
  store i32 %56, i32* %8, align 8, !dbg !3579
  br label %57, !dbg !3579

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3579
  %61 = load i8*, i8** %60, align 8, !dbg !3579
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3582
  store i8* %61, i8** %62, align 16, !dbg !3583, !tbaa !732
  %63 = icmp eq i8* %61, null, !dbg !3584
  br i1 %63, label %30, label %64, !dbg !3585

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 3, metadata !3568, metadata !DIExpression()), !dbg !3578
  %65 = icmp ult i32 %58, 41, !dbg !3579
  br i1 %65, label %69, label %66, !dbg !3579

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3579
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3579
  store i8* %68, i8** %10, align 8, !dbg !3579
  br label %74, !dbg !3579

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3579
  %71 = sext i32 %58 to i64, !dbg !3579
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3579
  %73 = add i32 %58, 8, !dbg !3579
  store i32 %73, i32* %8, align 8, !dbg !3579
  br label %74, !dbg !3579

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3579
  %78 = load i8*, i8** %77, align 8, !dbg !3579
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3582
  store i8* %78, i8** %79, align 8, !dbg !3583, !tbaa !732
  %80 = icmp eq i8* %78, null, !dbg !3584
  br i1 %80, label %30, label %81, !dbg !3585

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 4, metadata !3568, metadata !DIExpression()), !dbg !3578
  %82 = icmp ult i32 %75, 41, !dbg !3579
  br i1 %82, label %86, label %83, !dbg !3579

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3579
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3579
  store i8* %85, i8** %10, align 8, !dbg !3579
  br label %91, !dbg !3579

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3579
  %88 = sext i32 %75 to i64, !dbg !3579
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3579
  %90 = add i32 %75, 8, !dbg !3579
  store i32 %90, i32* %8, align 8, !dbg !3579
  br label %91, !dbg !3579

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3579
  %95 = load i8*, i8** %94, align 8, !dbg !3579
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3582
  store i8* %95, i8** %96, align 16, !dbg !3583, !tbaa !732
  %97 = icmp eq i8* %95, null, !dbg !3584
  br i1 %97, label %30, label %98, !dbg !3585

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 5, metadata !3568, metadata !DIExpression()), !dbg !3578
  %99 = icmp ult i32 %92, 41, !dbg !3579
  br i1 %99, label %103, label %100, !dbg !3579

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3579
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3579
  store i8* %102, i8** %10, align 8, !dbg !3579
  br label %108, !dbg !3579

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3579
  %105 = sext i32 %92 to i64, !dbg !3579
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3579
  %107 = add i32 %92, 8, !dbg !3579
  store i32 %107, i32* %8, align 8, !dbg !3579
  br label %108, !dbg !3579

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3579
  %111 = load i8*, i8** %110, align 8, !dbg !3579
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3582
  store i8* %111, i8** %112, align 8, !dbg !3583, !tbaa !732
  %113 = icmp eq i8* %111, null, !dbg !3584
  br i1 %113, label %30, label %114, !dbg !3585

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 6, metadata !3568, metadata !DIExpression()), !dbg !3578
  %115 = load i8*, i8** %10, align 8, !dbg !3579
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3579
  store i8* %116, i8** %10, align 8, !dbg !3579
  %117 = bitcast i8* %115 to i8**, !dbg !3579
  %118 = load i8*, i8** %117, align 8, !dbg !3579
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3582
  store i8* %118, i8** %119, align 16, !dbg !3583, !tbaa !732
  %120 = icmp eq i8* %118, null, !dbg !3584
  br i1 %120, label %30, label %121, !dbg !3585

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 7, metadata !3568, metadata !DIExpression()), !dbg !3578
  %122 = load i8*, i8** %10, align 8, !dbg !3579
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3579
  store i8* %123, i8** %10, align 8, !dbg !3579
  %124 = bitcast i8* %122 to i8**, !dbg !3579
  %125 = load i8*, i8** %124, align 8, !dbg !3579
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3582
  store i8* %125, i8** %126, align 8, !dbg !3583, !tbaa !732
  %127 = icmp eq i8* %125, null, !dbg !3584
  br i1 %127, label %30, label %128, !dbg !3585

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 8, metadata !3568, metadata !DIExpression()), !dbg !3578
  %129 = load i8*, i8** %10, align 8, !dbg !3579
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3579
  store i8* %130, i8** %10, align 8, !dbg !3579
  %131 = bitcast i8* %129 to i8**, !dbg !3579
  %132 = load i8*, i8** %131, align 8, !dbg !3579
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3582
  store i8* %132, i8** %133, align 16, !dbg !3583, !tbaa !732
  %134 = icmp eq i8* %132, null, !dbg !3584
  br i1 %134, label %30, label %135, !dbg !3585

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3568, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 9, metadata !3568, metadata !DIExpression()), !dbg !3578
  %136 = load i8*, i8** %10, align 8, !dbg !3579
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3579
  store i8* %137, i8** %10, align 8, !dbg !3579
  %138 = bitcast i8* %136 to i8**, !dbg !3579
  %139 = load i8*, i8** %138, align 8, !dbg !3579
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3582
  store i8* %139, i8** %140, align 8, !dbg !3583, !tbaa !732
  %141 = icmp eq i8* %139, null, !dbg !3584
  %142 = select i1 %141, i64 9, i64 10, !dbg !3585
  br label %30, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3589 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3593, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8* %2, metadata !3595, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %3, metadata !3596, metadata !DIExpression()), !dbg !3606
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3607
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3607
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3597, metadata !DIExpression()), !dbg !3608
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3609
  call void @llvm.va_start(i8* nonnull %6), !dbg !3609
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3610
  call void @llvm.va_end(i8* nonnull %6), !dbg !3611
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3612
  ret void, !dbg !3612
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3613 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.110, i64 0, i64 0), i32 5) #10, !dbg !3614
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.111, i64 0, i64 0)) #10, !dbg !3614
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.112, i64 0, i64 0), i32 5) #10, !dbg !3615
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.113, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.114, i64 0, i64 0)) #10, !dbg !3615
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.115, i64 0, i64 0), i32 5) #10, !dbg !3616
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3616, !tbaa !732
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3616
  ret void, !dbg !3617
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3618 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3622, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %1, metadata !3623, metadata !DIExpression()), !dbg !3625
  %3 = udiv i64 9223372036854775807, %1, !dbg !3626
  %4 = icmp ult i64 %3, %0, !dbg !3626
  br i1 %4, label %5, label %6, !dbg !3628

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3629
  unreachable, !dbg !3629

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %7, metadata !3631, metadata !DIExpression()) #10, !dbg !3638
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %8, metadata !3637, metadata !DIExpression()) #10, !dbg !3641
  %9 = icmp eq i8* %8, null, !dbg !3642
  %10 = icmp ne i64 %7, 0, !dbg !3644
  %11 = and i1 %10, %9, !dbg !3645
  br i1 %11, label %12, label %13, !dbg !3645

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3646
  unreachable, !dbg !3646

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3647
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3632 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3648
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %2, metadata !3637, metadata !DIExpression()), !dbg !3650
  %3 = icmp eq i8* %2, null, !dbg !3651
  %4 = icmp ne i64 %0, 0, !dbg !3652
  %5 = and i1 %4, %3, !dbg !3653
  br i1 %5, label %6, label %7, !dbg !3653

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3654
  unreachable, !dbg !3654

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3655
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3660, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3661, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %2, metadata !3662, metadata !DIExpression()), !dbg !3665
  %4 = udiv i64 9223372036854775807, %2, !dbg !3666
  %5 = icmp ult i64 %4, %1, !dbg !3666
  br i1 %5, label %6, label %7, !dbg !3668

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3669
  unreachable, !dbg !3669

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()) #10, !dbg !3677
  call void @llvm.dbg.value(metadata i64 %8, metadata !3676, metadata !DIExpression()) #10, !dbg !3679
  %9 = icmp eq i64 %8, 0, !dbg !3680
  %10 = icmp ne i8* %0, null, !dbg !3682
  %11 = and i1 %10, %9, !dbg !3683
  br i1 %11, label %12, label %13, !dbg !3683

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3684
  br label %19, !dbg !3686

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3687
  call void @llvm.dbg.value(metadata i8* %14, metadata !3671, metadata !DIExpression()) #10, !dbg !3677
  %15 = icmp eq i8* %14, null, !dbg !3688
  %16 = icmp ne i64 %8, 0, !dbg !3690
  %17 = and i1 %16, %15, !dbg !3691
  br i1 %17, label %18, label %19, !dbg !3691

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3692
  unreachable, !dbg !3692

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3693
  ret i8* %20, !dbg !3694
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3672 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %1, metadata !3676, metadata !DIExpression()), !dbg !3696
  %3 = icmp eq i64 %1, 0, !dbg !3697
  %4 = icmp ne i8* %0, null, !dbg !3698
  %5 = and i1 %4, %3, !dbg !3699
  br i1 %5, label %6, label %7, !dbg !3699

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3700
  br label %13, !dbg !3701

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %8, metadata !3671, metadata !DIExpression()), !dbg !3695
  %9 = icmp eq i8* %8, null, !dbg !3703
  %10 = icmp ne i64 %1, 0, !dbg !3704
  %11 = and i1 %10, %9, !dbg !3705
  br i1 %11, label %12, label %13, !dbg !3705

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3706
  unreachable, !dbg !3706

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3707
  ret i8* %14, !dbg !3708
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !280, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64* %1, metadata !281, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %2, metadata !282, metadata !DIExpression()), !dbg !3711
  %4 = load i64, i64* %1, align 8, !dbg !3712, !tbaa !2709
  call void @llvm.dbg.value(metadata i64 %4, metadata !283, metadata !DIExpression()), !dbg !3713
  %5 = icmp eq i8* %0, null, !dbg !3714
  br i1 %5, label %6, label %20, !dbg !3716

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3717
  br i1 %7, label %8, label %13, !dbg !3720

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %9, metadata !283, metadata !DIExpression()), !dbg !3713
  %10 = icmp ugt i64 %2, 128, !dbg !3723
  %11 = zext i1 %10 to i64, !dbg !3723
  %12 = add nuw nsw i64 %9, %11, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %12, metadata !283, metadata !DIExpression()), !dbg !3713
  br label %13, !dbg !3725

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3726
  call void @llvm.dbg.value(metadata i64 %14, metadata !283, metadata !DIExpression()), !dbg !3713
  %15 = udiv i64 9223372036854775807, %2, !dbg !3727
  %16 = icmp ult i64 %15, %14, !dbg !3727
  br i1 %16, label %19, label %17, !dbg !3729

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !283, metadata !DIExpression()), !dbg !3713
  store i64 %14, i64* %1, align 8, !dbg !3730, !tbaa !2709
  %18 = mul i64 %14, %2, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()) #10, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %28, metadata !3676, metadata !DIExpression()) #10, !dbg !3734
  br label %31, !dbg !3735

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3736
  unreachable, !dbg !3736

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3737
  %22 = icmp ugt i64 %21, %4, !dbg !3740
  br i1 %22, label %24, label %23, !dbg !3741

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3742
  unreachable, !dbg !3742

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3743
  %26 = add i64 %4, 1, !dbg !3744
  %27 = add i64 %26, %25, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %27, metadata !283, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 %27, metadata !283, metadata !DIExpression()), !dbg !3713
  store i64 %27, i64* %1, align 8, !dbg !3730, !tbaa !2709
  %28 = mul i64 %27, %2, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()) #10, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %28, metadata !3676, metadata !DIExpression()) #10, !dbg !3734
  %29 = icmp eq i64 %28, 0, !dbg !3746
  br i1 %29, label %30, label %31, !dbg !3735

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3747
  br label %38, !dbg !3748

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %33, metadata !3671, metadata !DIExpression()) #10, !dbg !3732
  %34 = icmp eq i8* %33, null, !dbg !3750
  %35 = icmp ne i64 %32, 0, !dbg !3751
  %36 = and i1 %35, %34, !dbg !3752
  br i1 %36, label %37, label %38, !dbg !3752

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3753
  unreachable, !dbg !3753

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3754
  ret i8* %39, !dbg !3755
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3756 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()) #10, !dbg !3760
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %2, metadata !3637, metadata !DIExpression()) #10, !dbg !3763
  %3 = icmp eq i8* %2, null, !dbg !3764
  %4 = icmp ne i64 %0, 0, !dbg !3765
  %5 = and i1 %4, %3, !dbg !3766
  br i1 %5, label %6, label %7, !dbg !3766

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3767
  unreachable, !dbg !3767

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3768
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64* %1, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %0, metadata !280, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata i64* %1, metadata !281, metadata !DIExpression()) #10, !dbg !3779
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()) #10, !dbg !3780
  %3 = load i64, i64* %1, align 8, !dbg !3781, !tbaa !2709
  call void @llvm.dbg.value(metadata i64 %3, metadata !283, metadata !DIExpression()) #10, !dbg !3782
  %4 = icmp eq i8* %0, null, !dbg !3783
  br i1 %4, label %5, label %12, !dbg !3784

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3785
  br i1 %6, label %9, label %7, !dbg !3786

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !283, metadata !DIExpression()) #10, !dbg !3782
  %8 = icmp slt i64 %3, 0, !dbg !3787
  br i1 %8, label %11, label %9, !dbg !3788

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !283, metadata !DIExpression()) #10, !dbg !3782
  store i64 %10, i64* %1, align 8, !dbg !3789, !tbaa !2709
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()) #10, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %18, metadata !3676, metadata !DIExpression()) #10, !dbg !3792
  br label %21, !dbg !3793

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3794
  unreachable, !dbg !3794

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3795
  br i1 %13, label %15, label %14, !dbg !3796

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3797
  unreachable, !dbg !3797

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3798
  %17 = add i64 %3, 1, !dbg !3799
  %18 = add i64 %17, %16, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %18, metadata !283, metadata !DIExpression()) #10, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %18, metadata !283, metadata !DIExpression()) #10, !dbg !3782
  store i64 %18, i64* %1, align 8, !dbg !3789, !tbaa !2709
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()) #10, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %18, metadata !3676, metadata !DIExpression()) #10, !dbg !3792
  %19 = icmp eq i64 %18, 0, !dbg !3801
  br i1 %19, label %20, label %21, !dbg !3793

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3802
  br label %28, !dbg !3803

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3804
  call void @llvm.dbg.value(metadata i8* %23, metadata !3671, metadata !DIExpression()) #10, !dbg !3790
  %24 = icmp eq i8* %23, null, !dbg !3805
  %25 = icmp ne i64 %22, 0, !dbg !3806
  %26 = and i1 %25, %24, !dbg !3807
  br i1 %26, label %27, label %28, !dbg !3807

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3808
  unreachable, !dbg !3808

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3809
  ret i8* %29, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3811 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()) #10, !dbg !3815
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %2, metadata !3637, metadata !DIExpression()) #10, !dbg !3818
  %3 = icmp eq i8* %2, null, !dbg !3819
  %4 = icmp ne i64 %0, 0, !dbg !3820
  %5 = and i1 %4, %3, !dbg !3821
  br i1 %5, label %6, label %7, !dbg !3821

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3822
  unreachable, !dbg !3822

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3823
  ret i8* %2, !dbg !3824
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3825 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %1, metadata !3828, metadata !DIExpression()), !dbg !3831
  %3 = udiv i64 9223372036854775807, %1, !dbg !3832
  %4 = icmp ult i64 %3, %0, !dbg !3832
  br i1 %4, label %8, label %5, !dbg !3834

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %6, metadata !3829, metadata !DIExpression()), !dbg !3836
  %7 = icmp eq i8* %6, null, !dbg !3837
  br i1 %7, label %8, label %9, !dbg !3838

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3839
  unreachable, !dbg !3839

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3841 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3843, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %1, metadata !3844, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()) #10, !dbg !3847
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %3, metadata !3637, metadata !DIExpression()) #10, !dbg !3850
  %4 = icmp eq i8* %3, null, !dbg !3851
  %5 = icmp ne i64 %1, 0, !dbg !3852
  %6 = and i1 %5, %4, !dbg !3853
  br i1 %6, label %7, label %8, !dbg !3853

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3854
  unreachable, !dbg !3854

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3855
  ret i8* %3, !dbg !3856
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3859, metadata !DIExpression()), !dbg !3860
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3861
  %3 = add i64 %2, 1, !dbg !3862
  call void @llvm.dbg.value(metadata i8* %0, metadata !3843, metadata !DIExpression()) #10, !dbg !3863
  call void @llvm.dbg.value(metadata i64 %3, metadata !3844, metadata !DIExpression()) #10, !dbg !3865
  call void @llvm.dbg.value(metadata i64 %3, metadata !3631, metadata !DIExpression()) #10, !dbg !3866
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3868
  call void @llvm.dbg.value(metadata i8* %4, metadata !3637, metadata !DIExpression()) #10, !dbg !3869
  %5 = icmp eq i8* %4, null, !dbg !3870
  %6 = icmp ne i64 %3, 0, !dbg !3871
  %7 = and i1 %6, %5, !dbg !3872
  br i1 %7, label %8, label %9, !dbg !3872

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3873
  unreachable, !dbg !3873

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3874
  ret i8* %4, !dbg !3875
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3876 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3878, !tbaa !849
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.126, i64 0, i64 0), i32 5) #10, !dbg !3879
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i64 0, i64 0), i8* %2) #10, !dbg !3880
  tail call void @abort() #15, !dbg !3881
  unreachable, !dbg !3881
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3882 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3885, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %1, metadata !3886, metadata !DIExpression()), !dbg !3892
  %3 = icmp eq i64 %0, 0, !dbg !3893
  %4 = icmp eq i64 %1, 0, !dbg !3894
  %5 = or i1 %3, %4, !dbg !3895
  br i1 %5, label %12, label %6, !dbg !3895

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %7, metadata !3888, metadata !DIExpression()), !dbg !3897
  %8 = udiv i64 %7, %1, !dbg !3898
  %9 = icmp eq i64 %8, %0, !dbg !3900
  br i1 %9, label %12, label %10, !dbg !3901

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #16, !dbg !3902
  store i32 12, i32* %11, align 4, !dbg !3904, !tbaa !849
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3885, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %13, metadata !3886, metadata !DIExpression()), !dbg !3892
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3905
  call void @llvm.dbg.value(metadata i8* %15, metadata !3887, metadata !DIExpression()), !dbg !3906
  br label %16, !dbg !3907

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3908
  ret i8* %17, !dbg !3909
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3910 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3927, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8* %1, metadata !3928, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %2, metadata !3929, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3930, metadata !DIExpression()), !dbg !3939
  %6 = bitcast i32* %5 to i8*, !dbg !3940
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3940
  %7 = icmp eq i32* %0, null, !dbg !3941
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3943
  call void @llvm.dbg.value(metadata i32* %8, metadata !3927, metadata !DIExpression()), !dbg !3936
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %9, metadata !3931, metadata !DIExpression()), !dbg !3945
  %10 = icmp ugt i64 %9, -3, !dbg !3946
  %11 = icmp ne i64 %2, 0, !dbg !3947
  %12 = and i1 %11, %10, !dbg !3948
  br i1 %12, label %13, label %18, !dbg !3948

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3949
  br i1 %14, label %18, label %15, !dbg !3950

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3951, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %16, metadata !3933, metadata !DIExpression()), !dbg !3952
  %17 = zext i8 %16 to i32, !dbg !3953
  store i32 %17, i32* %8, align 4, !dbg !3954, !tbaa !849
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3955
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3956
  ret i64 %19, !dbg !3956
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3957 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3996, metadata !DIExpression()), !dbg !4001
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4002
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4003, metadata !DIExpression()), !dbg !4007
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4009
  %4 = load i32, i32* %3, align 8, !dbg !4009, !tbaa !4010
  %5 = and i32 %4, 32, !dbg !4009
  %6 = icmp eq i32 %5, 0, !dbg !4012
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4013
  %8 = icmp ne i32 %7, 0, !dbg !4014
  br i1 %6, label %9, label %19, !dbg !4015

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4017
  %11 = xor i1 %8, true, !dbg !4018
  %12 = or i1 %10, %11, !dbg !4018
  %13 = sext i1 %8 to i32, !dbg !4018
  br i1 %12, label %22, label %14, !dbg !4018

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #16, !dbg !4019
  %16 = load i32, i32* %15, align 4, !dbg !4019, !tbaa !849
  %17 = icmp ne i32 %16, 9, !dbg !4020
  %18 = sext i1 %17 to i32, !dbg !4021
  br label %22, !dbg !4021

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4022

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #16, !dbg !4024
  store i32 0, i32* %21, align 4, !dbg !4026, !tbaa !849
  br label %22, !dbg !4024

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4027
  ret i32 %23, !dbg !4028
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i8 1, metadata !4035, metadata !DIExpression()), !dbg !4038
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4039
  call void @llvm.dbg.value(metadata i8* %2, metadata !4036, metadata !DIExpression()), !dbg !4040
  %3 = icmp eq i8* %2, null, !dbg !4041
  br i1 %3, label %11, label %4, !dbg !4043

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0)) #14, !dbg !4044
  %6 = icmp eq i32 %5, 0, !dbg !4049
  br i1 %6, label %10, label %7, !dbg !4050

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0)) #14, !dbg !4051
  %9 = icmp eq i32 %8, 0, !dbg !4052
  br i1 %9, label %10, label %11, !dbg !4053

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4035, metadata !DIExpression()), !dbg !4038
  br label %11, !dbg !4054

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4056 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4062
  call void @llvm.dbg.value(metadata i8* %1, metadata !4061, metadata !DIExpression()), !dbg !4063
  %2 = icmp eq i8* %1, null, !dbg !4064
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), i8* %1, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %3, metadata !4061, metadata !DIExpression()), !dbg !4063
  %4 = load i8, i8* %3, align 1, !dbg !4067, !tbaa !1178
  %5 = icmp eq i8 %4, 0, !dbg !4071
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i8* %3, !dbg !4072
  call void @llvm.dbg.value(metadata i8* %6, metadata !4061, metadata !DIExpression()), !dbg !4063
  ret i8* %6, !dbg !4073
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4074 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4113, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i32 0, metadata !4114, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4116, metadata !DIExpression()), !dbg !4119
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %2, metadata !4115, metadata !DIExpression()), !dbg !4121
  %3 = icmp slt i32 %2, 0, !dbg !4122
  br i1 %3, label %4, label %6, !dbg !4124

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4125
  br label %24, !dbg !4126

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4127
  %8 = icmp eq i32 %7, 0, !dbg !4127
  br i1 %8, label %13, label %9, !dbg !4129

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4130
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4131
  %12 = icmp eq i64 %11, -1, !dbg !4132
  br i1 %12, label %16, label %13, !dbg !4133

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4134
  %15 = icmp eq i32 %14, 0, !dbg !4134
  br i1 %15, label %16, label %18, !dbg !4135

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4114, metadata !DIExpression()), !dbg !4118
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4136
  call void @llvm.dbg.value(metadata i32 %21, metadata !4116, metadata !DIExpression()), !dbg !4119
  br label %24, !dbg !4137

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #16, !dbg !4138
  %20 = load i32, i32* %19, align 4, !dbg !4138, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %20, metadata !4114, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 %20, metadata !4114, metadata !DIExpression()), !dbg !4118
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4136
  call void @llvm.dbg.value(metadata i32 %21, metadata !4116, metadata !DIExpression()), !dbg !4119
  %22 = icmp eq i32 %20, 0, !dbg !4139
  br i1 %22, label %24, label %23, !dbg !4137

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4141, !tbaa !849
  call void @llvm.dbg.value(metadata i32 -1, metadata !4116, metadata !DIExpression()), !dbg !4119
  br label %24, !dbg !4143

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4144
  ret i32 %25, !dbg !4145
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4146 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4185, metadata !DIExpression()), !dbg !4186
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4187
  br i1 %2, label %6, label %3, !dbg !4189

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4190
  %5 = icmp eq i32 %4, 0, !dbg !4190
  br i1 %5, label %6, label %8, !dbg !4191

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4192
  br label %17, !dbg !4193

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4194, metadata !DIExpression()) #10, !dbg !4199
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4201
  %10 = load i32, i32* %9, align 8, !dbg !4201, !tbaa !4010
  %11 = and i32 %10, 256, !dbg !4203
  %12 = icmp eq i32 %11, 0, !dbg !4203
  br i1 %12, label %15, label %13, !dbg !4204

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4205
  br label %15, !dbg !4205

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4206
  br label %17, !dbg !4207

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4208
  ret i32 %18, !dbg !4209
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4210 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4249, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %1, metadata !4250, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i32 %2, metadata !4251, metadata !DIExpression()), !dbg !4257
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4258
  %5 = load i8*, i8** %4, align 8, !dbg !4258, !tbaa !4259
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4260
  %7 = load i8*, i8** %6, align 8, !dbg !4260, !tbaa !4261
  %8 = icmp eq i8* %5, %7, !dbg !4262
  br i1 %8, label %9, label %28, !dbg !4263

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4264
  %11 = load i8*, i8** %10, align 8, !dbg !4264, !tbaa !4265
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4266
  %13 = load i8*, i8** %12, align 8, !dbg !4266, !tbaa !4267
  %14 = icmp eq i8* %11, %13, !dbg !4268
  br i1 %14, label %15, label %28, !dbg !4269

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4270
  %17 = load i8*, i8** %16, align 8, !dbg !4270, !tbaa !4271
  %18 = icmp eq i8* %17, null, !dbg !4272
  br i1 %18, label %19, label %28, !dbg !4273

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4274
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4275
  call void @llvm.dbg.value(metadata i64 %21, metadata !4252, metadata !DIExpression()), !dbg !4276
  %22 = icmp eq i64 %21, -1, !dbg !4277
  br i1 %22, label %30, label %23, !dbg !4279

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4280
  %25 = load i32, i32* %24, align 8, !dbg !4281, !tbaa !4010
  %26 = and i32 %25, -17, !dbg !4281
  store i32 %26, i32* %24, align 8, !dbg !4281, !tbaa !4010
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4282
  store i64 %21, i64* %27, align 8, !dbg !4283, !tbaa !4284
  br label %30, !dbg !4285

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4286
  br label %30, !dbg !4287

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4288
  ret i32 %31, !dbg !4289
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
attributes #16 = { nounwind readnone }
attributes #17 = { noreturn }
attributes #18 = { cold }

!llvm.dbg.cu = !{!10, !145, !151, !159, !247, !250, !166, !173, !253, !260, !262, !240, !270, !287, !289, !291, !294, !296, !298, !687, !689, !691}
!llvm.ident = !{!693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693, !693}
!llvm.module.flags = !{!694, !695, !696, !697, !698}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 548, type: !131, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 503, type: !4, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !65)
!3 = !DIFile(filename: "src/cat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !40, globals: !45)
!11 = !{!12, !27, !36}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 45, baseType: !14, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 73, baseType: !14, size: 32, elements: !38)
!37 = !DIFile(filename: "src/ioblksize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!38 = !{!39}
!39 = !DIEnumerator(name: "IO_BUFSIZE", value: 131072, isUnsigned: true)
!40 = !{!8, !41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 62, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !{!0, !46, !50, !52, !54, !56, !58, !63}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "infile", scope: !10, file: !3, line: 52, type: !48, isLocal: true, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "input_desc", scope: !10, file: !3, line: 55, type: !6, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "newlines2", scope: !10, file: !3, line: 79, type: !6, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "line_num_end", scope: !10, file: !3, line: 76, type: !8, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "line_num_start", scope: !10, file: !3, line: 73, type: !8, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "line_buf", scope: !10, file: !3, line: 61, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 20)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "line_num_print", scope: !10, file: !3, line: 70, type: !8, isLocal: true, isDefinition: true)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !75, !76, !77, !82, !85, !86, !87, !124, !125, !126, !127, !128, !129, !130}
!66 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 503, type: !6)
!67 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 503, type: !7)
!68 = !DILocalVariable(name: "outsize", scope: !2, file: !3, line: 506, type: !42)
!69 = !DILocalVariable(name: "insize", scope: !2, file: !3, line: 509, type: !42)
!70 = !DILocalVariable(name: "page_size", scope: !2, file: !3, line: 511, type: !42)
!71 = !DILocalVariable(name: "inbuf", scope: !2, file: !3, line: 514, type: !8)
!72 = !DILocalVariable(name: "outbuf", scope: !2, file: !3, line: 517, type: !8)
!73 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 519, type: !74)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 520, type: !6)
!76 = !DILocalVariable(name: "argind", scope: !2, file: !3, line: 523, type: !6)
!77 = !DILocalVariable(name: "out_dev", scope: !2, file: !3, line: 526, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !79, line: 59, baseType: !80)
!79 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !81, line: 143, baseType: !44)
!81 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!82 = !DILocalVariable(name: "out_ino", scope: !2, file: !3, line: 529, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !79, line: 47, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !81, line: 146, baseType: !44)
!85 = !DILocalVariable(name: "out_isreg", scope: !2, file: !3, line: 532, type: !74)
!86 = !DILocalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 535, type: !74)
!87 = !DILocalVariable(name: "stat_buf", scope: !2, file: !3, line: 537, type: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !89, line: 46, size: 1152, elements: !90)
!89 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!90 = !{!91, !92, !93, !95, !97, !99, !101, !102, !103, !106, !108, !110, !118, !119, !120}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !88, file: !89, line: 48, baseType: !80, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !88, file: !89, line: 53, baseType: !84, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !88, file: !89, line: 61, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !81, line: 149, baseType: !44)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !88, file: !89, line: 62, baseType: !96, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !81, line: 148, baseType: !14)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !88, file: !89, line: 64, baseType: !98, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !81, line: 144, baseType: !14)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !88, file: !89, line: 65, baseType: !100, size: 32, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !81, line: 145, baseType: !14)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !88, file: !89, line: 67, baseType: !6, size: 32, offset: 288)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !88, file: !89, line: 69, baseType: !80, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !88, file: !89, line: 74, baseType: !104, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !81, line: 150, baseType: !105)
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !88, file: !89, line: 78, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !81, line: 172, baseType: !105)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !88, file: !89, line: 80, baseType: !109, size: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !81, line: 177, baseType: !105)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !88, file: !89, line: 91, baseType: !111, size: 128, offset: 576)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !112, line: 9, size: 128, elements: !113)
!112 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !111, file: !112, line: 11, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !81, line: 158, baseType: !105)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !111, file: !112, line: 12, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !81, line: 194, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !88, file: !89, line: 92, baseType: !111, size: 128, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !88, file: !89, line: 93, baseType: !111, size: 128, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !88, file: !89, line: 106, baseType: !121, size: 192, offset: 960)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 192, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DILocalVariable(name: "number", scope: !2, file: !3, line: 540, type: !74)
!125 = !DILocalVariable(name: "number_nonblank", scope: !2, file: !3, line: 541, type: !74)
!126 = !DILocalVariable(name: "squeeze_blank", scope: !2, file: !3, line: 542, type: !74)
!127 = !DILocalVariable(name: "show_ends", scope: !2, file: !3, line: 543, type: !74)
!128 = !DILocalVariable(name: "show_nonprinting", scope: !2, file: !3, line: 544, type: !74)
!129 = !DILocalVariable(name: "show_tabs", scope: !2, file: !3, line: 545, type: !74)
!130 = !DILocalVariable(name: "file_open_mode", scope: !2, file: !3, line: 546, type: !6)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 2560, elements: !141)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !134, line: 50, size: 256, elements: !135)
!134 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!135 = !{!136, !137, !138, !140}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 52, baseType: !48, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !133, file: !134, line: 55, baseType: !6, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !133, file: !134, line: 56, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !133, file: !134, line: 57, baseType: !6, size: 32, offset: 192)
!141 = !{!142}
!142 = !DISubrange(count: 10)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "Version", scope: !145, file: !146, line: 2, type: !48, isLocal: false, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, globals: !148)
!146 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!147 = !{}
!148 = !{!143}
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "file_name", scope: !151, file: !156, line: 46, type: !48, isLocal: true, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, globals: !153)
!152 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!153 = !{!149, !154}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !151, file: !156, line: 56, type: !74, isLocal: true, isDefinition: true)
!156 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "exit_failure", scope: !159, file: !162, line: 24, type: !163, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, globals: !161)
!160 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !{!157}
!162 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "program_name", scope: !166, file: !170, line: 33, type: !48, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !168, globals: !169)
!167 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = !{!41, !8}
!169 = !{!164}
!170 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !173, file: !201, line: 85, type: !234, isLocal: false, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !196, globals: !198)
!174 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!12, !176, !181}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, baseType: !14, size: 32, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 46, baseType: !14, size: 32, elements: !183)
!182 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!184 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!185 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!186 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!187 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!188 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!189 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!190 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!191 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!192 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!195 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!196 = !{!6, !197, !42, !8}
!197 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!198 = !{!171, !199, !204, !216, !218, !223, !230, !232}
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !173, file: !201, line: 101, type: !202, isLocal: false, isDefinition: true)
!201 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 320, elements: !141)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !173, file: !201, line: 1052, type: !206, isLocal: false, isDefinition: true)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !201, line: 65, size: 448, elements: !207)
!207 = !{!208, !209, !210, !214, !215}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !206, file: !201, line: 68, baseType: !12, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !201, line: 71, baseType: !6, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !206, file: !201, line: 75, baseType: !211, size: 256, offset: 64)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !206, file: !201, line: 78, baseType: !48, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !206, file: !201, line: 81, baseType: !48, size: 64, offset: 384)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !173, file: !201, line: 116, type: !206, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "slot0", scope: !173, file: !201, line: 842, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 256)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "slotvec", scope: !173, file: !201, line: 845, type: !225, isLocal: true, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !201, line: 834, size: 128, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !226, file: !201, line: 836, baseType: !42, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !226, file: !201, line: 837, baseType: !8, size: 64, offset: 64)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "nslots", scope: !173, file: !201, line: 843, type: !6, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "slotvec0", scope: !173, file: !201, line: 844, type: !226, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 704, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!236 = !{!237}
!237 = !DISubrange(count: 11)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !240, file: !243, line: 26, type: !244, isLocal: false, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, globals: !242)
!241 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!242 = !{!238}
!243 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 376, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 47)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249)
!248 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!249 = !{!27}
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !252)
!251 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!252 = !{!48, !42}
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !255)
!254 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!255 = !{!256}
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 40, baseType: !14, size: 32, elements: !258)
!257 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!258 = !{!259}
!259 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !255)
!261 = !DIFile(filename: "./lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !264, retainedTypes: !269)
!263 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!264 = !{!265}
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 41, baseType: !14, size: 32, elements: !267)
!266 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!267 = !{!268}
!268 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!269 = !{!41}
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, retainedTypes: !286)
!271 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!272 = !{!273}
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !275, file: !274, line: 186, baseType: !14, size: 32, elements: !284)
!274 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!275 = distinct !DISubprogram(name: "x2nrealloc", scope: !274, file: !274, line: 174, type: !276, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !279)
!276 = !DISubroutineType(types: !277)
!277 = !{!41, !41, !278, !42}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!279 = !{!280, !281, !282, !283}
!280 = !DILocalVariable(name: "p", arg: 1, scope: !275, file: !274, line: 174, type: !41)
!281 = !DILocalVariable(name: "pn", arg: 2, scope: !275, file: !274, line: 174, type: !278)
!282 = !DILocalVariable(name: "s", arg: 3, scope: !275, file: !274, line: 174, type: !42)
!283 = !DILocalVariable(name: "n", scope: !275, file: !274, line: 176, type: !42)
!284 = !{!285}
!285 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!286 = !{!42, !8, !41}
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147)
!288 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !269)
!290 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !293)
!292 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!293 = !{!42}
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147)
!295 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147)
!297 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !300, retainedTypes: !269)
!299 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!300 = !{!301}
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !302, line: 41, baseType: !14, size: 32, elements: !303)
!302 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!304 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!305 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!306 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!307 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!308 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!309 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!310 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!311 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!312 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!313 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!314 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!315 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!316 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!317 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!324 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!326 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!327 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!328 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!329 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!336 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!337 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!338 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!339 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!340 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!341 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!342 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!343 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!344 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!345 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!346 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!347 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!348 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!349 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!350 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!351 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!352 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!353 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!412 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!421 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!422 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!423 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!424 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!425 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!426 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!499 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!572 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!573 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!574 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!575 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!576 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!577 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!578 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!579 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!580 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!581 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!582 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!583 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!584 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!585 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!586 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!588 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!590 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!591 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!592 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!593 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!619 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!620 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!621 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!622 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!623 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!628 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!629 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!630 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!631 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147)
!688 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !269)
!690 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !269)
!692 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!693 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!694 = !{i32 2, !"Dwarf Version", i32 4}
!695 = !{i32 2, !"Debug Info Version", i32 3}
!696 = !{i32 1, !"wchar_size", i32 4}
!697 = !{i32 7, !"PIC Level", i32 2}
!698 = !{i32 7, !"PIE Level", i32 2}
!699 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !700, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !10, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !6}
!702 = !{!703}
!703 = !DILocalVariable(name: "status", arg: 1, scope: !699, file: !3, line: 82, type: !6)
!704 = !DILocalVariable(name: "infomap", scope: !705, file: !706, line: 632, type: !720)
!705 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !706, file: !706, line: 630, type: !707, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !709)
!706 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!707 = !DISubroutineType(types: !708)
!708 = !{null, !48}
!709 = !{!710, !704, !711, !712, !719}
!710 = !DILocalVariable(name: "program", arg: 1, scope: !705, file: !706, line: 630, type: !48)
!711 = !DILocalVariable(name: "node", scope: !705, file: !706, line: 642, type: !48)
!712 = !DILocalVariable(name: "map_prog", scope: !705, file: !706, line: 643, type: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !705, file: !706, line: 632, size: 128, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !715, file: !706, line: 632, baseType: !48, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !706, line: 632, baseType: !48, size: 64, offset: 64)
!719 = !DILocalVariable(name: "lc_messages", scope: !705, file: !706, line: 655, type: !48)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 896, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 7)
!723 = !DILocation(line: 632, column: 67, scope: !705, inlinedAt: !724)
!724 = distinct !DILocation(line: 122, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 87, column: 5)
!726 = distinct !DILexicalBlock(scope: !699, file: !3, line: 84, column: 7)
!727 = !DILocation(line: 82, column: 12, scope: !699)
!728 = !DILocation(line: 84, column: 14, scope: !726)
!729 = !DILocation(line: 84, column: 7, scope: !699)
!730 = !DILocation(line: 85, column: 5, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !3, line: 85, column: 5)
!732 = !{!733, !733, i64 0}
!733 = !{!"any pointer", !734, i64 0}
!734 = !{!"omnipotent char", !735, i64 0}
!735 = !{!"Simple C/C++ TBAA"}
!736 = !DILocation(line: 88, column: 7, scope: !725)
!737 = !DILocation(line: 92, column: 7, scope: !725)
!738 = !DILocation(line: 580, column: 3, scope: !739, inlinedAt: !742)
!739 = distinct !DISubprogram(name: "emit_stdin_note", scope: !706, file: !706, line: 578, type: !740, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !147)
!740 = !DISubroutineType(types: !741)
!741 = !{null}
!742 = distinct !DILocation(line: 96, column: 7, scope: !725)
!743 = !DILocation(line: 98, column: 7, scope: !725)
!744 = !DILocation(line: 107, column: 7, scope: !725)
!745 = !DILocation(line: 113, column: 7, scope: !725)
!746 = !DILocation(line: 114, column: 7, scope: !725)
!747 = !DILocation(line: 115, column: 7, scope: !725)
!748 = !DILocation(line: 632, column: 3, scope: !705, inlinedAt: !724)
!749 = !DILocation(line: 643, column: 36, scope: !705, inlinedAt: !724)
!750 = !DILocation(line: 643, column: 25, scope: !705, inlinedAt: !724)
!751 = !DILocation(line: 645, column: 33, scope: !705, inlinedAt: !724)
!752 = !DILocation(line: 645, column: 3, scope: !705, inlinedAt: !724)
!753 = !DILocation(line: 646, column: 13, scope: !705, inlinedAt: !724)
!754 = !DILocation(line: 645, column: 20, scope: !705, inlinedAt: !724)
!755 = !{!756, !733, i64 0}
!756 = !{!"infomap", !733, i64 0, !733, i64 8}
!757 = !DILocation(line: 645, column: 10, scope: !705, inlinedAt: !724)
!758 = !DILocation(line: 645, column: 28, scope: !705, inlinedAt: !724)
!759 = distinct !{!759, !760, !761}
!760 = !DILocation(line: 645, column: 3, scope: !705)
!761 = !DILocation(line: 646, column: 13, scope: !705)
!762 = !DILocation(line: 648, column: 17, scope: !763, inlinedAt: !724)
!763 = distinct !DILexicalBlock(scope: !705, file: !706, line: 648, column: 7)
!764 = !{!756, !733, i64 8}
!765 = !DILocation(line: 648, column: 7, scope: !763, inlinedAt: !724)
!766 = !DILocation(line: 648, column: 7, scope: !705, inlinedAt: !724)
!767 = !DILocation(line: 642, column: 15, scope: !705, inlinedAt: !724)
!768 = !DILocation(line: 651, column: 3, scope: !705, inlinedAt: !724)
!769 = !DILocation(line: 655, column: 29, scope: !705, inlinedAt: !724)
!770 = !DILocation(line: 655, column: 15, scope: !705, inlinedAt: !724)
!771 = !DILocation(line: 656, column: 7, scope: !772, inlinedAt: !724)
!772 = distinct !DILexicalBlock(scope: !705, file: !706, line: 656, column: 7)
!773 = !DILocation(line: 656, column: 19, scope: !772, inlinedAt: !724)
!774 = !DILocation(line: 656, column: 22, scope: !772, inlinedAt: !724)
!775 = !DILocation(line: 656, column: 7, scope: !705, inlinedAt: !724)
!776 = !DILocation(line: 662, column: 7, scope: !777, inlinedAt: !724)
!777 = distinct !DILexicalBlock(scope: !772, file: !706, line: 657, column: 5)
!778 = !DILocation(line: 664, column: 5, scope: !777, inlinedAt: !724)
!779 = !DILocation(line: 665, column: 3, scope: !705, inlinedAt: !724)
!780 = !DILocation(line: 667, column: 3, scope: !705, inlinedAt: !724)
!781 = !DILocation(line: 669, column: 1, scope: !705, inlinedAt: !724)
!782 = !DILocation(line: 124, column: 3, scope: !699)
!783 = !DILocation(line: 503, column: 11, scope: !2)
!784 = !DILocation(line: 503, column: 24, scope: !2)
!785 = !DILocation(line: 511, column: 22, scope: !2)
!786 = !DILocation(line: 511, column: 10, scope: !2)
!787 = !DILocation(line: 519, column: 8, scope: !2)
!788 = !DILocation(line: 535, column: 8, scope: !2)
!789 = !DILocation(line: 537, column: 3, scope: !2)
!790 = !DILocation(line: 540, column: 8, scope: !2)
!791 = !DILocation(line: 541, column: 8, scope: !2)
!792 = !DILocation(line: 542, column: 8, scope: !2)
!793 = !DILocation(line: 543, column: 8, scope: !2)
!794 = !DILocation(line: 544, column: 8, scope: !2)
!795 = !DILocation(line: 545, column: 8, scope: !2)
!796 = !DILocation(line: 546, column: 7, scope: !2)
!797 = !DILocation(line: 563, column: 21, scope: !2)
!798 = !DILocation(line: 563, column: 3, scope: !2)
!799 = !DILocation(line: 564, column: 3, scope: !2)
!800 = !DILocation(line: 565, column: 3, scope: !2)
!801 = !DILocation(line: 566, column: 3, scope: !2)
!802 = !DILocation(line: 572, column: 3, scope: !2)
!803 = !DILocation(line: 576, column: 3, scope: !2)
!804 = !DILocation(line: 0, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 580, column: 9)
!806 = distinct !DILexicalBlock(scope: !2, file: !3, line: 578, column: 5)
!807 = !DILocation(line: 576, column: 15, scope: !2)
!808 = !DILocation(line: 520, column: 7, scope: !2)
!809 = distinct !{!809, !803, !810}
!810 = !DILocation(line: 633, column: 5, scope: !2)
!811 = !DILocation(line: 584, column: 11, scope: !805)
!812 = !DILocation(line: 589, column: 11, scope: !805)
!813 = !DILocation(line: 593, column: 11, scope: !805)
!814 = !DILocation(line: 597, column: 11, scope: !805)
!815 = !DILocation(line: 602, column: 11, scope: !805)
!816 = !DILocation(line: 610, column: 11, scope: !805)
!817 = !DILocation(line: 616, column: 11, scope: !805)
!818 = !DILocation(line: 620, column: 11, scope: !805)
!819 = !DILocation(line: 624, column: 11, scope: !805)
!820 = !DILocation(line: 626, column: 9, scope: !805)
!821 = !DILocation(line: 628, column: 9, scope: !805)
!822 = !DILocation(line: 631, column: 11, scope: !805)
!823 = !DILocation(line: 537, column: 15, scope: !2)
!824 = !DILocalVariable(name: "__fd", arg: 1, scope: !825, file: !826, line: 467, type: !6)
!825 = distinct !DISubprogram(name: "fstat", scope: !826, file: !826, line: 467, type: !827, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !830)
!826 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!827 = !DISubroutineType(types: !828)
!828 = !{!6, !6, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!830 = !{!824, !831}
!831 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !825, file: !826, line: 467, type: !829)
!832 = !DILocation(line: 467, column: 1, scope: !825, inlinedAt: !833)
!833 = distinct !DILocation(line: 637, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !2, file: !3, line: 637, column: 7)
!835 = !DILocalVariable(name: "sb", arg: 1, scope: !836, file: !37, line: 75, type: !88)
!836 = distinct !DISubprogram(name: "io_blksize", scope: !37, file: !37, line: 75, type: !837, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!42, !88}
!839 = !{!835}
!840 = !DILocation(line: 75, column: 25, scope: !836, inlinedAt: !841)
!841 = distinct !DILocation(line: 640, column: 13, scope: !2)
!842 = !DILocation(line: 75, column: 25, scope: !836, inlinedAt: !843)
!843 = distinct !DILocation(line: 687, column: 16, scope: !844)
!844 = distinct !DILexicalBlock(scope: !2, file: !3, line: 659, column: 5)
!845 = !DILocation(line: 469, column: 10, scope: !825, inlinedAt: !833)
!846 = !DILocation(line: 637, column: 40, scope: !834)
!847 = !DILocation(line: 637, column: 7, scope: !2)
!848 = !DILocation(line: 638, column: 5, scope: !834)
!849 = !{!850, !850, i64 0}
!850 = !{!"int", !734, i64 0}
!851 = !DILocation(line: 77, column: 10, scope: !836, inlinedAt: !841)
!852 = !{!853, !854, i64 56}
!853 = !{!"stat", !854, i64 0, !854, i64 8, !854, i64 16, !850, i64 24, !850, i64 28, !850, i64 32, !850, i64 36, !854, i64 40, !854, i64 48, !854, i64 56, !854, i64 64, !855, i64 72, !855, i64 88, !855, i64 104, !734, i64 120}
!854 = !{!"long", !734, i64 0}
!855 = !{!"timespec", !854, i64 0, !854, i64 8}
!856 = !DILocation(line: 506, column: 10, scope: !2)
!857 = !DILocation(line: 641, column: 22, scope: !2)
!858 = !{!853, !854, i64 0}
!859 = !DILocation(line: 526, column: 9, scope: !2)
!860 = !DILocation(line: 642, column: 22, scope: !2)
!861 = !{!853, !854, i64 8}
!862 = !DILocation(line: 529, column: 9, scope: !2)
!863 = !DILocation(line: 643, column: 15, scope: !2)
!864 = !{!853, !850, i64 24}
!865 = !DILocation(line: 645, column: 10, scope: !866)
!866 = distinct !DILexicalBlock(scope: !2, file: !3, line: 645, column: 7)
!867 = !DILocation(line: 655, column: 10, scope: !2)
!868 = !DILocation(line: 656, column: 12, scope: !2)
!869 = !DILocation(line: 523, column: 7, scope: !2)
!870 = !DILocation(line: 658, column: 3, scope: !2)
!871 = !DILocation(line: 0, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 682, column: 9)
!873 = distinct !DILexicalBlock(scope: !844, file: !3, line: 681, column: 11)
!874 = !DILocation(line: 0, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 664, column: 9)
!876 = distinct !DILexicalBlock(scope: !844, file: !3, line: 663, column: 11)
!877 = !DILocation(line: 660, column: 18, scope: !878)
!878 = distinct !DILexicalBlock(scope: !844, file: !3, line: 660, column: 11)
!879 = !DILocation(line: 660, column: 11, scope: !844)
!880 = !DILocation(line: 663, column: 11, scope: !876)
!881 = !DILocation(line: 661, column: 18, scope: !878)
!882 = !DILocation(line: 661, column: 16, scope: !878)
!883 = !DILocation(line: 661, column: 9, scope: !878)
!884 = !DILocation(line: 663, column: 11, scope: !844)
!885 = !DILocation(line: 666, column: 22, scope: !875)
!886 = !DILocation(line: 667, column: 15, scope: !875)
!887 = !DILocation(line: 672, column: 24, scope: !888)
!888 = distinct !DILexicalBlock(scope: !876, file: !3, line: 671, column: 9)
!889 = !DILocation(line: 672, column: 22, scope: !888)
!890 = !DILocation(line: 673, column: 26, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 673, column: 15)
!892 = !DILocation(line: 673, column: 15, scope: !888)
!893 = !DILocation(line: 675, column: 25, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !3, line: 674, column: 13)
!895 = !DILocation(line: 675, column: 38, scope: !894)
!896 = !DILocation(line: 675, column: 15, scope: !894)
!897 = !DILocation(line: 677, column: 15, scope: !894)
!898 = !DILocation(line: 681, column: 18, scope: !873)
!899 = !DILocation(line: 0, scope: !2)
!900 = !DILocation(line: 467, column: 1, scope: !825, inlinedAt: !901)
!901 = distinct !DILocation(line: 681, column: 11, scope: !873)
!902 = !DILocation(line: 469, column: 10, scope: !825, inlinedAt: !901)
!903 = !DILocation(line: 681, column: 41, scope: !873)
!904 = !DILocation(line: 681, column: 11, scope: !844)
!905 = !DILocation(line: 683, column: 21, scope: !872)
!906 = !DILocation(line: 683, column: 34, scope: !872)
!907 = !DILocation(line: 683, column: 11, scope: !872)
!908 = !DILocation(line: 685, column: 11, scope: !872)
!909 = !DILocation(line: 77, column: 10, scope: !836, inlinedAt: !843)
!910 = !DILocation(line: 509, column: 10, scope: !2)
!911 = !DILocation(line: 689, column: 17, scope: !844)
!912 = !DILocation(line: 689, column: 7, scope: !844)
!913 = !DILocation(line: 696, column: 23, scope: !914)
!914 = distinct !DILexicalBlock(scope: !844, file: !3, line: 695, column: 11)
!915 = !DILocation(line: 696, column: 30, scope: !914)
!916 = !DILocation(line: 696, column: 11, scope: !914)
!917 = !DILocation(line: 696, column: 53, scope: !914)
!918 = !DILocation(line: 696, column: 60, scope: !914)
!919 = !DILocation(line: 697, column: 21, scope: !914)
!920 = !DILocation(line: 697, column: 14, scope: !914)
!921 = !DILocation(line: 697, column: 57, scope: !914)
!922 = !{!853, !854, i64 48}
!923 = !DILocation(line: 697, column: 46, scope: !914)
!924 = !DILocation(line: 695, column: 11, scope: !844)
!925 = !DILocation(line: 699, column: 24, scope: !926)
!926 = distinct !DILexicalBlock(scope: !914, file: !3, line: 698, column: 9)
!927 = !DILocation(line: 699, column: 60, scope: !926)
!928 = !DILocation(line: 699, column: 11, scope: !926)
!929 = !DILocation(line: 701, column: 11, scope: !926)
!930 = !DILocation(line: 707, column: 21, scope: !931)
!931 = distinct !DILexicalBlock(scope: !844, file: !3, line: 707, column: 11)
!932 = !DILocation(line: 710, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !931, file: !3, line: 709, column: 9)
!934 = !DILocation(line: 711, column: 47, scope: !933)
!935 = !DILocation(line: 711, column: 19, scope: !933)
!936 = !DILocation(line: 514, column: 9, scope: !2)
!937 = !DILocalVariable(name: "ptr", arg: 1, scope: !938, file: !706, line: 498, type: !941)
!938 = distinct !DISubprogram(name: "ptr_align", scope: !706, file: !706, line: 498, type: !939, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !943)
!939 = !DISubroutineType(types: !940)
!940 = !{!41, !941, !42}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!943 = !{!937, !944, !945, !946}
!944 = !DILocalVariable(name: "alignment", arg: 2, scope: !938, file: !706, line: 498, type: !42)
!945 = !DILocalVariable(name: "p0", scope: !938, file: !706, line: 500, type: !48)
!946 = !DILocalVariable(name: "p1", scope: !938, file: !706, line: 501, type: !48)
!947 = !DILocation(line: 498, column: 24, scope: !938, inlinedAt: !948)
!948 = distinct !DILocation(line: 713, column: 29, scope: !933)
!949 = !DILocation(line: 498, column: 36, scope: !938, inlinedAt: !948)
!950 = !DILocation(line: 500, column: 15, scope: !938, inlinedAt: !948)
!951 = !DILocation(line: 501, column: 23, scope: !938, inlinedAt: !948)
!952 = !DILocation(line: 501, column: 35, scope: !938, inlinedAt: !948)
!953 = !DILocation(line: 501, column: 15, scope: !938, inlinedAt: !948)
!954 = !DILocation(line: 502, column: 25, scope: !938, inlinedAt: !948)
!955 = !DILocation(line: 502, column: 37, scope: !938, inlinedAt: !948)
!956 = !DILocation(line: 502, column: 23, scope: !938, inlinedAt: !948)
!957 = !DILocalVariable(name: "buf", arg: 1, scope: !958, file: !3, line: 154, type: !8)
!958 = distinct !DISubprogram(name: "simple_cat", scope: !3, file: !3, line: 152, type: !959, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{!74, !8, !42}
!961 = !{!957, !962, !963, !964}
!962 = !DILocalVariable(name: "bufsize", arg: 2, scope: !958, file: !3, line: 158, type: !42)
!963 = !DILocalVariable(name: "n_read", scope: !958, file: !3, line: 161, type: !42)
!964 = !DILocalVariable(name: "n", scope: !965, file: !3, line: 185, type: !42)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 183, column: 7)
!966 = distinct !DILexicalBlock(scope: !958, file: !3, line: 166, column: 5)
!967 = !DILocation(line: 154, column: 12, scope: !958, inlinedAt: !968)
!968 = distinct !DILocation(line: 713, column: 17, scope: !933)
!969 = !DILocation(line: 158, column: 13, scope: !958, inlinedAt: !968)
!970 = !DILocation(line: 165, column: 3, scope: !958, inlinedAt: !968)
!971 = !DILocation(line: 169, column: 27, scope: !966, inlinedAt: !968)
!972 = !DILocation(line: 169, column: 16, scope: !966, inlinedAt: !968)
!973 = !DILocation(line: 161, column: 10, scope: !958, inlinedAt: !968)
!974 = !DILocation(line: 170, column: 11, scope: !966, inlinedAt: !968)
!975 = !DILocation(line: 172, column: 21, scope: !976, inlinedAt: !968)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 171, column: 9)
!977 = distinct !DILexicalBlock(scope: !966, file: !3, line: 170, column: 11)
!978 = !DILocation(line: 172, column: 34, scope: !976, inlinedAt: !968)
!979 = !DILocation(line: 172, column: 11, scope: !976, inlinedAt: !968)
!980 = !DILocation(line: 173, column: 11, scope: !976, inlinedAt: !968)
!981 = !DILocation(line: 185, column: 16, scope: !965, inlinedAt: !968)
!982 = !DILocation(line: 186, column: 13, scope: !983, inlinedAt: !968)
!983 = distinct !DILexicalBlock(scope: !965, file: !3, line: 186, column: 13)
!984 = !DILocation(line: 186, column: 48, scope: !983, inlinedAt: !968)
!985 = !DILocation(line: 186, column: 13, scope: !965, inlinedAt: !968)
!986 = distinct !{!986, !987, !988}
!987 = !DILocation(line: 165, column: 3, scope: !958)
!988 = !DILocation(line: 189, column: 5, scope: !958)
!989 = !DILocation(line: 187, column: 11, scope: !983, inlinedAt: !968)
!990 = !DILocation(line: 717, column: 51, scope: !991)
!991 = distinct !DILexicalBlock(scope: !931, file: !3, line: 716, column: 9)
!992 = !DILocation(line: 717, column: 19, scope: !991)
!993 = !DILocation(line: 741, column: 50, scope: !991)
!994 = !DILocation(line: 742, column: 41, scope: !991)
!995 = !DILocation(line: 741, column: 20, scope: !991)
!996 = !DILocation(line: 517, column: 9, scope: !2)
!997 = !DILocation(line: 498, column: 24, scope: !938, inlinedAt: !998)
!998 = distinct !DILocation(line: 744, column: 22, scope: !991)
!999 = !DILocation(line: 498, column: 36, scope: !938, inlinedAt: !998)
!1000 = !DILocation(line: 500, column: 15, scope: !938, inlinedAt: !998)
!1001 = !DILocation(line: 501, column: 23, scope: !938, inlinedAt: !998)
!1002 = !DILocation(line: 501, column: 35, scope: !938, inlinedAt: !998)
!1003 = !DILocation(line: 501, column: 15, scope: !938, inlinedAt: !998)
!1004 = !DILocation(line: 502, column: 25, scope: !938, inlinedAt: !998)
!1005 = !DILocation(line: 502, column: 37, scope: !938, inlinedAt: !998)
!1006 = !DILocation(line: 502, column: 23, scope: !938, inlinedAt: !998)
!1007 = !DILocation(line: 498, column: 24, scope: !938, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 745, column: 22, scope: !991)
!1009 = !DILocation(line: 498, column: 36, scope: !938, inlinedAt: !1008)
!1010 = !DILocation(line: 500, column: 15, scope: !938, inlinedAt: !1008)
!1011 = !DILocation(line: 501, column: 23, scope: !938, inlinedAt: !1008)
!1012 = !DILocation(line: 501, column: 35, scope: !938, inlinedAt: !1008)
!1013 = !DILocation(line: 501, column: 15, scope: !938, inlinedAt: !1008)
!1014 = !DILocation(line: 502, column: 25, scope: !938, inlinedAt: !1008)
!1015 = !DILocation(line: 502, column: 37, scope: !938, inlinedAt: !1008)
!1016 = !DILocation(line: 502, column: 23, scope: !938, inlinedAt: !1008)
!1017 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1018, file: !3, line: 218, type: !8)
!1018 = distinct !DISubprogram(name: "cat", scope: !3, file: !3, line: 216, type: !1019, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!74, !8, !42, !8, !42, !74, !74, !74, !74, !74, !74}
!1021 = !{!1017, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1044, !1045, !1048}
!1022 = !DILocalVariable(name: "insize", arg: 2, scope: !1018, file: !3, line: 221, type: !42)
!1023 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1018, file: !3, line: 224, type: !8)
!1024 = !DILocalVariable(name: "outsize", arg: 4, scope: !1018, file: !3, line: 227, type: !42)
!1025 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1018, file: !3, line: 230, type: !74)
!1026 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1018, file: !3, line: 231, type: !74)
!1027 = !DILocalVariable(name: "number", arg: 7, scope: !1018, file: !3, line: 232, type: !74)
!1028 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1018, file: !3, line: 233, type: !74)
!1029 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1018, file: !3, line: 234, type: !74)
!1030 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1018, file: !3, line: 235, type: !74)
!1031 = !DILocalVariable(name: "ch", scope: !1018, file: !3, line: 238, type: !1032)
!1032 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1033 = !DILocalVariable(name: "bpin", scope: !1018, file: !3, line: 241, type: !8)
!1034 = !DILocalVariable(name: "eob", scope: !1018, file: !3, line: 245, type: !8)
!1035 = !DILocalVariable(name: "bpout", scope: !1018, file: !3, line: 248, type: !8)
!1036 = !DILocalVariable(name: "n_read", scope: !1018, file: !3, line: 251, type: !42)
!1037 = !DILocalVariable(name: "newlines", scope: !1018, file: !3, line: 258, type: !6)
!1038 = !DILocalVariable(name: "use_fionread", scope: !1018, file: !3, line: 263, type: !74)
!1039 = !DILocalVariable(name: "wp", scope: !1040, file: !3, line: 282, type: !8)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 281, column: 13)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 280, column: 15)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 277, column: 9)
!1043 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 275, column: 5)
!1044 = !DILocalVariable(name: "remaining_bytes", scope: !1040, file: !3, line: 283, type: !42)
!1045 = !DILocalVariable(name: "input_pending", scope: !1046, file: !3, line: 304, type: !74)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 303, column: 13)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 302, column: 15)
!1048 = !DILocalVariable(name: "n_to_read", scope: !1046, file: !3, line: 306, type: !6)
!1049 = !DILocation(line: 218, column: 12, scope: !1018, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 744, column: 17, scope: !991)
!1051 = !DILocation(line: 221, column: 13, scope: !1018, inlinedAt: !1050)
!1052 = !DILocation(line: 224, column: 12, scope: !1018, inlinedAt: !1050)
!1053 = !DILocation(line: 227, column: 13, scope: !1018, inlinedAt: !1050)
!1054 = !DILocation(line: 230, column: 11, scope: !1018, inlinedAt: !1050)
!1055 = !DILocation(line: 231, column: 11, scope: !1018, inlinedAt: !1050)
!1056 = !DILocation(line: 232, column: 11, scope: !1018, inlinedAt: !1050)
!1057 = !DILocation(line: 233, column: 11, scope: !1018, inlinedAt: !1050)
!1058 = !DILocation(line: 234, column: 11, scope: !1018, inlinedAt: !1050)
!1059 = !DILocation(line: 235, column: 11, scope: !1018, inlinedAt: !1050)
!1060 = !DILocation(line: 258, column: 18, scope: !1018, inlinedAt: !1050)
!1061 = !DILocation(line: 258, column: 7, scope: !1018, inlinedAt: !1050)
!1062 = !DILocation(line: 263, column: 8, scope: !1018, inlinedAt: !1050)
!1063 = !DILocation(line: 245, column: 9, scope: !1018, inlinedAt: !1050)
!1064 = !DILocation(line: 270, column: 14, scope: !1018, inlinedAt: !1050)
!1065 = !DILocation(line: 241, column: 9, scope: !1018, inlinedAt: !1050)
!1066 = !DILocation(line: 248, column: 9, scope: !1018, inlinedAt: !1050)
!1067 = !DILocation(line: 272, column: 9, scope: !1018, inlinedAt: !1050)
!1068 = !DILocation(line: 274, column: 3, scope: !1018, inlinedAt: !1050)
!1069 = !DILocation(line: 0, scope: !1042, inlinedAt: !1050)
!1070 = !DILocation(line: 269, column: 7, scope: !1018, inlinedAt: !1050)
!1071 = !DILocation(line: 0, scope: !1072, inlinedAt: !1050)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 321, column: 23)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 314, column: 17)
!1074 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 312, column: 19)
!1075 = !DILocation(line: 280, column: 35, scope: !1041, inlinedAt: !1050)
!1076 = !DILocation(line: 280, column: 32, scope: !1041, inlinedAt: !1050)
!1077 = !DILocation(line: 280, column: 15, scope: !1042, inlinedAt: !1050)
!1078 = !DILocation(line: 0, scope: !1079, inlinedAt: !1050)
!1079 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 285, column: 17)
!1080 = !DILocation(line: 282, column: 21, scope: !1040, inlinedAt: !1050)
!1081 = !DILocation(line: 286, column: 23, scope: !1082, inlinedAt: !1050)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 286, column: 23)
!1083 = !DILocation(line: 286, column: 63, scope: !1082, inlinedAt: !1050)
!1084 = !DILocation(line: 286, column: 23, scope: !1079, inlinedAt: !1050)
!1085 = !DILocation(line: 287, column: 21, scope: !1082, inlinedAt: !1050)
!1086 = !DILocation(line: 288, column: 22, scope: !1079, inlinedAt: !1050)
!1087 = !DILocation(line: 289, column: 43, scope: !1079, inlinedAt: !1050)
!1088 = !DILocation(line: 283, column: 22, scope: !1040, inlinedAt: !1050)
!1089 = !DILocation(line: 291, column: 30, scope: !1040, inlinedAt: !1050)
!1090 = !DILocation(line: 290, column: 17, scope: !1079, inlinedAt: !1050)
!1091 = distinct !{!1091, !1092, !1093}
!1092 = !DILocation(line: 284, column: 15, scope: !1040)
!1093 = !DILocation(line: 291, column: 48, scope: !1040)
!1094 = !DILocation(line: 296, column: 15, scope: !1040, inlinedAt: !1050)
!1095 = !DILocation(line: 297, column: 30, scope: !1040, inlinedAt: !1050)
!1096 = !DILocation(line: 297, column: 21, scope: !1040, inlinedAt: !1050)
!1097 = !DILocation(line: 298, column: 13, scope: !1040, inlinedAt: !1050)
!1098 = !DILocation(line: 0, scope: !1040, inlinedAt: !1050)
!1099 = !DILocation(line: 302, column: 20, scope: !1047, inlinedAt: !1050)
!1100 = !DILocation(line: 302, column: 15, scope: !1042, inlinedAt: !1050)
!1101 = !DILocation(line: 304, column: 20, scope: !1046, inlinedAt: !1050)
!1102 = !DILocation(line: 306, column: 15, scope: !1046, inlinedAt: !1050)
!1103 = !DILocation(line: 306, column: 19, scope: !1046, inlinedAt: !1050)
!1104 = !DILocation(line: 312, column: 19, scope: !1074, inlinedAt: !1050)
!1105 = !DILocation(line: 313, column: 19, scope: !1074, inlinedAt: !1050)
!1106 = !DILocation(line: 313, column: 29, scope: !1074, inlinedAt: !1050)
!1107 = !DILocation(line: 313, column: 22, scope: !1074, inlinedAt: !1050)
!1108 = !DILocation(line: 313, column: 63, scope: !1074, inlinedAt: !1050)
!1109 = !DILocation(line: 312, column: 19, scope: !1046, inlinedAt: !1050)
!1110 = !DILocation(line: 321, column: 23, scope: !1072, inlinedAt: !1050)
!1111 = !DILocation(line: 321, column: 43, scope: !1072, inlinedAt: !1050)
!1112 = !DILocation(line: 327, column: 40, scope: !1113, inlinedAt: !1050)
!1113 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 326, column: 21)
!1114 = !DILocation(line: 328, column: 30, scope: !1113, inlinedAt: !1050)
!1115 = !DILocation(line: 327, column: 23, scope: !1113, inlinedAt: !1050)
!1116 = !DILocation(line: 330, column: 23, scope: !1113, inlinedAt: !1050)
!1117 = !DILocation(line: 333, column: 19, scope: !1118, inlinedAt: !1050)
!1118 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 333, column: 19)
!1119 = !DILocation(line: 333, column: 29, scope: !1118, inlinedAt: !1050)
!1120 = !DILocation(line: 337, column: 19, scope: !1046, inlinedAt: !1050)
!1121 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1122, file: !3, line: 197, type: !8)
!1122 = distinct !DISubprogram(name: "write_pending", scope: !3, file: !3, line: 197, type: !1123, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !8, !7}
!1125 = !{!1121, !1126, !1127}
!1126 = !DILocalVariable(name: "bpout", arg: 2, scope: !1122, file: !3, line: 197, type: !7)
!1127 = !DILocalVariable(name: "n_write", scope: !1122, file: !3, line: 199, type: !42)
!1128 = !DILocation(line: 197, column: 22, scope: !1122, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 338, column: 17, scope: !1130, inlinedAt: !1050)
!1130 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 337, column: 19)
!1131 = !DILocation(line: 197, column: 37, scope: !1122, inlinedAt: !1129)
!1132 = !DILocation(line: 199, column: 27, scope: !1122, inlinedAt: !1129)
!1133 = !DILocation(line: 199, column: 10, scope: !1122, inlinedAt: !1129)
!1134 = !DILocation(line: 200, column: 9, scope: !1135, inlinedAt: !1129)
!1135 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 200, column: 7)
!1136 = !DILocation(line: 200, column: 7, scope: !1122, inlinedAt: !1129)
!1137 = !DILocation(line: 202, column: 11, scope: !1138, inlinedAt: !1129)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 202, column: 11)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 201, column: 5)
!1140 = !DILocation(line: 202, column: 55, scope: !1138, inlinedAt: !1129)
!1141 = !DILocation(line: 202, column: 11, scope: !1139, inlinedAt: !1129)
!1142 = !DILocation(line: 203, column: 9, scope: !1138, inlinedAt: !1129)
!1143 = !DILocation(line: 342, column: 35, scope: !1046, inlinedAt: !1050)
!1144 = !DILocation(line: 342, column: 24, scope: !1046, inlinedAt: !1050)
!1145 = !DILocation(line: 251, column: 10, scope: !1018, inlinedAt: !1050)
!1146 = !DILocation(line: 343, column: 19, scope: !1046, inlinedAt: !1050)
!1147 = !DILocation(line: 345, column: 29, scope: !1148, inlinedAt: !1050)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 344, column: 17)
!1149 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 343, column: 19)
!1150 = !DILocation(line: 345, column: 42, scope: !1148, inlinedAt: !1050)
!1151 = !DILocation(line: 345, column: 19, scope: !1148, inlinedAt: !1050)
!1152 = !DILocation(line: 197, column: 22, scope: !1122, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 346, column: 19, scope: !1148, inlinedAt: !1050)
!1154 = !DILocation(line: 197, column: 37, scope: !1122, inlinedAt: !1153)
!1155 = !DILocation(line: 199, column: 27, scope: !1122, inlinedAt: !1153)
!1156 = !DILocation(line: 199, column: 10, scope: !1122, inlinedAt: !1153)
!1157 = !DILocation(line: 200, column: 9, scope: !1135, inlinedAt: !1153)
!1158 = !DILocation(line: 200, column: 7, scope: !1122, inlinedAt: !1153)
!1159 = !DILocation(line: 202, column: 11, scope: !1138, inlinedAt: !1153)
!1160 = !DILocation(line: 202, column: 55, scope: !1138, inlinedAt: !1153)
!1161 = !DILocation(line: 202, column: 11, scope: !1139, inlinedAt: !1153)
!1162 = !DILocation(line: 203, column: 9, scope: !1138, inlinedAt: !1153)
!1163 = !DILocation(line: 197, column: 22, scope: !1122, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 352, column: 19, scope: !1165, inlinedAt: !1050)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 351, column: 17)
!1166 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 350, column: 19)
!1167 = !DILocation(line: 197, column: 37, scope: !1122, inlinedAt: !1164)
!1168 = !DILocation(line: 199, column: 27, scope: !1122, inlinedAt: !1164)
!1169 = !DILocation(line: 199, column: 10, scope: !1122, inlinedAt: !1164)
!1170 = !DILocation(line: 200, column: 9, scope: !1135, inlinedAt: !1164)
!1171 = !DILocation(line: 200, column: 7, scope: !1122, inlinedAt: !1164)
!1172 = !DILocation(line: 202, column: 11, scope: !1138, inlinedAt: !1164)
!1173 = !DILocation(line: 202, column: 55, scope: !1138, inlinedAt: !1164)
!1174 = !DILocation(line: 202, column: 11, scope: !1139, inlinedAt: !1164)
!1175 = !DILocation(line: 203, column: 9, scope: !1138, inlinedAt: !1164)
!1176 = !DILocation(line: 361, column: 26, scope: !1046, inlinedAt: !1050)
!1177 = !DILocation(line: 362, column: 20, scope: !1046, inlinedAt: !1050)
!1178 = !{!734, !734, i64 0}
!1179 = !DILocation(line: 363, column: 13, scope: !1047, inlinedAt: !1050)
!1180 = !DILocation(line: 371, column: 19, scope: !1181, inlinedAt: !1050)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 371, column: 19)
!1182 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 365, column: 13)
!1183 = !DILocation(line: 371, column: 30, scope: !1181, inlinedAt: !1050)
!1184 = !DILocation(line: 371, column: 19, scope: !1182, inlinedAt: !1050)
!1185 = !DILocation(line: 373, column: 32, scope: !1186, inlinedAt: !1050)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 373, column: 23)
!1187 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 372, column: 17)
!1188 = !DILocation(line: 373, column: 23, scope: !1187, inlinedAt: !1050)
!1189 = !DILocation(line: 392, column: 30, scope: !1190, inlinedAt: !1050)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 392, column: 23)
!1191 = !DILocation(line: 133, column: 3, scope: !1192, inlinedAt: !1195)
!1192 = distinct !DISubprogram(name: "next_line_num", scope: !3, file: !3, line: 130, type: !740, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !1193)
!1193 = !{!1194}
!1194 = !DILocalVariable(name: "endp", scope: !1192, file: !3, line: 132, type: !8)
!1195 = distinct !DILocation(line: 394, column: 23, scope: !1196, inlinedAt: !1050)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 393, column: 21)
!1197 = !DILocation(line: 0, scope: !1198, inlinedAt: !1195)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 134, column: 5)
!1199 = !DILocation(line: 132, column: 9, scope: !1192, inlinedAt: !1195)
!1200 = !DILocation(line: 135, column: 18, scope: !1201, inlinedAt: !1195)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 135, column: 11)
!1202 = !DILocation(line: 135, column: 21, scope: !1201, inlinedAt: !1195)
!1203 = !DILocation(line: 135, column: 11, scope: !1198, inlinedAt: !1195)
!1204 = !DILocation(line: 137, column: 12, scope: !1198, inlinedAt: !1195)
!1205 = !DILocation(line: 137, column: 15, scope: !1198, inlinedAt: !1195)
!1206 = !DILocation(line: 139, column: 15, scope: !1192, inlinedAt: !1195)
!1207 = !DILocation(line: 138, column: 5, scope: !1198, inlinedAt: !1195)
!1208 = distinct !{!1208, !1209, !1210}
!1209 = !DILocation(line: 133, column: 3, scope: !1192)
!1210 = !DILocation(line: 139, column: 32, scope: !1192)
!1211 = !DILocation(line: 140, column: 22, scope: !1212, inlinedAt: !1195)
!1212 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 140, column: 7)
!1213 = !DILocation(line: 140, column: 7, scope: !1192, inlinedAt: !1195)
!1214 = !DILocation(line: 141, column: 6, scope: !1212, inlinedAt: !1195)
!1215 = !DILocation(line: 141, column: 23, scope: !1212, inlinedAt: !1195)
!1216 = !DILocation(line: 141, column: 5, scope: !1212, inlinedAt: !1195)
!1217 = !DILocation(line: 143, column: 15, scope: !1212, inlinedAt: !1195)
!1218 = !DILocation(line: 144, column: 7, scope: !1219, inlinedAt: !1195)
!1219 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 144, column: 7)
!1220 = !DILocation(line: 144, column: 24, scope: !1219, inlinedAt: !1195)
!1221 = !DILocation(line: 144, column: 22, scope: !1219, inlinedAt: !1195)
!1222 = !DILocation(line: 144, column: 7, scope: !1192, inlinedAt: !1195)
!1223 = !DILocation(line: 145, column: 19, scope: !1219, inlinedAt: !1195)
!1224 = !DILocation(line: 145, column: 5, scope: !1219, inlinedAt: !1195)
!1225 = !DILocation(line: 395, column: 46, scope: !1196, inlinedAt: !1050)
!1226 = !DILocation(line: 395, column: 39, scope: !1196, inlinedAt: !1050)
!1227 = !DILocalVariable(name: "__dest", arg: 1, scope: !1228, file: !1229, line: 95, type: !1232)
!1228 = distinct !DISubprogram(name: "stpcpy", scope: !1229, file: !1229, line: 95, type: !1230, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !1234)
!1229 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!8, !1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!1234 = !{!1227, !1235}
!1235 = !DILocalVariable(name: "__src", arg: 2, scope: !1228, file: !1229, line: 95, type: !1233)
!1236 = !DILocation(line: 95, column: 1, scope: !1228, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 395, column: 31, scope: !1196, inlinedAt: !1050)
!1238 = !DILocation(line: 97, column: 49, scope: !1228, inlinedAt: !1237)
!1239 = !DILocation(line: 97, column: 10, scope: !1228, inlinedAt: !1237)
!1240 = !DILocation(line: 396, column: 21, scope: !1196, inlinedAt: !1050)
!1241 = !DILocation(line: 0, scope: !1181, inlinedAt: !1050)
!1242 = !DILocation(line: 401, column: 19, scope: !1182, inlinedAt: !1050)
!1243 = !DILocation(line: 402, column: 23, scope: !1244, inlinedAt: !1050)
!1244 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 401, column: 19)
!1245 = !DILocation(line: 402, column: 26, scope: !1244, inlinedAt: !1050)
!1246 = !DILocation(line: 402, column: 17, scope: !1244, inlinedAt: !1050)
!1247 = !DILocation(line: 406, column: 21, scope: !1182, inlinedAt: !1050)
!1248 = !DILocation(line: 406, column: 24, scope: !1182, inlinedAt: !1050)
!1249 = !DILocation(line: 0, scope: !1018, inlinedAt: !1050)
!1250 = !DILocation(line: 0, scope: !1251, inlinedAt: !1050)
!1251 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 374, column: 21)
!1252 = !DILocation(line: 0, scope: !1253, inlinedAt: !1050)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 384, column: 25)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 383, column: 27)
!1255 = !DILocation(line: 238, column: 17, scope: !1018, inlinedAt: !1050)
!1256 = !DILocation(line: 410, column: 17, scope: !1043, inlinedAt: !1050)
!1257 = !DILocation(line: 409, column: 9, scope: !1042, inlinedAt: !1050)
!1258 = distinct !{!1258, !1259, !1260}
!1259 = !DILocation(line: 276, column: 7, scope: !1043)
!1260 = !DILocation(line: 410, column: 24, scope: !1043)
!1261 = !DILocation(line: 414, column: 20, scope: !1262, inlinedAt: !1050)
!1262 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 414, column: 11)
!1263 = !DILocation(line: 414, column: 25, scope: !1262, inlinedAt: !1050)
!1264 = !DILocation(line: 133, column: 3, scope: !1192, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 416, column: 11, scope: !1266, inlinedAt: !1050)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 415, column: 9)
!1267 = !DILocation(line: 0, scope: !1198, inlinedAt: !1265)
!1268 = !DILocation(line: 132, column: 9, scope: !1192, inlinedAt: !1265)
!1269 = !DILocation(line: 135, column: 18, scope: !1201, inlinedAt: !1265)
!1270 = !DILocation(line: 135, column: 21, scope: !1201, inlinedAt: !1265)
!1271 = !DILocation(line: 135, column: 11, scope: !1198, inlinedAt: !1265)
!1272 = !DILocation(line: 137, column: 12, scope: !1198, inlinedAt: !1265)
!1273 = !DILocation(line: 137, column: 15, scope: !1198, inlinedAt: !1265)
!1274 = !DILocation(line: 139, column: 15, scope: !1192, inlinedAt: !1265)
!1275 = !DILocation(line: 138, column: 5, scope: !1198, inlinedAt: !1265)
!1276 = !DILocation(line: 140, column: 22, scope: !1212, inlinedAt: !1265)
!1277 = !DILocation(line: 140, column: 7, scope: !1192, inlinedAt: !1265)
!1278 = !DILocation(line: 141, column: 6, scope: !1212, inlinedAt: !1265)
!1279 = !DILocation(line: 141, column: 23, scope: !1212, inlinedAt: !1265)
!1280 = !DILocation(line: 141, column: 5, scope: !1212, inlinedAt: !1265)
!1281 = !DILocation(line: 143, column: 15, scope: !1212, inlinedAt: !1265)
!1282 = !DILocation(line: 144, column: 7, scope: !1219, inlinedAt: !1265)
!1283 = !DILocation(line: 144, column: 24, scope: !1219, inlinedAt: !1265)
!1284 = !DILocation(line: 144, column: 22, scope: !1219, inlinedAt: !1265)
!1285 = !DILocation(line: 144, column: 7, scope: !1192, inlinedAt: !1265)
!1286 = !DILocation(line: 145, column: 19, scope: !1219, inlinedAt: !1265)
!1287 = !DILocation(line: 145, column: 5, scope: !1219, inlinedAt: !1265)
!1288 = !DILocation(line: 417, column: 34, scope: !1266, inlinedAt: !1050)
!1289 = !DILocation(line: 417, column: 27, scope: !1266, inlinedAt: !1050)
!1290 = !DILocation(line: 95, column: 1, scope: !1228, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 417, column: 19, scope: !1266, inlinedAt: !1050)
!1292 = !DILocation(line: 97, column: 49, scope: !1228, inlinedAt: !1291)
!1293 = !DILocation(line: 97, column: 10, scope: !1228, inlinedAt: !1291)
!1294 = !DILocation(line: 417, column: 17, scope: !1266, inlinedAt: !1050)
!1295 = !DILocation(line: 418, column: 9, scope: !1266, inlinedAt: !1050)
!1296 = !DILocation(line: 0, scope: !1266, inlinedAt: !1050)
!1297 = !DILocation(line: 428, column: 11, scope: !1043, inlinedAt: !1050)
!1298 = !DILocation(line: 0, scope: !1299, inlinedAt: !1050)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 434, column: 23)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 433, column: 17)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 432, column: 19)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 431, column: 13)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 429, column: 9)
!1304 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 428, column: 11)
!1305 = !DILocation(line: 0, scope: !1302, inlinedAt: !1050)
!1306 = !DILocation(line: 432, column: 22, scope: !1301, inlinedAt: !1050)
!1307 = !DILocation(line: 432, column: 19, scope: !1302, inlinedAt: !1050)
!1308 = !DILocation(line: 434, column: 26, scope: !1299, inlinedAt: !1050)
!1309 = !DILocation(line: 434, column: 23, scope: !1300, inlinedAt: !1050)
!1310 = !DILocation(line: 435, column: 27, scope: !1299, inlinedAt: !1050)
!1311 = !DILocation(line: 435, column: 30, scope: !1299, inlinedAt: !1050)
!1312 = !DILocation(line: 435, column: 21, scope: !1299, inlinedAt: !1050)
!1313 = !DILocation(line: 436, column: 31, scope: !1314, inlinedAt: !1050)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 436, column: 28)
!1315 = !DILocation(line: 0, scope: !1316, inlinedAt: !1050)
!1316 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 442, column: 21)
!1317 = !DILocation(line: 436, column: 28, scope: !1299, inlinedAt: !1050)
!1318 = !DILocation(line: 438, column: 32, scope: !1319, inlinedAt: !1050)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 437, column: 21)
!1320 = !DILocation(line: 439, column: 29, scope: !1319, inlinedAt: !1050)
!1321 = !DILocation(line: 439, column: 32, scope: !1319, inlinedAt: !1050)
!1322 = !DILocation(line: 440, column: 21, scope: !1319, inlinedAt: !1050)
!1323 = !DILocation(line: 443, column: 32, scope: !1316, inlinedAt: !1050)
!1324 = !DILocation(line: 444, column: 29, scope: !1316, inlinedAt: !1050)
!1325 = !DILocation(line: 444, column: 32, scope: !1316, inlinedAt: !1050)
!1326 = !DILocation(line: 445, column: 30, scope: !1327, inlinedAt: !1050)
!1327 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 445, column: 27)
!1328 = !DILocation(line: 445, column: 27, scope: !1316, inlinedAt: !1050)
!1329 = !DILocation(line: 447, column: 34, scope: !1330, inlinedAt: !1050)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 447, column: 31)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 446, column: 25)
!1332 = !DILocation(line: 447, column: 31, scope: !1331, inlinedAt: !1050)
!1333 = !DILocation(line: 448, column: 43, scope: !1330, inlinedAt: !1050)
!1334 = !DILocation(line: 448, column: 35, scope: !1330, inlinedAt: !1050)
!1335 = !DILocation(line: 448, column: 38, scope: !1330, inlinedAt: !1050)
!1336 = !DILocation(line: 448, column: 29, scope: !1330, inlinedAt: !1050)
!1337 = !DILocation(line: 451, column: 37, scope: !1338, inlinedAt: !1050)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 450, column: 29)
!1339 = !DILocation(line: 451, column: 40, scope: !1338, inlinedAt: !1050)
!1340 = !DILocation(line: 452, column: 37, scope: !1338, inlinedAt: !1050)
!1341 = !DILocation(line: 452, column: 40, scope: !1338, inlinedAt: !1050)
!1342 = !DILocation(line: 457, column: 33, scope: !1343, inlinedAt: !1050)
!1343 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 456, column: 25)
!1344 = !DILocation(line: 457, column: 36, scope: !1343, inlinedAt: !1050)
!1345 = !DILocation(line: 458, column: 47, scope: !1343, inlinedAt: !1050)
!1346 = !DILocation(line: 458, column: 33, scope: !1343, inlinedAt: !1050)
!1347 = !DILocation(line: 458, column: 36, scope: !1343, inlinedAt: !1050)
!1348 = !DILocation(line: 462, column: 27, scope: !1349, inlinedAt: !1050)
!1349 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 462, column: 24)
!1350 = !DILocation(line: 462, column: 35, scope: !1349, inlinedAt: !1050)
!1351 = !DILocation(line: 463, column: 23, scope: !1349, inlinedAt: !1050)
!1352 = !DILocation(line: 463, column: 26, scope: !1349, inlinedAt: !1050)
!1353 = !DILocation(line: 463, column: 17, scope: !1349, inlinedAt: !1050)
!1354 = !DILocation(line: 464, column: 27, scope: !1355, inlinedAt: !1050)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 464, column: 24)
!1356 = !DILocation(line: 464, column: 24, scope: !1349, inlinedAt: !1050)
!1357 = distinct !{!1357, !1358, !1359}
!1358 = !DILocation(line: 274, column: 3, scope: !1018)
!1359 = !DILocation(line: 499, column: 5, scope: !1018)
!1360 = !DILocation(line: 471, column: 25, scope: !1361, inlinedAt: !1050)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 470, column: 17)
!1362 = !DILocation(line: 471, column: 28, scope: !1361, inlinedAt: !1050)
!1363 = !DILocation(line: 472, column: 33, scope: !1361, inlinedAt: !1050)
!1364 = !DILocation(line: 472, column: 25, scope: !1361, inlinedAt: !1050)
!1365 = !DILocation(line: 472, column: 28, scope: !1361, inlinedAt: !1050)
!1366 = !DILocation(line: 0, scope: !1349, inlinedAt: !1050)
!1367 = !DILocation(line: 475, column: 25, scope: !1302, inlinedAt: !1050)
!1368 = !DILocation(line: 475, column: 20, scope: !1302, inlinedAt: !1050)
!1369 = !DILocation(line: 430, column: 11, scope: !1303, inlinedAt: !1050)
!1370 = distinct !{!1370, !1371, !1372}
!1371 = !DILocation(line: 430, column: 11, scope: !1303)
!1372 = !DILocation(line: 476, column: 13, scope: !1303)
!1373 = !DILocation(line: 0, scope: !1374, inlinedAt: !1050)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 488, column: 24)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 483, column: 19)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 482, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 479, column: 9)
!1378 = !DILocation(line: 0, scope: !1376, inlinedAt: !1050)
!1379 = !DILocation(line: 483, column: 22, scope: !1375, inlinedAt: !1050)
!1380 = !DILocation(line: 483, column: 30, scope: !1375, inlinedAt: !1050)
!1381 = !DILocation(line: 485, column: 25, scope: !1382, inlinedAt: !1050)
!1382 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 484, column: 17)
!1383 = !DILocation(line: 485, column: 28, scope: !1382, inlinedAt: !1050)
!1384 = !DILocation(line: 486, column: 25, scope: !1382, inlinedAt: !1050)
!1385 = !DILocation(line: 486, column: 28, scope: !1382, inlinedAt: !1050)
!1386 = !DILocation(line: 487, column: 17, scope: !1382, inlinedAt: !1050)
!1387 = !DILocation(line: 488, column: 27, scope: !1374, inlinedAt: !1050)
!1388 = !DILocation(line: 488, column: 24, scope: !1375, inlinedAt: !1050)
!1389 = !DILocation(line: 489, column: 23, scope: !1374, inlinedAt: !1050)
!1390 = !DILocation(line: 489, column: 26, scope: !1374, inlinedAt: !1050)
!1391 = !DILocation(line: 0, scope: !1382, inlinedAt: !1050)
!1392 = !DILocation(line: 496, column: 25, scope: !1376, inlinedAt: !1050)
!1393 = !DILocation(line: 496, column: 20, scope: !1376, inlinedAt: !1050)
!1394 = !DILocation(line: 481, column: 11, scope: !1377, inlinedAt: !1050)
!1395 = distinct !{!1395, !1396, !1397}
!1396 = !DILocation(line: 481, column: 11, scope: !1377)
!1397 = !DILocation(line: 497, column: 13, scope: !1377)
!1398 = !DILocation(line: 0, scope: !991)
!1399 = !DILocation(line: 749, column: 11, scope: !991)
!1400 = !DILocation(line: 0, scope: !933)
!1401 = !DILocation(line: 752, column: 7, scope: !844)
!1402 = !DILocation(line: 755, column: 12, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !844, file: !3, line: 755, column: 11)
!1404 = !DILocation(line: 755, column: 32, scope: !1403)
!1405 = !DILocation(line: 755, column: 42, scope: !1403)
!1406 = !DILocation(line: 755, column: 35, scope: !1403)
!1407 = !DILocation(line: 755, column: 54, scope: !1403)
!1408 = !DILocation(line: 755, column: 11, scope: !844)
!1409 = !DILocation(line: 757, column: 21, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 756, column: 9)
!1411 = !DILocation(line: 757, column: 34, scope: !1410)
!1412 = !DILocation(line: 757, column: 11, scope: !1410)
!1413 = !DILocation(line: 759, column: 9, scope: !1410)
!1414 = !DILocation(line: 0, scope: !894)
!1415 = !DILocation(line: 761, column: 10, scope: !2)
!1416 = !DILocation(line: 761, column: 19, scope: !2)
!1417 = !DILocation(line: 760, column: 5, scope: !844)
!1418 = distinct !{!1418, !870, !1419}
!1419 = !DILocation(line: 761, column: 25, scope: !2)
!1420 = !DILocation(line: 763, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !2, file: !3, line: 763, column: 7)
!1422 = !DILocation(line: 763, column: 23, scope: !1421)
!1423 = !DILocation(line: 763, column: 26, scope: !1421)
!1424 = !DILocation(line: 763, column: 47, scope: !1421)
!1425 = !DILocation(line: 763, column: 7, scope: !2)
!1426 = !DILocation(line: 764, column: 5, scope: !1421)
!1427 = !DILocation(line: 766, column: 10, scope: !2)
!1428 = !DILocation(line: 767, column: 1, scope: !2)
!1429 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !156, file: !156, line: 51, type: !707, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !1430)
!1430 = !{!1431}
!1431 = !DILocalVariable(name: "file", arg: 1, scope: !1429, file: !156, line: 51, type: !48)
!1432 = !DILocation(line: 51, column: 41, scope: !1429)
!1433 = !DILocation(line: 53, column: 13, scope: !1429)
!1434 = !DILocation(line: 54, column: 1, scope: !1429)
!1435 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !156, file: !156, line: 88, type: !1436, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !74}
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "ignore", arg: 1, scope: !1435, file: !156, line: 88, type: !74)
!1440 = !DILocation(line: 88, column: 37, scope: !1435)
!1441 = !DILocation(line: 90, column: 16, scope: !1435)
!1442 = !{!1443, !1443, i64 0}
!1443 = !{!"_Bool", !734, i64 0}
!1444 = !DILocation(line: 91, column: 1, scope: !1435)
!1445 = distinct !DISubprogram(name: "close_stdout", scope: !156, file: !156, line: 117, type: !740, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !1446)
!1446 = !{!1447}
!1447 = !DILocalVariable(name: "write_error", scope: !1448, file: !156, line: 122, type: !48)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !156, line: 121, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !156, line: 119, column: 7)
!1450 = !DILocation(line: 119, column: 21, scope: !1449)
!1451 = !DILocation(line: 119, column: 7, scope: !1449)
!1452 = !DILocation(line: 119, column: 29, scope: !1449)
!1453 = !DILocation(line: 120, column: 7, scope: !1449)
!1454 = !DILocation(line: 120, column: 12, scope: !1449)
!1455 = !{i8 0, i8 2}
!1456 = !DILocation(line: 120, column: 25, scope: !1449)
!1457 = !DILocation(line: 120, column: 28, scope: !1449)
!1458 = !DILocation(line: 120, column: 34, scope: !1449)
!1459 = !DILocation(line: 119, column: 7, scope: !1445)
!1460 = !DILocation(line: 122, column: 33, scope: !1448)
!1461 = !DILocation(line: 122, column: 19, scope: !1448)
!1462 = !DILocation(line: 123, column: 11, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1448, file: !156, line: 123, column: 11)
!1464 = !DILocation(line: 0, scope: !1463)
!1465 = !DILocation(line: 123, column: 11, scope: !1448)
!1466 = !DILocation(line: 124, column: 36, scope: !1463)
!1467 = !DILocation(line: 124, column: 9, scope: !1463)
!1468 = !DILocation(line: 127, column: 9, scope: !1463)
!1469 = !DILocation(line: 129, column: 14, scope: !1448)
!1470 = !DILocation(line: 129, column: 7, scope: !1448)
!1471 = !DILocation(line: 134, column: 42, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1445, file: !156, line: 134, column: 7)
!1473 = !DILocation(line: 134, column: 28, scope: !1472)
!1474 = !DILocation(line: 134, column: 50, scope: !1472)
!1475 = !DILocation(line: 134, column: 7, scope: !1445)
!1476 = !DILocation(line: 135, column: 12, scope: !1472)
!1477 = !DILocation(line: 135, column: 5, scope: !1472)
!1478 = !DILocation(line: 136, column: 1, scope: !1445)
!1479 = distinct !DISubprogram(name: "fdadvise", scope: !1480, file: !1480, line: 31, type: !1481, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !1486)
!1480 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !6, !1483, !1483, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1484, line: 63, baseType: !104)
!1484 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !28, line: 52, baseType: !27)
!1486 = !{!1487, !1488, !1489, !1490, !1491}
!1487 = !DILocalVariable(name: "fd", arg: 1, scope: !1479, file: !1480, line: 31, type: !6)
!1488 = !DILocalVariable(name: "offset", arg: 2, scope: !1479, file: !1480, line: 31, type: !1483)
!1489 = !DILocalVariable(name: "len", arg: 3, scope: !1479, file: !1480, line: 31, type: !1483)
!1490 = !DILocalVariable(name: "advice", arg: 4, scope: !1479, file: !1480, line: 31, type: !1485)
!1491 = !DILocalVariable(name: "__x", scope: !1492, file: !1480, line: 34, type: !6)
!1492 = distinct !DILexicalBlock(scope: !1479, file: !1480, line: 34, column: 3)
!1493 = !DILocation(line: 31, column: 15, scope: !1479)
!1494 = !DILocation(line: 31, column: 25, scope: !1479)
!1495 = !DILocation(line: 31, column: 39, scope: !1479)
!1496 = !DILocation(line: 31, column: 54, scope: !1479)
!1497 = !DILocation(line: 34, column: 3, scope: !1492)
!1498 = !DILocation(line: 36, column: 1, scope: !1479)
!1499 = distinct !DISubprogram(name: "fadvise", scope: !1480, file: !1480, line: 39, type: !1500, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !1551)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !1502, !1485}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1504, line: 7, baseType: !1505)
!1504 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1506, line: 49, size: 1728, elements: !1507)
!1506 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1523, !1525, !1526, !1527, !1528, !1529, !1531, !1535, !1538, !1540, !1543, !1546, !1547, !1548, !1549, !1550}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1505, file: !1506, line: 51, baseType: !6, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1505, file: !1506, line: 54, baseType: !8, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1505, file: !1506, line: 55, baseType: !8, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1505, file: !1506, line: 56, baseType: !8, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1505, file: !1506, line: 57, baseType: !8, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1505, file: !1506, line: 58, baseType: !8, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1505, file: !1506, line: 59, baseType: !8, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1505, file: !1506, line: 60, baseType: !8, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1505, file: !1506, line: 61, baseType: !8, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1505, file: !1506, line: 64, baseType: !8, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1505, file: !1506, line: 65, baseType: !8, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1505, file: !1506, line: 66, baseType: !8, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1505, file: !1506, line: 68, baseType: !1521, size: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1506, line: 36, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1505, file: !1506, line: 70, baseType: !1524, size: 64, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1505, file: !1506, line: 72, baseType: !6, size: 32, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1505, file: !1506, line: 73, baseType: !6, size: 32, offset: 928)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1505, file: !1506, line: 74, baseType: !104, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1505, file: !1506, line: 77, baseType: !197, size: 16, offset: 1024)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1505, file: !1506, line: 78, baseType: !1530, size: 8, offset: 1040)
!1530 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1505, file: !1506, line: 79, baseType: !1532, size: 8, offset: 1048)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 1)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1505, file: !1506, line: 81, baseType: !1536, size: 64, offset: 1088)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1506, line: 43, baseType: null)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1505, file: !1506, line: 89, baseType: !1539, size: 64, offset: 1152)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !81, line: 151, baseType: !105)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1505, file: !1506, line: 91, baseType: !1541, size: 64, offset: 1216)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1506, line: 37, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1505, file: !1506, line: 92, baseType: !1544, size: 64, offset: 1280)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1506, line: 38, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1505, file: !1506, line: 93, baseType: !1524, size: 64, offset: 1344)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1505, file: !1506, line: 94, baseType: !41, size: 64, offset: 1408)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1505, file: !1506, line: 95, baseType: !42, size: 64, offset: 1472)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1505, file: !1506, line: 96, baseType: !6, size: 32, offset: 1536)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1505, file: !1506, line: 98, baseType: !60, size: 160, offset: 1568)
!1551 = !{!1552, !1553}
!1552 = !DILocalVariable(name: "fp", arg: 1, scope: !1499, file: !1480, line: 39, type: !1502)
!1553 = !DILocalVariable(name: "advice", arg: 2, scope: !1499, file: !1480, line: 39, type: !1485)
!1554 = !DILocation(line: 39, column: 16, scope: !1499)
!1555 = !DILocation(line: 39, column: 30, scope: !1499)
!1556 = !DILocation(line: 41, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1499, file: !1480, line: 41, column: 7)
!1558 = !DILocation(line: 41, column: 7, scope: !1499)
!1559 = !DILocation(line: 42, column: 15, scope: !1557)
!1560 = !DILocation(line: 31, column: 15, scope: !1479, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 42, column: 5, scope: !1557)
!1562 = !DILocation(line: 31, column: 25, scope: !1479, inlinedAt: !1561)
!1563 = !DILocation(line: 31, column: 39, scope: !1479, inlinedAt: !1561)
!1564 = !DILocation(line: 31, column: 54, scope: !1479, inlinedAt: !1561)
!1565 = !DILocation(line: 34, column: 3, scope: !1492, inlinedAt: !1561)
!1566 = !DILocation(line: 42, column: 5, scope: !1557)
!1567 = !DILocation(line: 43, column: 1, scope: !1499)
!1568 = distinct !DISubprogram(name: "full_write", scope: !1569, file: !1569, line: 58, type: !1570, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !1572)
!1569 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!42, !6, !941, !42}
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578}
!1573 = !DILocalVariable(name: "fd", arg: 1, scope: !1568, file: !1569, line: 58, type: !6)
!1574 = !DILocalVariable(name: "buf", arg: 2, scope: !1568, file: !1569, line: 58, type: !941)
!1575 = !DILocalVariable(name: "count", arg: 3, scope: !1568, file: !1569, line: 58, type: !42)
!1576 = !DILocalVariable(name: "total", scope: !1568, file: !1569, line: 60, type: !42)
!1577 = !DILocalVariable(name: "ptr", scope: !1568, file: !1569, line: 61, type: !48)
!1578 = !DILocalVariable(name: "n_rw", scope: !1579, file: !1569, line: 65, type: !42)
!1579 = distinct !DILexicalBlock(scope: !1568, file: !1569, line: 64, column: 5)
!1580 = !DILocation(line: 58, column: 14, scope: !1568)
!1581 = !DILocation(line: 58, column: 30, scope: !1568)
!1582 = !DILocation(line: 58, column: 42, scope: !1568)
!1583 = !DILocation(line: 60, column: 10, scope: !1568)
!1584 = !DILocation(line: 61, column: 15, scope: !1568)
!1585 = !DILocation(line: 63, column: 16, scope: !1568)
!1586 = !DILocation(line: 63, column: 3, scope: !1568)
!1587 = !DILocation(line: 65, column: 21, scope: !1579)
!1588 = !DILocation(line: 65, column: 14, scope: !1579)
!1589 = !DILocation(line: 66, column: 11, scope: !1579)
!1590 = !DILocation(line: 70, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !1569, line: 69, column: 9)
!1592 = distinct !DILexicalBlock(scope: !1579, file: !1569, line: 68, column: 11)
!1593 = !DILocation(line: 70, column: 17, scope: !1591)
!1594 = !DILocation(line: 71, column: 11, scope: !1591)
!1595 = !DILocation(line: 73, column: 13, scope: !1579)
!1596 = !DILocation(line: 74, column: 11, scope: !1579)
!1597 = !DILocation(line: 75, column: 13, scope: !1579)
!1598 = distinct !{!1598, !1586, !1599}
!1599 = !DILocation(line: 76, column: 5, scope: !1568)
!1600 = !DILocation(line: 78, column: 3, scope: !1568)
!1601 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !707, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !1602)
!1602 = !{!1603, !1604, !1605}
!1603 = !DILocalVariable(name: "argv0", arg: 1, scope: !1601, file: !170, line: 39, type: !48)
!1604 = !DILocalVariable(name: "slash", scope: !1601, file: !170, line: 46, type: !48)
!1605 = !DILocalVariable(name: "base", scope: !1601, file: !170, line: 47, type: !48)
!1606 = !DILocation(line: 39, column: 31, scope: !1601)
!1607 = !DILocation(line: 51, column: 13, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !170, line: 51, column: 7)
!1609 = !DILocation(line: 51, column: 7, scope: !1601)
!1610 = !DILocation(line: 55, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !170, line: 52, column: 5)
!1612 = !DILocation(line: 54, column: 7, scope: !1611)
!1613 = !DILocation(line: 56, column: 7, scope: !1611)
!1614 = !DILocation(line: 59, column: 11, scope: !1601)
!1615 = !DILocation(line: 46, column: 15, scope: !1601)
!1616 = !DILocation(line: 60, column: 17, scope: !1601)
!1617 = !DILocation(line: 60, column: 33, scope: !1601)
!1618 = !DILocation(line: 60, column: 11, scope: !1601)
!1619 = !DILocation(line: 47, column: 15, scope: !1601)
!1620 = !DILocation(line: 61, column: 12, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1601, file: !170, line: 61, column: 7)
!1622 = !DILocation(line: 61, column: 20, scope: !1621)
!1623 = !DILocation(line: 61, column: 25, scope: !1621)
!1624 = !DILocation(line: 61, column: 42, scope: !1621)
!1625 = !DILocation(line: 61, column: 28, scope: !1621)
!1626 = !DILocation(line: 61, column: 61, scope: !1621)
!1627 = !DILocation(line: 61, column: 7, scope: !1601)
!1628 = !DILocation(line: 64, column: 11, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !170, line: 64, column: 11)
!1630 = distinct !DILexicalBlock(scope: !1621, file: !170, line: 62, column: 5)
!1631 = !DILocation(line: 64, column: 36, scope: !1629)
!1632 = !DILocation(line: 64, column: 11, scope: !1630)
!1633 = !DILocation(line: 66, column: 24, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !170, line: 65, column: 9)
!1635 = !DILocation(line: 70, column: 41, scope: !1634)
!1636 = !DILocation(line: 72, column: 9, scope: !1634)
!1637 = !DILocation(line: 84, column: 16, scope: !1601)
!1638 = !DILocation(line: 90, column: 27, scope: !1601)
!1639 = !DILocation(line: 92, column: 1, scope: !1601)
!1640 = distinct !DISubprogram(name: "clone_quoting_options", scope: !201, file: !201, line: 122, type: !1641, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1644)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1643, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1644 = !{!1645, !1646, !1647}
!1645 = !DILocalVariable(name: "o", arg: 1, scope: !1640, file: !201, line: 122, type: !1643)
!1646 = !DILocalVariable(name: "e", scope: !1640, file: !201, line: 124, type: !6)
!1647 = !DILocalVariable(name: "p", scope: !1640, file: !201, line: 125, type: !1643)
!1648 = !DILocation(line: 122, column: 48, scope: !1640)
!1649 = !DILocation(line: 124, column: 11, scope: !1640)
!1650 = !DILocation(line: 124, column: 7, scope: !1640)
!1651 = !DILocation(line: 125, column: 40, scope: !1640)
!1652 = !DILocation(line: 125, column: 31, scope: !1640)
!1653 = !DILocation(line: 125, column: 27, scope: !1640)
!1654 = !DILocation(line: 127, column: 9, scope: !1640)
!1655 = !DILocation(line: 128, column: 3, scope: !1640)
!1656 = distinct !DISubprogram(name: "get_quoting_style", scope: !201, file: !201, line: 133, type: !1657, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1661)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!12, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!1661 = !{!1662}
!1662 = !DILocalVariable(name: "o", arg: 1, scope: !1656, file: !201, line: 133, type: !1659)
!1663 = !DILocation(line: 133, column: 50, scope: !1656)
!1664 = !DILocation(line: 135, column: 11, scope: !1656)
!1665 = !DILocation(line: 135, column: 46, scope: !1656)
!1666 = !{!1667, !734, i64 0}
!1667 = !{!"quoting_options", !734, i64 0, !850, i64 4, !734, i64 8, !733, i64 40, !733, i64 48}
!1668 = !DILocation(line: 135, column: 3, scope: !1656)
!1669 = distinct !DISubprogram(name: "set_quoting_style", scope: !201, file: !201, line: 141, type: !1670, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1672)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1643, !12}
!1672 = !{!1673, !1674}
!1673 = !DILocalVariable(name: "o", arg: 1, scope: !1669, file: !201, line: 141, type: !1643)
!1674 = !DILocalVariable(name: "s", arg: 2, scope: !1669, file: !201, line: 141, type: !12)
!1675 = !DILocation(line: 141, column: 44, scope: !1669)
!1676 = !DILocation(line: 141, column: 66, scope: !1669)
!1677 = !DILocation(line: 143, column: 4, scope: !1669)
!1678 = !DILocation(line: 143, column: 39, scope: !1669)
!1679 = !DILocation(line: 143, column: 45, scope: !1669)
!1680 = !DILocation(line: 144, column: 1, scope: !1669)
!1681 = distinct !DISubprogram(name: "set_char_quoting", scope: !201, file: !201, line: 152, type: !1682, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1684)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!6, !1643, !9, !6}
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1691, !1692}
!1685 = !DILocalVariable(name: "o", arg: 1, scope: !1681, file: !201, line: 152, type: !1643)
!1686 = !DILocalVariable(name: "c", arg: 2, scope: !1681, file: !201, line: 152, type: !9)
!1687 = !DILocalVariable(name: "i", arg: 3, scope: !1681, file: !201, line: 152, type: !6)
!1688 = !DILocalVariable(name: "uc", scope: !1681, file: !201, line: 154, type: !1032)
!1689 = !DILocalVariable(name: "p", scope: !1681, file: !201, line: 155, type: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1691 = !DILocalVariable(name: "shift", scope: !1681, file: !201, line: 157, type: !6)
!1692 = !DILocalVariable(name: "r", scope: !1681, file: !201, line: 158, type: !6)
!1693 = !DILocation(line: 152, column: 43, scope: !1681)
!1694 = !DILocation(line: 152, column: 51, scope: !1681)
!1695 = !DILocation(line: 152, column: 58, scope: !1681)
!1696 = !DILocation(line: 154, column: 17, scope: !1681)
!1697 = !DILocation(line: 156, column: 6, scope: !1681)
!1698 = !DILocation(line: 156, column: 62, scope: !1681)
!1699 = !DILocation(line: 156, column: 57, scope: !1681)
!1700 = !DILocation(line: 155, column: 17, scope: !1681)
!1701 = !DILocation(line: 157, column: 15, scope: !1681)
!1702 = !DILocation(line: 157, column: 7, scope: !1681)
!1703 = !DILocation(line: 158, column: 12, scope: !1681)
!1704 = !DILocation(line: 158, column: 15, scope: !1681)
!1705 = !DILocation(line: 158, column: 25, scope: !1681)
!1706 = !DILocation(line: 158, column: 7, scope: !1681)
!1707 = !DILocation(line: 159, column: 13, scope: !1681)
!1708 = !DILocation(line: 159, column: 18, scope: !1681)
!1709 = !DILocation(line: 159, column: 23, scope: !1681)
!1710 = !DILocation(line: 159, column: 6, scope: !1681)
!1711 = !DILocation(line: 160, column: 3, scope: !1681)
!1712 = distinct !DISubprogram(name: "set_quoting_flags", scope: !201, file: !201, line: 168, type: !1713, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!6, !1643, !6}
!1715 = !{!1716, !1717, !1718}
!1716 = !DILocalVariable(name: "o", arg: 1, scope: !1712, file: !201, line: 168, type: !1643)
!1717 = !DILocalVariable(name: "i", arg: 2, scope: !1712, file: !201, line: 168, type: !6)
!1718 = !DILocalVariable(name: "r", scope: !1712, file: !201, line: 170, type: !6)
!1719 = !DILocation(line: 168, column: 44, scope: !1712)
!1720 = !DILocation(line: 168, column: 51, scope: !1712)
!1721 = !DILocation(line: 171, column: 8, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1712, file: !201, line: 171, column: 7)
!1723 = !DILocation(line: 171, column: 7, scope: !1712)
!1724 = !DILocation(line: 173, column: 10, scope: !1712)
!1725 = !{!1667, !850, i64 4}
!1726 = !DILocation(line: 170, column: 7, scope: !1712)
!1727 = !DILocation(line: 174, column: 12, scope: !1712)
!1728 = !DILocation(line: 175, column: 3, scope: !1712)
!1729 = distinct !DISubprogram(name: "set_custom_quoting", scope: !201, file: !201, line: 179, type: !1730, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !1643, !48, !48}
!1732 = !{!1733, !1734, !1735}
!1733 = !DILocalVariable(name: "o", arg: 1, scope: !1729, file: !201, line: 179, type: !1643)
!1734 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1729, file: !201, line: 180, type: !48)
!1735 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1729, file: !201, line: 180, type: !48)
!1736 = !DILocation(line: 179, column: 45, scope: !1729)
!1737 = !DILocation(line: 180, column: 33, scope: !1729)
!1738 = !DILocation(line: 180, column: 57, scope: !1729)
!1739 = !DILocation(line: 182, column: 8, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1729, file: !201, line: 182, column: 7)
!1741 = !DILocation(line: 182, column: 7, scope: !1729)
!1742 = !DILocation(line: 184, column: 6, scope: !1729)
!1743 = !DILocation(line: 184, column: 12, scope: !1729)
!1744 = !DILocation(line: 185, column: 8, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1729, file: !201, line: 185, column: 7)
!1746 = !DILocation(line: 185, column: 23, scope: !1745)
!1747 = !DILocation(line: 185, column: 19, scope: !1745)
!1748 = !DILocation(line: 186, column: 5, scope: !1745)
!1749 = !DILocation(line: 187, column: 6, scope: !1729)
!1750 = !DILocation(line: 187, column: 17, scope: !1729)
!1751 = !{!1667, !733, i64 40}
!1752 = !DILocation(line: 188, column: 6, scope: !1729)
!1753 = !DILocation(line: 188, column: 18, scope: !1729)
!1754 = !{!1667, !733, i64 48}
!1755 = !DILocation(line: 189, column: 1, scope: !1729)
!1756 = distinct !DISubprogram(name: "quotearg_buffer", scope: !201, file: !201, line: 784, type: !1757, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!42, !8, !42, !48, !42, !1659}
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1760 = !DILocalVariable(name: "buffer", arg: 1, scope: !1756, file: !201, line: 784, type: !8)
!1761 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1756, file: !201, line: 784, type: !42)
!1762 = !DILocalVariable(name: "arg", arg: 3, scope: !1756, file: !201, line: 785, type: !48)
!1763 = !DILocalVariable(name: "argsize", arg: 4, scope: !1756, file: !201, line: 785, type: !42)
!1764 = !DILocalVariable(name: "o", arg: 5, scope: !1756, file: !201, line: 786, type: !1659)
!1765 = !DILocalVariable(name: "p", scope: !1756, file: !201, line: 788, type: !1659)
!1766 = !DILocalVariable(name: "e", scope: !1756, file: !201, line: 789, type: !6)
!1767 = !DILocalVariable(name: "r", scope: !1756, file: !201, line: 790, type: !42)
!1768 = !DILocation(line: 784, column: 24, scope: !1756)
!1769 = !DILocation(line: 784, column: 39, scope: !1756)
!1770 = !DILocation(line: 785, column: 30, scope: !1756)
!1771 = !DILocation(line: 785, column: 42, scope: !1756)
!1772 = !DILocation(line: 786, column: 48, scope: !1756)
!1773 = !DILocation(line: 788, column: 37, scope: !1756)
!1774 = !DILocation(line: 788, column: 33, scope: !1756)
!1775 = !DILocation(line: 789, column: 11, scope: !1756)
!1776 = !DILocation(line: 789, column: 7, scope: !1756)
!1777 = !DILocation(line: 791, column: 43, scope: !1756)
!1778 = !DILocation(line: 791, column: 53, scope: !1756)
!1779 = !DILocation(line: 791, column: 60, scope: !1756)
!1780 = !DILocation(line: 792, column: 43, scope: !1756)
!1781 = !DILocation(line: 792, column: 58, scope: !1756)
!1782 = !DILocation(line: 790, column: 14, scope: !1756)
!1783 = !DILocation(line: 790, column: 10, scope: !1756)
!1784 = !DILocation(line: 793, column: 9, scope: !1756)
!1785 = !DILocation(line: 794, column: 3, scope: !1756)
!1786 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !201, file: !201, line: 256, type: !1787, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !1791)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!42, !8, !42, !48, !42, !12, !6, !1789, !48, !48}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1816, !1817, !1818, !1819, !1820, !1823, !1824, !1842, !1845, !1846, !1853}
!1792 = !DILocalVariable(name: "buffer", arg: 1, scope: !1786, file: !201, line: 256, type: !8)
!1793 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1786, file: !201, line: 256, type: !42)
!1794 = !DILocalVariable(name: "arg", arg: 3, scope: !1786, file: !201, line: 257, type: !48)
!1795 = !DILocalVariable(name: "argsize", arg: 4, scope: !1786, file: !201, line: 257, type: !42)
!1796 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1786, file: !201, line: 258, type: !12)
!1797 = !DILocalVariable(name: "flags", arg: 6, scope: !1786, file: !201, line: 258, type: !6)
!1798 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1786, file: !201, line: 259, type: !1789)
!1799 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1786, file: !201, line: 260, type: !48)
!1800 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1786, file: !201, line: 261, type: !48)
!1801 = !DILocalVariable(name: "i", scope: !1786, file: !201, line: 263, type: !42)
!1802 = !DILocalVariable(name: "len", scope: !1786, file: !201, line: 264, type: !42)
!1803 = !DILocalVariable(name: "orig_buffersize", scope: !1786, file: !201, line: 265, type: !42)
!1804 = !DILocalVariable(name: "quote_string", scope: !1786, file: !201, line: 266, type: !48)
!1805 = !DILocalVariable(name: "quote_string_len", scope: !1786, file: !201, line: 267, type: !42)
!1806 = !DILocalVariable(name: "backslash_escapes", scope: !1786, file: !201, line: 268, type: !74)
!1807 = !DILocalVariable(name: "unibyte_locale", scope: !1786, file: !201, line: 269, type: !74)
!1808 = !DILocalVariable(name: "elide_outer_quotes", scope: !1786, file: !201, line: 270, type: !74)
!1809 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1786, file: !201, line: 271, type: !74)
!1810 = !DILocalVariable(name: "encountered_single_quote", scope: !1786, file: !201, line: 272, type: !74)
!1811 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1786, file: !201, line: 273, type: !74)
!1812 = !DILocalVariable(name: "c", scope: !1813, file: !201, line: 402, type: !1032)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !201, line: 401, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !201, line: 400, column: 3)
!1815 = distinct !DILexicalBlock(scope: !1786, file: !201, line: 400, column: 3)
!1816 = !DILocalVariable(name: "esc", scope: !1813, file: !201, line: 403, type: !1032)
!1817 = !DILocalVariable(name: "is_right_quote", scope: !1813, file: !201, line: 404, type: !74)
!1818 = !DILocalVariable(name: "escaping", scope: !1813, file: !201, line: 405, type: !74)
!1819 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1813, file: !201, line: 406, type: !74)
!1820 = !DILocalVariable(name: "m", scope: !1821, file: !201, line: 610, type: !42)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 608, column: 11)
!1822 = distinct !DILexicalBlock(scope: !1813, file: !201, line: 426, column: 9)
!1823 = !DILocalVariable(name: "printable", scope: !1821, file: !201, line: 612, type: !74)
!1824 = !DILocalVariable(name: "mbstate", scope: !1825, file: !201, line: 621, type: !1827)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !201, line: 620, column: 15)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !201, line: 614, column: 17)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1828, line: 6, baseType: !1829)
!1828 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1830, line: 21, baseType: !1831)
!1830 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 13, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1831, file: !1830, line: 15, baseType: !6, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1831, file: !1830, line: 20, baseType: !1835, size: 32, offset: 32)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1830, line: 16, size: 32, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1835, file: !1830, line: 18, baseType: !14, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1835, file: !1830, line: 19, baseType: !1839, size: 32)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !1840)
!1840 = !{!1841}
!1841 = !DISubrange(count: 4)
!1842 = !DILocalVariable(name: "w", scope: !1843, file: !201, line: 631, type: !1844)
!1843 = distinct !DILexicalBlock(scope: !1825, file: !201, line: 630, column: 19)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !43, line: 90, baseType: !6)
!1845 = !DILocalVariable(name: "bytes", scope: !1843, file: !201, line: 632, type: !42)
!1846 = !DILocalVariable(name: "j", scope: !1847, file: !201, line: 657, type: !42)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !201, line: 656, column: 27)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !201, line: 654, column: 29)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !201, line: 649, column: 23)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !201, line: 641, column: 30)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !201, line: 636, column: 30)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !201, line: 634, column: 25)
!1853 = !DILocalVariable(name: "ilim", scope: !1854, file: !201, line: 684, type: !42)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !201, line: 681, column: 15)
!1855 = distinct !DILexicalBlock(scope: !1821, file: !201, line: 680, column: 17)
!1856 = !DILocation(line: 256, column: 33, scope: !1786)
!1857 = !DILocation(line: 256, column: 48, scope: !1786)
!1858 = !DILocation(line: 257, column: 39, scope: !1786)
!1859 = !DILocation(line: 257, column: 51, scope: !1786)
!1860 = !DILocation(line: 258, column: 46, scope: !1786)
!1861 = !DILocation(line: 258, column: 65, scope: !1786)
!1862 = !DILocation(line: 259, column: 47, scope: !1786)
!1863 = !DILocation(line: 260, column: 39, scope: !1786)
!1864 = !DILocation(line: 261, column: 39, scope: !1786)
!1865 = !DILocation(line: 264, column: 10, scope: !1786)
!1866 = !DILocation(line: 265, column: 10, scope: !1786)
!1867 = !DILocation(line: 266, column: 15, scope: !1786)
!1868 = !DILocation(line: 267, column: 10, scope: !1786)
!1869 = !DILocation(line: 268, column: 8, scope: !1786)
!1870 = !DILocation(line: 269, column: 25, scope: !1786)
!1871 = !DILocation(line: 269, column: 36, scope: !1786)
!1872 = !DILocation(line: 270, column: 8, scope: !1786)
!1873 = !DILocation(line: 271, column: 8, scope: !1786)
!1874 = !DILocation(line: 272, column: 8, scope: !1786)
!1875 = !DILocation(line: 273, column: 8, scope: !1786)
!1876 = !DILocation(line: 273, column: 3, scope: !1786)
!1877 = !DILocation(line: 0, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1786, file: !201, line: 317, column: 5)
!1879 = !DILocation(line: 316, column: 3, scope: !1786)
!1880 = !DILocation(line: 323, column: 11, scope: !1878)
!1881 = !DILocation(line: 323, column: 12, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !201, line: 323, column: 11)
!1883 = !DILocation(line: 324, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !201, line: 324, column: 9)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !201, line: 324, column: 9)
!1886 = !DILocation(line: 324, column: 9, scope: !1885)
!1887 = !DILocation(line: 362, column: 26, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !201, line: 340, column: 11)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !201, line: 339, column: 13)
!1890 = distinct !DILexicalBlock(scope: !1878, file: !201, line: 338, column: 7)
!1891 = !DILocation(line: 363, column: 27, scope: !1888)
!1892 = !DILocation(line: 364, column: 11, scope: !1888)
!1893 = !DILocation(line: 365, column: 14, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !201, line: 365, column: 13)
!1895 = !DILocation(line: 365, column: 13, scope: !1890)
!1896 = !DILocation(line: 366, column: 43, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !201, line: 366, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !201, line: 366, column: 11)
!1899 = !DILocation(line: 366, column: 11, scope: !1898)
!1900 = !DILocation(line: 367, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !201, line: 367, column: 13)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !201, line: 367, column: 13)
!1903 = !DILocation(line: 367, column: 13, scope: !1902)
!1904 = !DILocation(line: 366, column: 70, scope: !1897)
!1905 = distinct !{!1905, !1899, !1906}
!1906 = !DILocation(line: 367, column: 13, scope: !1898)
!1907 = !DILocation(line: 370, column: 28, scope: !1890)
!1908 = !DILocation(line: 372, column: 7, scope: !1878)
!1909 = !DILocation(line: 376, column: 7, scope: !1878)
!1910 = !DILocation(line: 379, column: 7, scope: !1878)
!1911 = !DILocation(line: 381, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1878, file: !201, line: 381, column: 11)
!1913 = !DILocation(line: 381, column: 11, scope: !1878)
!1914 = !DILocation(line: 0, scope: !1912)
!1915 = !DILocation(line: 386, column: 12, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1878, file: !201, line: 386, column: 11)
!1917 = !DILocation(line: 386, column: 11, scope: !1878)
!1918 = !DILocation(line: 387, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !201, line: 387, column: 9)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !201, line: 387, column: 9)
!1921 = !DILocation(line: 387, column: 9, scope: !1920)
!1922 = !DILocation(line: 394, column: 7, scope: !1878)
!1923 = !DILocation(line: 397, column: 7, scope: !1878)
!1924 = !DILocation(line: 0, scope: !1786)
!1925 = !DILocation(line: 263, column: 10, scope: !1786)
!1926 = !DILocation(line: 400, column: 8, scope: !1815)
!1927 = !DILocation(line: 0, scope: !1814)
!1928 = !DILocation(line: 400, column: 27, scope: !1814)
!1929 = !DILocation(line: 400, column: 19, scope: !1814)
!1930 = !DILocation(line: 400, column: 41, scope: !1814)
!1931 = !DILocation(line: 400, column: 48, scope: !1814)
!1932 = !DILocation(line: 400, column: 3, scope: !1815)
!1933 = !DILocation(line: 400, column: 60, scope: !1814)
!1934 = !DILocation(line: 404, column: 12, scope: !1813)
!1935 = !DILocation(line: 405, column: 12, scope: !1813)
!1936 = !DILocation(line: 406, column: 12, scope: !1813)
!1937 = !DILocation(line: 409, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1813, file: !201, line: 408, column: 11)
!1939 = !DILocation(line: 411, column: 17, scope: !1938)
!1940 = !DILocation(line: 412, column: 39, scope: !1938)
!1941 = !DILocation(line: 416, column: 32, scope: !1938)
!1942 = !DILocation(line: 412, column: 19, scope: !1938)
!1943 = !DILocation(line: 412, column: 15, scope: !1938)
!1944 = !DILocation(line: 417, column: 11, scope: !1938)
!1945 = !DILocation(line: 417, column: 26, scope: !1938)
!1946 = !DILocation(line: 417, column: 14, scope: !1938)
!1947 = !DILocation(line: 417, column: 63, scope: !1938)
!1948 = !DILocation(line: 408, column: 11, scope: !1813)
!1949 = !DILocation(line: 0, scope: !1813)
!1950 = !DILocation(line: 424, column: 11, scope: !1813)
!1951 = !DILocation(line: 402, column: 21, scope: !1813)
!1952 = !DILocation(line: 425, column: 7, scope: !1813)
!1953 = !DILocation(line: 428, column: 15, scope: !1822)
!1954 = !DILocation(line: 430, column: 15, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !201, line: 430, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !201, line: 429, column: 13)
!1957 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 428, column: 15)
!1958 = !DILocation(line: 430, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !201, line: 430, column: 15)
!1960 = !DILocation(line: 430, column: 15, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !201, line: 430, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !201, line: 430, column: 15)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !201, line: 430, column: 15)
!1964 = !DILocation(line: 430, column: 15, scope: !1962)
!1965 = !DILocation(line: 430, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !201, line: 430, column: 15)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !201, line: 430, column: 15)
!1968 = !DILocation(line: 430, column: 15, scope: !1967)
!1969 = !DILocation(line: 430, column: 15, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !201, line: 430, column: 15)
!1971 = distinct !DILexicalBlock(scope: !1963, file: !201, line: 430, column: 15)
!1972 = !DILocation(line: 430, column: 15, scope: !1971)
!1973 = !DILocation(line: 430, column: 15, scope: !1963)
!1974 = !DILocation(line: 430, column: 15, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !201, line: 430, column: 15)
!1976 = distinct !DILexicalBlock(scope: !1955, file: !201, line: 430, column: 15)
!1977 = !DILocation(line: 430, column: 15, scope: !1976)
!1978 = !DILocation(line: 438, column: 19, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1956, file: !201, line: 437, column: 19)
!1980 = !DILocation(line: 438, column: 24, scope: !1979)
!1981 = !DILocation(line: 438, column: 28, scope: !1979)
!1982 = !DILocation(line: 438, column: 38, scope: !1979)
!1983 = !DILocation(line: 438, column: 48, scope: !1979)
!1984 = !DILocation(line: 438, column: 59, scope: !1979)
!1985 = !DILocation(line: 440, column: 19, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !201, line: 440, column: 19)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !201, line: 440, column: 19)
!1988 = distinct !DILexicalBlock(scope: !1979, file: !201, line: 439, column: 17)
!1989 = !DILocation(line: 440, column: 19, scope: !1987)
!1990 = !DILocation(line: 441, column: 19, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !201, line: 441, column: 19)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !201, line: 441, column: 19)
!1993 = !DILocation(line: 441, column: 19, scope: !1992)
!1994 = !DILocation(line: 442, column: 17, scope: !1988)
!1995 = !DILocation(line: 449, column: 20, scope: !1957)
!1996 = !DILocation(line: 454, column: 11, scope: !1822)
!1997 = !DILocation(line: 457, column: 19, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 455, column: 13)
!1999 = !DILocation(line: 463, column: 19, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1998, file: !201, line: 462, column: 19)
!2001 = !DILocation(line: 463, column: 24, scope: !2000)
!2002 = !DILocation(line: 463, column: 28, scope: !2000)
!2003 = !DILocation(line: 463, column: 38, scope: !2000)
!2004 = !DILocation(line: 463, column: 47, scope: !2000)
!2005 = !DILocation(line: 463, column: 41, scope: !2000)
!2006 = !DILocation(line: 463, column: 52, scope: !2000)
!2007 = !DILocation(line: 462, column: 19, scope: !1998)
!2008 = !DILocation(line: 464, column: 25, scope: !2000)
!2009 = !DILocation(line: 464, column: 17, scope: !2000)
!2010 = !DILocation(line: 471, column: 25, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2000, file: !201, line: 465, column: 19)
!2012 = !DILocation(line: 475, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !201, line: 475, column: 21)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !201, line: 475, column: 21)
!2015 = !DILocation(line: 475, column: 21, scope: !2014)
!2016 = !DILocation(line: 476, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !201, line: 476, column: 21)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !201, line: 476, column: 21)
!2019 = !DILocation(line: 476, column: 21, scope: !2018)
!2020 = !DILocation(line: 477, column: 21, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !201, line: 477, column: 21)
!2022 = distinct !DILexicalBlock(scope: !2011, file: !201, line: 477, column: 21)
!2023 = !DILocation(line: 477, column: 21, scope: !2022)
!2024 = !DILocation(line: 478, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !201, line: 478, column: 21)
!2026 = distinct !DILexicalBlock(scope: !2011, file: !201, line: 478, column: 21)
!2027 = !DILocation(line: 478, column: 21, scope: !2026)
!2028 = !DILocation(line: 479, column: 21, scope: !2011)
!2029 = !DILocation(line: 403, column: 21, scope: !1813)
!2030 = !DILocation(line: 492, column: 31, scope: !1822)
!2031 = !DILocation(line: 493, column: 31, scope: !1822)
!2032 = !DILocation(line: 495, column: 31, scope: !1822)
!2033 = !DILocation(line: 496, column: 31, scope: !1822)
!2034 = !DILocation(line: 497, column: 31, scope: !1822)
!2035 = !DILocation(line: 500, column: 15, scope: !1822)
!2036 = !DILocation(line: 502, column: 19, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !201, line: 501, column: 13)
!2038 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 500, column: 15)
!2039 = !DILocation(line: 509, column: 33, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 509, column: 15)
!2041 = !DILocation(line: 0, scope: !1822)
!2042 = !DILocation(line: 514, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 513, column: 15)
!2044 = !DILocation(line: 518, column: 15, scope: !1822)
!2045 = !DILocation(line: 526, column: 26, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 526, column: 15)
!2047 = !DILocation(line: 526, column: 15, scope: !1822)
!2048 = !DILocation(line: 526, column: 40, scope: !2046)
!2049 = !DILocation(line: 526, column: 47, scope: !2046)
!2050 = !DILocation(line: 530, column: 17, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 530, column: 15)
!2052 = !DILocation(line: 526, column: 18, scope: !2046)
!2053 = !DILocation(line: 526, column: 65, scope: !2046)
!2054 = !DILocation(line: 530, column: 15, scope: !1822)
!2055 = !DILocation(line: 535, column: 11, scope: !1822)
!2056 = !DILocation(line: 549, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 548, column: 15)
!2058 = !DILocation(line: 556, column: 15, scope: !1822)
!2059 = !DILocation(line: 558, column: 19, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !201, line: 557, column: 13)
!2061 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 556, column: 15)
!2062 = !DILocation(line: 561, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !201, line: 561, column: 19)
!2064 = !DILocation(line: 561, column: 35, scope: !2063)
!2065 = !DILocation(line: 561, column: 30, scope: !2063)
!2066 = !DILocation(line: 570, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !201, line: 570, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2060, file: !201, line: 570, column: 15)
!2069 = !DILocation(line: 570, column: 15, scope: !2068)
!2070 = !DILocation(line: 571, column: 15, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !201, line: 571, column: 15)
!2072 = distinct !DILexicalBlock(scope: !2060, file: !201, line: 571, column: 15)
!2073 = !DILocation(line: 571, column: 15, scope: !2072)
!2074 = !DILocation(line: 572, column: 15, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !201, line: 572, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2060, file: !201, line: 572, column: 15)
!2077 = !DILocation(line: 572, column: 15, scope: !2076)
!2078 = !DILocation(line: 574, column: 13, scope: !2060)
!2079 = !DILocation(line: 614, column: 17, scope: !1821)
!2080 = !DILocation(line: 610, column: 20, scope: !1821)
!2081 = !DILocation(line: 617, column: 29, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1826, file: !201, line: 615, column: 15)
!2083 = !{!2084, !2084, i64 0}
!2084 = !{!"short", !734, i64 0}
!2085 = !DILocation(line: 617, column: 27, scope: !2082)
!2086 = !DILocation(line: 612, column: 18, scope: !1821)
!2087 = !DILocation(line: 618, column: 15, scope: !2082)
!2088 = !DILocation(line: 621, column: 17, scope: !1825)
!2089 = !DILocation(line: 622, column: 17, scope: !1825)
!2090 = !DILocation(line: 626, column: 29, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1825, file: !201, line: 626, column: 21)
!2092 = !DILocation(line: 626, column: 21, scope: !1825)
!2093 = !DILocation(line: 627, column: 29, scope: !2091)
!2094 = !DILocation(line: 627, column: 19, scope: !2091)
!2095 = !DILocation(line: 0, scope: !1938)
!2096 = !DILocation(line: 629, column: 17, scope: !1825)
!2097 = !DILocation(line: 624, column: 19, scope: !1825)
!2098 = !DILocation(line: 625, column: 27, scope: !1825)
!2099 = !DILocation(line: 631, column: 21, scope: !1843)
!2100 = !DILocation(line: 632, column: 56, scope: !1843)
!2101 = !DILocation(line: 632, column: 50, scope: !1843)
!2102 = !DILocation(line: 633, column: 53, scope: !1843)
!2103 = !DILocation(line: 621, column: 27, scope: !1825)
!2104 = !DILocation(line: 631, column: 29, scope: !1843)
!2105 = !DILocation(line: 632, column: 36, scope: !1843)
!2106 = !DILocation(line: 632, column: 28, scope: !1843)
!2107 = !DILocation(line: 634, column: 25, scope: !1843)
!2108 = !DILocation(line: 644, column: 38, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1850, file: !201, line: 642, column: 23)
!2110 = !DILocation(line: 644, column: 48, scope: !2109)
!2111 = !DILocation(line: 644, column: 51, scope: !2109)
!2112 = !DILocation(line: 644, column: 25, scope: !2109)
!2113 = !DILocation(line: 645, column: 28, scope: !2109)
!2114 = !DILocation(line: 644, column: 34, scope: !2109)
!2115 = distinct !{!2115, !2112, !2113}
!2116 = !DILocation(line: 658, column: 43, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !201, line: 658, column: 29)
!2118 = distinct !DILexicalBlock(scope: !1847, file: !201, line: 658, column: 29)
!2119 = !DILocation(line: 655, column: 29, scope: !1848)
!2120 = !DILocation(line: 657, column: 36, scope: !1847)
!2121 = !DILocation(line: 659, column: 49, scope: !2117)
!2122 = !DILocation(line: 659, column: 39, scope: !2117)
!2123 = !DILocation(line: 659, column: 31, scope: !2117)
!2124 = !DILocation(line: 658, column: 53, scope: !2117)
!2125 = !DILocation(line: 658, column: 29, scope: !2118)
!2126 = distinct !{!2126, !2125, !2127}
!2127 = !DILocation(line: 667, column: 33, scope: !2118)
!2128 = !DILocation(line: 674, column: 19, scope: !1825)
!2129 = !DILocation(line: 670, column: 41, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1849, file: !201, line: 670, column: 29)
!2131 = !DILocation(line: 670, column: 31, scope: !2130)
!2132 = !DILocation(line: 670, column: 29, scope: !1849)
!2133 = !DILocation(line: 672, column: 27, scope: !1849)
!2134 = !DILocation(line: 675, column: 26, scope: !1825)
!2135 = !DILocation(line: 675, column: 24, scope: !1825)
!2136 = !DILocation(line: 674, column: 19, scope: !1843)
!2137 = distinct !{!2137, !2096, !2138}
!2138 = !DILocation(line: 675, column: 44, scope: !1825)
!2139 = !DILocation(line: 676, column: 15, scope: !1826)
!2140 = !DILocation(line: 0, scope: !2091)
!2141 = !DILocation(line: 0, scope: !1825)
!2142 = !DILocation(line: 678, column: 40, scope: !1821)
!2143 = !DILocation(line: 680, column: 19, scope: !1855)
!2144 = !DILocation(line: 680, column: 45, scope: !1855)
!2145 = !DILocation(line: 680, column: 23, scope: !1855)
!2146 = !DILocation(line: 684, column: 33, scope: !1854)
!2147 = !DILocation(line: 684, column: 24, scope: !1854)
!2148 = !DILocation(line: 686, column: 17, scope: !1854)
!2149 = !DILocation(line: 0, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !201, line: 687, column: 19)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !201, line: 686, column: 17)
!2152 = distinct !DILexicalBlock(scope: !1854, file: !201, line: 686, column: 17)
!2153 = !DILocation(line: 0, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !201, line: 703, column: 21)
!2155 = !DILocation(line: 0, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !201, line: 696, column: 23)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !201, line: 695, column: 30)
!2158 = distinct !DILexicalBlock(scope: !2150, file: !201, line: 688, column: 25)
!2159 = !DILocation(line: 688, column: 43, scope: !2158)
!2160 = !DILocation(line: 690, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !201, line: 690, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !201, line: 689, column: 23)
!2163 = !DILocation(line: 690, column: 25, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !201, line: 690, column: 25)
!2165 = !DILocation(line: 690, column: 25, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !201, line: 690, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !201, line: 690, column: 25)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !201, line: 690, column: 25)
!2169 = !DILocation(line: 690, column: 25, scope: !2167)
!2170 = !DILocation(line: 690, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !201, line: 690, column: 25)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !201, line: 690, column: 25)
!2173 = !DILocation(line: 690, column: 25, scope: !2172)
!2174 = !DILocation(line: 690, column: 25, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !201, line: 690, column: 25)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !201, line: 690, column: 25)
!2177 = !DILocation(line: 690, column: 25, scope: !2176)
!2178 = !DILocation(line: 690, column: 25, scope: !2168)
!2179 = !DILocation(line: 690, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !201, line: 690, column: 25)
!2181 = distinct !DILexicalBlock(scope: !2161, file: !201, line: 690, column: 25)
!2182 = !DILocation(line: 690, column: 25, scope: !2181)
!2183 = !DILocation(line: 691, column: 25, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !201, line: 691, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2162, file: !201, line: 691, column: 25)
!2186 = !DILocation(line: 691, column: 25, scope: !2185)
!2187 = !DILocation(line: 692, column: 25, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !201, line: 692, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2162, file: !201, line: 692, column: 25)
!2190 = !DILocation(line: 692, column: 25, scope: !2189)
!2191 = !DILocation(line: 693, column: 38, scope: !2162)
!2192 = !DILocation(line: 693, column: 33, scope: !2162)
!2193 = !DILocation(line: 694, column: 23, scope: !2162)
!2194 = !DILocation(line: 695, column: 30, scope: !2157)
!2195 = !DILocation(line: 695, column: 30, scope: !2158)
!2196 = !DILocation(line: 697, column: 25, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !201, line: 697, column: 25)
!2198 = distinct !DILexicalBlock(scope: !2156, file: !201, line: 697, column: 25)
!2199 = !DILocation(line: 697, column: 25, scope: !2198)
!2200 = !DILocation(line: 699, column: 23, scope: !2156)
!2201 = !DILocation(line: 0, scope: !2189)
!2202 = !DILocation(line: 0, scope: !2162)
!2203 = !DILocation(line: 0, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1938, file: !201, line: 418, column: 9)
!2205 = !DILocation(line: 0, scope: !2161)
!2206 = !DILocation(line: 700, column: 35, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2150, file: !201, line: 700, column: 25)
!2208 = !DILocation(line: 700, column: 30, scope: !2207)
!2209 = !DILocation(line: 700, column: 25, scope: !2150)
!2210 = !DILocation(line: 702, column: 21, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !201, line: 702, column: 21)
!2212 = distinct !DILexicalBlock(scope: !2150, file: !201, line: 702, column: 21)
!2213 = !DILocation(line: 702, column: 21, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !201, line: 702, column: 21)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !201, line: 702, column: 21)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !201, line: 702, column: 21)
!2217 = !DILocation(line: 702, column: 21, scope: !2215)
!2218 = !DILocation(line: 702, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !201, line: 702, column: 21)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !201, line: 702, column: 21)
!2221 = !DILocation(line: 702, column: 21, scope: !2220)
!2222 = !DILocation(line: 702, column: 21, scope: !2216)
!2223 = !DILocation(line: 0, scope: !2198)
!2224 = !DILocation(line: 703, column: 21, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2154, file: !201, line: 703, column: 21)
!2226 = !DILocation(line: 703, column: 21, scope: !2154)
!2227 = !DILocation(line: 704, column: 25, scope: !2150)
!2228 = !DILocation(line: 686, column: 17, scope: !2151)
!2229 = distinct !{!2229, !2230, !2231}
!2230 = !DILocation(line: 686, column: 17, scope: !2152)
!2231 = !DILocation(line: 705, column: 19, scope: !2152)
!2232 = !DILocation(line: 0, scope: !1815)
!2233 = !DILocation(line: 416, column: 30, scope: !1938)
!2234 = !DILocation(line: 712, column: 34, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1813, file: !201, line: 712, column: 11)
!2236 = !DILocation(line: 714, column: 14, scope: !2235)
!2237 = !DILocation(line: 715, column: 14, scope: !2235)
!2238 = !DILocation(line: 715, column: 35, scope: !2235)
!2239 = !DILocation(line: 715, column: 17, scope: !2235)
!2240 = !DILocation(line: 715, column: 47, scope: !2235)
!2241 = !DILocation(line: 715, column: 65, scope: !2235)
!2242 = !DILocation(line: 716, column: 15, scope: !2235)
!2243 = !DILocation(line: 716, column: 11, scope: !2235)
!2244 = !DILocation(line: 712, column: 11, scope: !1813)
!2245 = !DILocation(line: 400, column: 10, scope: !1815)
!2246 = !DILocation(line: 0, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !201, line: 519, column: 13)
!2248 = distinct !DILexicalBlock(scope: !1822, file: !201, line: 518, column: 15)
!2249 = !DILocation(line: 720, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !1813, file: !201, line: 720, column: 7)
!2251 = !DILocation(line: 720, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2250, file: !201, line: 720, column: 7)
!2253 = !DILocation(line: 720, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !201, line: 720, column: 7)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !201, line: 720, column: 7)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !201, line: 720, column: 7)
!2257 = !DILocation(line: 720, column: 7, scope: !2255)
!2258 = !DILocation(line: 720, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !201, line: 720, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !201, line: 720, column: 7)
!2261 = !DILocation(line: 720, column: 7, scope: !2260)
!2262 = !DILocation(line: 720, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !201, line: 720, column: 7)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !201, line: 720, column: 7)
!2265 = !DILocation(line: 720, column: 7, scope: !2264)
!2266 = !DILocation(line: 720, column: 7, scope: !2256)
!2267 = !DILocation(line: 720, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !201, line: 720, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2250, file: !201, line: 720, column: 7)
!2270 = !DILocation(line: 720, column: 7, scope: !2269)
!2271 = !DILocation(line: 723, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !201, line: 723, column: 7)
!2273 = distinct !DILexicalBlock(scope: !1813, file: !201, line: 723, column: 7)
!2274 = !DILocation(line: 424, column: 9, scope: !1813)
!2275 = !DILocation(line: 723, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !201, line: 723, column: 7)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !201, line: 723, column: 7)
!2278 = distinct !DILexicalBlock(scope: !2272, file: !201, line: 723, column: 7)
!2279 = !DILocation(line: 723, column: 7, scope: !2277)
!2280 = !DILocation(line: 723, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !201, line: 723, column: 7)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !201, line: 723, column: 7)
!2283 = !DILocation(line: 723, column: 7, scope: !2282)
!2284 = !DILocation(line: 723, column: 7, scope: !2278)
!2285 = !DILocation(line: 724, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !201, line: 724, column: 7)
!2287 = distinct !DILexicalBlock(scope: !1813, file: !201, line: 724, column: 7)
!2288 = !DILocation(line: 724, column: 7, scope: !2287)
!2289 = !DILocation(line: 726, column: 13, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1813, file: !201, line: 726, column: 11)
!2291 = !DILocation(line: 726, column: 11, scope: !1813)
!2292 = !DILocation(line: 728, column: 5, scope: !1814)
!2293 = !DILocation(line: 400, column: 75, scope: !1814)
!2294 = !DILocation(line: 400, column: 3, scope: !1814)
!2295 = distinct !{!2295, !1932, !2296}
!2296 = !DILocation(line: 728, column: 5, scope: !1815)
!2297 = !DILocation(line: 730, column: 11, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !1786, file: !201, line: 730, column: 7)
!2299 = !DILocation(line: 730, column: 16, scope: !2298)
!2300 = !DILocation(line: 738, column: 51, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !1786, file: !201, line: 738, column: 7)
!2302 = !DILocation(line: 739, column: 10, scope: !2301)
!2303 = !DILocation(line: 741, column: 11, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !201, line: 741, column: 11)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !201, line: 740, column: 5)
!2306 = !DILocation(line: 741, column: 11, scope: !2305)
!2307 = !DILocation(line: 742, column: 16, scope: !2304)
!2308 = !DILocation(line: 742, column: 9, scope: !2304)
!2309 = !DILocation(line: 746, column: 18, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2304, file: !201, line: 746, column: 16)
!2311 = !DILocation(line: 746, column: 32, scope: !2310)
!2312 = !DILocation(line: 746, column: 29, scope: !2310)
!2313 = !DILocation(line: 755, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !1786, file: !201, line: 755, column: 7)
!2315 = !DILocation(line: 755, column: 20, scope: !2314)
!2316 = !DILocation(line: 756, column: 12, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !201, line: 756, column: 5)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !201, line: 756, column: 5)
!2319 = !DILocation(line: 756, column: 5, scope: !2318)
!2320 = !DILocation(line: 757, column: 7, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !201, line: 757, column: 7)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !201, line: 757, column: 7)
!2323 = !DILocation(line: 757, column: 7, scope: !2322)
!2324 = !DILocation(line: 756, column: 39, scope: !2317)
!2325 = distinct !{!2325, !2319, !2326}
!2326 = !DILocation(line: 757, column: 7, scope: !2318)
!2327 = !DILocation(line: 759, column: 11, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !1786, file: !201, line: 759, column: 7)
!2329 = !DILocation(line: 759, column: 7, scope: !1786)
!2330 = !DILocation(line: 760, column: 5, scope: !2328)
!2331 = !DILocation(line: 760, column: 17, scope: !2328)
!2332 = !DILocation(line: 766, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1786, file: !201, line: 766, column: 7)
!2334 = !DILocation(line: 766, column: 54, scope: !2333)
!2335 = !DILocation(line: 766, column: 51, scope: !2333)
!2336 = !DILocation(line: 770, column: 42, scope: !1786)
!2337 = !DILocation(line: 768, column: 10, scope: !1786)
!2338 = !DILocation(line: 768, column: 3, scope: !1786)
!2339 = !DILocation(line: 772, column: 1, scope: !1786)
!2340 = distinct !DISubprogram(name: "gettext_quote", scope: !201, file: !201, line: 207, type: !2341, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!48, !48, !12}
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DILocalVariable(name: "msgid", arg: 1, scope: !2340, file: !201, line: 207, type: !48)
!2345 = !DILocalVariable(name: "s", arg: 2, scope: !2340, file: !201, line: 207, type: !12)
!2346 = !DILocalVariable(name: "translation", scope: !2340, file: !201, line: 209, type: !48)
!2347 = !DILocalVariable(name: "locale_code", scope: !2340, file: !201, line: 210, type: !48)
!2348 = !DILocation(line: 207, column: 28, scope: !2340)
!2349 = !DILocation(line: 207, column: 54, scope: !2340)
!2350 = !DILocation(line: 209, column: 29, scope: !2340)
!2351 = !DILocation(line: 209, column: 15, scope: !2340)
!2352 = !DILocation(line: 212, column: 19, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2340, file: !201, line: 212, column: 7)
!2354 = !DILocation(line: 212, column: 7, scope: !2340)
!2355 = !DILocation(line: 233, column: 17, scope: !2340)
!2356 = !DILocation(line: 210, column: 15, scope: !2340)
!2357 = !DILocalVariable(name: "s1", arg: 1, scope: !2358, file: !2359, line: 160, type: !48)
!2358 = distinct !DISubprogram(name: "strcaseeq0", scope: !2359, file: !2359, line: 160, type: !2360, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2362)
!2359 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!2362 = !{!2357, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2363 = !DILocalVariable(name: "s2", arg: 2, scope: !2358, file: !2359, line: 160, type: !48)
!2364 = !DILocalVariable(name: "s20", arg: 3, scope: !2358, file: !2359, line: 160, type: !9)
!2365 = !DILocalVariable(name: "s21", arg: 4, scope: !2358, file: !2359, line: 160, type: !9)
!2366 = !DILocalVariable(name: "s22", arg: 5, scope: !2358, file: !2359, line: 160, type: !9)
!2367 = !DILocalVariable(name: "s23", arg: 6, scope: !2358, file: !2359, line: 160, type: !9)
!2368 = !DILocalVariable(name: "s24", arg: 7, scope: !2358, file: !2359, line: 160, type: !9)
!2369 = !DILocalVariable(name: "s25", arg: 8, scope: !2358, file: !2359, line: 160, type: !9)
!2370 = !DILocalVariable(name: "s26", arg: 9, scope: !2358, file: !2359, line: 160, type: !9)
!2371 = !DILocalVariable(name: "s27", arg: 10, scope: !2358, file: !2359, line: 160, type: !9)
!2372 = !DILocalVariable(name: "s28", arg: 11, scope: !2358, file: !2359, line: 160, type: !9)
!2373 = !DILocation(line: 160, column: 25, scope: !2358, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 234, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2340, file: !201, line: 234, column: 7)
!2376 = !DILocation(line: 160, column: 41, scope: !2358, inlinedAt: !2374)
!2377 = !DILocation(line: 160, column: 50, scope: !2358, inlinedAt: !2374)
!2378 = !DILocation(line: 160, column: 60, scope: !2358, inlinedAt: !2374)
!2379 = !DILocation(line: 160, column: 70, scope: !2358, inlinedAt: !2374)
!2380 = !DILocation(line: 160, column: 80, scope: !2358, inlinedAt: !2374)
!2381 = !DILocation(line: 160, column: 90, scope: !2358, inlinedAt: !2374)
!2382 = !DILocation(line: 160, column: 100, scope: !2358, inlinedAt: !2374)
!2383 = !DILocation(line: 160, column: 110, scope: !2358, inlinedAt: !2374)
!2384 = !DILocation(line: 160, column: 120, scope: !2358, inlinedAt: !2374)
!2385 = !DILocation(line: 160, column: 130, scope: !2358, inlinedAt: !2374)
!2386 = !DILocation(line: 162, column: 7, scope: !2387, inlinedAt: !2374)
!2387 = distinct !DILexicalBlock(scope: !2358, file: !2359, line: 162, column: 7)
!2388 = !DILocalVariable(name: "s1", arg: 1, scope: !2389, file: !2359, line: 146, type: !48)
!2389 = distinct !DISubprogram(name: "strcaseeq1", scope: !2359, file: !2359, line: 146, type: !2390, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9, !9, !9}
!2392 = !{!2388, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2393 = !DILocalVariable(name: "s2", arg: 2, scope: !2389, file: !2359, line: 146, type: !48)
!2394 = !DILocalVariable(name: "s21", arg: 3, scope: !2389, file: !2359, line: 146, type: !9)
!2395 = !DILocalVariable(name: "s22", arg: 4, scope: !2389, file: !2359, line: 146, type: !9)
!2396 = !DILocalVariable(name: "s23", arg: 5, scope: !2389, file: !2359, line: 146, type: !9)
!2397 = !DILocalVariable(name: "s24", arg: 6, scope: !2389, file: !2359, line: 146, type: !9)
!2398 = !DILocalVariable(name: "s25", arg: 7, scope: !2389, file: !2359, line: 146, type: !9)
!2399 = !DILocalVariable(name: "s26", arg: 8, scope: !2389, file: !2359, line: 146, type: !9)
!2400 = !DILocalVariable(name: "s27", arg: 9, scope: !2389, file: !2359, line: 146, type: !9)
!2401 = !DILocalVariable(name: "s28", arg: 10, scope: !2389, file: !2359, line: 146, type: !9)
!2402 = !DILocation(line: 146, column: 25, scope: !2389, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 167, column: 16, scope: !2404, inlinedAt: !2374)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !2359, line: 164, column: 11)
!2405 = distinct !DILexicalBlock(scope: !2387, file: !2359, line: 163, column: 5)
!2406 = !DILocation(line: 146, column: 41, scope: !2389, inlinedAt: !2403)
!2407 = !DILocation(line: 146, column: 50, scope: !2389, inlinedAt: !2403)
!2408 = !DILocation(line: 146, column: 60, scope: !2389, inlinedAt: !2403)
!2409 = !DILocation(line: 146, column: 70, scope: !2389, inlinedAt: !2403)
!2410 = !DILocation(line: 146, column: 80, scope: !2389, inlinedAt: !2403)
!2411 = !DILocation(line: 146, column: 90, scope: !2389, inlinedAt: !2403)
!2412 = !DILocation(line: 146, column: 100, scope: !2389, inlinedAt: !2403)
!2413 = !DILocation(line: 146, column: 110, scope: !2389, inlinedAt: !2403)
!2414 = !DILocation(line: 146, column: 120, scope: !2389, inlinedAt: !2403)
!2415 = !DILocation(line: 148, column: 7, scope: !2416, inlinedAt: !2403)
!2416 = distinct !DILexicalBlock(scope: !2389, file: !2359, line: 148, column: 7)
!2417 = !DILocalVariable(name: "s1", arg: 1, scope: !2418, file: !2359, line: 132, type: !48)
!2418 = distinct !DISubprogram(name: "strcaseeq2", scope: !2359, file: !2359, line: 132, type: !2419, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9, !9}
!2421 = !{!2417, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429}
!2422 = !DILocalVariable(name: "s2", arg: 2, scope: !2418, file: !2359, line: 132, type: !48)
!2423 = !DILocalVariable(name: "s22", arg: 3, scope: !2418, file: !2359, line: 132, type: !9)
!2424 = !DILocalVariable(name: "s23", arg: 4, scope: !2418, file: !2359, line: 132, type: !9)
!2425 = !DILocalVariable(name: "s24", arg: 5, scope: !2418, file: !2359, line: 132, type: !9)
!2426 = !DILocalVariable(name: "s25", arg: 6, scope: !2418, file: !2359, line: 132, type: !9)
!2427 = !DILocalVariable(name: "s26", arg: 7, scope: !2418, file: !2359, line: 132, type: !9)
!2428 = !DILocalVariable(name: "s27", arg: 8, scope: !2418, file: !2359, line: 132, type: !9)
!2429 = !DILocalVariable(name: "s28", arg: 9, scope: !2418, file: !2359, line: 132, type: !9)
!2430 = !DILocation(line: 132, column: 25, scope: !2418, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 153, column: 16, scope: !2432, inlinedAt: !2403)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !2359, line: 150, column: 11)
!2433 = distinct !DILexicalBlock(scope: !2416, file: !2359, line: 149, column: 5)
!2434 = !DILocation(line: 132, column: 41, scope: !2418, inlinedAt: !2431)
!2435 = !DILocation(line: 132, column: 50, scope: !2418, inlinedAt: !2431)
!2436 = !DILocation(line: 132, column: 60, scope: !2418, inlinedAt: !2431)
!2437 = !DILocation(line: 132, column: 70, scope: !2418, inlinedAt: !2431)
!2438 = !DILocation(line: 132, column: 80, scope: !2418, inlinedAt: !2431)
!2439 = !DILocation(line: 132, column: 90, scope: !2418, inlinedAt: !2431)
!2440 = !DILocation(line: 132, column: 100, scope: !2418, inlinedAt: !2431)
!2441 = !DILocation(line: 132, column: 110, scope: !2418, inlinedAt: !2431)
!2442 = !DILocation(line: 134, column: 7, scope: !2443, inlinedAt: !2431)
!2443 = distinct !DILexicalBlock(scope: !2418, file: !2359, line: 134, column: 7)
!2444 = !DILocalVariable(name: "s1", arg: 1, scope: !2445, file: !2359, line: 118, type: !48)
!2445 = distinct !DISubprogram(name: "strcaseeq3", scope: !2359, file: !2359, line: 118, type: !2446, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9}
!2448 = !{!2444, !2449, !2450, !2451, !2452, !2453, !2454, !2455}
!2449 = !DILocalVariable(name: "s2", arg: 2, scope: !2445, file: !2359, line: 118, type: !48)
!2450 = !DILocalVariable(name: "s23", arg: 3, scope: !2445, file: !2359, line: 118, type: !9)
!2451 = !DILocalVariable(name: "s24", arg: 4, scope: !2445, file: !2359, line: 118, type: !9)
!2452 = !DILocalVariable(name: "s25", arg: 5, scope: !2445, file: !2359, line: 118, type: !9)
!2453 = !DILocalVariable(name: "s26", arg: 6, scope: !2445, file: !2359, line: 118, type: !9)
!2454 = !DILocalVariable(name: "s27", arg: 7, scope: !2445, file: !2359, line: 118, type: !9)
!2455 = !DILocalVariable(name: "s28", arg: 8, scope: !2445, file: !2359, line: 118, type: !9)
!2456 = !DILocation(line: 118, column: 25, scope: !2445, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 139, column: 16, scope: !2458, inlinedAt: !2431)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !2359, line: 136, column: 11)
!2459 = distinct !DILexicalBlock(scope: !2443, file: !2359, line: 135, column: 5)
!2460 = !DILocation(line: 118, column: 41, scope: !2445, inlinedAt: !2457)
!2461 = !DILocation(line: 118, column: 50, scope: !2445, inlinedAt: !2457)
!2462 = !DILocation(line: 118, column: 60, scope: !2445, inlinedAt: !2457)
!2463 = !DILocation(line: 118, column: 70, scope: !2445, inlinedAt: !2457)
!2464 = !DILocation(line: 118, column: 80, scope: !2445, inlinedAt: !2457)
!2465 = !DILocation(line: 118, column: 90, scope: !2445, inlinedAt: !2457)
!2466 = !DILocation(line: 118, column: 100, scope: !2445, inlinedAt: !2457)
!2467 = !DILocation(line: 120, column: 7, scope: !2468, inlinedAt: !2457)
!2468 = distinct !DILexicalBlock(scope: !2445, file: !2359, line: 120, column: 7)
!2469 = !DILocation(line: 120, column: 7, scope: !2445, inlinedAt: !2457)
!2470 = !DILocalVariable(name: "s1", arg: 1, scope: !2471, file: !2359, line: 104, type: !48)
!2471 = distinct !DISubprogram(name: "strcaseeq4", scope: !2359, file: !2359, line: 104, type: !2472, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!6, !48, !48, !9, !9, !9, !9, !9}
!2474 = !{!2470, !2475, !2476, !2477, !2478, !2479, !2480}
!2475 = !DILocalVariable(name: "s2", arg: 2, scope: !2471, file: !2359, line: 104, type: !48)
!2476 = !DILocalVariable(name: "s24", arg: 3, scope: !2471, file: !2359, line: 104, type: !9)
!2477 = !DILocalVariable(name: "s25", arg: 4, scope: !2471, file: !2359, line: 104, type: !9)
!2478 = !DILocalVariable(name: "s26", arg: 5, scope: !2471, file: !2359, line: 104, type: !9)
!2479 = !DILocalVariable(name: "s27", arg: 6, scope: !2471, file: !2359, line: 104, type: !9)
!2480 = !DILocalVariable(name: "s28", arg: 7, scope: !2471, file: !2359, line: 104, type: !9)
!2481 = !DILocation(line: 104, column: 25, scope: !2471, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 125, column: 16, scope: !2483, inlinedAt: !2457)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !2359, line: 122, column: 11)
!2484 = distinct !DILexicalBlock(scope: !2468, file: !2359, line: 121, column: 5)
!2485 = !DILocation(line: 104, column: 41, scope: !2471, inlinedAt: !2482)
!2486 = !DILocation(line: 104, column: 50, scope: !2471, inlinedAt: !2482)
!2487 = !DILocation(line: 104, column: 60, scope: !2471, inlinedAt: !2482)
!2488 = !DILocation(line: 104, column: 70, scope: !2471, inlinedAt: !2482)
!2489 = !DILocation(line: 104, column: 80, scope: !2471, inlinedAt: !2482)
!2490 = !DILocation(line: 104, column: 90, scope: !2471, inlinedAt: !2482)
!2491 = !DILocation(line: 106, column: 7, scope: !2492, inlinedAt: !2482)
!2492 = distinct !DILexicalBlock(scope: !2471, file: !2359, line: 106, column: 7)
!2493 = !DILocation(line: 106, column: 7, scope: !2471, inlinedAt: !2482)
!2494 = !DILocalVariable(name: "s1", arg: 1, scope: !2495, file: !2359, line: 90, type: !48)
!2495 = distinct !DISubprogram(name: "strcaseeq5", scope: !2359, file: !2359, line: 90, type: !2496, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!6, !48, !48, !9, !9, !9, !9}
!2498 = !{!2494, !2499, !2500, !2501, !2502, !2503}
!2499 = !DILocalVariable(name: "s2", arg: 2, scope: !2495, file: !2359, line: 90, type: !48)
!2500 = !DILocalVariable(name: "s25", arg: 3, scope: !2495, file: !2359, line: 90, type: !9)
!2501 = !DILocalVariable(name: "s26", arg: 4, scope: !2495, file: !2359, line: 90, type: !9)
!2502 = !DILocalVariable(name: "s27", arg: 5, scope: !2495, file: !2359, line: 90, type: !9)
!2503 = !DILocalVariable(name: "s28", arg: 6, scope: !2495, file: !2359, line: 90, type: !9)
!2504 = !DILocation(line: 90, column: 25, scope: !2495, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 111, column: 16, scope: !2506, inlinedAt: !2482)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !2359, line: 108, column: 11)
!2507 = distinct !DILexicalBlock(scope: !2492, file: !2359, line: 107, column: 5)
!2508 = !DILocation(line: 90, column: 41, scope: !2495, inlinedAt: !2505)
!2509 = !DILocation(line: 90, column: 50, scope: !2495, inlinedAt: !2505)
!2510 = !DILocation(line: 90, column: 60, scope: !2495, inlinedAt: !2505)
!2511 = !DILocation(line: 90, column: 70, scope: !2495, inlinedAt: !2505)
!2512 = !DILocation(line: 90, column: 80, scope: !2495, inlinedAt: !2505)
!2513 = !DILocation(line: 92, column: 7, scope: !2514, inlinedAt: !2505)
!2514 = distinct !DILexicalBlock(scope: !2495, file: !2359, line: 92, column: 7)
!2515 = !DILocation(line: 92, column: 7, scope: !2495, inlinedAt: !2505)
!2516 = !DILocation(line: 235, column: 12, scope: !2375)
!2517 = !DILocation(line: 235, column: 21, scope: !2375)
!2518 = !DILocation(line: 235, column: 5, scope: !2375)
!2519 = !DILocation(line: 146, column: 25, scope: !2389, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 167, column: 16, scope: !2404, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 236, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2340, file: !201, line: 236, column: 7)
!2523 = !DILocation(line: 146, column: 41, scope: !2389, inlinedAt: !2520)
!2524 = !DILocation(line: 146, column: 50, scope: !2389, inlinedAt: !2520)
!2525 = !DILocation(line: 146, column: 60, scope: !2389, inlinedAt: !2520)
!2526 = !DILocation(line: 146, column: 70, scope: !2389, inlinedAt: !2520)
!2527 = !DILocation(line: 146, column: 80, scope: !2389, inlinedAt: !2520)
!2528 = !DILocation(line: 146, column: 90, scope: !2389, inlinedAt: !2520)
!2529 = !DILocation(line: 146, column: 100, scope: !2389, inlinedAt: !2520)
!2530 = !DILocation(line: 146, column: 110, scope: !2389, inlinedAt: !2520)
!2531 = !DILocation(line: 146, column: 120, scope: !2389, inlinedAt: !2520)
!2532 = !DILocation(line: 148, column: 7, scope: !2416, inlinedAt: !2520)
!2533 = !DILocation(line: 132, column: 25, scope: !2418, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 153, column: 16, scope: !2432, inlinedAt: !2520)
!2535 = !DILocation(line: 132, column: 41, scope: !2418, inlinedAt: !2534)
!2536 = !DILocation(line: 132, column: 50, scope: !2418, inlinedAt: !2534)
!2537 = !DILocation(line: 132, column: 60, scope: !2418, inlinedAt: !2534)
!2538 = !DILocation(line: 132, column: 70, scope: !2418, inlinedAt: !2534)
!2539 = !DILocation(line: 132, column: 80, scope: !2418, inlinedAt: !2534)
!2540 = !DILocation(line: 132, column: 90, scope: !2418, inlinedAt: !2534)
!2541 = !DILocation(line: 132, column: 100, scope: !2418, inlinedAt: !2534)
!2542 = !DILocation(line: 132, column: 110, scope: !2418, inlinedAt: !2534)
!2543 = !DILocation(line: 134, column: 7, scope: !2443, inlinedAt: !2534)
!2544 = !DILocation(line: 134, column: 7, scope: !2418, inlinedAt: !2534)
!2545 = !DILocation(line: 118, column: 25, scope: !2445, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 139, column: 16, scope: !2458, inlinedAt: !2534)
!2547 = !DILocation(line: 118, column: 41, scope: !2445, inlinedAt: !2546)
!2548 = !DILocation(line: 118, column: 50, scope: !2445, inlinedAt: !2546)
!2549 = !DILocation(line: 118, column: 60, scope: !2445, inlinedAt: !2546)
!2550 = !DILocation(line: 118, column: 70, scope: !2445, inlinedAt: !2546)
!2551 = !DILocation(line: 118, column: 80, scope: !2445, inlinedAt: !2546)
!2552 = !DILocation(line: 118, column: 90, scope: !2445, inlinedAt: !2546)
!2553 = !DILocation(line: 118, column: 100, scope: !2445, inlinedAt: !2546)
!2554 = !DILocation(line: 120, column: 7, scope: !2468, inlinedAt: !2546)
!2555 = !DILocation(line: 120, column: 7, scope: !2445, inlinedAt: !2546)
!2556 = !DILocation(line: 104, column: 25, scope: !2471, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 125, column: 16, scope: !2483, inlinedAt: !2546)
!2558 = !DILocation(line: 104, column: 41, scope: !2471, inlinedAt: !2557)
!2559 = !DILocation(line: 104, column: 50, scope: !2471, inlinedAt: !2557)
!2560 = !DILocation(line: 104, column: 60, scope: !2471, inlinedAt: !2557)
!2561 = !DILocation(line: 104, column: 70, scope: !2471, inlinedAt: !2557)
!2562 = !DILocation(line: 104, column: 80, scope: !2471, inlinedAt: !2557)
!2563 = !DILocation(line: 104, column: 90, scope: !2471, inlinedAt: !2557)
!2564 = !DILocation(line: 106, column: 7, scope: !2492, inlinedAt: !2557)
!2565 = !DILocation(line: 106, column: 7, scope: !2471, inlinedAt: !2557)
!2566 = !DILocation(line: 90, column: 25, scope: !2495, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 111, column: 16, scope: !2506, inlinedAt: !2557)
!2568 = !DILocation(line: 90, column: 41, scope: !2495, inlinedAt: !2567)
!2569 = !DILocation(line: 90, column: 50, scope: !2495, inlinedAt: !2567)
!2570 = !DILocation(line: 90, column: 60, scope: !2495, inlinedAt: !2567)
!2571 = !DILocation(line: 90, column: 70, scope: !2495, inlinedAt: !2567)
!2572 = !DILocation(line: 90, column: 80, scope: !2495, inlinedAt: !2567)
!2573 = !DILocation(line: 92, column: 7, scope: !2514, inlinedAt: !2567)
!2574 = !DILocation(line: 92, column: 7, scope: !2495, inlinedAt: !2567)
!2575 = !DILocalVariable(name: "s1", arg: 1, scope: !2576, file: !2359, line: 76, type: !48)
!2576 = distinct !DISubprogram(name: "strcaseeq6", scope: !2359, file: !2359, line: 76, type: !2577, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!6, !48, !48, !9, !9, !9}
!2579 = !{!2575, !2580, !2581, !2582, !2583}
!2580 = !DILocalVariable(name: "s2", arg: 2, scope: !2576, file: !2359, line: 76, type: !48)
!2581 = !DILocalVariable(name: "s26", arg: 3, scope: !2576, file: !2359, line: 76, type: !9)
!2582 = !DILocalVariable(name: "s27", arg: 4, scope: !2576, file: !2359, line: 76, type: !9)
!2583 = !DILocalVariable(name: "s28", arg: 5, scope: !2576, file: !2359, line: 76, type: !9)
!2584 = !DILocation(line: 76, column: 25, scope: !2576, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 97, column: 16, scope: !2586, inlinedAt: !2567)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2359, line: 94, column: 11)
!2587 = distinct !DILexicalBlock(scope: !2514, file: !2359, line: 93, column: 5)
!2588 = !DILocation(line: 76, column: 41, scope: !2576, inlinedAt: !2585)
!2589 = !DILocation(line: 76, column: 50, scope: !2576, inlinedAt: !2585)
!2590 = !DILocation(line: 76, column: 60, scope: !2576, inlinedAt: !2585)
!2591 = !DILocation(line: 76, column: 70, scope: !2576, inlinedAt: !2585)
!2592 = !DILocation(line: 78, column: 7, scope: !2593, inlinedAt: !2585)
!2593 = distinct !DILexicalBlock(scope: !2576, file: !2359, line: 78, column: 7)
!2594 = !DILocation(line: 78, column: 7, scope: !2576, inlinedAt: !2585)
!2595 = !DILocalVariable(name: "s1", arg: 1, scope: !2596, file: !2359, line: 62, type: !48)
!2596 = distinct !DISubprogram(name: "strcaseeq7", scope: !2359, file: !2359, line: 62, type: !2597, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!6, !48, !48, !9, !9}
!2599 = !{!2595, !2600, !2601, !2602}
!2600 = !DILocalVariable(name: "s2", arg: 2, scope: !2596, file: !2359, line: 62, type: !48)
!2601 = !DILocalVariable(name: "s27", arg: 3, scope: !2596, file: !2359, line: 62, type: !9)
!2602 = !DILocalVariable(name: "s28", arg: 4, scope: !2596, file: !2359, line: 62, type: !9)
!2603 = !DILocation(line: 62, column: 25, scope: !2596, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 83, column: 16, scope: !2605, inlinedAt: !2585)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !2359, line: 80, column: 11)
!2606 = distinct !DILexicalBlock(scope: !2593, file: !2359, line: 79, column: 5)
!2607 = !DILocation(line: 62, column: 41, scope: !2596, inlinedAt: !2604)
!2608 = !DILocation(line: 62, column: 50, scope: !2596, inlinedAt: !2604)
!2609 = !DILocation(line: 62, column: 60, scope: !2596, inlinedAt: !2604)
!2610 = !DILocation(line: 64, column: 7, scope: !2611, inlinedAt: !2604)
!2611 = distinct !DILexicalBlock(scope: !2596, file: !2359, line: 64, column: 7)
!2612 = !DILocation(line: 236, column: 7, scope: !2340)
!2613 = !DILocation(line: 237, column: 12, scope: !2522)
!2614 = !DILocation(line: 237, column: 21, scope: !2522)
!2615 = !DILocation(line: 237, column: 5, scope: !2522)
!2616 = !DILocation(line: 239, column: 13, scope: !2340)
!2617 = !DILocation(line: 239, column: 11, scope: !2340)
!2618 = !DILocation(line: 239, column: 3, scope: !2340)
!2619 = !DILocation(line: 0, scope: !2340)
!2620 = !DILocation(line: 240, column: 1, scope: !2340)
!2621 = distinct !DISubprogram(name: "quotearg_alloc", scope: !201, file: !201, line: 799, type: !2622, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!8, !48, !42, !1659}
!2624 = !{!2625, !2626, !2627}
!2625 = !DILocalVariable(name: "arg", arg: 1, scope: !2621, file: !201, line: 799, type: !48)
!2626 = !DILocalVariable(name: "argsize", arg: 2, scope: !2621, file: !201, line: 799, type: !42)
!2627 = !DILocalVariable(name: "o", arg: 3, scope: !2621, file: !201, line: 800, type: !1659)
!2628 = !DILocation(line: 799, column: 29, scope: !2621)
!2629 = !DILocation(line: 799, column: 41, scope: !2621)
!2630 = !DILocation(line: 800, column: 47, scope: !2621)
!2631 = !DILocalVariable(name: "arg", arg: 1, scope: !2632, file: !201, line: 812, type: !48)
!2632 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !201, file: !201, line: 812, type: !2633, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!8, !48, !42, !278, !1659}
!2635 = !{!2631, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643}
!2636 = !DILocalVariable(name: "argsize", arg: 2, scope: !2632, file: !201, line: 812, type: !42)
!2637 = !DILocalVariable(name: "size", arg: 3, scope: !2632, file: !201, line: 812, type: !278)
!2638 = !DILocalVariable(name: "o", arg: 4, scope: !2632, file: !201, line: 813, type: !1659)
!2639 = !DILocalVariable(name: "p", scope: !2632, file: !201, line: 815, type: !1659)
!2640 = !DILocalVariable(name: "e", scope: !2632, file: !201, line: 816, type: !6)
!2641 = !DILocalVariable(name: "flags", scope: !2632, file: !201, line: 818, type: !6)
!2642 = !DILocalVariable(name: "bufsize", scope: !2632, file: !201, line: 819, type: !42)
!2643 = !DILocalVariable(name: "buf", scope: !2632, file: !201, line: 823, type: !8)
!2644 = !DILocation(line: 812, column: 33, scope: !2632, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 802, column: 10, scope: !2621)
!2646 = !DILocation(line: 812, column: 45, scope: !2632, inlinedAt: !2645)
!2647 = !DILocation(line: 812, column: 62, scope: !2632, inlinedAt: !2645)
!2648 = !DILocation(line: 813, column: 51, scope: !2632, inlinedAt: !2645)
!2649 = !DILocation(line: 815, column: 37, scope: !2632, inlinedAt: !2645)
!2650 = !DILocation(line: 815, column: 33, scope: !2632, inlinedAt: !2645)
!2651 = !DILocation(line: 816, column: 11, scope: !2632, inlinedAt: !2645)
!2652 = !DILocation(line: 816, column: 7, scope: !2632, inlinedAt: !2645)
!2653 = !DILocation(line: 818, column: 18, scope: !2632, inlinedAt: !2645)
!2654 = !DILocation(line: 818, column: 24, scope: !2632, inlinedAt: !2645)
!2655 = !DILocation(line: 818, column: 7, scope: !2632, inlinedAt: !2645)
!2656 = !DILocation(line: 819, column: 69, scope: !2632, inlinedAt: !2645)
!2657 = !DILocation(line: 820, column: 53, scope: !2632, inlinedAt: !2645)
!2658 = !DILocation(line: 821, column: 49, scope: !2632, inlinedAt: !2645)
!2659 = !DILocation(line: 822, column: 49, scope: !2632, inlinedAt: !2645)
!2660 = !DILocation(line: 819, column: 20, scope: !2632, inlinedAt: !2645)
!2661 = !DILocation(line: 822, column: 62, scope: !2632, inlinedAt: !2645)
!2662 = !DILocation(line: 819, column: 10, scope: !2632, inlinedAt: !2645)
!2663 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !274, line: 216, type: !42)
!2664 = distinct !DISubprogram(name: "xcharalloc", scope: !274, file: !274, line: 216, type: !2665, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!8, !42}
!2667 = !{!2663}
!2668 = !DILocation(line: 216, column: 20, scope: !2664, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 823, column: 15, scope: !2632, inlinedAt: !2645)
!2670 = !DILocation(line: 218, column: 10, scope: !2664, inlinedAt: !2669)
!2671 = !DILocation(line: 823, column: 9, scope: !2632, inlinedAt: !2645)
!2672 = !DILocation(line: 824, column: 60, scope: !2632, inlinedAt: !2645)
!2673 = !DILocation(line: 826, column: 32, scope: !2632, inlinedAt: !2645)
!2674 = !DILocation(line: 826, column: 47, scope: !2632, inlinedAt: !2645)
!2675 = !DILocation(line: 824, column: 3, scope: !2632, inlinedAt: !2645)
!2676 = !DILocation(line: 827, column: 9, scope: !2632, inlinedAt: !2645)
!2677 = !DILocation(line: 802, column: 3, scope: !2621)
!2678 = !DILocation(line: 812, column: 33, scope: !2632)
!2679 = !DILocation(line: 812, column: 45, scope: !2632)
!2680 = !DILocation(line: 812, column: 62, scope: !2632)
!2681 = !DILocation(line: 813, column: 51, scope: !2632)
!2682 = !DILocation(line: 815, column: 37, scope: !2632)
!2683 = !DILocation(line: 815, column: 33, scope: !2632)
!2684 = !DILocation(line: 816, column: 11, scope: !2632)
!2685 = !DILocation(line: 816, column: 7, scope: !2632)
!2686 = !DILocation(line: 818, column: 18, scope: !2632)
!2687 = !DILocation(line: 818, column: 27, scope: !2632)
!2688 = !DILocation(line: 818, column: 24, scope: !2632)
!2689 = !DILocation(line: 818, column: 7, scope: !2632)
!2690 = !DILocation(line: 819, column: 69, scope: !2632)
!2691 = !DILocation(line: 820, column: 53, scope: !2632)
!2692 = !DILocation(line: 821, column: 49, scope: !2632)
!2693 = !DILocation(line: 822, column: 49, scope: !2632)
!2694 = !DILocation(line: 819, column: 20, scope: !2632)
!2695 = !DILocation(line: 822, column: 62, scope: !2632)
!2696 = !DILocation(line: 819, column: 10, scope: !2632)
!2697 = !DILocation(line: 216, column: 20, scope: !2664, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 823, column: 15, scope: !2632)
!2699 = !DILocation(line: 218, column: 10, scope: !2664, inlinedAt: !2698)
!2700 = !DILocation(line: 823, column: 9, scope: !2632)
!2701 = !DILocation(line: 824, column: 60, scope: !2632)
!2702 = !DILocation(line: 826, column: 32, scope: !2632)
!2703 = !DILocation(line: 826, column: 47, scope: !2632)
!2704 = !DILocation(line: 824, column: 3, scope: !2632)
!2705 = !DILocation(line: 827, column: 9, scope: !2632)
!2706 = !DILocation(line: 828, column: 7, scope: !2632)
!2707 = !DILocation(line: 829, column: 11, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2632, file: !201, line: 828, column: 7)
!2709 = !{!854, !854, i64 0}
!2710 = !DILocation(line: 829, column: 5, scope: !2708)
!2711 = !DILocation(line: 830, column: 3, scope: !2632)
!2712 = distinct !DISubprogram(name: "quotearg_free", scope: !201, file: !201, line: 848, type: !740, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2713)
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "sv", scope: !2712, file: !201, line: 850, type: !225)
!2715 = !DILocalVariable(name: "i", scope: !2712, file: !201, line: 851, type: !6)
!2716 = !DILocation(line: 850, column: 24, scope: !2712)
!2717 = !DILocation(line: 850, column: 19, scope: !2712)
!2718 = !DILocation(line: 851, column: 7, scope: !2712)
!2719 = !DILocation(line: 852, column: 19, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !201, line: 852, column: 3)
!2721 = distinct !DILexicalBlock(scope: !2712, file: !201, line: 852, column: 3)
!2722 = !DILocation(line: 852, column: 17, scope: !2720)
!2723 = !DILocation(line: 852, column: 3, scope: !2721)
!2724 = !DILocation(line: 853, column: 17, scope: !2720)
!2725 = !{!2726, !733, i64 8}
!2726 = !{!"slotvec", !854, i64 0, !733, i64 8}
!2727 = !DILocation(line: 853, column: 5, scope: !2720)
!2728 = !DILocation(line: 852, column: 28, scope: !2720)
!2729 = distinct !{!2729, !2723, !2730}
!2730 = !DILocation(line: 853, column: 20, scope: !2721)
!2731 = !DILocation(line: 854, column: 13, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2712, file: !201, line: 854, column: 7)
!2733 = !DILocation(line: 854, column: 17, scope: !2732)
!2734 = !DILocation(line: 854, column: 7, scope: !2712)
!2735 = !DILocation(line: 856, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !201, line: 855, column: 5)
!2737 = !DILocation(line: 857, column: 21, scope: !2736)
!2738 = !{!2726, !854, i64 0}
!2739 = !DILocation(line: 858, column: 20, scope: !2736)
!2740 = !DILocation(line: 859, column: 5, scope: !2736)
!2741 = !DILocation(line: 860, column: 10, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2712, file: !201, line: 860, column: 7)
!2743 = !DILocation(line: 860, column: 7, scope: !2712)
!2744 = !DILocation(line: 862, column: 13, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !201, line: 861, column: 5)
!2746 = !DILocation(line: 862, column: 7, scope: !2745)
!2747 = !DILocation(line: 863, column: 15, scope: !2745)
!2748 = !DILocation(line: 864, column: 5, scope: !2745)
!2749 = !DILocation(line: 865, column: 10, scope: !2712)
!2750 = !DILocation(line: 866, column: 1, scope: !2712)
!2751 = distinct !DISubprogram(name: "quotearg_n", scope: !201, file: !201, line: 931, type: !2752, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!8, !6, !48}
!2754 = !{!2755, !2756}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !201, line: 931, type: !6)
!2756 = !DILocalVariable(name: "arg", arg: 2, scope: !2751, file: !201, line: 931, type: !48)
!2757 = !DILocation(line: 931, column: 17, scope: !2751)
!2758 = !DILocation(line: 931, column: 32, scope: !2751)
!2759 = !DILocation(line: 933, column: 10, scope: !2751)
!2760 = !DILocation(line: 933, column: 3, scope: !2751)
!2761 = distinct !DISubprogram(name: "quotearg_n_options", scope: !201, file: !201, line: 877, type: !2762, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!8, !6, !48, !42, !1659}
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2770, !2771, !2774, !2775, !2777, !2778, !2779}
!2765 = !DILocalVariable(name: "n", arg: 1, scope: !2761, file: !201, line: 877, type: !6)
!2766 = !DILocalVariable(name: "arg", arg: 2, scope: !2761, file: !201, line: 877, type: !48)
!2767 = !DILocalVariable(name: "argsize", arg: 3, scope: !2761, file: !201, line: 877, type: !42)
!2768 = !DILocalVariable(name: "options", arg: 4, scope: !2761, file: !201, line: 878, type: !1659)
!2769 = !DILocalVariable(name: "e", scope: !2761, file: !201, line: 880, type: !6)
!2770 = !DILocalVariable(name: "sv", scope: !2761, file: !201, line: 882, type: !225)
!2771 = !DILocalVariable(name: "preallocated", scope: !2772, file: !201, line: 889, type: !74)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !201, line: 888, column: 5)
!2773 = distinct !DILexicalBlock(scope: !2761, file: !201, line: 887, column: 7)
!2774 = !DILocalVariable(name: "nmax", scope: !2772, file: !201, line: 890, type: !6)
!2775 = !DILocalVariable(name: "size", scope: !2776, file: !201, line: 903, type: !42)
!2776 = distinct !DILexicalBlock(scope: !2761, file: !201, line: 902, column: 3)
!2777 = !DILocalVariable(name: "val", scope: !2776, file: !201, line: 904, type: !8)
!2778 = !DILocalVariable(name: "flags", scope: !2776, file: !201, line: 906, type: !6)
!2779 = !DILocalVariable(name: "qsize", scope: !2776, file: !201, line: 907, type: !42)
!2780 = !DILocation(line: 877, column: 25, scope: !2761)
!2781 = !DILocation(line: 877, column: 40, scope: !2761)
!2782 = !DILocation(line: 877, column: 52, scope: !2761)
!2783 = !DILocation(line: 878, column: 51, scope: !2761)
!2784 = !DILocation(line: 880, column: 11, scope: !2761)
!2785 = !DILocation(line: 880, column: 7, scope: !2761)
!2786 = !DILocation(line: 882, column: 24, scope: !2761)
!2787 = !DILocation(line: 882, column: 19, scope: !2761)
!2788 = !DILocation(line: 884, column: 9, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2761, file: !201, line: 884, column: 7)
!2790 = !DILocation(line: 884, column: 7, scope: !2761)
!2791 = !DILocation(line: 885, column: 5, scope: !2789)
!2792 = !DILocation(line: 887, column: 7, scope: !2773)
!2793 = !DILocation(line: 887, column: 14, scope: !2773)
!2794 = !DILocation(line: 887, column: 7, scope: !2761)
!2795 = !DILocation(line: 889, column: 31, scope: !2772)
!2796 = !DILocation(line: 890, column: 11, scope: !2772)
!2797 = !DILocation(line: 892, column: 16, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2772, file: !201, line: 892, column: 11)
!2799 = !DILocation(line: 892, column: 11, scope: !2772)
!2800 = !DILocation(line: 893, column: 9, scope: !2798)
!2801 = !DILocation(line: 895, column: 32, scope: !2772)
!2802 = !DILocation(line: 895, column: 61, scope: !2772)
!2803 = !DILocation(line: 895, column: 58, scope: !2772)
!2804 = !DILocation(line: 895, column: 66, scope: !2772)
!2805 = !DILocation(line: 895, column: 22, scope: !2772)
!2806 = !DILocation(line: 895, column: 15, scope: !2772)
!2807 = !DILocation(line: 896, column: 11, scope: !2772)
!2808 = !DILocation(line: 897, column: 15, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2772, file: !201, line: 896, column: 11)
!2810 = !{i64 0, i64 8, !2709, i64 8, i64 8, !732}
!2811 = !DILocation(line: 897, column: 9, scope: !2809)
!2812 = !DILocation(line: 898, column: 20, scope: !2772)
!2813 = !DILocation(line: 898, column: 18, scope: !2772)
!2814 = !DILocation(line: 898, column: 7, scope: !2772)
!2815 = !DILocation(line: 898, column: 38, scope: !2772)
!2816 = !DILocation(line: 898, column: 31, scope: !2772)
!2817 = !DILocation(line: 898, column: 48, scope: !2772)
!2818 = !DILocation(line: 899, column: 14, scope: !2772)
!2819 = !DILocation(line: 900, column: 5, scope: !2772)
!2820 = !DILocation(line: 0, scope: !2761)
!2821 = !DILocation(line: 903, column: 19, scope: !2776)
!2822 = !DILocation(line: 903, column: 25, scope: !2776)
!2823 = !DILocation(line: 903, column: 12, scope: !2776)
!2824 = !DILocation(line: 904, column: 23, scope: !2776)
!2825 = !DILocation(line: 904, column: 11, scope: !2776)
!2826 = !DILocation(line: 906, column: 26, scope: !2776)
!2827 = !DILocation(line: 906, column: 32, scope: !2776)
!2828 = !DILocation(line: 906, column: 9, scope: !2776)
!2829 = !DILocation(line: 908, column: 55, scope: !2776)
!2830 = !DILocation(line: 909, column: 46, scope: !2776)
!2831 = !DILocation(line: 910, column: 55, scope: !2776)
!2832 = !DILocation(line: 911, column: 55, scope: !2776)
!2833 = !DILocation(line: 907, column: 20, scope: !2776)
!2834 = !DILocation(line: 907, column: 12, scope: !2776)
!2835 = !DILocation(line: 913, column: 14, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2776, file: !201, line: 913, column: 9)
!2837 = !DILocation(line: 913, column: 9, scope: !2776)
!2838 = !DILocation(line: 915, column: 35, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !201, line: 914, column: 7)
!2840 = !DILocation(line: 915, column: 20, scope: !2839)
!2841 = !DILocation(line: 916, column: 17, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !201, line: 916, column: 13)
!2843 = !DILocation(line: 916, column: 13, scope: !2839)
!2844 = !DILocation(line: 917, column: 11, scope: !2842)
!2845 = !DILocation(line: 216, column: 20, scope: !2664, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 918, column: 27, scope: !2839)
!2847 = !DILocation(line: 218, column: 10, scope: !2664, inlinedAt: !2846)
!2848 = !DILocation(line: 918, column: 19, scope: !2839)
!2849 = !DILocation(line: 919, column: 69, scope: !2839)
!2850 = !DILocation(line: 921, column: 44, scope: !2839)
!2851 = !DILocation(line: 922, column: 44, scope: !2839)
!2852 = !DILocation(line: 919, column: 9, scope: !2839)
!2853 = !DILocation(line: 923, column: 7, scope: !2839)
!2854 = !DILocation(line: 0, scope: !2776)
!2855 = !DILocation(line: 925, column: 11, scope: !2776)
!2856 = !DILocation(line: 926, column: 5, scope: !2776)
!2857 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !201, file: !201, line: 937, type: !2858, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!8, !6, !48, !42}
!2860 = !{!2861, !2862, !2863}
!2861 = !DILocalVariable(name: "n", arg: 1, scope: !2857, file: !201, line: 937, type: !6)
!2862 = !DILocalVariable(name: "arg", arg: 2, scope: !2857, file: !201, line: 937, type: !48)
!2863 = !DILocalVariable(name: "argsize", arg: 3, scope: !2857, file: !201, line: 937, type: !42)
!2864 = !DILocation(line: 937, column: 21, scope: !2857)
!2865 = !DILocation(line: 937, column: 36, scope: !2857)
!2866 = !DILocation(line: 937, column: 48, scope: !2857)
!2867 = !DILocation(line: 939, column: 10, scope: !2857)
!2868 = !DILocation(line: 939, column: 3, scope: !2857)
!2869 = distinct !DISubprogram(name: "quotearg", scope: !201, file: !201, line: 943, type: !2870, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!8, !48}
!2872 = !{!2873}
!2873 = !DILocalVariable(name: "arg", arg: 1, scope: !2869, file: !201, line: 943, type: !48)
!2874 = !DILocation(line: 943, column: 23, scope: !2869)
!2875 = !DILocation(line: 931, column: 17, scope: !2751, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 945, column: 10, scope: !2869)
!2877 = !DILocation(line: 931, column: 32, scope: !2751, inlinedAt: !2876)
!2878 = !DILocation(line: 933, column: 10, scope: !2751, inlinedAt: !2876)
!2879 = !DILocation(line: 945, column: 3, scope: !2869)
!2880 = distinct !DISubprogram(name: "quotearg_mem", scope: !201, file: !201, line: 949, type: !2881, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!8, !48, !42}
!2883 = !{!2884, !2885}
!2884 = !DILocalVariable(name: "arg", arg: 1, scope: !2880, file: !201, line: 949, type: !48)
!2885 = !DILocalVariable(name: "argsize", arg: 2, scope: !2880, file: !201, line: 949, type: !42)
!2886 = !DILocation(line: 949, column: 27, scope: !2880)
!2887 = !DILocation(line: 949, column: 39, scope: !2880)
!2888 = !DILocation(line: 937, column: 21, scope: !2857, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 951, column: 10, scope: !2880)
!2890 = !DILocation(line: 937, column: 36, scope: !2857, inlinedAt: !2889)
!2891 = !DILocation(line: 937, column: 48, scope: !2857, inlinedAt: !2889)
!2892 = !DILocation(line: 939, column: 10, scope: !2857, inlinedAt: !2889)
!2893 = !DILocation(line: 951, column: 3, scope: !2880)
!2894 = distinct !DISubprogram(name: "quotearg_n_style", scope: !201, file: !201, line: 955, type: !2895, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!8, !6, !12, !48}
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DILocalVariable(name: "n", arg: 1, scope: !2894, file: !201, line: 955, type: !6)
!2899 = !DILocalVariable(name: "s", arg: 2, scope: !2894, file: !201, line: 955, type: !12)
!2900 = !DILocalVariable(name: "arg", arg: 3, scope: !2894, file: !201, line: 955, type: !48)
!2901 = !DILocalVariable(name: "o", scope: !2894, file: !201, line: 957, type: !1660)
!2902 = !DILocation(line: 955, column: 23, scope: !2894)
!2903 = !DILocation(line: 955, column: 45, scope: !2894)
!2904 = !DILocation(line: 955, column: 60, scope: !2894)
!2905 = !DILocation(line: 957, column: 3, scope: !2894)
!2906 = !DILocation(line: 957, column: 32, scope: !2894)
!2907 = !DILocalVariable(name: "style", arg: 1, scope: !2908, file: !201, line: 193, type: !12)
!2908 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !201, file: !201, line: 193, type: !2909, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!206, !12}
!2911 = !{!2907, !2912}
!2912 = !DILocalVariable(name: "o", scope: !2908, file: !201, line: 195, type: !206)
!2913 = !DILocation(line: 193, column: 48, scope: !2908, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 957, column: 36, scope: !2894)
!2915 = !DILocation(line: 195, column: 26, scope: !2908, inlinedAt: !2914)
!2916 = !{!2917}
!2917 = distinct !{!2917, !2918, !"quoting_options_from_style: argument 0"}
!2918 = distinct !{!2918, !"quoting_options_from_style"}
!2919 = !DILocation(line: 196, column: 13, scope: !2920, inlinedAt: !2914)
!2920 = distinct !DILexicalBlock(scope: !2908, file: !201, line: 196, column: 7)
!2921 = !DILocation(line: 196, column: 7, scope: !2908, inlinedAt: !2914)
!2922 = !DILocation(line: 197, column: 5, scope: !2920, inlinedAt: !2914)
!2923 = !DILocation(line: 198, column: 5, scope: !2908, inlinedAt: !2914)
!2924 = !DILocation(line: 198, column: 11, scope: !2908, inlinedAt: !2914)
!2925 = !DILocation(line: 958, column: 10, scope: !2894)
!2926 = !DILocation(line: 959, column: 1, scope: !2894)
!2927 = !DILocation(line: 958, column: 3, scope: !2894)
!2928 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !201, file: !201, line: 962, type: !2929, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!8, !6, !12, !48, !42}
!2931 = !{!2932, !2933, !2934, !2935, !2936}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !201, line: 962, type: !6)
!2933 = !DILocalVariable(name: "s", arg: 2, scope: !2928, file: !201, line: 962, type: !12)
!2934 = !DILocalVariable(name: "arg", arg: 3, scope: !2928, file: !201, line: 963, type: !48)
!2935 = !DILocalVariable(name: "argsize", arg: 4, scope: !2928, file: !201, line: 963, type: !42)
!2936 = !DILocalVariable(name: "o", scope: !2928, file: !201, line: 965, type: !1660)
!2937 = !DILocation(line: 962, column: 27, scope: !2928)
!2938 = !DILocation(line: 962, column: 49, scope: !2928)
!2939 = !DILocation(line: 963, column: 35, scope: !2928)
!2940 = !DILocation(line: 963, column: 47, scope: !2928)
!2941 = !DILocation(line: 965, column: 3, scope: !2928)
!2942 = !DILocation(line: 965, column: 32, scope: !2928)
!2943 = !DILocation(line: 193, column: 48, scope: !2908, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 965, column: 36, scope: !2928)
!2945 = !DILocation(line: 195, column: 26, scope: !2908, inlinedAt: !2944)
!2946 = !{!2947}
!2947 = distinct !{!2947, !2948, !"quoting_options_from_style: argument 0"}
!2948 = distinct !{!2948, !"quoting_options_from_style"}
!2949 = !DILocation(line: 196, column: 13, scope: !2920, inlinedAt: !2944)
!2950 = !DILocation(line: 196, column: 7, scope: !2908, inlinedAt: !2944)
!2951 = !DILocation(line: 197, column: 5, scope: !2920, inlinedAt: !2944)
!2952 = !DILocation(line: 198, column: 5, scope: !2908, inlinedAt: !2944)
!2953 = !DILocation(line: 198, column: 11, scope: !2908, inlinedAt: !2944)
!2954 = !DILocation(line: 966, column: 10, scope: !2928)
!2955 = !DILocation(line: 967, column: 1, scope: !2928)
!2956 = !DILocation(line: 966, column: 3, scope: !2928)
!2957 = distinct !DISubprogram(name: "quotearg_style", scope: !201, file: !201, line: 970, type: !2958, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!8, !12, !48}
!2960 = !{!2961, !2962}
!2961 = !DILocalVariable(name: "s", arg: 1, scope: !2957, file: !201, line: 970, type: !12)
!2962 = !DILocalVariable(name: "arg", arg: 2, scope: !2957, file: !201, line: 970, type: !48)
!2963 = !DILocation(line: 970, column: 36, scope: !2957)
!2964 = !DILocation(line: 970, column: 51, scope: !2957)
!2965 = !DILocation(line: 955, column: 23, scope: !2894, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 972, column: 10, scope: !2957)
!2967 = !DILocation(line: 955, column: 45, scope: !2894, inlinedAt: !2966)
!2968 = !DILocation(line: 955, column: 60, scope: !2894, inlinedAt: !2966)
!2969 = !DILocation(line: 957, column: 3, scope: !2894, inlinedAt: !2966)
!2970 = !DILocation(line: 957, column: 32, scope: !2894, inlinedAt: !2966)
!2971 = !DILocation(line: 193, column: 48, scope: !2908, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 957, column: 36, scope: !2894, inlinedAt: !2966)
!2973 = !DILocation(line: 195, column: 26, scope: !2908, inlinedAt: !2972)
!2974 = !{!2975}
!2975 = distinct !{!2975, !2976, !"quoting_options_from_style: argument 0"}
!2976 = distinct !{!2976, !"quoting_options_from_style"}
!2977 = !DILocation(line: 196, column: 13, scope: !2920, inlinedAt: !2972)
!2978 = !DILocation(line: 196, column: 7, scope: !2908, inlinedAt: !2972)
!2979 = !DILocation(line: 197, column: 5, scope: !2920, inlinedAt: !2972)
!2980 = !DILocation(line: 198, column: 5, scope: !2908, inlinedAt: !2972)
!2981 = !DILocation(line: 198, column: 11, scope: !2908, inlinedAt: !2972)
!2982 = !DILocation(line: 958, column: 10, scope: !2894, inlinedAt: !2966)
!2983 = !DILocation(line: 959, column: 1, scope: !2894, inlinedAt: !2966)
!2984 = !DILocation(line: 972, column: 3, scope: !2957)
!2985 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !201, file: !201, line: 976, type: !2986, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!8, !12, !48, !42}
!2988 = !{!2989, !2990, !2991}
!2989 = !DILocalVariable(name: "s", arg: 1, scope: !2985, file: !201, line: 976, type: !12)
!2990 = !DILocalVariable(name: "arg", arg: 2, scope: !2985, file: !201, line: 976, type: !48)
!2991 = !DILocalVariable(name: "argsize", arg: 3, scope: !2985, file: !201, line: 976, type: !42)
!2992 = !DILocation(line: 976, column: 40, scope: !2985)
!2993 = !DILocation(line: 976, column: 55, scope: !2985)
!2994 = !DILocation(line: 976, column: 67, scope: !2985)
!2995 = !DILocation(line: 962, column: 27, scope: !2928, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 978, column: 10, scope: !2985)
!2997 = !DILocation(line: 962, column: 49, scope: !2928, inlinedAt: !2996)
!2998 = !DILocation(line: 963, column: 35, scope: !2928, inlinedAt: !2996)
!2999 = !DILocation(line: 963, column: 47, scope: !2928, inlinedAt: !2996)
!3000 = !DILocation(line: 965, column: 3, scope: !2928, inlinedAt: !2996)
!3001 = !DILocation(line: 965, column: 32, scope: !2928, inlinedAt: !2996)
!3002 = !DILocation(line: 193, column: 48, scope: !2908, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 965, column: 36, scope: !2928, inlinedAt: !2996)
!3004 = !DILocation(line: 195, column: 26, scope: !2908, inlinedAt: !3003)
!3005 = !{!3006}
!3006 = distinct !{!3006, !3007, !"quoting_options_from_style: argument 0"}
!3007 = distinct !{!3007, !"quoting_options_from_style"}
!3008 = !DILocation(line: 196, column: 13, scope: !2920, inlinedAt: !3003)
!3009 = !DILocation(line: 196, column: 7, scope: !2908, inlinedAt: !3003)
!3010 = !DILocation(line: 197, column: 5, scope: !2920, inlinedAt: !3003)
!3011 = !DILocation(line: 198, column: 5, scope: !2908, inlinedAt: !3003)
!3012 = !DILocation(line: 198, column: 11, scope: !2908, inlinedAt: !3003)
!3013 = !DILocation(line: 966, column: 10, scope: !2928, inlinedAt: !2996)
!3014 = !DILocation(line: 967, column: 1, scope: !2928, inlinedAt: !2996)
!3015 = !DILocation(line: 978, column: 3, scope: !2985)
!3016 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !201, file: !201, line: 982, type: !3017, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!8, !48, !42, !9}
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DILocalVariable(name: "arg", arg: 1, scope: !3016, file: !201, line: 982, type: !48)
!3021 = !DILocalVariable(name: "argsize", arg: 2, scope: !3016, file: !201, line: 982, type: !42)
!3022 = !DILocalVariable(name: "ch", arg: 3, scope: !3016, file: !201, line: 982, type: !9)
!3023 = !DILocalVariable(name: "options", scope: !3016, file: !201, line: 984, type: !206)
!3024 = !DILocation(line: 982, column: 32, scope: !3016)
!3025 = !DILocation(line: 982, column: 44, scope: !3016)
!3026 = !DILocation(line: 982, column: 58, scope: !3016)
!3027 = !DILocation(line: 984, column: 3, scope: !3016)
!3028 = !DILocation(line: 985, column: 13, scope: !3016)
!3029 = !{i64 0, i64 4, !1178, i64 4, i64 4, !849, i64 8, i64 32, !1178, i64 40, i64 8, !732, i64 48, i64 8, !732}
!3030 = !DILocation(line: 984, column: 26, scope: !3016)
!3031 = !DILocation(line: 152, column: 43, scope: !1681, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 986, column: 3, scope: !3016)
!3033 = !DILocation(line: 152, column: 51, scope: !1681, inlinedAt: !3032)
!3034 = !DILocation(line: 152, column: 58, scope: !1681, inlinedAt: !3032)
!3035 = !DILocation(line: 154, column: 17, scope: !1681, inlinedAt: !3032)
!3036 = !DILocation(line: 156, column: 62, scope: !1681, inlinedAt: !3032)
!3037 = !DILocation(line: 156, column: 57, scope: !1681, inlinedAt: !3032)
!3038 = !DILocation(line: 155, column: 17, scope: !1681, inlinedAt: !3032)
!3039 = !DILocation(line: 157, column: 15, scope: !1681, inlinedAt: !3032)
!3040 = !DILocation(line: 157, column: 7, scope: !1681, inlinedAt: !3032)
!3041 = !DILocation(line: 158, column: 12, scope: !1681, inlinedAt: !3032)
!3042 = !DILocation(line: 158, column: 15, scope: !1681, inlinedAt: !3032)
!3043 = !DILocation(line: 158, column: 25, scope: !1681, inlinedAt: !3032)
!3044 = !DILocation(line: 158, column: 7, scope: !1681, inlinedAt: !3032)
!3045 = !DILocation(line: 159, column: 18, scope: !1681, inlinedAt: !3032)
!3046 = !DILocation(line: 159, column: 23, scope: !1681, inlinedAt: !3032)
!3047 = !DILocation(line: 159, column: 6, scope: !1681, inlinedAt: !3032)
!3048 = !DILocation(line: 987, column: 10, scope: !3016)
!3049 = !DILocation(line: 988, column: 1, scope: !3016)
!3050 = !DILocation(line: 987, column: 3, scope: !3016)
!3051 = distinct !DISubprogram(name: "quotearg_char", scope: !201, file: !201, line: 991, type: !3052, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!8, !48, !9}
!3054 = !{!3055, !3056}
!3055 = !DILocalVariable(name: "arg", arg: 1, scope: !3051, file: !201, line: 991, type: !48)
!3056 = !DILocalVariable(name: "ch", arg: 2, scope: !3051, file: !201, line: 991, type: !9)
!3057 = !DILocation(line: 991, column: 28, scope: !3051)
!3058 = !DILocation(line: 991, column: 38, scope: !3051)
!3059 = !DILocation(line: 982, column: 32, scope: !3016, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 993, column: 10, scope: !3051)
!3061 = !DILocation(line: 982, column: 44, scope: !3016, inlinedAt: !3060)
!3062 = !DILocation(line: 982, column: 58, scope: !3016, inlinedAt: !3060)
!3063 = !DILocation(line: 984, column: 3, scope: !3016, inlinedAt: !3060)
!3064 = !DILocation(line: 985, column: 13, scope: !3016, inlinedAt: !3060)
!3065 = !DILocation(line: 984, column: 26, scope: !3016, inlinedAt: !3060)
!3066 = !DILocation(line: 152, column: 43, scope: !1681, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 986, column: 3, scope: !3016, inlinedAt: !3060)
!3068 = !DILocation(line: 152, column: 51, scope: !1681, inlinedAt: !3067)
!3069 = !DILocation(line: 152, column: 58, scope: !1681, inlinedAt: !3067)
!3070 = !DILocation(line: 154, column: 17, scope: !1681, inlinedAt: !3067)
!3071 = !DILocation(line: 156, column: 62, scope: !1681, inlinedAt: !3067)
!3072 = !DILocation(line: 156, column: 57, scope: !1681, inlinedAt: !3067)
!3073 = !DILocation(line: 155, column: 17, scope: !1681, inlinedAt: !3067)
!3074 = !DILocation(line: 157, column: 15, scope: !1681, inlinedAt: !3067)
!3075 = !DILocation(line: 157, column: 7, scope: !1681, inlinedAt: !3067)
!3076 = !DILocation(line: 158, column: 12, scope: !1681, inlinedAt: !3067)
!3077 = !DILocation(line: 158, column: 15, scope: !1681, inlinedAt: !3067)
!3078 = !DILocation(line: 158, column: 25, scope: !1681, inlinedAt: !3067)
!3079 = !DILocation(line: 158, column: 7, scope: !1681, inlinedAt: !3067)
!3080 = !DILocation(line: 159, column: 18, scope: !1681, inlinedAt: !3067)
!3081 = !DILocation(line: 159, column: 23, scope: !1681, inlinedAt: !3067)
!3082 = !DILocation(line: 159, column: 6, scope: !1681, inlinedAt: !3067)
!3083 = !DILocation(line: 987, column: 10, scope: !3016, inlinedAt: !3060)
!3084 = !DILocation(line: 988, column: 1, scope: !3016, inlinedAt: !3060)
!3085 = !DILocation(line: 993, column: 3, scope: !3051)
!3086 = distinct !DISubprogram(name: "quotearg_colon", scope: !201, file: !201, line: 997, type: !2870, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3087)
!3087 = !{!3088}
!3088 = !DILocalVariable(name: "arg", arg: 1, scope: !3086, file: !201, line: 997, type: !48)
!3089 = !DILocation(line: 997, column: 29, scope: !3086)
!3090 = !DILocation(line: 991, column: 28, scope: !3051, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 999, column: 10, scope: !3086)
!3092 = !DILocation(line: 991, column: 38, scope: !3051, inlinedAt: !3091)
!3093 = !DILocation(line: 982, column: 32, scope: !3016, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 993, column: 10, scope: !3051, inlinedAt: !3091)
!3095 = !DILocation(line: 982, column: 44, scope: !3016, inlinedAt: !3094)
!3096 = !DILocation(line: 982, column: 58, scope: !3016, inlinedAt: !3094)
!3097 = !DILocation(line: 984, column: 3, scope: !3016, inlinedAt: !3094)
!3098 = !DILocation(line: 985, column: 13, scope: !3016, inlinedAt: !3094)
!3099 = !DILocation(line: 984, column: 26, scope: !3016, inlinedAt: !3094)
!3100 = !DILocation(line: 152, column: 43, scope: !1681, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 986, column: 3, scope: !3016, inlinedAt: !3094)
!3102 = !DILocation(line: 152, column: 51, scope: !1681, inlinedAt: !3101)
!3103 = !DILocation(line: 152, column: 58, scope: !1681, inlinedAt: !3101)
!3104 = !DILocation(line: 154, column: 17, scope: !1681, inlinedAt: !3101)
!3105 = !DILocation(line: 156, column: 57, scope: !1681, inlinedAt: !3101)
!3106 = !DILocation(line: 155, column: 17, scope: !1681, inlinedAt: !3101)
!3107 = !DILocation(line: 157, column: 7, scope: !1681, inlinedAt: !3101)
!3108 = !DILocation(line: 158, column: 12, scope: !1681, inlinedAt: !3101)
!3109 = !DILocation(line: 159, column: 6, scope: !1681, inlinedAt: !3101)
!3110 = !DILocation(line: 987, column: 10, scope: !3016, inlinedAt: !3094)
!3111 = !DILocation(line: 988, column: 1, scope: !3016, inlinedAt: !3094)
!3112 = !DILocation(line: 999, column: 3, scope: !3086)
!3113 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !201, file: !201, line: 1003, type: !2881, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3114)
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !201, line: 1003, type: !48)
!3116 = !DILocalVariable(name: "argsize", arg: 2, scope: !3113, file: !201, line: 1003, type: !42)
!3117 = !DILocation(line: 1003, column: 33, scope: !3113)
!3118 = !DILocation(line: 1003, column: 45, scope: !3113)
!3119 = !DILocation(line: 982, column: 32, scope: !3016, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1005, column: 10, scope: !3113)
!3121 = !DILocation(line: 982, column: 44, scope: !3016, inlinedAt: !3120)
!3122 = !DILocation(line: 982, column: 58, scope: !3016, inlinedAt: !3120)
!3123 = !DILocation(line: 984, column: 3, scope: !3016, inlinedAt: !3120)
!3124 = !DILocation(line: 985, column: 13, scope: !3016, inlinedAt: !3120)
!3125 = !DILocation(line: 984, column: 26, scope: !3016, inlinedAt: !3120)
!3126 = !DILocation(line: 152, column: 43, scope: !1681, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 986, column: 3, scope: !3016, inlinedAt: !3120)
!3128 = !DILocation(line: 152, column: 51, scope: !1681, inlinedAt: !3127)
!3129 = !DILocation(line: 152, column: 58, scope: !1681, inlinedAt: !3127)
!3130 = !DILocation(line: 154, column: 17, scope: !1681, inlinedAt: !3127)
!3131 = !DILocation(line: 156, column: 57, scope: !1681, inlinedAt: !3127)
!3132 = !DILocation(line: 155, column: 17, scope: !1681, inlinedAt: !3127)
!3133 = !DILocation(line: 157, column: 7, scope: !1681, inlinedAt: !3127)
!3134 = !DILocation(line: 158, column: 12, scope: !1681, inlinedAt: !3127)
!3135 = !DILocation(line: 159, column: 6, scope: !1681, inlinedAt: !3127)
!3136 = !DILocation(line: 987, column: 10, scope: !3016, inlinedAt: !3120)
!3137 = !DILocation(line: 988, column: 1, scope: !3016, inlinedAt: !3120)
!3138 = !DILocation(line: 1005, column: 3, scope: !3113)
!3139 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !201, file: !201, line: 1009, type: !2895, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3140)
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DILocalVariable(name: "n", arg: 1, scope: !3139, file: !201, line: 1009, type: !6)
!3142 = !DILocalVariable(name: "s", arg: 2, scope: !3139, file: !201, line: 1009, type: !12)
!3143 = !DILocalVariable(name: "arg", arg: 3, scope: !3139, file: !201, line: 1009, type: !48)
!3144 = !DILocalVariable(name: "options", scope: !3139, file: !201, line: 1011, type: !206)
!3145 = !DILocation(line: 195, column: 26, scope: !2908, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1012, column: 13, scope: !3139)
!3147 = !DILocation(line: 1009, column: 29, scope: !3139)
!3148 = !DILocation(line: 1009, column: 51, scope: !3139)
!3149 = !DILocation(line: 1009, column: 66, scope: !3139)
!3150 = !DILocation(line: 1011, column: 3, scope: !3139)
!3151 = !DILocation(line: 1012, column: 13, scope: !3139)
!3152 = !DILocation(line: 193, column: 48, scope: !2908, inlinedAt: !3146)
!3153 = !{!3154}
!3154 = distinct !{!3154, !3155, !"quoting_options_from_style: argument 0"}
!3155 = distinct !{!3155, !"quoting_options_from_style"}
!3156 = !DILocation(line: 196, column: 13, scope: !2920, inlinedAt: !3146)
!3157 = !DILocation(line: 196, column: 7, scope: !2908, inlinedAt: !3146)
!3158 = !DILocation(line: 197, column: 5, scope: !2920, inlinedAt: !3146)
!3159 = !DILocation(line: 1011, column: 26, scope: !3139)
!3160 = !DILocation(line: 152, column: 43, scope: !1681, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1013, column: 3, scope: !3139)
!3162 = !DILocation(line: 152, column: 51, scope: !1681, inlinedAt: !3161)
!3163 = !DILocation(line: 152, column: 58, scope: !1681, inlinedAt: !3161)
!3164 = !DILocation(line: 154, column: 17, scope: !1681, inlinedAt: !3161)
!3165 = !DILocation(line: 156, column: 57, scope: !1681, inlinedAt: !3161)
!3166 = !DILocation(line: 155, column: 17, scope: !1681, inlinedAt: !3161)
!3167 = !DILocation(line: 157, column: 7, scope: !1681, inlinedAt: !3161)
!3168 = !DILocation(line: 158, column: 12, scope: !1681, inlinedAt: !3161)
!3169 = !DILocation(line: 159, column: 6, scope: !1681, inlinedAt: !3161)
!3170 = !DILocation(line: 1014, column: 10, scope: !3139)
!3171 = !DILocation(line: 1015, column: 1, scope: !3139)
!3172 = !DILocation(line: 1014, column: 3, scope: !3139)
!3173 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !201, file: !201, line: 1018, type: !3174, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!8, !6, !48, !48, !48}
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !201, line: 1018, type: !6)
!3178 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3173, file: !201, line: 1018, type: !48)
!3179 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3173, file: !201, line: 1019, type: !48)
!3180 = !DILocalVariable(name: "arg", arg: 4, scope: !3173, file: !201, line: 1019, type: !48)
!3181 = !DILocation(line: 1018, column: 24, scope: !3173)
!3182 = !DILocation(line: 1018, column: 39, scope: !3173)
!3183 = !DILocation(line: 1019, column: 32, scope: !3173)
!3184 = !DILocation(line: 1019, column: 57, scope: !3173)
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3186, file: !201, line: 1026, type: !6)
!3186 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !201, file: !201, line: 1026, type: !3187, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!8, !6, !48, !48, !48, !42}
!3189 = !{!3185, !3190, !3191, !3192, !3193, !3194}
!3190 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3186, file: !201, line: 1026, type: !48)
!3191 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3186, file: !201, line: 1027, type: !48)
!3192 = !DILocalVariable(name: "arg", arg: 4, scope: !3186, file: !201, line: 1028, type: !48)
!3193 = !DILocalVariable(name: "argsize", arg: 5, scope: !3186, file: !201, line: 1028, type: !42)
!3194 = !DILocalVariable(name: "o", scope: !3186, file: !201, line: 1030, type: !206)
!3195 = !DILocation(line: 1026, column: 28, scope: !3186, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 1021, column: 10, scope: !3173)
!3197 = !DILocation(line: 1026, column: 43, scope: !3186, inlinedAt: !3196)
!3198 = !DILocation(line: 1027, column: 36, scope: !3186, inlinedAt: !3196)
!3199 = !DILocation(line: 1028, column: 36, scope: !3186, inlinedAt: !3196)
!3200 = !DILocation(line: 1028, column: 48, scope: !3186, inlinedAt: !3196)
!3201 = !DILocation(line: 1030, column: 3, scope: !3186, inlinedAt: !3196)
!3202 = !DILocation(line: 1030, column: 30, scope: !3186, inlinedAt: !3196)
!3203 = !DILocation(line: 1030, column: 26, scope: !3186, inlinedAt: !3196)
!3204 = !DILocation(line: 179, column: 45, scope: !1729, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 1031, column: 3, scope: !3186, inlinedAt: !3196)
!3206 = !DILocation(line: 180, column: 33, scope: !1729, inlinedAt: !3205)
!3207 = !DILocation(line: 180, column: 57, scope: !1729, inlinedAt: !3205)
!3208 = !DILocation(line: 184, column: 6, scope: !1729, inlinedAt: !3205)
!3209 = !DILocation(line: 184, column: 12, scope: !1729, inlinedAt: !3205)
!3210 = !DILocation(line: 185, column: 8, scope: !1745, inlinedAt: !3205)
!3211 = !DILocation(line: 185, column: 23, scope: !1745, inlinedAt: !3205)
!3212 = !DILocation(line: 185, column: 19, scope: !1745, inlinedAt: !3205)
!3213 = !DILocation(line: 186, column: 5, scope: !1745, inlinedAt: !3205)
!3214 = !DILocation(line: 187, column: 6, scope: !1729, inlinedAt: !3205)
!3215 = !DILocation(line: 187, column: 17, scope: !1729, inlinedAt: !3205)
!3216 = !DILocation(line: 188, column: 6, scope: !1729, inlinedAt: !3205)
!3217 = !DILocation(line: 188, column: 18, scope: !1729, inlinedAt: !3205)
!3218 = !DILocation(line: 1032, column: 10, scope: !3186, inlinedAt: !3196)
!3219 = !DILocation(line: 1033, column: 1, scope: !3186, inlinedAt: !3196)
!3220 = !DILocation(line: 1021, column: 3, scope: !3173)
!3221 = !DILocation(line: 1026, column: 28, scope: !3186)
!3222 = !DILocation(line: 1026, column: 43, scope: !3186)
!3223 = !DILocation(line: 1027, column: 36, scope: !3186)
!3224 = !DILocation(line: 1028, column: 36, scope: !3186)
!3225 = !DILocation(line: 1028, column: 48, scope: !3186)
!3226 = !DILocation(line: 1030, column: 3, scope: !3186)
!3227 = !DILocation(line: 1030, column: 30, scope: !3186)
!3228 = !DILocation(line: 1030, column: 26, scope: !3186)
!3229 = !DILocation(line: 179, column: 45, scope: !1729, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 1031, column: 3, scope: !3186)
!3231 = !DILocation(line: 180, column: 33, scope: !1729, inlinedAt: !3230)
!3232 = !DILocation(line: 180, column: 57, scope: !1729, inlinedAt: !3230)
!3233 = !DILocation(line: 184, column: 6, scope: !1729, inlinedAt: !3230)
!3234 = !DILocation(line: 184, column: 12, scope: !1729, inlinedAt: !3230)
!3235 = !DILocation(line: 185, column: 8, scope: !1745, inlinedAt: !3230)
!3236 = !DILocation(line: 185, column: 23, scope: !1745, inlinedAt: !3230)
!3237 = !DILocation(line: 185, column: 19, scope: !1745, inlinedAt: !3230)
!3238 = !DILocation(line: 186, column: 5, scope: !1745, inlinedAt: !3230)
!3239 = !DILocation(line: 187, column: 6, scope: !1729, inlinedAt: !3230)
!3240 = !DILocation(line: 187, column: 17, scope: !1729, inlinedAt: !3230)
!3241 = !DILocation(line: 188, column: 6, scope: !1729, inlinedAt: !3230)
!3242 = !DILocation(line: 188, column: 18, scope: !1729, inlinedAt: !3230)
!3243 = !DILocation(line: 1032, column: 10, scope: !3186)
!3244 = !DILocation(line: 1033, column: 1, scope: !3186)
!3245 = !DILocation(line: 1032, column: 3, scope: !3186)
!3246 = distinct !DISubprogram(name: "quotearg_custom", scope: !201, file: !201, line: 1036, type: !3247, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!8, !48, !48, !48}
!3249 = !{!3250, !3251, !3252}
!3250 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3246, file: !201, line: 1036, type: !48)
!3251 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3246, file: !201, line: 1036, type: !48)
!3252 = !DILocalVariable(name: "arg", arg: 3, scope: !3246, file: !201, line: 1037, type: !48)
!3253 = !DILocation(line: 1036, column: 30, scope: !3246)
!3254 = !DILocation(line: 1036, column: 54, scope: !3246)
!3255 = !DILocation(line: 1037, column: 30, scope: !3246)
!3256 = !DILocation(line: 1018, column: 24, scope: !3173, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1039, column: 10, scope: !3246)
!3258 = !DILocation(line: 1018, column: 39, scope: !3173, inlinedAt: !3257)
!3259 = !DILocation(line: 1019, column: 32, scope: !3173, inlinedAt: !3257)
!3260 = !DILocation(line: 1019, column: 57, scope: !3173, inlinedAt: !3257)
!3261 = !DILocation(line: 1026, column: 28, scope: !3186, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1021, column: 10, scope: !3173, inlinedAt: !3257)
!3263 = !DILocation(line: 1026, column: 43, scope: !3186, inlinedAt: !3262)
!3264 = !DILocation(line: 1027, column: 36, scope: !3186, inlinedAt: !3262)
!3265 = !DILocation(line: 1028, column: 36, scope: !3186, inlinedAt: !3262)
!3266 = !DILocation(line: 1028, column: 48, scope: !3186, inlinedAt: !3262)
!3267 = !DILocation(line: 1030, column: 3, scope: !3186, inlinedAt: !3262)
!3268 = !DILocation(line: 1030, column: 30, scope: !3186, inlinedAt: !3262)
!3269 = !DILocation(line: 1030, column: 26, scope: !3186, inlinedAt: !3262)
!3270 = !DILocation(line: 179, column: 45, scope: !1729, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 1031, column: 3, scope: !3186, inlinedAt: !3262)
!3272 = !DILocation(line: 180, column: 33, scope: !1729, inlinedAt: !3271)
!3273 = !DILocation(line: 180, column: 57, scope: !1729, inlinedAt: !3271)
!3274 = !DILocation(line: 184, column: 6, scope: !1729, inlinedAt: !3271)
!3275 = !DILocation(line: 184, column: 12, scope: !1729, inlinedAt: !3271)
!3276 = !DILocation(line: 185, column: 8, scope: !1745, inlinedAt: !3271)
!3277 = !DILocation(line: 185, column: 23, scope: !1745, inlinedAt: !3271)
!3278 = !DILocation(line: 185, column: 19, scope: !1745, inlinedAt: !3271)
!3279 = !DILocation(line: 186, column: 5, scope: !1745, inlinedAt: !3271)
!3280 = !DILocation(line: 187, column: 6, scope: !1729, inlinedAt: !3271)
!3281 = !DILocation(line: 187, column: 17, scope: !1729, inlinedAt: !3271)
!3282 = !DILocation(line: 188, column: 6, scope: !1729, inlinedAt: !3271)
!3283 = !DILocation(line: 188, column: 18, scope: !1729, inlinedAt: !3271)
!3284 = !DILocation(line: 1032, column: 10, scope: !3186, inlinedAt: !3262)
!3285 = !DILocation(line: 1033, column: 1, scope: !3186, inlinedAt: !3262)
!3286 = !DILocation(line: 1039, column: 3, scope: !3246)
!3287 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !201, file: !201, line: 1043, type: !3288, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!8, !48, !48, !48, !42}
!3290 = !{!3291, !3292, !3293, !3294}
!3291 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3287, file: !201, line: 1043, type: !48)
!3292 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3287, file: !201, line: 1043, type: !48)
!3293 = !DILocalVariable(name: "arg", arg: 3, scope: !3287, file: !201, line: 1044, type: !48)
!3294 = !DILocalVariable(name: "argsize", arg: 4, scope: !3287, file: !201, line: 1044, type: !42)
!3295 = !DILocation(line: 1043, column: 34, scope: !3287)
!3296 = !DILocation(line: 1043, column: 58, scope: !3287)
!3297 = !DILocation(line: 1044, column: 34, scope: !3287)
!3298 = !DILocation(line: 1044, column: 46, scope: !3287)
!3299 = !DILocation(line: 1026, column: 28, scope: !3186, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1046, column: 10, scope: !3287)
!3301 = !DILocation(line: 1026, column: 43, scope: !3186, inlinedAt: !3300)
!3302 = !DILocation(line: 1027, column: 36, scope: !3186, inlinedAt: !3300)
!3303 = !DILocation(line: 1028, column: 36, scope: !3186, inlinedAt: !3300)
!3304 = !DILocation(line: 1028, column: 48, scope: !3186, inlinedAt: !3300)
!3305 = !DILocation(line: 1030, column: 3, scope: !3186, inlinedAt: !3300)
!3306 = !DILocation(line: 1030, column: 30, scope: !3186, inlinedAt: !3300)
!3307 = !DILocation(line: 1030, column: 26, scope: !3186, inlinedAt: !3300)
!3308 = !DILocation(line: 179, column: 45, scope: !1729, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 1031, column: 3, scope: !3186, inlinedAt: !3300)
!3310 = !DILocation(line: 180, column: 33, scope: !1729, inlinedAt: !3309)
!3311 = !DILocation(line: 180, column: 57, scope: !1729, inlinedAt: !3309)
!3312 = !DILocation(line: 184, column: 6, scope: !1729, inlinedAt: !3309)
!3313 = !DILocation(line: 184, column: 12, scope: !1729, inlinedAt: !3309)
!3314 = !DILocation(line: 185, column: 8, scope: !1745, inlinedAt: !3309)
!3315 = !DILocation(line: 185, column: 23, scope: !1745, inlinedAt: !3309)
!3316 = !DILocation(line: 185, column: 19, scope: !1745, inlinedAt: !3309)
!3317 = !DILocation(line: 186, column: 5, scope: !1745, inlinedAt: !3309)
!3318 = !DILocation(line: 187, column: 6, scope: !1729, inlinedAt: !3309)
!3319 = !DILocation(line: 187, column: 17, scope: !1729, inlinedAt: !3309)
!3320 = !DILocation(line: 188, column: 6, scope: !1729, inlinedAt: !3309)
!3321 = !DILocation(line: 188, column: 18, scope: !1729, inlinedAt: !3309)
!3322 = !DILocation(line: 1032, column: 10, scope: !3186, inlinedAt: !3300)
!3323 = !DILocation(line: 1033, column: 1, scope: !3186, inlinedAt: !3300)
!3324 = !DILocation(line: 1046, column: 3, scope: !3287)
!3325 = distinct !DISubprogram(name: "quote_n_mem", scope: !201, file: !201, line: 1061, type: !3326, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!48, !6, !48, !42}
!3328 = !{!3329, !3330, !3331}
!3329 = !DILocalVariable(name: "n", arg: 1, scope: !3325, file: !201, line: 1061, type: !6)
!3330 = !DILocalVariable(name: "arg", arg: 2, scope: !3325, file: !201, line: 1061, type: !48)
!3331 = !DILocalVariable(name: "argsize", arg: 3, scope: !3325, file: !201, line: 1061, type: !42)
!3332 = !DILocation(line: 1061, column: 18, scope: !3325)
!3333 = !DILocation(line: 1061, column: 33, scope: !3325)
!3334 = !DILocation(line: 1061, column: 45, scope: !3325)
!3335 = !DILocation(line: 1063, column: 10, scope: !3325)
!3336 = !DILocation(line: 1063, column: 3, scope: !3325)
!3337 = distinct !DISubprogram(name: "quote_mem", scope: !201, file: !201, line: 1067, type: !3338, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!48, !48, !42}
!3340 = !{!3341, !3342}
!3341 = !DILocalVariable(name: "arg", arg: 1, scope: !3337, file: !201, line: 1067, type: !48)
!3342 = !DILocalVariable(name: "argsize", arg: 2, scope: !3337, file: !201, line: 1067, type: !42)
!3343 = !DILocation(line: 1067, column: 24, scope: !3337)
!3344 = !DILocation(line: 1067, column: 36, scope: !3337)
!3345 = !DILocation(line: 1061, column: 18, scope: !3325, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 1069, column: 10, scope: !3337)
!3347 = !DILocation(line: 1061, column: 33, scope: !3325, inlinedAt: !3346)
!3348 = !DILocation(line: 1061, column: 45, scope: !3325, inlinedAt: !3346)
!3349 = !DILocation(line: 1063, column: 10, scope: !3325, inlinedAt: !3346)
!3350 = !DILocation(line: 1069, column: 3, scope: !3337)
!3351 = distinct !DISubprogram(name: "quote_n", scope: !201, file: !201, line: 1073, type: !3352, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!48, !6, !48}
!3354 = !{!3355, !3356}
!3355 = !DILocalVariable(name: "n", arg: 1, scope: !3351, file: !201, line: 1073, type: !6)
!3356 = !DILocalVariable(name: "arg", arg: 2, scope: !3351, file: !201, line: 1073, type: !48)
!3357 = !DILocation(line: 1073, column: 14, scope: !3351)
!3358 = !DILocation(line: 1073, column: 29, scope: !3351)
!3359 = !DILocation(line: 1061, column: 18, scope: !3325, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 1075, column: 10, scope: !3351)
!3361 = !DILocation(line: 1061, column: 33, scope: !3325, inlinedAt: !3360)
!3362 = !DILocation(line: 1061, column: 45, scope: !3325, inlinedAt: !3360)
!3363 = !DILocation(line: 1063, column: 10, scope: !3325, inlinedAt: !3360)
!3364 = !DILocation(line: 1075, column: 3, scope: !3351)
!3365 = distinct !DISubprogram(name: "quote", scope: !201, file: !201, line: 1079, type: !3366, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!48, !48}
!3368 = !{!3369}
!3369 = !DILocalVariable(name: "arg", arg: 1, scope: !3365, file: !201, line: 1079, type: !48)
!3370 = !DILocation(line: 1079, column: 20, scope: !3365)
!3371 = !DILocation(line: 1073, column: 14, scope: !3351, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1081, column: 10, scope: !3365)
!3373 = !DILocation(line: 1073, column: 29, scope: !3351, inlinedAt: !3372)
!3374 = !DILocation(line: 1061, column: 18, scope: !3325, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 1075, column: 10, scope: !3351, inlinedAt: !3372)
!3376 = !DILocation(line: 1061, column: 33, scope: !3325, inlinedAt: !3375)
!3377 = !DILocation(line: 1061, column: 45, scope: !3325, inlinedAt: !3375)
!3378 = !DILocation(line: 1063, column: 10, scope: !3325, inlinedAt: !3375)
!3379 = !DILocation(line: 1081, column: 3, scope: !3365)
!3380 = distinct !DISubprogram(name: "safe_read", scope: !3381, file: !3381, line: 56, type: !3382, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3384)
!3381 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!42, !6, !41, !42}
!3384 = !{!3385, !3386, !3387, !3388}
!3385 = !DILocalVariable(name: "fd", arg: 1, scope: !3380, file: !3381, line: 56, type: !6)
!3386 = !DILocalVariable(name: "buf", arg: 2, scope: !3380, file: !3381, line: 56, type: !41)
!3387 = !DILocalVariable(name: "count", arg: 3, scope: !3380, file: !3381, line: 56, type: !42)
!3388 = !DILocalVariable(name: "result", scope: !3389, file: !3381, line: 60, type: !3392)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !3381, line: 59, column: 5)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3381, line: 58, column: 3)
!3391 = distinct !DILexicalBlock(scope: !3380, file: !3381, line: 58, column: 3)
!3392 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !79, line: 108, baseType: !3393)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !81, line: 191, baseType: !105)
!3394 = !DILocation(line: 56, column: 14, scope: !3380)
!3395 = !DILocation(line: 56, column: 30, scope: !3380)
!3396 = !DILocation(line: 56, column: 42, scope: !3380)
!3397 = !DILocation(line: 58, column: 3, scope: !3380)
!3398 = !DILocation(line: 60, column: 24, scope: !3389)
!3399 = !DILocation(line: 60, column: 15, scope: !3389)
!3400 = !DILocation(line: 62, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3389, file: !3381, line: 62, column: 11)
!3402 = !DILocation(line: 62, column: 11, scope: !3389)
!3403 = !DILocation(line: 64, column: 16, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !3381, line: 64, column: 16)
!3405 = !DILocation(line: 64, column: 16, scope: !3401)
!3406 = distinct !{!3406, !3407, !3408}
!3407 = !DILocation(line: 58, column: 3, scope: !3391)
!3408 = !DILocation(line: 70, column: 5, scope: !3391)
!3409 = !DILocation(line: 66, column: 22, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3404, file: !3381, line: 66, column: 16)
!3411 = !DILocation(line: 66, column: 51, scope: !3410)
!3412 = !DILocation(line: 66, column: 32, scope: !3410)
!3413 = !DILocation(line: 71, column: 1, scope: !3380)
!3414 = distinct !DISubprogram(name: "safe_write", scope: !254, file: !254, line: 56, type: !1570, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3415)
!3415 = !{!3416, !3417, !3418, !3419}
!3416 = !DILocalVariable(name: "fd", arg: 1, scope: !3414, file: !254, line: 56, type: !6)
!3417 = !DILocalVariable(name: "buf", arg: 2, scope: !3414, file: !254, line: 56, type: !941)
!3418 = !DILocalVariable(name: "count", arg: 3, scope: !3414, file: !254, line: 56, type: !42)
!3419 = !DILocalVariable(name: "result", scope: !3420, file: !254, line: 60, type: !3392)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !254, line: 59, column: 5)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !254, line: 58, column: 3)
!3422 = distinct !DILexicalBlock(scope: !3414, file: !254, line: 58, column: 3)
!3423 = !DILocation(line: 56, column: 14, scope: !3414)
!3424 = !DILocation(line: 56, column: 30, scope: !3414)
!3425 = !DILocation(line: 56, column: 42, scope: !3414)
!3426 = !DILocation(line: 58, column: 3, scope: !3414)
!3427 = !DILocation(line: 60, column: 24, scope: !3420)
!3428 = !DILocation(line: 60, column: 15, scope: !3420)
!3429 = !DILocation(line: 62, column: 13, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3420, file: !254, line: 62, column: 11)
!3431 = !DILocation(line: 62, column: 11, scope: !3420)
!3432 = !DILocation(line: 64, column: 16, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3430, file: !254, line: 64, column: 16)
!3434 = !DILocation(line: 64, column: 16, scope: !3430)
!3435 = distinct !{!3435, !3436, !3437}
!3436 = !DILocation(line: 58, column: 3, scope: !3422)
!3437 = !DILocation(line: 70, column: 5, scope: !3422)
!3438 = !DILocation(line: 66, column: 22, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3433, file: !254, line: 66, column: 16)
!3440 = !DILocation(line: 66, column: 51, scope: !3439)
!3441 = !DILocation(line: 66, column: 32, scope: !3439)
!3442 = !DILocation(line: 71, column: 1, scope: !3414)
!3443 = distinct !DISubprogram(name: "version_etc_arn", scope: !266, file: !266, line: 62, type: !3444, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !3481)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !3446, !48, !48, !48, !3480, !42}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1504, line: 7, baseType: !3448)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1506, line: 49, size: 1728, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3448, file: !1506, line: 51, baseType: !6, size: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3448, file: !1506, line: 54, baseType: !8, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3448, file: !1506, line: 55, baseType: !8, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3448, file: !1506, line: 56, baseType: !8, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3448, file: !1506, line: 57, baseType: !8, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3448, file: !1506, line: 58, baseType: !8, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3448, file: !1506, line: 59, baseType: !8, size: 64, offset: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3448, file: !1506, line: 60, baseType: !8, size: 64, offset: 448)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3448, file: !1506, line: 61, baseType: !8, size: 64, offset: 512)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3448, file: !1506, line: 64, baseType: !8, size: 64, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3448, file: !1506, line: 65, baseType: !8, size: 64, offset: 640)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3448, file: !1506, line: 66, baseType: !8, size: 64, offset: 704)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3448, file: !1506, line: 68, baseType: !1521, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3448, file: !1506, line: 70, baseType: !3464, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3448, file: !1506, line: 72, baseType: !6, size: 32, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3448, file: !1506, line: 73, baseType: !6, size: 32, offset: 928)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3448, file: !1506, line: 74, baseType: !104, size: 64, offset: 960)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3448, file: !1506, line: 77, baseType: !197, size: 16, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3448, file: !1506, line: 78, baseType: !1530, size: 8, offset: 1040)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3448, file: !1506, line: 79, baseType: !1532, size: 8, offset: 1048)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3448, file: !1506, line: 81, baseType: !1536, size: 64, offset: 1088)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3448, file: !1506, line: 89, baseType: !1539, size: 64, offset: 1152)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3448, file: !1506, line: 91, baseType: !1541, size: 64, offset: 1216)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3448, file: !1506, line: 92, baseType: !1544, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3448, file: !1506, line: 93, baseType: !3464, size: 64, offset: 1344)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3448, file: !1506, line: 94, baseType: !41, size: 64, offset: 1408)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3448, file: !1506, line: 95, baseType: !42, size: 64, offset: 1472)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3448, file: !1506, line: 96, baseType: !6, size: 32, offset: 1536)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3448, file: !1506, line: 98, baseType: !60, size: 160, offset: 1568)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487}
!3482 = !DILocalVariable(name: "stream", arg: 1, scope: !3443, file: !266, line: 62, type: !3446)
!3483 = !DILocalVariable(name: "command_name", arg: 2, scope: !3443, file: !266, line: 63, type: !48)
!3484 = !DILocalVariable(name: "package", arg: 3, scope: !3443, file: !266, line: 63, type: !48)
!3485 = !DILocalVariable(name: "version", arg: 4, scope: !3443, file: !266, line: 64, type: !48)
!3486 = !DILocalVariable(name: "authors", arg: 5, scope: !3443, file: !266, line: 65, type: !3480)
!3487 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3443, file: !266, line: 65, type: !42)
!3488 = !DILocation(line: 62, column: 24, scope: !3443)
!3489 = !DILocation(line: 63, column: 30, scope: !3443)
!3490 = !DILocation(line: 63, column: 56, scope: !3443)
!3491 = !DILocation(line: 64, column: 30, scope: !3443)
!3492 = !DILocation(line: 65, column: 39, scope: !3443)
!3493 = !DILocation(line: 65, column: 55, scope: !3443)
!3494 = !DILocation(line: 67, column: 7, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3443, file: !266, line: 67, column: 7)
!3496 = !DILocation(line: 67, column: 7, scope: !3443)
!3497 = !DILocation(line: 68, column: 5, scope: !3495)
!3498 = !DILocation(line: 70, column: 5, scope: !3495)
!3499 = !DILocation(line: 84, column: 3, scope: !3443)
!3500 = !DILocation(line: 86, column: 3, scope: !3443)
!3501 = !DILocation(line: 95, column: 3, scope: !3443)
!3502 = !DILocation(line: 99, column: 7, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3443, file: !266, line: 96, column: 5)
!3504 = !DILocation(line: 102, column: 7, scope: !3503)
!3505 = !DILocation(line: 103, column: 7, scope: !3503)
!3506 = !DILocation(line: 106, column: 7, scope: !3503)
!3507 = !DILocation(line: 107, column: 7, scope: !3503)
!3508 = !DILocation(line: 110, column: 7, scope: !3503)
!3509 = !DILocation(line: 112, column: 7, scope: !3503)
!3510 = !DILocation(line: 117, column: 7, scope: !3503)
!3511 = !DILocation(line: 119, column: 7, scope: !3503)
!3512 = !DILocation(line: 124, column: 7, scope: !3503)
!3513 = !DILocation(line: 126, column: 7, scope: !3503)
!3514 = !DILocation(line: 131, column: 7, scope: !3503)
!3515 = !DILocation(line: 134, column: 7, scope: !3503)
!3516 = !DILocation(line: 139, column: 7, scope: !3503)
!3517 = !DILocation(line: 142, column: 7, scope: !3503)
!3518 = !DILocation(line: 147, column: 7, scope: !3503)
!3519 = !DILocation(line: 151, column: 7, scope: !3503)
!3520 = !DILocation(line: 156, column: 7, scope: !3503)
!3521 = !DILocation(line: 160, column: 7, scope: !3503)
!3522 = !DILocation(line: 167, column: 7, scope: !3503)
!3523 = !DILocation(line: 171, column: 7, scope: !3503)
!3524 = !DILocation(line: 173, column: 1, scope: !3443)
!3525 = distinct !DISubprogram(name: "version_etc_ar", scope: !266, file: !266, line: 180, type: !3526, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{null, !3446, !48, !48, !48, !3480}
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534}
!3529 = !DILocalVariable(name: "stream", arg: 1, scope: !3525, file: !266, line: 180, type: !3446)
!3530 = !DILocalVariable(name: "command_name", arg: 2, scope: !3525, file: !266, line: 181, type: !48)
!3531 = !DILocalVariable(name: "package", arg: 3, scope: !3525, file: !266, line: 181, type: !48)
!3532 = !DILocalVariable(name: "version", arg: 4, scope: !3525, file: !266, line: 182, type: !48)
!3533 = !DILocalVariable(name: "authors", arg: 5, scope: !3525, file: !266, line: 182, type: !3480)
!3534 = !DILocalVariable(name: "n_authors", scope: !3525, file: !266, line: 184, type: !42)
!3535 = !DILocation(line: 180, column: 23, scope: !3525)
!3536 = !DILocation(line: 181, column: 29, scope: !3525)
!3537 = !DILocation(line: 181, column: 55, scope: !3525)
!3538 = !DILocation(line: 182, column: 29, scope: !3525)
!3539 = !DILocation(line: 182, column: 59, scope: !3525)
!3540 = !DILocation(line: 184, column: 10, scope: !3525)
!3541 = !DILocation(line: 186, column: 8, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3525, file: !266, line: 186, column: 3)
!3543 = !DILocation(line: 0, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3542, file: !266, line: 186, column: 3)
!3545 = !DILocation(line: 186, column: 23, scope: !3544)
!3546 = !DILocation(line: 186, column: 3, scope: !3542)
!3547 = !DILocation(line: 186, column: 52, scope: !3544)
!3548 = distinct !{!3548, !3546, !3549}
!3549 = !DILocation(line: 187, column: 5, scope: !3542)
!3550 = !DILocation(line: 188, column: 3, scope: !3525)
!3551 = !DILocation(line: 189, column: 1, scope: !3525)
!3552 = distinct !DISubprogram(name: "version_etc_va", scope: !266, file: !266, line: 196, type: !3553, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !3562)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3446, !48, !48, !48, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !263, line: 189, size: 192, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3556, file: !263, line: 189, baseType: !14, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3556, file: !263, line: 189, baseType: !14, size: 32, offset: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3556, file: !263, line: 189, baseType: !41, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3556, file: !263, line: 189, baseType: !41, size: 64, offset: 128)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568, !3569}
!3563 = !DILocalVariable(name: "stream", arg: 1, scope: !3552, file: !266, line: 196, type: !3446)
!3564 = !DILocalVariable(name: "command_name", arg: 2, scope: !3552, file: !266, line: 197, type: !48)
!3565 = !DILocalVariable(name: "package", arg: 3, scope: !3552, file: !266, line: 197, type: !48)
!3566 = !DILocalVariable(name: "version", arg: 4, scope: !3552, file: !266, line: 198, type: !48)
!3567 = !DILocalVariable(name: "authors", arg: 5, scope: !3552, file: !266, line: 198, type: !3555)
!3568 = !DILocalVariable(name: "n_authors", scope: !3552, file: !266, line: 200, type: !42)
!3569 = !DILocalVariable(name: "authtab", scope: !3552, file: !266, line: 201, type: !3570)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, elements: !141)
!3571 = !DILocation(line: 196, column: 23, scope: !3552)
!3572 = !DILocation(line: 197, column: 29, scope: !3552)
!3573 = !DILocation(line: 197, column: 55, scope: !3552)
!3574 = !DILocation(line: 198, column: 29, scope: !3552)
!3575 = !DILocation(line: 198, column: 46, scope: !3552)
!3576 = !DILocation(line: 201, column: 3, scope: !3552)
!3577 = !DILocation(line: 201, column: 15, scope: !3552)
!3578 = !DILocation(line: 200, column: 10, scope: !3552)
!3579 = !DILocation(line: 205, column: 35, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !266, line: 203, column: 3)
!3581 = distinct !DILexicalBlock(scope: !3552, file: !266, line: 203, column: 3)
!3582 = !DILocation(line: 205, column: 14, scope: !3580)
!3583 = !DILocation(line: 205, column: 33, scope: !3580)
!3584 = !DILocation(line: 205, column: 67, scope: !3580)
!3585 = !DILocation(line: 203, column: 3, scope: !3581)
!3586 = !DILocation(line: 0, scope: !3580)
!3587 = !DILocation(line: 208, column: 3, scope: !3552)
!3588 = !DILocation(line: 210, column: 1, scope: !3552)
!3589 = distinct !DISubprogram(name: "version_etc", scope: !266, file: !266, line: 227, type: !3590, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3446, !48, !48, !48, null}
!3592 = !{!3593, !3594, !3595, !3596, !3597}
!3593 = !DILocalVariable(name: "stream", arg: 1, scope: !3589, file: !266, line: 227, type: !3446)
!3594 = !DILocalVariable(name: "command_name", arg: 2, scope: !3589, file: !266, line: 228, type: !48)
!3595 = !DILocalVariable(name: "package", arg: 3, scope: !3589, file: !266, line: 228, type: !48)
!3596 = !DILocalVariable(name: "version", arg: 4, scope: !3589, file: !266, line: 229, type: !48)
!3597 = !DILocalVariable(name: "authors", scope: !3589, file: !266, line: 231, type: !3598)
!3598 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1484, line: 52, baseType: !3599)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3600, line: 48, baseType: !3601)
!3600 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !263, line: 231, baseType: !3602)
!3602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3556, size: 192, elements: !1533)
!3603 = !DILocation(line: 227, column: 20, scope: !3589)
!3604 = !DILocation(line: 228, column: 26, scope: !3589)
!3605 = !DILocation(line: 228, column: 52, scope: !3589)
!3606 = !DILocation(line: 229, column: 26, scope: !3589)
!3607 = !DILocation(line: 231, column: 3, scope: !3589)
!3608 = !DILocation(line: 231, column: 11, scope: !3589)
!3609 = !DILocation(line: 233, column: 3, scope: !3589)
!3610 = !DILocation(line: 234, column: 3, scope: !3589)
!3611 = !DILocation(line: 235, column: 3, scope: !3589)
!3612 = !DILocation(line: 236, column: 1, scope: !3589)
!3613 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !266, file: !266, line: 239, type: !740, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !147)
!3614 = !DILocation(line: 245, column: 3, scope: !3613)
!3615 = !DILocation(line: 251, column: 3, scope: !3613)
!3616 = !DILocation(line: 256, column: 3, scope: !3613)
!3617 = !DILocation(line: 258, column: 1, scope: !3613)
!3618 = distinct !DISubprogram(name: "xnmalloc", scope: !274, file: !274, line: 99, type: !3619, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!41, !42, !42}
!3621 = !{!3622, !3623}
!3622 = !DILocalVariable(name: "n", arg: 1, scope: !3618, file: !274, line: 99, type: !42)
!3623 = !DILocalVariable(name: "s", arg: 2, scope: !3618, file: !274, line: 99, type: !42)
!3624 = !DILocation(line: 99, column: 18, scope: !3618)
!3625 = !DILocation(line: 99, column: 28, scope: !3618)
!3626 = !DILocation(line: 101, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3618, file: !274, line: 101, column: 7)
!3628 = !DILocation(line: 101, column: 7, scope: !3618)
!3629 = !DILocation(line: 102, column: 5, scope: !3627)
!3630 = !DILocation(line: 103, column: 21, scope: !3618)
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !3633, line: 39, type: !42)
!3632 = distinct !DISubprogram(name: "xmalloc", scope: !3633, file: !3633, line: 39, type: !3634, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3636)
!3633 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!41, !42}
!3636 = !{!3631, !3637}
!3637 = !DILocalVariable(name: "p", scope: !3632, file: !3633, line: 41, type: !41)
!3638 = !DILocation(line: 39, column: 17, scope: !3632, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 103, column: 10, scope: !3618)
!3640 = !DILocation(line: 41, column: 13, scope: !3632, inlinedAt: !3639)
!3641 = !DILocation(line: 41, column: 9, scope: !3632, inlinedAt: !3639)
!3642 = !DILocation(line: 42, column: 8, scope: !3643, inlinedAt: !3639)
!3643 = distinct !DILexicalBlock(scope: !3632, file: !3633, line: 42, column: 7)
!3644 = !DILocation(line: 42, column: 15, scope: !3643, inlinedAt: !3639)
!3645 = !DILocation(line: 42, column: 10, scope: !3643, inlinedAt: !3639)
!3646 = !DILocation(line: 43, column: 5, scope: !3643, inlinedAt: !3639)
!3647 = !DILocation(line: 103, column: 3, scope: !3618)
!3648 = !DILocation(line: 39, column: 17, scope: !3632)
!3649 = !DILocation(line: 41, column: 13, scope: !3632)
!3650 = !DILocation(line: 41, column: 9, scope: !3632)
!3651 = !DILocation(line: 42, column: 8, scope: !3643)
!3652 = !DILocation(line: 42, column: 15, scope: !3643)
!3653 = !DILocation(line: 42, column: 10, scope: !3643)
!3654 = !DILocation(line: 43, column: 5, scope: !3643)
!3655 = !DILocation(line: 44, column: 3, scope: !3632)
!3656 = distinct !DISubprogram(name: "xnrealloc", scope: !274, file: !274, line: 112, type: !3657, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!41, !41, !42, !42}
!3659 = !{!3660, !3661, !3662}
!3660 = !DILocalVariable(name: "p", arg: 1, scope: !3656, file: !274, line: 112, type: !41)
!3661 = !DILocalVariable(name: "n", arg: 2, scope: !3656, file: !274, line: 112, type: !42)
!3662 = !DILocalVariable(name: "s", arg: 3, scope: !3656, file: !274, line: 112, type: !42)
!3663 = !DILocation(line: 112, column: 18, scope: !3656)
!3664 = !DILocation(line: 112, column: 28, scope: !3656)
!3665 = !DILocation(line: 112, column: 38, scope: !3656)
!3666 = !DILocation(line: 114, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3656, file: !274, line: 114, column: 7)
!3668 = !DILocation(line: 114, column: 7, scope: !3656)
!3669 = !DILocation(line: 115, column: 5, scope: !3667)
!3670 = !DILocation(line: 116, column: 25, scope: !3656)
!3671 = !DILocalVariable(name: "p", arg: 1, scope: !3672, file: !3633, line: 51, type: !41)
!3672 = distinct !DISubprogram(name: "xrealloc", scope: !3633, file: !3633, line: 51, type: !3673, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3675)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!41, !41, !42}
!3675 = !{!3671, !3676}
!3676 = !DILocalVariable(name: "n", arg: 2, scope: !3672, file: !3633, line: 51, type: !42)
!3677 = !DILocation(line: 51, column: 17, scope: !3672, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 116, column: 10, scope: !3656)
!3679 = !DILocation(line: 51, column: 27, scope: !3672, inlinedAt: !3678)
!3680 = !DILocation(line: 53, column: 8, scope: !3681, inlinedAt: !3678)
!3681 = distinct !DILexicalBlock(scope: !3672, file: !3633, line: 53, column: 7)
!3682 = !DILocation(line: 53, column: 13, scope: !3681, inlinedAt: !3678)
!3683 = !DILocation(line: 53, column: 10, scope: !3681, inlinedAt: !3678)
!3684 = !DILocation(line: 57, column: 7, scope: !3685, inlinedAt: !3678)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !3633, line: 54, column: 5)
!3686 = !DILocation(line: 58, column: 7, scope: !3685, inlinedAt: !3678)
!3687 = !DILocation(line: 61, column: 7, scope: !3672, inlinedAt: !3678)
!3688 = !DILocation(line: 62, column: 8, scope: !3689, inlinedAt: !3678)
!3689 = distinct !DILexicalBlock(scope: !3672, file: !3633, line: 62, column: 7)
!3690 = !DILocation(line: 62, column: 13, scope: !3689, inlinedAt: !3678)
!3691 = !DILocation(line: 62, column: 10, scope: !3689, inlinedAt: !3678)
!3692 = !DILocation(line: 63, column: 5, scope: !3689, inlinedAt: !3678)
!3693 = !DILocation(line: 0, scope: !3672, inlinedAt: !3678)
!3694 = !DILocation(line: 116, column: 3, scope: !3656)
!3695 = !DILocation(line: 51, column: 17, scope: !3672)
!3696 = !DILocation(line: 51, column: 27, scope: !3672)
!3697 = !DILocation(line: 53, column: 8, scope: !3681)
!3698 = !DILocation(line: 53, column: 13, scope: !3681)
!3699 = !DILocation(line: 53, column: 10, scope: !3681)
!3700 = !DILocation(line: 57, column: 7, scope: !3685)
!3701 = !DILocation(line: 58, column: 7, scope: !3685)
!3702 = !DILocation(line: 61, column: 7, scope: !3672)
!3703 = !DILocation(line: 62, column: 8, scope: !3689)
!3704 = !DILocation(line: 62, column: 13, scope: !3689)
!3705 = !DILocation(line: 62, column: 10, scope: !3689)
!3706 = !DILocation(line: 63, column: 5, scope: !3689)
!3707 = !DILocation(line: 0, scope: !3672)
!3708 = !DILocation(line: 65, column: 1, scope: !3672)
!3709 = !DILocation(line: 174, column: 19, scope: !275)
!3710 = !DILocation(line: 174, column: 30, scope: !275)
!3711 = !DILocation(line: 174, column: 41, scope: !275)
!3712 = !DILocation(line: 176, column: 14, scope: !275)
!3713 = !DILocation(line: 176, column: 10, scope: !275)
!3714 = !DILocation(line: 178, column: 9, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !275, file: !274, line: 178, column: 7)
!3716 = !DILocation(line: 178, column: 7, scope: !275)
!3717 = !DILocation(line: 180, column: 13, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !274, line: 180, column: 11)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !274, line: 179, column: 5)
!3720 = !DILocation(line: 180, column: 11, scope: !3719)
!3721 = !DILocation(line: 188, column: 30, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3718, file: !274, line: 181, column: 9)
!3723 = !DILocation(line: 189, column: 16, scope: !3722)
!3724 = !DILocation(line: 189, column: 13, scope: !3722)
!3725 = !DILocation(line: 190, column: 9, scope: !3722)
!3726 = !DILocation(line: 0, scope: !3722)
!3727 = !DILocation(line: 191, column: 11, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3719, file: !274, line: 191, column: 11)
!3729 = !DILocation(line: 191, column: 11, scope: !3719)
!3730 = !DILocation(line: 206, column: 7, scope: !275)
!3731 = !DILocation(line: 207, column: 25, scope: !275)
!3732 = !DILocation(line: 51, column: 17, scope: !3672, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 207, column: 10, scope: !275)
!3734 = !DILocation(line: 51, column: 27, scope: !3672, inlinedAt: !3733)
!3735 = !DILocation(line: 53, column: 10, scope: !3681, inlinedAt: !3733)
!3736 = !DILocation(line: 192, column: 9, scope: !3728)
!3737 = !DILocation(line: 200, column: 69, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !274, line: 200, column: 11)
!3739 = distinct !DILexicalBlock(scope: !3715, file: !274, line: 195, column: 5)
!3740 = !DILocation(line: 201, column: 11, scope: !3738)
!3741 = !DILocation(line: 200, column: 11, scope: !3739)
!3742 = !DILocation(line: 202, column: 9, scope: !3738)
!3743 = !DILocation(line: 203, column: 14, scope: !3739)
!3744 = !DILocation(line: 203, column: 18, scope: !3739)
!3745 = !DILocation(line: 203, column: 9, scope: !3739)
!3746 = !DILocation(line: 53, column: 8, scope: !3681, inlinedAt: !3733)
!3747 = !DILocation(line: 57, column: 7, scope: !3685, inlinedAt: !3733)
!3748 = !DILocation(line: 58, column: 7, scope: !3685, inlinedAt: !3733)
!3749 = !DILocation(line: 61, column: 7, scope: !3672, inlinedAt: !3733)
!3750 = !DILocation(line: 62, column: 8, scope: !3689, inlinedAt: !3733)
!3751 = !DILocation(line: 62, column: 13, scope: !3689, inlinedAt: !3733)
!3752 = !DILocation(line: 62, column: 10, scope: !3689, inlinedAt: !3733)
!3753 = !DILocation(line: 63, column: 5, scope: !3689, inlinedAt: !3733)
!3754 = !DILocation(line: 0, scope: !3672, inlinedAt: !3733)
!3755 = !DILocation(line: 207, column: 3, scope: !275)
!3756 = distinct !DISubprogram(name: "xcharalloc", scope: !274, file: !274, line: 216, type: !2665, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3757)
!3757 = !{!3758}
!3758 = !DILocalVariable(name: "n", arg: 1, scope: !3756, file: !274, line: 216, type: !42)
!3759 = !DILocation(line: 216, column: 20, scope: !3756)
!3760 = !DILocation(line: 39, column: 17, scope: !3632, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 218, column: 10, scope: !3756)
!3762 = !DILocation(line: 41, column: 13, scope: !3632, inlinedAt: !3761)
!3763 = !DILocation(line: 41, column: 9, scope: !3632, inlinedAt: !3761)
!3764 = !DILocation(line: 42, column: 8, scope: !3643, inlinedAt: !3761)
!3765 = !DILocation(line: 42, column: 15, scope: !3643, inlinedAt: !3761)
!3766 = !DILocation(line: 42, column: 10, scope: !3643, inlinedAt: !3761)
!3767 = !DILocation(line: 43, column: 5, scope: !3643, inlinedAt: !3761)
!3768 = !DILocation(line: 218, column: 3, scope: !3756)
!3769 = distinct !DISubprogram(name: "x2realloc", scope: !3633, file: !3633, line: 74, type: !3770, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!41, !41, !278}
!3772 = !{!3773, !3774}
!3773 = !DILocalVariable(name: "p", arg: 1, scope: !3769, file: !3633, line: 74, type: !41)
!3774 = !DILocalVariable(name: "pn", arg: 2, scope: !3769, file: !3633, line: 74, type: !278)
!3775 = !DILocation(line: 74, column: 18, scope: !3769)
!3776 = !DILocation(line: 74, column: 29, scope: !3769)
!3777 = !DILocation(line: 174, column: 19, scope: !275, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 76, column: 10, scope: !3769)
!3779 = !DILocation(line: 174, column: 30, scope: !275, inlinedAt: !3778)
!3780 = !DILocation(line: 174, column: 41, scope: !275, inlinedAt: !3778)
!3781 = !DILocation(line: 176, column: 14, scope: !275, inlinedAt: !3778)
!3782 = !DILocation(line: 176, column: 10, scope: !275, inlinedAt: !3778)
!3783 = !DILocation(line: 178, column: 9, scope: !3715, inlinedAt: !3778)
!3784 = !DILocation(line: 178, column: 7, scope: !275, inlinedAt: !3778)
!3785 = !DILocation(line: 180, column: 13, scope: !3718, inlinedAt: !3778)
!3786 = !DILocation(line: 180, column: 11, scope: !3719, inlinedAt: !3778)
!3787 = !DILocation(line: 191, column: 11, scope: !3728, inlinedAt: !3778)
!3788 = !DILocation(line: 191, column: 11, scope: !3719, inlinedAt: !3778)
!3789 = !DILocation(line: 206, column: 7, scope: !275, inlinedAt: !3778)
!3790 = !DILocation(line: 51, column: 17, scope: !3672, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 207, column: 10, scope: !275, inlinedAt: !3778)
!3792 = !DILocation(line: 51, column: 27, scope: !3672, inlinedAt: !3791)
!3793 = !DILocation(line: 53, column: 10, scope: !3681, inlinedAt: !3791)
!3794 = !DILocation(line: 192, column: 9, scope: !3728, inlinedAt: !3778)
!3795 = !DILocation(line: 201, column: 11, scope: !3738, inlinedAt: !3778)
!3796 = !DILocation(line: 200, column: 11, scope: !3739, inlinedAt: !3778)
!3797 = !DILocation(line: 202, column: 9, scope: !3738, inlinedAt: !3778)
!3798 = !DILocation(line: 203, column: 14, scope: !3739, inlinedAt: !3778)
!3799 = !DILocation(line: 203, column: 18, scope: !3739, inlinedAt: !3778)
!3800 = !DILocation(line: 203, column: 9, scope: !3739, inlinedAt: !3778)
!3801 = !DILocation(line: 53, column: 8, scope: !3681, inlinedAt: !3791)
!3802 = !DILocation(line: 57, column: 7, scope: !3685, inlinedAt: !3791)
!3803 = !DILocation(line: 58, column: 7, scope: !3685, inlinedAt: !3791)
!3804 = !DILocation(line: 61, column: 7, scope: !3672, inlinedAt: !3791)
!3805 = !DILocation(line: 62, column: 8, scope: !3689, inlinedAt: !3791)
!3806 = !DILocation(line: 62, column: 13, scope: !3689, inlinedAt: !3791)
!3807 = !DILocation(line: 62, column: 10, scope: !3689, inlinedAt: !3791)
!3808 = !DILocation(line: 63, column: 5, scope: !3689, inlinedAt: !3791)
!3809 = !DILocation(line: 0, scope: !3672, inlinedAt: !3791)
!3810 = !DILocation(line: 76, column: 3, scope: !3769)
!3811 = distinct !DISubprogram(name: "xzalloc", scope: !3633, file: !3633, line: 84, type: !3634, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3812)
!3812 = !{!3813}
!3813 = !DILocalVariable(name: "s", arg: 1, scope: !3811, file: !3633, line: 84, type: !42)
!3814 = !DILocation(line: 84, column: 17, scope: !3811)
!3815 = !DILocation(line: 39, column: 17, scope: !3632, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 86, column: 18, scope: !3811)
!3817 = !DILocation(line: 41, column: 13, scope: !3632, inlinedAt: !3816)
!3818 = !DILocation(line: 41, column: 9, scope: !3632, inlinedAt: !3816)
!3819 = !DILocation(line: 42, column: 8, scope: !3643, inlinedAt: !3816)
!3820 = !DILocation(line: 42, column: 15, scope: !3643, inlinedAt: !3816)
!3821 = !DILocation(line: 42, column: 10, scope: !3643, inlinedAt: !3816)
!3822 = !DILocation(line: 43, column: 5, scope: !3643, inlinedAt: !3816)
!3823 = !DILocation(line: 86, column: 10, scope: !3811)
!3824 = !DILocation(line: 86, column: 3, scope: !3811)
!3825 = distinct !DISubprogram(name: "xcalloc", scope: !3633, file: !3633, line: 93, type: !3619, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3826)
!3826 = !{!3827, !3828, !3829}
!3827 = !DILocalVariable(name: "n", arg: 1, scope: !3825, file: !3633, line: 93, type: !42)
!3828 = !DILocalVariable(name: "s", arg: 2, scope: !3825, file: !3633, line: 93, type: !42)
!3829 = !DILocalVariable(name: "p", scope: !3825, file: !3633, line: 95, type: !41)
!3830 = !DILocation(line: 93, column: 17, scope: !3825)
!3831 = !DILocation(line: 93, column: 27, scope: !3825)
!3832 = !DILocation(line: 100, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3825, file: !3633, line: 100, column: 7)
!3834 = !DILocation(line: 101, column: 7, scope: !3833)
!3835 = !DILocation(line: 101, column: 18, scope: !3833)
!3836 = !DILocation(line: 95, column: 9, scope: !3825)
!3837 = !DILocation(line: 101, column: 16, scope: !3833)
!3838 = !DILocation(line: 100, column: 7, scope: !3825)
!3839 = !DILocation(line: 102, column: 5, scope: !3833)
!3840 = !DILocation(line: 103, column: 3, scope: !3825)
!3841 = distinct !DISubprogram(name: "xmemdup", scope: !3633, file: !3633, line: 111, type: !939, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3842)
!3842 = !{!3843, !3844}
!3843 = !DILocalVariable(name: "p", arg: 1, scope: !3841, file: !3633, line: 111, type: !941)
!3844 = !DILocalVariable(name: "s", arg: 2, scope: !3841, file: !3633, line: 111, type: !42)
!3845 = !DILocation(line: 111, column: 22, scope: !3841)
!3846 = !DILocation(line: 111, column: 32, scope: !3841)
!3847 = !DILocation(line: 39, column: 17, scope: !3632, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 113, column: 18, scope: !3841)
!3849 = !DILocation(line: 41, column: 13, scope: !3632, inlinedAt: !3848)
!3850 = !DILocation(line: 41, column: 9, scope: !3632, inlinedAt: !3848)
!3851 = !DILocation(line: 42, column: 8, scope: !3643, inlinedAt: !3848)
!3852 = !DILocation(line: 42, column: 15, scope: !3643, inlinedAt: !3848)
!3853 = !DILocation(line: 42, column: 10, scope: !3643, inlinedAt: !3848)
!3854 = !DILocation(line: 43, column: 5, scope: !3643, inlinedAt: !3848)
!3855 = !DILocation(line: 113, column: 10, scope: !3841)
!3856 = !DILocation(line: 113, column: 3, scope: !3841)
!3857 = distinct !DISubprogram(name: "xstrdup", scope: !3633, file: !3633, line: 119, type: !2870, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3858)
!3858 = !{!3859}
!3859 = !DILocalVariable(name: "string", arg: 1, scope: !3857, file: !3633, line: 119, type: !48)
!3860 = !DILocation(line: 119, column: 22, scope: !3857)
!3861 = !DILocation(line: 121, column: 27, scope: !3857)
!3862 = !DILocation(line: 121, column: 43, scope: !3857)
!3863 = !DILocation(line: 111, column: 22, scope: !3841, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 121, column: 10, scope: !3857)
!3865 = !DILocation(line: 111, column: 32, scope: !3841, inlinedAt: !3864)
!3866 = !DILocation(line: 39, column: 17, scope: !3632, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 113, column: 18, scope: !3841, inlinedAt: !3864)
!3868 = !DILocation(line: 41, column: 13, scope: !3632, inlinedAt: !3867)
!3869 = !DILocation(line: 41, column: 9, scope: !3632, inlinedAt: !3867)
!3870 = !DILocation(line: 42, column: 8, scope: !3643, inlinedAt: !3867)
!3871 = !DILocation(line: 42, column: 15, scope: !3643, inlinedAt: !3867)
!3872 = !DILocation(line: 42, column: 10, scope: !3643, inlinedAt: !3867)
!3873 = !DILocation(line: 43, column: 5, scope: !3643, inlinedAt: !3867)
!3874 = !DILocation(line: 113, column: 10, scope: !3841, inlinedAt: !3864)
!3875 = !DILocation(line: 121, column: 3, scope: !3857)
!3876 = distinct !DISubprogram(name: "xalloc_die", scope: !3877, file: !3877, line: 32, type: !740, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !287, retainedNodes: !147)
!3877 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3878 = !DILocation(line: 34, column: 10, scope: !3876)
!3879 = !DILocation(line: 34, column: 33, scope: !3876)
!3880 = !DILocation(line: 34, column: 3, scope: !3876)
!3881 = !DILocation(line: 40, column: 3, scope: !3876)
!3882 = distinct !DISubprogram(name: "rpl_calloc", scope: !3883, file: !3883, line: 42, type: !3619, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !3884)
!3883 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DILocalVariable(name: "n", arg: 1, scope: !3882, file: !3883, line: 42, type: !42)
!3886 = !DILocalVariable(name: "s", arg: 2, scope: !3882, file: !3883, line: 42, type: !42)
!3887 = !DILocalVariable(name: "result", scope: !3882, file: !3883, line: 44, type: !41)
!3888 = !DILocalVariable(name: "bytes", scope: !3889, file: !3883, line: 56, type: !42)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !3883, line: 53, column: 5)
!3890 = distinct !DILexicalBlock(scope: !3882, file: !3883, line: 47, column: 7)
!3891 = !DILocation(line: 42, column: 20, scope: !3882)
!3892 = !DILocation(line: 42, column: 30, scope: !3882)
!3893 = !DILocation(line: 47, column: 9, scope: !3890)
!3894 = !DILocation(line: 47, column: 19, scope: !3890)
!3895 = !DILocation(line: 47, column: 14, scope: !3890)
!3896 = !DILocation(line: 56, column: 24, scope: !3889)
!3897 = !DILocation(line: 56, column: 14, scope: !3889)
!3898 = !DILocation(line: 57, column: 17, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3889, file: !3883, line: 57, column: 11)
!3900 = !DILocation(line: 57, column: 21, scope: !3899)
!3901 = !DILocation(line: 57, column: 11, scope: !3889)
!3902 = !DILocation(line: 59, column: 11, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3899, file: !3883, line: 58, column: 9)
!3904 = !DILocation(line: 59, column: 17, scope: !3903)
!3905 = !DILocation(line: 65, column: 12, scope: !3882)
!3906 = !DILocation(line: 44, column: 9, scope: !3882)
!3907 = !DILocation(line: 72, column: 3, scope: !3882)
!3908 = !DILocation(line: 0, scope: !3903)
!3909 = !DILocation(line: 73, column: 1, scope: !3882)
!3910 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3911, file: !3911, line: 385, type: !3912, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3926)
!3911 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!42, !3914, !48, !42, !3915}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1828, line: 6, baseType: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1830, line: 21, baseType: !3918)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 13, size: 64, elements: !3919)
!3919 = !{!3920, !3921}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3918, file: !1830, line: 15, baseType: !6, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3918, file: !1830, line: 20, baseType: !3922, size: 32, offset: 32)
!3922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3918, file: !1830, line: 16, size: 32, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3922, file: !1830, line: 18, baseType: !14, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3922, file: !1830, line: 19, baseType: !1839, size: 32)
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3927 = !DILocalVariable(name: "pwc", arg: 1, scope: !3910, file: !3911, line: 385, type: !3914)
!3928 = !DILocalVariable(name: "s", arg: 2, scope: !3910, file: !3911, line: 385, type: !48)
!3929 = !DILocalVariable(name: "n", arg: 3, scope: !3910, file: !3911, line: 385, type: !42)
!3930 = !DILocalVariable(name: "ps", arg: 4, scope: !3910, file: !3911, line: 385, type: !3915)
!3931 = !DILocalVariable(name: "ret", scope: !3910, file: !3911, line: 387, type: !42)
!3932 = !DILocalVariable(name: "wc", scope: !3910, file: !3911, line: 388, type: !1844)
!3933 = !DILocalVariable(name: "uc", scope: !3934, file: !3911, line: 449, type: !1032)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !3911, line: 448, column: 5)
!3935 = distinct !DILexicalBlock(scope: !3910, file: !3911, line: 447, column: 7)
!3936 = !DILocation(line: 385, column: 23, scope: !3910)
!3937 = !DILocation(line: 385, column: 40, scope: !3910)
!3938 = !DILocation(line: 385, column: 50, scope: !3910)
!3939 = !DILocation(line: 385, column: 64, scope: !3910)
!3940 = !DILocation(line: 388, column: 3, scope: !3910)
!3941 = !DILocation(line: 404, column: 9, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3910, file: !3911, line: 404, column: 7)
!3943 = !DILocation(line: 404, column: 7, scope: !3910)
!3944 = !DILocation(line: 439, column: 9, scope: !3910)
!3945 = !DILocation(line: 387, column: 10, scope: !3910)
!3946 = !DILocation(line: 447, column: 19, scope: !3935)
!3947 = !DILocation(line: 447, column: 31, scope: !3935)
!3948 = !DILocation(line: 447, column: 26, scope: !3935)
!3949 = !DILocation(line: 447, column: 41, scope: !3935)
!3950 = !DILocation(line: 447, column: 7, scope: !3910)
!3951 = !DILocation(line: 449, column: 26, scope: !3934)
!3952 = !DILocation(line: 449, column: 21, scope: !3934)
!3953 = !DILocation(line: 450, column: 14, scope: !3934)
!3954 = !DILocation(line: 450, column: 12, scope: !3934)
!3955 = !DILocation(line: 0, scope: !3934)
!3956 = !DILocation(line: 456, column: 1, scope: !3910)
!3957 = distinct !DISubprogram(name: "close_stream", scope: !3958, file: !3958, line: 56, type: !3959, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3995)
!3958 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!6, !3961}
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1504, line: 7, baseType: !3963)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1506, line: 49, size: 1728, elements: !3964)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3963, file: !1506, line: 51, baseType: !6, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3963, file: !1506, line: 54, baseType: !8, size: 64, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3963, file: !1506, line: 55, baseType: !8, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3963, file: !1506, line: 56, baseType: !8, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3963, file: !1506, line: 57, baseType: !8, size: 64, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3963, file: !1506, line: 58, baseType: !8, size: 64, offset: 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3963, file: !1506, line: 59, baseType: !8, size: 64, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3963, file: !1506, line: 60, baseType: !8, size: 64, offset: 448)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3963, file: !1506, line: 61, baseType: !8, size: 64, offset: 512)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3963, file: !1506, line: 64, baseType: !8, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3963, file: !1506, line: 65, baseType: !8, size: 64, offset: 640)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3963, file: !1506, line: 66, baseType: !8, size: 64, offset: 704)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3963, file: !1506, line: 68, baseType: !1521, size: 64, offset: 768)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3963, file: !1506, line: 70, baseType: !3979, size: 64, offset: 832)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3963, file: !1506, line: 72, baseType: !6, size: 32, offset: 896)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3963, file: !1506, line: 73, baseType: !6, size: 32, offset: 928)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3963, file: !1506, line: 74, baseType: !104, size: 64, offset: 960)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3963, file: !1506, line: 77, baseType: !197, size: 16, offset: 1024)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3963, file: !1506, line: 78, baseType: !1530, size: 8, offset: 1040)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3963, file: !1506, line: 79, baseType: !1532, size: 8, offset: 1048)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3963, file: !1506, line: 81, baseType: !1536, size: 64, offset: 1088)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3963, file: !1506, line: 89, baseType: !1539, size: 64, offset: 1152)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3963, file: !1506, line: 91, baseType: !1541, size: 64, offset: 1216)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3963, file: !1506, line: 92, baseType: !1544, size: 64, offset: 1280)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3963, file: !1506, line: 93, baseType: !3979, size: 64, offset: 1344)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3963, file: !1506, line: 94, baseType: !41, size: 64, offset: 1408)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3963, file: !1506, line: 95, baseType: !42, size: 64, offset: 1472)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3963, file: !1506, line: 96, baseType: !6, size: 32, offset: 1536)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3963, file: !1506, line: 98, baseType: !60, size: 160, offset: 1568)
!3995 = !{!3996, !3997, !3999, !4000}
!3996 = !DILocalVariable(name: "stream", arg: 1, scope: !3957, file: !3958, line: 56, type: !3961)
!3997 = !DILocalVariable(name: "some_pending", scope: !3957, file: !3958, line: 58, type: !3998)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!3999 = !DILocalVariable(name: "prev_fail", scope: !3957, file: !3958, line: 59, type: !3998)
!4000 = !DILocalVariable(name: "fclose_fail", scope: !3957, file: !3958, line: 60, type: !3998)
!4001 = !DILocation(line: 56, column: 21, scope: !3957)
!4002 = !DILocation(line: 58, column: 30, scope: !3957)
!4003 = !DILocalVariable(name: "__stream", arg: 1, scope: !4004, file: !4005, line: 135, type: !3961)
!4004 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4005, file: !4005, line: 135, type: !3959, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !4006)
!4005 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4006 = !{!4003}
!4007 = !DILocation(line: 135, column: 1, scope: !4004, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 59, column: 27, scope: !3957)
!4009 = !DILocation(line: 137, column: 10, scope: !4004, inlinedAt: !4008)
!4010 = !{!4011, !850, i64 0}
!4011 = !{!"_IO_FILE", !850, i64 0, !733, i64 8, !733, i64 16, !733, i64 24, !733, i64 32, !733, i64 40, !733, i64 48, !733, i64 56, !733, i64 64, !733, i64 72, !733, i64 80, !733, i64 88, !733, i64 96, !733, i64 104, !850, i64 112, !850, i64 116, !854, i64 120, !2084, i64 128, !734, i64 130, !734, i64 131, !733, i64 136, !854, i64 144, !733, i64 152, !733, i64 160, !733, i64 168, !733, i64 176, !854, i64 184, !850, i64 192, !734, i64 196}
!4012 = !DILocation(line: 59, column: 43, scope: !3957)
!4013 = !DILocation(line: 60, column: 29, scope: !3957)
!4014 = !DILocation(line: 60, column: 45, scope: !3957)
!4015 = !DILocation(line: 70, column: 17, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3957, file: !3958, line: 70, column: 7)
!4017 = !DILocation(line: 58, column: 50, scope: !3957)
!4018 = !DILocation(line: 70, column: 33, scope: !4016)
!4019 = !DILocation(line: 70, column: 53, scope: !4016)
!4020 = !DILocation(line: 70, column: 59, scope: !4016)
!4021 = !DILocation(line: 70, column: 7, scope: !3957)
!4022 = !DILocation(line: 72, column: 11, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4016, file: !3958, line: 71, column: 5)
!4024 = !DILocation(line: 73, column: 9, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4023, file: !3958, line: 72, column: 11)
!4026 = !DILocation(line: 73, column: 15, scope: !4025)
!4027 = !DILocation(line: 0, scope: !3957)
!4028 = !DILocation(line: 78, column: 1, scope: !3957)
!4029 = distinct !DISubprogram(name: "hard_locale", scope: !4030, file: !4030, line: 38, type: !4031, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !4033)
!4030 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!74, !6}
!4033 = !{!4034, !4035, !4036}
!4034 = !DILocalVariable(name: "category", arg: 1, scope: !4029, file: !4030, line: 38, type: !6)
!4035 = !DILocalVariable(name: "hard", scope: !4029, file: !4030, line: 40, type: !74)
!4036 = !DILocalVariable(name: "p", scope: !4029, file: !4030, line: 41, type: !48)
!4037 = !DILocation(line: 38, column: 18, scope: !4029)
!4038 = !DILocation(line: 40, column: 8, scope: !4029)
!4039 = !DILocation(line: 41, column: 19, scope: !4029)
!4040 = !DILocation(line: 41, column: 15, scope: !4029)
!4041 = !DILocation(line: 43, column: 7, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4029, file: !4030, line: 43, column: 7)
!4043 = !DILocation(line: 43, column: 7, scope: !4029)
!4044 = !DILocation(line: 47, column: 15, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !4030, line: 47, column: 15)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !4030, line: 46, column: 9)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !4030, line: 45, column: 11)
!4048 = distinct !DILexicalBlock(scope: !4042, file: !4030, line: 44, column: 5)
!4049 = !DILocation(line: 47, column: 31, scope: !4045)
!4050 = !DILocation(line: 47, column: 36, scope: !4045)
!4051 = !DILocation(line: 47, column: 39, scope: !4045)
!4052 = !DILocation(line: 47, column: 59, scope: !4045)
!4053 = !DILocation(line: 47, column: 15, scope: !4046)
!4054 = !DILocation(line: 48, column: 13, scope: !4045)
!4055 = !DILocation(line: 71, column: 3, scope: !4029)
!4056 = distinct !DISubprogram(name: "locale_charset", scope: !4057, file: !4057, line: 687, type: !4058, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !298, retainedNodes: !4060)
!4057 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!48}
!4060 = !{!4061}
!4061 = !DILocalVariable(name: "codeset", scope: !4056, file: !4057, line: 689, type: !48)
!4062 = !DILocation(line: 696, column: 13, scope: !4056)
!4063 = !DILocation(line: 689, column: 15, scope: !4056)
!4064 = !DILocation(line: 754, column: 15, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4056, file: !4057, line: 754, column: 7)
!4066 = !DILocation(line: 754, column: 7, scope: !4056)
!4067 = !DILocation(line: 907, column: 13, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !4057, line: 907, column: 13)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !4057, line: 897, column: 7)
!4070 = distinct !DILexicalBlock(scope: !4056, file: !4057, line: 856, column: 3)
!4071 = !DILocation(line: 907, column: 24, scope: !4068)
!4072 = !DILocation(line: 907, column: 13, scope: !4069)
!4073 = !DILocation(line: 995, column: 3, scope: !4056)
!4074 = distinct !DISubprogram(name: "rpl_fclose", scope: !4075, file: !4075, line: 58, type: !4076, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !687, retainedNodes: !4112)
!4075 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!6, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1504, line: 7, baseType: !4080)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1506, line: 49, size: 1728, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4080, file: !1506, line: 51, baseType: !6, size: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4080, file: !1506, line: 54, baseType: !8, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4080, file: !1506, line: 55, baseType: !8, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4080, file: !1506, line: 56, baseType: !8, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4080, file: !1506, line: 57, baseType: !8, size: 64, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4080, file: !1506, line: 58, baseType: !8, size: 64, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4080, file: !1506, line: 59, baseType: !8, size: 64, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4080, file: !1506, line: 60, baseType: !8, size: 64, offset: 448)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4080, file: !1506, line: 61, baseType: !8, size: 64, offset: 512)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4080, file: !1506, line: 64, baseType: !8, size: 64, offset: 576)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4080, file: !1506, line: 65, baseType: !8, size: 64, offset: 640)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4080, file: !1506, line: 66, baseType: !8, size: 64, offset: 704)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4080, file: !1506, line: 68, baseType: !1521, size: 64, offset: 768)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4080, file: !1506, line: 70, baseType: !4096, size: 64, offset: 832)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4080, file: !1506, line: 72, baseType: !6, size: 32, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4080, file: !1506, line: 73, baseType: !6, size: 32, offset: 928)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4080, file: !1506, line: 74, baseType: !104, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4080, file: !1506, line: 77, baseType: !197, size: 16, offset: 1024)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4080, file: !1506, line: 78, baseType: !1530, size: 8, offset: 1040)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4080, file: !1506, line: 79, baseType: !1532, size: 8, offset: 1048)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4080, file: !1506, line: 81, baseType: !1536, size: 64, offset: 1088)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4080, file: !1506, line: 89, baseType: !1539, size: 64, offset: 1152)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4080, file: !1506, line: 91, baseType: !1541, size: 64, offset: 1216)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4080, file: !1506, line: 92, baseType: !1544, size: 64, offset: 1280)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4080, file: !1506, line: 93, baseType: !4096, size: 64, offset: 1344)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4080, file: !1506, line: 94, baseType: !41, size: 64, offset: 1408)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4080, file: !1506, line: 95, baseType: !42, size: 64, offset: 1472)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4080, file: !1506, line: 96, baseType: !6, size: 32, offset: 1536)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4080, file: !1506, line: 98, baseType: !60, size: 160, offset: 1568)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "fp", arg: 1, scope: !4074, file: !4075, line: 58, type: !4078)
!4114 = !DILocalVariable(name: "saved_errno", scope: !4074, file: !4075, line: 60, type: !6)
!4115 = !DILocalVariable(name: "fd", scope: !4074, file: !4075, line: 61, type: !6)
!4116 = !DILocalVariable(name: "result", scope: !4074, file: !4075, line: 62, type: !6)
!4117 = !DILocation(line: 58, column: 19, scope: !4074)
!4118 = !DILocation(line: 60, column: 7, scope: !4074)
!4119 = !DILocation(line: 62, column: 7, scope: !4074)
!4120 = !DILocation(line: 65, column: 8, scope: !4074)
!4121 = !DILocation(line: 61, column: 7, scope: !4074)
!4122 = !DILocation(line: 66, column: 10, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4074, file: !4075, line: 66, column: 7)
!4124 = !DILocation(line: 66, column: 7, scope: !4074)
!4125 = !DILocation(line: 67, column: 12, scope: !4123)
!4126 = !DILocation(line: 67, column: 5, scope: !4123)
!4127 = !DILocation(line: 72, column: 9, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4074, file: !4075, line: 72, column: 7)
!4129 = !DILocation(line: 72, column: 23, scope: !4128)
!4130 = !DILocation(line: 72, column: 33, scope: !4128)
!4131 = !DILocation(line: 72, column: 26, scope: !4128)
!4132 = !DILocation(line: 72, column: 59, scope: !4128)
!4133 = !DILocation(line: 73, column: 7, scope: !4128)
!4134 = !DILocation(line: 73, column: 10, scope: !4128)
!4135 = !DILocation(line: 72, column: 7, scope: !4074)
!4136 = !DILocation(line: 100, column: 12, scope: !4074)
!4137 = !DILocation(line: 105, column: 7, scope: !4074)
!4138 = !DILocation(line: 74, column: 19, scope: !4128)
!4139 = !DILocation(line: 105, column: 19, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4074, file: !4075, line: 105, column: 7)
!4141 = !DILocation(line: 107, column: 13, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4140, file: !4075, line: 106, column: 5)
!4143 = !DILocation(line: 109, column: 5, scope: !4142)
!4144 = !DILocation(line: 0, scope: !4074)
!4145 = !DILocation(line: 112, column: 1, scope: !4074)
!4146 = distinct !DISubprogram(name: "rpl_fflush", scope: !4147, file: !4147, line: 129, type: !4148, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !689, retainedNodes: !4184)
!4147 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!6, !4150}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1504, line: 7, baseType: !4152)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1506, line: 49, size: 1728, elements: !4153)
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4152, file: !1506, line: 51, baseType: !6, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4152, file: !1506, line: 54, baseType: !8, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4152, file: !1506, line: 55, baseType: !8, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4152, file: !1506, line: 56, baseType: !8, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4152, file: !1506, line: 57, baseType: !8, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4152, file: !1506, line: 58, baseType: !8, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4152, file: !1506, line: 59, baseType: !8, size: 64, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4152, file: !1506, line: 60, baseType: !8, size: 64, offset: 448)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4152, file: !1506, line: 61, baseType: !8, size: 64, offset: 512)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4152, file: !1506, line: 64, baseType: !8, size: 64, offset: 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4152, file: !1506, line: 65, baseType: !8, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4152, file: !1506, line: 66, baseType: !8, size: 64, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4152, file: !1506, line: 68, baseType: !1521, size: 64, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4152, file: !1506, line: 70, baseType: !4168, size: 64, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4152, file: !1506, line: 72, baseType: !6, size: 32, offset: 896)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4152, file: !1506, line: 73, baseType: !6, size: 32, offset: 928)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4152, file: !1506, line: 74, baseType: !104, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4152, file: !1506, line: 77, baseType: !197, size: 16, offset: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4152, file: !1506, line: 78, baseType: !1530, size: 8, offset: 1040)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4152, file: !1506, line: 79, baseType: !1532, size: 8, offset: 1048)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4152, file: !1506, line: 81, baseType: !1536, size: 64, offset: 1088)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4152, file: !1506, line: 89, baseType: !1539, size: 64, offset: 1152)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4152, file: !1506, line: 91, baseType: !1541, size: 64, offset: 1216)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4152, file: !1506, line: 92, baseType: !1544, size: 64, offset: 1280)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4152, file: !1506, line: 93, baseType: !4168, size: 64, offset: 1344)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4152, file: !1506, line: 94, baseType: !41, size: 64, offset: 1408)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4152, file: !1506, line: 95, baseType: !42, size: 64, offset: 1472)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4152, file: !1506, line: 96, baseType: !6, size: 32, offset: 1536)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4152, file: !1506, line: 98, baseType: !60, size: 160, offset: 1568)
!4184 = !{!4185}
!4185 = !DILocalVariable(name: "stream", arg: 1, scope: !4146, file: !4147, line: 129, type: !4150)
!4186 = !DILocation(line: 129, column: 19, scope: !4146)
!4187 = !DILocation(line: 150, column: 14, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4146, file: !4147, line: 150, column: 7)
!4189 = !DILocation(line: 150, column: 22, scope: !4188)
!4190 = !DILocation(line: 150, column: 27, scope: !4188)
!4191 = !DILocation(line: 150, column: 7, scope: !4146)
!4192 = !DILocation(line: 151, column: 12, scope: !4188)
!4193 = !DILocation(line: 151, column: 5, scope: !4188)
!4194 = !DILocalVariable(name: "fp", arg: 1, scope: !4195, file: !4147, line: 41, type: !4150)
!4195 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4147, file: !4147, line: 41, type: !4196, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !689, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !4150}
!4198 = !{!4194}
!4199 = !DILocation(line: 41, column: 48, scope: !4195, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 156, column: 3, scope: !4146)
!4201 = !DILocation(line: 43, column: 11, scope: !4202, inlinedAt: !4200)
!4202 = distinct !DILexicalBlock(scope: !4195, file: !4147, line: 43, column: 7)
!4203 = !DILocation(line: 43, column: 18, scope: !4202, inlinedAt: !4200)
!4204 = !DILocation(line: 43, column: 7, scope: !4195, inlinedAt: !4200)
!4205 = !DILocation(line: 45, column: 5, scope: !4202, inlinedAt: !4200)
!4206 = !DILocation(line: 158, column: 10, scope: !4146)
!4207 = !DILocation(line: 158, column: 3, scope: !4146)
!4208 = !DILocation(line: 0, scope: !4146)
!4209 = !DILocation(line: 232, column: 1, scope: !4146)
!4210 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4211, file: !4211, line: 28, type: !4212, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !691, retainedNodes: !4248)
!4211 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!6, !4214, !1483, !6}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1504, line: 7, baseType: !4216)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1506, line: 49, size: 1728, elements: !4217)
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4216, file: !1506, line: 51, baseType: !6, size: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4216, file: !1506, line: 54, baseType: !8, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4216, file: !1506, line: 55, baseType: !8, size: 64, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4216, file: !1506, line: 56, baseType: !8, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4216, file: !1506, line: 57, baseType: !8, size: 64, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4216, file: !1506, line: 58, baseType: !8, size: 64, offset: 320)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4216, file: !1506, line: 59, baseType: !8, size: 64, offset: 384)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4216, file: !1506, line: 60, baseType: !8, size: 64, offset: 448)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4216, file: !1506, line: 61, baseType: !8, size: 64, offset: 512)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4216, file: !1506, line: 64, baseType: !8, size: 64, offset: 576)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4216, file: !1506, line: 65, baseType: !8, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4216, file: !1506, line: 66, baseType: !8, size: 64, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4216, file: !1506, line: 68, baseType: !1521, size: 64, offset: 768)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4216, file: !1506, line: 70, baseType: !4232, size: 64, offset: 832)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4216, file: !1506, line: 72, baseType: !6, size: 32, offset: 896)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4216, file: !1506, line: 73, baseType: !6, size: 32, offset: 928)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4216, file: !1506, line: 74, baseType: !104, size: 64, offset: 960)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4216, file: !1506, line: 77, baseType: !197, size: 16, offset: 1024)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4216, file: !1506, line: 78, baseType: !1530, size: 8, offset: 1040)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4216, file: !1506, line: 79, baseType: !1532, size: 8, offset: 1048)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4216, file: !1506, line: 81, baseType: !1536, size: 64, offset: 1088)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4216, file: !1506, line: 89, baseType: !1539, size: 64, offset: 1152)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4216, file: !1506, line: 91, baseType: !1541, size: 64, offset: 1216)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4216, file: !1506, line: 92, baseType: !1544, size: 64, offset: 1280)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4216, file: !1506, line: 93, baseType: !4232, size: 64, offset: 1344)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4216, file: !1506, line: 94, baseType: !41, size: 64, offset: 1408)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4216, file: !1506, line: 95, baseType: !42, size: 64, offset: 1472)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4216, file: !1506, line: 96, baseType: !6, size: 32, offset: 1536)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4216, file: !1506, line: 98, baseType: !60, size: 160, offset: 1568)
!4248 = !{!4249, !4250, !4251, !4252}
!4249 = !DILocalVariable(name: "fp", arg: 1, scope: !4210, file: !4211, line: 28, type: !4214)
!4250 = !DILocalVariable(name: "offset", arg: 2, scope: !4210, file: !4211, line: 28, type: !1483)
!4251 = !DILocalVariable(name: "whence", arg: 3, scope: !4210, file: !4211, line: 28, type: !6)
!4252 = !DILocalVariable(name: "pos", scope: !4253, file: !4211, line: 117, type: !1483)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !4211, line: 113, column: 5)
!4254 = distinct !DILexicalBlock(scope: !4210, file: !4211, line: 52, column: 7)
!4255 = !DILocation(line: 28, column: 15, scope: !4210)
!4256 = !DILocation(line: 28, column: 25, scope: !4210)
!4257 = !DILocation(line: 28, column: 37, scope: !4210)
!4258 = !DILocation(line: 52, column: 11, scope: !4254)
!4259 = !{!4011, !733, i64 16}
!4260 = !DILocation(line: 52, column: 31, scope: !4254)
!4261 = !{!4011, !733, i64 8}
!4262 = !DILocation(line: 52, column: 24, scope: !4254)
!4263 = !DILocation(line: 53, column: 7, scope: !4254)
!4264 = !DILocation(line: 53, column: 14, scope: !4254)
!4265 = !{!4011, !733, i64 40}
!4266 = !DILocation(line: 53, column: 35, scope: !4254)
!4267 = !{!4011, !733, i64 32}
!4268 = !DILocation(line: 53, column: 28, scope: !4254)
!4269 = !DILocation(line: 54, column: 7, scope: !4254)
!4270 = !DILocation(line: 54, column: 14, scope: !4254)
!4271 = !{!4011, !733, i64 72}
!4272 = !DILocation(line: 54, column: 28, scope: !4254)
!4273 = !DILocation(line: 52, column: 7, scope: !4210)
!4274 = !DILocation(line: 117, column: 26, scope: !4253)
!4275 = !DILocation(line: 117, column: 19, scope: !4253)
!4276 = !DILocation(line: 117, column: 13, scope: !4253)
!4277 = !DILocation(line: 118, column: 15, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4253, file: !4211, line: 118, column: 11)
!4279 = !DILocation(line: 118, column: 11, scope: !4253)
!4280 = !DILocation(line: 129, column: 11, scope: !4253)
!4281 = !DILocation(line: 129, column: 18, scope: !4253)
!4282 = !DILocation(line: 130, column: 11, scope: !4253)
!4283 = !DILocation(line: 130, column: 19, scope: !4253)
!4284 = !{!4011, !854, i64 144}
!4285 = !DILocation(line: 161, column: 7, scope: !4253)
!4286 = !DILocation(line: 163, column: 10, scope: !4210)
!4287 = !DILocation(line: 163, column: 3, scope: !4210)
!4288 = !DILocation(line: 0, scope: !4210)
!4289 = !DILocation(line: 164, column: 1, scope: !4210)
