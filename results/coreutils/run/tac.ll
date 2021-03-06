; ModuleID = 'coreutils-8.30/src/tac.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.re_registers = type { i32, i32*, i32* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Write each FILE to standard output, last line first.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [222 x i8] c"  -b, --before             attach the separator before instead of after\0A  -r, --regex              interpret the separator as a regular expression\0A  -s, --separator=STRING   use STRING as the separator instead of newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tac\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@separator = internal unnamed_addr global i8* null, align 8, !dbg !0
@sentinel_length = internal unnamed_addr global i64 0, align 8, !dbg !56
@separator_ends_record = internal unnamed_addr global i1 false, align 1, !dbg !209
@.str.12 = private unnamed_addr constant [5 x i8] c"brs:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !96
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"Jay Lepreau\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"separator cannot be empty\00", align 1
@compiled_separator = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !66
@compiled_separator_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !91
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@match_length = internal unnamed_addr global i64 0, align 8, !dbg !58
@read_size = internal unnamed_addr global i64 0, align 8, !dbg !62
@G_buffer_size = internal unnamed_addr global i64 0, align 8, !dbg !64
@G_buffer = internal unnamed_addr global i8* null, align 8, !dbg !60
@optind = external local_unnamed_addr global i32, align 4
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16, !dbg !32
@output.bytes_in_buffer = internal unnamed_addr global i64 0, align 8, !dbg !205
@output.buffer = internal global [8192 x i8] zeroinitializer, align 16, !dbg !192
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !210
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"failed to open %s for reading\00", align 1
@temp_stream.tempfile = internal unnamed_addr global i8* null, align 8, !dbg !110
@.str.44 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"tacXXXXXX\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"failed to create temporary file in %s\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@temp_stream.tmp_fp = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !180
@.str.50 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"%s: write error\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%s: seek failed\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"record too large\00", align 1
@regs = internal global %struct.re_registers zeroinitializer, align 8, !dbg !182
@.str.54 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !211
@.str.47 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !217
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !222
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.56 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !225
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !232
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !239
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !266
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !273
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !285
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !289
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !296
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !287
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !298
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.100 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.101 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.114 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.115 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.116 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.117 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.118 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.119 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !303
@.str.1.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !312

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !806 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !811, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 %0, metadata !810, metadata !DIExpression()), !dbg !834
  %3 = icmp eq i32 %0, 0, !dbg !835
  br i1 %3, label %9, label %4, !dbg !836

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !837, !tbaa !839
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !837
  %7 = load i8*, i8** @program_name, align 8, !dbg !837, !tbaa !839
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !837
  br label %66, !dbg !837

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !843
  %11 = load i8*, i8** @program_name, align 8, !dbg !843, !tbaa !839
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !843
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !844
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !839
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !844
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !845
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !845, !tbaa !839
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #11, !dbg !845
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !850
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !850, !tbaa !839
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #11, !dbg !850
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !853
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !853, !tbaa !839
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !853
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !854
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !854, !tbaa !839
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !854
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !855
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !855, !tbaa !839
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !855
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #11, !dbg !856
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !830
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !857
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !819, metadata !DIExpression()) #11, !dbg !858
  br label %33, !dbg !859

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !819, metadata !DIExpression()) #11, !dbg !858
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #14, !dbg !859
  %37 = icmp eq i32 %36, 0, !dbg !859
  br i1 %37, label %43, label %38, !dbg !860

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !861
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !819, metadata !DIExpression()) #11, !dbg !858
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !862
  %41 = load i8*, i8** %40, align 8, !dbg !862, !tbaa !863
  %42 = icmp eq i8* %41, null, !dbg !865
  br i1 %42, label %43, label %33, !dbg !866, !llvm.loop !867

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !819, metadata !DIExpression()) #11, !dbg !858
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !819, metadata !DIExpression()) #11, !dbg !858
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !870
  %46 = load i8*, i8** %45, align 8, !dbg !870, !tbaa !872
  %47 = icmp eq i8* %46, null, !dbg !873
  %48 = select i1 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !874
  call void @llvm.dbg.value(metadata i8* %48, metadata !818, metadata !DIExpression()) #11, !dbg !875
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !876
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !876
  %51 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !877
  call void @llvm.dbg.value(metadata i8* %51, metadata !826, metadata !DIExpression()) #11, !dbg !878
  %52 = icmp eq i8* %51, null, !dbg !879
  br i1 %52, label %59, label %53, !dbg !881

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #14, !dbg !882
  %55 = icmp eq i32 %54, 0, !dbg !882
  br i1 %55, label %59, label %56, !dbg !883

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !884
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !884
  br label %59, !dbg !886

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !887
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !887
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !888
  %63 = icmp eq i8* %48, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), !dbg !888
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !888
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #11, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #11, !dbg !889
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #15, !dbg !890
  unreachable, !dbg !890
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !34 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !40, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8** %1, metadata !41, metadata !DIExpression()), !dbg !892
  %3 = load i8*, i8** %1, align 8, !dbg !893, !tbaa !839
  tail call void @set_program_name(i8* %3) #11, !dbg !894
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !895
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !896
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !897
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !898
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** @separator, align 8, !dbg !899, !tbaa !839
  store i64 1, i64* @sentinel_length, align 8, !dbg !900, !tbaa !901
  store i1 true, i1* @separator_ends_record, align 1
  br label %8, !dbg !903

; <label>:8:                                      ; preds = %14, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !904
  call void @llvm.dbg.value(metadata i32 %9, metadata !43, metadata !DIExpression()), !dbg !905
  switch i32 %9, label %19 [
    i32 -1, label %20
    i32 98, label %10
    i32 114, label %11
    i32 115, label %12
    i32 -130, label %15
    i32 -131, label %16
  ], !dbg !903

; <label>:10:                                     ; preds = %8
  store i1 false, i1* @separator_ends_record, align 1
  br label %14, !dbg !906

; <label>:11:                                     ; preds = %8
  store i64 0, i64* @sentinel_length, align 8, !dbg !909, !tbaa !901
  br label %14, !dbg !910

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !911, !tbaa !839
  store i64 %13, i64* bitcast (i8** @separator to i64*), align 8, !dbg !912, !tbaa !839
  br label %14, !dbg !913

; <label>:14:                                     ; preds = %12, %11, %10
  br label %8, !dbg !904, !llvm.loop !914

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !916
  unreachable, !dbg !916

; <label>:16:                                     ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !917, !tbaa !839
  %18 = load i8*, i8** @Version, align 8, !dbg !917, !tbaa !839
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #11, !dbg !917
  tail call void @exit(i32 0) #15, !dbg !917
  unreachable, !dbg !917

; <label>:19:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !918
  unreachable, !dbg !918

; <label>:20:                                     ; preds = %8
  %21 = load i64, i64* @sentinel_length, align 8, !dbg !919, !tbaa !901
  %22 = icmp eq i64 %21, 0, !dbg !921
  %23 = load i8*, i8** @separator, align 8, !dbg !922, !tbaa !839
  %24 = load i8, i8* %23, align 1, !dbg !922, !tbaa !923
  %25 = icmp eq i8 %24, 0, !dbg !922
  br i1 %22, label %26, label %36, !dbg !924

; <label>:26:                                     ; preds = %20
  br i1 %25, label %27, label %29, !dbg !925

; <label>:27:                                     ; preds = %26
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !927
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %28) #11, !dbg !927
  unreachable, !dbg !927

; <label>:29:                                     ; preds = %26
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.re_pattern_buffer* @compiled_separator to i8*), i8 0, i64 16, i1 false), !dbg !929
  store <2 x i8*> <i8* getelementptr inbounds ([256 x i8], [256 x i8]* @compiled_separator_fastmap, i64 0, i64 0), i8* null>, <2 x i8*>* bitcast (i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @compiled_separator, i64 0, i32 4) to <2 x i8*>*), align 8, !dbg !930, !tbaa !839
  %30 = tail call i64 @strlen(i8* %23) #14, !dbg !931
  %31 = tail call i8* @re_compile_pattern(i8* %23, i64 %30, %struct.re_pattern_buffer* nonnull @compiled_separator) #11, !dbg !932
  call void @llvm.dbg.value(metadata i8* %31, metadata !42, metadata !DIExpression()), !dbg !933
  %32 = icmp eq i8* %31, null, !dbg !934
  br i1 %32, label %33, label %35, !dbg !936

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* @sentinel_length, align 8, !dbg !937, !tbaa !901
  br label %41, !dbg !936

; <label>:35:                                     ; preds = %29
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* nonnull %31) #11, !dbg !938
  unreachable, !dbg !938

; <label>:36:                                     ; preds = %20
  br i1 %25, label %39, label %37, !dbg !939

; <label>:37:                                     ; preds = %36
  %38 = tail call i64 @strlen(i8* %23) #14, !dbg !940
  br label %39, !dbg !939

; <label>:39:                                     ; preds = %36, %37
  %40 = phi i64 [ %38, %37 ], [ 1, %36 ], !dbg !939
  store i64 %40, i64* @sentinel_length, align 8, !dbg !941, !tbaa !901
  store i64 %40, i64* @match_length, align 8, !dbg !942, !tbaa !901
  br label %41

; <label>:41:                                     ; preds = %33, %39
  %42 = phi i64 [ %34, %33 ], [ %40, %39 ], !dbg !937
  store i64 8192, i64* @read_size, align 8, !dbg !943, !tbaa !901
  %43 = icmp ult i64 %42, 4096, !dbg !945
  br i1 %43, label %53, label %44, !dbg !946

; <label>:44:                                     ; preds = %41, %48
  %45 = phi i64 [ %49, %48 ], [ 8192, %41 ]
  %46 = icmp slt i64 %45, 0, !dbg !947
  br i1 %46, label %47, label %48, !dbg !949

; <label>:47:                                     ; preds = %44
  store i64 %45, i64* @read_size, align 8, !dbg !943, !tbaa !901
  tail call void @xalloc_die() #15, !dbg !950
  unreachable, !dbg !950

; <label>:48:                                     ; preds = %44
  %49 = shl i64 %45, 1, !dbg !951
  %50 = and i64 %45, 9223372036854775806, !dbg !952
  %51 = icmp ult i64 %42, %50, !dbg !945
  br i1 %51, label %52, label %44, !dbg !946, !llvm.loop !953

; <label>:52:                                     ; preds = %48
  store i64 %49, i64* @read_size, align 8, !dbg !943, !tbaa !901
  br label %53, !dbg !946

; <label>:53:                                     ; preds = %52, %41
  %54 = phi i64 [ %49, %52 ], [ 8192, %41 ]
  %55 = or i64 %54, 1, !dbg !955
  %56 = add i64 %55, %42, !dbg !956
  call void @llvm.dbg.value(metadata i64 %56, metadata !46, metadata !DIExpression()), !dbg !957
  %57 = shl i64 %56, 1, !dbg !958
  store i64 %57, i64* @G_buffer_size, align 8, !dbg !959, !tbaa !901
  %58 = icmp ult i64 %54, %56, !dbg !960
  %59 = icmp ult i64 %56, %57, !dbg !962
  %60 = and i1 %58, %59, !dbg !963
  br i1 %60, label %62, label %61, !dbg !963

; <label>:61:                                     ; preds = %53
  tail call void @xalloc_die() #15, !dbg !964
  unreachable, !dbg !964

; <label>:62:                                     ; preds = %53
  %63 = tail call noalias i8* @xmalloc(i64 %57) #11, !dbg !965
  store i8* %63, i8** @G_buffer, align 8, !dbg !966, !tbaa !839
  %64 = load i64, i64* @sentinel_length, align 8, !dbg !967, !tbaa !901
  %65 = icmp eq i64 %64, 0, !dbg !967
  br i1 %65, label %69, label %66, !dbg !969

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** @separator, align 8, !dbg !970, !tbaa !839
  %68 = add i64 %64, 1, !dbg !972
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %63, i8* align 1 %67, i64 %68, i1 false), !dbg !973
  br label %69, !dbg !974

; <label>:69:                                     ; preds = %62, %66
  %70 = phi i64 [ %64, %66 ], [ 1, %62 ]
  %71 = getelementptr inbounds i8, i8* %63, i64 %70, !dbg !975
  store i8* %71, i8** @G_buffer, align 8, !dbg !975, !tbaa !839
  %72 = load i32, i32* @optind, align 4, !dbg !976, !tbaa !977
  %73 = icmp slt i32 %72, %0, !dbg !979
  %74 = sext i32 %72 to i64, !dbg !980
  %75 = getelementptr inbounds i8*, i8** %1, i64 %74, !dbg !980
  %76 = select i1 %73, i8** %75, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !976
  call void @llvm.dbg.value(metadata i8** %76, metadata !47, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8 1, metadata !44, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i64 0, metadata !48, metadata !DIExpression()), !dbg !983
  %77 = load i8*, i8** %76, align 8, !dbg !984, !tbaa !839
  %78 = icmp eq i8* %77, null, !dbg !986
  br i1 %78, label %79, label %85, !dbg !986

; <label>:79:                                     ; preds = %208, %69
  %80 = phi i8 [ 1, %69 ], [ %211, %208 ], !dbg !987
  call void @llvm.dbg.value(metadata i8 %80, metadata !44, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* null, metadata !198, metadata !DIExpression()) #11, !dbg !988
  call void @llvm.dbg.value(metadata i8* null, metadata !199, metadata !DIExpression()) #11, !dbg !990
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression()) #11, !dbg !991
  %81 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !992, !tbaa !901
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !993, !tbaa !839
  %83 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %81, %struct._IO_FILE* %82) #11, !dbg !993
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !996, !tbaa !901
  %84 = load i1, i1* @have_read_stdin, align 1
  br i1 %84, label %216, label %222, !dbg !997

; <label>:85:                                     ; preds = %69, %208
  %86 = phi i8* [ %214, %208 ], [ %77, %69 ]
  %87 = phi i64 [ %212, %208 ], [ 0, %69 ]
  %88 = phi i8 [ %211, %208 ], [ 1, %69 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !48, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8 %88, metadata !44, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %86, metadata !999, metadata !DIExpression()) #11, !dbg !1010
  %89 = tail call i32 @strcmp(i8* nonnull %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !1012
  %90 = icmp eq i32 %89, 0, !dbg !1012
  br i1 %90, label %91, label %93, !dbg !1013

; <label>:91:                                     ; preds = %85
  store i1 true, i1* @have_read_stdin, align 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1008, metadata !DIExpression()) #11, !dbg !1014
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %92, metadata !999, metadata !DIExpression()) #11, !dbg !1010
  br label %101, !dbg !1018

; <label>:93:                                     ; preds = %85
  %94 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %86, i32 0) #11, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %94, metadata !1008, metadata !DIExpression()) #11, !dbg !1014
  %95 = icmp slt i32 %94, 0, !dbg !1021
  br i1 %95, label %96, label %101, !dbg !1023

; <label>:96:                                     ; preds = %93
  %97 = tail call i32* @__errno_location() #17, !dbg !1024
  %98 = load i32, i32* %97, align 4, !dbg !1024, !tbaa !977
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1026
  %100 = tail call i8* @quotearg_style(i32 4, i8* nonnull %86) #11, !dbg !1027
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %98, i8* %99, i8* %100) #11, !dbg !1028
  br label %208, !dbg !1029

; <label>:101:                                    ; preds = %93, %91
  %102 = phi i8* [ %92, %91 ], [ %86, %93 ]
  %103 = phi i32 [ 0, %91 ], [ %94, %93 ], !dbg !1030
  call void @llvm.dbg.value(metadata i32 %103, metadata !1008, metadata !DIExpression()) #11, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %102, metadata !999, metadata !DIExpression()) #11, !dbg !1010
  %104 = tail call i64 @lseek(i32 %103, i64 0, i32 2) #11, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %104, metadata !1005, metadata !DIExpression()) #11, !dbg !1032
  %105 = icmp slt i64 %104, 0, !dbg !1033
  br i1 %105, label %109, label %106, !dbg !1034

; <label>:106:                                    ; preds = %101
  %107 = tail call i32 @isatty(i32 %103) #11, !dbg !1035
  %108 = icmp eq i32 %107, 0, !dbg !1035
  br i1 %108, label %196, label %109, !dbg !1036

; <label>:109:                                    ; preds = %106, %101
  call void @llvm.dbg.value(metadata i32 %103, metadata !1037, metadata !DIExpression()) #11, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %102, metadata !1042, metadata !DIExpression()) #11, !dbg !1049
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !1043, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1050
  call void @llvm.dbg.value(metadata i8** undef, metadata !1044, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1051
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !1052, metadata !DIExpression()) #11, !dbg !1068
  call void @llvm.dbg.value(metadata i8** undef, metadata !1057, metadata !DIExpression()) #11, !dbg !1070
  call void @llvm.dbg.value(metadata i32 %103, metadata !1058, metadata !DIExpression()) #11, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %102, metadata !1059, metadata !DIExpression()) #11, !dbg !1072
  call void @llvm.dbg.value(metadata i64 0, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !1060, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1074
  call void @llvm.dbg.value(metadata i8** undef, metadata !1061, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1075
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !173, metadata !DIExpression()) #11, !dbg !1076
  call void @llvm.dbg.value(metadata i8** undef, metadata !174, metadata !DIExpression()) #11, !dbg !1079
  %110 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1080, !tbaa !839
  %111 = icmp eq i8* %110, null, !dbg !1081
  br i1 %111, label %112, label %141, !dbg !1082

; <label>:112:                                    ; preds = %109
  %113 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %113, metadata !175, metadata !DIExpression()) #11, !dbg !1084
  %114 = icmp eq i8* %113, null, !dbg !1085
  %115 = select i1 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* %113, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %115, metadata !178, metadata !DIExpression()) #11, !dbg !1086
  %116 = tail call i8* @mfile_name_concat(i8* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8** null) #11, !dbg !1087
  store i8* %116, i8** @temp_stream.tempfile, align 8, !dbg !1088, !tbaa !839
  %117 = tail call i32 @mkstemp_safer(i8* %116) #11, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %117, metadata !179, metadata !DIExpression()) #11, !dbg !1090
  %118 = icmp slt i32 %117, 0, !dbg !1091
  br i1 %118, label %119, label %124, !dbg !1093

; <label>:119:                                    ; preds = %112
  %120 = tail call i32* @__errno_location() #17, !dbg !1094
  %121 = load i32, i32* %120, align 4, !dbg !1094, !tbaa !977
  %122 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1096
  %123 = tail call i8* @quotearg_style(i32 4, i8* %115) #11, !dbg !1097
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %121, i8* %122, i8* %123) #11, !dbg !1098
  br label %139, !dbg !1099

; <label>:124:                                    ; preds = %112
  %125 = tail call %struct._IO_FILE* @fdopen(i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0)) #11, !dbg !1100
  store %struct._IO_FILE* %125, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1101, !tbaa !839
  %126 = icmp eq %struct._IO_FILE* %125, null, !dbg !1102
  br i1 %126, label %127, label %136, !dbg !1104

; <label>:127:                                    ; preds = %124
  %128 = tail call i32* @__errno_location() #17, !dbg !1105
  %129 = load i32, i32* %128, align 4, !dbg !1105, !tbaa !977
  %130 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i32 5) #11, !dbg !1107
  %131 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1108, !tbaa !839
  %132 = tail call i8* @quotearg_style(i32 4, i8* %131) #11, !dbg !1108
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %129, i8* %130, i8* %132) #11, !dbg !1109
  %133 = tail call i32 @close(i32 %117) #11, !dbg !1110
  %134 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1111, !tbaa !839
  %135 = tail call i32 @unlink(i8* %134) #11, !dbg !1112
  br label %139, !dbg !1112

; <label>:136:                                    ; preds = %124
  %137 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1113, !tbaa !839
  call void @llvm.dbg.value(metadata i8* %137, metadata !1114, metadata !DIExpression()) #11, !dbg !1120
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1119, metadata !DIExpression()) #11, !dbg !1122
  %138 = tail call i32 @unlink(i8* %137) #11, !dbg !1123
  br label %157

; <label>:139:                                    ; preds = %127, %119
  %140 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1124, !tbaa !839
  tail call void @free(i8* %140) #11, !dbg !1125
  store i8* null, i8** @temp_stream.tempfile, align 8, !dbg !1126, !tbaa !839
  br label %198

; <label>:141:                                    ; preds = %109
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1127, !tbaa !839
  tail call void @clearerr_unlocked(%struct._IO_FILE* %142) #11, !dbg !1127
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1129, !tbaa !839
  %144 = tail call i32 @rpl_fseeko(%struct._IO_FILE* %143, i64 0, i32 0) #11, !dbg !1131
  %145 = icmp slt i32 %144, 0, !dbg !1132
  br i1 %145, label %151, label %146, !dbg !1133

; <label>:146:                                    ; preds = %141
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1134, !tbaa !839
  %148 = tail call i32 @fileno(%struct._IO_FILE* %147) #11, !dbg !1135
  %149 = tail call i32 @ftruncate(i32 %148, i64 0) #11, !dbg !1136
  %150 = icmp slt i32 %149, 0, !dbg !1137
  br i1 %150, label %151, label %157, !dbg !1138

; <label>:151:                                    ; preds = %146, %141
  %152 = tail call i32* @__errno_location() #17, !dbg !1139
  %153 = load i32, i32* %152, align 4, !dbg !1139, !tbaa !977
  %154 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i32 5) #11, !dbg !1141
  %155 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1142, !tbaa !839
  %156 = tail call i8* @quotearg_style(i32 4, i8* %155) #11, !dbg !1142
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %153, i8* %154, i8* %156) #11, !dbg !1143
  br label %198, !dbg !1144

; <label>:157:                                    ; preds = %146, %136
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1145, !tbaa !839
  %159 = load i64, i64* bitcast (i8** @temp_stream.tempfile to i64*), align 8, !dbg !1146, !tbaa !839
  br label %160, !dbg !1147

; <label>:160:                                    ; preds = %170, %157
  %161 = phi i64 [ 0, %157 ], [ %174, %170 ], !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  %162 = load i8*, i8** @G_buffer, align 8, !dbg !1148, !tbaa !839
  %163 = load i64, i64* @read_size, align 8, !dbg !1149, !tbaa !901
  %164 = tail call i64 @safe_read(i32 %103, i8* %162, i64 %163) #11, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %164, metadata !1066, metadata !DIExpression()) #11, !dbg !1151
  switch i64 %164, label %170 [
    i64 0, label %181
    i64 -1, label %165
  ], !dbg !1152

; <label>:165:                                    ; preds = %160
  %166 = tail call i32* @__errno_location() #17, !dbg !1153
  %167 = load i32, i32* %166, align 4, !dbg !1153, !tbaa !977
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1156
  %169 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %102) #11, !dbg !1157
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %167, i8* %168, i8* %169) #11, !dbg !1158
  br label %198, !dbg !1159

; <label>:170:                                    ; preds = %160
  %171 = load i8*, i8** @G_buffer, align 8, !dbg !1160, !tbaa !839
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %158, metadata !1060, metadata !DIExpression()) #11, !dbg !1074
  %172 = tail call i64 @fwrite_unlocked(i8* %171, i64 1, i64 %164, %struct._IO_FILE* %158) #11, !dbg !1160
  %173 = icmp eq i64 %172, %164, !dbg !1162
  %174 = add i64 %164, %161, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %174, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %174, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  br i1 %173, label %160, label %175, !dbg !1164

; <label>:175:                                    ; preds = %170
  %176 = tail call i32* @__errno_location() #17, !dbg !1165
  %177 = load i32, i32* %176, align 4, !dbg !1165, !tbaa !977
  %178 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1167
  %179 = inttoptr i64 %159 to i8*, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %179, metadata !1061, metadata !DIExpression()) #11, !dbg !1075
  %180 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %179) #11, !dbg !1168
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %177, i8* %178, i8* %180) #11, !dbg !1169
  br label %198, !dbg !1170

; <label>:181:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %161, metadata !1062, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %158, metadata !1060, metadata !DIExpression()) #11, !dbg !1074
  %182 = tail call i32 @fflush_unlocked(%struct._IO_FILE* %158) #11, !dbg !1171
  %183 = icmp eq i32 %182, 0, !dbg !1173
  br i1 %183, label %190, label %184, !dbg !1174

; <label>:184:                                    ; preds = %181
  %185 = tail call i32* @__errno_location() #17, !dbg !1175
  %186 = load i32, i32* %185, align 4, !dbg !1175, !tbaa !977
  %187 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1177
  %188 = inttoptr i64 %159 to i8*, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %188, metadata !1061, metadata !DIExpression()) #11, !dbg !1075
  %189 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %188) #11, !dbg !1178
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %186, i8* %187, i8* %189) #11, !dbg !1179
  br label %198, !dbg !1180

; <label>:190:                                    ; preds = %181
  call void @llvm.dbg.value(metadata i64 %161, metadata !1045, metadata !DIExpression()) #11, !dbg !1181
  %191 = icmp slt i64 %161, 0, !dbg !1182
  br i1 %191, label %198, label %192, !dbg !1184

; <label>:192:                                    ; preds = %190
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %158, metadata !1043, metadata !DIExpression()) #11, !dbg !1050
  %193 = tail call i32 @fileno(%struct._IO_FILE* %158) #11, !dbg !1185
  %194 = inttoptr i64 %159 to i8*, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %194, metadata !1044, metadata !DIExpression()) #11, !dbg !1051
  %195 = tail call fastcc zeroext i1 @tac_seekable(i32 %193, i8* %194, i64 %161) #11, !dbg !1187
  br label %198

; <label>:196:                                    ; preds = %106
  %197 = tail call fastcc zeroext i1 @tac_seekable(i32 %103, i8* %102, i64 %104) #11, !dbg !1188
  br label %198, !dbg !1036

; <label>:198:                                    ; preds = %196, %192, %190, %184, %175, %165, %151, %139
  %199 = phi i1 [ %197, %196 ], [ %195, %192 ], [ false, %190 ], [ false, %184 ], [ false, %139 ], [ false, %151 ], [ false, %165 ], [ false, %175 ]
  br i1 %90, label %208, label %200, !dbg !1189

; <label>:200:                                    ; preds = %198
  %201 = tail call i32 @close(i32 %103) #11, !dbg !1191
  %202 = icmp eq i32 %201, 0, !dbg !1192
  br i1 %202, label %208, label %203, !dbg !1193

; <label>:203:                                    ; preds = %200
  %204 = tail call i32* @__errno_location() #17, !dbg !1194
  %205 = load i32, i32* %204, align 4, !dbg !1194, !tbaa !977
  %206 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1196
  %207 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %102) #11, !dbg !1197
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %205, i8* %206, i8* %207) #11, !dbg !1198
  call void @llvm.dbg.value(metadata i8 0, metadata !1004, metadata !DIExpression()) #11, !dbg !1199
  br label %208, !dbg !1200

; <label>:208:                                    ; preds = %96, %198, %200, %203
  %209 = phi i1 [ false, %96 ], [ %199, %198 ], [ false, %203 ], [ %199, %200 ], !dbg !1201
  %210 = zext i1 %209 to i8, !dbg !1202
  %211 = and i8 %88, %210, !dbg !1203
  %212 = add i64 %87, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %212, metadata !48, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8 %211, metadata !44, metadata !DIExpression()), !dbg !982
  %213 = getelementptr inbounds i8*, i8** %76, i64 %212, !dbg !984
  %214 = load i8*, i8** %213, align 8, !dbg !984, !tbaa !839
  %215 = icmp eq i8* %214, null, !dbg !986
  br i1 %215, label %79, label %85, !dbg !986, !llvm.loop !1205

; <label>:216:                                    ; preds = %79
  %217 = tail call i32 @close(i32 0) #11, !dbg !1207
  %218 = icmp slt i32 %217, 0, !dbg !1208
  br i1 %218, label %219, label %222, !dbg !1209

; <label>:219:                                    ; preds = %216
  %220 = tail call i32* @__errno_location() #17, !dbg !1210
  %221 = load i32, i32* %220, align 4, !dbg !1210, !tbaa !977
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1212
  call void @llvm.dbg.value(metadata i8 0, metadata !44, metadata !DIExpression()), !dbg !982
  br label %222, !dbg !1213

; <label>:222:                                    ; preds = %219, %216, %79
  %223 = phi i8 [ 0, %219 ], [ %80, %216 ], [ %80, %79 ], !dbg !1214
  call void @llvm.dbg.value(metadata i8 %223, metadata !44, metadata !DIExpression()), !dbg !982
  %224 = and i8 %223, 1, !dbg !1215
  %225 = xor i8 %224, 1, !dbg !1215
  %226 = zext i8 %225 to i32, !dbg !1215
  ret i32 %226, !dbg !1216
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

declare i32 @fflush_unlocked(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @tac_seekable(i32, i8*, i64) unnamed_addr #7 !dbg !1217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1221, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8* %1, metadata !1222, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %2, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 1, metadata !1227, metadata !DIExpression()), !dbg !1257
  %4 = load i8*, i8** @separator, align 8, !dbg !1258, !tbaa !839
  %5 = load i8, i8* %4, align 1, !dbg !1259, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %5, metadata !1228, metadata !DIExpression()), !dbg !1260
  %6 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %6, metadata !1229, metadata !DIExpression()), !dbg !1262
  %7 = load i64, i64* @match_length, align 8, !dbg !1263, !tbaa !901
  %8 = add i64 %7, -1, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %8, metadata !1230, metadata !DIExpression()), !dbg !1265
  %9 = load i64, i64* @read_size, align 8, !dbg !1266, !tbaa !901
  %10 = urem i64 %2, %9, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %10, metadata !1231, metadata !DIExpression()), !dbg !1268
  %11 = icmp eq i64 %10, 0, !dbg !1269
  br i1 %11, label %21, label %12, !dbg !1271

; <label>:12:                                     ; preds = %3
  %13 = sub i64 %2, %10, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %13, metadata !1223, metadata !DIExpression()), !dbg !1256
  %14 = tail call i64 @lseek(i32 %0, i64 %13, i32 0) #11, !dbg !1274
  %15 = icmp slt i64 %14, 0, !dbg !1276
  br i1 %15, label %16, label %21, !dbg !1277

; <label>:16:                                     ; preds = %12
  %17 = tail call i32* @__errno_location() #17, !dbg !1278
  %18 = load i32, i32* %17, align 4, !dbg !1278, !tbaa !977
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1279
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1280
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* %19, i8* %20) #11, !dbg !1281
  br label %21, !dbg !1281

; <label>:21:                                     ; preds = %3, %12, %16
  %22 = phi i64 [ %13, %16 ], [ %13, %12 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1223, metadata !DIExpression()), !dbg !1256
  %23 = load i8*, i8** @G_buffer, align 8, !dbg !1282, !tbaa !839
  %24 = load i64, i64* @read_size, align 8, !dbg !1283, !tbaa !901
  %25 = tail call i64 @safe_read(i32 %0, i8* %23, i64 %24) #11, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %25, metadata !1226, metadata !DIExpression()), !dbg !1285
  %26 = icmp eq i64 %25, 0, !dbg !1286
  %27 = icmp ne i64 %22, 0, !dbg !1287
  %28 = and i1 %27, %26, !dbg !1288
  br i1 %28, label %34, label %29, !dbg !1289

; <label>:29:                                     ; preds = %45, %21
  %30 = phi i64 [ %22, %21 ], [ %47, %45 ], !dbg !1290
  %31 = phi i64 [ %25, %21 ], [ %49, %45 ], !dbg !1284
  call void @llvm.dbg.value(metadata i64 %30, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %31, metadata !1226, metadata !DIExpression()), !dbg !1285
  %32 = load i64, i64* @read_size, align 8, !dbg !1291, !tbaa !901
  %33 = icmp eq i64 %31, %32, !dbg !1292
  br i1 %33, label %53, label %62, !dbg !1293

; <label>:34:                                     ; preds = %21, %45
  %35 = phi i64 [ %47, %45 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !1223, metadata !DIExpression()), !dbg !1256
  %36 = load i64, i64* @read_size, align 8, !dbg !1294, !tbaa !901
  call void @llvm.dbg.value(metadata i64 %36, metadata !1232, metadata !DIExpression()), !dbg !1295
  %37 = sub nsw i64 0, %36, !dbg !1296
  %38 = tail call i64 @lseek(i32 %0, i64 %37, i32 1) #11, !dbg !1298
  %39 = icmp slt i64 %38, 0, !dbg !1299
  br i1 %39, label %40, label %45, !dbg !1300

; <label>:40:                                     ; preds = %34
  %41 = tail call i32* @__errno_location() #17, !dbg !1301
  %42 = load i32, i32* %41, align 4, !dbg !1301, !tbaa !977
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1302
  %44 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1303
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %42, i8* %43, i8* %44) #11, !dbg !1304
  br label %45, !dbg !1304

; <label>:45:                                     ; preds = %40, %34
  %46 = load i64, i64* @read_size, align 8, !dbg !1305, !tbaa !901
  %47 = sub i64 %35, %46, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %47, metadata !1223, metadata !DIExpression()), !dbg !1256
  %48 = load i8*, i8** @G_buffer, align 8, !dbg !1282, !tbaa !839
  %49 = tail call i64 @safe_read(i32 %0, i8* %48, i64 %46) #11, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %49, metadata !1226, metadata !DIExpression()), !dbg !1285
  %50 = icmp eq i64 %49, 0, !dbg !1286
  %51 = icmp ne i64 %47, 0, !dbg !1287
  %52 = and i1 %51, %50, !dbg !1288
  br i1 %52, label %34, label %29, !dbg !1289, !llvm.loop !1307

; <label>:53:                                     ; preds = %29, %58
  %54 = phi i64 [ %57, %58 ], [ %31, %29 ]
  %55 = phi i64 [ %59, %58 ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %54, metadata !1226, metadata !DIExpression()), !dbg !1285
  %56 = load i8*, i8** @G_buffer, align 8, !dbg !1309, !tbaa !839
  %57 = tail call i64 @safe_read(i32 %0, i8* %56, i64 %54) #11, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %57, metadata !1234, metadata !DIExpression()), !dbg !1311
  switch i64 %57, label %58 [
    i64 0, label %62
    i64 -1, label %66
  ], !dbg !1312

; <label>:58:                                     ; preds = %53
  %59 = add i64 %57, %55, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %59, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %57, metadata !1226, metadata !DIExpression()), !dbg !1285
  %60 = load i64, i64* @read_size, align 8, !dbg !1291, !tbaa !901
  %61 = icmp eq i64 %57, %60, !dbg !1292
  br i1 %61, label %53, label %71, !dbg !1293

; <label>:62:                                     ; preds = %53, %29
  %63 = phi i64 [ %31, %29 ], [ %54, %53 ], !dbg !1314
  %64 = phi i64 [ %30, %29 ], [ %55, %53 ], !dbg !1272
  call void @llvm.dbg.value(metadata i64 %63, metadata !1226, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %63, metadata !1226, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %64, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %64, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 undef, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 undef, metadata !1226, metadata !DIExpression()), !dbg !1285
  %65 = icmp eq i64 %63, -1, !dbg !1315
  br i1 %65, label %66, label %71, !dbg !1317

; <label>:66:                                     ; preds = %53, %62
  %67 = tail call i32* @__errno_location() #17, !dbg !1318
  %68 = load i32, i32* %67, align 4, !dbg !1318, !tbaa !977
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1320
  %70 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1321
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %68, i8* %69, i8* %70) #11, !dbg !1322
  br label %319, !dbg !1323

; <label>:71:                                     ; preds = %58, %62
  %72 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %73 = phi i64 [ %63, %62 ], [ %57, %58 ]
  %74 = load i8*, i8** @G_buffer, align 8, !dbg !1324, !tbaa !839
  %75 = getelementptr inbounds i8, i8* %74, i64 %73, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %75, metadata !1225, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %75, metadata !1224, metadata !DIExpression()), !dbg !1327
  %76 = load i64, i64* @sentinel_length, align 8, !dbg !1328, !tbaa !901
  %77 = icmp eq i64 %76, 0, !dbg !1328
  %78 = sub i64 1, %7, !dbg !1330
  %79 = getelementptr inbounds i8, i8* %75, i64 %78, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %79, metadata !1224, metadata !DIExpression()), !dbg !1327
  %80 = select i1 %77, i8* %75, i8* %79, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %80, metadata !1224, metadata !DIExpression()), !dbg !1327
  %81 = icmp eq i64 %8, 0
  br label %82, !dbg !1332

; <label>:82:                                     ; preds = %309, %71
  %83 = phi i64 [ %76, %71 ], [ %317, %309 ]
  %84 = phi i8 [ 1, %71 ], [ %310, %309 ]
  %85 = phi i8* [ %75, %71 ], [ %311, %309 ]
  %86 = phi i8* [ %80, %71 ], [ %318, %309 ]
  %87 = phi i64 [ %72, %71 ], [ %92, %309 ]
  br label %88, !dbg !1333

; <label>:88:                                     ; preds = %82, %221
  %89 = phi i64 [ %224, %221 ], [ %83, %82 ], !dbg !1334
  %90 = phi i8* [ %216, %221 ], [ %85, %82 ], !dbg !1335
  %91 = phi i8* [ %223, %221 ], [ %86, %82 ], !dbg !1336
  %92 = phi i64 [ %204, %221 ], [ %87, %82 ], !dbg !1338
  call void @llvm.dbg.value(metadata i64 %92, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8* %91, metadata !1224, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i8* %90, metadata !1225, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %84, metadata !1227, metadata !DIExpression()), !dbg !1257
  %93 = icmp eq i64 %89, 0, !dbg !1333
  br i1 %93, label %94, label %123, !dbg !1340

; <label>:94:                                     ; preds = %88
  %95 = load i8*, i8** @G_buffer, align 8, !dbg !1341, !tbaa !839
  %96 = ptrtoint i8* %91 to i64, !dbg !1342
  %97 = ptrtoint i8* %95 to i64, !dbg !1342
  %98 = sub i64 %96, %97, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %98, metadata !1236, metadata !DIExpression()), !dbg !1343
  %99 = trunc i64 %98 to i32, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %99, metadata !1240, metadata !DIExpression()), !dbg !1345
  %100 = sub nsw i32 1, %99, !dbg !1346
  call void @llvm.dbg.value(metadata i32 %100, metadata !1241, metadata !DIExpression()), !dbg !1347
  %101 = icmp slt i32 %99, 0, !dbg !1348
  br i1 %101, label %102, label %104, !dbg !1350

; <label>:102:                                    ; preds = %94
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1351
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %103) #11, !dbg !1351
  unreachable, !dbg !1351

; <label>:104:                                    ; preds = %94
  %105 = icmp eq i32 %99, 0, !dbg !1352
  br i1 %105, label %139, label %106, !dbg !1354

; <label>:106:                                    ; preds = %104
  %107 = add i32 %99, -1, !dbg !1355
  %108 = tail call i32 @re_search(%struct.re_pattern_buffer* nonnull @compiled_separator, i8* %95, i32 %99, i32 %107, i32 %100, %struct.re_registers* nonnull @regs) #11, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %108, metadata !1242, metadata !DIExpression()), !dbg !1357
  switch i32 %108, label %113 [
    i32 -1, label %109
    i32 -2, label %111
  ], !dbg !1358

; <label>:109:                                    ; preds = %106
  %110 = load i8*, i8** @G_buffer, align 8, !dbg !1359, !tbaa !839
  br label %139, !dbg !1358

; <label>:111:                                    ; preds = %106
  %112 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i64 0, i64 0), i32 5) #11, !dbg !1360
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %112) #11, !dbg !1360
  unreachable, !dbg !1360

; <label>:113:                                    ; preds = %106
  %114 = load i8*, i8** @G_buffer, align 8, !dbg !1363, !tbaa !839
  %115 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 1), align 8, !dbg !1365, !tbaa !1366
  %116 = load i32, i32* %115, align 4, !dbg !1368, !tbaa !977
  %117 = sext i32 %116 to i64, !dbg !1369
  %118 = getelementptr inbounds i8, i8* %114, i64 %117, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %118, metadata !1224, metadata !DIExpression()), !dbg !1327
  %119 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 2), align 8, !dbg !1370, !tbaa !1371
  %120 = load i32, i32* %119, align 4, !dbg !1372, !tbaa !977
  %121 = sub nsw i32 %120, %116, !dbg !1373
  %122 = sext i32 %121 to i64, !dbg !1372
  store i64 %122, i64* @match_length, align 8, !dbg !1374, !tbaa !901
  br label %135

; <label>:123:                                    ; preds = %88, %132
  %124 = phi i8* [ %125, %132 ], [ %91, %88 ], !dbg !1375
  call void @llvm.dbg.value(metadata i8* %124, metadata !1224, metadata !DIExpression()), !dbg !1327
  %125 = getelementptr inbounds i8, i8* %124, i64 -1, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %125, metadata !1224, metadata !DIExpression()), !dbg !1327
  %126 = load i8, i8* %125, align 1, !dbg !1378, !tbaa !923
  %127 = icmp eq i8 %126, %5, !dbg !1379
  br i1 %127, label %128, label %132, !dbg !1380

; <label>:128:                                    ; preds = %123
  br i1 %81, label %133, label %129, !dbg !1381

; <label>:129:                                    ; preds = %128
  %130 = tail call i32 @strncmp(i8* %124, i8* nonnull %6, i64 %8) #14, !dbg !1382
  %131 = icmp eq i32 %130, 0, !dbg !1382
  br i1 %131, label %133, label %132, !dbg !1383

; <label>:132:                                    ; preds = %129, %123
  br label %123, !dbg !1327, !llvm.loop !1384

; <label>:133:                                    ; preds = %128, %129
  %134 = load i8*, i8** @G_buffer, align 8, !dbg !1386, !tbaa !839
  br label %135, !dbg !1386

; <label>:135:                                    ; preds = %133, %113
  %136 = phi i8* [ %114, %113 ], [ %134, %133 ], !dbg !1386
  %137 = phi i8* [ %118, %113 ], [ %125, %133 ]
  call void @llvm.dbg.value(metadata i8* %137, metadata !1224, metadata !DIExpression()), !dbg !1327
  %138 = icmp ult i8* %137, %136, !dbg !1387
  br i1 %138, label %139, label %230, !dbg !1388

; <label>:139:                                    ; preds = %104, %109, %135
  %140 = phi i8* [ %136, %135 ], [ %110, %109 ], [ %95, %104 ]
  %141 = icmp eq i64 %92, 0, !dbg !1389
  %142 = ptrtoint i8* %90 to i64, !dbg !1335
  %143 = ptrtoint i8* %140 to i64, !dbg !1335
  %144 = sub i64 %142, %143, !dbg !1335
  br i1 %141, label %145, label %177, !dbg !1391

; <label>:145:                                    ; preds = %139
  call void @llvm.dbg.value(metadata i8* %136, metadata !198, metadata !DIExpression()) #11, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %90, metadata !199, metadata !DIExpression()) #11, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %144, metadata !200, metadata !DIExpression()) #11, !dbg !1396
  %146 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1397, !tbaa !901
  %147 = sub i64 8192, %146, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %147, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  %148 = icmp eq i8* %140, null, !dbg !1400
  br i1 %148, label %158, label %149, !dbg !1401

; <label>:149:                                    ; preds = %145
  call void @llvm.dbg.value(metadata i64 %147, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %144, metadata !200, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %136, metadata !198, metadata !DIExpression()) #11, !dbg !1392
  %150 = icmp ult i64 %144, %147, !dbg !1402
  %151 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %146, !dbg !1403
  br i1 %150, label %169, label %152, !dbg !1404

; <label>:152:                                    ; preds = %149
  call void @llvm.dbg.value(metadata i64 %147, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %144, metadata !200, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %140, metadata !198, metadata !DIExpression()) #11, !dbg !1392
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %151, i8* nonnull align 1 %140, i64 %147, i1 false) #11, !dbg !1405
  %153 = sub i64 %144, %147, !dbg !1407
  %154 = getelementptr inbounds i8, i8* %140, i64 %147, !dbg !1408
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1409, !tbaa !839
  %156 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %155) #11, !dbg !1409
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1410, !tbaa !901
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %153, metadata !200, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %154, metadata !198, metadata !DIExpression()) #11, !dbg !1392
  %157 = icmp ult i64 %153, 8192, !dbg !1402
  br i1 %157, label %169, label %161, !dbg !1404, !llvm.loop !1411

; <label>:158:                                    ; preds = %145
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1414, !tbaa !839
  %160 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %146, %struct._IO_FILE* %159) #11, !dbg !1414
  br label %175, !dbg !1415

; <label>:161:                                    ; preds = %152, %161
  %162 = phi i64 [ %164, %161 ], [ %153, %152 ]
  %163 = phi i8* [ %165, %161 ], [ %154, %152 ]
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %162, metadata !200, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %163, metadata !198, metadata !DIExpression()) #11, !dbg !1392
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i8* align 1 %163, i64 8192, i1 false) #11, !dbg !1405
  %164 = add i64 %162, -8192, !dbg !1407
  %165 = getelementptr inbounds i8, i8* %163, i64 8192, !dbg !1408
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1409, !tbaa !839
  %167 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %166) #11, !dbg !1409
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1410, !tbaa !901
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %164, metadata !200, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %165, metadata !198, metadata !DIExpression()) #11, !dbg !1392
  %168 = icmp ult i64 %164, 8192, !dbg !1402
  br i1 %168, label %169, label %161, !dbg !1404, !llvm.loop !1416

; <label>:169:                                    ; preds = %152, %161, %149
  %170 = phi i8* [ %140, %149 ], [ %154, %152 ], [ %165, %161 ]
  %171 = phi i64 [ %144, %149 ], [ %153, %152 ], [ %164, %161 ], !dbg !1418
  %172 = phi i64 [ %146, %149 ], [ 0, %161 ], [ 0, %152 ], !dbg !1403
  %173 = phi i8* [ %151, %149 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %161 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %152 ], !dbg !1403
  call void @llvm.dbg.value(metadata i8* %170, metadata !198, metadata !DIExpression()) #11, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %171, metadata !200, metadata !DIExpression()) #11, !dbg !1396
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %173, i8* align 1 %170, i64 %171, i1 false) #11, !dbg !1419
  %174 = add i64 %172, %171, !dbg !1420
  br label %175, !dbg !1421

; <label>:175:                                    ; preds = %158, %169
  %176 = phi i64 [ %174, %169 ], [ 0, %158 ]
  store i64 %176, i64* @output.bytes_in_buffer, align 8, !dbg !1422, !tbaa !901
  br label %319, !dbg !1423

; <label>:177:                                    ; preds = %139
  call void @llvm.dbg.value(metadata i64 %144, metadata !1226, metadata !DIExpression()), !dbg !1285
  %178 = load i64, i64* @read_size, align 8, !dbg !1424, !tbaa !901
  %179 = icmp ugt i64 %144, %178, !dbg !1425
  br i1 %179, label %180, label %197, !dbg !1426

; <label>:180:                                    ; preds = %177
  %181 = load i64, i64* @sentinel_length, align 8, !dbg !1427, !tbaa !901
  %182 = icmp eq i64 %181, 0, !dbg !1427
  %183 = select i1 %182, i64 1, i64 %181, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %183, metadata !1248, metadata !DIExpression()), !dbg !1428
  %184 = load i64, i64* @G_buffer_size, align 8, !dbg !1429, !tbaa !901
  call void @llvm.dbg.value(metadata i64 %184, metadata !1249, metadata !DIExpression()), !dbg !1430
  %185 = shl i64 %178, 1, !dbg !1431
  store i64 %185, i64* @read_size, align 8, !dbg !1431, !tbaa !901
  %186 = shl i64 %178, 2, !dbg !1432
  %187 = or i64 %186, 2, !dbg !1433
  %188 = add i64 %187, %181, !dbg !1434
  store i64 %188, i64* @G_buffer_size, align 8, !dbg !1435, !tbaa !901
  %189 = icmp ult i64 %188, %184, !dbg !1436
  br i1 %189, label %190, label %191, !dbg !1438

; <label>:190:                                    ; preds = %180
  tail call void @xalloc_die() #15, !dbg !1439
  unreachable, !dbg !1439

; <label>:191:                                    ; preds = %180
  %192 = sub i64 0, %183, !dbg !1440
  %193 = getelementptr inbounds i8, i8* %140, i64 %192, !dbg !1440
  %194 = tail call i8* @xrealloc(i8* %193, i64 %188) #11, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %194, metadata !1243, metadata !DIExpression()), !dbg !1442
  %195 = getelementptr inbounds i8, i8* %194, i64 %183, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %195, metadata !1243, metadata !DIExpression()), !dbg !1442
  store i8* %195, i8** @G_buffer, align 8, !dbg !1444, !tbaa !839
  %196 = load i64, i64* @read_size, align 8, !dbg !1445, !tbaa !901
  br label %197, !dbg !1446

; <label>:197:                                    ; preds = %191, %177
  %198 = phi i64 [ %196, %191 ], [ %178, %177 ], !dbg !1445
  %199 = icmp ult i64 %92, %198, !dbg !1447
  br i1 %199, label %202, label %200, !dbg !1448

; <label>:200:                                    ; preds = %197
  %201 = sub i64 %92, %198, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %201, metadata !1223, metadata !DIExpression()), !dbg !1256
  br label %203, !dbg !1450

; <label>:202:                                    ; preds = %197
  store i64 %92, i64* @read_size, align 8, !dbg !1451, !tbaa !901
  call void @llvm.dbg.value(metadata i64 0, metadata !1223, metadata !DIExpression()), !dbg !1256
  br label %203

; <label>:203:                                    ; preds = %202, %200
  %204 = phi i64 [ %201, %200 ], [ 0, %202 ], !dbg !1453
  call void @llvm.dbg.value(metadata i64 %204, metadata !1223, metadata !DIExpression()), !dbg !1256
  %205 = tail call i64 @lseek(i32 %0, i64 %204, i32 0) #11, !dbg !1454
  %206 = icmp slt i64 %205, 0, !dbg !1456
  br i1 %206, label %207, label %212, !dbg !1457

; <label>:207:                                    ; preds = %203
  %208 = tail call i32* @__errno_location() #17, !dbg !1458
  %209 = load i32, i32* %208, align 4, !dbg !1458, !tbaa !977
  %210 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1459
  %211 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1460
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %209, i8* %210, i8* %211) #11, !dbg !1461
  br label %212, !dbg !1461

; <label>:212:                                    ; preds = %207, %203
  %213 = load i8*, i8** @G_buffer, align 8, !dbg !1462, !tbaa !839
  %214 = load i64, i64* @read_size, align 8, !dbg !1463, !tbaa !901
  %215 = getelementptr inbounds i8, i8* %213, i64 %214, !dbg !1464
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %215, i8* align 1 %213, i64 %144, i1 false), !dbg !1465
  %216 = getelementptr inbounds i8, i8* %215, i64 %144, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %216, metadata !1225, metadata !DIExpression()), !dbg !1326
  %217 = load i64, i64* @sentinel_length, align 8, !dbg !1467, !tbaa !901
  %218 = tail call i64 @safe_read(i32 %0, i8* %213, i64 %214) #11, !dbg !1468
  %219 = load i64, i64* @read_size, align 8, !dbg !1470, !tbaa !901
  %220 = icmp eq i64 %218, %219, !dbg !1471
  br i1 %220, label %221, label %225, !dbg !1472

; <label>:221:                                    ; preds = %212
  %222 = icmp eq i64 %217, 0, !dbg !1467
  %223 = select i1 %222, i8* %216, i8* %215
  call void @llvm.dbg.value(metadata i8* %223, metadata !1224, metadata !DIExpression()), !dbg !1327
  %224 = load i64, i64* @sentinel_length, align 8, !dbg !1334, !tbaa !901
  br label %88, !dbg !1472, !llvm.loop !1473

; <label>:225:                                    ; preds = %212
  %226 = tail call i32* @__errno_location() #17, !dbg !1475
  %227 = load i32, i32* %226, align 4, !dbg !1475, !tbaa !977
  %228 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1477
  %229 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1478
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %227, i8* %228, i8* %229) #11, !dbg !1479
  br label %319, !dbg !1480

; <label>:230:                                    ; preds = %135
  call void @llvm.dbg.value(metadata i8* %90, metadata !1225, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %92, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8* %137, metadata !1224, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i8* %90, metadata !1225, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %92, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8* %137, metadata !1224, metadata !DIExpression()), !dbg !1327
  %231 = load i1, i1* @separator_ends_record, align 1
  br i1 %231, label %232, label %272, !dbg !1481

; <label>:232:                                    ; preds = %230
  %233 = load i64, i64* @match_length, align 8, !dbg !1482, !tbaa !901
  %234 = getelementptr inbounds i8, i8* %137, i64 %233, !dbg !1483
  call void @llvm.dbg.value(metadata i8* %234, metadata !1250, metadata !DIExpression()), !dbg !1484
  %235 = and i8 %84, 1, !dbg !1485
  %236 = icmp ne i8 %235, 0, !dbg !1485
  %237 = icmp eq i8* %234, %90, !dbg !1487
  %238 = and i1 %236, %237, !dbg !1488
  br i1 %238, label %309, label %239, !dbg !1488

; <label>:239:                                    ; preds = %232
  call void @llvm.dbg.value(metadata i8* %234, metadata !198, metadata !DIExpression()) #11, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %90, metadata !199, metadata !DIExpression()) #11, !dbg !1491
  %240 = ptrtoint i8* %90 to i64, !dbg !1492
  %241 = ptrtoint i8* %234 to i64, !dbg !1492
  %242 = sub i64 %240, %241, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %242, metadata !200, metadata !DIExpression()) #11, !dbg !1493
  %243 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1494, !tbaa !901
  %244 = sub i64 8192, %243, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %244, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  %245 = icmp eq i8* %234, null, !dbg !1497
  br i1 %245, label %255, label %246, !dbg !1498

; <label>:246:                                    ; preds = %239
  call void @llvm.dbg.value(metadata i64 %244, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %242, metadata !200, metadata !DIExpression()) #11, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %234, metadata !198, metadata !DIExpression()) #11, !dbg !1489
  %247 = icmp ult i64 %242, %244, !dbg !1499
  %248 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %243, !dbg !1500
  br i1 %247, label %266, label %249, !dbg !1501

; <label>:249:                                    ; preds = %246
  call void @llvm.dbg.value(metadata i64 %244, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %242, metadata !200, metadata !DIExpression()) #11, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %234, metadata !198, metadata !DIExpression()) #11, !dbg !1489
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %248, i8* nonnull align 1 %234, i64 %244, i1 false) #11, !dbg !1502
  %250 = sub i64 %242, %244, !dbg !1503
  %251 = getelementptr inbounds i8, i8* %234, i64 %244, !dbg !1504
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1505, !tbaa !839
  %253 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %252) #11, !dbg !1505
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1506, !tbaa !901
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %250, metadata !200, metadata !DIExpression()) #11, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %251, metadata !198, metadata !DIExpression()) #11, !dbg !1489
  %254 = icmp ult i64 %250, 8192, !dbg !1499
  br i1 %254, label %266, label %258, !dbg !1501, !llvm.loop !1411

; <label>:255:                                    ; preds = %239
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1507, !tbaa !839
  %257 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %243, %struct._IO_FILE* %256) #11, !dbg !1507
  br label %305, !dbg !1508

; <label>:258:                                    ; preds = %249, %258
  %259 = phi i64 [ %261, %258 ], [ %250, %249 ]
  %260 = phi i8* [ %262, %258 ], [ %251, %249 ]
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %259, metadata !200, metadata !DIExpression()) #11, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %260, metadata !198, metadata !DIExpression()) #11, !dbg !1489
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i8* align 1 %260, i64 8192, i1 false) #11, !dbg !1502
  %261 = add i64 %259, -8192, !dbg !1503
  %262 = getelementptr inbounds i8, i8* %260, i64 8192, !dbg !1504
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1505, !tbaa !839
  %264 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %263) #11, !dbg !1505
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1506, !tbaa !901
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %261, metadata !200, metadata !DIExpression()) #11, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %262, metadata !198, metadata !DIExpression()) #11, !dbg !1489
  %265 = icmp ult i64 %261, 8192, !dbg !1499
  br i1 %265, label %266, label %258, !dbg !1501, !llvm.loop !1509

; <label>:266:                                    ; preds = %249, %258, %246
  %267 = phi i8* [ %234, %246 ], [ %251, %249 ], [ %262, %258 ]
  %268 = phi i64 [ %242, %246 ], [ %250, %249 ], [ %261, %258 ], !dbg !1510
  %269 = phi i64 [ %243, %246 ], [ 0, %258 ], [ 0, %249 ], !dbg !1500
  %270 = phi i8* [ %248, %246 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %258 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %249 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8* %267, metadata !198, metadata !DIExpression()) #11, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %268, metadata !200, metadata !DIExpression()) #11, !dbg !1493
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %270, i8* align 1 %267, i64 %268, i1 false) #11, !dbg !1511
  %271 = add i64 %269, %268, !dbg !1512
  br label %305, !dbg !1513

; <label>:272:                                    ; preds = %230
  call void @llvm.dbg.value(metadata i8* %137, metadata !198, metadata !DIExpression()) #11, !dbg !1514
  call void @llvm.dbg.value(metadata i8* %90, metadata !199, metadata !DIExpression()) #11, !dbg !1517
  %273 = ptrtoint i8* %90 to i64, !dbg !1518
  %274 = ptrtoint i8* %137 to i64, !dbg !1518
  %275 = sub i64 %273, %274, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %275, metadata !200, metadata !DIExpression()) #11, !dbg !1519
  %276 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1520, !tbaa !901
  %277 = sub i64 8192, %276, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %277, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  %278 = icmp eq i8* %137, null, !dbg !1523
  br i1 %278, label %288, label %279, !dbg !1524

; <label>:279:                                    ; preds = %272
  call void @llvm.dbg.value(metadata i64 %277, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %275, metadata !200, metadata !DIExpression()) #11, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %137, metadata !198, metadata !DIExpression()) #11, !dbg !1514
  %280 = icmp ult i64 %275, %277, !dbg !1525
  %281 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %276, !dbg !1526
  br i1 %280, label %299, label %282, !dbg !1527

; <label>:282:                                    ; preds = %279
  call void @llvm.dbg.value(metadata i64 %277, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %275, metadata !200, metadata !DIExpression()) #11, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %137, metadata !198, metadata !DIExpression()) #11, !dbg !1514
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %281, i8* nonnull align 1 %137, i64 %277, i1 false) #11, !dbg !1528
  %283 = sub i64 %275, %277, !dbg !1529
  %284 = getelementptr inbounds i8, i8* %137, i64 %277, !dbg !1530
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1531, !tbaa !839
  %286 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %285) #11, !dbg !1531
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1532, !tbaa !901
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %283, metadata !200, metadata !DIExpression()) #11, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %284, metadata !198, metadata !DIExpression()) #11, !dbg !1514
  %287 = icmp ult i64 %283, 8192, !dbg !1525
  br i1 %287, label %299, label %291, !dbg !1527, !llvm.loop !1411

; <label>:288:                                    ; preds = %272
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1533, !tbaa !839
  %290 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %276, %struct._IO_FILE* %289) #11, !dbg !1533
  br label %305, !dbg !1534

; <label>:291:                                    ; preds = %282, %291
  %292 = phi i64 [ %294, %291 ], [ %283, %282 ]
  %293 = phi i8* [ %295, %291 ], [ %284, %282 ]
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %292, metadata !200, metadata !DIExpression()) #11, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %293, metadata !198, metadata !DIExpression()) #11, !dbg !1514
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i8* align 1 %293, i64 8192, i1 false) #11, !dbg !1528
  %294 = add i64 %292, -8192, !dbg !1529
  %295 = getelementptr inbounds i8, i8* %293, i64 8192, !dbg !1530
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1531, !tbaa !839
  %297 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %296) #11, !dbg !1531
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1532, !tbaa !901
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  call void @llvm.dbg.value(metadata i64 8192, metadata !201, metadata !DIExpression()) #11, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %294, metadata !200, metadata !DIExpression()) #11, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %295, metadata !198, metadata !DIExpression()) #11, !dbg !1514
  %298 = icmp ult i64 %294, 8192, !dbg !1525
  br i1 %298, label %299, label %291, !dbg !1527, !llvm.loop !1535

; <label>:299:                                    ; preds = %282, %291, %279
  %300 = phi i8* [ %137, %279 ], [ %284, %282 ], [ %295, %291 ]
  %301 = phi i64 [ %275, %279 ], [ %283, %282 ], [ %294, %291 ], !dbg !1536
  %302 = phi i64 [ %276, %279 ], [ 0, %291 ], [ 0, %282 ], !dbg !1526
  %303 = phi i8* [ %281, %279 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %291 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %282 ], !dbg !1526
  call void @llvm.dbg.value(metadata i8* %300, metadata !198, metadata !DIExpression()) #11, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %301, metadata !200, metadata !DIExpression()) #11, !dbg !1519
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %303, i8* align 1 %300, i64 %301, i1 false) #11, !dbg !1537
  %304 = add i64 %302, %301, !dbg !1538
  br label %305, !dbg !1539

; <label>:305:                                    ; preds = %299, %288, %266, %255
  %306 = phi i64 [ %271, %266 ], [ 0, %255 ], [ %304, %299 ], [ 0, %288 ]
  %307 = phi i8 [ 0, %266 ], [ 0, %255 ], [ %84, %299 ], [ %84, %288 ]
  %308 = phi i8* [ %234, %266 ], [ %234, %255 ], [ %137, %299 ], [ %137, %288 ]
  store i64 %306, i64* @output.bytes_in_buffer, align 8, !dbg !1540, !tbaa !901
  br label %309, !dbg !1541

; <label>:309:                                    ; preds = %305, %232
  %310 = phi i8 [ 0, %232 ], [ %307, %305 ], !dbg !1543
  %311 = phi i8* [ %90, %232 ], [ %308, %305 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8* %311, metadata !1225, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %310, metadata !1227, metadata !DIExpression()), !dbg !1257
  %312 = load i64, i64* @sentinel_length, align 8, !dbg !1541, !tbaa !901
  %313 = icmp eq i64 %312, 0, !dbg !1545
  %314 = load i64, i64* @match_length, align 8, !dbg !1546
  %315 = sub i64 1, %314, !dbg !1547
  %316 = getelementptr inbounds i8, i8* %137, i64 %315, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %316, metadata !1224, metadata !DIExpression()), !dbg !1327
  %317 = select i1 %313, i64 0, i64 %312, !dbg !1548
  %318 = select i1 %313, i8* %137, i8* %316, !dbg !1548
  br label %82, !dbg !1333, !llvm.loop !1473

; <label>:319:                                    ; preds = %225, %175, %66
  %320 = phi i1 [ false, %66 ], [ true, %175 ], [ false, %225 ], !dbg !1549
  ret i1 %320, !dbg !1550
}

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i8* %0, i8** @file_name, align 8, !dbg !1555, !tbaa !839
  ret void, !dbg !1556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1557 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1563, !tbaa !1564
  ret void, !dbg !1566
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1567 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1572, !tbaa !839
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1573
  %3 = icmp eq i32 %2, 0, !dbg !1574
  br i1 %3, label %22, label %4, !dbg !1575

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1576, !tbaa !1564, !range !1577
  %6 = icmp eq i8 %5, 0, !dbg !1576
  br i1 %6, label %11, label %7, !dbg !1578

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1579
  %9 = load i32, i32* %8, align 4, !dbg !1579, !tbaa !977
  %10 = icmp eq i32 %9, 32, !dbg !1580
  br i1 %10, label %22, label %11, !dbg !1581

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 5) #11, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %12, metadata !1569, metadata !DIExpression()), !dbg !1583
  %13 = load i8*, i8** @file_name, align 8, !dbg !1584, !tbaa !839
  %14 = icmp eq i8* %13, null, !dbg !1584
  %15 = tail call i32* @__errno_location() #17, !dbg !1586
  %16 = load i32, i32* %15, align 4, !dbg !1586, !tbaa !977
  br i1 %14, label %19, label %17, !dbg !1587

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1588
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1589
  br label %20, !dbg !1589

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.57, i64 0, i64 0), i8* %12) #11, !dbg !1590
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1591, !tbaa !977
  tail call void @_exit(i32 %21) #15, !dbg !1592
  unreachable, !dbg !1592

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1593, !tbaa !839
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1595
  %25 = icmp eq i32 %24, 0, !dbg !1596
  br i1 %25, label %28, label %26, !dbg !1597

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1598, !tbaa !977
  tail call void @_exit(i32 %27) #15, !dbg !1599
  unreachable, !dbg !1599

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1600
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #7 !dbg !1601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1606, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %1, metadata !1607, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i8** %2, metadata !1608, metadata !DIExpression()), !dbg !1618
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %4, metadata !1609, metadata !DIExpression()), !dbg !1620
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %5, metadata !1610, metadata !DIExpression()), !dbg !1622
  %6 = ptrtoint i8* %4 to i64, !dbg !1623
  %7 = ptrtoint i8* %0 to i64, !dbg !1623
  %8 = sub i64 %6, %7, !dbg !1623
  %9 = add i64 %8, %5, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %9, metadata !1611, metadata !DIExpression()), !dbg !1625
  %10 = tail call i64 @strlen(i8* %1) #14, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %10, metadata !1612, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1628
  %11 = icmp eq i64 %5, 0, !dbg !1629
  br i1 %11, label %21, label %12, !dbg !1631

; <label>:12:                                     ; preds = %3
  %13 = add i64 %9, -1, !dbg !1632
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1632
  %15 = load i8, i8* %14, align 1, !dbg !1632, !tbaa !923
  %16 = icmp eq i8 %15, 47, !dbg !1632
  br i1 %16, label %25, label %17, !dbg !1635

; <label>:17:                                     ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1636, !tbaa !923
  %19 = icmp eq i8 %18, 47, !dbg !1636
  %20 = select i1 %19, i8 0, i8 47, !dbg !1637
  br label %25, !dbg !1637

; <label>:21:                                     ; preds = %3
  %22 = load i8, i8* %1, align 1, !dbg !1638, !tbaa !923
  %23 = icmp eq i8 %22, 47, !dbg !1638
  %24 = select i1 %23, i8 46, i8 0, !dbg !1640
  br label %25, !dbg !1640

; <label>:25:                                     ; preds = %21, %17, %12
  %26 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1641
  call void @llvm.dbg.value(metadata i8 %26, metadata !1613, metadata !DIExpression()), !dbg !1628
  %27 = icmp ne i8 %26, 0, !dbg !1642
  %28 = zext i1 %27 to i64, !dbg !1643
  %29 = add i64 %10, 1, !dbg !1644
  %30 = add i64 %29, %9, !dbg !1645
  %31 = add i64 %30, %28, !dbg !1646
  %32 = tail call noalias i8* @malloc(i64 %31) #11, !dbg !1647
  call void @llvm.dbg.value(metadata i8* %32, metadata !1614, metadata !DIExpression()), !dbg !1648
  %33 = icmp eq i8* %32, null, !dbg !1649
  br i1 %33, label %43, label %34, !dbg !1651

; <label>:34:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i8* %32, metadata !1652, metadata !DIExpression()) #11, !dbg !1664
  call void @llvm.dbg.value(metadata i8* %0, metadata !1662, metadata !DIExpression()) #11, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %9, metadata !1663, metadata !DIExpression()) #11, !dbg !1664
  %35 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %32, i1 false, i1 true) #11, !dbg !1666
  %36 = tail call i8* @__mempcpy_chk(i8* nonnull %32, i8* nonnull %0, i64 %9, i64 %35) #11, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %36, metadata !1615, metadata !DIExpression()), !dbg !1668
  store i8 %26, i8* %36, align 1, !dbg !1669, !tbaa !923
  %37 = getelementptr inbounds i8, i8* %36, i64 %28, !dbg !1670
  call void @llvm.dbg.value(metadata i8* %37, metadata !1615, metadata !DIExpression()), !dbg !1668
  %38 = icmp eq i8** %2, null, !dbg !1671
  br i1 %38, label %40, label %39, !dbg !1673

; <label>:39:                                     ; preds = %34
  store i8* %37, i8** %2, align 8, !dbg !1674, !tbaa !839
  br label %40, !dbg !1675

; <label>:40:                                     ; preds = %34, %39
  call void @llvm.dbg.value(metadata i8* %37, metadata !1652, metadata !DIExpression()) #11, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %1, metadata !1662, metadata !DIExpression()) #11, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %10, metadata !1663, metadata !DIExpression()) #11, !dbg !1676
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %37, i1 false, i1 true) #11, !dbg !1678
  %42 = tail call i8* @__mempcpy_chk(i8* nonnull %37, i8* nonnull %1, i64 %10, i64 %41) #11, !dbg !1679
  call void @llvm.dbg.value(metadata i8* %42, metadata !1615, metadata !DIExpression()), !dbg !1668
  store i8 0, i8* %42, align 1, !dbg !1680, !tbaa !923
  br label %43, !dbg !1681

; <label>:43:                                     ; preds = %25, %40
  ret i8* %32, !dbg !1682
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1685, metadata !DIExpression()), !dbg !1688
  %2 = icmp eq i8* %0, null, !dbg !1689
  br i1 %2, label %3, label %6, !dbg !1691

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1692, !tbaa !839
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1694
  tail call void @abort() #15, !dbg !1695
  unreachable, !dbg !1695

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %7, metadata !1686, metadata !DIExpression()), !dbg !1697
  %8 = icmp eq i8* %7, null, !dbg !1698
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1699
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %10, metadata !1687, metadata !DIExpression()), !dbg !1701
  %11 = ptrtoint i8* %10 to i64, !dbg !1702
  %12 = ptrtoint i8* %0 to i64, !dbg !1702
  %13 = sub i64 %11, %12, !dbg !1702
  %14 = icmp sgt i64 %13, 6, !dbg !1704
  br i1 %14, label %15, label %24, !dbg !1705

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1706
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #14, !dbg !1707
  %18 = icmp eq i32 %17, 0, !dbg !1708
  br i1 %18, label %19, label %24, !dbg !1709

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1685, metadata !DIExpression()), !dbg !1688
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #14, !dbg !1710
  %21 = icmp eq i32 %20, 0, !dbg !1713
  br i1 %21, label %22, label %24, !dbg !1714

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1715
  call void @llvm.dbg.value(metadata i8* %23, metadata !1685, metadata !DIExpression()), !dbg !1688
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1717, !tbaa !839
  br label %24, !dbg !1718

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1685, metadata !DIExpression()), !dbg !1688
  store i8* %25, i8** @program_name, align 8, !dbg !1719, !tbaa !839
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1720, !tbaa !839
  ret void, !dbg !1721
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1722 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1727, metadata !DIExpression()), !dbg !1730
  %2 = tail call i32* @__errno_location() #17, !dbg !1731
  %3 = load i32, i32* %2, align 4, !dbg !1731, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %3, metadata !1728, metadata !DIExpression()), !dbg !1732
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1733
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1733
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1733
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1734
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1729, metadata !DIExpression()), !dbg !1735
  store i32 %3, i32* %2, align 4, !dbg !1736, !tbaa !977
  ret %struct.quoting_options* %8, !dbg !1737
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1738 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1744, metadata !DIExpression()), !dbg !1745
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1746
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1746
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1747
  %5 = load i32, i32* %4, align 8, !dbg !1747, !tbaa !1748
  ret i32 %5, !dbg !1750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1751 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1755, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %1, metadata !1756, metadata !DIExpression()), !dbg !1758
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1759
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1759
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1760
  store i32 %1, i32* %5, align 8, !dbg !1761, !tbaa !1748
  ret void, !dbg !1762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1763 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1767, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %1, metadata !1768, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i32 %2, metadata !1769, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %1, metadata !1770, metadata !DIExpression()), !dbg !1778
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1779
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1779
  %6 = lshr i8 %1, 5, !dbg !1780
  %7 = zext i8 %6 to i64, !dbg !1780
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1781
  call void @llvm.dbg.value(metadata i32* %8, metadata !1771, metadata !DIExpression()), !dbg !1782
  %9 = and i8 %1, 31, !dbg !1783
  %10 = zext i8 %9 to i32, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %10, metadata !1773, metadata !DIExpression()), !dbg !1784
  %11 = load i32, i32* %8, align 4, !dbg !1785, !tbaa !977
  %12 = lshr i32 %11, %10, !dbg !1786
  %13 = and i32 %12, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %13, metadata !1774, metadata !DIExpression()), !dbg !1788
  %14 = and i32 %2, 1, !dbg !1789
  %15 = xor i32 %13, %14, !dbg !1790
  %16 = shl i32 %15, %10, !dbg !1791
  %17 = xor i32 %16, %11, !dbg !1792
  store i32 %17, i32* %8, align 4, !dbg !1792, !tbaa !977
  ret i32 %13, !dbg !1793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1794 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1798, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 %1, metadata !1799, metadata !DIExpression()), !dbg !1802
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1803
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1798, metadata !DIExpression()), !dbg !1801
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1806
  %6 = load i32, i32* %5, align 4, !dbg !1806, !tbaa !1807
  call void @llvm.dbg.value(metadata i32 %6, metadata !1800, metadata !DIExpression()), !dbg !1808
  store i32 %1, i32* %5, align 4, !dbg !1809, !tbaa !1807
  ret i32 %6, !dbg !1810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1811 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1815, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %1, metadata !1816, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %2, metadata !1817, metadata !DIExpression()), !dbg !1820
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1821
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1815, metadata !DIExpression()), !dbg !1818
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1824
  store i32 10, i32* %6, align 8, !dbg !1825, !tbaa !1748
  %7 = icmp ne i8* %1, null, !dbg !1826
  %8 = icmp ne i8* %2, null, !dbg !1828
  %9 = and i1 %7, %8, !dbg !1829
  br i1 %9, label %11, label %10, !dbg !1829

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1830
  unreachable, !dbg !1830

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1831
  store i8* %1, i8** %12, align 8, !dbg !1832, !tbaa !1833
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1834
  store i8* %2, i8** %13, align 8, !dbg !1835, !tbaa !1836
  ret void, !dbg !1837
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1838 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1842, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 %1, metadata !1843, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8* %2, metadata !1844, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %3, metadata !1845, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1846, metadata !DIExpression()), !dbg !1854
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1855
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1847, metadata !DIExpression()), !dbg !1856
  %8 = tail call i32* @__errno_location() #17, !dbg !1857
  %9 = load i32, i32* %8, align 4, !dbg !1857, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %9, metadata !1848, metadata !DIExpression()), !dbg !1858
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1859
  %11 = load i32, i32* %10, align 8, !dbg !1859, !tbaa !1748
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1860
  %13 = load i32, i32* %12, align 4, !dbg !1860, !tbaa !1807
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1861
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1862
  %16 = load i8*, i8** %15, align 8, !dbg !1862, !tbaa !1833
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1863
  %18 = load i8*, i8** %17, align 8, !dbg !1863, !tbaa !1836
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %19, metadata !1849, metadata !DIExpression()), !dbg !1865
  store i32 %9, i32* %8, align 4, !dbg !1866, !tbaa !977
  ret i64 %19, !dbg !1867
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1868 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1874, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %1, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %2, metadata !1876, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i64 %3, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %4, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %5, metadata !1879, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32* %6, metadata !1880, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %7, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %8, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 0, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 0, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8* null, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 0, metadata !1887, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 0, metadata !1888, metadata !DIExpression()), !dbg !1951
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1952
  %14 = icmp eq i64 %13, 1, !dbg !1953
  %15 = lshr i32 %5, 1, !dbg !1954
  %16 = trunc i32 %15 to i8, !dbg !1954
  %17 = and i8 %16, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i8 %17, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 0, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1893, metadata !DIExpression()), !dbg !1957
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1958

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1948
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1949
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1950
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1951
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1959
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1955
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1956
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1957
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %39, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %38, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %37, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %36, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %35, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %34, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %33, metadata !1887, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8* %32, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %31, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 0, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8* %30, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %29, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 %28, metadata !1878, metadata !DIExpression()), !dbg !1942
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
  ], !dbg !1961

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %36, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 5, metadata !1878, metadata !DIExpression()), !dbg !1942
  br label %93, !dbg !1962

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 5, metadata !1878, metadata !DIExpression()), !dbg !1942
  %43 = and i8 %36, 1, !dbg !1963
  %44 = icmp eq i8 %43, 0, !dbg !1963
  br i1 %44, label %45, label %93, !dbg !1962

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1965
  br i1 %46, label %93, label %47, !dbg !1968

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1965, !tbaa !923
  br label %93, !dbg !1965

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %28), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %49, metadata !1881, metadata !DIExpression()), !dbg !1945
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %28), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %50, metadata !1882, metadata !DIExpression()), !dbg !1946
  br label %51, !dbg !1974

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %52, metadata !1881, metadata !DIExpression()), !dbg !1945
  %54 = and i8 %36, 1, !dbg !1975
  %55 = icmp eq i8 %54, 0, !dbg !1975
  br i1 %55, label %56, label %71, !dbg !1977

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 0, metadata !1884, metadata !DIExpression()), !dbg !1947
  %57 = load i8, i8* %52, align 1, !dbg !1978, !tbaa !923
  %58 = icmp eq i8 %57, 0, !dbg !1981
  br i1 %58, label %71, label %59, !dbg !1981

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %62, metadata !1884, metadata !DIExpression()), !dbg !1947
  %63 = icmp ult i64 %62, %40, !dbg !1982
  br i1 %63, label %64, label %66, !dbg !1985

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1982
  store i8 %60, i8* %65, align 1, !dbg !1982, !tbaa !923
  br label %66, !dbg !1982

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1985
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1986
  call void @llvm.dbg.value(metadata i8* %68, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %67, metadata !1884, metadata !DIExpression()), !dbg !1947
  %69 = load i8, i8* %68, align 1, !dbg !1978, !tbaa !923
  %70 = icmp eq i8 %69, 0, !dbg !1981
  br i1 %70, label %71, label %59, !dbg !1981, !llvm.loop !1987

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1947
  call void @llvm.dbg.value(metadata i64 %72, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* %53, metadata !1886, metadata !DIExpression()), !dbg !1949
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %73, metadata !1887, metadata !DIExpression()), !dbg !1950
  br label %93, !dbg !1990

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !1951
  br label %75, !dbg !1991

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %76, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !1954
  br label %77, !dbg !1992

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1951
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %79, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %78, metadata !1888, metadata !DIExpression()), !dbg !1951
  %80 = and i8 %79, 1, !dbg !1993
  %81 = icmp eq i8 %80, 0, !dbg !1993
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1995
  br label %83, !dbg !1995

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1996
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1954
  call void @llvm.dbg.value(metadata i8 %85, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %84, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i32 2, metadata !1878, metadata !DIExpression()), !dbg !1942
  %86 = and i8 %85, 1, !dbg !1997
  %87 = icmp eq i8 %86, 0, !dbg !1997
  br i1 %87, label %88, label %93, !dbg !1999

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2000
  br i1 %89, label %93, label %90, !dbg !2003

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2000, !tbaa !923
  br label %93, !dbg !2000

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1890, metadata !DIExpression()), !dbg !1954
  br label %93, !dbg !2004

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2005
  unreachable, !dbg !2005

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1947
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], !dbg !1959
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1959
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1959
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2006
  call void @llvm.dbg.value(metadata i8 %101, metadata !1890, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %99, metadata !1887, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %97, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 %94, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 0, metadata !1883, metadata !DIExpression()), !dbg !2007
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
  br label %121, !dbg !2008

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2009
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1947
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1948
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1955
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1956
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1957
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %125, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %122, metadata !1883, metadata !DIExpression()), !dbg !2007
  %130 = icmp eq i64 %125, -1, !dbg !2010
  br i1 %130, label %131, label %135, !dbg !2011

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2012
  %133 = load i8, i8* %132, align 1, !dbg !2012, !tbaa !923
  %134 = icmp eq i8 %133, 0, !dbg !2013
  br i1 %134, label %617, label %137, !dbg !2014

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2015
  br i1 %136, label %617, label %137, !dbg !2014

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 0, metadata !1900, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !1901, metadata !DIExpression()), !dbg !2018
  br i1 %107, label %138, label %153, !dbg !2019

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2021
  %140 = and i1 %108, %130, !dbg !2022
  br i1 %140, label %141, label %143, !dbg !2022

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %142, metadata !1877, metadata !DIExpression()), !dbg !1941
  br label %143, !dbg !2024

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1877, metadata !DIExpression()), !dbg !1941
  %145 = icmp ugt i64 %139, %144, !dbg !2025
  br i1 %145, label %153, label %146, !dbg !2026

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2027
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2028
  %149 = icmp ne i32 %148, 0, !dbg !2029
  %150 = or i1 %149, %110, !dbg !2030
  %151 = xor i1 %149, true, !dbg !2030
  %152 = zext i1 %151 to i8, !dbg !2030
  br i1 %150, label %153, label %661, !dbg !2030

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2031
  call void @llvm.dbg.value(metadata i8 %155, metadata !1899, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i64 %154, metadata !1877, metadata !DIExpression()), !dbg !1941
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2032
  %157 = load i8, i8* %156, align 1, !dbg !2032, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %157, metadata !1894, metadata !DIExpression()), !dbg !2033
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
  ], !dbg !2034

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2035

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2036

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !2017
  %161 = and i8 %126, 1, !dbg !2040
  %162 = icmp eq i8 %161, 0, !dbg !2040
  %163 = and i1 %114, %162, !dbg !2040
  br i1 %163, label %164, label %180, !dbg !2040

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2042
  br i1 %165, label %166, label %168, !dbg !2046

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2042
  store i8 39, i8* %167, align 1, !dbg !2042, !tbaa !923
  br label %168, !dbg !2042

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %169, metadata !1884, metadata !DIExpression()), !dbg !1947
  %170 = icmp ult i64 %169, %129, !dbg !2047
  br i1 %170, label %171, label %173, !dbg !2050

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2047
  store i8 36, i8* %172, align 1, !dbg !2047, !tbaa !923
  br label %173, !dbg !2047

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %174, metadata !1884, metadata !DIExpression()), !dbg !1947
  %175 = icmp ult i64 %174, %129, !dbg !2051
  br i1 %175, label %176, label %178, !dbg !2054

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2051
  store i8 39, i8* %177, align 1, !dbg !2051, !tbaa !923
  br label %178, !dbg !2051

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %179, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 1, metadata !1891, metadata !DIExpression()), !dbg !1955
  br label %180, !dbg !2055

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2006
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2006
  call void @llvm.dbg.value(metadata i8 %182, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %181, metadata !1884, metadata !DIExpression()), !dbg !1947
  %183 = icmp ult i64 %181, %129, !dbg !2056
  br i1 %183, label %184, label %186, !dbg !2059

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2056
  store i8 92, i8* %185, align 1, !dbg !2056, !tbaa !923
  br label %186, !dbg !2056

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %187, metadata !1884, metadata !DIExpression()), !dbg !1947
  br i1 %104, label %188, label %478, !dbg !2060

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2062
  %190 = icmp ult i64 %189, %154, !dbg !2063
  br i1 %190, label %191, label %467, !dbg !2064

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2065
  %193 = load i8, i8* %192, align 1, !dbg !2065, !tbaa !923
  %194 = add i8 %193, -48, !dbg !2066
  %195 = icmp ult i8 %194, 10, !dbg !2066
  br i1 %195, label %196, label %467, !dbg !2066

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2067
  br i1 %197, label %198, label %200, !dbg !2071

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2067
  store i8 48, i8* %199, align 1, !dbg !2067, !tbaa !923
  br label %200, !dbg !2067

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %201, metadata !1884, metadata !DIExpression()), !dbg !1947
  %202 = icmp ult i64 %201, %129, !dbg !2072
  br i1 %202, label %203, label %205, !dbg !2075

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2072
  store i8 48, i8* %204, align 1, !dbg !2072, !tbaa !923
  br label %205, !dbg !2072

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %206, metadata !1884, metadata !DIExpression()), !dbg !1947
  br label %467, !dbg !2076

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2077

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2078

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2079

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2081

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2083
  %213 = icmp ult i64 %212, %154, !dbg !2084
  br i1 %213, label %214, label %467, !dbg !2085

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2086
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2087
  %217 = load i8, i8* %216, align 1, !dbg !2087, !tbaa !923
  %218 = icmp eq i8 %217, 63, !dbg !2088
  br i1 %218, label %219, label %467, !dbg !2089

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2090
  %221 = load i8, i8* %220, align 1, !dbg !2090, !tbaa !923
  %222 = sext i8 %221 to i32, !dbg !2090
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
  ], !dbg !2091

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2092

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1894, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i64 %212, metadata !1883, metadata !DIExpression()), !dbg !2007
  %225 = icmp ult i64 %123, %129, !dbg !2094
  br i1 %225, label %226, label %228, !dbg !2097

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2094
  store i8 63, i8* %227, align 1, !dbg !2094, !tbaa !923
  br label %228, !dbg !2094

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %229, metadata !1884, metadata !DIExpression()), !dbg !1947
  %230 = icmp ult i64 %229, %129, !dbg !2098
  br i1 %230, label %231, label %233, !dbg !2101

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2098
  store i8 34, i8* %232, align 1, !dbg !2098, !tbaa !923
  br label %233, !dbg !2098

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %234, metadata !1884, metadata !DIExpression()), !dbg !1947
  %235 = icmp ult i64 %234, %129, !dbg !2102
  br i1 %235, label %236, label %238, !dbg !2105

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2102
  store i8 34, i8* %237, align 1, !dbg !2102, !tbaa !923
  br label %238, !dbg !2102

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %239, metadata !1884, metadata !DIExpression()), !dbg !1947
  %240 = icmp ult i64 %239, %129, !dbg !2106
  br i1 %240, label %241, label %243, !dbg !2109

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2106
  store i8 63, i8* %242, align 1, !dbg !2106, !tbaa !923
  br label %243, !dbg !2106

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %244, metadata !1884, metadata !DIExpression()), !dbg !1947
  br label %467, !dbg !2110

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1898, metadata !DIExpression()), !dbg !2111
  br label %255, !dbg !2112

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1898, metadata !DIExpression()), !dbg !2111
  br label %255, !dbg !2113

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1898, metadata !DIExpression()), !dbg !2111
  br label %253, !dbg !2114

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1898, metadata !DIExpression()), !dbg !2111
  br label %253, !dbg !2115

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1898, metadata !DIExpression()), !dbg !2111
  br label %255, !dbg !2116

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1898, metadata !DIExpression()), !dbg !2111
  br i1 %114, label %251, label %252, !dbg !2117

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2118

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2121

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2123
  call void @llvm.dbg.value(metadata i8 %254, metadata !1898, metadata !DIExpression()), !dbg !2111
  br i1 %113, label %255, label %661, !dbg !2124

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2123
  call void @llvm.dbg.value(metadata i8 %256, metadata !1898, metadata !DIExpression()), !dbg !2111
  br i1 %103, label %524, label %478, !dbg !2126

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2127
  br i1 %258, label %259, label %264, !dbg !2129

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2130, !tbaa !923
  %261 = icmp ne i8 %260, 0, !dbg !2131
  %262 = icmp ne i64 %122, 0, !dbg !2132
  %263 = or i1 %262, %261, !dbg !2134
  br i1 %263, label %467, label %270, !dbg !2134

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2135
  %266 = icmp ne i64 %122, 0, !dbg !2132
  %267 = or i1 %266, %265, !dbg !2129
  br i1 %267, label %467, label %270, !dbg !2129

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2132
  br i1 %269, label %270, label %467, !dbg !2136

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1901, metadata !DIExpression()), !dbg !2018
  br label %271, !dbg !2137

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2123
  call void @llvm.dbg.value(metadata i8 %272, metadata !1901, metadata !DIExpression()), !dbg !2018
  br i1 %113, label %467, label %661, !dbg !2138

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1901, metadata !DIExpression()), !dbg !2018
  br i1 %114, label %274, label %467, !dbg !2140

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2141

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2144
  %277 = icmp ne i64 %124, 0, !dbg !2146
  %278 = or i1 %277, %276, !dbg !2147
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2147
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %280, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %279, metadata !1885, metadata !DIExpression()), !dbg !1948
  %281 = icmp ult i64 %123, %280, !dbg !2148
  br i1 %281, label %282, label %284, !dbg !2151

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2148
  store i8 39, i8* %283, align 1, !dbg !2148, !tbaa !923
  br label %284, !dbg !2148

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %285, metadata !1884, metadata !DIExpression()), !dbg !1947
  %286 = icmp ult i64 %285, %280, !dbg !2152
  br i1 %286, label %287, label %289, !dbg !2155

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2152
  store i8 92, i8* %288, align 1, !dbg !2152, !tbaa !923
  br label %289, !dbg !2152

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %290, metadata !1884, metadata !DIExpression()), !dbg !1947
  %291 = icmp ult i64 %290, %280, !dbg !2156
  br i1 %291, label %292, label %294, !dbg !2159

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2156
  store i8 39, i8* %293, align 1, !dbg !2156, !tbaa !923
  br label %294, !dbg !2156

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %295, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1955
  br label %467, !dbg !2160

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2161

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1902, metadata !DIExpression()), !dbg !2162
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2163
  %299 = load i16*, i16** %298, align 8, !dbg !2163, !tbaa !839
  %300 = zext i8 %157 to i64, !dbg !2163
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2163
  %302 = load i16, i16* %301, align 2, !dbg !2163, !tbaa !2165
  %303 = lshr i16 %302, 14, !dbg !2167
  %304 = trunc i16 %303 to i8, !dbg !2167
  %305 = and i8 %304, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i8 %305, metadata !1905, metadata !DIExpression()), !dbg !2168
  br label %359, !dbg !2169

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2170
  store i64 0, i64* %10, align 8, !dbg !2171
  call void @llvm.dbg.value(metadata i64 0, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 1, metadata !1905, metadata !DIExpression()), !dbg !2168
  %307 = icmp eq i64 %154, -1, !dbg !2172
  br i1 %307, label %308, label %310, !dbg !2174

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %309, metadata !1877, metadata !DIExpression()), !dbg !1941
  br label %310, !dbg !2176

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2177
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  br label %312, !dbg !2178

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2179
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2180
  call void @llvm.dbg.value(metadata i8 %314, metadata !1905, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2181
  %315 = add i64 %313, %122, !dbg !2182
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2183
  %317 = sub i64 %311, %315, !dbg !2184
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1906, metadata !DIExpression(DW_OP_deref)), !dbg !2185
  call void @llvm.dbg.value(metadata i32* %12, metadata !1924, metadata !DIExpression(DW_OP_deref)), !dbg !2186
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %318, metadata !1927, metadata !DIExpression()), !dbg !2188
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2189

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  %320 = icmp ugt i64 %311, %315, !dbg !2190
  br i1 %320, label %321, label %344, !dbg !2192

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1902, metadata !DIExpression()), !dbg !2162
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2193
  %325 = load i8, i8* %324, align 1, !dbg !2193, !tbaa !923
  %326 = icmp eq i8 %325, 0, !dbg !2192
  br i1 %326, label %344, label %327, !dbg !2194

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %328, metadata !1902, metadata !DIExpression()), !dbg !2162
  %329 = add i64 %328, %122, !dbg !2196
  %330 = icmp ult i64 %329, %311, !dbg !2190
  br i1 %330, label %321, label %344, !dbg !2192, !llvm.loop !2197

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2198
  %333 = and i1 %116, %332, !dbg !2201
  call void @llvm.dbg.value(metadata i64 1, metadata !1928, metadata !DIExpression()), !dbg !2202
  br i1 %333, label %334, label %347, !dbg !2201

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1928, metadata !DIExpression()), !dbg !2202
  %336 = add i64 %335, %315, !dbg !2203
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2204
  %338 = load i8, i8* %337, align 1, !dbg !2204, !tbaa !923
  %339 = sext i8 %338 to i32, !dbg !2204
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2205

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %341, metadata !1928, metadata !DIExpression()), !dbg !2202
  %342 = icmp ult i64 %341, %318, !dbg !2198
  br i1 %342, label %334, label %347, !dbg !2207, !llvm.loop !2208

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %314, metadata !1905, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %313, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %314, metadata !1905, metadata !DIExpression()), !dbg !2168
  br label %344, !dbg !2210

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1905, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %352, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2210
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2211, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %348, metadata !1924, metadata !DIExpression()), !dbg !2186
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2213
  %350 = icmp eq i32 %349, 0, !dbg !2213
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2214
  call void @llvm.dbg.value(metadata i8 %351, metadata !1905, metadata !DIExpression()), !dbg !2168
  %352 = add i64 %318, %313, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %352, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %351, metadata !1905, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %352, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2210
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1906, metadata !DIExpression(DW_OP_deref)), !dbg !2185
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2216
  %354 = icmp eq i32 %353, 0, !dbg !2217
  br i1 %354, label %312, label %355, !dbg !2218, !llvm.loop !2219

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2221
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 2, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 2, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 2, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 2, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 2, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %94, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %94, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %94, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %94, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %94, metadata !1878, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %100, metadata !1888, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %311, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %351, metadata !1905, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %352, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2210
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2221
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2222
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2223
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2223
  call void @llvm.dbg.value(metadata i8 %362, metadata !1905, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %361, metadata !1902, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %360, metadata !1877, metadata !DIExpression()), !dbg !1941
  %363 = and i8 %362, 1, !dbg !2224
  %364 = icmp ne i8 %363, 0, !dbg !2224
  call void @llvm.dbg.value(metadata i8 %363, metadata !1901, metadata !DIExpression()), !dbg !2018
  %365 = icmp ult i64 %361, 2, !dbg !2225
  %366 = or i1 %364, %115, !dbg !2226
  %367 = and i1 %365, %366, !dbg !2227
  br i1 %367, label %467, label %368, !dbg !2227

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %369, metadata !1935, metadata !DIExpression()), !dbg !2229
  br label %370, !dbg !2230

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2231
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2235
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1955
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2231
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2237
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2017
  call void @llvm.dbg.value(metadata i8 %376, metadata !1900, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %375, metadata !1899, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 %374, metadata !1894, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %373, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %372, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %371, metadata !1883, metadata !DIExpression()), !dbg !2007
  br i1 %366, label %423, label %377, !dbg !2241

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2242

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !2017
  %379 = and i8 %373, 1, !dbg !2245
  %380 = icmp eq i8 %379, 0, !dbg !2245
  %381 = and i1 %114, %380, !dbg !2245
  br i1 %381, label %382, label %398, !dbg !2245

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2247
  br i1 %383, label %384, label %386, !dbg !2251

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2247
  store i8 39, i8* %385, align 1, !dbg !2247, !tbaa !923
  br label %386, !dbg !2247

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %387, metadata !1884, metadata !DIExpression()), !dbg !1947
  %388 = icmp ult i64 %387, %129, !dbg !2252
  br i1 %388, label %389, label %391, !dbg !2255

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2252
  store i8 36, i8* %390, align 1, !dbg !2252, !tbaa !923
  br label %391, !dbg !2252

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %392, metadata !1884, metadata !DIExpression()), !dbg !1947
  %393 = icmp ult i64 %392, %129, !dbg !2256
  br i1 %393, label %394, label %396, !dbg !2259

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2256
  store i8 39, i8* %395, align 1, !dbg !2256, !tbaa !923
  br label %396, !dbg !2256

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %397, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 1, metadata !1891, metadata !DIExpression()), !dbg !1955
  br label %398, !dbg !2260

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2006
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2006
  call void @llvm.dbg.value(metadata i8 %400, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %399, metadata !1884, metadata !DIExpression()), !dbg !1947
  %401 = icmp ult i64 %399, %129, !dbg !2261
  br i1 %401, label %402, label %404, !dbg !2264

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2261
  store i8 92, i8* %403, align 1, !dbg !2261, !tbaa !923
  br label %404, !dbg !2261

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %405, metadata !1884, metadata !DIExpression()), !dbg !1947
  %406 = icmp ult i64 %405, %129, !dbg !2265
  br i1 %406, label %407, label %411, !dbg !2268

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2265
  %409 = or i8 %408, 48, !dbg !2265
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2265
  store i8 %409, i8* %410, align 1, !dbg !2265, !tbaa !923
  br label %411, !dbg !2265

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %412, metadata !1884, metadata !DIExpression()), !dbg !1947
  %413 = icmp ult i64 %412, %129, !dbg !2269
  br i1 %413, label %414, label %419, !dbg !2272

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2269
  %416 = and i8 %415, 7, !dbg !2269
  %417 = or i8 %416, 48, !dbg !2269
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2269
  store i8 %417, i8* %418, align 1, !dbg !2269, !tbaa !923
  br label %419, !dbg !2269

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %420, metadata !1884, metadata !DIExpression()), !dbg !1947
  %421 = and i8 %374, 7, !dbg !2273
  %422 = or i8 %421, 48, !dbg !2274
  call void @llvm.dbg.value(metadata i8 %422, metadata !1894, metadata !DIExpression()), !dbg !2033
  br label %432, !dbg !2275

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2276
  %425 = icmp eq i8 %424, 0, !dbg !2276
  br i1 %425, label %432, label %426, !dbg !2277

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2278
  br i1 %427, label %428, label %430, !dbg !2281

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2278
  store i8 92, i8* %429, align 1, !dbg !2278, !tbaa !923
  br label %430, !dbg !2278

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %431, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !2016
  br label %432, !dbg !2282

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2283
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1955
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2284
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2285
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2287
  call void @llvm.dbg.value(metadata i8 %437, metadata !1900, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %436, metadata !1899, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 %435, metadata !1894, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %434, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %433, metadata !1884, metadata !DIExpression()), !dbg !1947
  %438 = add i64 %371, 1, !dbg !2288
  %439 = icmp ugt i64 %369, %438, !dbg !2290
  br i1 %439, label %440, label %562, !dbg !2291

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2292
  %442 = icmp ne i8 %441, 0, !dbg !2292
  %443 = and i8 %437, 1, !dbg !2292
  %444 = icmp eq i8 %443, 0, !dbg !2292
  %445 = and i1 %442, %444, !dbg !2292
  br i1 %445, label %446, label %457, !dbg !2292

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2295
  br i1 %447, label %448, label %450, !dbg !2299

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2295
  store i8 39, i8* %449, align 1, !dbg !2295, !tbaa !923
  br label %450, !dbg !2295

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %451, metadata !1884, metadata !DIExpression()), !dbg !1947
  %452 = icmp ult i64 %451, %129, !dbg !2300
  br i1 %452, label %453, label %455, !dbg !2303

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2300
  store i8 39, i8* %454, align 1, !dbg !2300, !tbaa !923
  br label %455, !dbg !2300

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %456, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1955
  br label %457, !dbg !2304

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2305
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2006
  call void @llvm.dbg.value(metadata i8 %459, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %458, metadata !1884, metadata !DIExpression()), !dbg !1947
  %460 = icmp ult i64 %458, %129, !dbg !2306
  br i1 %460, label %461, label %463, !dbg !2308

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2306
  store i8 %435, i8* %462, align 1, !dbg !2306, !tbaa !923
  br label %463, !dbg !2306

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %464, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %438, metadata !1883, metadata !DIExpression()), !dbg !2007
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2309
  %466 = load i8, i8* %465, align 1, !dbg !2309, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %466, metadata !1894, metadata !DIExpression()), !dbg !2033
  br label %370, !dbg !2310, !llvm.loop !2311

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2314
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2006
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1948
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2315
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2006
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2006
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2031
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2031
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2031
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %476, metadata !1901, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8 %475, metadata !1900, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %155, metadata !1899, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 %474, metadata !1894, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %473, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %472, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %471, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %470, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %469, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %468, metadata !1883, metadata !DIExpression()), !dbg !2007
  br i1 %105, label %489, label %478, !dbg !2316

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
  br i1 %112, label %490, label %512, !dbg !2318

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2319

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
  %501 = lshr i8 %494, 5, !dbg !2320
  %502 = zext i8 %501 to i64, !dbg !2320
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2321
  %504 = load i32, i32* %503, align 4, !dbg !2321, !tbaa !977
  %505 = and i8 %494, 31, !dbg !2322
  %506 = zext i8 %505 to i32, !dbg !2322
  %507 = shl i32 1, %506, !dbg !2323
  %508 = and i32 %504, %507, !dbg !2323
  %509 = icmp eq i32 %508, 0, !dbg !2323
  %510 = icmp eq i8 %155, 0, !dbg !2324
  %511 = and i1 %510, %509, !dbg !2325
  br i1 %511, label %562, label %524, !dbg !2325

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
  %523 = icmp eq i8 %155, 0, !dbg !2324
  br i1 %523, label %562, label %524, !dbg !2326

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2327
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2006
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1948
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2315
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1955
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1956
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2328
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2031
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %532, metadata !1901, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8 %531, metadata !1894, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %530, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %529, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %528, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %527, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %526, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %525, metadata !1883, metadata !DIExpression()), !dbg !2007
  br i1 %110, label %534, label %661, !dbg !2331

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !2017
  %535 = and i8 %529, 1, !dbg !2333
  %536 = icmp eq i8 %535, 0, !dbg !2333
  %537 = and i1 %114, %536, !dbg !2333
  br i1 %537, label %538, label %554, !dbg !2333

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2335
  br i1 %539, label %540, label %542, !dbg !2339

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2335
  store i8 39, i8* %541, align 1, !dbg !2335, !tbaa !923
  br label %542, !dbg !2335

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %543, metadata !1884, metadata !DIExpression()), !dbg !1947
  %544 = icmp ult i64 %543, %533, !dbg !2340
  br i1 %544, label %545, label %547, !dbg !2343

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2340
  store i8 36, i8* %546, align 1, !dbg !2340, !tbaa !923
  br label %547, !dbg !2340

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %548, metadata !1884, metadata !DIExpression()), !dbg !1947
  %549 = icmp ult i64 %548, %533, !dbg !2344
  br i1 %549, label %550, label %552, !dbg !2347

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2344
  store i8 39, i8* %551, align 1, !dbg !2344, !tbaa !923
  br label %552, !dbg !2344

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %553, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 1, metadata !1891, metadata !DIExpression()), !dbg !1955
  br label %554, !dbg !2348

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2305
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2006
  call void @llvm.dbg.value(metadata i8 %556, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %555, metadata !1884, metadata !DIExpression()), !dbg !1947
  %557 = icmp ult i64 %555, %533, !dbg !2349
  br i1 %557, label %558, label %560, !dbg !2352

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2349
  store i8 92, i8* %559, align 1, !dbg !2349, !tbaa !923
  br label %560, !dbg !2349

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %561, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %572, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %571, metadata !1901, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8 %570, metadata !1900, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %569, metadata !1894, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %568, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %567, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %566, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %565, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %564, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %563, metadata !1883, metadata !DIExpression()), !dbg !2007
  br label %589, !dbg !2353

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2327
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2006
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1948
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2315
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1955
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1956
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2356
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2031
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2031
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %571, metadata !1901, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8 %570, metadata !1900, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %569, metadata !1894, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %568, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %567, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %566, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %565, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %564, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %563, metadata !1883, metadata !DIExpression()), !dbg !2007
  %573 = and i8 %567, 1, !dbg !2353
  %574 = icmp ne i8 %573, 0, !dbg !2353
  %575 = and i8 %570, 1, !dbg !2353
  %576 = icmp eq i8 %575, 0, !dbg !2353
  %577 = and i1 %574, %576, !dbg !2353
  br i1 %577, label %578, label %589, !dbg !2353

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2357
  br i1 %579, label %580, label %582, !dbg !2361

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2357
  store i8 39, i8* %581, align 1, !dbg !2357, !tbaa !923
  br label %582, !dbg !2357

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %583, metadata !1884, metadata !DIExpression()), !dbg !1947
  %584 = icmp ult i64 %583, %572, !dbg !2362
  br i1 %584, label %585, label %587, !dbg !2365

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2362
  store i8 39, i8* %586, align 1, !dbg !2362, !tbaa !923
  br label %587, !dbg !2362

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %588, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1955
  br label %589, !dbg !2366

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2305
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2006
  call void @llvm.dbg.value(metadata i8 %598, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %597, metadata !1884, metadata !DIExpression()), !dbg !1947
  %599 = icmp ult i64 %597, %590, !dbg !2367
  br i1 %599, label %600, label %602, !dbg !2370

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2367
  store i8 %592, i8* %601, align 1, !dbg !2367, !tbaa !923
  br label %602, !dbg !2367

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %603, metadata !1884, metadata !DIExpression()), !dbg !1947
  %604 = and i8 %591, 1, !dbg !2371
  %605 = icmp eq i8 %604, 0, !dbg !2371
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2373
  call void @llvm.dbg.value(metadata i8 %606, metadata !1893, metadata !DIExpression()), !dbg !1957
  br label %607, !dbg !2374

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2327
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2006
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1948
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2315
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1955
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2006
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1957
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %614, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %613, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %612, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %611, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %610, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %609, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %608, metadata !1883, metadata !DIExpression()), !dbg !2007
  %616 = add i64 %608, 1, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %616, metadata !1883, metadata !DIExpression()), !dbg !2007
  br label %121, !dbg !2376, !llvm.loop !2377

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %618, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %618, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %125, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %125, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %126, metadata !1891, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %127, metadata !1892, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %128, metadata !1893, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  %619 = icmp eq i64 %123, 0, !dbg !2379
  %620 = and i1 %114, %619, !dbg !2381
  %621 = xor i1 %620, true, !dbg !2381
  %622 = or i1 %110, %621, !dbg !2381
  br i1 %622, label %623, label %661, !dbg !2381

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2382
  %625 = xor i1 %624, true, !dbg !2382
  %626 = and i8 %127, 1, !dbg !2384
  %627 = icmp eq i8 %626, 0, !dbg !2384
  %628 = or i1 %627, %625, !dbg !2382
  br i1 %628, label %638, label %629, !dbg !2382

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2385
  %631 = icmp eq i8 %630, 0, !dbg !2385
  br i1 %631, label %634, label %632, !dbg !2388

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %618, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %618, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %618, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %618, metadata !1877, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* %95, metadata !1881, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %96, metadata !1882, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %124, metadata !1885, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %125, metadata !1877, metadata !DIExpression()), !dbg !1941
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2389
  br label %671, !dbg !2390

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2391
  %636 = icmp ne i64 %124, 0, !dbg !2393
  %637 = and i1 %636, %635, !dbg !2394
  br i1 %637, label %27, label %638, !dbg !2394

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %129, metadata !1875, metadata !DIExpression()), !dbg !1939
  %639 = icmp ne i8* %98, null, !dbg !2395
  %640 = and i1 %639, %110, !dbg !2397
  br i1 %640, label %641, label %656, !dbg !2397

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %123, metadata !1884, metadata !DIExpression()), !dbg !1947
  %642 = load i8, i8* %98, align 1, !dbg !2398, !tbaa !923
  %643 = icmp eq i8 %642, 0, !dbg !2401
  br i1 %643, label %656, label %644, !dbg !2401

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %647, metadata !1884, metadata !DIExpression()), !dbg !1947
  %648 = icmp ult i64 %647, %129, !dbg !2402
  br i1 %648, label %649, label %651, !dbg !2405

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2402
  store i8 %645, i8* %650, align 1, !dbg !2402, !tbaa !923
  br label %651, !dbg !2402

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2405
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %653, metadata !1886, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %652, metadata !1884, metadata !DIExpression()), !dbg !1947
  %654 = load i8, i8* %653, align 1, !dbg !2398, !tbaa !923
  %655 = icmp eq i8 %654, 0, !dbg !2401
  br i1 %655, label %656, label %644, !dbg !2401, !llvm.loop !2407

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1947
  call void @llvm.dbg.value(metadata i64 %657, metadata !1884, metadata !DIExpression()), !dbg !1947
  %658 = icmp ult i64 %657, %129, !dbg !2409
  br i1 %658, label %659, label %671, !dbg !2411

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2412
  store i8 0, i8* %660, align 1, !dbg !2413, !tbaa !923
  br label %671, !dbg !2412

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1875, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %663, metadata !1877, metadata !DIExpression()), !dbg !1941
  %665 = icmp ne i32 %662, 2, !dbg !2414
  %666 = icmp eq i8 %102, 0, !dbg !2416
  %667 = or i1 %665, %666, !dbg !2417
  call void @llvm.dbg.value(metadata i32 4, metadata !1878, metadata !DIExpression()), !dbg !1942
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %668, metadata !1878, metadata !DIExpression()), !dbg !1942
  %669 = and i32 %5, -3, !dbg !2418
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2419
  br label %671, !dbg !2420

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2421
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2422 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2426, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression()), !dbg !2431
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2432
  call void @llvm.dbg.value(metadata i8* %3, metadata !2428, metadata !DIExpression()), !dbg !2433
  %4 = icmp eq i8* %3, %0, !dbg !2434
  br i1 %4, label %5, label %71, !dbg !2436

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %6, metadata !2429, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8* %6, metadata !2439, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8* null, metadata !2445, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 85, metadata !2446, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 84, metadata !2447, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 70, metadata !2448, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 45, metadata !2449, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 56, metadata !2450, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 0, metadata !2452, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2453, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 0, metadata !2454, metadata !DIExpression()), !dbg !2467
  %7 = load i8, i8* %6, align 1, !dbg !2468, !tbaa !923
  %8 = and i8 %7, -33, !dbg !2468
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2468

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2470, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* null, metadata !2475, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 84, metadata !2476, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 70, metadata !2477, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 45, metadata !2478, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 56, metadata !2479, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2496
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2497
  %11 = load i8, i8* %10, align 1, !dbg !2497, !tbaa !923
  %12 = and i8 %11, -33, !dbg !2497
  %13 = icmp eq i8 %12, 84, !dbg !2497
  br i1 %13, label %14, label %68, !dbg !2497

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2499, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* null, metadata !2504, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 70, metadata !2505, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 45, metadata !2506, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 56, metadata !2507, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2508, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 0, metadata !2509, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2523
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2524
  %16 = load i8, i8* %15, align 1, !dbg !2524, !tbaa !923
  %17 = and i8 %16, -33, !dbg !2524
  %18 = icmp eq i8 %17, 70, !dbg !2524
  br i1 %18, label %19, label %68, !dbg !2524

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2526, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* null, metadata !2531, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 45, metadata !2532, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 56, metadata !2533, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2548
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2549
  %21 = load i8, i8* %20, align 1, !dbg !2549, !tbaa !923
  %22 = icmp eq i8 %21, 45, !dbg !2549
  br i1 %22, label %23, label %68, !dbg !2551

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2552, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* null, metadata !2557, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 56, metadata !2558, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2572
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2573
  %25 = load i8, i8* %24, align 1, !dbg !2573, !tbaa !923
  %26 = icmp eq i8 %25, 56, !dbg !2573
  br i1 %26, label %27, label %68, !dbg !2575

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2576, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* null, metadata !2581, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2584, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2594
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2595
  %29 = load i8, i8* %28, align 1, !dbg !2595, !tbaa !923
  %30 = icmp eq i8 %29, 0, !dbg !2595
  br i1 %30, label %31, label %68, !dbg !2597

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2598, !tbaa !923
  %33 = icmp eq i8 %32, 96, !dbg !2599
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2598
  br label %71, !dbg !2600

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2470, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8* null, metadata !2475, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 66, metadata !2476, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 49, metadata !2477, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 56, metadata !2478, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 48, metadata !2479, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 51, metadata !2480, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 48, metadata !2481, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2613
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2614
  %37 = load i8, i8* %36, align 1, !dbg !2614, !tbaa !923
  %38 = and i8 %37, -33, !dbg !2614
  %39 = icmp eq i8 %38, 66, !dbg !2614
  br i1 %39, label %40, label %68, !dbg !2614

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2499, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* null, metadata !2504, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8 49, metadata !2505, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8 56, metadata !2506, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 48, metadata !2507, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 51, metadata !2508, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 48, metadata !2509, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2624
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2625
  %42 = load i8, i8* %41, align 1, !dbg !2625, !tbaa !923
  %43 = icmp eq i8 %42, 49, !dbg !2625
  br i1 %43, label %44, label %68, !dbg !2626

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2526, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8* null, metadata !2531, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 56, metadata !2532, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 48, metadata !2533, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 51, metadata !2534, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 48, metadata !2535, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2635
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2636
  %46 = load i8, i8* %45, align 1, !dbg !2636, !tbaa !923
  %47 = icmp eq i8 %46, 56, !dbg !2636
  br i1 %47, label %48, label %68, !dbg !2637

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2552, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* null, metadata !2557, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 48, metadata !2558, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 51, metadata !2559, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 48, metadata !2560, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2645
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2646
  %50 = load i8, i8* %49, align 1, !dbg !2646, !tbaa !923
  %51 = icmp eq i8 %50, 48, !dbg !2646
  br i1 %51, label %52, label %68, !dbg !2647

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2576, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* null, metadata !2581, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 51, metadata !2582, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 48, metadata !2583, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 0, metadata !2584, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2654
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2655
  %54 = load i8, i8* %53, align 1, !dbg !2655, !tbaa !923
  %55 = icmp eq i8 %54, 51, !dbg !2655
  br i1 %55, label %56, label %68, !dbg !2656

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2657, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* null, metadata !2662, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 48, metadata !2663, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 0, metadata !2665, metadata !DIExpression()), !dbg !2673
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2674
  %58 = load i8, i8* %57, align 1, !dbg !2674, !tbaa !923
  %59 = icmp eq i8 %58, 48, !dbg !2674
  br i1 %59, label %60, label %68, !dbg !2676

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2677, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* null, metadata !2682, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 0, metadata !2684, metadata !DIExpression()), !dbg !2691
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2692
  %62 = load i8, i8* %61, align 1, !dbg !2692, !tbaa !923
  %63 = icmp eq i8 %62, 0, !dbg !2692
  br i1 %63, label %64, label %68, !dbg !2694

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2695, !tbaa !923
  %66 = icmp eq i8 %65, 96, !dbg !2696
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2695
  br label %71, !dbg !2697

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2698
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2699
  br label %71, !dbg !2700

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2701
  ret i8* %72, !dbg !2702
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2703 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %0, metadata !2713, metadata !DIExpression()) #11, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()) #11, !dbg !2728
  call void @llvm.dbg.value(metadata i64* null, metadata !2719, metadata !DIExpression()) #11, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2720, metadata !DIExpression()) #11, !dbg !2730
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2731
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2721, metadata !DIExpression()) #11, !dbg !2732
  %6 = tail call i32* @__errno_location() #17, !dbg !2733
  %7 = load i32, i32* %6, align 4, !dbg !2733, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %7, metadata !2722, metadata !DIExpression()) #11, !dbg !2734
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2735
  %9 = load i32, i32* %8, align 4, !dbg !2735, !tbaa !1807
  %10 = or i32 %9, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %10, metadata !2723, metadata !DIExpression()) #11, !dbg !2737
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2738
  %12 = load i32, i32* %11, align 8, !dbg !2738, !tbaa !1748
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2739
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2740
  %15 = load i8*, i8** %14, align 8, !dbg !2740, !tbaa !1833
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2741
  %17 = load i8*, i8** %16, align 8, !dbg !2741, !tbaa !1836
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2742
  %19 = add i64 %18, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %19, metadata !2724, metadata !DIExpression()) #11, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %19, metadata !2745, metadata !DIExpression()) #11, !dbg !2750
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %20, metadata !2725, metadata !DIExpression()) #11, !dbg !2753
  %21 = load i32, i32* %11, align 8, !dbg !2754, !tbaa !1748
  %22 = load i8*, i8** %14, align 8, !dbg !2755, !tbaa !1833
  %23 = load i8*, i8** %16, align 8, !dbg !2756, !tbaa !1836
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2757
  store i32 %7, i32* %6, align 4, !dbg !2758, !tbaa !977
  ret i8* %20, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2713, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64* %2, metadata !2719, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2720, metadata !DIExpression()), !dbg !2763
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2764
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2721, metadata !DIExpression()), !dbg !2765
  %7 = tail call i32* @__errno_location() #17, !dbg !2766
  %8 = load i32, i32* %7, align 4, !dbg !2766, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %8, metadata !2722, metadata !DIExpression()), !dbg !2767
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2768
  %10 = load i32, i32* %9, align 4, !dbg !2768, !tbaa !1807
  %11 = icmp ne i64* %2, null, !dbg !2769
  %12 = xor i1 %11, true, !dbg !2769
  %13 = zext i1 %12 to i32, !dbg !2769
  %14 = or i32 %10, %13, !dbg !2770
  call void @llvm.dbg.value(metadata i32 %14, metadata !2723, metadata !DIExpression()), !dbg !2771
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2772
  %16 = load i32, i32* %15, align 8, !dbg !2772, !tbaa !1748
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2773
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2774
  %19 = load i8*, i8** %18, align 8, !dbg !2774, !tbaa !1833
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2775
  %21 = load i8*, i8** %20, align 8, !dbg !2775, !tbaa !1836
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2776
  %23 = add i64 %22, 1, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %23, metadata !2724, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %23, metadata !2745, metadata !DIExpression()) #11, !dbg !2779
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %24, metadata !2725, metadata !DIExpression()), !dbg !2782
  %25 = load i32, i32* %15, align 8, !dbg !2783, !tbaa !1748
  %26 = load i8*, i8** %18, align 8, !dbg !2784, !tbaa !1833
  %27 = load i8*, i8** %20, align 8, !dbg !2785, !tbaa !1836
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2786
  store i32 %8, i32* %7, align 4, !dbg !2787, !tbaa !977
  br i1 %11, label %29, label %30, !dbg !2788

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2789, !tbaa !901
  br label %30, !dbg !2791

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2792
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2793 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2797, !tbaa !839
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2795, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 1, metadata !2796, metadata !DIExpression()), !dbg !2799
  %2 = load i32, i32* @nslots, align 4, !dbg !2800, !tbaa !977
  %3 = icmp sgt i32 %2, 1, !dbg !2803
  br i1 %3, label %4, label %12, !dbg !2804

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2796, metadata !DIExpression()), !dbg !2799
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2805
  %7 = load i8*, i8** %6, align 8, !dbg !2805, !tbaa !2806
  tail call void @free(i8* %7) #11, !dbg !2808
  %8 = add nuw nsw i64 %5, 1, !dbg !2809
  call void @llvm.dbg.value(metadata i32 undef, metadata !2796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2799
  %9 = load i32, i32* @nslots, align 4, !dbg !2800, !tbaa !977
  %10 = sext i32 %9 to i64, !dbg !2803
  %11 = icmp slt i64 %8, %10, !dbg !2803
  br i1 %11, label %4, label %12, !dbg !2804, !llvm.loop !2810

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2812
  %14 = load i8*, i8** %13, align 8, !dbg !2812, !tbaa !2806
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2814
  br i1 %15, label %17, label %16, !dbg !2815

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2816
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2818, !tbaa !2819
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2820, !tbaa !2806
  br label %17, !dbg !2821

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2822
  br i1 %18, label %21, label %19, !dbg !2824

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2825
  tail call void @free(i8* %20) #11, !dbg !2827
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2828, !tbaa !839
  br label %21, !dbg !2829

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2830, !tbaa !977
  ret void, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2832 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2839
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2840
  ret i8* %3, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %1, metadata !2847, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %2, metadata !2848, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2849, metadata !DIExpression()), !dbg !2864
  %5 = tail call i32* @__errno_location() #17, !dbg !2865
  %6 = load i32, i32* %5, align 4, !dbg !2865, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %6, metadata !2850, metadata !DIExpression()), !dbg !2866
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2867, !tbaa !839
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2851, metadata !DIExpression()), !dbg !2868
  %8 = icmp slt i32 %0, 0, !dbg !2869
  br i1 %8, label %9, label %10, !dbg !2871

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2872
  unreachable, !dbg !2872

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2873, !tbaa !977
  %12 = icmp sgt i32 %11, %0, !dbg !2874
  br i1 %12, label %34, label %13, !dbg !2875

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2876
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2855, metadata !DIExpression()), !dbg !2877
  %15 = icmp eq i32 %0, 2147483647, !dbg !2878
  br i1 %15, label %16, label %17, !dbg !2880

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2881
  unreachable, !dbg !2881

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2882
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2882
  %20 = add nsw i32 %0, 1, !dbg !2883
  %21 = sext i32 %20 to i64, !dbg !2884
  %22 = shl nsw i64 %21, 4, !dbg !2885
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2886
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2851, metadata !DIExpression()), !dbg !2868
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2887, !tbaa !839
  br i1 %14, label %25, label %26, !dbg !2888

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2889, !tbaa.struct !2891
  br label %26, !dbg !2892

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2893, !tbaa !977
  %28 = sext i32 %27 to i64, !dbg !2894
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2894
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2895
  %31 = sub nsw i32 %20, %27, !dbg !2896
  %32 = sext i32 %31 to i64, !dbg !2897
  %33 = shl nsw i64 %32, 4, !dbg !2898
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2895
  store i32 %20, i32* @nslots, align 4, !dbg !2899, !tbaa !977
  br label %34, !dbg !2900

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2901
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2851, metadata !DIExpression()), !dbg !2868
  %36 = sext i32 %0 to i64, !dbg !2902
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2903
  %38 = load i64, i64* %37, align 8, !dbg !2903, !tbaa !2819
  call void @llvm.dbg.value(metadata i64 %38, metadata !2856, metadata !DIExpression()), !dbg !2904
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2905
  %40 = load i8*, i8** %39, align 8, !dbg !2905, !tbaa !2806
  call void @llvm.dbg.value(metadata i8* %40, metadata !2858, metadata !DIExpression()), !dbg !2906
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2907
  %42 = load i32, i32* %41, align 4, !dbg !2907, !tbaa !1807
  %43 = or i32 %42, 1, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %43, metadata !2859, metadata !DIExpression()), !dbg !2909
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2910
  %45 = load i32, i32* %44, align 8, !dbg !2910, !tbaa !1748
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2911
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2912
  %48 = load i8*, i8** %47, align 8, !dbg !2912, !tbaa !1833
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2913
  %50 = load i8*, i8** %49, align 8, !dbg !2913, !tbaa !1836
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %51, metadata !2860, metadata !DIExpression()), !dbg !2915
  %52 = icmp ugt i64 %38, %51, !dbg !2916
  br i1 %52, label %63, label %53, !dbg !2918

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %54, metadata !2856, metadata !DIExpression()), !dbg !2904
  store i64 %54, i64* %37, align 8, !dbg !2921, !tbaa !2819
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2922
  br i1 %55, label %57, label %56, !dbg !2924

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2925
  br label %57, !dbg !2925

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2745, metadata !DIExpression()) #11, !dbg !2926
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %58, metadata !2858, metadata !DIExpression()), !dbg !2906
  store i8* %58, i8** %39, align 8, !dbg !2929, !tbaa !2806
  %59 = load i32, i32* %44, align 8, !dbg !2930, !tbaa !1748
  %60 = load i8*, i8** %47, align 8, !dbg !2931, !tbaa !1833
  %61 = load i8*, i8** %49, align 8, !dbg !2932, !tbaa !1836
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2933
  br label %63, !dbg !2934

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2935
  call void @llvm.dbg.value(metadata i8* %64, metadata !2858, metadata !DIExpression()), !dbg !2906
  store i32 %6, i32* %5, align 4, !dbg !2936, !tbaa !977
  ret i8* %64, !dbg !2937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %1, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %2, metadata !2944, metadata !DIExpression()), !dbg !2947
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2948
  ret i8* %4, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 0, metadata !2836, metadata !DIExpression()) #11, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()) #11, !dbg !2958
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2959
  ret i8* %2, !dbg !2960
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2961 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2965, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %1, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 0, metadata !2942, metadata !DIExpression()) #11, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #11, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()) #11, !dbg !2972
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2973
  ret i8* %3, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2975 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2979, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %1, metadata !2980, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8* %2, metadata !2981, metadata !DIExpression()), !dbg !2985
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2986
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2986
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2982, metadata !DIExpression(DW_OP_deref)), !dbg !2987
  call void @llvm.dbg.value(metadata i32 %1, metadata !2988, metadata !DIExpression()) #11, !dbg !2994
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2996, !alias.scope !2997
  %6 = icmp eq i32 %1, 10, !dbg !3000
  br i1 %6, label %7, label %8, !dbg !3002

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3003, !noalias !2997
  unreachable, !dbg !3003

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3004
  store i32 %1, i32* %9, align 8, !dbg !3005, !tbaa !1748, !alias.scope !2997
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2982, metadata !DIExpression(DW_OP_deref)), !dbg !2987
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2993, metadata !DIExpression(DW_OP_deref)), !dbg !2996
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3007
  ret i8* %10, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3009 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %1, metadata !3014, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* %2, metadata !3015, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %3, metadata !3016, metadata !DIExpression()), !dbg !3021
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3022
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %1, metadata !2988, metadata !DIExpression()) #11, !dbg !3024
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3026, !alias.scope !3027
  %7 = icmp eq i32 %1, 10, !dbg !3030
  br i1 %7, label %8, label %9, !dbg !3031

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3032, !noalias !3027
  unreachable, !dbg !3032

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3033
  store i32 %1, i32* %10, align 8, !dbg !3034, !tbaa !1748, !alias.scope !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2993, metadata !DIExpression(DW_OP_deref)), !dbg !3026
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3036
  ret i8* %11, !dbg !3037
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3038 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression()) #11, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()) #11, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()) #11, !dbg !3049
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3050
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3050
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2982, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()) #11, !dbg !3052
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3054, !alias.scope !3055
  %5 = icmp eq i32 %0, 10, !dbg !3058
  br i1 %5, label %6, label %7, !dbg !3059

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3060, !noalias !3055
  unreachable, !dbg !3060

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3061
  store i32 %0, i32* %8, align 8, !dbg !3062, !tbaa !1748, !alias.scope !3055
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2982, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2993, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3054
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3064
  ret i8* %9, !dbg !3065
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3066 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3070, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %1, metadata !3071, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %2, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()) #11, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression()) #11, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %1, metadata !3015, metadata !DIExpression()) #11, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %2, metadata !3016, metadata !DIExpression()) #11, !dbg !3080
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3081
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3017, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3082
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()) #11, !dbg !3083
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3085, !alias.scope !3086
  %6 = icmp eq i32 %0, 10, !dbg !3089
  br i1 %6, label %7, label %8, !dbg !3090

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3091, !noalias !3086
  unreachable, !dbg !3091

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3092
  store i32 %0, i32* %9, align 8, !dbg !3093, !tbaa !1748, !alias.scope !3086
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3017, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3082
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2993, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3085
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3094
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3095
  ret i8* %10, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3097 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %1, metadata !3102, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8 %2, metadata !3103, metadata !DIExpression()), !dbg !3107
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3108
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3109, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3104, metadata !DIExpression(DW_OP_deref)), !dbg !3111
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1767, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i8 %2, metadata !1768, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 1, metadata !1769, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %2, metadata !1770, metadata !DIExpression()), !dbg !3116
  %6 = lshr i8 %2, 5, !dbg !3117
  %7 = zext i8 %6 to i64, !dbg !3117
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3118
  call void @llvm.dbg.value(metadata i32* %8, metadata !1771, metadata !DIExpression()), !dbg !3119
  %9 = and i8 %2, 31, !dbg !3120
  %10 = zext i8 %9 to i32, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %10, metadata !1773, metadata !DIExpression()), !dbg !3121
  %11 = load i32, i32* %8, align 4, !dbg !3122, !tbaa !977
  %12 = lshr i32 %11, %10, !dbg !3123
  %13 = and i32 %12, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i32 %13, metadata !1774, metadata !DIExpression()), !dbg !3125
  %14 = xor i32 %13, 1, !dbg !3126
  %15 = shl i32 %14, %10, !dbg !3127
  %16 = xor i32 %15, %11, !dbg !3128
  store i32 %16, i32* %8, align 4, !dbg !3128, !tbaa !977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3104, metadata !DIExpression(DW_OP_deref)), !dbg !3111
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3129
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3130
  ret i8* %17, !dbg !3131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3132 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8 %1, metadata !3137, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #11, !dbg !3140
  call void @llvm.dbg.value(metadata i64 -1, metadata !3102, metadata !DIExpression()) #11, !dbg !3142
  call void @llvm.dbg.value(metadata i8 %1, metadata !3103, metadata !DIExpression()) #11, !dbg !3143
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3145, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1767, metadata !DIExpression()) #11, !dbg !3147
  call void @llvm.dbg.value(metadata i8 %1, metadata !1768, metadata !DIExpression()) #11, !dbg !3149
  call void @llvm.dbg.value(metadata i32 1, metadata !1769, metadata !DIExpression()) #11, !dbg !3150
  call void @llvm.dbg.value(metadata i8 %1, metadata !1770, metadata !DIExpression()) #11, !dbg !3151
  %5 = lshr i8 %1, 5, !dbg !3152
  %6 = zext i8 %5 to i64, !dbg !3152
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3153
  call void @llvm.dbg.value(metadata i32* %7, metadata !1771, metadata !DIExpression()) #11, !dbg !3154
  %8 = and i8 %1, 31, !dbg !3155
  %9 = zext i8 %8 to i32, !dbg !3155
  call void @llvm.dbg.value(metadata i32 %9, metadata !1773, metadata !DIExpression()) #11, !dbg !3156
  %10 = load i32, i32* %7, align 4, !dbg !3157, !tbaa !977
  %11 = lshr i32 %10, %9, !dbg !3158
  %12 = and i32 %11, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %12, metadata !1774, metadata !DIExpression()) #11, !dbg !3160
  %13 = xor i32 %12, 1, !dbg !3161
  %14 = shl i32 %13, %9, !dbg !3162
  %15 = xor i32 %14, %10, !dbg !3163
  store i32 %15, i32* %7, align 4, !dbg !3163, !tbaa !977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3146
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3164
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3165
  ret i8* %16, !dbg !3166
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3167 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3169, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i8* %0, metadata !3136, metadata !DIExpression()) #11, !dbg !3171
  call void @llvm.dbg.value(metadata i8 58, metadata !3137, metadata !DIExpression()) #11, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #11, !dbg !3174
  call void @llvm.dbg.value(metadata i64 -1, metadata !3102, metadata !DIExpression()) #11, !dbg !3176
  call void @llvm.dbg.value(metadata i8 58, metadata !3103, metadata !DIExpression()) #11, !dbg !3177
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3179, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1767, metadata !DIExpression()) #11, !dbg !3181
  call void @llvm.dbg.value(metadata i8 58, metadata !1768, metadata !DIExpression()) #11, !dbg !3183
  call void @llvm.dbg.value(metadata i32 1, metadata !1769, metadata !DIExpression()) #11, !dbg !3184
  call void @llvm.dbg.value(metadata i8 58, metadata !1770, metadata !DIExpression()) #11, !dbg !3185
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3186
  call void @llvm.dbg.value(metadata i32* %4, metadata !1771, metadata !DIExpression()) #11, !dbg !3187
  call void @llvm.dbg.value(metadata i32 26, metadata !1773, metadata !DIExpression()) #11, !dbg !3188
  %5 = load i32, i32* %4, align 4, !dbg !3189, !tbaa !977
  %6 = or i32 %5, 67108864, !dbg !3190
  store i32 %6, i32* %4, align 4, !dbg !3190, !tbaa !977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3180
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3191
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3192
  ret i8* %7, !dbg !3193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3194 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #11, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3102, metadata !DIExpression()) #11, !dbg !3202
  call void @llvm.dbg.value(metadata i8 58, metadata !3103, metadata !DIExpression()) #11, !dbg !3203
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3204
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3205, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1767, metadata !DIExpression()) #11, !dbg !3207
  call void @llvm.dbg.value(metadata i8 58, metadata !1768, metadata !DIExpression()) #11, !dbg !3209
  call void @llvm.dbg.value(metadata i32 1, metadata !1769, metadata !DIExpression()) #11, !dbg !3210
  call void @llvm.dbg.value(metadata i8 58, metadata !1770, metadata !DIExpression()) #11, !dbg !3211
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3212
  call void @llvm.dbg.value(metadata i32* %5, metadata !1771, metadata !DIExpression()) #11, !dbg !3213
  call void @llvm.dbg.value(metadata i32 26, metadata !1773, metadata !DIExpression()) #11, !dbg !3214
  %6 = load i32, i32* %5, align 4, !dbg !3215, !tbaa !977
  %7 = or i32 %6, 67108864, !dbg !3216
  store i32 %7, i32* %5, align 4, !dbg !3216, !tbaa !977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3104, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3206
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3217
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3218
  ret i8* %8, !dbg !3219
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3220 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %0, metadata !3222, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 %1, metadata !3223, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !3224, metadata !DIExpression()), !dbg !3230
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3231
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %1, metadata !2988, metadata !DIExpression()) #11, !dbg !3233
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3226
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3226, !alias.scope !3234
  %8 = icmp eq i32 %1, 10, !dbg !3237
  br i1 %8, label %9, label %10, !dbg !3238

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3239, !noalias !3234
  unreachable, !dbg !3239

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3226
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3232
  store i32 %1, i32* %11, align 8, !dbg !3232
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3232
  %13 = bitcast i32* %12 to i8*, !dbg !3232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3225, metadata !DIExpression(DW_OP_deref)), !dbg !3240
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1767, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8 58, metadata !1768, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 1, metadata !1769, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8 58, metadata !1770, metadata !DIExpression()), !dbg !3245
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3246
  call void @llvm.dbg.value(metadata i32* %14, metadata !1771, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i32 26, metadata !1773, metadata !DIExpression()), !dbg !3248
  %15 = load i32, i32* %14, align 4, !dbg !3249, !tbaa !977
  %16 = or i32 %15, 67108864, !dbg !3250
  store i32 %16, i32* %14, align 4, !dbg !3250, !tbaa !977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3225, metadata !DIExpression(DW_OP_deref)), !dbg !3240
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3251
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3252
  ret i8* %17, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3254 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8* %2, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %3, metadata !3261, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %0, metadata !3266, metadata !DIExpression()) #11, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %1, metadata !3271, metadata !DIExpression()) #11, !dbg !3278
  call void @llvm.dbg.value(metadata i8* %2, metadata !3272, metadata !DIExpression()) #11, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %3, metadata !3273, metadata !DIExpression()) #11, !dbg !3280
  call void @llvm.dbg.value(metadata i64 -1, metadata !3274, metadata !DIExpression()) #11, !dbg !3281
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3283, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3275, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1815, metadata !DIExpression()) #11, !dbg !3285
  call void @llvm.dbg.value(metadata i8* %1, metadata !1816, metadata !DIExpression()) #11, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %2, metadata !1817, metadata !DIExpression()) #11, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1815, metadata !DIExpression()) #11, !dbg !3285
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3289
  store i32 10, i32* %7, align 8, !dbg !3290, !tbaa !1748
  %8 = icmp ne i8* %1, null, !dbg !3291
  %9 = icmp ne i8* %2, null, !dbg !3292
  %10 = and i1 %8, %9, !dbg !3293
  br i1 %10, label %12, label %11, !dbg !3293

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3294
  unreachable, !dbg !3294

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3295
  store i8* %1, i8** %13, align 8, !dbg !3296, !tbaa !1833
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3297
  store i8* %2, i8** %14, align 8, !dbg !3298, !tbaa !1836
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3275, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3284
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3300
  ret i8* %15, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3267 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3266, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* %1, metadata !3271, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8* %2, metadata !3272, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8* %3, metadata !3273, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %4, metadata !3274, metadata !DIExpression()), !dbg !3306
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3307
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3308, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3275, metadata !DIExpression(DW_OP_deref)), !dbg !3309
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1815, metadata !DIExpression()) #11, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %1, metadata !1816, metadata !DIExpression()) #11, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %2, metadata !1817, metadata !DIExpression()) #11, !dbg !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1815, metadata !DIExpression()) #11, !dbg !3310
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3314
  store i32 10, i32* %8, align 8, !dbg !3315, !tbaa !1748
  %9 = icmp ne i8* %1, null, !dbg !3316
  %10 = icmp ne i8* %2, null, !dbg !3317
  %11 = and i1 %9, %10, !dbg !3318
  br i1 %11, label %13, label %12, !dbg !3318

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3319
  unreachable, !dbg !3319

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3320
  store i8* %1, i8** %14, align 8, !dbg !3321, !tbaa !1833
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3322
  store i8* %2, i8** %15, align 8, !dbg !3323, !tbaa !1836
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3275, metadata !DIExpression(DW_OP_deref)), !dbg !3309
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3324
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3325
  ret i8* %16, !dbg !3326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3327 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3331, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %1, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %2, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3258, metadata !DIExpression()) #11, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #11, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()) #11, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %2, metadata !3261, metadata !DIExpression()) #11, !dbg !3341
  call void @llvm.dbg.value(metadata i32 0, metadata !3266, metadata !DIExpression()) #11, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()) #11, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3272, metadata !DIExpression()) #11, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %2, metadata !3273, metadata !DIExpression()) #11, !dbg !3346
  call void @llvm.dbg.value(metadata i64 -1, metadata !3274, metadata !DIExpression()) #11, !dbg !3347
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3348
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3349, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3275, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3350
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1815, metadata !DIExpression()) #11, !dbg !3351
  call void @llvm.dbg.value(metadata i8* %0, metadata !1816, metadata !DIExpression()) #11, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %1, metadata !1817, metadata !DIExpression()) #11, !dbg !3354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1815, metadata !DIExpression()) #11, !dbg !3351
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3355
  store i32 10, i32* %6, align 8, !dbg !3356, !tbaa !1748
  %7 = icmp ne i8* %0, null, !dbg !3357
  %8 = icmp ne i8* %1, null, !dbg !3358
  %9 = and i1 %7, %8, !dbg !3359
  br i1 %9, label %11, label %10, !dbg !3359

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3360
  unreachable, !dbg !3360

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3361
  store i8* %0, i8** %12, align 8, !dbg !3362, !tbaa !1833
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3363
  store i8* %1, i8** %13, align 8, !dbg !3364, !tbaa !1836
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3275, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3350
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3365
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3366
  ret i8* %14, !dbg !3367
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3368 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3372, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8* %1, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %2, metadata !3374, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %3, metadata !3375, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i32 0, metadata !3266, metadata !DIExpression()) #11, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()) #11, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %1, metadata !3272, metadata !DIExpression()) #11, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %2, metadata !3273, metadata !DIExpression()) #11, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %3, metadata !3274, metadata !DIExpression()) #11, !dbg !3385
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3387, !tbaa.struct !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3275, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1815, metadata !DIExpression()) #11, !dbg !3389
  call void @llvm.dbg.value(metadata i8* %0, metadata !1816, metadata !DIExpression()) #11, !dbg !3391
  call void @llvm.dbg.value(metadata i8* %1, metadata !1817, metadata !DIExpression()) #11, !dbg !3392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1815, metadata !DIExpression()) #11, !dbg !3389
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3393
  store i32 10, i32* %7, align 8, !dbg !3394, !tbaa !1748
  %8 = icmp ne i8* %0, null, !dbg !3395
  %9 = icmp ne i8* %1, null, !dbg !3396
  %10 = and i1 %8, %9, !dbg !3397
  br i1 %10, label %12, label %11, !dbg !3397

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3398
  unreachable, !dbg !3398

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3399
  store i8* %0, i8** %13, align 8, !dbg !3400, !tbaa !1833
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3401
  store i8* %1, i8** %14, align 8, !dbg !3402, !tbaa !1836
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3275, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3388
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3403
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3404
  ret i8* %15, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8* %1, metadata !3411, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %2, metadata !3412, metadata !DIExpression()), !dbg !3415
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3416
  ret i8* %4, !dbg !3417
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3418 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 %1, metadata !3423, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 0, metadata !3410, metadata !DIExpression()) #11, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %0, metadata !3411, metadata !DIExpression()) #11, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %1, metadata !3412, metadata !DIExpression()) #11, !dbg !3429
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3430
  ret i8* %3, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3432 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3436, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %1, metadata !3437, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()) #11, !dbg !3440
  call void @llvm.dbg.value(metadata i8* %1, metadata !3411, metadata !DIExpression()) #11, !dbg !3442
  call void @llvm.dbg.value(metadata i64 -1, metadata !3412, metadata !DIExpression()) #11, !dbg !3443
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3444
  ret i8* %3, !dbg !3445
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3450, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i32 0, metadata !3436, metadata !DIExpression()) #11, !dbg !3452
  call void @llvm.dbg.value(metadata i8* %0, metadata !3437, metadata !DIExpression()) #11, !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3410, metadata !DIExpression()) #11, !dbg !3455
  call void @llvm.dbg.value(metadata i8* %0, metadata !3411, metadata !DIExpression()) #11, !dbg !3457
  call void @llvm.dbg.value(metadata i64 -1, metadata !3412, metadata !DIExpression()) #11, !dbg !3458
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3459
  ret i8* %2, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #7 !dbg !3461 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3466, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* %1, metadata !3467, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %2, metadata !3468, metadata !DIExpression()), !dbg !3478
  br label %4, !dbg !3479

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3480

; <label>:6:                                      ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3468, metadata !DIExpression()), !dbg !3478
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #11, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %7, metadata !3469, metadata !DIExpression()), !dbg !3481
  %8 = icmp sgt i64 %7, -1, !dbg !3482
  br i1 %8, label %17, label %9, !dbg !3484

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !3485
  %11 = load i32, i32* %10, align 4, !dbg !3485, !tbaa !977
  %12 = icmp eq i32 %11, 4, !dbg !3485
  br i1 %12, label %6, label %13, !dbg !3487, !llvm.loop !3488

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3491
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3493
  %16 = and i1 %15, %14, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %5, metadata !3468, metadata !DIExpression()), !dbg !3478
  br i1 %16, label %4, label %17

; <label>:17:                                     ; preds = %13, %6
  ret i64 %7, !dbg !3495
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mkstemp_safer(i8*) local_unnamed_addr #7 !dbg !3496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()), !dbg !3502
  %2 = tail call i32 @mkstemp(i8* %0) #11, !dbg !3503
  %3 = tail call i32 @fd_safer(i32 %2) #11, !dbg !3504
  ret i32 %3, !dbg !3505
}

declare i32 @mkstemp(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mkostemp_safer(i8*, i32) local_unnamed_addr #7 !dbg !3506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i32 %1, metadata !3511, metadata !DIExpression()), !dbg !3513
  %3 = tail call i32 @mkostemp(i8* %0, i32 %1) #11, !dbg !3514
  %4 = tail call i32 @fd_safer_flag(i32 %3, i32 %1) #11, !dbg !3515
  ret i32 %4, !dbg !3516
}

declare i32 @mkostemp(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_safer(i32) local_unnamed_addr #7 !dbg !3517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3522, metadata !DIExpression()), !dbg !3527
  %2 = icmp ult i32 %0, 3, !dbg !3528
  br i1 %2, label %3, label %8, !dbg !3528

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #11, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %4, metadata !3523, metadata !DIExpression()), !dbg !3530
  %5 = tail call i32* @__errno_location() #17, !dbg !3531
  %6 = load i32, i32* %5, align 4, !dbg !3531, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %6, metadata !3526, metadata !DIExpression()), !dbg !3532
  %7 = tail call i32 @close(i32 %0) #11, !dbg !3533
  store i32 %6, i32* %5, align 4, !dbg !3534, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %4, metadata !3522, metadata !DIExpression()), !dbg !3527
  br label %8, !dbg !3535

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3522, metadata !DIExpression()), !dbg !3527
  ret i32 %9, !dbg !3536
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3537 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3575, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8* %1, metadata !3576, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8* %2, metadata !3577, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %3, metadata !3578, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8** %4, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %5, metadata !3580, metadata !DIExpression()), !dbg !3586
  %7 = icmp eq i8* %1, null, !dbg !3587
  br i1 %7, label %10, label %8, !dbg !3589

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3590
  br label %12, !dbg !3590

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.99, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3591
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.100, i64 0, i64 0), i32 5) #11, !dbg !3592
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3592
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.101, i64 0, i64 0), i32 5) #11, !dbg !3593
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3593
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
  ], !dbg !3594

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3595
  unreachable, !dbg !3595

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.102, i64 0, i64 0), i32 5) #11, !dbg !3597
  %20 = load i8*, i8** %4, align 8, !dbg !3597, !tbaa !839
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3597
  br label %146, !dbg !3598

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.103, i64 0, i64 0), i32 5) #11, !dbg !3599
  %24 = load i8*, i8** %4, align 8, !dbg !3599, !tbaa !839
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3599
  %26 = load i8*, i8** %25, align 8, !dbg !3599, !tbaa !839
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3599
  br label %146, !dbg !3600

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.104, i64 0, i64 0), i32 5) #11, !dbg !3601
  %30 = load i8*, i8** %4, align 8, !dbg !3601, !tbaa !839
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3601
  %32 = load i8*, i8** %31, align 8, !dbg !3601, !tbaa !839
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3601
  %34 = load i8*, i8** %33, align 8, !dbg !3601, !tbaa !839
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3601
  br label %146, !dbg !3602

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.105, i64 0, i64 0), i32 5) #11, !dbg !3603
  %38 = load i8*, i8** %4, align 8, !dbg !3603, !tbaa !839
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3603
  %40 = load i8*, i8** %39, align 8, !dbg !3603, !tbaa !839
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3603
  %42 = load i8*, i8** %41, align 8, !dbg !3603, !tbaa !839
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3603
  %44 = load i8*, i8** %43, align 8, !dbg !3603, !tbaa !839
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3603
  br label %146, !dbg !3604

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.106, i64 0, i64 0), i32 5) #11, !dbg !3605
  %48 = load i8*, i8** %4, align 8, !dbg !3605, !tbaa !839
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3605
  %50 = load i8*, i8** %49, align 8, !dbg !3605, !tbaa !839
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3605
  %52 = load i8*, i8** %51, align 8, !dbg !3605, !tbaa !839
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3605
  %54 = load i8*, i8** %53, align 8, !dbg !3605, !tbaa !839
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3605
  %56 = load i8*, i8** %55, align 8, !dbg !3605, !tbaa !839
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3605
  br label %146, !dbg !3606

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.107, i64 0, i64 0), i32 5) #11, !dbg !3607
  %60 = load i8*, i8** %4, align 8, !dbg !3607, !tbaa !839
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3607
  %62 = load i8*, i8** %61, align 8, !dbg !3607, !tbaa !839
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3607
  %64 = load i8*, i8** %63, align 8, !dbg !3607, !tbaa !839
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3607
  %66 = load i8*, i8** %65, align 8, !dbg !3607, !tbaa !839
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3607
  %68 = load i8*, i8** %67, align 8, !dbg !3607, !tbaa !839
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3607
  %70 = load i8*, i8** %69, align 8, !dbg !3607, !tbaa !839
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3607
  br label %146, !dbg !3608

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.108, i64 0, i64 0), i32 5) #11, !dbg !3609
  %74 = load i8*, i8** %4, align 8, !dbg !3609, !tbaa !839
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3609
  %76 = load i8*, i8** %75, align 8, !dbg !3609, !tbaa !839
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3609
  %78 = load i8*, i8** %77, align 8, !dbg !3609, !tbaa !839
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3609
  %80 = load i8*, i8** %79, align 8, !dbg !3609, !tbaa !839
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3609
  %82 = load i8*, i8** %81, align 8, !dbg !3609, !tbaa !839
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3609
  %84 = load i8*, i8** %83, align 8, !dbg !3609, !tbaa !839
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3609
  %86 = load i8*, i8** %85, align 8, !dbg !3609, !tbaa !839
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3609
  br label %146, !dbg !3610

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.109, i64 0, i64 0), i32 5) #11, !dbg !3611
  %90 = load i8*, i8** %4, align 8, !dbg !3611, !tbaa !839
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3611
  %92 = load i8*, i8** %91, align 8, !dbg !3611, !tbaa !839
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3611
  %94 = load i8*, i8** %93, align 8, !dbg !3611, !tbaa !839
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3611
  %96 = load i8*, i8** %95, align 8, !dbg !3611, !tbaa !839
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3611
  %98 = load i8*, i8** %97, align 8, !dbg !3611, !tbaa !839
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3611
  %100 = load i8*, i8** %99, align 8, !dbg !3611, !tbaa !839
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3611
  %102 = load i8*, i8** %101, align 8, !dbg !3611, !tbaa !839
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3611
  %104 = load i8*, i8** %103, align 8, !dbg !3611, !tbaa !839
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3611
  br label %146, !dbg !3612

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.110, i64 0, i64 0), i32 5) #11, !dbg !3613
  %108 = load i8*, i8** %4, align 8, !dbg !3613, !tbaa !839
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3613
  %110 = load i8*, i8** %109, align 8, !dbg !3613, !tbaa !839
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3613
  %112 = load i8*, i8** %111, align 8, !dbg !3613, !tbaa !839
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3613
  %114 = load i8*, i8** %113, align 8, !dbg !3613, !tbaa !839
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3613
  %116 = load i8*, i8** %115, align 8, !dbg !3613, !tbaa !839
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3613
  %118 = load i8*, i8** %117, align 8, !dbg !3613, !tbaa !839
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3613
  %120 = load i8*, i8** %119, align 8, !dbg !3613, !tbaa !839
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3613
  %122 = load i8*, i8** %121, align 8, !dbg !3613, !tbaa !839
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3613
  %124 = load i8*, i8** %123, align 8, !dbg !3613, !tbaa !839
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3613
  br label %146, !dbg !3614

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.111, i64 0, i64 0), i32 5) #11, !dbg !3615
  %128 = load i8*, i8** %4, align 8, !dbg !3615, !tbaa !839
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3615
  %130 = load i8*, i8** %129, align 8, !dbg !3615, !tbaa !839
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3615
  %132 = load i8*, i8** %131, align 8, !dbg !3615, !tbaa !839
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3615
  %134 = load i8*, i8** %133, align 8, !dbg !3615, !tbaa !839
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3615
  %136 = load i8*, i8** %135, align 8, !dbg !3615, !tbaa !839
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3615
  %138 = load i8*, i8** %137, align 8, !dbg !3615, !tbaa !839
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3615
  %140 = load i8*, i8** %139, align 8, !dbg !3615, !tbaa !839
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3615
  %142 = load i8*, i8** %141, align 8, !dbg !3615, !tbaa !839
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3615
  %144 = load i8*, i8** %143, align 8, !dbg !3615, !tbaa !839
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3615
  br label %146, !dbg !3616

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3617
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3618 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3622, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8* %1, metadata !3623, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !3624, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i8* %3, metadata !3625, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8** %4, metadata !3626, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 0, metadata !3627, metadata !DIExpression()), !dbg !3633
  br label %6, !dbg !3634

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3636
  call void @llvm.dbg.value(metadata i64 %7, metadata !3627, metadata !DIExpression()), !dbg !3633
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3638
  %9 = load i8*, i8** %8, align 8, !dbg !3638, !tbaa !839
  %10 = icmp eq i8* %9, null, !dbg !3639
  %11 = add i64 %7, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %11, metadata !3627, metadata !DIExpression()), !dbg !3633
  br i1 %10, label %12, label %6, !dbg !3639, !llvm.loop !3641

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3627, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %7, metadata !3627, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %7, metadata !3627, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %7, metadata !3627, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %7, metadata !3627, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %7, metadata !3627, metadata !DIExpression()), !dbg !3633
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3643
  ret void, !dbg !3644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3645 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3656, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i8* %1, metadata !3657, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %2, metadata !3658, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8* %3, metadata !3659, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3660, metadata !DIExpression()), !dbg !3668
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3669
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3669
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3662, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 0, metadata !3661, metadata !DIExpression()), !dbg !3671
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3661, metadata !DIExpression()), !dbg !3671
  %11 = load i32, i32* %8, align 8, !dbg !3672
  %12 = icmp ult i32 %11, 41, !dbg !3672
  br i1 %12, label %13, label %18, !dbg !3672

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3672
  %15 = sext i32 %11 to i64, !dbg !3672
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3672
  %17 = add i32 %11, 8, !dbg !3672
  store i32 %17, i32* %8, align 8, !dbg !3672
  br label %21, !dbg !3672

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3672
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3672
  store i8* %20, i8** %10, align 8, !dbg !3672
  br label %21, !dbg !3672

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3672
  %25 = load i8*, i8** %24, align 8, !dbg !3672
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3675
  store i8* %25, i8** %26, align 16, !dbg !3676, !tbaa !839
  %27 = icmp eq i8* %25, null, !dbg !3677
  br i1 %27, label %30, label %28, !dbg !3678

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 1, metadata !3661, metadata !DIExpression()), !dbg !3671
  %29 = icmp ult i32 %22, 41, !dbg !3672
  br i1 %29, label %35, label %32, !dbg !3672

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3679
  call void @llvm.dbg.value(metadata i64 %31, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %31, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3680
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3681
  ret void, !dbg !3681

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3672
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3672
  store i8* %34, i8** %10, align 8, !dbg !3672
  br label %40, !dbg !3672

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3672
  %37 = sext i32 %22 to i64, !dbg !3672
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3672
  %39 = add i32 %22, 8, !dbg !3672
  store i32 %39, i32* %8, align 8, !dbg !3672
  br label %40, !dbg !3672

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3672
  %44 = load i8*, i8** %43, align 8, !dbg !3672
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3675
  store i8* %44, i8** %45, align 8, !dbg !3676, !tbaa !839
  %46 = icmp eq i8* %44, null, !dbg !3677
  br i1 %46, label %30, label %47, !dbg !3678

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 2, metadata !3661, metadata !DIExpression()), !dbg !3671
  %48 = icmp ult i32 %41, 41, !dbg !3672
  br i1 %48, label %52, label %49, !dbg !3672

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3672
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3672
  store i8* %51, i8** %10, align 8, !dbg !3672
  br label %57, !dbg !3672

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3672
  %54 = sext i32 %41 to i64, !dbg !3672
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3672
  %56 = add i32 %41, 8, !dbg !3672
  store i32 %56, i32* %8, align 8, !dbg !3672
  br label %57, !dbg !3672

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3672
  %61 = load i8*, i8** %60, align 8, !dbg !3672
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3675
  store i8* %61, i8** %62, align 16, !dbg !3676, !tbaa !839
  %63 = icmp eq i8* %61, null, !dbg !3677
  br i1 %63, label %30, label %64, !dbg !3678

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 3, metadata !3661, metadata !DIExpression()), !dbg !3671
  %65 = icmp ult i32 %58, 41, !dbg !3672
  br i1 %65, label %69, label %66, !dbg !3672

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3672
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3672
  store i8* %68, i8** %10, align 8, !dbg !3672
  br label %74, !dbg !3672

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3672
  %71 = sext i32 %58 to i64, !dbg !3672
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3672
  %73 = add i32 %58, 8, !dbg !3672
  store i32 %73, i32* %8, align 8, !dbg !3672
  br label %74, !dbg !3672

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3672
  %78 = load i8*, i8** %77, align 8, !dbg !3672
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3675
  store i8* %78, i8** %79, align 8, !dbg !3676, !tbaa !839
  %80 = icmp eq i8* %78, null, !dbg !3677
  br i1 %80, label %30, label %81, !dbg !3678

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 4, metadata !3661, metadata !DIExpression()), !dbg !3671
  %82 = icmp ult i32 %75, 41, !dbg !3672
  br i1 %82, label %86, label %83, !dbg !3672

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3672
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3672
  store i8* %85, i8** %10, align 8, !dbg !3672
  br label %91, !dbg !3672

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3672
  %88 = sext i32 %75 to i64, !dbg !3672
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3672
  %90 = add i32 %75, 8, !dbg !3672
  store i32 %90, i32* %8, align 8, !dbg !3672
  br label %91, !dbg !3672

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3672
  %95 = load i8*, i8** %94, align 8, !dbg !3672
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3675
  store i8* %95, i8** %96, align 16, !dbg !3676, !tbaa !839
  %97 = icmp eq i8* %95, null, !dbg !3677
  br i1 %97, label %30, label %98, !dbg !3678

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 5, metadata !3661, metadata !DIExpression()), !dbg !3671
  %99 = icmp ult i32 %92, 41, !dbg !3672
  br i1 %99, label %103, label %100, !dbg !3672

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3672
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3672
  store i8* %102, i8** %10, align 8, !dbg !3672
  br label %108, !dbg !3672

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3672
  %105 = sext i32 %92 to i64, !dbg !3672
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3672
  %107 = add i32 %92, 8, !dbg !3672
  store i32 %107, i32* %8, align 8, !dbg !3672
  br label %108, !dbg !3672

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3672
  %111 = load i8*, i8** %110, align 8, !dbg !3672
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3675
  store i8* %111, i8** %112, align 8, !dbg !3676, !tbaa !839
  %113 = icmp eq i8* %111, null, !dbg !3677
  br i1 %113, label %30, label %114, !dbg !3678

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 6, metadata !3661, metadata !DIExpression()), !dbg !3671
  %115 = load i8*, i8** %10, align 8, !dbg !3672
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3672
  store i8* %116, i8** %10, align 8, !dbg !3672
  %117 = bitcast i8* %115 to i8**, !dbg !3672
  %118 = load i8*, i8** %117, align 8, !dbg !3672
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3675
  store i8* %118, i8** %119, align 16, !dbg !3676, !tbaa !839
  %120 = icmp eq i8* %118, null, !dbg !3677
  br i1 %120, label %30, label %121, !dbg !3678

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 7, metadata !3661, metadata !DIExpression()), !dbg !3671
  %122 = load i8*, i8** %10, align 8, !dbg !3672
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3672
  store i8* %123, i8** %10, align 8, !dbg !3672
  %124 = bitcast i8* %122 to i8**, !dbg !3672
  %125 = load i8*, i8** %124, align 8, !dbg !3672
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3675
  store i8* %125, i8** %126, align 8, !dbg !3676, !tbaa !839
  %127 = icmp eq i8* %125, null, !dbg !3677
  br i1 %127, label %30, label %128, !dbg !3678

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 8, metadata !3661, metadata !DIExpression()), !dbg !3671
  %129 = load i8*, i8** %10, align 8, !dbg !3672
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3672
  store i8* %130, i8** %10, align 8, !dbg !3672
  %131 = bitcast i8* %129 to i8**, !dbg !3672
  %132 = load i8*, i8** %131, align 8, !dbg !3672
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3675
  store i8* %132, i8** %133, align 16, !dbg !3676, !tbaa !839
  %134 = icmp eq i8* %132, null, !dbg !3677
  br i1 %134, label %30, label %135, !dbg !3678

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3661, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 9, metadata !3661, metadata !DIExpression()), !dbg !3671
  %136 = load i8*, i8** %10, align 8, !dbg !3672
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3672
  store i8* %137, i8** %10, align 8, !dbg !3672
  %138 = bitcast i8* %136 to i8**, !dbg !3672
  %139 = load i8*, i8** %138, align 8, !dbg !3672
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3675
  store i8* %139, i8** %140, align 8, !dbg !3676, !tbaa !839
  %141 = icmp eq i8* %139, null, !dbg !3677
  %142 = select i1 %141, i64 9, i64 10, !dbg !3678
  br label %30, !dbg !3678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3682 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3686, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i8* %1, metadata !3687, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i8* %2, metadata !3688, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8* %3, metadata !3689, metadata !DIExpression()), !dbg !3698
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3699
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3699
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3690, metadata !DIExpression()), !dbg !3700
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3701
  call void @llvm.va_start(i8* nonnull %6), !dbg !3701
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3702
  call void @llvm.va_end(i8* nonnull %6), !dbg !3703
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3704
  ret void, !dbg !3704
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3705 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.114, i64 0, i64 0), i32 5) #11, !dbg !3706
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.115, i64 0, i64 0)) #11, !dbg !3706
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.116, i64 0, i64 0), i32 5) #11, !dbg !3707
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.117, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.118, i64 0, i64 0)) #11, !dbg !3707
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.119, i64 0, i64 0), i32 5) #11, !dbg !3708
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3708, !tbaa !839
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3708
  ret void, !dbg !3709
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3710 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3714, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3717
  %3 = udiv i64 9223372036854775807, %1, !dbg !3718
  %4 = icmp ult i64 %3, %0, !dbg !3718
  br i1 %4, label %5, label %6, !dbg !3720

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3721
  unreachable, !dbg !3721

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %7, metadata !3723, metadata !DIExpression()) #11, !dbg !3730
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %8, metadata !3729, metadata !DIExpression()) #11, !dbg !3733
  %9 = icmp eq i8* %8, null, !dbg !3734
  %10 = icmp ne i64 %7, 0, !dbg !3736
  %11 = and i1 %10, %9, !dbg !3737
  br i1 %11, label %12, label %13, !dbg !3737

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3738
  unreachable, !dbg !3738

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3724 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3723, metadata !DIExpression()), !dbg !3740
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %2, metadata !3729, metadata !DIExpression()), !dbg !3742
  %3 = icmp eq i8* %2, null, !dbg !3743
  %4 = icmp ne i64 %0, 0, !dbg !3744
  %5 = and i1 %4, %3, !dbg !3745
  br i1 %5, label %6, label %7, !dbg !3745

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3746
  unreachable, !dbg !3746

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3747
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3748 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 %1, metadata !3753, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %2, metadata !3754, metadata !DIExpression()), !dbg !3757
  %4 = udiv i64 9223372036854775807, %2, !dbg !3758
  %5 = icmp ult i64 %4, %1, !dbg !3758
  br i1 %5, label %6, label %7, !dbg !3760

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3761
  unreachable, !dbg !3761

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()) #11, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %8, metadata !3768, metadata !DIExpression()) #11, !dbg !3771
  %9 = icmp eq i64 %8, 0, !dbg !3772
  %10 = icmp ne i8* %0, null, !dbg !3774
  %11 = and i1 %10, %9, !dbg !3775
  br i1 %11, label %12, label %13, !dbg !3775

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3776
  br label %19, !dbg !3778

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3779
  call void @llvm.dbg.value(metadata i8* %14, metadata !3763, metadata !DIExpression()) #11, !dbg !3769
  %15 = icmp eq i8* %14, null, !dbg !3780
  %16 = icmp ne i64 %8, 0, !dbg !3782
  %17 = and i1 %16, %15, !dbg !3783
  br i1 %17, label %18, label %19, !dbg !3783

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3784
  unreachable, !dbg !3784

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3785
  ret i8* %20, !dbg !3786
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()), !dbg !3788
  %3 = icmp eq i64 %1, 0, !dbg !3789
  %4 = icmp ne i8* %0, null, !dbg !3790
  %5 = and i1 %4, %3, !dbg !3791
  br i1 %5, label %6, label %7, !dbg !3791

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3792
  br label %13, !dbg !3793

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %8, metadata !3763, metadata !DIExpression()), !dbg !3787
  %9 = icmp eq i8* %8, null, !dbg !3795
  %10 = icmp ne i64 %1, 0, !dbg !3796
  %11 = and i1 %10, %9, !dbg !3797
  br i1 %11, label %12, label %13, !dbg !3797

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3798
  unreachable, !dbg !3798

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3799
  ret i8* %14, !dbg !3800
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !373 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64* %1, metadata !379, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64 %2, metadata !380, metadata !DIExpression()), !dbg !3803
  %4 = load i64, i64* %1, align 8, !dbg !3804, !tbaa !901
  call void @llvm.dbg.value(metadata i64 %4, metadata !381, metadata !DIExpression()), !dbg !3805
  %5 = icmp eq i8* %0, null, !dbg !3806
  br i1 %5, label %6, label %20, !dbg !3808

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3809
  br i1 %7, label %8, label %13, !dbg !3812

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %9, metadata !381, metadata !DIExpression()), !dbg !3805
  %10 = icmp ugt i64 %2, 128, !dbg !3815
  %11 = zext i1 %10 to i64, !dbg !3815
  %12 = add nuw nsw i64 %9, %11, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %12, metadata !381, metadata !DIExpression()), !dbg !3805
  br label %13, !dbg !3817

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3818
  call void @llvm.dbg.value(metadata i64 %14, metadata !381, metadata !DIExpression()), !dbg !3805
  %15 = udiv i64 9223372036854775807, %2, !dbg !3819
  %16 = icmp ult i64 %15, %14, !dbg !3819
  br i1 %16, label %19, label %17, !dbg !3821

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !381, metadata !DIExpression()), !dbg !3805
  store i64 %14, i64* %1, align 8, !dbg !3822, !tbaa !901
  %18 = mul i64 %14, %2, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()) #11, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %28, metadata !3768, metadata !DIExpression()) #11, !dbg !3826
  br label %31, !dbg !3827

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3828
  unreachable, !dbg !3828

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3829
  %22 = icmp ugt i64 %21, %4, !dbg !3832
  br i1 %22, label %24, label %23, !dbg !3833

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3834
  unreachable, !dbg !3834

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3835
  %26 = add i64 %4, 1, !dbg !3836
  %27 = add i64 %26, %25, !dbg !3837
  call void @llvm.dbg.value(metadata i64 %27, metadata !381, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 %27, metadata !381, metadata !DIExpression()), !dbg !3805
  store i64 %27, i64* %1, align 8, !dbg !3822, !tbaa !901
  %28 = mul i64 %27, %2, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()) #11, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %28, metadata !3768, metadata !DIExpression()) #11, !dbg !3826
  %29 = icmp eq i64 %28, 0, !dbg !3838
  br i1 %29, label %30, label %31, !dbg !3827

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3839
  br label %38, !dbg !3840

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3841
  call void @llvm.dbg.value(metadata i8* %33, metadata !3763, metadata !DIExpression()) #11, !dbg !3824
  %34 = icmp eq i8* %33, null, !dbg !3842
  %35 = icmp ne i64 %32, 0, !dbg !3843
  %36 = and i1 %35, %34, !dbg !3844
  br i1 %36, label %37, label %38, !dbg !3844

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3845
  unreachable, !dbg !3845

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3846
  ret i8* %39, !dbg !3847
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3848 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3850, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %0, metadata !3723, metadata !DIExpression()) #11, !dbg !3852
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3854
  call void @llvm.dbg.value(metadata i8* %2, metadata !3729, metadata !DIExpression()) #11, !dbg !3855
  %3 = icmp eq i8* %2, null, !dbg !3856
  %4 = icmp ne i64 %0, 0, !dbg !3857
  %5 = and i1 %4, %3, !dbg !3858
  br i1 %5, label %6, label %7, !dbg !3858

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3859
  unreachable, !dbg !3859

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3865, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64* %1, metadata !3866, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()) #11, !dbg !3869
  call void @llvm.dbg.value(metadata i64* %1, metadata !379, metadata !DIExpression()) #11, !dbg !3871
  call void @llvm.dbg.value(metadata i64 1, metadata !380, metadata !DIExpression()) #11, !dbg !3872
  %3 = load i64, i64* %1, align 8, !dbg !3873, !tbaa !901
  call void @llvm.dbg.value(metadata i64 %3, metadata !381, metadata !DIExpression()) #11, !dbg !3874
  %4 = icmp eq i8* %0, null, !dbg !3875
  br i1 %4, label %5, label %12, !dbg !3876

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3877
  br i1 %6, label %9, label %7, !dbg !3878

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !381, metadata !DIExpression()) #11, !dbg !3874
  %8 = icmp slt i64 %3, 0, !dbg !3879
  br i1 %8, label %11, label %9, !dbg !3880

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !381, metadata !DIExpression()) #11, !dbg !3874
  store i64 %10, i64* %1, align 8, !dbg !3881, !tbaa !901
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()) #11, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %18, metadata !3768, metadata !DIExpression()) #11, !dbg !3884
  br label %21, !dbg !3885

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3886
  unreachable, !dbg !3886

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3887
  br i1 %13, label %15, label %14, !dbg !3888

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3889
  unreachable, !dbg !3889

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3890
  %17 = add i64 %3, 1, !dbg !3891
  %18 = add i64 %17, %16, !dbg !3892
  call void @llvm.dbg.value(metadata i64 %18, metadata !381, metadata !DIExpression()) #11, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %18, metadata !381, metadata !DIExpression()) #11, !dbg !3874
  store i64 %18, i64* %1, align 8, !dbg !3881, !tbaa !901
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()) #11, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %18, metadata !3768, metadata !DIExpression()) #11, !dbg !3884
  %19 = icmp eq i64 %18, 0, !dbg !3893
  br i1 %19, label %20, label %21, !dbg !3885

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3894
  br label %28, !dbg !3895

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %23, metadata !3763, metadata !DIExpression()) #11, !dbg !3882
  %24 = icmp eq i8* %23, null, !dbg !3897
  %25 = icmp ne i64 %22, 0, !dbg !3898
  %26 = and i1 %25, %24, !dbg !3899
  br i1 %26, label %27, label %28, !dbg !3899

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3900
  unreachable, !dbg !3900

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3901
  ret i8* %29, !dbg !3902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3903 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3905, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %0, metadata !3723, metadata !DIExpression()) #11, !dbg !3907
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %2, metadata !3729, metadata !DIExpression()) #11, !dbg !3910
  %3 = icmp eq i8* %2, null, !dbg !3911
  %4 = icmp ne i64 %0, 0, !dbg !3912
  %5 = and i1 %4, %3, !dbg !3913
  br i1 %5, label %6, label %7, !dbg !3913

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3914
  unreachable, !dbg !3914

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3915
  ret i8* %2, !dbg !3916
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3917 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3919, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %1, metadata !3920, metadata !DIExpression()), !dbg !3923
  %3 = udiv i64 9223372036854775807, %1, !dbg !3924
  %4 = icmp ult i64 %3, %0, !dbg !3924
  br i1 %4, label %8, label %5, !dbg !3926

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3927
  call void @llvm.dbg.value(metadata i8* %6, metadata !3921, metadata !DIExpression()), !dbg !3928
  %7 = icmp eq i8* %6, null, !dbg !3929
  br i1 %7, label %8, label %9, !dbg !3930

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3931
  unreachable, !dbg !3931

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3932
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3933 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3937, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i64 %1, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()) #11, !dbg !3941
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %3, metadata !3729, metadata !DIExpression()) #11, !dbg !3944
  %4 = icmp eq i8* %3, null, !dbg !3945
  %5 = icmp ne i64 %1, 0, !dbg !3946
  %6 = and i1 %5, %4, !dbg !3947
  br i1 %6, label %7, label %8, !dbg !3947

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3948
  unreachable, !dbg !3948

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3949
  ret i8* %3, !dbg !3950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3951 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3953, metadata !DIExpression()), !dbg !3954
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3955
  %3 = add i64 %2, 1, !dbg !3956
  call void @llvm.dbg.value(metadata i8* %0, metadata !3937, metadata !DIExpression()) #11, !dbg !3957
  call void @llvm.dbg.value(metadata i64 %3, metadata !3938, metadata !DIExpression()) #11, !dbg !3959
  call void @llvm.dbg.value(metadata i64 %3, metadata !3723, metadata !DIExpression()) #11, !dbg !3960
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3962
  call void @llvm.dbg.value(metadata i8* %4, metadata !3729, metadata !DIExpression()) #11, !dbg !3963
  %5 = icmp eq i8* %4, null, !dbg !3964
  %6 = icmp ne i64 %3, 0, !dbg !3965
  %7 = and i1 %6, %5, !dbg !3966
  br i1 %7, label %8, label %9, !dbg !3966

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3967
  unreachable, !dbg !3967

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3968
  ret i8* %4, !dbg !3969
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3970 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3972, !tbaa !977
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #11, !dbg !3973
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i64 0, i64 0), i8* %2) #11, !dbg !3974
  tail call void @abort() #15, !dbg !3975
  unreachable, !dbg !3975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3976 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3979, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %1, metadata !3980, metadata !DIExpression()), !dbg !3986
  %3 = icmp eq i64 %0, 0, !dbg !3987
  %4 = icmp eq i64 %1, 0, !dbg !3988
  %5 = or i1 %3, %4, !dbg !3989
  br i1 %5, label %12, label %6, !dbg !3989

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %7, metadata !3982, metadata !DIExpression()), !dbg !3991
  %8 = udiv i64 %7, %1, !dbg !3992
  %9 = icmp eq i64 %8, %0, !dbg !3994
  br i1 %9, label %12, label %10, !dbg !3995

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3996
  store i32 12, i32* %11, align 4, !dbg !3998, !tbaa !977
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3979, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %13, metadata !3980, metadata !DIExpression()), !dbg !3986
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %15, metadata !3981, metadata !DIExpression()), !dbg !4000
  br label %16, !dbg !4001

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4002
  ret i8* %17, !dbg !4003
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4004 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %1, metadata !4044, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 %2, metadata !4045, metadata !DIExpression()), !dbg !4051
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4052
  %5 = load i8*, i8** %4, align 8, !dbg !4052, !tbaa !4053
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4055
  %7 = load i8*, i8** %6, align 8, !dbg !4055, !tbaa !4056
  %8 = icmp eq i8* %5, %7, !dbg !4057
  br i1 %8, label %9, label %28, !dbg !4058

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4059
  %11 = load i8*, i8** %10, align 8, !dbg !4059, !tbaa !4060
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4061
  %13 = load i8*, i8** %12, align 8, !dbg !4061, !tbaa !4062
  %14 = icmp eq i8* %11, %13, !dbg !4063
  br i1 %14, label %15, label %28, !dbg !4064

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4065
  %17 = load i8*, i8** %16, align 8, !dbg !4065, !tbaa !4066
  %18 = icmp eq i8* %17, null, !dbg !4067
  br i1 %18, label %19, label %28, !dbg !4068

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4069
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %21, metadata !4046, metadata !DIExpression()), !dbg !4071
  %22 = icmp eq i64 %21, -1, !dbg !4072
  br i1 %22, label %30, label %23, !dbg !4074

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4075
  %25 = load i32, i32* %24, align 8, !dbg !4076, !tbaa !4077
  %26 = and i32 %25, -17, !dbg !4076
  store i32 %26, i32* %24, align 8, !dbg !4076, !tbaa !4077
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4078
  store i64 %21, i64* %27, align 8, !dbg !4079, !tbaa !4080
  br label %30, !dbg !4081

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4082
  br label %30, !dbg !4083

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4084
  ret i32 %31, !dbg !4085
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4086 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4103, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i8* %1, metadata !4104, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %2, metadata !4105, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4106, metadata !DIExpression()), !dbg !4115
  %6 = bitcast i32* %5 to i8*, !dbg !4116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4116
  %7 = icmp eq i32* %0, null, !dbg !4117
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4119
  call void @llvm.dbg.value(metadata i32* %8, metadata !4103, metadata !DIExpression()), !dbg !4112
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4120
  call void @llvm.dbg.value(metadata i64 %9, metadata !4107, metadata !DIExpression()), !dbg !4121
  %10 = icmp ugt i64 %9, -3, !dbg !4122
  %11 = icmp ne i64 %2, 0, !dbg !4123
  %12 = and i1 %11, %10, !dbg !4124
  br i1 %12, label %13, label %18, !dbg !4124

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4125
  br i1 %14, label %18, label %15, !dbg !4126

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4127, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %16, metadata !4109, metadata !DIExpression()), !dbg !4128
  %17 = zext i8 %16 to i32, !dbg !4129
  store i32 %17, i32* %8, align 4, !dbg !4130, !tbaa !977
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4132
  ret i64 %19, !dbg !4132
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4133 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4172, metadata !DIExpression()), !dbg !4177
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4178
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4179, metadata !DIExpression()), !dbg !4183
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4185
  %4 = load i32, i32* %3, align 8, !dbg !4185, !tbaa !4077
  %5 = and i32 %4, 32, !dbg !4185
  %6 = icmp eq i32 %5, 0, !dbg !4186
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4187
  %8 = icmp ne i32 %7, 0, !dbg !4188
  br i1 %6, label %9, label %19, !dbg !4189

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4191
  %11 = xor i1 %8, true, !dbg !4192
  %12 = or i1 %10, %11, !dbg !4192
  %13 = sext i1 %8 to i32, !dbg !4192
  br i1 %12, label %22, label %14, !dbg !4192

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4193
  %16 = load i32, i32* %15, align 4, !dbg !4193, !tbaa !977
  %17 = icmp ne i32 %16, 9, !dbg !4194
  %18 = sext i1 %17 to i32, !dbg !4195
  br label %22, !dbg !4195

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4196

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4198
  store i32 0, i32* %21, align 4, !dbg !4200, !tbaa !977
  br label %22, !dbg !4198

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4201
  ret i32 %23, !dbg !4202
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #12 !dbg !4203 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4206, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8* %0, metadata !4207, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8 0, metadata !4209, metadata !DIExpression()), !dbg !4212
  br label %2, !dbg !4213

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !4214
  call void @llvm.dbg.value(metadata i8* %3, metadata !4207, metadata !DIExpression()), !dbg !4211
  %4 = load i8, i8* %3, align 1, !dbg !4215, !tbaa !923
  %5 = icmp eq i8 %4, 47, !dbg !4215
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !4216
  call void @llvm.dbg.value(metadata i8* %6, metadata !4207, metadata !DIExpression()), !dbg !4211
  br i1 %5, label %2, label %7, !dbg !4213, !llvm.loop !4217

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !4218
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !4211
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !4221
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !4222
  call void @llvm.dbg.value(metadata i8 %11, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i8* %10, metadata !4208, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i8* %9, metadata !4207, metadata !DIExpression()), !dbg !4211
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !4226

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !4227
  %14 = icmp eq i8 %13, 0, !dbg !4227
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !4229
  %16 = select i1 %14, i8 %11, i8 0, !dbg !4229
  br label %17, !dbg !4229

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !4214
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !4214
  call void @llvm.dbg.value(metadata i8 %19, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i8* %18, metadata !4207, metadata !DIExpression()), !dbg !4211
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !4230
  call void @llvm.dbg.value(metadata i8* %20, metadata !4208, metadata !DIExpression()), !dbg !4225
  %21 = load i8, i8* %20, align 1, !dbg !4218, !tbaa !923
  br label %7, !dbg !4231, !llvm.loop !4232

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !4207, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8* %9, metadata !4207, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8* %9, metadata !4207, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8* %9, metadata !4207, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8* %9, metadata !4207, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8* %9, metadata !4207, metadata !DIExpression()), !dbg !4211
  ret i8* %9, !dbg !4234
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #12 !dbg !4235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4239, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i64 0, metadata !4241, metadata !DIExpression()), !dbg !4243
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4244
  call void @llvm.dbg.value(metadata i64 %2, metadata !4240, metadata !DIExpression()), !dbg !4246
  br label %3, !dbg !4247

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !4248
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  %5 = icmp ugt i64 %4, 1, !dbg !4250
  br i1 %5, label %6, label %11, !dbg !4251

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !4252
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !4252
  %9 = load i8, i8* %8, align 1, !dbg !4252, !tbaa !923
  %10 = icmp eq i8 %9, 47, !dbg !4252
  br i1 %10, label %3, label %11, !dbg !4253, !llvm.loop !4254

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %4, metadata !4240, metadata !DIExpression()), !dbg !4246
  ret i64 %4, !dbg !4256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_safer_flag(i32, i32) local_unnamed_addr #7 !dbg !4257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4262, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 %1, metadata !4263, metadata !DIExpression()), !dbg !4269
  %3 = icmp ult i32 %0, 3, !dbg !4270
  br i1 %3, label %4, label %9, !dbg !4270

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 %0, i32 %1) #11, !dbg !4271
  call void @llvm.dbg.value(metadata i32 %5, metadata !4264, metadata !DIExpression()), !dbg !4272
  %6 = tail call i32* @__errno_location() #17, !dbg !4273
  %7 = load i32, i32* %6, align 4, !dbg !4273, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %7, metadata !4267, metadata !DIExpression()), !dbg !4274
  %8 = tail call i32 @close(i32 %0) #11, !dbg !4275
  store i32 %7, i32* %6, align 4, !dbg !4276, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %5, metadata !4262, metadata !DIExpression()), !dbg !4268
  br label %9, !dbg !4277

; <label>:9:                                      ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4262, metadata !DIExpression()), !dbg !4268
  ret i32 %10, !dbg !4278
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer_flag(i32, i32) local_unnamed_addr #7 !dbg !4279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4282, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata i32 %1, metadata !4283, metadata !DIExpression()), !dbg !4285
  %3 = and i32 %1, 524288, !dbg !4286
  %4 = icmp eq i32 %3, 0, !dbg !4287
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4287
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 %5, i32 3) #11, !dbg !4288
  ret i32 %6, !dbg !4289
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4295, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i8 1, metadata !4296, metadata !DIExpression()), !dbg !4299
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4300
  call void @llvm.dbg.value(metadata i8* %2, metadata !4297, metadata !DIExpression()), !dbg !4301
  %3 = icmp eq i8* %2, null, !dbg !4302
  br i1 %3, label %11, label %4, !dbg !4304

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0)) #14, !dbg !4305
  %6 = icmp eq i32 %5, 0, !dbg !4310
  br i1 %6, label %10, label %7, !dbg !4311

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0)) #14, !dbg !4312
  %9 = icmp eq i32 %8, 0, !dbg !4313
  br i1 %9, label %10, label %11, !dbg !4314

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4296, metadata !DIExpression()), !dbg !4299
  br label %11, !dbg !4315

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4317 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4323
  call void @llvm.dbg.value(metadata i8* %1, metadata !4322, metadata !DIExpression()), !dbg !4324
  %2 = icmp eq i8* %1, null, !dbg !4325
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %3, metadata !4322, metadata !DIExpression()), !dbg !4324
  %4 = load i8, i8* %3, align 1, !dbg !4328, !tbaa !923
  %5 = icmp eq i8 %4, 0, !dbg !4332
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4333
  call void @llvm.dbg.value(metadata i8* %6, metadata !4322, metadata !DIExpression()), !dbg !4324
  ret i8* %6, !dbg !4334
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32) local_unnamed_addr #7 !dbg !4335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4338, metadata !DIExpression()), !dbg !4339
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11, !dbg !4340
  ret i32 %2, !dbg !4341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4342 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4381, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 0, metadata !4382, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 0, metadata !4384, metadata !DIExpression()), !dbg !4387
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %2, metadata !4383, metadata !DIExpression()), !dbg !4389
  %3 = icmp slt i32 %2, 0, !dbg !4390
  br i1 %3, label %4, label %6, !dbg !4392

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4393
  br label %24, !dbg !4394

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4395
  %8 = icmp eq i32 %7, 0, !dbg !4395
  br i1 %8, label %13, label %9, !dbg !4397

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4398
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4399
  %12 = icmp eq i64 %11, -1, !dbg !4400
  br i1 %12, label %16, label %13, !dbg !4401

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4402
  %15 = icmp eq i32 %14, 0, !dbg !4402
  br i1 %15, label %16, label %18, !dbg !4403

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4382, metadata !DIExpression()), !dbg !4386
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4404
  call void @llvm.dbg.value(metadata i32 %21, metadata !4384, metadata !DIExpression()), !dbg !4387
  br label %24, !dbg !4405

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4406
  %20 = load i32, i32* %19, align 4, !dbg !4406, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %20, metadata !4382, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i32 %20, metadata !4382, metadata !DIExpression()), !dbg !4386
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4404
  call void @llvm.dbg.value(metadata i32 %21, metadata !4384, metadata !DIExpression()), !dbg !4387
  %22 = icmp eq i32 %20, 0, !dbg !4407
  br i1 %22, label %24, label %23, !dbg !4405

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4409, !tbaa !977
  call void @llvm.dbg.value(metadata i32 -1, metadata !4384, metadata !DIExpression()), !dbg !4387
  br label %24, !dbg !4411

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4412
  ret i32 %25, !dbg !4413
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !314 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !322, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i32 %1, metadata !323, metadata !DIExpression()), !dbg !4415
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4416
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4416
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !324, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i32 -1, metadata !335, metadata !DIExpression()), !dbg !4418
  call void @llvm.va_start(i8* nonnull %4), !dbg !4419
  %5 = icmp eq i32 %1, 1030, !dbg !4420
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4421
  %7 = load i32, i32* %6, align 16, !dbg !4421
  %8 = icmp ult i32 %7, 41, !dbg !4421
  br i1 %5, label %9, label %58, !dbg !4420

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4422

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4422
  %12 = load i8*, i8** %11, align 16, !dbg !4422
  %13 = sext i32 %7 to i64, !dbg !4422
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4422
  %15 = add i32 %7, 8, !dbg !4422
  store i32 %15, i32* %6, align 16, !dbg !4422
  br label %20, !dbg !4422

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4422
  %18 = load i8*, i8** %17, align 8, !dbg !4422
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4422
  store i8* %19, i8** %17, align 8, !dbg !4422
  br label %20, !dbg !4422

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4422
  %23 = load i32, i32* %22, align 4, !dbg !4422
  call void @llvm.dbg.value(metadata i32 %23, metadata !336, metadata !DIExpression()), !dbg !4423
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4424, !tbaa !977
  %25 = icmp sgt i32 %24, -1, !dbg !4426
  br i1 %25, label %26, label %38, !dbg !4427

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !4428
  call void @llvm.dbg.value(metadata i32 %27, metadata !335, metadata !DIExpression()), !dbg !4418
  %28 = icmp sgt i32 %27, -1, !dbg !4430
  br i1 %28, label %33, label %29, !dbg !4432

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !4433
  %31 = load i32, i32* %30, align 4, !dbg !4433, !tbaa !977
  %32 = icmp eq i32 %31, 22, !dbg !4434
  br i1 %32, label %34, label %33, !dbg !4435

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4436, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %44, metadata !335, metadata !DIExpression()), !dbg !4418
  br label %74, !dbg !4438

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %35, metadata !335, metadata !DIExpression()), !dbg !4418
  %36 = icmp slt i32 %35, 0, !dbg !4441
  br i1 %36, label %74, label %37, !dbg !4443

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4444, !tbaa !977
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4445
  call void @llvm.dbg.value(metadata i32 %39, metadata !335, metadata !DIExpression()), !dbg !4418
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4446
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !4447
  call void @llvm.dbg.value(metadata i32 %44, metadata !335, metadata !DIExpression()), !dbg !4418
  %45 = icmp sgt i32 %44, -1, !dbg !4448
  %46 = and i1 %45, %43, !dbg !4438
  br i1 %46, label %47, label %74, !dbg !4438

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !4449
  call void @llvm.dbg.value(metadata i32 %48, metadata !339, metadata !DIExpression()), !dbg !4450
  %49 = icmp slt i32 %48, 0, !dbg !4451
  br i1 %49, label %54, label %50, !dbg !4452

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !4453
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #11, !dbg !4454
  %53 = icmp eq i32 %52, -1, !dbg !4455
  br i1 %53, label %54, label %74, !dbg !4456

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !4457
  %56 = load i32, i32* %55, align 4, !dbg !4457, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %56, metadata !342, metadata !DIExpression()), !dbg !4458
  %57 = call i32 @close(i32 %44) #11, !dbg !4459
  store i32 %56, i32* %55, align 4, !dbg !4460, !tbaa !977
  call void @llvm.dbg.value(metadata i32 -1, metadata !335, metadata !DIExpression()), !dbg !4418
  br label %74, !dbg !4461

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !4462

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4462
  %61 = load i8*, i8** %60, align 16, !dbg !4462
  %62 = sext i32 %7 to i64, !dbg !4462
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !4462
  %64 = add i32 %7, 8, !dbg !4462
  store i32 %64, i32* %6, align 16, !dbg !4462
  br label %69, !dbg !4462

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4462
  %67 = load i8*, i8** %66, align 8, !dbg !4462
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4462
  store i8* %68, i8** %66, align 8, !dbg !4462
  br label %69, !dbg !4462

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !4462
  %72 = load i8*, i8** %71, align 8, !dbg !4462
  call void @llvm.dbg.value(metadata i8* %72, metadata !345, metadata !DIExpression()), !dbg !4463
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #11, !dbg !4464
  call void @llvm.dbg.value(metadata i32 %73, metadata !335, metadata !DIExpression()), !dbg !4418
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !4421
  call void @llvm.dbg.value(metadata i32 %75, metadata !335, metadata !DIExpression()), !dbg !4418
  call void @llvm.va_end(i8* nonnull %4), !dbg !4465
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4466
  ret i32 %75, !dbg !4467
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4468 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4507, metadata !DIExpression()), !dbg !4508
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4509
  br i1 %2, label %6, label %3, !dbg !4511

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4512
  %5 = icmp eq i32 %4, 0, !dbg !4512
  br i1 %5, label %6, label %8, !dbg !4513

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4514
  br label %17, !dbg !4515

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4516, metadata !DIExpression()) #11, !dbg !4521
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4523
  %10 = load i32, i32* %9, align 8, !dbg !4523, !tbaa !4077
  %11 = and i32 %10, 256, !dbg !4525
  %12 = icmp eq i32 %11, 0, !dbg !4525
  br i1 %12, label %15, label %13, !dbg !4526

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4527
  br label %15, !dbg !4527

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4528
  br label %17, !dbg !4529

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4530
  ret i32 %18, !dbg !4531
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !213, !219, !227, !347, !234, !241, !350, !357, !359, !361, !305, !368, !385, !387, !389, !391, !394, !396, !399, !401, !403, !405, !794, !796, !318, !798}
!llvm.ident = !{!800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800}
!llvm.module.flags = !{!801, !802, !803, !804, !805}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 80, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !31)
!3 = !DIFile(filename: "src/tac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!20 = !{!21, !23, !24, !28}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 62, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!32, !0, !54, !56, !58, !60, !62, !64, !66, !91, !96, !110, !180, !182, !192, !205, !207}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "default_file_list", scope: !34, file: !3, line: 612, type: !51, isLocal: true, isDefinition: true)
!34 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 603, type: !35, isLocal: false, isDefinition: true, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !39)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !37, !38}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!39 = !{!40, !41, !42, !43, !44, !46, !47, !48}
!40 = !DILocalVariable(name: "argc", arg: 1, scope: !34, file: !3, line: 603, type: !37)
!41 = !DILocalVariable(name: "argv", arg: 2, scope: !34, file: !3, line: 603, type: !38)
!42 = !DILocalVariable(name: "error_message", scope: !34, file: !3, line: 605, type: !26)
!43 = !DILocalVariable(name: "optc", scope: !34, file: !3, line: 606, type: !37)
!44 = !DILocalVariable(name: "ok", scope: !34, file: !3, line: 607, type: !45)
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DILocalVariable(name: "half_buffer_size", scope: !34, file: !3, line: 608, type: !28)
!47 = !DILocalVariable(name: "file", scope: !34, file: !3, line: 613, type: !24)
!48 = !DILocalVariable(name: "i", scope: !49, file: !3, line: 694, type: !28)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 694, column: 5)
!50 = distinct !DILexicalBlock(scope: !34, file: !3, line: 692, column: 3)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 2)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "separator_ends_record", scope: !2, file: !3, line: 87, type: !45, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "sentinel_length", scope: !2, file: !3, line: 92, type: !28, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "match_length", scope: !2, file: !3, line: 97, type: !28, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "G_buffer", scope: !2, file: !3, line: 100, type: !21, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "read_size", scope: !2, file: !3, line: 103, type: !28, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "G_buffer_size", scope: !2, file: !3, line: 108, type: !28, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "compiled_separator", scope: !2, file: !3, line: 111, type: !68, isLocal: true, isDefinition: true)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !69, line: 414, size: 512, elements: !70)
!69 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!70 = !{!71, !74, !76, !77, !79, !80, !83, !84, !85, !86, !87, !88, !89, !90}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !68, file: !69, line: 418, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !69, line: 418, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !68, file: !69, line: 421, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !69, line: 57, baseType: !30)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !68, file: !69, line: 424, baseType: !75, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !68, file: !69, line: 427, baseType: !78, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !69, line: 73, baseType: !30)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !68, file: !69, line: 432, baseType: !21, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !68, file: !69, line: 438, baseType: !81, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !68, file: !69, line: 441, baseType: !28, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !68, file: !69, line: 447, baseType: !7, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !68, file: !69, line: 458, baseType: !7, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !68, file: !69, line: 462, baseType: !7, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !68, file: !69, line: 466, baseType: !7, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !68, file: !69, line: 470, baseType: !7, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !68, file: !69, line: 473, baseType: !7, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !68, file: !69, line: 476, baseType: !7, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "compiled_separator_fastmap", scope: !2, file: !3, line: 112, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 256)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 115, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1536, elements: !108)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !101, line: 50, size: 256, elements: !102)
!101 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !{!103, !104, !105, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 52, baseType: !26, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !100, file: !101, line: 55, baseType: !37, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !100, file: !101, line: 56, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !100, file: !101, line: 57, baseType: !37, size: 32, offset: 192)
!108 = !{!109}
!109 = !DISubrange(count: 6)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "tempfile", scope: !112, file: !3, line: 433, type: !21, isLocal: true, isDefinition: true)
!112 = distinct !DISubprogram(name: "temp_stream", scope: !3, file: !3, line: 431, type: !113, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !172)
!113 = !DISubroutineType(types: !114)
!114 = !{!45, !115, !38}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !118, line: 7, baseType: !119)
!118 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !120, line: 49, size: 1728, elements: !121)
!120 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !137, !139, !140, !141, !145, !147, !149, !153, !156, !158, !161, !164, !165, !166, !167, !168}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !119, file: !120, line: 51, baseType: !37, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !119, file: !120, line: 54, baseType: !21, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !119, file: !120, line: 55, baseType: !21, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !119, file: !120, line: 56, baseType: !21, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !119, file: !120, line: 57, baseType: !21, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !119, file: !120, line: 58, baseType: !21, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !119, file: !120, line: 59, baseType: !21, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !119, file: !120, line: 60, baseType: !21, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !119, file: !120, line: 61, baseType: !21, size: 64, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !119, file: !120, line: 64, baseType: !21, size: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !119, file: !120, line: 65, baseType: !21, size: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !119, file: !120, line: 66, baseType: !21, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !119, file: !120, line: 68, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !120, line: 36, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !119, file: !120, line: 70, baseType: !138, size: 64, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !119, file: !120, line: 72, baseType: !37, size: 32, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !119, file: !120, line: 73, baseType: !37, size: 32, offset: 928)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !119, file: !120, line: 74, baseType: !142, size: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !143, line: 150, baseType: !144)
!143 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!144 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !119, file: !120, line: 77, baseType: !146, size: 16, offset: 1024)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !119, file: !120, line: 78, baseType: !148, size: 8, offset: 1040)
!148 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !119, file: !120, line: 79, baseType: !150, size: 8, offset: 1048)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 1)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !119, file: !120, line: 81, baseType: !154, size: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !120, line: 43, baseType: null)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !119, file: !120, line: 89, baseType: !157, size: 64, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !143, line: 151, baseType: !144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !119, file: !120, line: 91, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !120, line: 37, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !119, file: !120, line: 92, baseType: !162, size: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !120, line: 38, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !119, file: !120, line: 93, baseType: !138, size: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !119, file: !120, line: 94, baseType: !23, size: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !119, file: !120, line: 95, baseType: !28, size: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !119, file: !120, line: 96, baseType: !37, size: 32, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !119, file: !120, line: 98, baseType: !169, size: 160, offset: 1568)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 20)
!172 = !{!173, !174, !175, !178, !179}
!173 = !DILocalVariable(name: "fp", arg: 1, scope: !112, file: !3, line: 431, type: !115)
!174 = !DILocalVariable(name: "file_name", arg: 2, scope: !112, file: !3, line: 431, type: !38)
!175 = !DILocalVariable(name: "t", scope: !176, file: !3, line: 437, type: !26)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 436, column: 5)
!177 = distinct !DILexicalBlock(scope: !112, file: !3, line: 435, column: 7)
!178 = !DILocalVariable(name: "tempdir", scope: !176, file: !3, line: 438, type: !26)
!179 = !DILocalVariable(name: "fd", scope: !176, file: !3, line: 455, type: !37)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "tmp_fp", scope: !112, file: !3, line: 434, type: !116, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "regs", scope: !2, file: !3, line: 113, type: !184, isLocal: true, isDefinition: true)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !69, line: 498, size: 192, elements: !185)
!185 = !{!186, !188, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !184, file: !69, line: 500, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !69, line: 56, baseType: !7)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !184, file: !69, line: 501, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !69, line: 491, baseType: !37)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !184, file: !69, line: 502, baseType: !189, size: 64, offset: 128)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "buffer", scope: !194, file: !3, line: 161, type: !202, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "output", scope: !3, file: !3, line: 159, type: !195, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !26, !26}
!197 = !{!198, !199, !200, !201}
!198 = !DILocalVariable(name: "start", arg: 1, scope: !194, file: !3, line: 159, type: !26)
!199 = !DILocalVariable(name: "past_end", arg: 2, scope: !194, file: !3, line: 159, type: !26)
!200 = !DILocalVariable(name: "bytes_to_add", scope: !194, file: !3, line: 163, type: !28)
!201 = !DILocalVariable(name: "bytes_available", scope: !194, file: !3, line: 164, type: !28)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 65536, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 8192)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "bytes_in_buffer", scope: !194, file: !3, line: 162, type: !28, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 83, type: !45, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!210 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "Version", scope: !213, file: !214, line: 2, type: !26, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, globals: !216)
!214 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!215 = !{}
!216 = !{!211}
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "file_name", scope: !219, file: !224, line: 46, type: !26, isLocal: true, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, globals: !221)
!220 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!221 = !{!217, !222}
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !219, file: !224, line: 56, type: !45, isLocal: true, isDefinition: true)
!224 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "exit_failure", scope: !227, file: !230, line: 24, type: !231, isLocal: false, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, globals: !229)
!228 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!229 = !{!225}
!230 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!231 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "program_name", scope: !234, file: !238, line: 33, type: !26, isLocal: false, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !236, globals: !237)
!235 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!236 = !{!23, !21}
!237 = !{!232}
!238 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !241, file: !268, line: 85, type: !300, isLocal: false, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !243, retainedTypes: !264, globals: !265)
!242 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!243 = !{!5, !244, !249}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !245)
!245 = !{!246, !247, !248}
!246 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!247 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!248 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !250, line: 46, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!252 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!253 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!254 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!255 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!256 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!257 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!258 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!259 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!260 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!261 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!262 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!263 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!264 = !{!37, !146, !28, !21}
!265 = !{!239, !266, !273, !285, !287, !289, !296, !298}
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !241, file: !268, line: 101, type: !269, isLocal: false, isDefinition: true)
!268 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 320, elements: !271)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!271 = !{!272}
!272 = !DISubrange(count: 10)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !241, file: !268, line: 1052, type: !275, isLocal: false, isDefinition: true)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !268, line: 65, size: 448, elements: !276)
!276 = !{!277, !278, !279, !283, !284}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !275, file: !268, line: 68, baseType: !5, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !268, line: 71, baseType: !37, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !275, file: !268, line: 75, baseType: !280, size: 256, offset: 64)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !275, file: !268, line: 78, baseType: !26, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !275, file: !268, line: 81, baseType: !26, size: 64, offset: 384)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !241, file: !268, line: 116, type: !275, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "slot0", scope: !241, file: !268, line: 842, type: !93, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "slotvec", scope: !241, file: !268, line: 845, type: !291, isLocal: true, isDefinition: true)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !268, line: 834, size: 128, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !292, file: !268, line: 836, baseType: !28, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !292, file: !268, line: 837, baseType: !21, size: 64, offset: 64)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "nslots", scope: !241, file: !268, line: 843, type: !37, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "slotvec0", scope: !241, file: !268, line: 844, type: !292, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 704, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 11)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !305, file: !308, line: 26, type: !309, isLocal: false, isDefinition: true)
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, globals: !307)
!306 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!307 = !{!303}
!308 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 376, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 47)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !314, file: !315, line: 339, type: !37, isLocal: true, isDefinition: true)
!314 = distinct !DISubprogram(name: "rpl_fcntl", scope: !315, file: !315, line: 276, type: !316, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !318, retainedNodes: !321)
!315 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!316 = !DISubroutineType(types: !317)
!317 = !{!37, !37, !37, null}
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, globals: !320)
!319 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!320 = !{!312}
!321 = !{!322, !323, !324, !335, !336, !339, !342, !345}
!322 = !DILocalVariable(name: "fd", arg: 1, scope: !314, file: !315, line: 276, type: !37)
!323 = !DILocalVariable(name: "action", arg: 2, scope: !314, file: !315, line: 276, type: !37)
!324 = !DILocalVariable(name: "arg", scope: !314, file: !315, line: 278, type: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !326, line: 30, baseType: !327)
!326 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !319, line: 278, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 192, elements: !151)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !319, line: 278, size: 192, elements: !330)
!330 = !{!331, !332, !333, !334}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !329, file: !319, line: 278, baseType: !7, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !329, file: !319, line: 278, baseType: !7, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !329, file: !319, line: 278, baseType: !23, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !329, file: !319, line: 278, baseType: !23, size: 64, offset: 128)
!335 = !DILocalVariable(name: "result", scope: !314, file: !315, line: 279, type: !37)
!336 = !DILocalVariable(name: "target", scope: !337, file: !315, line: 326, type: !37)
!337 = distinct !DILexicalBlock(scope: !338, file: !315, line: 325, column: 7)
!338 = distinct !DILexicalBlock(scope: !314, file: !315, line: 282, column: 5)
!339 = !DILocalVariable(name: "flags", scope: !340, file: !315, line: 363, type: !37)
!340 = distinct !DILexicalBlock(scope: !341, file: !315, line: 362, column: 11)
!341 = distinct !DILexicalBlock(scope: !337, file: !315, line: 361, column: 13)
!342 = !DILocalVariable(name: "saved_errno", scope: !343, file: !315, line: 366, type: !37)
!343 = distinct !DILexicalBlock(scope: !344, file: !315, line: 365, column: 15)
!344 = distinct !DILexicalBlock(scope: !340, file: !315, line: 364, column: 17)
!345 = !DILocalVariable(name: "p", scope: !346, file: !315, line: 408, type: !23)
!346 = distinct !DILexicalBlock(scope: !338, file: !315, line: 406, column: 7)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !349)
!348 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!349 = !{!23}
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !352)
!351 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!352 = !{!353}
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 40, baseType: !7, size: 32, elements: !355)
!354 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!355 = !{!356}
!356 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!358 = !DIFile(filename: "./lib/mkstemp-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!360 = !DIFile(filename: "./lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !363, retainedTypes: !349)
!362 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!363 = !{!364}
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !365, line: 41, baseType: !7, size: 32, elements: !366)
!365 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!366 = !{!367}
!367 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !370, retainedTypes: !384)
!369 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!370 = !{!371}
!371 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !373, file: !372, line: 186, baseType: !7, size: 32, elements: !382)
!372 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!373 = distinct !DISubprogram(name: "x2nrealloc", scope: !372, file: !372, line: 174, type: !374, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !377)
!374 = !DISubroutineType(types: !375)
!375 = !{!23, !23, !376, !28}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!377 = !{!378, !379, !380, !381}
!378 = !DILocalVariable(name: "p", arg: 1, scope: !373, file: !372, line: 174, type: !23)
!379 = !DILocalVariable(name: "pn", arg: 2, scope: !373, file: !372, line: 174, type: !376)
!380 = !DILocalVariable(name: "s", arg: 3, scope: !373, file: !372, line: 174, type: !28)
!381 = !DILocalVariable(name: "n", scope: !373, file: !372, line: 176, type: !28)
!382 = !{!383}
!383 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!384 = !{!28, !21, !23}
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!386 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !349)
!388 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !349)
!390 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !393)
!392 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!393 = !{!28}
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!395 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !398)
!397 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!398 = !{!21}
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!400 = !DIFile(filename: "./lib/fd-safer-flag.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!402 = !DIFile(filename: "./lib/dup-safer-flag.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!404 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !407, retainedTypes: !349)
!406 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!407 = !{!408}
!408 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !409, line: 41, baseType: !7, size: 32, elements: !410)
!409 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!411 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!412 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!413 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!414 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!415 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!416 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!417 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!418 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!419 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!420 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!421 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!422 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!423 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!424 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!425 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!426 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!427 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!428 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!429 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!430 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!431 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!432 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!433 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!434 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!435 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!436 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!437 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!438 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!439 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!440 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!441 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!442 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!443 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!444 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!445 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!446 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!447 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!448 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!449 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!450 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!451 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!452 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!453 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!454 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!455 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!456 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!457 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!458 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!459 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!460 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!519 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!522 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!523 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!524 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!525 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!526 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!527 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!528 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!529 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!530 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!531 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!532 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!533 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!606 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!679 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!680 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!681 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!682 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!683 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!684 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!685 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!686 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!687 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!688 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!689 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!690 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!691 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!692 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!693 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!695 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!696 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!697 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!698 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!699 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!700 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!726 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!727 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!728 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!729 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!730 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!735 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!736 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!737 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!738 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!794 = distinct !DICompileUnit(language: DW_LANG_C99, file: !795, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!795 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!796 = distinct !DICompileUnit(language: DW_LANG_C99, file: !797, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215)
!797 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!798 = distinct !DICompileUnit(language: DW_LANG_C99, file: !799, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !349)
!799 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!800 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!801 = !{i32 2, !"Dwarf Version", i32 4}
!802 = !{i32 2, !"Debug Info Version", i32 3}
!803 = !{i32 1, !"wchar_size", i32 4}
!804 = !{i32 7, !"PIC Level", i32 2}
!805 = !{i32 7, !"PIE Level", i32 2}
!806 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 126, type: !807, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !37}
!809 = !{!810}
!810 = !DILocalVariable(name: "status", arg: 1, scope: !806, file: !3, line: 126, type: !37)
!811 = !DILocalVariable(name: "infomap", scope: !812, file: !813, line: 632, type: !827)
!812 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !813, file: !813, line: 630, type: !814, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !816)
!813 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!814 = !DISubroutineType(types: !815)
!815 = !{null, !26}
!816 = !{!817, !811, !818, !819, !826}
!817 = !DILocalVariable(name: "program", arg: 1, scope: !812, file: !813, line: 630, type: !26)
!818 = !DILocalVariable(name: "node", scope: !812, file: !813, line: 642, type: !26)
!819 = !DILocalVariable(name: "map_prog", scope: !812, file: !813, line: 643, type: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !812, file: !813, line: 632, size: 128, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !822, file: !813, line: 632, baseType: !26, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !822, file: !813, line: 632, baseType: !26, size: 64, offset: 64)
!826 = !DILocalVariable(name: "lc_messages", scope: !812, file: !813, line: 655, type: !26)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 896, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 7)
!830 = !DILocation(line: 632, column: 67, scope: !812, inlinedAt: !831)
!831 = distinct !DILocation(line: 150, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 131, column: 5)
!833 = distinct !DILexicalBlock(scope: !806, file: !3, line: 128, column: 7)
!834 = !DILocation(line: 126, column: 12, scope: !806)
!835 = !DILocation(line: 128, column: 14, scope: !833)
!836 = !DILocation(line: 128, column: 7, scope: !806)
!837 = !DILocation(line: 129, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !3, line: 129, column: 5)
!839 = !{!840, !840, i64 0}
!840 = !{!"any pointer", !841, i64 0}
!841 = !{!"omnipotent char", !842, i64 0}
!842 = !{!"Simple C/C++ TBAA"}
!843 = !DILocation(line: 132, column: 7, scope: !832)
!844 = !DILocation(line: 136, column: 7, scope: !832)
!845 = !DILocation(line: 580, column: 3, scope: !846, inlinedAt: !849)
!846 = distinct !DISubprogram(name: "emit_stdin_note", scope: !813, file: !813, line: 578, type: !847, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !215)
!847 = !DISubroutineType(types: !848)
!848 = !{null}
!849 = distinct !DILocation(line: 140, column: 7, scope: !832)
!850 = !DILocation(line: 587, column: 3, scope: !851, inlinedAt: !852)
!851 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !813, file: !813, line: 585, type: !847, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !215)
!852 = distinct !DILocation(line: 141, column: 7, scope: !832)
!853 = !DILocation(line: 143, column: 7, scope: !832)
!854 = !DILocation(line: 148, column: 7, scope: !832)
!855 = !DILocation(line: 149, column: 7, scope: !832)
!856 = !DILocation(line: 632, column: 3, scope: !812, inlinedAt: !831)
!857 = !DILocation(line: 643, column: 36, scope: !812, inlinedAt: !831)
!858 = !DILocation(line: 643, column: 25, scope: !812, inlinedAt: !831)
!859 = !DILocation(line: 645, column: 33, scope: !812, inlinedAt: !831)
!860 = !DILocation(line: 645, column: 3, scope: !812, inlinedAt: !831)
!861 = !DILocation(line: 646, column: 13, scope: !812, inlinedAt: !831)
!862 = !DILocation(line: 645, column: 20, scope: !812, inlinedAt: !831)
!863 = !{!864, !840, i64 0}
!864 = !{!"infomap", !840, i64 0, !840, i64 8}
!865 = !DILocation(line: 645, column: 10, scope: !812, inlinedAt: !831)
!866 = !DILocation(line: 645, column: 28, scope: !812, inlinedAt: !831)
!867 = distinct !{!867, !868, !869}
!868 = !DILocation(line: 645, column: 3, scope: !812)
!869 = !DILocation(line: 646, column: 13, scope: !812)
!870 = !DILocation(line: 648, column: 17, scope: !871, inlinedAt: !831)
!871 = distinct !DILexicalBlock(scope: !812, file: !813, line: 648, column: 7)
!872 = !{!864, !840, i64 8}
!873 = !DILocation(line: 648, column: 7, scope: !871, inlinedAt: !831)
!874 = !DILocation(line: 648, column: 7, scope: !812, inlinedAt: !831)
!875 = !DILocation(line: 642, column: 15, scope: !812, inlinedAt: !831)
!876 = !DILocation(line: 651, column: 3, scope: !812, inlinedAt: !831)
!877 = !DILocation(line: 655, column: 29, scope: !812, inlinedAt: !831)
!878 = !DILocation(line: 655, column: 15, scope: !812, inlinedAt: !831)
!879 = !DILocation(line: 656, column: 7, scope: !880, inlinedAt: !831)
!880 = distinct !DILexicalBlock(scope: !812, file: !813, line: 656, column: 7)
!881 = !DILocation(line: 656, column: 19, scope: !880, inlinedAt: !831)
!882 = !DILocation(line: 656, column: 22, scope: !880, inlinedAt: !831)
!883 = !DILocation(line: 656, column: 7, scope: !812, inlinedAt: !831)
!884 = !DILocation(line: 662, column: 7, scope: !885, inlinedAt: !831)
!885 = distinct !DILexicalBlock(scope: !880, file: !813, line: 657, column: 5)
!886 = !DILocation(line: 664, column: 5, scope: !885, inlinedAt: !831)
!887 = !DILocation(line: 665, column: 3, scope: !812, inlinedAt: !831)
!888 = !DILocation(line: 667, column: 3, scope: !812, inlinedAt: !831)
!889 = !DILocation(line: 669, column: 1, scope: !812, inlinedAt: !831)
!890 = !DILocation(line: 152, column: 3, scope: !806)
!891 = !DILocation(line: 603, column: 11, scope: !34)
!892 = !DILocation(line: 603, column: 24, scope: !34)
!893 = !DILocation(line: 616, column: 21, scope: !34)
!894 = !DILocation(line: 616, column: 3, scope: !34)
!895 = !DILocation(line: 617, column: 3, scope: !34)
!896 = !DILocation(line: 618, column: 3, scope: !34)
!897 = !DILocation(line: 619, column: 3, scope: !34)
!898 = !DILocation(line: 621, column: 3, scope: !34)
!899 = !DILocation(line: 623, column: 13, scope: !34)
!900 = !DILocation(line: 624, column: 19, scope: !34)
!901 = !{!902, !902, i64 0}
!902 = !{!"long", !841, i64 0}
!903 = !DILocation(line: 627, column: 3, scope: !34)
!904 = !DILocation(line: 627, column: 18, scope: !34)
!905 = !DILocation(line: 606, column: 7, scope: !34)
!906 = !DILocation(line: 633, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 630, column: 9)
!908 = distinct !DILexicalBlock(scope: !34, file: !3, line: 628, column: 5)
!909 = !DILocation(line: 635, column: 27, scope: !907)
!910 = !DILocation(line: 636, column: 11, scope: !907)
!911 = !DILocation(line: 638, column: 23, scope: !907)
!912 = !DILocation(line: 638, column: 21, scope: !907)
!913 = !DILocation(line: 639, column: 11, scope: !907)
!914 = distinct !{!914, !903, !915}
!915 = !DILocation(line: 645, column: 5, scope: !34)
!916 = !DILocation(line: 640, column: 9, scope: !907)
!917 = !DILocation(line: 641, column: 9, scope: !907)
!918 = !DILocation(line: 643, column: 11, scope: !907)
!919 = !DILocation(line: 647, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !34, file: !3, line: 647, column: 7)
!921 = !DILocation(line: 647, column: 23, scope: !920)
!922 = !DILocation(line: 0, scope: !920)
!923 = !{!841, !841, i64 0}
!924 = !DILocation(line: 647, column: 7, scope: !34)
!925 = !DILocation(line: 649, column: 11, scope: !926)
!926 = distinct !DILexicalBlock(scope: !920, file: !3, line: 648, column: 5)
!927 = !DILocation(line: 650, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !926, file: !3, line: 649, column: 11)
!929 = !DILocation(line: 653, column: 36, scope: !926)
!930 = !DILocation(line: 654, column: 34, scope: !926)
!931 = !DILocation(line: 656, column: 54, scope: !926)
!932 = !DILocation(line: 656, column: 23, scope: !926)
!933 = !DILocation(line: 605, column: 15, scope: !34)
!934 = !DILocation(line: 658, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !926, file: !3, line: 658, column: 11)
!936 = !DILocation(line: 658, column: 11, scope: !926)
!937 = !DILocation(line: 665, column: 10, scope: !34)
!938 = !DILocation(line: 659, column: 9, scope: !935)
!939 = !DILocation(line: 662, column: 38, scope: !920)
!940 = !DILocation(line: 662, column: 51, scope: !920)
!941 = !DILocation(line: 662, column: 36, scope: !920)
!942 = !DILocation(line: 662, column: 18, scope: !920)
!943 = !DILocation(line: 0, scope: !944)
!944 = distinct !DILexicalBlock(scope: !34, file: !3, line: 666, column: 5)
!945 = !DILocation(line: 665, column: 26, scope: !34)
!946 = !DILocation(line: 665, column: 3, scope: !34)
!947 = !DILocation(line: 667, column: 24, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 667, column: 11)
!949 = !DILocation(line: 667, column: 11, scope: !944)
!950 = !DILocation(line: 668, column: 9, scope: !948)
!951 = !DILocation(line: 669, column: 17, scope: !944)
!952 = !DILocation(line: 665, column: 39, scope: !34)
!953 = distinct !{!953, !946, !954}
!954 = !DILocation(line: 670, column: 5, scope: !34)
!955 = !DILocation(line: 671, column: 32, scope: !34)
!956 = !DILocation(line: 671, column: 50, scope: !34)
!957 = !DILocation(line: 608, column: 10, scope: !34)
!958 = !DILocation(line: 672, column: 21, scope: !34)
!959 = !DILocation(line: 672, column: 17, scope: !34)
!960 = !DILocation(line: 673, column: 20, scope: !961)
!961 = distinct !DILexicalBlock(scope: !34, file: !3, line: 673, column: 7)
!962 = !DILocation(line: 673, column: 59, scope: !961)
!963 = !DILocation(line: 673, column: 39, scope: !961)
!964 = !DILocation(line: 674, column: 5, scope: !961)
!965 = !DILocation(line: 675, column: 14, scope: !34)
!966 = !DILocation(line: 675, column: 12, scope: !34)
!967 = !DILocation(line: 676, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !34, file: !3, line: 676, column: 7)
!969 = !DILocation(line: 676, column: 7, scope: !34)
!970 = !DILocation(line: 678, column: 25, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 677, column: 5)
!972 = !DILocation(line: 678, column: 52, scope: !971)
!973 = !DILocation(line: 678, column: 7, scope: !971)
!974 = !DILocation(line: 680, column: 5, scope: !971)
!975 = !DILocation(line: 0, scope: !971)
!976 = !DILocation(line: 686, column: 11, scope: !34)
!977 = !{!978, !978, i64 0}
!978 = !{!"int", !841, i64 0}
!979 = !DILocation(line: 686, column: 18, scope: !34)
!980 = !DILocation(line: 687, column: 36, scope: !34)
!981 = !DILocation(line: 613, column: 22, scope: !34)
!982 = !DILocation(line: 607, column: 8, scope: !34)
!983 = !DILocation(line: 694, column: 17, scope: !49)
!984 = !DILocation(line: 694, column: 24, scope: !985)
!985 = distinct !DILexicalBlock(scope: !49, file: !3, line: 694, column: 5)
!986 = !DILocation(line: 694, column: 5, scope: !49)
!987 = !DILocation(line: 0, scope: !985)
!988 = !DILocation(line: 159, column: 21, scope: !194, inlinedAt: !989)
!989 = distinct !DILocation(line: 699, column: 3, scope: !34)
!990 = !DILocation(line: 159, column: 40, scope: !194, inlinedAt: !989)
!991 = !DILocation(line: 163, column: 10, scope: !194, inlinedAt: !989)
!992 = !DILocation(line: 164, column: 40, scope: !194, inlinedAt: !989)
!993 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !989)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 167, column: 5)
!995 = distinct !DILexicalBlock(scope: !194, file: !3, line: 166, column: 7)
!996 = !DILocation(line: 0, scope: !994, inlinedAt: !989)
!997 = !DILocation(line: 701, column: 23, scope: !998)
!998 = distinct !DILexicalBlock(scope: !34, file: !3, line: 701, column: 7)
!999 = !DILocalVariable(name: "filename", arg: 1, scope: !1000, file: !3, line: 563, type: !26)
!1000 = distinct !DISubprogram(name: "tac_file", scope: !3, file: !3, line: 563, type: !1001, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!45, !26}
!1003 = !{!999, !1004, !1005, !1008, !1009}
!1004 = !DILocalVariable(name: "ok", scope: !1000, file: !3, line: 565, type: !45)
!1005 = !DILocalVariable(name: "file_size", scope: !1000, file: !3, line: 566, type: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1007, line: 63, baseType: !142)
!1007 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1008 = !DILocalVariable(name: "fd", scope: !1000, file: !3, line: 567, type: !37)
!1009 = !DILocalVariable(name: "is_stdin", scope: !1000, file: !3, line: 568, type: !45)
!1010 = !DILocation(line: 563, column: 23, scope: !1000, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 695, column: 13, scope: !985)
!1012 = !DILocation(line: 568, column: 19, scope: !1000, inlinedAt: !1011)
!1013 = !DILocation(line: 570, column: 7, scope: !1000, inlinedAt: !1011)
!1014 = !DILocation(line: 567, column: 7, scope: !1000, inlinedAt: !1011)
!1015 = !DILocation(line: 574, column: 18, scope: !1016, inlinedAt: !1011)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 571, column: 5)
!1017 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 570, column: 7)
!1018 = !DILocation(line: 576, column: 5, scope: !1016, inlinedAt: !1011)
!1019 = !DILocation(line: 579, column: 12, scope: !1020, inlinedAt: !1011)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 578, column: 5)
!1021 = !DILocation(line: 580, column: 14, scope: !1022, inlinedAt: !1011)
!1022 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 580, column: 11)
!1023 = !DILocation(line: 580, column: 11, scope: !1020, inlinedAt: !1011)
!1024 = !DILocation(line: 582, column: 21, scope: !1025, inlinedAt: !1011)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 581, column: 9)
!1026 = !DILocation(line: 582, column: 28, scope: !1025, inlinedAt: !1011)
!1027 = !DILocation(line: 583, column: 18, scope: !1025, inlinedAt: !1011)
!1028 = !DILocation(line: 582, column: 11, scope: !1025, inlinedAt: !1011)
!1029 = !DILocation(line: 584, column: 11, scope: !1025, inlinedAt: !1011)
!1030 = !DILocation(line: 0, scope: !1020, inlinedAt: !1011)
!1031 = !DILocation(line: 588, column: 15, scope: !1000, inlinedAt: !1011)
!1032 = !DILocation(line: 566, column: 9, scope: !1000, inlinedAt: !1011)
!1033 = !DILocation(line: 590, column: 19, scope: !1000, inlinedAt: !1011)
!1034 = !DILocation(line: 590, column: 23, scope: !1000, inlinedAt: !1011)
!1035 = !DILocation(line: 590, column: 26, scope: !1000, inlinedAt: !1011)
!1036 = !DILocation(line: 590, column: 9, scope: !1000, inlinedAt: !1011)
!1037 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1038, file: !3, line: 546, type: !37)
!1038 = distinct !DISubprogram(name: "tac_nonseekable", scope: !3, file: !3, line: 546, type: !1039, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!45, !37, !26}
!1041 = !{!1037, !1042, !1043, !1044, !1045, !1046}
!1042 = !DILocalVariable(name: "file", arg: 2, scope: !1038, file: !3, line: 546, type: !26)
!1043 = !DILocalVariable(name: "tmp_stream", scope: !1038, file: !3, line: 548, type: !116)
!1044 = !DILocalVariable(name: "tmp_file", scope: !1038, file: !3, line: 549, type: !21)
!1045 = !DILocalVariable(name: "bytes_copied", scope: !1038, file: !3, line: 550, type: !1006)
!1046 = !DILocalVariable(name: "ok", scope: !1038, file: !3, line: 554, type: !45)
!1047 = !DILocation(line: 546, column: 22, scope: !1038, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 591, column: 11, scope: !1000, inlinedAt: !1011)
!1049 = !DILocation(line: 546, column: 44, scope: !1038, inlinedAt: !1048)
!1050 = !DILocation(line: 548, column: 9, scope: !1038, inlinedAt: !1048)
!1051 = !DILocation(line: 549, column: 9, scope: !1038, inlinedAt: !1048)
!1052 = !DILocalVariable(name: "g_tmp", arg: 1, scope: !1053, file: !3, line: 500, type: !115)
!1053 = distinct !DISubprogram(name: "copy_to_temp", scope: !3, file: !3, line: 500, type: !1054, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1006, !115, !38, !37, !26}
!1056 = !{!1052, !1057, !1058, !1059, !1060, !1061, !1062, !1066}
!1057 = !DILocalVariable(name: "g_tempfile", arg: 2, scope: !1053, file: !3, line: 500, type: !38)
!1058 = !DILocalVariable(name: "input_fd", arg: 3, scope: !1053, file: !3, line: 500, type: !37)
!1059 = !DILocalVariable(name: "file", arg: 4, scope: !1053, file: !3, line: 500, type: !26)
!1060 = !DILocalVariable(name: "fp", scope: !1053, file: !3, line: 502, type: !116)
!1061 = !DILocalVariable(name: "file_name", scope: !1053, file: !3, line: 503, type: !21)
!1062 = !DILocalVariable(name: "bytes_copied", scope: !1053, file: !3, line: 504, type: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1064, line: 102, baseType: !1065)
!1064 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !143, line: 72, baseType: !30)
!1066 = !DILocalVariable(name: "bytes_read", scope: !1067, file: !3, line: 510, type: !28)
!1067 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 509, column: 5)
!1068 = !DILocation(line: 500, column: 22, scope: !1053, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 550, column: 24, scope: !1038, inlinedAt: !1048)
!1070 = !DILocation(line: 500, column: 36, scope: !1053, inlinedAt: !1069)
!1071 = !DILocation(line: 500, column: 52, scope: !1053, inlinedAt: !1069)
!1072 = !DILocation(line: 500, column: 74, scope: !1053, inlinedAt: !1069)
!1073 = !DILocation(line: 504, column: 13, scope: !1053, inlinedAt: !1069)
!1074 = !DILocation(line: 502, column: 9, scope: !1053, inlinedAt: !1069)
!1075 = !DILocation(line: 503, column: 9, scope: !1053, inlinedAt: !1069)
!1076 = !DILocation(line: 431, column: 21, scope: !112, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 505, column: 8, scope: !1078, inlinedAt: !1069)
!1078 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 505, column: 7)
!1079 = !DILocation(line: 431, column: 32, scope: !112, inlinedAt: !1077)
!1080 = !DILocation(line: 435, column: 7, scope: !177, inlinedAt: !1077)
!1081 = !DILocation(line: 435, column: 16, scope: !177, inlinedAt: !1077)
!1082 = !DILocation(line: 435, column: 7, scope: !112, inlinedAt: !1077)
!1083 = !DILocation(line: 437, column: 23, scope: !176, inlinedAt: !1077)
!1084 = !DILocation(line: 437, column: 19, scope: !176, inlinedAt: !1077)
!1085 = !DILocation(line: 438, column: 29, scope: !176, inlinedAt: !1077)
!1086 = !DILocation(line: 438, column: 19, scope: !176, inlinedAt: !1077)
!1087 = !DILocation(line: 439, column: 18, scope: !176, inlinedAt: !1077)
!1088 = !DILocation(line: 439, column: 16, scope: !176, inlinedAt: !1077)
!1089 = !DILocation(line: 455, column: 16, scope: !176, inlinedAt: !1077)
!1090 = !DILocation(line: 455, column: 11, scope: !176, inlinedAt: !1077)
!1091 = !DILocation(line: 456, column: 14, scope: !1092, inlinedAt: !1077)
!1092 = distinct !DILexicalBlock(scope: !176, file: !3, line: 456, column: 11)
!1093 = !DILocation(line: 456, column: 11, scope: !176, inlinedAt: !1077)
!1094 = !DILocation(line: 458, column: 21, scope: !1095, inlinedAt: !1077)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 457, column: 9)
!1096 = !DILocation(line: 458, column: 28, scope: !1095, inlinedAt: !1077)
!1097 = !DILocation(line: 459, column: 18, scope: !1095, inlinedAt: !1077)
!1098 = !DILocation(line: 458, column: 11, scope: !1095, inlinedAt: !1077)
!1099 = !DILocation(line: 460, column: 11, scope: !1095, inlinedAt: !1077)
!1100 = !DILocation(line: 463, column: 16, scope: !176, inlinedAt: !1077)
!1101 = !DILocation(line: 463, column: 14, scope: !176, inlinedAt: !1077)
!1102 = !DILocation(line: 464, column: 13, scope: !1103, inlinedAt: !1077)
!1103 = distinct !DILexicalBlock(scope: !176, file: !3, line: 464, column: 11)
!1104 = !DILocation(line: 464, column: 11, scope: !176, inlinedAt: !1077)
!1105 = !DILocation(line: 466, column: 21, scope: !1106, inlinedAt: !1077)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 465, column: 9)
!1107 = !DILocation(line: 466, column: 28, scope: !1106, inlinedAt: !1077)
!1108 = !DILocation(line: 467, column: 18, scope: !1106, inlinedAt: !1077)
!1109 = !DILocation(line: 466, column: 11, scope: !1106, inlinedAt: !1077)
!1110 = !DILocation(line: 468, column: 11, scope: !1106, inlinedAt: !1077)
!1111 = !DILocation(line: 469, column: 19, scope: !1106, inlinedAt: !1077)
!1112 = !DILocation(line: 469, column: 11, scope: !1106, inlinedAt: !1077)
!1113 = !DILocation(line: 476, column: 34, scope: !176, inlinedAt: !1077)
!1114 = !DILocalVariable(name: "fn", arg: 1, scope: !1115, file: !3, line: 420, type: !26)
!1115 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !3, file: !3, line: 420, type: !1116, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !26, !116}
!1118 = !{!1114, !1119}
!1119 = !DILocalVariable(name: "fp", arg: 2, scope: !1115, file: !3, line: 420, type: !116)
!1120 = !DILocation(line: 420, column: 40, scope: !1115, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 476, column: 7, scope: !176, inlinedAt: !1077)
!1122 = !DILocation(line: 420, column: 50, scope: !1115, inlinedAt: !1121)
!1123 = !DILocation(line: 422, column: 3, scope: !1115, inlinedAt: !1121)
!1124 = !DILocation(line: 471, column: 17, scope: !1106, inlinedAt: !1077)
!1125 = !DILocation(line: 471, column: 11, scope: !1106, inlinedAt: !1077)
!1126 = !DILocation(line: 472, column: 20, scope: !1106, inlinedAt: !1077)
!1127 = !DILocation(line: 480, column: 7, scope: !1128, inlinedAt: !1077)
!1128 = distinct !DILexicalBlock(scope: !177, file: !3, line: 479, column: 5)
!1129 = !DILocation(line: 481, column: 19, scope: !1130, inlinedAt: !1077)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 481, column: 11)
!1131 = !DILocation(line: 481, column: 11, scope: !1130, inlinedAt: !1077)
!1132 = !DILocation(line: 481, column: 40, scope: !1130, inlinedAt: !1077)
!1133 = !DILocation(line: 482, column: 11, scope: !1130, inlinedAt: !1077)
!1134 = !DILocation(line: 482, column: 33, scope: !1130, inlinedAt: !1077)
!1135 = !DILocation(line: 482, column: 25, scope: !1130, inlinedAt: !1077)
!1136 = !DILocation(line: 482, column: 14, scope: !1130, inlinedAt: !1077)
!1137 = !DILocation(line: 482, column: 45, scope: !1130, inlinedAt: !1077)
!1138 = !DILocation(line: 481, column: 11, scope: !1128, inlinedAt: !1077)
!1139 = !DILocation(line: 484, column: 21, scope: !1140, inlinedAt: !1077)
!1140 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 483, column: 9)
!1141 = !DILocation(line: 484, column: 28, scope: !1140, inlinedAt: !1077)
!1142 = !DILocation(line: 485, column: 18, scope: !1140, inlinedAt: !1077)
!1143 = !DILocation(line: 484, column: 11, scope: !1140, inlinedAt: !1077)
!1144 = !DILocation(line: 486, column: 11, scope: !1140, inlinedAt: !1077)
!1145 = !DILocation(line: 490, column: 9, scope: !112, inlinedAt: !1077)
!1146 = !DILocation(line: 491, column: 16, scope: !112, inlinedAt: !1077)
!1147 = !DILocation(line: 505, column: 7, scope: !1053, inlinedAt: !1069)
!1148 = !DILocation(line: 510, column: 48, scope: !1067, inlinedAt: !1069)
!1149 = !DILocation(line: 510, column: 58, scope: !1067, inlinedAt: !1069)
!1150 = !DILocation(line: 510, column: 27, scope: !1067, inlinedAt: !1069)
!1151 = !DILocation(line: 510, column: 14, scope: !1067, inlinedAt: !1069)
!1152 = !DILocation(line: 511, column: 11, scope: !1067, inlinedAt: !1069)
!1153 = !DILocation(line: 515, column: 21, scope: !1154, inlinedAt: !1069)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 514, column: 9)
!1155 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 513, column: 11)
!1156 = !DILocation(line: 515, column: 28, scope: !1154, inlinedAt: !1069)
!1157 = !DILocation(line: 515, column: 49, scope: !1154, inlinedAt: !1069)
!1158 = !DILocation(line: 515, column: 11, scope: !1154, inlinedAt: !1069)
!1159 = !DILocation(line: 516, column: 11, scope: !1154, inlinedAt: !1069)
!1160 = !DILocation(line: 519, column: 11, scope: !1161, inlinedAt: !1069)
!1161 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 519, column: 11)
!1162 = !DILocation(line: 519, column: 48, scope: !1161, inlinedAt: !1069)
!1163 = !DILocation(line: 528, column: 20, scope: !1067, inlinedAt: !1069)
!1164 = !DILocation(line: 519, column: 11, scope: !1067, inlinedAt: !1069)
!1165 = !DILocation(line: 521, column: 21, scope: !1166, inlinedAt: !1069)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 520, column: 9)
!1167 = !DILocation(line: 521, column: 28, scope: !1166, inlinedAt: !1069)
!1168 = !DILocation(line: 521, column: 50, scope: !1166, inlinedAt: !1069)
!1169 = !DILocation(line: 521, column: 11, scope: !1166, inlinedAt: !1069)
!1170 = !DILocation(line: 522, column: 11, scope: !1166, inlinedAt: !1069)
!1171 = !DILocation(line: 531, column: 7, scope: !1172, inlinedAt: !1069)
!1172 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 531, column: 7)
!1173 = !DILocation(line: 531, column: 19, scope: !1172, inlinedAt: !1069)
!1174 = !DILocation(line: 531, column: 7, scope: !1053, inlinedAt: !1069)
!1175 = !DILocation(line: 533, column: 17, scope: !1176, inlinedAt: !1069)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 532, column: 5)
!1177 = !DILocation(line: 533, column: 24, scope: !1176, inlinedAt: !1069)
!1178 = !DILocation(line: 533, column: 46, scope: !1176, inlinedAt: !1069)
!1179 = !DILocation(line: 533, column: 7, scope: !1176, inlinedAt: !1069)
!1180 = !DILocation(line: 534, column: 7, scope: !1176, inlinedAt: !1069)
!1181 = !DILocation(line: 550, column: 9, scope: !1038, inlinedAt: !1048)
!1182 = !DILocation(line: 551, column: 20, scope: !1183, inlinedAt: !1048)
!1183 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 551, column: 7)
!1184 = !DILocation(line: 551, column: 7, scope: !1038, inlinedAt: !1048)
!1185 = !DILocation(line: 554, column: 27, scope: !1038, inlinedAt: !1048)
!1186 = !DILocation(line: 554, column: 48, scope: !1038, inlinedAt: !1048)
!1187 = !DILocation(line: 554, column: 13, scope: !1038, inlinedAt: !1048)
!1188 = !DILocation(line: 592, column: 11, scope: !1000, inlinedAt: !1011)
!1189 = !DILocation(line: 594, column: 17, scope: !1190, inlinedAt: !1011)
!1190 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 594, column: 7)
!1191 = !DILocation(line: 594, column: 20, scope: !1190, inlinedAt: !1011)
!1192 = !DILocation(line: 594, column: 31, scope: !1190, inlinedAt: !1011)
!1193 = !DILocation(line: 594, column: 7, scope: !1000, inlinedAt: !1011)
!1194 = !DILocation(line: 596, column: 17, scope: !1195, inlinedAt: !1011)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 595, column: 5)
!1196 = !DILocation(line: 596, column: 24, scope: !1195, inlinedAt: !1011)
!1197 = !DILocation(line: 596, column: 45, scope: !1195, inlinedAt: !1011)
!1198 = !DILocation(line: 596, column: 7, scope: !1195, inlinedAt: !1011)
!1199 = !DILocation(line: 565, column: 8, scope: !1000, inlinedAt: !1011)
!1200 = !DILocation(line: 598, column: 5, scope: !1195, inlinedAt: !1011)
!1201 = !DILocation(line: 0, scope: !1025, inlinedAt: !1011)
!1202 = !DILocation(line: 695, column: 13, scope: !985)
!1203 = !DILocation(line: 695, column: 10, scope: !985)
!1204 = !DILocation(line: 694, column: 33, scope: !985)
!1205 = distinct !{!1205, !986, !1206}
!1206 = !DILocation(line: 695, column: 30, scope: !49)
!1207 = !DILocation(line: 701, column: 26, scope: !998)
!1208 = !DILocation(line: 701, column: 47, scope: !998)
!1209 = !DILocation(line: 701, column: 7, scope: !34)
!1210 = !DILocation(line: 703, column: 17, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !998, file: !3, line: 702, column: 5)
!1212 = !DILocation(line: 703, column: 7, scope: !1211)
!1213 = !DILocation(line: 705, column: 5, scope: !1211)
!1214 = !DILocation(line: 0, scope: !50)
!1215 = !DILocation(line: 712, column: 10, scope: !34)
!1216 = !DILocation(line: 713, column: 1, scope: !34)
!1217 = distinct !DISubprogram(name: "tac_seekable", scope: !3, file: !3, line: 193, type: !1218, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!45, !37, !26, !1006}
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1234, !1236, !1240, !1241, !1242, !1243, !1248, !1249, !1250}
!1221 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1217, file: !3, line: 193, type: !37)
!1222 = !DILocalVariable(name: "file", arg: 2, scope: !1217, file: !3, line: 193, type: !26)
!1223 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1217, file: !3, line: 193, type: !1006)
!1224 = !DILocalVariable(name: "match_start", scope: !1217, file: !3, line: 197, type: !21)
!1225 = !DILocalVariable(name: "past_end", scope: !1217, file: !3, line: 201, type: !21)
!1226 = !DILocalVariable(name: "saved_record_size", scope: !1217, file: !3, line: 204, type: !28)
!1227 = !DILocalVariable(name: "first_time", scope: !1217, file: !3, line: 208, type: !45)
!1228 = !DILocalVariable(name: "first_char", scope: !1217, file: !3, line: 209, type: !22)
!1229 = !DILocalVariable(name: "separator1", scope: !1217, file: !3, line: 210, type: !26)
!1230 = !DILocalVariable(name: "match_length1", scope: !1217, file: !3, line: 211, type: !28)
!1231 = !DILocalVariable(name: "remainder", scope: !1217, file: !3, line: 218, type: !28)
!1232 = !DILocalVariable(name: "rsize", scope: !1233, file: !3, line: 231, type: !1006)
!1233 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 230, column: 5)
!1234 = !DILocalVariable(name: "nread", scope: !1235, file: !3, line: 240, type: !28)
!1235 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 239, column: 5)
!1236 = !DILocalVariable(name: "i", scope: !1237, file: !3, line: 270, type: !28)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 269, column: 9)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 268, column: 11)
!1239 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 261, column: 5)
!1240 = !DILocalVariable(name: "ri", scope: !1237, file: !3, line: 271, type: !190)
!1241 = !DILocalVariable(name: "range", scope: !1237, file: !3, line: 272, type: !190)
!1242 = !DILocalVariable(name: "ret", scope: !1237, file: !3, line: 273, type: !190)
!1243 = !DILocalVariable(name: "newbuffer", scope: !1244, file: !3, line: 321, type: !21)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 316, column: 13)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 315, column: 15)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 306, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 305, column: 11)
!1248 = !DILocalVariable(name: "offset", scope: !1244, file: !3, line: 322, type: !28)
!1249 = !DILocalVariable(name: "old_G_buffer_size", scope: !1244, file: !3, line: 323, type: !28)
!1250 = !DILocalVariable(name: "match_end", scope: !1251, file: !3, line: 366, type: !21)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 365, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 364, column: 15)
!1253 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 362, column: 9)
!1254 = !DILocation(line: 193, column: 19, scope: !1217)
!1255 = !DILocation(line: 193, column: 41, scope: !1217)
!1256 = !DILocation(line: 193, column: 53, scope: !1217)
!1257 = !DILocation(line: 208, column: 8, scope: !1217)
!1258 = !DILocation(line: 209, column: 22, scope: !1217)
!1259 = !DILocation(line: 209, column: 21, scope: !1217)
!1260 = !DILocation(line: 209, column: 8, scope: !1217)
!1261 = !DILocation(line: 210, column: 38, scope: !1217)
!1262 = !DILocation(line: 210, column: 15, scope: !1217)
!1263 = !DILocation(line: 211, column: 26, scope: !1217)
!1264 = !DILocation(line: 211, column: 39, scope: !1217)
!1265 = !DILocation(line: 211, column: 10, scope: !1217)
!1266 = !DILocation(line: 218, column: 33, scope: !1217)
!1267 = !DILocation(line: 218, column: 31, scope: !1217)
!1268 = !DILocation(line: 218, column: 10, scope: !1217)
!1269 = !DILocation(line: 219, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 219, column: 7)
!1271 = !DILocation(line: 219, column: 7, scope: !1217)
!1272 = !DILocation(line: 221, column: 16, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 220, column: 5)
!1274 = !DILocation(line: 222, column: 11, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 222, column: 11)
!1276 = !DILocation(line: 222, column: 48, scope: !1275)
!1277 = !DILocation(line: 222, column: 11, scope: !1273)
!1278 = !DILocation(line: 223, column: 19, scope: !1275)
!1279 = !DILocation(line: 223, column: 26, scope: !1275)
!1280 = !DILocation(line: 223, column: 48, scope: !1275)
!1281 = !DILocation(line: 223, column: 9, scope: !1275)
!1282 = !DILocation(line: 228, column: 52, scope: !1217)
!1283 = !DILocation(line: 228, column: 62, scope: !1217)
!1284 = !DILocation(line: 228, column: 31, scope: !1217)
!1285 = !DILocation(line: 204, column: 10, scope: !1217)
!1286 = !DILocation(line: 228, column: 74, scope: !1217)
!1287 = !DILocation(line: 229, column: 22, scope: !1217)
!1288 = !DILocation(line: 229, column: 10, scope: !1217)
!1289 = !DILocation(line: 228, column: 3, scope: !1217)
!1290 = !DILocation(line: 0, scope: !1233)
!1291 = !DILocation(line: 238, column: 31, scope: !1217)
!1292 = !DILocation(line: 238, column: 28, scope: !1217)
!1293 = !DILocation(line: 238, column: 3, scope: !1217)
!1294 = !DILocation(line: 231, column: 21, scope: !1233)
!1295 = !DILocation(line: 231, column: 13, scope: !1233)
!1296 = !DILocation(line: 232, column: 28, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 232, column: 11)
!1298 = !DILocation(line: 232, column: 11, scope: !1297)
!1299 = !DILocation(line: 232, column: 46, scope: !1297)
!1300 = !DILocation(line: 232, column: 11, scope: !1233)
!1301 = !DILocation(line: 233, column: 19, scope: !1297)
!1302 = !DILocation(line: 233, column: 26, scope: !1297)
!1303 = !DILocation(line: 233, column: 48, scope: !1297)
!1304 = !DILocation(line: 233, column: 9, scope: !1297)
!1305 = !DILocation(line: 234, column: 19, scope: !1233)
!1306 = !DILocation(line: 234, column: 16, scope: !1233)
!1307 = distinct !{!1307, !1289, !1308}
!1308 = !DILocation(line: 235, column: 5, scope: !1217)
!1309 = !DILocation(line: 240, column: 43, scope: !1235)
!1310 = !DILocation(line: 240, column: 22, scope: !1235)
!1311 = !DILocation(line: 240, column: 14, scope: !1235)
!1312 = !DILocation(line: 241, column: 11, scope: !1235)
!1313 = !DILocation(line: 246, column: 16, scope: !1235)
!1314 = !DILocation(line: 228, column: 29, scope: !1217)
!1315 = !DILocation(line: 249, column: 25, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 249, column: 7)
!1317 = !DILocation(line: 249, column: 7, scope: !1217)
!1318 = !DILocation(line: 251, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 250, column: 5)
!1320 = !DILocation(line: 251, column: 24, scope: !1319)
!1321 = !DILocation(line: 251, column: 45, scope: !1319)
!1322 = !DILocation(line: 251, column: 7, scope: !1319)
!1323 = !DILocation(line: 252, column: 7, scope: !1319)
!1324 = !DILocation(line: 255, column: 28, scope: !1217)
!1325 = !DILocation(line: 255, column: 37, scope: !1217)
!1326 = !DILocation(line: 201, column: 9, scope: !1217)
!1327 = !DILocation(line: 197, column: 9, scope: !1217)
!1328 = !DILocation(line: 257, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 257, column: 7)
!1330 = !DILocation(line: 258, column: 17, scope: !1329)
!1331 = !DILocation(line: 257, column: 7, scope: !1217)
!1332 = !DILocation(line: 260, column: 3, scope: !1217)
!1333 = !DILocation(line: 268, column: 27, scope: !1238)
!1334 = !DILocation(line: 268, column: 11, scope: !1238)
!1335 = !DILocation(line: 0, scope: !1246)
!1336 = !DILocation(line: 0, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 350, column: 15)
!1338 = !DILocation(line: 0, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 335, column: 15)
!1340 = !DILocation(line: 268, column: 11, scope: !1239)
!1341 = !DILocation(line: 270, column: 36, scope: !1237)
!1342 = !DILocation(line: 270, column: 34, scope: !1237)
!1343 = !DILocation(line: 270, column: 18, scope: !1237)
!1344 = !DILocation(line: 271, column: 25, scope: !1237)
!1345 = !DILocation(line: 271, column: 20, scope: !1237)
!1346 = !DILocation(line: 272, column: 30, scope: !1237)
!1347 = !DILocation(line: 272, column: 20, scope: !1237)
!1348 = !DILocation(line: 275, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 275, column: 15)
!1350 = !DILocation(line: 275, column: 15, scope: !1237)
!1351 = !DILocation(line: 276, column: 13, scope: !1349)
!1352 = !DILocation(line: 278, column: 21, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 278, column: 15)
!1354 = !DILocation(line: 279, column: 15, scope: !1353)
!1355 = !DILocation(line: 280, column: 40, scope: !1353)
!1356 = !DILocation(line: 279, column: 26, scope: !1353)
!1357 = !DILocation(line: 273, column: 20, scope: !1237)
!1358 = !DILocation(line: 278, column: 15, scope: !1237)
!1359 = !DILocation(line: 282, column: 27, scope: !1353)
!1360 = !DILocation(line: 285, column: 15, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 284, column: 13)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 283, column: 20)
!1363 = !DILocation(line: 290, column: 29, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 289, column: 13)
!1365 = !DILocation(line: 290, column: 45, scope: !1364)
!1366 = !{!1367, !840, i64 8}
!1367 = !{!"re_registers", !978, i64 0, !840, i64 8, !840, i64 16}
!1368 = !DILocation(line: 290, column: 40, scope: !1364)
!1369 = !DILocation(line: 290, column: 38, scope: !1364)
!1370 = !DILocation(line: 291, column: 35, scope: !1364)
!1371 = !{!1367, !840, i64 16}
!1372 = !DILocation(line: 291, column: 30, scope: !1364)
!1373 = !DILocation(line: 291, column: 42, scope: !1364)
!1374 = !DILocation(line: 291, column: 28, scope: !1364)
!1375 = !DILocation(line: 0, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 295, column: 9)
!1377 = !DILocation(line: 297, column: 19, scope: !1376)
!1378 = !DILocation(line: 297, column: 18, scope: !1376)
!1379 = !DILocation(line: 297, column: 33, scope: !1376)
!1380 = !DILocation(line: 298, column: 18, scope: !1376)
!1381 = !DILocation(line: 298, column: 36, scope: !1376)
!1382 = !DILocation(line: 298, column: 40, scope: !1376)
!1383 = !DILocation(line: 297, column: 11, scope: !1376)
!1384 = distinct !{!1384, !1383, !1385}
!1385 = !DILocation(line: 300, column: 31, scope: !1376)
!1386 = !DILocation(line: 305, column: 25, scope: !1247)
!1387 = !DILocation(line: 305, column: 23, scope: !1247)
!1388 = !DILocation(line: 305, column: 11, scope: !1239)
!1389 = !DILocation(line: 307, column: 24, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 307, column: 15)
!1391 = !DILocation(line: 307, column: 15, scope: !1246)
!1392 = !DILocation(line: 159, column: 21, scope: !194, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 310, column: 15, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 308, column: 13)
!1395 = !DILocation(line: 159, column: 40, scope: !194, inlinedAt: !1393)
!1396 = !DILocation(line: 163, column: 10, scope: !194, inlinedAt: !1393)
!1397 = !DILocation(line: 164, column: 40, scope: !194, inlinedAt: !1393)
!1398 = !DILocation(line: 164, column: 38, scope: !194, inlinedAt: !1393)
!1399 = !DILocation(line: 164, column: 10, scope: !194, inlinedAt: !1393)
!1400 = !DILocation(line: 166, column: 13, scope: !995, inlinedAt: !1393)
!1401 = !DILocation(line: 166, column: 7, scope: !194, inlinedAt: !1393)
!1402 = !DILocation(line: 174, column: 23, scope: !194, inlinedAt: !1393)
!1403 = !DILocation(line: 0, scope: !194, inlinedAt: !1393)
!1404 = !DILocation(line: 174, column: 3, scope: !194, inlinedAt: !1393)
!1405 = !DILocation(line: 176, column: 7, scope: !1406, inlinedAt: !1393)
!1406 = distinct !DILexicalBlock(scope: !194, file: !3, line: 175, column: 5)
!1407 = !DILocation(line: 177, column: 20, scope: !1406, inlinedAt: !1393)
!1408 = !DILocation(line: 178, column: 13, scope: !1406, inlinedAt: !1393)
!1409 = !DILocation(line: 179, column: 7, scope: !1406, inlinedAt: !1393)
!1410 = !DILocation(line: 180, column: 23, scope: !1406, inlinedAt: !1393)
!1411 = distinct !{!1411, !1412, !1413}
!1412 = !DILocation(line: 174, column: 3, scope: !194)
!1413 = !DILocation(line: 182, column: 5, scope: !194)
!1414 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1393)
!1415 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1393)
!1416 = distinct !{!1416, !1412, !1413, !1417}
!1417 = !{!"llvm.loop.unroll.disable"}
!1418 = !DILocation(line: 0, scope: !1406, inlinedAt: !1393)
!1419 = !DILocation(line: 184, column: 3, scope: !194, inlinedAt: !1393)
!1420 = !DILocation(line: 185, column: 19, scope: !194, inlinedAt: !1393)
!1421 = !DILocation(line: 186, column: 1, scope: !194, inlinedAt: !1393)
!1422 = !DILocation(line: 0, scope: !994, inlinedAt: !1393)
!1423 = !DILocation(line: 311, column: 15, scope: !1394)
!1424 = !DILocation(line: 315, column: 35, scope: !1245)
!1425 = !DILocation(line: 315, column: 33, scope: !1245)
!1426 = !DILocation(line: 315, column: 15, scope: !1246)
!1427 = !DILocation(line: 322, column: 31, scope: !1244)
!1428 = !DILocation(line: 322, column: 22, scope: !1244)
!1429 = !DILocation(line: 323, column: 42, scope: !1244)
!1430 = !DILocation(line: 323, column: 22, scope: !1244)
!1431 = !DILocation(line: 325, column: 25, scope: !1244)
!1432 = !DILocation(line: 326, column: 41, scope: !1244)
!1433 = !DILocation(line: 326, column: 45, scope: !1244)
!1434 = !DILocation(line: 326, column: 63, scope: !1244)
!1435 = !DILocation(line: 326, column: 29, scope: !1244)
!1436 = !DILocation(line: 327, column: 33, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 327, column: 19)
!1438 = !DILocation(line: 327, column: 19, scope: !1244)
!1439 = !DILocation(line: 328, column: 17, scope: !1437)
!1440 = !DILocation(line: 329, column: 46, scope: !1244)
!1441 = !DILocation(line: 329, column: 27, scope: !1244)
!1442 = !DILocation(line: 321, column: 21, scope: !1244)
!1443 = !DILocation(line: 330, column: 25, scope: !1244)
!1444 = !DILocation(line: 331, column: 24, scope: !1244)
!1445 = !DILocation(line: 335, column: 27, scope: !1339)
!1446 = !DILocation(line: 332, column: 13, scope: !1244)
!1447 = !DILocation(line: 335, column: 24, scope: !1339)
!1448 = !DILocation(line: 335, column: 15, scope: !1246)
!1449 = !DILocation(line: 336, column: 22, scope: !1339)
!1450 = !DILocation(line: 336, column: 13, scope: !1339)
!1451 = !DILocation(line: 339, column: 25, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 338, column: 13)
!1453 = !DILocation(line: 0, scope: !1452)
!1454 = !DILocation(line: 342, column: 15, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 342, column: 15)
!1456 = !DILocation(line: 342, column: 52, scope: !1455)
!1457 = !DILocation(line: 342, column: 15, scope: !1246)
!1458 = !DILocation(line: 343, column: 23, scope: !1455)
!1459 = !DILocation(line: 343, column: 30, scope: !1455)
!1460 = !DILocation(line: 343, column: 52, scope: !1455)
!1461 = !DILocation(line: 343, column: 13, scope: !1455)
!1462 = !DILocation(line: 347, column: 20, scope: !1246)
!1463 = !DILocation(line: 347, column: 31, scope: !1246)
!1464 = !DILocation(line: 347, column: 29, scope: !1246)
!1465 = !DILocation(line: 347, column: 11, scope: !1246)
!1466 = !DILocation(line: 348, column: 43, scope: !1246)
!1467 = !DILocation(line: 350, column: 15, scope: !1337)
!1468 = !DILocation(line: 355, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 355, column: 15)
!1470 = !DILocation(line: 355, column: 60, scope: !1469)
!1471 = !DILocation(line: 355, column: 57, scope: !1469)
!1472 = !DILocation(line: 355, column: 15, scope: !1246)
!1473 = distinct !{!1473, !1332, !1474}
!1474 = !DILocation(line: 385, column: 5, scope: !1217)
!1475 = !DILocation(line: 357, column: 25, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 356, column: 13)
!1477 = !DILocation(line: 357, column: 32, scope: !1476)
!1478 = !DILocation(line: 357, column: 53, scope: !1476)
!1479 = !DILocation(line: 357, column: 15, scope: !1476)
!1480 = !DILocation(line: 358, column: 15, scope: !1476)
!1481 = !DILocation(line: 364, column: 15, scope: !1253)
!1482 = !DILocation(line: 366, column: 47, scope: !1251)
!1483 = !DILocation(line: 366, column: 45, scope: !1251)
!1484 = !DILocation(line: 366, column: 21, scope: !1251)
!1485 = !DILocation(line: 370, column: 20, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 370, column: 19)
!1487 = !DILocation(line: 370, column: 44, scope: !1486)
!1488 = !DILocation(line: 370, column: 31, scope: !1486)
!1489 = !DILocation(line: 159, column: 21, scope: !194, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 371, column: 17, scope: !1486)
!1491 = !DILocation(line: 159, column: 40, scope: !194, inlinedAt: !1490)
!1492 = !DILocation(line: 163, column: 34, scope: !194, inlinedAt: !1490)
!1493 = !DILocation(line: 163, column: 10, scope: !194, inlinedAt: !1490)
!1494 = !DILocation(line: 164, column: 40, scope: !194, inlinedAt: !1490)
!1495 = !DILocation(line: 164, column: 38, scope: !194, inlinedAt: !1490)
!1496 = !DILocation(line: 164, column: 10, scope: !194, inlinedAt: !1490)
!1497 = !DILocation(line: 166, column: 13, scope: !995, inlinedAt: !1490)
!1498 = !DILocation(line: 166, column: 7, scope: !194, inlinedAt: !1490)
!1499 = !DILocation(line: 174, column: 23, scope: !194, inlinedAt: !1490)
!1500 = !DILocation(line: 0, scope: !194, inlinedAt: !1490)
!1501 = !DILocation(line: 174, column: 3, scope: !194, inlinedAt: !1490)
!1502 = !DILocation(line: 176, column: 7, scope: !1406, inlinedAt: !1490)
!1503 = !DILocation(line: 177, column: 20, scope: !1406, inlinedAt: !1490)
!1504 = !DILocation(line: 178, column: 13, scope: !1406, inlinedAt: !1490)
!1505 = !DILocation(line: 179, column: 7, scope: !1406, inlinedAt: !1490)
!1506 = !DILocation(line: 180, column: 23, scope: !1406, inlinedAt: !1490)
!1507 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1490)
!1508 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1490)
!1509 = distinct !{!1509, !1412, !1413, !1417}
!1510 = !DILocation(line: 0, scope: !1406, inlinedAt: !1490)
!1511 = !DILocation(line: 184, column: 3, scope: !194, inlinedAt: !1490)
!1512 = !DILocation(line: 185, column: 19, scope: !194, inlinedAt: !1490)
!1513 = !DILocation(line: 186, column: 1, scope: !194, inlinedAt: !1490)
!1514 = !DILocation(line: 159, column: 21, scope: !194, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 377, column: 15, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 376, column: 13)
!1517 = !DILocation(line: 159, column: 40, scope: !194, inlinedAt: !1515)
!1518 = !DILocation(line: 163, column: 34, scope: !194, inlinedAt: !1515)
!1519 = !DILocation(line: 163, column: 10, scope: !194, inlinedAt: !1515)
!1520 = !DILocation(line: 164, column: 40, scope: !194, inlinedAt: !1515)
!1521 = !DILocation(line: 164, column: 38, scope: !194, inlinedAt: !1515)
!1522 = !DILocation(line: 164, column: 10, scope: !194, inlinedAt: !1515)
!1523 = !DILocation(line: 166, column: 13, scope: !995, inlinedAt: !1515)
!1524 = !DILocation(line: 166, column: 7, scope: !194, inlinedAt: !1515)
!1525 = !DILocation(line: 174, column: 23, scope: !194, inlinedAt: !1515)
!1526 = !DILocation(line: 0, scope: !194, inlinedAt: !1515)
!1527 = !DILocation(line: 174, column: 3, scope: !194, inlinedAt: !1515)
!1528 = !DILocation(line: 176, column: 7, scope: !1406, inlinedAt: !1515)
!1529 = !DILocation(line: 177, column: 20, scope: !1406, inlinedAt: !1515)
!1530 = !DILocation(line: 178, column: 13, scope: !1406, inlinedAt: !1515)
!1531 = !DILocation(line: 179, column: 7, scope: !1406, inlinedAt: !1515)
!1532 = !DILocation(line: 180, column: 23, scope: !1406, inlinedAt: !1515)
!1533 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1515)
!1534 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1515)
!1535 = distinct !{!1535, !1412, !1413, !1417}
!1536 = !DILocation(line: 0, scope: !1406, inlinedAt: !1515)
!1537 = !DILocation(line: 184, column: 3, scope: !194, inlinedAt: !1515)
!1538 = !DILocation(line: 185, column: 19, scope: !194, inlinedAt: !1515)
!1539 = !DILocation(line: 186, column: 1, scope: !194, inlinedAt: !1515)
!1540 = !DILocation(line: 0, scope: !994, inlinedAt: !1490)
!1541 = !DILocation(line: 382, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 382, column: 15)
!1543 = !DILocation(line: 0, scope: !1217)
!1544 = !DILocation(line: 0, scope: !1516)
!1545 = !DILocation(line: 382, column: 31, scope: !1542)
!1546 = !DILocation(line: 383, column: 28, scope: !1542)
!1547 = !DILocation(line: 383, column: 25, scope: !1542)
!1548 = !DILocation(line: 382, column: 15, scope: !1253)
!1549 = !DILocation(line: 0, scope: !1476)
!1550 = !DILocation(line: 386, column: 1, scope: !1217)
!1551 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !224, file: !224, line: 51, type: !814, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1552)
!1552 = !{!1553}
!1553 = !DILocalVariable(name: "file", arg: 1, scope: !1551, file: !224, line: 51, type: !26)
!1554 = !DILocation(line: 51, column: 41, scope: !1551)
!1555 = !DILocation(line: 53, column: 13, scope: !1551)
!1556 = !DILocation(line: 54, column: 1, scope: !1551)
!1557 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !224, file: !224, line: 88, type: !1558, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !45}
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "ignore", arg: 1, scope: !1557, file: !224, line: 88, type: !45)
!1562 = !DILocation(line: 88, column: 37, scope: !1557)
!1563 = !DILocation(line: 90, column: 16, scope: !1557)
!1564 = !{!1565, !1565, i64 0}
!1565 = !{!"_Bool", !841, i64 0}
!1566 = !DILocation(line: 91, column: 1, scope: !1557)
!1567 = distinct !DISubprogram(name: "close_stdout", scope: !224, file: !224, line: 117, type: !847, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1568)
!1568 = !{!1569}
!1569 = !DILocalVariable(name: "write_error", scope: !1570, file: !224, line: 122, type: !26)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !224, line: 121, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !224, line: 119, column: 7)
!1572 = !DILocation(line: 119, column: 21, scope: !1571)
!1573 = !DILocation(line: 119, column: 7, scope: !1571)
!1574 = !DILocation(line: 119, column: 29, scope: !1571)
!1575 = !DILocation(line: 120, column: 7, scope: !1571)
!1576 = !DILocation(line: 120, column: 12, scope: !1571)
!1577 = !{i8 0, i8 2}
!1578 = !DILocation(line: 120, column: 25, scope: !1571)
!1579 = !DILocation(line: 120, column: 28, scope: !1571)
!1580 = !DILocation(line: 120, column: 34, scope: !1571)
!1581 = !DILocation(line: 119, column: 7, scope: !1567)
!1582 = !DILocation(line: 122, column: 33, scope: !1570)
!1583 = !DILocation(line: 122, column: 19, scope: !1570)
!1584 = !DILocation(line: 123, column: 11, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1570, file: !224, line: 123, column: 11)
!1586 = !DILocation(line: 0, scope: !1585)
!1587 = !DILocation(line: 123, column: 11, scope: !1570)
!1588 = !DILocation(line: 124, column: 36, scope: !1585)
!1589 = !DILocation(line: 124, column: 9, scope: !1585)
!1590 = !DILocation(line: 127, column: 9, scope: !1585)
!1591 = !DILocation(line: 129, column: 14, scope: !1570)
!1592 = !DILocation(line: 129, column: 7, scope: !1570)
!1593 = !DILocation(line: 134, column: 42, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1567, file: !224, line: 134, column: 7)
!1595 = !DILocation(line: 134, column: 28, scope: !1594)
!1596 = !DILocation(line: 134, column: 50, scope: !1594)
!1597 = !DILocation(line: 134, column: 7, scope: !1567)
!1598 = !DILocation(line: 135, column: 12, scope: !1594)
!1599 = !DILocation(line: 135, column: 5, scope: !1594)
!1600 = !DILocation(line: 136, column: 1, scope: !1567)
!1601 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1602, file: !1602, line: 47, type: !1603, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !347, retainedNodes: !1605)
!1602 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!21, !26, !26, !38}
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615}
!1606 = !DILocalVariable(name: "dir", arg: 1, scope: !1601, file: !1602, line: 47, type: !26)
!1607 = !DILocalVariable(name: "base", arg: 2, scope: !1601, file: !1602, line: 47, type: !26)
!1608 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1601, file: !1602, line: 47, type: !38)
!1609 = !DILocalVariable(name: "dirbase", scope: !1601, file: !1602, line: 49, type: !26)
!1610 = !DILocalVariable(name: "dirbaselen", scope: !1601, file: !1602, line: 50, type: !28)
!1611 = !DILocalVariable(name: "dirlen", scope: !1601, file: !1602, line: 51, type: !28)
!1612 = !DILocalVariable(name: "baselen", scope: !1601, file: !1602, line: 52, type: !28)
!1613 = !DILocalVariable(name: "sep", scope: !1601, file: !1602, line: 53, type: !22)
!1614 = !DILocalVariable(name: "p_concat", scope: !1601, file: !1602, line: 70, type: !21)
!1615 = !DILocalVariable(name: "p", scope: !1601, file: !1602, line: 71, type: !21)
!1616 = !DILocation(line: 47, column: 32, scope: !1601)
!1617 = !DILocation(line: 47, column: 49, scope: !1601)
!1618 = !DILocation(line: 47, column: 62, scope: !1601)
!1619 = !DILocation(line: 49, column: 25, scope: !1601)
!1620 = !DILocation(line: 49, column: 15, scope: !1601)
!1621 = !DILocation(line: 50, column: 23, scope: !1601)
!1622 = !DILocation(line: 50, column: 10, scope: !1601)
!1623 = !DILocation(line: 51, column: 27, scope: !1601)
!1624 = !DILocation(line: 51, column: 33, scope: !1601)
!1625 = !DILocation(line: 51, column: 10, scope: !1601)
!1626 = !DILocation(line: 52, column: 20, scope: !1601)
!1627 = !DILocation(line: 52, column: 10, scope: !1601)
!1628 = !DILocation(line: 53, column: 8, scope: !1601)
!1629 = !DILocation(line: 54, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1601, file: !1602, line: 54, column: 7)
!1631 = !DILocation(line: 54, column: 7, scope: !1601)
!1632 = !DILocation(line: 57, column: 13, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !1602, line: 57, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !1602, line: 55, column: 5)
!1635 = !DILocation(line: 57, column: 39, scope: !1633)
!1636 = !DILocation(line: 57, column: 44, scope: !1633)
!1637 = !DILocation(line: 57, column: 11, scope: !1634)
!1638 = !DILocation(line: 60, column: 12, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1630, file: !1602, line: 60, column: 12)
!1640 = !DILocation(line: 60, column: 12, scope: !1630)
!1641 = !DILocation(line: 0, scope: !1601)
!1642 = !DILocation(line: 70, column: 42, scope: !1601)
!1643 = !DILocation(line: 70, column: 37, scope: !1601)
!1644 = !DILocation(line: 70, column: 35, scope: !1601)
!1645 = !DILocation(line: 70, column: 52, scope: !1601)
!1646 = !DILocation(line: 70, column: 62, scope: !1601)
!1647 = !DILocation(line: 70, column: 20, scope: !1601)
!1648 = !DILocation(line: 70, column: 9, scope: !1601)
!1649 = !DILocation(line: 73, column: 16, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1601, file: !1602, line: 73, column: 7)
!1651 = !DILocation(line: 73, column: 7, scope: !1601)
!1652 = !DILocalVariable(name: "__dest", arg: 1, scope: !1653, file: !1654, line: 45, type: !1657)
!1653 = distinct !DISubprogram(name: "mempcpy", scope: !1654, file: !1654, line: 45, type: !1655, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !347, retainedNodes: !1661)
!1654 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!23, !1657, !1658, !28}
!1657 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!1658 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1659)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1661 = !{!1652, !1662, !1663}
!1662 = !DILocalVariable(name: "__src", arg: 2, scope: !1653, file: !1654, line: 45, type: !1658)
!1663 = !DILocalVariable(name: "__len", arg: 3, scope: !1653, file: !1654, line: 45, type: !28)
!1664 = !DILocation(line: 45, column: 1, scope: !1653, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 76, column: 7, scope: !1601)
!1666 = !DILocation(line: 48, column: 57, scope: !1653, inlinedAt: !1665)
!1667 = !DILocation(line: 48, column: 10, scope: !1653, inlinedAt: !1665)
!1668 = !DILocation(line: 71, column: 9, scope: !1601)
!1669 = !DILocation(line: 77, column: 6, scope: !1601)
!1670 = !DILocation(line: 78, column: 5, scope: !1601)
!1671 = !DILocation(line: 80, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1601, file: !1602, line: 80, column: 7)
!1673 = !DILocation(line: 80, column: 7, scope: !1601)
!1674 = !DILocation(line: 81, column: 21, scope: !1672)
!1675 = !DILocation(line: 81, column: 5, scope: !1672)
!1676 = !DILocation(line: 45, column: 1, scope: !1653, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 83, column: 7, scope: !1601)
!1678 = !DILocation(line: 48, column: 57, scope: !1653, inlinedAt: !1677)
!1679 = !DILocation(line: 48, column: 10, scope: !1653, inlinedAt: !1677)
!1680 = !DILocation(line: 84, column: 6, scope: !1601)
!1681 = !DILocation(line: 86, column: 3, scope: !1601)
!1682 = !DILocation(line: 87, column: 1, scope: !1601)
!1683 = distinct !DISubprogram(name: "set_program_name", scope: !238, file: !238, line: 39, type: !814, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !1684)
!1684 = !{!1685, !1686, !1687}
!1685 = !DILocalVariable(name: "argv0", arg: 1, scope: !1683, file: !238, line: 39, type: !26)
!1686 = !DILocalVariable(name: "slash", scope: !1683, file: !238, line: 46, type: !26)
!1687 = !DILocalVariable(name: "base", scope: !1683, file: !238, line: 47, type: !26)
!1688 = !DILocation(line: 39, column: 31, scope: !1683)
!1689 = !DILocation(line: 51, column: 13, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1683, file: !238, line: 51, column: 7)
!1691 = !DILocation(line: 51, column: 7, scope: !1683)
!1692 = !DILocation(line: 55, column: 14, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !238, line: 52, column: 5)
!1694 = !DILocation(line: 54, column: 7, scope: !1693)
!1695 = !DILocation(line: 56, column: 7, scope: !1693)
!1696 = !DILocation(line: 59, column: 11, scope: !1683)
!1697 = !DILocation(line: 46, column: 15, scope: !1683)
!1698 = !DILocation(line: 60, column: 17, scope: !1683)
!1699 = !DILocation(line: 60, column: 33, scope: !1683)
!1700 = !DILocation(line: 60, column: 11, scope: !1683)
!1701 = !DILocation(line: 47, column: 15, scope: !1683)
!1702 = !DILocation(line: 61, column: 12, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1683, file: !238, line: 61, column: 7)
!1704 = !DILocation(line: 61, column: 20, scope: !1703)
!1705 = !DILocation(line: 61, column: 25, scope: !1703)
!1706 = !DILocation(line: 61, column: 42, scope: !1703)
!1707 = !DILocation(line: 61, column: 28, scope: !1703)
!1708 = !DILocation(line: 61, column: 61, scope: !1703)
!1709 = !DILocation(line: 61, column: 7, scope: !1683)
!1710 = !DILocation(line: 64, column: 11, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !238, line: 64, column: 11)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !238, line: 62, column: 5)
!1713 = !DILocation(line: 64, column: 36, scope: !1711)
!1714 = !DILocation(line: 64, column: 11, scope: !1712)
!1715 = !DILocation(line: 66, column: 24, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !238, line: 65, column: 9)
!1717 = !DILocation(line: 70, column: 41, scope: !1716)
!1718 = !DILocation(line: 72, column: 9, scope: !1716)
!1719 = !DILocation(line: 84, column: 16, scope: !1683)
!1720 = !DILocation(line: 90, column: 27, scope: !1683)
!1721 = !DILocation(line: 92, column: 1, scope: !1683)
!1722 = distinct !DISubprogram(name: "clone_quoting_options", scope: !268, file: !268, line: 122, type: !1723, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1726)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1725, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1726 = !{!1727, !1728, !1729}
!1727 = !DILocalVariable(name: "o", arg: 1, scope: !1722, file: !268, line: 122, type: !1725)
!1728 = !DILocalVariable(name: "e", scope: !1722, file: !268, line: 124, type: !37)
!1729 = !DILocalVariable(name: "p", scope: !1722, file: !268, line: 125, type: !1725)
!1730 = !DILocation(line: 122, column: 48, scope: !1722)
!1731 = !DILocation(line: 124, column: 11, scope: !1722)
!1732 = !DILocation(line: 124, column: 7, scope: !1722)
!1733 = !DILocation(line: 125, column: 40, scope: !1722)
!1734 = !DILocation(line: 125, column: 31, scope: !1722)
!1735 = !DILocation(line: 125, column: 27, scope: !1722)
!1736 = !DILocation(line: 127, column: 9, scope: !1722)
!1737 = !DILocation(line: 128, column: 3, scope: !1722)
!1738 = distinct !DISubprogram(name: "get_quoting_style", scope: !268, file: !268, line: 133, type: !1739, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1743)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!5, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!1743 = !{!1744}
!1744 = !DILocalVariable(name: "o", arg: 1, scope: !1738, file: !268, line: 133, type: !1741)
!1745 = !DILocation(line: 133, column: 50, scope: !1738)
!1746 = !DILocation(line: 135, column: 11, scope: !1738)
!1747 = !DILocation(line: 135, column: 46, scope: !1738)
!1748 = !{!1749, !841, i64 0}
!1749 = !{!"quoting_options", !841, i64 0, !978, i64 4, !841, i64 8, !840, i64 40, !840, i64 48}
!1750 = !DILocation(line: 135, column: 3, scope: !1738)
!1751 = distinct !DISubprogram(name: "set_quoting_style", scope: !268, file: !268, line: 141, type: !1752, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1725, !5}
!1754 = !{!1755, !1756}
!1755 = !DILocalVariable(name: "o", arg: 1, scope: !1751, file: !268, line: 141, type: !1725)
!1756 = !DILocalVariable(name: "s", arg: 2, scope: !1751, file: !268, line: 141, type: !5)
!1757 = !DILocation(line: 141, column: 44, scope: !1751)
!1758 = !DILocation(line: 141, column: 66, scope: !1751)
!1759 = !DILocation(line: 143, column: 4, scope: !1751)
!1760 = !DILocation(line: 143, column: 39, scope: !1751)
!1761 = !DILocation(line: 143, column: 45, scope: !1751)
!1762 = !DILocation(line: 144, column: 1, scope: !1751)
!1763 = distinct !DISubprogram(name: "set_char_quoting", scope: !268, file: !268, line: 152, type: !1764, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!37, !1725, !22, !37}
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1773, !1774}
!1767 = !DILocalVariable(name: "o", arg: 1, scope: !1763, file: !268, line: 152, type: !1725)
!1768 = !DILocalVariable(name: "c", arg: 2, scope: !1763, file: !268, line: 152, type: !22)
!1769 = !DILocalVariable(name: "i", arg: 3, scope: !1763, file: !268, line: 152, type: !37)
!1770 = !DILocalVariable(name: "uc", scope: !1763, file: !268, line: 154, type: !82)
!1771 = !DILocalVariable(name: "p", scope: !1763, file: !268, line: 155, type: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1773 = !DILocalVariable(name: "shift", scope: !1763, file: !268, line: 157, type: !37)
!1774 = !DILocalVariable(name: "r", scope: !1763, file: !268, line: 158, type: !37)
!1775 = !DILocation(line: 152, column: 43, scope: !1763)
!1776 = !DILocation(line: 152, column: 51, scope: !1763)
!1777 = !DILocation(line: 152, column: 58, scope: !1763)
!1778 = !DILocation(line: 154, column: 17, scope: !1763)
!1779 = !DILocation(line: 156, column: 6, scope: !1763)
!1780 = !DILocation(line: 156, column: 62, scope: !1763)
!1781 = !DILocation(line: 156, column: 57, scope: !1763)
!1782 = !DILocation(line: 155, column: 17, scope: !1763)
!1783 = !DILocation(line: 157, column: 15, scope: !1763)
!1784 = !DILocation(line: 157, column: 7, scope: !1763)
!1785 = !DILocation(line: 158, column: 12, scope: !1763)
!1786 = !DILocation(line: 158, column: 15, scope: !1763)
!1787 = !DILocation(line: 158, column: 25, scope: !1763)
!1788 = !DILocation(line: 158, column: 7, scope: !1763)
!1789 = !DILocation(line: 159, column: 13, scope: !1763)
!1790 = !DILocation(line: 159, column: 18, scope: !1763)
!1791 = !DILocation(line: 159, column: 23, scope: !1763)
!1792 = !DILocation(line: 159, column: 6, scope: !1763)
!1793 = !DILocation(line: 160, column: 3, scope: !1763)
!1794 = distinct !DISubprogram(name: "set_quoting_flags", scope: !268, file: !268, line: 168, type: !1795, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!37, !1725, !37}
!1797 = !{!1798, !1799, !1800}
!1798 = !DILocalVariable(name: "o", arg: 1, scope: !1794, file: !268, line: 168, type: !1725)
!1799 = !DILocalVariable(name: "i", arg: 2, scope: !1794, file: !268, line: 168, type: !37)
!1800 = !DILocalVariable(name: "r", scope: !1794, file: !268, line: 170, type: !37)
!1801 = !DILocation(line: 168, column: 44, scope: !1794)
!1802 = !DILocation(line: 168, column: 51, scope: !1794)
!1803 = !DILocation(line: 171, column: 8, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1794, file: !268, line: 171, column: 7)
!1805 = !DILocation(line: 171, column: 7, scope: !1794)
!1806 = !DILocation(line: 173, column: 10, scope: !1794)
!1807 = !{!1749, !978, i64 4}
!1808 = !DILocation(line: 170, column: 7, scope: !1794)
!1809 = !DILocation(line: 174, column: 12, scope: !1794)
!1810 = !DILocation(line: 175, column: 3, scope: !1794)
!1811 = distinct !DISubprogram(name: "set_custom_quoting", scope: !268, file: !268, line: 179, type: !1812, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1725, !26, !26}
!1814 = !{!1815, !1816, !1817}
!1815 = !DILocalVariable(name: "o", arg: 1, scope: !1811, file: !268, line: 179, type: !1725)
!1816 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1811, file: !268, line: 180, type: !26)
!1817 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1811, file: !268, line: 180, type: !26)
!1818 = !DILocation(line: 179, column: 45, scope: !1811)
!1819 = !DILocation(line: 180, column: 33, scope: !1811)
!1820 = !DILocation(line: 180, column: 57, scope: !1811)
!1821 = !DILocation(line: 182, column: 8, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1811, file: !268, line: 182, column: 7)
!1823 = !DILocation(line: 182, column: 7, scope: !1811)
!1824 = !DILocation(line: 184, column: 6, scope: !1811)
!1825 = !DILocation(line: 184, column: 12, scope: !1811)
!1826 = !DILocation(line: 185, column: 8, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1811, file: !268, line: 185, column: 7)
!1828 = !DILocation(line: 185, column: 23, scope: !1827)
!1829 = !DILocation(line: 185, column: 19, scope: !1827)
!1830 = !DILocation(line: 186, column: 5, scope: !1827)
!1831 = !DILocation(line: 187, column: 6, scope: !1811)
!1832 = !DILocation(line: 187, column: 17, scope: !1811)
!1833 = !{!1749, !840, i64 40}
!1834 = !DILocation(line: 188, column: 6, scope: !1811)
!1835 = !DILocation(line: 188, column: 18, scope: !1811)
!1836 = !{!1749, !840, i64 48}
!1837 = !DILocation(line: 189, column: 1, scope: !1811)
!1838 = distinct !DISubprogram(name: "quotearg_buffer", scope: !268, file: !268, line: 784, type: !1839, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1841)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!28, !21, !28, !26, !28, !1741}
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1842 = !DILocalVariable(name: "buffer", arg: 1, scope: !1838, file: !268, line: 784, type: !21)
!1843 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1838, file: !268, line: 784, type: !28)
!1844 = !DILocalVariable(name: "arg", arg: 3, scope: !1838, file: !268, line: 785, type: !26)
!1845 = !DILocalVariable(name: "argsize", arg: 4, scope: !1838, file: !268, line: 785, type: !28)
!1846 = !DILocalVariable(name: "o", arg: 5, scope: !1838, file: !268, line: 786, type: !1741)
!1847 = !DILocalVariable(name: "p", scope: !1838, file: !268, line: 788, type: !1741)
!1848 = !DILocalVariable(name: "e", scope: !1838, file: !268, line: 789, type: !37)
!1849 = !DILocalVariable(name: "r", scope: !1838, file: !268, line: 790, type: !28)
!1850 = !DILocation(line: 784, column: 24, scope: !1838)
!1851 = !DILocation(line: 784, column: 39, scope: !1838)
!1852 = !DILocation(line: 785, column: 30, scope: !1838)
!1853 = !DILocation(line: 785, column: 42, scope: !1838)
!1854 = !DILocation(line: 786, column: 48, scope: !1838)
!1855 = !DILocation(line: 788, column: 37, scope: !1838)
!1856 = !DILocation(line: 788, column: 33, scope: !1838)
!1857 = !DILocation(line: 789, column: 11, scope: !1838)
!1858 = !DILocation(line: 789, column: 7, scope: !1838)
!1859 = !DILocation(line: 791, column: 43, scope: !1838)
!1860 = !DILocation(line: 791, column: 53, scope: !1838)
!1861 = !DILocation(line: 791, column: 60, scope: !1838)
!1862 = !DILocation(line: 792, column: 43, scope: !1838)
!1863 = !DILocation(line: 792, column: 58, scope: !1838)
!1864 = !DILocation(line: 790, column: 14, scope: !1838)
!1865 = !DILocation(line: 790, column: 10, scope: !1838)
!1866 = !DILocation(line: 793, column: 9, scope: !1838)
!1867 = !DILocation(line: 794, column: 3, scope: !1838)
!1868 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !268, file: !268, line: 256, type: !1869, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !1873)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!28, !21, !28, !26, !28, !5, !37, !1871, !26, !26}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1898, !1899, !1900, !1901, !1902, !1905, !1906, !1924, !1927, !1928, !1935}
!1874 = !DILocalVariable(name: "buffer", arg: 1, scope: !1868, file: !268, line: 256, type: !21)
!1875 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1868, file: !268, line: 256, type: !28)
!1876 = !DILocalVariable(name: "arg", arg: 3, scope: !1868, file: !268, line: 257, type: !26)
!1877 = !DILocalVariable(name: "argsize", arg: 4, scope: !1868, file: !268, line: 257, type: !28)
!1878 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1868, file: !268, line: 258, type: !5)
!1879 = !DILocalVariable(name: "flags", arg: 6, scope: !1868, file: !268, line: 258, type: !37)
!1880 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1868, file: !268, line: 259, type: !1871)
!1881 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1868, file: !268, line: 260, type: !26)
!1882 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1868, file: !268, line: 261, type: !26)
!1883 = !DILocalVariable(name: "i", scope: !1868, file: !268, line: 263, type: !28)
!1884 = !DILocalVariable(name: "len", scope: !1868, file: !268, line: 264, type: !28)
!1885 = !DILocalVariable(name: "orig_buffersize", scope: !1868, file: !268, line: 265, type: !28)
!1886 = !DILocalVariable(name: "quote_string", scope: !1868, file: !268, line: 266, type: !26)
!1887 = !DILocalVariable(name: "quote_string_len", scope: !1868, file: !268, line: 267, type: !28)
!1888 = !DILocalVariable(name: "backslash_escapes", scope: !1868, file: !268, line: 268, type: !45)
!1889 = !DILocalVariable(name: "unibyte_locale", scope: !1868, file: !268, line: 269, type: !45)
!1890 = !DILocalVariable(name: "elide_outer_quotes", scope: !1868, file: !268, line: 270, type: !45)
!1891 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1868, file: !268, line: 271, type: !45)
!1892 = !DILocalVariable(name: "encountered_single_quote", scope: !1868, file: !268, line: 272, type: !45)
!1893 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1868, file: !268, line: 273, type: !45)
!1894 = !DILocalVariable(name: "c", scope: !1895, file: !268, line: 402, type: !82)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !268, line: 401, column: 5)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !268, line: 400, column: 3)
!1897 = distinct !DILexicalBlock(scope: !1868, file: !268, line: 400, column: 3)
!1898 = !DILocalVariable(name: "esc", scope: !1895, file: !268, line: 403, type: !82)
!1899 = !DILocalVariable(name: "is_right_quote", scope: !1895, file: !268, line: 404, type: !45)
!1900 = !DILocalVariable(name: "escaping", scope: !1895, file: !268, line: 405, type: !45)
!1901 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1895, file: !268, line: 406, type: !45)
!1902 = !DILocalVariable(name: "m", scope: !1903, file: !268, line: 610, type: !28)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 608, column: 11)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !268, line: 426, column: 9)
!1905 = !DILocalVariable(name: "printable", scope: !1903, file: !268, line: 612, type: !45)
!1906 = !DILocalVariable(name: "mbstate", scope: !1907, file: !268, line: 621, type: !1909)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !268, line: 620, column: 15)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !268, line: 614, column: 17)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1910, line: 6, baseType: !1911)
!1910 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1912, line: 21, baseType: !1913)
!1912 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1912, line: 13, size: 64, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1913, file: !1912, line: 15, baseType: !37, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1913, file: !1912, line: 20, baseType: !1917, size: 32, offset: 32)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1913, file: !1912, line: 16, size: 32, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1917, file: !1912, line: 18, baseType: !7, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1917, file: !1912, line: 19, baseType: !1921, size: 32)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1922)
!1922 = !{!1923}
!1923 = !DISubrange(count: 4)
!1924 = !DILocalVariable(name: "w", scope: !1925, file: !268, line: 631, type: !1926)
!1925 = distinct !DILexicalBlock(scope: !1907, file: !268, line: 630, column: 19)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !29, line: 90, baseType: !37)
!1927 = !DILocalVariable(name: "bytes", scope: !1925, file: !268, line: 632, type: !28)
!1928 = !DILocalVariable(name: "j", scope: !1929, file: !268, line: 657, type: !28)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !268, line: 656, column: 27)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !268, line: 654, column: 29)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !268, line: 649, column: 23)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !268, line: 641, column: 30)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !268, line: 636, column: 30)
!1934 = distinct !DILexicalBlock(scope: !1925, file: !268, line: 634, column: 25)
!1935 = !DILocalVariable(name: "ilim", scope: !1936, file: !268, line: 684, type: !28)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !268, line: 681, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1903, file: !268, line: 680, column: 17)
!1938 = !DILocation(line: 256, column: 33, scope: !1868)
!1939 = !DILocation(line: 256, column: 48, scope: !1868)
!1940 = !DILocation(line: 257, column: 39, scope: !1868)
!1941 = !DILocation(line: 257, column: 51, scope: !1868)
!1942 = !DILocation(line: 258, column: 46, scope: !1868)
!1943 = !DILocation(line: 258, column: 65, scope: !1868)
!1944 = !DILocation(line: 259, column: 47, scope: !1868)
!1945 = !DILocation(line: 260, column: 39, scope: !1868)
!1946 = !DILocation(line: 261, column: 39, scope: !1868)
!1947 = !DILocation(line: 264, column: 10, scope: !1868)
!1948 = !DILocation(line: 265, column: 10, scope: !1868)
!1949 = !DILocation(line: 266, column: 15, scope: !1868)
!1950 = !DILocation(line: 267, column: 10, scope: !1868)
!1951 = !DILocation(line: 268, column: 8, scope: !1868)
!1952 = !DILocation(line: 269, column: 25, scope: !1868)
!1953 = !DILocation(line: 269, column: 36, scope: !1868)
!1954 = !DILocation(line: 270, column: 8, scope: !1868)
!1955 = !DILocation(line: 271, column: 8, scope: !1868)
!1956 = !DILocation(line: 272, column: 8, scope: !1868)
!1957 = !DILocation(line: 273, column: 8, scope: !1868)
!1958 = !DILocation(line: 273, column: 3, scope: !1868)
!1959 = !DILocation(line: 0, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1868, file: !268, line: 317, column: 5)
!1961 = !DILocation(line: 316, column: 3, scope: !1868)
!1962 = !DILocation(line: 323, column: 11, scope: !1960)
!1963 = !DILocation(line: 323, column: 12, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !268, line: 323, column: 11)
!1965 = !DILocation(line: 324, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !268, line: 324, column: 9)
!1967 = distinct !DILexicalBlock(scope: !1964, file: !268, line: 324, column: 9)
!1968 = !DILocation(line: 324, column: 9, scope: !1967)
!1969 = !DILocation(line: 362, column: 26, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !268, line: 340, column: 11)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !268, line: 339, column: 13)
!1972 = distinct !DILexicalBlock(scope: !1960, file: !268, line: 338, column: 7)
!1973 = !DILocation(line: 363, column: 27, scope: !1970)
!1974 = !DILocation(line: 364, column: 11, scope: !1970)
!1975 = !DILocation(line: 365, column: 14, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !268, line: 365, column: 13)
!1977 = !DILocation(line: 365, column: 13, scope: !1972)
!1978 = !DILocation(line: 366, column: 43, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !268, line: 366, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !268, line: 366, column: 11)
!1981 = !DILocation(line: 366, column: 11, scope: !1980)
!1982 = !DILocation(line: 367, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !268, line: 367, column: 13)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !268, line: 367, column: 13)
!1985 = !DILocation(line: 367, column: 13, scope: !1984)
!1986 = !DILocation(line: 366, column: 70, scope: !1979)
!1987 = distinct !{!1987, !1981, !1988}
!1988 = !DILocation(line: 367, column: 13, scope: !1980)
!1989 = !DILocation(line: 370, column: 28, scope: !1972)
!1990 = !DILocation(line: 372, column: 7, scope: !1960)
!1991 = !DILocation(line: 376, column: 7, scope: !1960)
!1992 = !DILocation(line: 379, column: 7, scope: !1960)
!1993 = !DILocation(line: 381, column: 12, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1960, file: !268, line: 381, column: 11)
!1995 = !DILocation(line: 381, column: 11, scope: !1960)
!1996 = !DILocation(line: 0, scope: !1994)
!1997 = !DILocation(line: 386, column: 12, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1960, file: !268, line: 386, column: 11)
!1999 = !DILocation(line: 386, column: 11, scope: !1960)
!2000 = !DILocation(line: 387, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !268, line: 387, column: 9)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !268, line: 387, column: 9)
!2003 = !DILocation(line: 387, column: 9, scope: !2002)
!2004 = !DILocation(line: 394, column: 7, scope: !1960)
!2005 = !DILocation(line: 397, column: 7, scope: !1960)
!2006 = !DILocation(line: 0, scope: !1868)
!2007 = !DILocation(line: 263, column: 10, scope: !1868)
!2008 = !DILocation(line: 400, column: 8, scope: !1897)
!2009 = !DILocation(line: 0, scope: !1896)
!2010 = !DILocation(line: 400, column: 27, scope: !1896)
!2011 = !DILocation(line: 400, column: 19, scope: !1896)
!2012 = !DILocation(line: 400, column: 41, scope: !1896)
!2013 = !DILocation(line: 400, column: 48, scope: !1896)
!2014 = !DILocation(line: 400, column: 3, scope: !1897)
!2015 = !DILocation(line: 400, column: 60, scope: !1896)
!2016 = !DILocation(line: 404, column: 12, scope: !1895)
!2017 = !DILocation(line: 405, column: 12, scope: !1895)
!2018 = !DILocation(line: 406, column: 12, scope: !1895)
!2019 = !DILocation(line: 409, column: 11, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1895, file: !268, line: 408, column: 11)
!2021 = !DILocation(line: 411, column: 17, scope: !2020)
!2022 = !DILocation(line: 412, column: 39, scope: !2020)
!2023 = !DILocation(line: 416, column: 32, scope: !2020)
!2024 = !DILocation(line: 412, column: 19, scope: !2020)
!2025 = !DILocation(line: 412, column: 15, scope: !2020)
!2026 = !DILocation(line: 417, column: 11, scope: !2020)
!2027 = !DILocation(line: 417, column: 26, scope: !2020)
!2028 = !DILocation(line: 417, column: 14, scope: !2020)
!2029 = !DILocation(line: 417, column: 63, scope: !2020)
!2030 = !DILocation(line: 408, column: 11, scope: !1895)
!2031 = !DILocation(line: 0, scope: !1895)
!2032 = !DILocation(line: 424, column: 11, scope: !1895)
!2033 = !DILocation(line: 402, column: 21, scope: !1895)
!2034 = !DILocation(line: 425, column: 7, scope: !1895)
!2035 = !DILocation(line: 428, column: 15, scope: !1904)
!2036 = !DILocation(line: 430, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !268, line: 430, column: 15)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !268, line: 429, column: 13)
!2039 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 428, column: 15)
!2040 = !DILocation(line: 430, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !268, line: 430, column: 15)
!2042 = !DILocation(line: 430, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !268, line: 430, column: 15)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !268, line: 430, column: 15)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !268, line: 430, column: 15)
!2046 = !DILocation(line: 430, column: 15, scope: !2044)
!2047 = !DILocation(line: 430, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !268, line: 430, column: 15)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !268, line: 430, column: 15)
!2050 = !DILocation(line: 430, column: 15, scope: !2049)
!2051 = !DILocation(line: 430, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !268, line: 430, column: 15)
!2053 = distinct !DILexicalBlock(scope: !2045, file: !268, line: 430, column: 15)
!2054 = !DILocation(line: 430, column: 15, scope: !2053)
!2055 = !DILocation(line: 430, column: 15, scope: !2045)
!2056 = !DILocation(line: 430, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !268, line: 430, column: 15)
!2058 = distinct !DILexicalBlock(scope: !2037, file: !268, line: 430, column: 15)
!2059 = !DILocation(line: 430, column: 15, scope: !2058)
!2060 = !DILocation(line: 438, column: 19, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2038, file: !268, line: 437, column: 19)
!2062 = !DILocation(line: 438, column: 24, scope: !2061)
!2063 = !DILocation(line: 438, column: 28, scope: !2061)
!2064 = !DILocation(line: 438, column: 38, scope: !2061)
!2065 = !DILocation(line: 438, column: 48, scope: !2061)
!2066 = !DILocation(line: 438, column: 59, scope: !2061)
!2067 = !DILocation(line: 440, column: 19, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !268, line: 440, column: 19)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 440, column: 19)
!2070 = distinct !DILexicalBlock(scope: !2061, file: !268, line: 439, column: 17)
!2071 = !DILocation(line: 440, column: 19, scope: !2069)
!2072 = !DILocation(line: 441, column: 19, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !268, line: 441, column: 19)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 441, column: 19)
!2075 = !DILocation(line: 441, column: 19, scope: !2074)
!2076 = !DILocation(line: 442, column: 17, scope: !2070)
!2077 = !DILocation(line: 449, column: 20, scope: !2039)
!2078 = !DILocation(line: 454, column: 11, scope: !1904)
!2079 = !DILocation(line: 457, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 455, column: 13)
!2081 = !DILocation(line: 463, column: 19, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2080, file: !268, line: 462, column: 19)
!2083 = !DILocation(line: 463, column: 24, scope: !2082)
!2084 = !DILocation(line: 463, column: 28, scope: !2082)
!2085 = !DILocation(line: 463, column: 38, scope: !2082)
!2086 = !DILocation(line: 463, column: 47, scope: !2082)
!2087 = !DILocation(line: 463, column: 41, scope: !2082)
!2088 = !DILocation(line: 463, column: 52, scope: !2082)
!2089 = !DILocation(line: 462, column: 19, scope: !2080)
!2090 = !DILocation(line: 464, column: 25, scope: !2082)
!2091 = !DILocation(line: 464, column: 17, scope: !2082)
!2092 = !DILocation(line: 471, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2082, file: !268, line: 465, column: 19)
!2094 = !DILocation(line: 475, column: 21, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !268, line: 475, column: 21)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !268, line: 475, column: 21)
!2097 = !DILocation(line: 475, column: 21, scope: !2096)
!2098 = !DILocation(line: 476, column: 21, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !268, line: 476, column: 21)
!2100 = distinct !DILexicalBlock(scope: !2093, file: !268, line: 476, column: 21)
!2101 = !DILocation(line: 476, column: 21, scope: !2100)
!2102 = !DILocation(line: 477, column: 21, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !268, line: 477, column: 21)
!2104 = distinct !DILexicalBlock(scope: !2093, file: !268, line: 477, column: 21)
!2105 = !DILocation(line: 477, column: 21, scope: !2104)
!2106 = !DILocation(line: 478, column: 21, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !268, line: 478, column: 21)
!2108 = distinct !DILexicalBlock(scope: !2093, file: !268, line: 478, column: 21)
!2109 = !DILocation(line: 478, column: 21, scope: !2108)
!2110 = !DILocation(line: 479, column: 21, scope: !2093)
!2111 = !DILocation(line: 403, column: 21, scope: !1895)
!2112 = !DILocation(line: 492, column: 31, scope: !1904)
!2113 = !DILocation(line: 493, column: 31, scope: !1904)
!2114 = !DILocation(line: 495, column: 31, scope: !1904)
!2115 = !DILocation(line: 496, column: 31, scope: !1904)
!2116 = !DILocation(line: 497, column: 31, scope: !1904)
!2117 = !DILocation(line: 500, column: 15, scope: !1904)
!2118 = !DILocation(line: 502, column: 19, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !268, line: 501, column: 13)
!2120 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 500, column: 15)
!2121 = !DILocation(line: 509, column: 33, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 509, column: 15)
!2123 = !DILocation(line: 0, scope: !1904)
!2124 = !DILocation(line: 514, column: 15, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 513, column: 15)
!2126 = !DILocation(line: 518, column: 15, scope: !1904)
!2127 = !DILocation(line: 526, column: 26, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 526, column: 15)
!2129 = !DILocation(line: 526, column: 15, scope: !1904)
!2130 = !DILocation(line: 526, column: 40, scope: !2128)
!2131 = !DILocation(line: 526, column: 47, scope: !2128)
!2132 = !DILocation(line: 530, column: 17, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 530, column: 15)
!2134 = !DILocation(line: 526, column: 18, scope: !2128)
!2135 = !DILocation(line: 526, column: 65, scope: !2128)
!2136 = !DILocation(line: 530, column: 15, scope: !1904)
!2137 = !DILocation(line: 535, column: 11, scope: !1904)
!2138 = !DILocation(line: 549, column: 15, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 548, column: 15)
!2140 = !DILocation(line: 556, column: 15, scope: !1904)
!2141 = !DILocation(line: 558, column: 19, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !268, line: 557, column: 13)
!2143 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 556, column: 15)
!2144 = !DILocation(line: 561, column: 19, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !268, line: 561, column: 19)
!2146 = !DILocation(line: 561, column: 35, scope: !2145)
!2147 = !DILocation(line: 561, column: 30, scope: !2145)
!2148 = !DILocation(line: 570, column: 15, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !268, line: 570, column: 15)
!2150 = distinct !DILexicalBlock(scope: !2142, file: !268, line: 570, column: 15)
!2151 = !DILocation(line: 570, column: 15, scope: !2150)
!2152 = !DILocation(line: 571, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !268, line: 571, column: 15)
!2154 = distinct !DILexicalBlock(scope: !2142, file: !268, line: 571, column: 15)
!2155 = !DILocation(line: 571, column: 15, scope: !2154)
!2156 = !DILocation(line: 572, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !268, line: 572, column: 15)
!2158 = distinct !DILexicalBlock(scope: !2142, file: !268, line: 572, column: 15)
!2159 = !DILocation(line: 572, column: 15, scope: !2158)
!2160 = !DILocation(line: 574, column: 13, scope: !2142)
!2161 = !DILocation(line: 614, column: 17, scope: !1903)
!2162 = !DILocation(line: 610, column: 20, scope: !1903)
!2163 = !DILocation(line: 617, column: 29, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1908, file: !268, line: 615, column: 15)
!2165 = !{!2166, !2166, i64 0}
!2166 = !{!"short", !841, i64 0}
!2167 = !DILocation(line: 617, column: 27, scope: !2164)
!2168 = !DILocation(line: 612, column: 18, scope: !1903)
!2169 = !DILocation(line: 618, column: 15, scope: !2164)
!2170 = !DILocation(line: 621, column: 17, scope: !1907)
!2171 = !DILocation(line: 622, column: 17, scope: !1907)
!2172 = !DILocation(line: 626, column: 29, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1907, file: !268, line: 626, column: 21)
!2174 = !DILocation(line: 626, column: 21, scope: !1907)
!2175 = !DILocation(line: 627, column: 29, scope: !2173)
!2176 = !DILocation(line: 627, column: 19, scope: !2173)
!2177 = !DILocation(line: 0, scope: !2020)
!2178 = !DILocation(line: 629, column: 17, scope: !1907)
!2179 = !DILocation(line: 624, column: 19, scope: !1907)
!2180 = !DILocation(line: 625, column: 27, scope: !1907)
!2181 = !DILocation(line: 631, column: 21, scope: !1925)
!2182 = !DILocation(line: 632, column: 56, scope: !1925)
!2183 = !DILocation(line: 632, column: 50, scope: !1925)
!2184 = !DILocation(line: 633, column: 53, scope: !1925)
!2185 = !DILocation(line: 621, column: 27, scope: !1907)
!2186 = !DILocation(line: 631, column: 29, scope: !1925)
!2187 = !DILocation(line: 632, column: 36, scope: !1925)
!2188 = !DILocation(line: 632, column: 28, scope: !1925)
!2189 = !DILocation(line: 634, column: 25, scope: !1925)
!2190 = !DILocation(line: 644, column: 38, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1932, file: !268, line: 642, column: 23)
!2192 = !DILocation(line: 644, column: 48, scope: !2191)
!2193 = !DILocation(line: 644, column: 51, scope: !2191)
!2194 = !DILocation(line: 644, column: 25, scope: !2191)
!2195 = !DILocation(line: 645, column: 28, scope: !2191)
!2196 = !DILocation(line: 644, column: 34, scope: !2191)
!2197 = distinct !{!2197, !2194, !2195}
!2198 = !DILocation(line: 658, column: 43, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !268, line: 658, column: 29)
!2200 = distinct !DILexicalBlock(scope: !1929, file: !268, line: 658, column: 29)
!2201 = !DILocation(line: 655, column: 29, scope: !1930)
!2202 = !DILocation(line: 657, column: 36, scope: !1929)
!2203 = !DILocation(line: 659, column: 49, scope: !2199)
!2204 = !DILocation(line: 659, column: 39, scope: !2199)
!2205 = !DILocation(line: 659, column: 31, scope: !2199)
!2206 = !DILocation(line: 658, column: 53, scope: !2199)
!2207 = !DILocation(line: 658, column: 29, scope: !2200)
!2208 = distinct !{!2208, !2207, !2209}
!2209 = !DILocation(line: 667, column: 33, scope: !2200)
!2210 = !DILocation(line: 674, column: 19, scope: !1907)
!2211 = !DILocation(line: 670, column: 41, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1931, file: !268, line: 670, column: 29)
!2213 = !DILocation(line: 670, column: 31, scope: !2212)
!2214 = !DILocation(line: 670, column: 29, scope: !1931)
!2215 = !DILocation(line: 672, column: 27, scope: !1931)
!2216 = !DILocation(line: 675, column: 26, scope: !1907)
!2217 = !DILocation(line: 675, column: 24, scope: !1907)
!2218 = !DILocation(line: 674, column: 19, scope: !1925)
!2219 = distinct !{!2219, !2178, !2220}
!2220 = !DILocation(line: 675, column: 44, scope: !1907)
!2221 = !DILocation(line: 676, column: 15, scope: !1908)
!2222 = !DILocation(line: 0, scope: !2173)
!2223 = !DILocation(line: 0, scope: !1907)
!2224 = !DILocation(line: 678, column: 40, scope: !1903)
!2225 = !DILocation(line: 680, column: 19, scope: !1937)
!2226 = !DILocation(line: 680, column: 45, scope: !1937)
!2227 = !DILocation(line: 680, column: 23, scope: !1937)
!2228 = !DILocation(line: 684, column: 33, scope: !1936)
!2229 = !DILocation(line: 684, column: 24, scope: !1936)
!2230 = !DILocation(line: 686, column: 17, scope: !1936)
!2231 = !DILocation(line: 0, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !268, line: 687, column: 19)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !268, line: 686, column: 17)
!2234 = distinct !DILexicalBlock(scope: !1936, file: !268, line: 686, column: 17)
!2235 = !DILocation(line: 0, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !268, line: 703, column: 21)
!2237 = !DILocation(line: 0, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !268, line: 696, column: 23)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !268, line: 695, column: 30)
!2240 = distinct !DILexicalBlock(scope: !2232, file: !268, line: 688, column: 25)
!2241 = !DILocation(line: 688, column: 43, scope: !2240)
!2242 = !DILocation(line: 690, column: 25, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !268, line: 690, column: 25)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !268, line: 689, column: 23)
!2245 = !DILocation(line: 690, column: 25, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !268, line: 690, column: 25)
!2247 = !DILocation(line: 690, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !268, line: 690, column: 25)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !268, line: 690, column: 25)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !268, line: 690, column: 25)
!2251 = !DILocation(line: 690, column: 25, scope: !2249)
!2252 = !DILocation(line: 690, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !268, line: 690, column: 25)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !268, line: 690, column: 25)
!2255 = !DILocation(line: 690, column: 25, scope: !2254)
!2256 = !DILocation(line: 690, column: 25, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !268, line: 690, column: 25)
!2258 = distinct !DILexicalBlock(scope: !2250, file: !268, line: 690, column: 25)
!2259 = !DILocation(line: 690, column: 25, scope: !2258)
!2260 = !DILocation(line: 690, column: 25, scope: !2250)
!2261 = !DILocation(line: 690, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !268, line: 690, column: 25)
!2263 = distinct !DILexicalBlock(scope: !2243, file: !268, line: 690, column: 25)
!2264 = !DILocation(line: 690, column: 25, scope: !2263)
!2265 = !DILocation(line: 691, column: 25, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !268, line: 691, column: 25)
!2267 = distinct !DILexicalBlock(scope: !2244, file: !268, line: 691, column: 25)
!2268 = !DILocation(line: 691, column: 25, scope: !2267)
!2269 = !DILocation(line: 692, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !268, line: 692, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2244, file: !268, line: 692, column: 25)
!2272 = !DILocation(line: 692, column: 25, scope: !2271)
!2273 = !DILocation(line: 693, column: 38, scope: !2244)
!2274 = !DILocation(line: 693, column: 33, scope: !2244)
!2275 = !DILocation(line: 694, column: 23, scope: !2244)
!2276 = !DILocation(line: 695, column: 30, scope: !2239)
!2277 = !DILocation(line: 695, column: 30, scope: !2240)
!2278 = !DILocation(line: 697, column: 25, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !268, line: 697, column: 25)
!2280 = distinct !DILexicalBlock(scope: !2238, file: !268, line: 697, column: 25)
!2281 = !DILocation(line: 697, column: 25, scope: !2280)
!2282 = !DILocation(line: 699, column: 23, scope: !2238)
!2283 = !DILocation(line: 0, scope: !2271)
!2284 = !DILocation(line: 0, scope: !2244)
!2285 = !DILocation(line: 0, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2020, file: !268, line: 418, column: 9)
!2287 = !DILocation(line: 0, scope: !2243)
!2288 = !DILocation(line: 700, column: 35, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2232, file: !268, line: 700, column: 25)
!2290 = !DILocation(line: 700, column: 30, scope: !2289)
!2291 = !DILocation(line: 700, column: 25, scope: !2232)
!2292 = !DILocation(line: 702, column: 21, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !268, line: 702, column: 21)
!2294 = distinct !DILexicalBlock(scope: !2232, file: !268, line: 702, column: 21)
!2295 = !DILocation(line: 702, column: 21, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !268, line: 702, column: 21)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !268, line: 702, column: 21)
!2298 = distinct !DILexicalBlock(scope: !2293, file: !268, line: 702, column: 21)
!2299 = !DILocation(line: 702, column: 21, scope: !2297)
!2300 = !DILocation(line: 702, column: 21, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !268, line: 702, column: 21)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !268, line: 702, column: 21)
!2303 = !DILocation(line: 702, column: 21, scope: !2302)
!2304 = !DILocation(line: 702, column: 21, scope: !2298)
!2305 = !DILocation(line: 0, scope: !2280)
!2306 = !DILocation(line: 703, column: 21, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2236, file: !268, line: 703, column: 21)
!2308 = !DILocation(line: 703, column: 21, scope: !2236)
!2309 = !DILocation(line: 704, column: 25, scope: !2232)
!2310 = !DILocation(line: 686, column: 17, scope: !2233)
!2311 = distinct !{!2311, !2312, !2313}
!2312 = !DILocation(line: 686, column: 17, scope: !2234)
!2313 = !DILocation(line: 705, column: 19, scope: !2234)
!2314 = !DILocation(line: 0, scope: !1897)
!2315 = !DILocation(line: 416, column: 30, scope: !2020)
!2316 = !DILocation(line: 712, column: 34, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1895, file: !268, line: 712, column: 11)
!2318 = !DILocation(line: 714, column: 14, scope: !2317)
!2319 = !DILocation(line: 715, column: 14, scope: !2317)
!2320 = !DILocation(line: 715, column: 35, scope: !2317)
!2321 = !DILocation(line: 715, column: 17, scope: !2317)
!2322 = !DILocation(line: 715, column: 47, scope: !2317)
!2323 = !DILocation(line: 715, column: 65, scope: !2317)
!2324 = !DILocation(line: 716, column: 15, scope: !2317)
!2325 = !DILocation(line: 716, column: 11, scope: !2317)
!2326 = !DILocation(line: 712, column: 11, scope: !1895)
!2327 = !DILocation(line: 400, column: 10, scope: !1897)
!2328 = !DILocation(line: 0, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !268, line: 519, column: 13)
!2330 = distinct !DILexicalBlock(scope: !1904, file: !268, line: 518, column: 15)
!2331 = !DILocation(line: 720, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !1895, file: !268, line: 720, column: 7)
!2333 = !DILocation(line: 720, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2332, file: !268, line: 720, column: 7)
!2335 = !DILocation(line: 720, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !268, line: 720, column: 7)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !268, line: 720, column: 7)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !268, line: 720, column: 7)
!2339 = !DILocation(line: 720, column: 7, scope: !2337)
!2340 = !DILocation(line: 720, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !268, line: 720, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !268, line: 720, column: 7)
!2343 = !DILocation(line: 720, column: 7, scope: !2342)
!2344 = !DILocation(line: 720, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !268, line: 720, column: 7)
!2346 = distinct !DILexicalBlock(scope: !2338, file: !268, line: 720, column: 7)
!2347 = !DILocation(line: 720, column: 7, scope: !2346)
!2348 = !DILocation(line: 720, column: 7, scope: !2338)
!2349 = !DILocation(line: 720, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !268, line: 720, column: 7)
!2351 = distinct !DILexicalBlock(scope: !2332, file: !268, line: 720, column: 7)
!2352 = !DILocation(line: 720, column: 7, scope: !2351)
!2353 = !DILocation(line: 723, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !268, line: 723, column: 7)
!2355 = distinct !DILexicalBlock(scope: !1895, file: !268, line: 723, column: 7)
!2356 = !DILocation(line: 424, column: 9, scope: !1895)
!2357 = !DILocation(line: 723, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !268, line: 723, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !268, line: 723, column: 7)
!2360 = distinct !DILexicalBlock(scope: !2354, file: !268, line: 723, column: 7)
!2361 = !DILocation(line: 723, column: 7, scope: !2359)
!2362 = !DILocation(line: 723, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !268, line: 723, column: 7)
!2364 = distinct !DILexicalBlock(scope: !2360, file: !268, line: 723, column: 7)
!2365 = !DILocation(line: 723, column: 7, scope: !2364)
!2366 = !DILocation(line: 723, column: 7, scope: !2360)
!2367 = !DILocation(line: 724, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !268, line: 724, column: 7)
!2369 = distinct !DILexicalBlock(scope: !1895, file: !268, line: 724, column: 7)
!2370 = !DILocation(line: 724, column: 7, scope: !2369)
!2371 = !DILocation(line: 726, column: 13, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !1895, file: !268, line: 726, column: 11)
!2373 = !DILocation(line: 726, column: 11, scope: !1895)
!2374 = !DILocation(line: 728, column: 5, scope: !1896)
!2375 = !DILocation(line: 400, column: 75, scope: !1896)
!2376 = !DILocation(line: 400, column: 3, scope: !1896)
!2377 = distinct !{!2377, !2014, !2378}
!2378 = !DILocation(line: 728, column: 5, scope: !1897)
!2379 = !DILocation(line: 730, column: 11, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !1868, file: !268, line: 730, column: 7)
!2381 = !DILocation(line: 730, column: 16, scope: !2380)
!2382 = !DILocation(line: 738, column: 51, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !1868, file: !268, line: 738, column: 7)
!2384 = !DILocation(line: 739, column: 10, scope: !2383)
!2385 = !DILocation(line: 741, column: 11, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !268, line: 741, column: 11)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !268, line: 740, column: 5)
!2388 = !DILocation(line: 741, column: 11, scope: !2387)
!2389 = !DILocation(line: 742, column: 16, scope: !2386)
!2390 = !DILocation(line: 742, column: 9, scope: !2386)
!2391 = !DILocation(line: 746, column: 18, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2386, file: !268, line: 746, column: 16)
!2393 = !DILocation(line: 746, column: 32, scope: !2392)
!2394 = !DILocation(line: 746, column: 29, scope: !2392)
!2395 = !DILocation(line: 755, column: 7, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !1868, file: !268, line: 755, column: 7)
!2397 = !DILocation(line: 755, column: 20, scope: !2396)
!2398 = !DILocation(line: 756, column: 12, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !268, line: 756, column: 5)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !268, line: 756, column: 5)
!2401 = !DILocation(line: 756, column: 5, scope: !2400)
!2402 = !DILocation(line: 757, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !268, line: 757, column: 7)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !268, line: 757, column: 7)
!2405 = !DILocation(line: 757, column: 7, scope: !2404)
!2406 = !DILocation(line: 756, column: 39, scope: !2399)
!2407 = distinct !{!2407, !2401, !2408}
!2408 = !DILocation(line: 757, column: 7, scope: !2400)
!2409 = !DILocation(line: 759, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !1868, file: !268, line: 759, column: 7)
!2411 = !DILocation(line: 759, column: 7, scope: !1868)
!2412 = !DILocation(line: 760, column: 5, scope: !2410)
!2413 = !DILocation(line: 760, column: 17, scope: !2410)
!2414 = !DILocation(line: 766, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !1868, file: !268, line: 766, column: 7)
!2416 = !DILocation(line: 766, column: 54, scope: !2415)
!2417 = !DILocation(line: 766, column: 51, scope: !2415)
!2418 = !DILocation(line: 770, column: 42, scope: !1868)
!2419 = !DILocation(line: 768, column: 10, scope: !1868)
!2420 = !DILocation(line: 768, column: 3, scope: !1868)
!2421 = !DILocation(line: 772, column: 1, scope: !1868)
!2422 = distinct !DISubprogram(name: "gettext_quote", scope: !268, file: !268, line: 207, type: !2423, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!26, !26, !5}
!2425 = !{!2426, !2427, !2428, !2429}
!2426 = !DILocalVariable(name: "msgid", arg: 1, scope: !2422, file: !268, line: 207, type: !26)
!2427 = !DILocalVariable(name: "s", arg: 2, scope: !2422, file: !268, line: 207, type: !5)
!2428 = !DILocalVariable(name: "translation", scope: !2422, file: !268, line: 209, type: !26)
!2429 = !DILocalVariable(name: "locale_code", scope: !2422, file: !268, line: 210, type: !26)
!2430 = !DILocation(line: 207, column: 28, scope: !2422)
!2431 = !DILocation(line: 207, column: 54, scope: !2422)
!2432 = !DILocation(line: 209, column: 29, scope: !2422)
!2433 = !DILocation(line: 209, column: 15, scope: !2422)
!2434 = !DILocation(line: 212, column: 19, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2422, file: !268, line: 212, column: 7)
!2436 = !DILocation(line: 212, column: 7, scope: !2422)
!2437 = !DILocation(line: 233, column: 17, scope: !2422)
!2438 = !DILocation(line: 210, column: 15, scope: !2422)
!2439 = !DILocalVariable(name: "s1", arg: 1, scope: !2440, file: !2441, line: 160, type: !26)
!2440 = distinct !DISubprogram(name: "strcaseeq0", scope: !2441, file: !2441, line: 160, type: !2442, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2444)
!2441 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!37, !26, !26, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2444 = !{!2439, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2445 = !DILocalVariable(name: "s2", arg: 2, scope: !2440, file: !2441, line: 160, type: !26)
!2446 = !DILocalVariable(name: "s20", arg: 3, scope: !2440, file: !2441, line: 160, type: !22)
!2447 = !DILocalVariable(name: "s21", arg: 4, scope: !2440, file: !2441, line: 160, type: !22)
!2448 = !DILocalVariable(name: "s22", arg: 5, scope: !2440, file: !2441, line: 160, type: !22)
!2449 = !DILocalVariable(name: "s23", arg: 6, scope: !2440, file: !2441, line: 160, type: !22)
!2450 = !DILocalVariable(name: "s24", arg: 7, scope: !2440, file: !2441, line: 160, type: !22)
!2451 = !DILocalVariable(name: "s25", arg: 8, scope: !2440, file: !2441, line: 160, type: !22)
!2452 = !DILocalVariable(name: "s26", arg: 9, scope: !2440, file: !2441, line: 160, type: !22)
!2453 = !DILocalVariable(name: "s27", arg: 10, scope: !2440, file: !2441, line: 160, type: !22)
!2454 = !DILocalVariable(name: "s28", arg: 11, scope: !2440, file: !2441, line: 160, type: !22)
!2455 = !DILocation(line: 160, column: 25, scope: !2440, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 234, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2422, file: !268, line: 234, column: 7)
!2458 = !DILocation(line: 160, column: 41, scope: !2440, inlinedAt: !2456)
!2459 = !DILocation(line: 160, column: 50, scope: !2440, inlinedAt: !2456)
!2460 = !DILocation(line: 160, column: 60, scope: !2440, inlinedAt: !2456)
!2461 = !DILocation(line: 160, column: 70, scope: !2440, inlinedAt: !2456)
!2462 = !DILocation(line: 160, column: 80, scope: !2440, inlinedAt: !2456)
!2463 = !DILocation(line: 160, column: 90, scope: !2440, inlinedAt: !2456)
!2464 = !DILocation(line: 160, column: 100, scope: !2440, inlinedAt: !2456)
!2465 = !DILocation(line: 160, column: 110, scope: !2440, inlinedAt: !2456)
!2466 = !DILocation(line: 160, column: 120, scope: !2440, inlinedAt: !2456)
!2467 = !DILocation(line: 160, column: 130, scope: !2440, inlinedAt: !2456)
!2468 = !DILocation(line: 162, column: 7, scope: !2469, inlinedAt: !2456)
!2469 = distinct !DILexicalBlock(scope: !2440, file: !2441, line: 162, column: 7)
!2470 = !DILocalVariable(name: "s1", arg: 1, scope: !2471, file: !2441, line: 146, type: !26)
!2471 = distinct !DISubprogram(name: "strcaseeq1", scope: !2441, file: !2441, line: 146, type: !2472, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!37, !26, !26, !22, !22, !22, !22, !22, !22, !22, !22}
!2474 = !{!2470, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2475 = !DILocalVariable(name: "s2", arg: 2, scope: !2471, file: !2441, line: 146, type: !26)
!2476 = !DILocalVariable(name: "s21", arg: 3, scope: !2471, file: !2441, line: 146, type: !22)
!2477 = !DILocalVariable(name: "s22", arg: 4, scope: !2471, file: !2441, line: 146, type: !22)
!2478 = !DILocalVariable(name: "s23", arg: 5, scope: !2471, file: !2441, line: 146, type: !22)
!2479 = !DILocalVariable(name: "s24", arg: 6, scope: !2471, file: !2441, line: 146, type: !22)
!2480 = !DILocalVariable(name: "s25", arg: 7, scope: !2471, file: !2441, line: 146, type: !22)
!2481 = !DILocalVariable(name: "s26", arg: 8, scope: !2471, file: !2441, line: 146, type: !22)
!2482 = !DILocalVariable(name: "s27", arg: 9, scope: !2471, file: !2441, line: 146, type: !22)
!2483 = !DILocalVariable(name: "s28", arg: 10, scope: !2471, file: !2441, line: 146, type: !22)
!2484 = !DILocation(line: 146, column: 25, scope: !2471, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 167, column: 16, scope: !2486, inlinedAt: !2456)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !2441, line: 164, column: 11)
!2487 = distinct !DILexicalBlock(scope: !2469, file: !2441, line: 163, column: 5)
!2488 = !DILocation(line: 146, column: 41, scope: !2471, inlinedAt: !2485)
!2489 = !DILocation(line: 146, column: 50, scope: !2471, inlinedAt: !2485)
!2490 = !DILocation(line: 146, column: 60, scope: !2471, inlinedAt: !2485)
!2491 = !DILocation(line: 146, column: 70, scope: !2471, inlinedAt: !2485)
!2492 = !DILocation(line: 146, column: 80, scope: !2471, inlinedAt: !2485)
!2493 = !DILocation(line: 146, column: 90, scope: !2471, inlinedAt: !2485)
!2494 = !DILocation(line: 146, column: 100, scope: !2471, inlinedAt: !2485)
!2495 = !DILocation(line: 146, column: 110, scope: !2471, inlinedAt: !2485)
!2496 = !DILocation(line: 146, column: 120, scope: !2471, inlinedAt: !2485)
!2497 = !DILocation(line: 148, column: 7, scope: !2498, inlinedAt: !2485)
!2498 = distinct !DILexicalBlock(scope: !2471, file: !2441, line: 148, column: 7)
!2499 = !DILocalVariable(name: "s1", arg: 1, scope: !2500, file: !2441, line: 132, type: !26)
!2500 = distinct !DISubprogram(name: "strcaseeq2", scope: !2441, file: !2441, line: 132, type: !2501, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!37, !26, !26, !22, !22, !22, !22, !22, !22, !22}
!2503 = !{!2499, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511}
!2504 = !DILocalVariable(name: "s2", arg: 2, scope: !2500, file: !2441, line: 132, type: !26)
!2505 = !DILocalVariable(name: "s22", arg: 3, scope: !2500, file: !2441, line: 132, type: !22)
!2506 = !DILocalVariable(name: "s23", arg: 4, scope: !2500, file: !2441, line: 132, type: !22)
!2507 = !DILocalVariable(name: "s24", arg: 5, scope: !2500, file: !2441, line: 132, type: !22)
!2508 = !DILocalVariable(name: "s25", arg: 6, scope: !2500, file: !2441, line: 132, type: !22)
!2509 = !DILocalVariable(name: "s26", arg: 7, scope: !2500, file: !2441, line: 132, type: !22)
!2510 = !DILocalVariable(name: "s27", arg: 8, scope: !2500, file: !2441, line: 132, type: !22)
!2511 = !DILocalVariable(name: "s28", arg: 9, scope: !2500, file: !2441, line: 132, type: !22)
!2512 = !DILocation(line: 132, column: 25, scope: !2500, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 153, column: 16, scope: !2514, inlinedAt: !2485)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !2441, line: 150, column: 11)
!2515 = distinct !DILexicalBlock(scope: !2498, file: !2441, line: 149, column: 5)
!2516 = !DILocation(line: 132, column: 41, scope: !2500, inlinedAt: !2513)
!2517 = !DILocation(line: 132, column: 50, scope: !2500, inlinedAt: !2513)
!2518 = !DILocation(line: 132, column: 60, scope: !2500, inlinedAt: !2513)
!2519 = !DILocation(line: 132, column: 70, scope: !2500, inlinedAt: !2513)
!2520 = !DILocation(line: 132, column: 80, scope: !2500, inlinedAt: !2513)
!2521 = !DILocation(line: 132, column: 90, scope: !2500, inlinedAt: !2513)
!2522 = !DILocation(line: 132, column: 100, scope: !2500, inlinedAt: !2513)
!2523 = !DILocation(line: 132, column: 110, scope: !2500, inlinedAt: !2513)
!2524 = !DILocation(line: 134, column: 7, scope: !2525, inlinedAt: !2513)
!2525 = distinct !DILexicalBlock(scope: !2500, file: !2441, line: 134, column: 7)
!2526 = !DILocalVariable(name: "s1", arg: 1, scope: !2527, file: !2441, line: 118, type: !26)
!2527 = distinct !DISubprogram(name: "strcaseeq3", scope: !2441, file: !2441, line: 118, type: !2528, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!37, !26, !26, !22, !22, !22, !22, !22, !22}
!2530 = !{!2526, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2531 = !DILocalVariable(name: "s2", arg: 2, scope: !2527, file: !2441, line: 118, type: !26)
!2532 = !DILocalVariable(name: "s23", arg: 3, scope: !2527, file: !2441, line: 118, type: !22)
!2533 = !DILocalVariable(name: "s24", arg: 4, scope: !2527, file: !2441, line: 118, type: !22)
!2534 = !DILocalVariable(name: "s25", arg: 5, scope: !2527, file: !2441, line: 118, type: !22)
!2535 = !DILocalVariable(name: "s26", arg: 6, scope: !2527, file: !2441, line: 118, type: !22)
!2536 = !DILocalVariable(name: "s27", arg: 7, scope: !2527, file: !2441, line: 118, type: !22)
!2537 = !DILocalVariable(name: "s28", arg: 8, scope: !2527, file: !2441, line: 118, type: !22)
!2538 = !DILocation(line: 118, column: 25, scope: !2527, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 139, column: 16, scope: !2540, inlinedAt: !2513)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2441, line: 136, column: 11)
!2541 = distinct !DILexicalBlock(scope: !2525, file: !2441, line: 135, column: 5)
!2542 = !DILocation(line: 118, column: 41, scope: !2527, inlinedAt: !2539)
!2543 = !DILocation(line: 118, column: 50, scope: !2527, inlinedAt: !2539)
!2544 = !DILocation(line: 118, column: 60, scope: !2527, inlinedAt: !2539)
!2545 = !DILocation(line: 118, column: 70, scope: !2527, inlinedAt: !2539)
!2546 = !DILocation(line: 118, column: 80, scope: !2527, inlinedAt: !2539)
!2547 = !DILocation(line: 118, column: 90, scope: !2527, inlinedAt: !2539)
!2548 = !DILocation(line: 118, column: 100, scope: !2527, inlinedAt: !2539)
!2549 = !DILocation(line: 120, column: 7, scope: !2550, inlinedAt: !2539)
!2550 = distinct !DILexicalBlock(scope: !2527, file: !2441, line: 120, column: 7)
!2551 = !DILocation(line: 120, column: 7, scope: !2527, inlinedAt: !2539)
!2552 = !DILocalVariable(name: "s1", arg: 1, scope: !2553, file: !2441, line: 104, type: !26)
!2553 = distinct !DISubprogram(name: "strcaseeq4", scope: !2441, file: !2441, line: 104, type: !2554, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!37, !26, !26, !22, !22, !22, !22, !22}
!2556 = !{!2552, !2557, !2558, !2559, !2560, !2561, !2562}
!2557 = !DILocalVariable(name: "s2", arg: 2, scope: !2553, file: !2441, line: 104, type: !26)
!2558 = !DILocalVariable(name: "s24", arg: 3, scope: !2553, file: !2441, line: 104, type: !22)
!2559 = !DILocalVariable(name: "s25", arg: 4, scope: !2553, file: !2441, line: 104, type: !22)
!2560 = !DILocalVariable(name: "s26", arg: 5, scope: !2553, file: !2441, line: 104, type: !22)
!2561 = !DILocalVariable(name: "s27", arg: 6, scope: !2553, file: !2441, line: 104, type: !22)
!2562 = !DILocalVariable(name: "s28", arg: 7, scope: !2553, file: !2441, line: 104, type: !22)
!2563 = !DILocation(line: 104, column: 25, scope: !2553, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 125, column: 16, scope: !2565, inlinedAt: !2539)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !2441, line: 122, column: 11)
!2566 = distinct !DILexicalBlock(scope: !2550, file: !2441, line: 121, column: 5)
!2567 = !DILocation(line: 104, column: 41, scope: !2553, inlinedAt: !2564)
!2568 = !DILocation(line: 104, column: 50, scope: !2553, inlinedAt: !2564)
!2569 = !DILocation(line: 104, column: 60, scope: !2553, inlinedAt: !2564)
!2570 = !DILocation(line: 104, column: 70, scope: !2553, inlinedAt: !2564)
!2571 = !DILocation(line: 104, column: 80, scope: !2553, inlinedAt: !2564)
!2572 = !DILocation(line: 104, column: 90, scope: !2553, inlinedAt: !2564)
!2573 = !DILocation(line: 106, column: 7, scope: !2574, inlinedAt: !2564)
!2574 = distinct !DILexicalBlock(scope: !2553, file: !2441, line: 106, column: 7)
!2575 = !DILocation(line: 106, column: 7, scope: !2553, inlinedAt: !2564)
!2576 = !DILocalVariable(name: "s1", arg: 1, scope: !2577, file: !2441, line: 90, type: !26)
!2577 = distinct !DISubprogram(name: "strcaseeq5", scope: !2441, file: !2441, line: 90, type: !2578, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!37, !26, !26, !22, !22, !22, !22}
!2580 = !{!2576, !2581, !2582, !2583, !2584, !2585}
!2581 = !DILocalVariable(name: "s2", arg: 2, scope: !2577, file: !2441, line: 90, type: !26)
!2582 = !DILocalVariable(name: "s25", arg: 3, scope: !2577, file: !2441, line: 90, type: !22)
!2583 = !DILocalVariable(name: "s26", arg: 4, scope: !2577, file: !2441, line: 90, type: !22)
!2584 = !DILocalVariable(name: "s27", arg: 5, scope: !2577, file: !2441, line: 90, type: !22)
!2585 = !DILocalVariable(name: "s28", arg: 6, scope: !2577, file: !2441, line: 90, type: !22)
!2586 = !DILocation(line: 90, column: 25, scope: !2577, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 111, column: 16, scope: !2588, inlinedAt: !2564)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !2441, line: 108, column: 11)
!2589 = distinct !DILexicalBlock(scope: !2574, file: !2441, line: 107, column: 5)
!2590 = !DILocation(line: 90, column: 41, scope: !2577, inlinedAt: !2587)
!2591 = !DILocation(line: 90, column: 50, scope: !2577, inlinedAt: !2587)
!2592 = !DILocation(line: 90, column: 60, scope: !2577, inlinedAt: !2587)
!2593 = !DILocation(line: 90, column: 70, scope: !2577, inlinedAt: !2587)
!2594 = !DILocation(line: 90, column: 80, scope: !2577, inlinedAt: !2587)
!2595 = !DILocation(line: 92, column: 7, scope: !2596, inlinedAt: !2587)
!2596 = distinct !DILexicalBlock(scope: !2577, file: !2441, line: 92, column: 7)
!2597 = !DILocation(line: 92, column: 7, scope: !2577, inlinedAt: !2587)
!2598 = !DILocation(line: 235, column: 12, scope: !2457)
!2599 = !DILocation(line: 235, column: 21, scope: !2457)
!2600 = !DILocation(line: 235, column: 5, scope: !2457)
!2601 = !DILocation(line: 146, column: 25, scope: !2471, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 167, column: 16, scope: !2486, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 236, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2422, file: !268, line: 236, column: 7)
!2605 = !DILocation(line: 146, column: 41, scope: !2471, inlinedAt: !2602)
!2606 = !DILocation(line: 146, column: 50, scope: !2471, inlinedAt: !2602)
!2607 = !DILocation(line: 146, column: 60, scope: !2471, inlinedAt: !2602)
!2608 = !DILocation(line: 146, column: 70, scope: !2471, inlinedAt: !2602)
!2609 = !DILocation(line: 146, column: 80, scope: !2471, inlinedAt: !2602)
!2610 = !DILocation(line: 146, column: 90, scope: !2471, inlinedAt: !2602)
!2611 = !DILocation(line: 146, column: 100, scope: !2471, inlinedAt: !2602)
!2612 = !DILocation(line: 146, column: 110, scope: !2471, inlinedAt: !2602)
!2613 = !DILocation(line: 146, column: 120, scope: !2471, inlinedAt: !2602)
!2614 = !DILocation(line: 148, column: 7, scope: !2498, inlinedAt: !2602)
!2615 = !DILocation(line: 132, column: 25, scope: !2500, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 153, column: 16, scope: !2514, inlinedAt: !2602)
!2617 = !DILocation(line: 132, column: 41, scope: !2500, inlinedAt: !2616)
!2618 = !DILocation(line: 132, column: 50, scope: !2500, inlinedAt: !2616)
!2619 = !DILocation(line: 132, column: 60, scope: !2500, inlinedAt: !2616)
!2620 = !DILocation(line: 132, column: 70, scope: !2500, inlinedAt: !2616)
!2621 = !DILocation(line: 132, column: 80, scope: !2500, inlinedAt: !2616)
!2622 = !DILocation(line: 132, column: 90, scope: !2500, inlinedAt: !2616)
!2623 = !DILocation(line: 132, column: 100, scope: !2500, inlinedAt: !2616)
!2624 = !DILocation(line: 132, column: 110, scope: !2500, inlinedAt: !2616)
!2625 = !DILocation(line: 134, column: 7, scope: !2525, inlinedAt: !2616)
!2626 = !DILocation(line: 134, column: 7, scope: !2500, inlinedAt: !2616)
!2627 = !DILocation(line: 118, column: 25, scope: !2527, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 139, column: 16, scope: !2540, inlinedAt: !2616)
!2629 = !DILocation(line: 118, column: 41, scope: !2527, inlinedAt: !2628)
!2630 = !DILocation(line: 118, column: 50, scope: !2527, inlinedAt: !2628)
!2631 = !DILocation(line: 118, column: 60, scope: !2527, inlinedAt: !2628)
!2632 = !DILocation(line: 118, column: 70, scope: !2527, inlinedAt: !2628)
!2633 = !DILocation(line: 118, column: 80, scope: !2527, inlinedAt: !2628)
!2634 = !DILocation(line: 118, column: 90, scope: !2527, inlinedAt: !2628)
!2635 = !DILocation(line: 118, column: 100, scope: !2527, inlinedAt: !2628)
!2636 = !DILocation(line: 120, column: 7, scope: !2550, inlinedAt: !2628)
!2637 = !DILocation(line: 120, column: 7, scope: !2527, inlinedAt: !2628)
!2638 = !DILocation(line: 104, column: 25, scope: !2553, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 125, column: 16, scope: !2565, inlinedAt: !2628)
!2640 = !DILocation(line: 104, column: 41, scope: !2553, inlinedAt: !2639)
!2641 = !DILocation(line: 104, column: 50, scope: !2553, inlinedAt: !2639)
!2642 = !DILocation(line: 104, column: 60, scope: !2553, inlinedAt: !2639)
!2643 = !DILocation(line: 104, column: 70, scope: !2553, inlinedAt: !2639)
!2644 = !DILocation(line: 104, column: 80, scope: !2553, inlinedAt: !2639)
!2645 = !DILocation(line: 104, column: 90, scope: !2553, inlinedAt: !2639)
!2646 = !DILocation(line: 106, column: 7, scope: !2574, inlinedAt: !2639)
!2647 = !DILocation(line: 106, column: 7, scope: !2553, inlinedAt: !2639)
!2648 = !DILocation(line: 90, column: 25, scope: !2577, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 111, column: 16, scope: !2588, inlinedAt: !2639)
!2650 = !DILocation(line: 90, column: 41, scope: !2577, inlinedAt: !2649)
!2651 = !DILocation(line: 90, column: 50, scope: !2577, inlinedAt: !2649)
!2652 = !DILocation(line: 90, column: 60, scope: !2577, inlinedAt: !2649)
!2653 = !DILocation(line: 90, column: 70, scope: !2577, inlinedAt: !2649)
!2654 = !DILocation(line: 90, column: 80, scope: !2577, inlinedAt: !2649)
!2655 = !DILocation(line: 92, column: 7, scope: !2596, inlinedAt: !2649)
!2656 = !DILocation(line: 92, column: 7, scope: !2577, inlinedAt: !2649)
!2657 = !DILocalVariable(name: "s1", arg: 1, scope: !2658, file: !2441, line: 76, type: !26)
!2658 = distinct !DISubprogram(name: "strcaseeq6", scope: !2441, file: !2441, line: 76, type: !2659, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!37, !26, !26, !22, !22, !22}
!2661 = !{!2657, !2662, !2663, !2664, !2665}
!2662 = !DILocalVariable(name: "s2", arg: 2, scope: !2658, file: !2441, line: 76, type: !26)
!2663 = !DILocalVariable(name: "s26", arg: 3, scope: !2658, file: !2441, line: 76, type: !22)
!2664 = !DILocalVariable(name: "s27", arg: 4, scope: !2658, file: !2441, line: 76, type: !22)
!2665 = !DILocalVariable(name: "s28", arg: 5, scope: !2658, file: !2441, line: 76, type: !22)
!2666 = !DILocation(line: 76, column: 25, scope: !2658, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 97, column: 16, scope: !2668, inlinedAt: !2649)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !2441, line: 94, column: 11)
!2669 = distinct !DILexicalBlock(scope: !2596, file: !2441, line: 93, column: 5)
!2670 = !DILocation(line: 76, column: 41, scope: !2658, inlinedAt: !2667)
!2671 = !DILocation(line: 76, column: 50, scope: !2658, inlinedAt: !2667)
!2672 = !DILocation(line: 76, column: 60, scope: !2658, inlinedAt: !2667)
!2673 = !DILocation(line: 76, column: 70, scope: !2658, inlinedAt: !2667)
!2674 = !DILocation(line: 78, column: 7, scope: !2675, inlinedAt: !2667)
!2675 = distinct !DILexicalBlock(scope: !2658, file: !2441, line: 78, column: 7)
!2676 = !DILocation(line: 78, column: 7, scope: !2658, inlinedAt: !2667)
!2677 = !DILocalVariable(name: "s1", arg: 1, scope: !2678, file: !2441, line: 62, type: !26)
!2678 = distinct !DISubprogram(name: "strcaseeq7", scope: !2441, file: !2441, line: 62, type: !2679, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!37, !26, !26, !22, !22}
!2681 = !{!2677, !2682, !2683, !2684}
!2682 = !DILocalVariable(name: "s2", arg: 2, scope: !2678, file: !2441, line: 62, type: !26)
!2683 = !DILocalVariable(name: "s27", arg: 3, scope: !2678, file: !2441, line: 62, type: !22)
!2684 = !DILocalVariable(name: "s28", arg: 4, scope: !2678, file: !2441, line: 62, type: !22)
!2685 = !DILocation(line: 62, column: 25, scope: !2678, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 83, column: 16, scope: !2687, inlinedAt: !2667)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !2441, line: 80, column: 11)
!2688 = distinct !DILexicalBlock(scope: !2675, file: !2441, line: 79, column: 5)
!2689 = !DILocation(line: 62, column: 41, scope: !2678, inlinedAt: !2686)
!2690 = !DILocation(line: 62, column: 50, scope: !2678, inlinedAt: !2686)
!2691 = !DILocation(line: 62, column: 60, scope: !2678, inlinedAt: !2686)
!2692 = !DILocation(line: 64, column: 7, scope: !2693, inlinedAt: !2686)
!2693 = distinct !DILexicalBlock(scope: !2678, file: !2441, line: 64, column: 7)
!2694 = !DILocation(line: 236, column: 7, scope: !2422)
!2695 = !DILocation(line: 237, column: 12, scope: !2604)
!2696 = !DILocation(line: 237, column: 21, scope: !2604)
!2697 = !DILocation(line: 237, column: 5, scope: !2604)
!2698 = !DILocation(line: 239, column: 13, scope: !2422)
!2699 = !DILocation(line: 239, column: 11, scope: !2422)
!2700 = !DILocation(line: 239, column: 3, scope: !2422)
!2701 = !DILocation(line: 0, scope: !2422)
!2702 = !DILocation(line: 240, column: 1, scope: !2422)
!2703 = distinct !DISubprogram(name: "quotearg_alloc", scope: !268, file: !268, line: 799, type: !2704, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!21, !26, !28, !1741}
!2706 = !{!2707, !2708, !2709}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !268, line: 799, type: !26)
!2708 = !DILocalVariable(name: "argsize", arg: 2, scope: !2703, file: !268, line: 799, type: !28)
!2709 = !DILocalVariable(name: "o", arg: 3, scope: !2703, file: !268, line: 800, type: !1741)
!2710 = !DILocation(line: 799, column: 29, scope: !2703)
!2711 = !DILocation(line: 799, column: 41, scope: !2703)
!2712 = !DILocation(line: 800, column: 47, scope: !2703)
!2713 = !DILocalVariable(name: "arg", arg: 1, scope: !2714, file: !268, line: 812, type: !26)
!2714 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !268, file: !268, line: 812, type: !2715, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!21, !26, !28, !376, !1741}
!2717 = !{!2713, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725}
!2718 = !DILocalVariable(name: "argsize", arg: 2, scope: !2714, file: !268, line: 812, type: !28)
!2719 = !DILocalVariable(name: "size", arg: 3, scope: !2714, file: !268, line: 812, type: !376)
!2720 = !DILocalVariable(name: "o", arg: 4, scope: !2714, file: !268, line: 813, type: !1741)
!2721 = !DILocalVariable(name: "p", scope: !2714, file: !268, line: 815, type: !1741)
!2722 = !DILocalVariable(name: "e", scope: !2714, file: !268, line: 816, type: !37)
!2723 = !DILocalVariable(name: "flags", scope: !2714, file: !268, line: 818, type: !37)
!2724 = !DILocalVariable(name: "bufsize", scope: !2714, file: !268, line: 819, type: !28)
!2725 = !DILocalVariable(name: "buf", scope: !2714, file: !268, line: 823, type: !21)
!2726 = !DILocation(line: 812, column: 33, scope: !2714, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 802, column: 10, scope: !2703)
!2728 = !DILocation(line: 812, column: 45, scope: !2714, inlinedAt: !2727)
!2729 = !DILocation(line: 812, column: 62, scope: !2714, inlinedAt: !2727)
!2730 = !DILocation(line: 813, column: 51, scope: !2714, inlinedAt: !2727)
!2731 = !DILocation(line: 815, column: 37, scope: !2714, inlinedAt: !2727)
!2732 = !DILocation(line: 815, column: 33, scope: !2714, inlinedAt: !2727)
!2733 = !DILocation(line: 816, column: 11, scope: !2714, inlinedAt: !2727)
!2734 = !DILocation(line: 816, column: 7, scope: !2714, inlinedAt: !2727)
!2735 = !DILocation(line: 818, column: 18, scope: !2714, inlinedAt: !2727)
!2736 = !DILocation(line: 818, column: 24, scope: !2714, inlinedAt: !2727)
!2737 = !DILocation(line: 818, column: 7, scope: !2714, inlinedAt: !2727)
!2738 = !DILocation(line: 819, column: 69, scope: !2714, inlinedAt: !2727)
!2739 = !DILocation(line: 820, column: 53, scope: !2714, inlinedAt: !2727)
!2740 = !DILocation(line: 821, column: 49, scope: !2714, inlinedAt: !2727)
!2741 = !DILocation(line: 822, column: 49, scope: !2714, inlinedAt: !2727)
!2742 = !DILocation(line: 819, column: 20, scope: !2714, inlinedAt: !2727)
!2743 = !DILocation(line: 822, column: 62, scope: !2714, inlinedAt: !2727)
!2744 = !DILocation(line: 819, column: 10, scope: !2714, inlinedAt: !2727)
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2746, file: !372, line: 216, type: !28)
!2746 = distinct !DISubprogram(name: "xcharalloc", scope: !372, file: !372, line: 216, type: !2747, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!21, !28}
!2749 = !{!2745}
!2750 = !DILocation(line: 216, column: 20, scope: !2746, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 823, column: 15, scope: !2714, inlinedAt: !2727)
!2752 = !DILocation(line: 218, column: 10, scope: !2746, inlinedAt: !2751)
!2753 = !DILocation(line: 823, column: 9, scope: !2714, inlinedAt: !2727)
!2754 = !DILocation(line: 824, column: 60, scope: !2714, inlinedAt: !2727)
!2755 = !DILocation(line: 826, column: 32, scope: !2714, inlinedAt: !2727)
!2756 = !DILocation(line: 826, column: 47, scope: !2714, inlinedAt: !2727)
!2757 = !DILocation(line: 824, column: 3, scope: !2714, inlinedAt: !2727)
!2758 = !DILocation(line: 827, column: 9, scope: !2714, inlinedAt: !2727)
!2759 = !DILocation(line: 802, column: 3, scope: !2703)
!2760 = !DILocation(line: 812, column: 33, scope: !2714)
!2761 = !DILocation(line: 812, column: 45, scope: !2714)
!2762 = !DILocation(line: 812, column: 62, scope: !2714)
!2763 = !DILocation(line: 813, column: 51, scope: !2714)
!2764 = !DILocation(line: 815, column: 37, scope: !2714)
!2765 = !DILocation(line: 815, column: 33, scope: !2714)
!2766 = !DILocation(line: 816, column: 11, scope: !2714)
!2767 = !DILocation(line: 816, column: 7, scope: !2714)
!2768 = !DILocation(line: 818, column: 18, scope: !2714)
!2769 = !DILocation(line: 818, column: 27, scope: !2714)
!2770 = !DILocation(line: 818, column: 24, scope: !2714)
!2771 = !DILocation(line: 818, column: 7, scope: !2714)
!2772 = !DILocation(line: 819, column: 69, scope: !2714)
!2773 = !DILocation(line: 820, column: 53, scope: !2714)
!2774 = !DILocation(line: 821, column: 49, scope: !2714)
!2775 = !DILocation(line: 822, column: 49, scope: !2714)
!2776 = !DILocation(line: 819, column: 20, scope: !2714)
!2777 = !DILocation(line: 822, column: 62, scope: !2714)
!2778 = !DILocation(line: 819, column: 10, scope: !2714)
!2779 = !DILocation(line: 216, column: 20, scope: !2746, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 823, column: 15, scope: !2714)
!2781 = !DILocation(line: 218, column: 10, scope: !2746, inlinedAt: !2780)
!2782 = !DILocation(line: 823, column: 9, scope: !2714)
!2783 = !DILocation(line: 824, column: 60, scope: !2714)
!2784 = !DILocation(line: 826, column: 32, scope: !2714)
!2785 = !DILocation(line: 826, column: 47, scope: !2714)
!2786 = !DILocation(line: 824, column: 3, scope: !2714)
!2787 = !DILocation(line: 827, column: 9, scope: !2714)
!2788 = !DILocation(line: 828, column: 7, scope: !2714)
!2789 = !DILocation(line: 829, column: 11, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2714, file: !268, line: 828, column: 7)
!2791 = !DILocation(line: 829, column: 5, scope: !2790)
!2792 = !DILocation(line: 830, column: 3, scope: !2714)
!2793 = distinct !DISubprogram(name: "quotearg_free", scope: !268, file: !268, line: 848, type: !847, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2794)
!2794 = !{!2795, !2796}
!2795 = !DILocalVariable(name: "sv", scope: !2793, file: !268, line: 850, type: !291)
!2796 = !DILocalVariable(name: "i", scope: !2793, file: !268, line: 851, type: !37)
!2797 = !DILocation(line: 850, column: 24, scope: !2793)
!2798 = !DILocation(line: 850, column: 19, scope: !2793)
!2799 = !DILocation(line: 851, column: 7, scope: !2793)
!2800 = !DILocation(line: 852, column: 19, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !268, line: 852, column: 3)
!2802 = distinct !DILexicalBlock(scope: !2793, file: !268, line: 852, column: 3)
!2803 = !DILocation(line: 852, column: 17, scope: !2801)
!2804 = !DILocation(line: 852, column: 3, scope: !2802)
!2805 = !DILocation(line: 853, column: 17, scope: !2801)
!2806 = !{!2807, !840, i64 8}
!2807 = !{!"slotvec", !902, i64 0, !840, i64 8}
!2808 = !DILocation(line: 853, column: 5, scope: !2801)
!2809 = !DILocation(line: 852, column: 28, scope: !2801)
!2810 = distinct !{!2810, !2804, !2811}
!2811 = !DILocation(line: 853, column: 20, scope: !2802)
!2812 = !DILocation(line: 854, column: 13, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2793, file: !268, line: 854, column: 7)
!2814 = !DILocation(line: 854, column: 17, scope: !2813)
!2815 = !DILocation(line: 854, column: 7, scope: !2793)
!2816 = !DILocation(line: 856, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !268, line: 855, column: 5)
!2818 = !DILocation(line: 857, column: 21, scope: !2817)
!2819 = !{!2807, !902, i64 0}
!2820 = !DILocation(line: 858, column: 20, scope: !2817)
!2821 = !DILocation(line: 859, column: 5, scope: !2817)
!2822 = !DILocation(line: 860, column: 10, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2793, file: !268, line: 860, column: 7)
!2824 = !DILocation(line: 860, column: 7, scope: !2793)
!2825 = !DILocation(line: 862, column: 13, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !268, line: 861, column: 5)
!2827 = !DILocation(line: 862, column: 7, scope: !2826)
!2828 = !DILocation(line: 863, column: 15, scope: !2826)
!2829 = !DILocation(line: 864, column: 5, scope: !2826)
!2830 = !DILocation(line: 865, column: 10, scope: !2793)
!2831 = !DILocation(line: 866, column: 1, scope: !2793)
!2832 = distinct !DISubprogram(name: "quotearg_n", scope: !268, file: !268, line: 931, type: !2833, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!21, !37, !26}
!2835 = !{!2836, !2837}
!2836 = !DILocalVariable(name: "n", arg: 1, scope: !2832, file: !268, line: 931, type: !37)
!2837 = !DILocalVariable(name: "arg", arg: 2, scope: !2832, file: !268, line: 931, type: !26)
!2838 = !DILocation(line: 931, column: 17, scope: !2832)
!2839 = !DILocation(line: 931, column: 32, scope: !2832)
!2840 = !DILocation(line: 933, column: 10, scope: !2832)
!2841 = !DILocation(line: 933, column: 3, scope: !2832)
!2842 = distinct !DISubprogram(name: "quotearg_n_options", scope: !268, file: !268, line: 877, type: !2843, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!21, !37, !26, !28, !1741}
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851, !2852, !2855, !2856, !2858, !2859, !2860}
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2842, file: !268, line: 877, type: !37)
!2847 = !DILocalVariable(name: "arg", arg: 2, scope: !2842, file: !268, line: 877, type: !26)
!2848 = !DILocalVariable(name: "argsize", arg: 3, scope: !2842, file: !268, line: 877, type: !28)
!2849 = !DILocalVariable(name: "options", arg: 4, scope: !2842, file: !268, line: 878, type: !1741)
!2850 = !DILocalVariable(name: "e", scope: !2842, file: !268, line: 880, type: !37)
!2851 = !DILocalVariable(name: "sv", scope: !2842, file: !268, line: 882, type: !291)
!2852 = !DILocalVariable(name: "preallocated", scope: !2853, file: !268, line: 889, type: !45)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !268, line: 888, column: 5)
!2854 = distinct !DILexicalBlock(scope: !2842, file: !268, line: 887, column: 7)
!2855 = !DILocalVariable(name: "nmax", scope: !2853, file: !268, line: 890, type: !37)
!2856 = !DILocalVariable(name: "size", scope: !2857, file: !268, line: 903, type: !28)
!2857 = distinct !DILexicalBlock(scope: !2842, file: !268, line: 902, column: 3)
!2858 = !DILocalVariable(name: "val", scope: !2857, file: !268, line: 904, type: !21)
!2859 = !DILocalVariable(name: "flags", scope: !2857, file: !268, line: 906, type: !37)
!2860 = !DILocalVariable(name: "qsize", scope: !2857, file: !268, line: 907, type: !28)
!2861 = !DILocation(line: 877, column: 25, scope: !2842)
!2862 = !DILocation(line: 877, column: 40, scope: !2842)
!2863 = !DILocation(line: 877, column: 52, scope: !2842)
!2864 = !DILocation(line: 878, column: 51, scope: !2842)
!2865 = !DILocation(line: 880, column: 11, scope: !2842)
!2866 = !DILocation(line: 880, column: 7, scope: !2842)
!2867 = !DILocation(line: 882, column: 24, scope: !2842)
!2868 = !DILocation(line: 882, column: 19, scope: !2842)
!2869 = !DILocation(line: 884, column: 9, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2842, file: !268, line: 884, column: 7)
!2871 = !DILocation(line: 884, column: 7, scope: !2842)
!2872 = !DILocation(line: 885, column: 5, scope: !2870)
!2873 = !DILocation(line: 887, column: 7, scope: !2854)
!2874 = !DILocation(line: 887, column: 14, scope: !2854)
!2875 = !DILocation(line: 887, column: 7, scope: !2842)
!2876 = !DILocation(line: 889, column: 31, scope: !2853)
!2877 = !DILocation(line: 890, column: 11, scope: !2853)
!2878 = !DILocation(line: 892, column: 16, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2853, file: !268, line: 892, column: 11)
!2880 = !DILocation(line: 892, column: 11, scope: !2853)
!2881 = !DILocation(line: 893, column: 9, scope: !2879)
!2882 = !DILocation(line: 895, column: 32, scope: !2853)
!2883 = !DILocation(line: 895, column: 61, scope: !2853)
!2884 = !DILocation(line: 895, column: 58, scope: !2853)
!2885 = !DILocation(line: 895, column: 66, scope: !2853)
!2886 = !DILocation(line: 895, column: 22, scope: !2853)
!2887 = !DILocation(line: 895, column: 15, scope: !2853)
!2888 = !DILocation(line: 896, column: 11, scope: !2853)
!2889 = !DILocation(line: 897, column: 15, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2853, file: !268, line: 896, column: 11)
!2891 = !{i64 0, i64 8, !901, i64 8, i64 8, !839}
!2892 = !DILocation(line: 897, column: 9, scope: !2890)
!2893 = !DILocation(line: 898, column: 20, scope: !2853)
!2894 = !DILocation(line: 898, column: 18, scope: !2853)
!2895 = !DILocation(line: 898, column: 7, scope: !2853)
!2896 = !DILocation(line: 898, column: 38, scope: !2853)
!2897 = !DILocation(line: 898, column: 31, scope: !2853)
!2898 = !DILocation(line: 898, column: 48, scope: !2853)
!2899 = !DILocation(line: 899, column: 14, scope: !2853)
!2900 = !DILocation(line: 900, column: 5, scope: !2853)
!2901 = !DILocation(line: 0, scope: !2842)
!2902 = !DILocation(line: 903, column: 19, scope: !2857)
!2903 = !DILocation(line: 903, column: 25, scope: !2857)
!2904 = !DILocation(line: 903, column: 12, scope: !2857)
!2905 = !DILocation(line: 904, column: 23, scope: !2857)
!2906 = !DILocation(line: 904, column: 11, scope: !2857)
!2907 = !DILocation(line: 906, column: 26, scope: !2857)
!2908 = !DILocation(line: 906, column: 32, scope: !2857)
!2909 = !DILocation(line: 906, column: 9, scope: !2857)
!2910 = !DILocation(line: 908, column: 55, scope: !2857)
!2911 = !DILocation(line: 909, column: 46, scope: !2857)
!2912 = !DILocation(line: 910, column: 55, scope: !2857)
!2913 = !DILocation(line: 911, column: 55, scope: !2857)
!2914 = !DILocation(line: 907, column: 20, scope: !2857)
!2915 = !DILocation(line: 907, column: 12, scope: !2857)
!2916 = !DILocation(line: 913, column: 14, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2857, file: !268, line: 913, column: 9)
!2918 = !DILocation(line: 913, column: 9, scope: !2857)
!2919 = !DILocation(line: 915, column: 35, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2917, file: !268, line: 914, column: 7)
!2921 = !DILocation(line: 915, column: 20, scope: !2920)
!2922 = !DILocation(line: 916, column: 17, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2920, file: !268, line: 916, column: 13)
!2924 = !DILocation(line: 916, column: 13, scope: !2920)
!2925 = !DILocation(line: 917, column: 11, scope: !2923)
!2926 = !DILocation(line: 216, column: 20, scope: !2746, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 918, column: 27, scope: !2920)
!2928 = !DILocation(line: 218, column: 10, scope: !2746, inlinedAt: !2927)
!2929 = !DILocation(line: 918, column: 19, scope: !2920)
!2930 = !DILocation(line: 919, column: 69, scope: !2920)
!2931 = !DILocation(line: 921, column: 44, scope: !2920)
!2932 = !DILocation(line: 922, column: 44, scope: !2920)
!2933 = !DILocation(line: 919, column: 9, scope: !2920)
!2934 = !DILocation(line: 923, column: 7, scope: !2920)
!2935 = !DILocation(line: 0, scope: !2857)
!2936 = !DILocation(line: 925, column: 11, scope: !2857)
!2937 = !DILocation(line: 926, column: 5, scope: !2857)
!2938 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !268, file: !268, line: 937, type: !2939, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!21, !37, !26, !28}
!2941 = !{!2942, !2943, !2944}
!2942 = !DILocalVariable(name: "n", arg: 1, scope: !2938, file: !268, line: 937, type: !37)
!2943 = !DILocalVariable(name: "arg", arg: 2, scope: !2938, file: !268, line: 937, type: !26)
!2944 = !DILocalVariable(name: "argsize", arg: 3, scope: !2938, file: !268, line: 937, type: !28)
!2945 = !DILocation(line: 937, column: 21, scope: !2938)
!2946 = !DILocation(line: 937, column: 36, scope: !2938)
!2947 = !DILocation(line: 937, column: 48, scope: !2938)
!2948 = !DILocation(line: 939, column: 10, scope: !2938)
!2949 = !DILocation(line: 939, column: 3, scope: !2938)
!2950 = distinct !DISubprogram(name: "quotearg", scope: !268, file: !268, line: 943, type: !2951, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!21, !26}
!2953 = !{!2954}
!2954 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !268, line: 943, type: !26)
!2955 = !DILocation(line: 943, column: 23, scope: !2950)
!2956 = !DILocation(line: 931, column: 17, scope: !2832, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 945, column: 10, scope: !2950)
!2958 = !DILocation(line: 931, column: 32, scope: !2832, inlinedAt: !2957)
!2959 = !DILocation(line: 933, column: 10, scope: !2832, inlinedAt: !2957)
!2960 = !DILocation(line: 945, column: 3, scope: !2950)
!2961 = distinct !DISubprogram(name: "quotearg_mem", scope: !268, file: !268, line: 949, type: !2962, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!21, !26, !28}
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "arg", arg: 1, scope: !2961, file: !268, line: 949, type: !26)
!2966 = !DILocalVariable(name: "argsize", arg: 2, scope: !2961, file: !268, line: 949, type: !28)
!2967 = !DILocation(line: 949, column: 27, scope: !2961)
!2968 = !DILocation(line: 949, column: 39, scope: !2961)
!2969 = !DILocation(line: 937, column: 21, scope: !2938, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 951, column: 10, scope: !2961)
!2971 = !DILocation(line: 937, column: 36, scope: !2938, inlinedAt: !2970)
!2972 = !DILocation(line: 937, column: 48, scope: !2938, inlinedAt: !2970)
!2973 = !DILocation(line: 939, column: 10, scope: !2938, inlinedAt: !2970)
!2974 = !DILocation(line: 951, column: 3, scope: !2961)
!2975 = distinct !DISubprogram(name: "quotearg_n_style", scope: !268, file: !268, line: 955, type: !2976, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!21, !37, !5, !26}
!2978 = !{!2979, !2980, !2981, !2982}
!2979 = !DILocalVariable(name: "n", arg: 1, scope: !2975, file: !268, line: 955, type: !37)
!2980 = !DILocalVariable(name: "s", arg: 2, scope: !2975, file: !268, line: 955, type: !5)
!2981 = !DILocalVariable(name: "arg", arg: 3, scope: !2975, file: !268, line: 955, type: !26)
!2982 = !DILocalVariable(name: "o", scope: !2975, file: !268, line: 957, type: !1742)
!2983 = !DILocation(line: 955, column: 23, scope: !2975)
!2984 = !DILocation(line: 955, column: 45, scope: !2975)
!2985 = !DILocation(line: 955, column: 60, scope: !2975)
!2986 = !DILocation(line: 957, column: 3, scope: !2975)
!2987 = !DILocation(line: 957, column: 32, scope: !2975)
!2988 = !DILocalVariable(name: "style", arg: 1, scope: !2989, file: !268, line: 193, type: !5)
!2989 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !268, file: !268, line: 193, type: !2990, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!275, !5}
!2992 = !{!2988, !2993}
!2993 = !DILocalVariable(name: "o", scope: !2989, file: !268, line: 195, type: !275)
!2994 = !DILocation(line: 193, column: 48, scope: !2989, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 957, column: 36, scope: !2975)
!2996 = !DILocation(line: 195, column: 26, scope: !2989, inlinedAt: !2995)
!2997 = !{!2998}
!2998 = distinct !{!2998, !2999, !"quoting_options_from_style: argument 0"}
!2999 = distinct !{!2999, !"quoting_options_from_style"}
!3000 = !DILocation(line: 196, column: 13, scope: !3001, inlinedAt: !2995)
!3001 = distinct !DILexicalBlock(scope: !2989, file: !268, line: 196, column: 7)
!3002 = !DILocation(line: 196, column: 7, scope: !2989, inlinedAt: !2995)
!3003 = !DILocation(line: 197, column: 5, scope: !3001, inlinedAt: !2995)
!3004 = !DILocation(line: 198, column: 5, scope: !2989, inlinedAt: !2995)
!3005 = !DILocation(line: 198, column: 11, scope: !2989, inlinedAt: !2995)
!3006 = !DILocation(line: 958, column: 10, scope: !2975)
!3007 = !DILocation(line: 959, column: 1, scope: !2975)
!3008 = !DILocation(line: 958, column: 3, scope: !2975)
!3009 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !268, file: !268, line: 962, type: !3010, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!21, !37, !5, !26, !28}
!3012 = !{!3013, !3014, !3015, !3016, !3017}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !268, line: 962, type: !37)
!3014 = !DILocalVariable(name: "s", arg: 2, scope: !3009, file: !268, line: 962, type: !5)
!3015 = !DILocalVariable(name: "arg", arg: 3, scope: !3009, file: !268, line: 963, type: !26)
!3016 = !DILocalVariable(name: "argsize", arg: 4, scope: !3009, file: !268, line: 963, type: !28)
!3017 = !DILocalVariable(name: "o", scope: !3009, file: !268, line: 965, type: !1742)
!3018 = !DILocation(line: 962, column: 27, scope: !3009)
!3019 = !DILocation(line: 962, column: 49, scope: !3009)
!3020 = !DILocation(line: 963, column: 35, scope: !3009)
!3021 = !DILocation(line: 963, column: 47, scope: !3009)
!3022 = !DILocation(line: 965, column: 3, scope: !3009)
!3023 = !DILocation(line: 965, column: 32, scope: !3009)
!3024 = !DILocation(line: 193, column: 48, scope: !2989, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 965, column: 36, scope: !3009)
!3026 = !DILocation(line: 195, column: 26, scope: !2989, inlinedAt: !3025)
!3027 = !{!3028}
!3028 = distinct !{!3028, !3029, !"quoting_options_from_style: argument 0"}
!3029 = distinct !{!3029, !"quoting_options_from_style"}
!3030 = !DILocation(line: 196, column: 13, scope: !3001, inlinedAt: !3025)
!3031 = !DILocation(line: 196, column: 7, scope: !2989, inlinedAt: !3025)
!3032 = !DILocation(line: 197, column: 5, scope: !3001, inlinedAt: !3025)
!3033 = !DILocation(line: 198, column: 5, scope: !2989, inlinedAt: !3025)
!3034 = !DILocation(line: 198, column: 11, scope: !2989, inlinedAt: !3025)
!3035 = !DILocation(line: 966, column: 10, scope: !3009)
!3036 = !DILocation(line: 967, column: 1, scope: !3009)
!3037 = !DILocation(line: 966, column: 3, scope: !3009)
!3038 = distinct !DISubprogram(name: "quotearg_style", scope: !268, file: !268, line: 970, type: !3039, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!21, !5, !26}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "s", arg: 1, scope: !3038, file: !268, line: 970, type: !5)
!3043 = !DILocalVariable(name: "arg", arg: 2, scope: !3038, file: !268, line: 970, type: !26)
!3044 = !DILocation(line: 970, column: 36, scope: !3038)
!3045 = !DILocation(line: 970, column: 51, scope: !3038)
!3046 = !DILocation(line: 955, column: 23, scope: !2975, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 972, column: 10, scope: !3038)
!3048 = !DILocation(line: 955, column: 45, scope: !2975, inlinedAt: !3047)
!3049 = !DILocation(line: 955, column: 60, scope: !2975, inlinedAt: !3047)
!3050 = !DILocation(line: 957, column: 3, scope: !2975, inlinedAt: !3047)
!3051 = !DILocation(line: 957, column: 32, scope: !2975, inlinedAt: !3047)
!3052 = !DILocation(line: 193, column: 48, scope: !2989, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 957, column: 36, scope: !2975, inlinedAt: !3047)
!3054 = !DILocation(line: 195, column: 26, scope: !2989, inlinedAt: !3053)
!3055 = !{!3056}
!3056 = distinct !{!3056, !3057, !"quoting_options_from_style: argument 0"}
!3057 = distinct !{!3057, !"quoting_options_from_style"}
!3058 = !DILocation(line: 196, column: 13, scope: !3001, inlinedAt: !3053)
!3059 = !DILocation(line: 196, column: 7, scope: !2989, inlinedAt: !3053)
!3060 = !DILocation(line: 197, column: 5, scope: !3001, inlinedAt: !3053)
!3061 = !DILocation(line: 198, column: 5, scope: !2989, inlinedAt: !3053)
!3062 = !DILocation(line: 198, column: 11, scope: !2989, inlinedAt: !3053)
!3063 = !DILocation(line: 958, column: 10, scope: !2975, inlinedAt: !3047)
!3064 = !DILocation(line: 959, column: 1, scope: !2975, inlinedAt: !3047)
!3065 = !DILocation(line: 972, column: 3, scope: !3038)
!3066 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !268, file: !268, line: 976, type: !3067, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!21, !5, !26, !28}
!3069 = !{!3070, !3071, !3072}
!3070 = !DILocalVariable(name: "s", arg: 1, scope: !3066, file: !268, line: 976, type: !5)
!3071 = !DILocalVariable(name: "arg", arg: 2, scope: !3066, file: !268, line: 976, type: !26)
!3072 = !DILocalVariable(name: "argsize", arg: 3, scope: !3066, file: !268, line: 976, type: !28)
!3073 = !DILocation(line: 976, column: 40, scope: !3066)
!3074 = !DILocation(line: 976, column: 55, scope: !3066)
!3075 = !DILocation(line: 976, column: 67, scope: !3066)
!3076 = !DILocation(line: 962, column: 27, scope: !3009, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 978, column: 10, scope: !3066)
!3078 = !DILocation(line: 962, column: 49, scope: !3009, inlinedAt: !3077)
!3079 = !DILocation(line: 963, column: 35, scope: !3009, inlinedAt: !3077)
!3080 = !DILocation(line: 963, column: 47, scope: !3009, inlinedAt: !3077)
!3081 = !DILocation(line: 965, column: 3, scope: !3009, inlinedAt: !3077)
!3082 = !DILocation(line: 965, column: 32, scope: !3009, inlinedAt: !3077)
!3083 = !DILocation(line: 193, column: 48, scope: !2989, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 965, column: 36, scope: !3009, inlinedAt: !3077)
!3085 = !DILocation(line: 195, column: 26, scope: !2989, inlinedAt: !3084)
!3086 = !{!3087}
!3087 = distinct !{!3087, !3088, !"quoting_options_from_style: argument 0"}
!3088 = distinct !{!3088, !"quoting_options_from_style"}
!3089 = !DILocation(line: 196, column: 13, scope: !3001, inlinedAt: !3084)
!3090 = !DILocation(line: 196, column: 7, scope: !2989, inlinedAt: !3084)
!3091 = !DILocation(line: 197, column: 5, scope: !3001, inlinedAt: !3084)
!3092 = !DILocation(line: 198, column: 5, scope: !2989, inlinedAt: !3084)
!3093 = !DILocation(line: 198, column: 11, scope: !2989, inlinedAt: !3084)
!3094 = !DILocation(line: 966, column: 10, scope: !3009, inlinedAt: !3077)
!3095 = !DILocation(line: 967, column: 1, scope: !3009, inlinedAt: !3077)
!3096 = !DILocation(line: 978, column: 3, scope: !3066)
!3097 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !268, file: !268, line: 982, type: !3098, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!21, !26, !28, !22}
!3100 = !{!3101, !3102, !3103, !3104}
!3101 = !DILocalVariable(name: "arg", arg: 1, scope: !3097, file: !268, line: 982, type: !26)
!3102 = !DILocalVariable(name: "argsize", arg: 2, scope: !3097, file: !268, line: 982, type: !28)
!3103 = !DILocalVariable(name: "ch", arg: 3, scope: !3097, file: !268, line: 982, type: !22)
!3104 = !DILocalVariable(name: "options", scope: !3097, file: !268, line: 984, type: !275)
!3105 = !DILocation(line: 982, column: 32, scope: !3097)
!3106 = !DILocation(line: 982, column: 44, scope: !3097)
!3107 = !DILocation(line: 982, column: 58, scope: !3097)
!3108 = !DILocation(line: 984, column: 3, scope: !3097)
!3109 = !DILocation(line: 985, column: 13, scope: !3097)
!3110 = !{i64 0, i64 4, !923, i64 4, i64 4, !977, i64 8, i64 32, !923, i64 40, i64 8, !839, i64 48, i64 8, !839}
!3111 = !DILocation(line: 984, column: 26, scope: !3097)
!3112 = !DILocation(line: 152, column: 43, scope: !1763, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 986, column: 3, scope: !3097)
!3114 = !DILocation(line: 152, column: 51, scope: !1763, inlinedAt: !3113)
!3115 = !DILocation(line: 152, column: 58, scope: !1763, inlinedAt: !3113)
!3116 = !DILocation(line: 154, column: 17, scope: !1763, inlinedAt: !3113)
!3117 = !DILocation(line: 156, column: 62, scope: !1763, inlinedAt: !3113)
!3118 = !DILocation(line: 156, column: 57, scope: !1763, inlinedAt: !3113)
!3119 = !DILocation(line: 155, column: 17, scope: !1763, inlinedAt: !3113)
!3120 = !DILocation(line: 157, column: 15, scope: !1763, inlinedAt: !3113)
!3121 = !DILocation(line: 157, column: 7, scope: !1763, inlinedAt: !3113)
!3122 = !DILocation(line: 158, column: 12, scope: !1763, inlinedAt: !3113)
!3123 = !DILocation(line: 158, column: 15, scope: !1763, inlinedAt: !3113)
!3124 = !DILocation(line: 158, column: 25, scope: !1763, inlinedAt: !3113)
!3125 = !DILocation(line: 158, column: 7, scope: !1763, inlinedAt: !3113)
!3126 = !DILocation(line: 159, column: 18, scope: !1763, inlinedAt: !3113)
!3127 = !DILocation(line: 159, column: 23, scope: !1763, inlinedAt: !3113)
!3128 = !DILocation(line: 159, column: 6, scope: !1763, inlinedAt: !3113)
!3129 = !DILocation(line: 987, column: 10, scope: !3097)
!3130 = !DILocation(line: 988, column: 1, scope: !3097)
!3131 = !DILocation(line: 987, column: 3, scope: !3097)
!3132 = distinct !DISubprogram(name: "quotearg_char", scope: !268, file: !268, line: 991, type: !3133, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!21, !26, !22}
!3135 = !{!3136, !3137}
!3136 = !DILocalVariable(name: "arg", arg: 1, scope: !3132, file: !268, line: 991, type: !26)
!3137 = !DILocalVariable(name: "ch", arg: 2, scope: !3132, file: !268, line: 991, type: !22)
!3138 = !DILocation(line: 991, column: 28, scope: !3132)
!3139 = !DILocation(line: 991, column: 38, scope: !3132)
!3140 = !DILocation(line: 982, column: 32, scope: !3097, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 993, column: 10, scope: !3132)
!3142 = !DILocation(line: 982, column: 44, scope: !3097, inlinedAt: !3141)
!3143 = !DILocation(line: 982, column: 58, scope: !3097, inlinedAt: !3141)
!3144 = !DILocation(line: 984, column: 3, scope: !3097, inlinedAt: !3141)
!3145 = !DILocation(line: 985, column: 13, scope: !3097, inlinedAt: !3141)
!3146 = !DILocation(line: 984, column: 26, scope: !3097, inlinedAt: !3141)
!3147 = !DILocation(line: 152, column: 43, scope: !1763, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 986, column: 3, scope: !3097, inlinedAt: !3141)
!3149 = !DILocation(line: 152, column: 51, scope: !1763, inlinedAt: !3148)
!3150 = !DILocation(line: 152, column: 58, scope: !1763, inlinedAt: !3148)
!3151 = !DILocation(line: 154, column: 17, scope: !1763, inlinedAt: !3148)
!3152 = !DILocation(line: 156, column: 62, scope: !1763, inlinedAt: !3148)
!3153 = !DILocation(line: 156, column: 57, scope: !1763, inlinedAt: !3148)
!3154 = !DILocation(line: 155, column: 17, scope: !1763, inlinedAt: !3148)
!3155 = !DILocation(line: 157, column: 15, scope: !1763, inlinedAt: !3148)
!3156 = !DILocation(line: 157, column: 7, scope: !1763, inlinedAt: !3148)
!3157 = !DILocation(line: 158, column: 12, scope: !1763, inlinedAt: !3148)
!3158 = !DILocation(line: 158, column: 15, scope: !1763, inlinedAt: !3148)
!3159 = !DILocation(line: 158, column: 25, scope: !1763, inlinedAt: !3148)
!3160 = !DILocation(line: 158, column: 7, scope: !1763, inlinedAt: !3148)
!3161 = !DILocation(line: 159, column: 18, scope: !1763, inlinedAt: !3148)
!3162 = !DILocation(line: 159, column: 23, scope: !1763, inlinedAt: !3148)
!3163 = !DILocation(line: 159, column: 6, scope: !1763, inlinedAt: !3148)
!3164 = !DILocation(line: 987, column: 10, scope: !3097, inlinedAt: !3141)
!3165 = !DILocation(line: 988, column: 1, scope: !3097, inlinedAt: !3141)
!3166 = !DILocation(line: 993, column: 3, scope: !3132)
!3167 = distinct !DISubprogram(name: "quotearg_colon", scope: !268, file: !268, line: 997, type: !2951, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3168)
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "arg", arg: 1, scope: !3167, file: !268, line: 997, type: !26)
!3170 = !DILocation(line: 997, column: 29, scope: !3167)
!3171 = !DILocation(line: 991, column: 28, scope: !3132, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 999, column: 10, scope: !3167)
!3173 = !DILocation(line: 991, column: 38, scope: !3132, inlinedAt: !3172)
!3174 = !DILocation(line: 982, column: 32, scope: !3097, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 993, column: 10, scope: !3132, inlinedAt: !3172)
!3176 = !DILocation(line: 982, column: 44, scope: !3097, inlinedAt: !3175)
!3177 = !DILocation(line: 982, column: 58, scope: !3097, inlinedAt: !3175)
!3178 = !DILocation(line: 984, column: 3, scope: !3097, inlinedAt: !3175)
!3179 = !DILocation(line: 985, column: 13, scope: !3097, inlinedAt: !3175)
!3180 = !DILocation(line: 984, column: 26, scope: !3097, inlinedAt: !3175)
!3181 = !DILocation(line: 152, column: 43, scope: !1763, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 986, column: 3, scope: !3097, inlinedAt: !3175)
!3183 = !DILocation(line: 152, column: 51, scope: !1763, inlinedAt: !3182)
!3184 = !DILocation(line: 152, column: 58, scope: !1763, inlinedAt: !3182)
!3185 = !DILocation(line: 154, column: 17, scope: !1763, inlinedAt: !3182)
!3186 = !DILocation(line: 156, column: 57, scope: !1763, inlinedAt: !3182)
!3187 = !DILocation(line: 155, column: 17, scope: !1763, inlinedAt: !3182)
!3188 = !DILocation(line: 157, column: 7, scope: !1763, inlinedAt: !3182)
!3189 = !DILocation(line: 158, column: 12, scope: !1763, inlinedAt: !3182)
!3190 = !DILocation(line: 159, column: 6, scope: !1763, inlinedAt: !3182)
!3191 = !DILocation(line: 987, column: 10, scope: !3097, inlinedAt: !3175)
!3192 = !DILocation(line: 988, column: 1, scope: !3097, inlinedAt: !3175)
!3193 = !DILocation(line: 999, column: 3, scope: !3167)
!3194 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !268, file: !268, line: 1003, type: !2962, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3195)
!3195 = !{!3196, !3197}
!3196 = !DILocalVariable(name: "arg", arg: 1, scope: !3194, file: !268, line: 1003, type: !26)
!3197 = !DILocalVariable(name: "argsize", arg: 2, scope: !3194, file: !268, line: 1003, type: !28)
!3198 = !DILocation(line: 1003, column: 33, scope: !3194)
!3199 = !DILocation(line: 1003, column: 45, scope: !3194)
!3200 = !DILocation(line: 982, column: 32, scope: !3097, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 1005, column: 10, scope: !3194)
!3202 = !DILocation(line: 982, column: 44, scope: !3097, inlinedAt: !3201)
!3203 = !DILocation(line: 982, column: 58, scope: !3097, inlinedAt: !3201)
!3204 = !DILocation(line: 984, column: 3, scope: !3097, inlinedAt: !3201)
!3205 = !DILocation(line: 985, column: 13, scope: !3097, inlinedAt: !3201)
!3206 = !DILocation(line: 984, column: 26, scope: !3097, inlinedAt: !3201)
!3207 = !DILocation(line: 152, column: 43, scope: !1763, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 986, column: 3, scope: !3097, inlinedAt: !3201)
!3209 = !DILocation(line: 152, column: 51, scope: !1763, inlinedAt: !3208)
!3210 = !DILocation(line: 152, column: 58, scope: !1763, inlinedAt: !3208)
!3211 = !DILocation(line: 154, column: 17, scope: !1763, inlinedAt: !3208)
!3212 = !DILocation(line: 156, column: 57, scope: !1763, inlinedAt: !3208)
!3213 = !DILocation(line: 155, column: 17, scope: !1763, inlinedAt: !3208)
!3214 = !DILocation(line: 157, column: 7, scope: !1763, inlinedAt: !3208)
!3215 = !DILocation(line: 158, column: 12, scope: !1763, inlinedAt: !3208)
!3216 = !DILocation(line: 159, column: 6, scope: !1763, inlinedAt: !3208)
!3217 = !DILocation(line: 987, column: 10, scope: !3097, inlinedAt: !3201)
!3218 = !DILocation(line: 988, column: 1, scope: !3097, inlinedAt: !3201)
!3219 = !DILocation(line: 1005, column: 3, scope: !3194)
!3220 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !268, file: !268, line: 1009, type: !2976, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3221)
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !268, line: 1009, type: !37)
!3223 = !DILocalVariable(name: "s", arg: 2, scope: !3220, file: !268, line: 1009, type: !5)
!3224 = !DILocalVariable(name: "arg", arg: 3, scope: !3220, file: !268, line: 1009, type: !26)
!3225 = !DILocalVariable(name: "options", scope: !3220, file: !268, line: 1011, type: !275)
!3226 = !DILocation(line: 195, column: 26, scope: !2989, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 1012, column: 13, scope: !3220)
!3228 = !DILocation(line: 1009, column: 29, scope: !3220)
!3229 = !DILocation(line: 1009, column: 51, scope: !3220)
!3230 = !DILocation(line: 1009, column: 66, scope: !3220)
!3231 = !DILocation(line: 1011, column: 3, scope: !3220)
!3232 = !DILocation(line: 1012, column: 13, scope: !3220)
!3233 = !DILocation(line: 193, column: 48, scope: !2989, inlinedAt: !3227)
!3234 = !{!3235}
!3235 = distinct !{!3235, !3236, !"quoting_options_from_style: argument 0"}
!3236 = distinct !{!3236, !"quoting_options_from_style"}
!3237 = !DILocation(line: 196, column: 13, scope: !3001, inlinedAt: !3227)
!3238 = !DILocation(line: 196, column: 7, scope: !2989, inlinedAt: !3227)
!3239 = !DILocation(line: 197, column: 5, scope: !3001, inlinedAt: !3227)
!3240 = !DILocation(line: 1011, column: 26, scope: !3220)
!3241 = !DILocation(line: 152, column: 43, scope: !1763, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 1013, column: 3, scope: !3220)
!3243 = !DILocation(line: 152, column: 51, scope: !1763, inlinedAt: !3242)
!3244 = !DILocation(line: 152, column: 58, scope: !1763, inlinedAt: !3242)
!3245 = !DILocation(line: 154, column: 17, scope: !1763, inlinedAt: !3242)
!3246 = !DILocation(line: 156, column: 57, scope: !1763, inlinedAt: !3242)
!3247 = !DILocation(line: 155, column: 17, scope: !1763, inlinedAt: !3242)
!3248 = !DILocation(line: 157, column: 7, scope: !1763, inlinedAt: !3242)
!3249 = !DILocation(line: 158, column: 12, scope: !1763, inlinedAt: !3242)
!3250 = !DILocation(line: 159, column: 6, scope: !1763, inlinedAt: !3242)
!3251 = !DILocation(line: 1014, column: 10, scope: !3220)
!3252 = !DILocation(line: 1015, column: 1, scope: !3220)
!3253 = !DILocation(line: 1014, column: 3, scope: !3220)
!3254 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !268, file: !268, line: 1018, type: !3255, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!21, !37, !26, !26, !26}
!3257 = !{!3258, !3259, !3260, !3261}
!3258 = !DILocalVariable(name: "n", arg: 1, scope: !3254, file: !268, line: 1018, type: !37)
!3259 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3254, file: !268, line: 1018, type: !26)
!3260 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3254, file: !268, line: 1019, type: !26)
!3261 = !DILocalVariable(name: "arg", arg: 4, scope: !3254, file: !268, line: 1019, type: !26)
!3262 = !DILocation(line: 1018, column: 24, scope: !3254)
!3263 = !DILocation(line: 1018, column: 39, scope: !3254)
!3264 = !DILocation(line: 1019, column: 32, scope: !3254)
!3265 = !DILocation(line: 1019, column: 57, scope: !3254)
!3266 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !268, line: 1026, type: !37)
!3267 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !268, file: !268, line: 1026, type: !3268, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!21, !37, !26, !26, !26, !28}
!3270 = !{!3266, !3271, !3272, !3273, !3274, !3275}
!3271 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3267, file: !268, line: 1026, type: !26)
!3272 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3267, file: !268, line: 1027, type: !26)
!3273 = !DILocalVariable(name: "arg", arg: 4, scope: !3267, file: !268, line: 1028, type: !26)
!3274 = !DILocalVariable(name: "argsize", arg: 5, scope: !3267, file: !268, line: 1028, type: !28)
!3275 = !DILocalVariable(name: "o", scope: !3267, file: !268, line: 1030, type: !275)
!3276 = !DILocation(line: 1026, column: 28, scope: !3267, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 1021, column: 10, scope: !3254)
!3278 = !DILocation(line: 1026, column: 43, scope: !3267, inlinedAt: !3277)
!3279 = !DILocation(line: 1027, column: 36, scope: !3267, inlinedAt: !3277)
!3280 = !DILocation(line: 1028, column: 36, scope: !3267, inlinedAt: !3277)
!3281 = !DILocation(line: 1028, column: 48, scope: !3267, inlinedAt: !3277)
!3282 = !DILocation(line: 1030, column: 3, scope: !3267, inlinedAt: !3277)
!3283 = !DILocation(line: 1030, column: 30, scope: !3267, inlinedAt: !3277)
!3284 = !DILocation(line: 1030, column: 26, scope: !3267, inlinedAt: !3277)
!3285 = !DILocation(line: 179, column: 45, scope: !1811, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 1031, column: 3, scope: !3267, inlinedAt: !3277)
!3287 = !DILocation(line: 180, column: 33, scope: !1811, inlinedAt: !3286)
!3288 = !DILocation(line: 180, column: 57, scope: !1811, inlinedAt: !3286)
!3289 = !DILocation(line: 184, column: 6, scope: !1811, inlinedAt: !3286)
!3290 = !DILocation(line: 184, column: 12, scope: !1811, inlinedAt: !3286)
!3291 = !DILocation(line: 185, column: 8, scope: !1827, inlinedAt: !3286)
!3292 = !DILocation(line: 185, column: 23, scope: !1827, inlinedAt: !3286)
!3293 = !DILocation(line: 185, column: 19, scope: !1827, inlinedAt: !3286)
!3294 = !DILocation(line: 186, column: 5, scope: !1827, inlinedAt: !3286)
!3295 = !DILocation(line: 187, column: 6, scope: !1811, inlinedAt: !3286)
!3296 = !DILocation(line: 187, column: 17, scope: !1811, inlinedAt: !3286)
!3297 = !DILocation(line: 188, column: 6, scope: !1811, inlinedAt: !3286)
!3298 = !DILocation(line: 188, column: 18, scope: !1811, inlinedAt: !3286)
!3299 = !DILocation(line: 1032, column: 10, scope: !3267, inlinedAt: !3277)
!3300 = !DILocation(line: 1033, column: 1, scope: !3267, inlinedAt: !3277)
!3301 = !DILocation(line: 1021, column: 3, scope: !3254)
!3302 = !DILocation(line: 1026, column: 28, scope: !3267)
!3303 = !DILocation(line: 1026, column: 43, scope: !3267)
!3304 = !DILocation(line: 1027, column: 36, scope: !3267)
!3305 = !DILocation(line: 1028, column: 36, scope: !3267)
!3306 = !DILocation(line: 1028, column: 48, scope: !3267)
!3307 = !DILocation(line: 1030, column: 3, scope: !3267)
!3308 = !DILocation(line: 1030, column: 30, scope: !3267)
!3309 = !DILocation(line: 1030, column: 26, scope: !3267)
!3310 = !DILocation(line: 179, column: 45, scope: !1811, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1031, column: 3, scope: !3267)
!3312 = !DILocation(line: 180, column: 33, scope: !1811, inlinedAt: !3311)
!3313 = !DILocation(line: 180, column: 57, scope: !1811, inlinedAt: !3311)
!3314 = !DILocation(line: 184, column: 6, scope: !1811, inlinedAt: !3311)
!3315 = !DILocation(line: 184, column: 12, scope: !1811, inlinedAt: !3311)
!3316 = !DILocation(line: 185, column: 8, scope: !1827, inlinedAt: !3311)
!3317 = !DILocation(line: 185, column: 23, scope: !1827, inlinedAt: !3311)
!3318 = !DILocation(line: 185, column: 19, scope: !1827, inlinedAt: !3311)
!3319 = !DILocation(line: 186, column: 5, scope: !1827, inlinedAt: !3311)
!3320 = !DILocation(line: 187, column: 6, scope: !1811, inlinedAt: !3311)
!3321 = !DILocation(line: 187, column: 17, scope: !1811, inlinedAt: !3311)
!3322 = !DILocation(line: 188, column: 6, scope: !1811, inlinedAt: !3311)
!3323 = !DILocation(line: 188, column: 18, scope: !1811, inlinedAt: !3311)
!3324 = !DILocation(line: 1032, column: 10, scope: !3267)
!3325 = !DILocation(line: 1033, column: 1, scope: !3267)
!3326 = !DILocation(line: 1032, column: 3, scope: !3267)
!3327 = distinct !DISubprogram(name: "quotearg_custom", scope: !268, file: !268, line: 1036, type: !3328, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!21, !26, !26, !26}
!3330 = !{!3331, !3332, !3333}
!3331 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3327, file: !268, line: 1036, type: !26)
!3332 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3327, file: !268, line: 1036, type: !26)
!3333 = !DILocalVariable(name: "arg", arg: 3, scope: !3327, file: !268, line: 1037, type: !26)
!3334 = !DILocation(line: 1036, column: 30, scope: !3327)
!3335 = !DILocation(line: 1036, column: 54, scope: !3327)
!3336 = !DILocation(line: 1037, column: 30, scope: !3327)
!3337 = !DILocation(line: 1018, column: 24, scope: !3254, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 1039, column: 10, scope: !3327)
!3339 = !DILocation(line: 1018, column: 39, scope: !3254, inlinedAt: !3338)
!3340 = !DILocation(line: 1019, column: 32, scope: !3254, inlinedAt: !3338)
!3341 = !DILocation(line: 1019, column: 57, scope: !3254, inlinedAt: !3338)
!3342 = !DILocation(line: 1026, column: 28, scope: !3267, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1021, column: 10, scope: !3254, inlinedAt: !3338)
!3344 = !DILocation(line: 1026, column: 43, scope: !3267, inlinedAt: !3343)
!3345 = !DILocation(line: 1027, column: 36, scope: !3267, inlinedAt: !3343)
!3346 = !DILocation(line: 1028, column: 36, scope: !3267, inlinedAt: !3343)
!3347 = !DILocation(line: 1028, column: 48, scope: !3267, inlinedAt: !3343)
!3348 = !DILocation(line: 1030, column: 3, scope: !3267, inlinedAt: !3343)
!3349 = !DILocation(line: 1030, column: 30, scope: !3267, inlinedAt: !3343)
!3350 = !DILocation(line: 1030, column: 26, scope: !3267, inlinedAt: !3343)
!3351 = !DILocation(line: 179, column: 45, scope: !1811, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 1031, column: 3, scope: !3267, inlinedAt: !3343)
!3353 = !DILocation(line: 180, column: 33, scope: !1811, inlinedAt: !3352)
!3354 = !DILocation(line: 180, column: 57, scope: !1811, inlinedAt: !3352)
!3355 = !DILocation(line: 184, column: 6, scope: !1811, inlinedAt: !3352)
!3356 = !DILocation(line: 184, column: 12, scope: !1811, inlinedAt: !3352)
!3357 = !DILocation(line: 185, column: 8, scope: !1827, inlinedAt: !3352)
!3358 = !DILocation(line: 185, column: 23, scope: !1827, inlinedAt: !3352)
!3359 = !DILocation(line: 185, column: 19, scope: !1827, inlinedAt: !3352)
!3360 = !DILocation(line: 186, column: 5, scope: !1827, inlinedAt: !3352)
!3361 = !DILocation(line: 187, column: 6, scope: !1811, inlinedAt: !3352)
!3362 = !DILocation(line: 187, column: 17, scope: !1811, inlinedAt: !3352)
!3363 = !DILocation(line: 188, column: 6, scope: !1811, inlinedAt: !3352)
!3364 = !DILocation(line: 188, column: 18, scope: !1811, inlinedAt: !3352)
!3365 = !DILocation(line: 1032, column: 10, scope: !3267, inlinedAt: !3343)
!3366 = !DILocation(line: 1033, column: 1, scope: !3267, inlinedAt: !3343)
!3367 = !DILocation(line: 1039, column: 3, scope: !3327)
!3368 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !268, file: !268, line: 1043, type: !3369, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!21, !26, !26, !26, !28}
!3371 = !{!3372, !3373, !3374, !3375}
!3372 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3368, file: !268, line: 1043, type: !26)
!3373 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3368, file: !268, line: 1043, type: !26)
!3374 = !DILocalVariable(name: "arg", arg: 3, scope: !3368, file: !268, line: 1044, type: !26)
!3375 = !DILocalVariable(name: "argsize", arg: 4, scope: !3368, file: !268, line: 1044, type: !28)
!3376 = !DILocation(line: 1043, column: 34, scope: !3368)
!3377 = !DILocation(line: 1043, column: 58, scope: !3368)
!3378 = !DILocation(line: 1044, column: 34, scope: !3368)
!3379 = !DILocation(line: 1044, column: 46, scope: !3368)
!3380 = !DILocation(line: 1026, column: 28, scope: !3267, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 1046, column: 10, scope: !3368)
!3382 = !DILocation(line: 1026, column: 43, scope: !3267, inlinedAt: !3381)
!3383 = !DILocation(line: 1027, column: 36, scope: !3267, inlinedAt: !3381)
!3384 = !DILocation(line: 1028, column: 36, scope: !3267, inlinedAt: !3381)
!3385 = !DILocation(line: 1028, column: 48, scope: !3267, inlinedAt: !3381)
!3386 = !DILocation(line: 1030, column: 3, scope: !3267, inlinedAt: !3381)
!3387 = !DILocation(line: 1030, column: 30, scope: !3267, inlinedAt: !3381)
!3388 = !DILocation(line: 1030, column: 26, scope: !3267, inlinedAt: !3381)
!3389 = !DILocation(line: 179, column: 45, scope: !1811, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 1031, column: 3, scope: !3267, inlinedAt: !3381)
!3391 = !DILocation(line: 180, column: 33, scope: !1811, inlinedAt: !3390)
!3392 = !DILocation(line: 180, column: 57, scope: !1811, inlinedAt: !3390)
!3393 = !DILocation(line: 184, column: 6, scope: !1811, inlinedAt: !3390)
!3394 = !DILocation(line: 184, column: 12, scope: !1811, inlinedAt: !3390)
!3395 = !DILocation(line: 185, column: 8, scope: !1827, inlinedAt: !3390)
!3396 = !DILocation(line: 185, column: 23, scope: !1827, inlinedAt: !3390)
!3397 = !DILocation(line: 185, column: 19, scope: !1827, inlinedAt: !3390)
!3398 = !DILocation(line: 186, column: 5, scope: !1827, inlinedAt: !3390)
!3399 = !DILocation(line: 187, column: 6, scope: !1811, inlinedAt: !3390)
!3400 = !DILocation(line: 187, column: 17, scope: !1811, inlinedAt: !3390)
!3401 = !DILocation(line: 188, column: 6, scope: !1811, inlinedAt: !3390)
!3402 = !DILocation(line: 188, column: 18, scope: !1811, inlinedAt: !3390)
!3403 = !DILocation(line: 1032, column: 10, scope: !3267, inlinedAt: !3381)
!3404 = !DILocation(line: 1033, column: 1, scope: !3267, inlinedAt: !3381)
!3405 = !DILocation(line: 1046, column: 3, scope: !3368)
!3406 = distinct !DISubprogram(name: "quote_n_mem", scope: !268, file: !268, line: 1061, type: !3407, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!26, !37, !26, !28}
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "n", arg: 1, scope: !3406, file: !268, line: 1061, type: !37)
!3411 = !DILocalVariable(name: "arg", arg: 2, scope: !3406, file: !268, line: 1061, type: !26)
!3412 = !DILocalVariable(name: "argsize", arg: 3, scope: !3406, file: !268, line: 1061, type: !28)
!3413 = !DILocation(line: 1061, column: 18, scope: !3406)
!3414 = !DILocation(line: 1061, column: 33, scope: !3406)
!3415 = !DILocation(line: 1061, column: 45, scope: !3406)
!3416 = !DILocation(line: 1063, column: 10, scope: !3406)
!3417 = !DILocation(line: 1063, column: 3, scope: !3406)
!3418 = distinct !DISubprogram(name: "quote_mem", scope: !268, file: !268, line: 1067, type: !3419, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!26, !26, !28}
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "arg", arg: 1, scope: !3418, file: !268, line: 1067, type: !26)
!3423 = !DILocalVariable(name: "argsize", arg: 2, scope: !3418, file: !268, line: 1067, type: !28)
!3424 = !DILocation(line: 1067, column: 24, scope: !3418)
!3425 = !DILocation(line: 1067, column: 36, scope: !3418)
!3426 = !DILocation(line: 1061, column: 18, scope: !3406, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 1069, column: 10, scope: !3418)
!3428 = !DILocation(line: 1061, column: 33, scope: !3406, inlinedAt: !3427)
!3429 = !DILocation(line: 1061, column: 45, scope: !3406, inlinedAt: !3427)
!3430 = !DILocation(line: 1063, column: 10, scope: !3406, inlinedAt: !3427)
!3431 = !DILocation(line: 1069, column: 3, scope: !3418)
!3432 = distinct !DISubprogram(name: "quote_n", scope: !268, file: !268, line: 1073, type: !3433, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!26, !37, !26}
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "n", arg: 1, scope: !3432, file: !268, line: 1073, type: !37)
!3437 = !DILocalVariable(name: "arg", arg: 2, scope: !3432, file: !268, line: 1073, type: !26)
!3438 = !DILocation(line: 1073, column: 14, scope: !3432)
!3439 = !DILocation(line: 1073, column: 29, scope: !3432)
!3440 = !DILocation(line: 1061, column: 18, scope: !3406, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 1075, column: 10, scope: !3432)
!3442 = !DILocation(line: 1061, column: 33, scope: !3406, inlinedAt: !3441)
!3443 = !DILocation(line: 1061, column: 45, scope: !3406, inlinedAt: !3441)
!3444 = !DILocation(line: 1063, column: 10, scope: !3406, inlinedAt: !3441)
!3445 = !DILocation(line: 1075, column: 3, scope: !3432)
!3446 = distinct !DISubprogram(name: "quote", scope: !268, file: !268, line: 1079, type: !3447, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !241, retainedNodes: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!26, !26}
!3449 = !{!3450}
!3450 = !DILocalVariable(name: "arg", arg: 1, scope: !3446, file: !268, line: 1079, type: !26)
!3451 = !DILocation(line: 1079, column: 20, scope: !3446)
!3452 = !DILocation(line: 1073, column: 14, scope: !3432, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 1081, column: 10, scope: !3446)
!3454 = !DILocation(line: 1073, column: 29, scope: !3432, inlinedAt: !3453)
!3455 = !DILocation(line: 1061, column: 18, scope: !3406, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 1075, column: 10, scope: !3432, inlinedAt: !3453)
!3457 = !DILocation(line: 1061, column: 33, scope: !3406, inlinedAt: !3456)
!3458 = !DILocation(line: 1061, column: 45, scope: !3406, inlinedAt: !3456)
!3459 = !DILocation(line: 1063, column: 10, scope: !3406, inlinedAt: !3456)
!3460 = !DILocation(line: 1081, column: 3, scope: !3446)
!3461 = distinct !DISubprogram(name: "safe_read", scope: !3462, file: !3462, line: 56, type: !3463, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !350, retainedNodes: !3465)
!3462 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!28, !37, !23, !28}
!3465 = !{!3466, !3467, !3468, !3469}
!3466 = !DILocalVariable(name: "fd", arg: 1, scope: !3461, file: !3462, line: 56, type: !37)
!3467 = !DILocalVariable(name: "buf", arg: 2, scope: !3461, file: !3462, line: 56, type: !23)
!3468 = !DILocalVariable(name: "count", arg: 3, scope: !3461, file: !3462, line: 56, type: !28)
!3469 = !DILocalVariable(name: "result", scope: !3470, file: !3462, line: 60, type: !3473)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3462, line: 59, column: 5)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3462, line: 58, column: 3)
!3472 = distinct !DILexicalBlock(scope: !3461, file: !3462, line: 58, column: 3)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3474, line: 108, baseType: !3475)
!3474 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !143, line: 191, baseType: !144)
!3476 = !DILocation(line: 56, column: 14, scope: !3461)
!3477 = !DILocation(line: 56, column: 30, scope: !3461)
!3478 = !DILocation(line: 56, column: 42, scope: !3461)
!3479 = !DILocation(line: 58, column: 3, scope: !3461)
!3480 = !DILocation(line: 60, column: 24, scope: !3470)
!3481 = !DILocation(line: 60, column: 15, scope: !3470)
!3482 = !DILocation(line: 62, column: 13, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3470, file: !3462, line: 62, column: 11)
!3484 = !DILocation(line: 62, column: 11, scope: !3470)
!3485 = !DILocation(line: 64, column: 16, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3483, file: !3462, line: 64, column: 16)
!3487 = !DILocation(line: 64, column: 16, scope: !3483)
!3488 = distinct !{!3488, !3489, !3490}
!3489 = !DILocation(line: 58, column: 3, scope: !3472)
!3490 = !DILocation(line: 70, column: 5, scope: !3472)
!3491 = !DILocation(line: 66, column: 22, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3486, file: !3462, line: 66, column: 16)
!3493 = !DILocation(line: 66, column: 51, scope: !3492)
!3494 = !DILocation(line: 66, column: 32, scope: !3492)
!3495 = !DILocation(line: 71, column: 1, scope: !3461)
!3496 = distinct !DISubprogram(name: "mkstemp_safer", scope: !3497, file: !3497, line: 31, type: !3498, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !357, retainedNodes: !3500)
!3497 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!37, !21}
!3500 = !{!3501}
!3501 = !DILocalVariable(name: "templ", arg: 1, scope: !3496, file: !3497, line: 31, type: !21)
!3502 = !DILocation(line: 31, column: 22, scope: !3496)
!3503 = !DILocation(line: 33, column: 20, scope: !3496)
!3504 = !DILocation(line: 33, column: 10, scope: !3496)
!3505 = !DILocation(line: 33, column: 3, scope: !3496)
!3506 = distinct !DISubprogram(name: "mkostemp_safer", scope: !3497, file: !3497, line: 40, type: !3507, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !357, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!37, !21, !37}
!3509 = !{!3510, !3511}
!3510 = !DILocalVariable(name: "templ", arg: 1, scope: !3506, file: !3497, line: 40, type: !21)
!3511 = !DILocalVariable(name: "flags", arg: 2, scope: !3506, file: !3497, line: 40, type: !37)
!3512 = !DILocation(line: 40, column: 23, scope: !3506)
!3513 = !DILocation(line: 40, column: 34, scope: !3506)
!3514 = !DILocation(line: 42, column: 25, scope: !3506)
!3515 = !DILocation(line: 42, column: 10, scope: !3506)
!3516 = !DILocation(line: 42, column: 3, scope: !3506)
!3517 = distinct !DISubprogram(name: "fd_safer", scope: !3518, file: !3518, line: 37, type: !3519, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !359, retainedNodes: !3521)
!3518 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!37, !37}
!3521 = !{!3522, !3523, !3526}
!3522 = !DILocalVariable(name: "fd", arg: 1, scope: !3517, file: !3518, line: 37, type: !37)
!3523 = !DILocalVariable(name: "f", scope: !3524, file: !3518, line: 41, type: !37)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3518, line: 40, column: 5)
!3525 = distinct !DILexicalBlock(scope: !3517, file: !3518, line: 39, column: 7)
!3526 = !DILocalVariable(name: "e", scope: !3524, file: !3518, line: 42, type: !37)
!3527 = !DILocation(line: 37, column: 15, scope: !3517)
!3528 = !DILocation(line: 39, column: 26, scope: !3525)
!3529 = !DILocation(line: 41, column: 15, scope: !3524)
!3530 = !DILocation(line: 41, column: 11, scope: !3524)
!3531 = !DILocation(line: 42, column: 15, scope: !3524)
!3532 = !DILocation(line: 42, column: 11, scope: !3524)
!3533 = !DILocation(line: 43, column: 7, scope: !3524)
!3534 = !DILocation(line: 44, column: 13, scope: !3524)
!3535 = !DILocation(line: 46, column: 5, scope: !3524)
!3536 = !DILocation(line: 48, column: 3, scope: !3517)
!3537 = distinct !DISubprogram(name: "version_etc_arn", scope: !365, file: !365, line: 62, type: !3538, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !3574)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !3540, !26, !26, !26, !24, !28}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !118, line: 7, baseType: !3542)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !120, line: 49, size: 1728, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3542, file: !120, line: 51, baseType: !37, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3542, file: !120, line: 54, baseType: !21, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3542, file: !120, line: 55, baseType: !21, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3542, file: !120, line: 56, baseType: !21, size: 64, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3542, file: !120, line: 57, baseType: !21, size: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3542, file: !120, line: 58, baseType: !21, size: 64, offset: 320)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3542, file: !120, line: 59, baseType: !21, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3542, file: !120, line: 60, baseType: !21, size: 64, offset: 448)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3542, file: !120, line: 61, baseType: !21, size: 64, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3542, file: !120, line: 64, baseType: !21, size: 64, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3542, file: !120, line: 65, baseType: !21, size: 64, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3542, file: !120, line: 66, baseType: !21, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3542, file: !120, line: 68, baseType: !135, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3542, file: !120, line: 70, baseType: !3558, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3542, file: !120, line: 72, baseType: !37, size: 32, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3542, file: !120, line: 73, baseType: !37, size: 32, offset: 928)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3542, file: !120, line: 74, baseType: !142, size: 64, offset: 960)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3542, file: !120, line: 77, baseType: !146, size: 16, offset: 1024)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3542, file: !120, line: 78, baseType: !148, size: 8, offset: 1040)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3542, file: !120, line: 79, baseType: !150, size: 8, offset: 1048)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3542, file: !120, line: 81, baseType: !154, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3542, file: !120, line: 89, baseType: !157, size: 64, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3542, file: !120, line: 91, baseType: !159, size: 64, offset: 1216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3542, file: !120, line: 92, baseType: !162, size: 64, offset: 1280)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3542, file: !120, line: 93, baseType: !3558, size: 64, offset: 1344)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3542, file: !120, line: 94, baseType: !23, size: 64, offset: 1408)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3542, file: !120, line: 95, baseType: !28, size: 64, offset: 1472)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3542, file: !120, line: 96, baseType: !37, size: 32, offset: 1536)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3542, file: !120, line: 98, baseType: !169, size: 160, offset: 1568)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580}
!3575 = !DILocalVariable(name: "stream", arg: 1, scope: !3537, file: !365, line: 62, type: !3540)
!3576 = !DILocalVariable(name: "command_name", arg: 2, scope: !3537, file: !365, line: 63, type: !26)
!3577 = !DILocalVariable(name: "package", arg: 3, scope: !3537, file: !365, line: 63, type: !26)
!3578 = !DILocalVariable(name: "version", arg: 4, scope: !3537, file: !365, line: 64, type: !26)
!3579 = !DILocalVariable(name: "authors", arg: 5, scope: !3537, file: !365, line: 65, type: !24)
!3580 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3537, file: !365, line: 65, type: !28)
!3581 = !DILocation(line: 62, column: 24, scope: !3537)
!3582 = !DILocation(line: 63, column: 30, scope: !3537)
!3583 = !DILocation(line: 63, column: 56, scope: !3537)
!3584 = !DILocation(line: 64, column: 30, scope: !3537)
!3585 = !DILocation(line: 65, column: 39, scope: !3537)
!3586 = !DILocation(line: 65, column: 55, scope: !3537)
!3587 = !DILocation(line: 67, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3537, file: !365, line: 67, column: 7)
!3589 = !DILocation(line: 67, column: 7, scope: !3537)
!3590 = !DILocation(line: 68, column: 5, scope: !3588)
!3591 = !DILocation(line: 70, column: 5, scope: !3588)
!3592 = !DILocation(line: 84, column: 3, scope: !3537)
!3593 = !DILocation(line: 86, column: 3, scope: !3537)
!3594 = !DILocation(line: 95, column: 3, scope: !3537)
!3595 = !DILocation(line: 99, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3537, file: !365, line: 96, column: 5)
!3597 = !DILocation(line: 102, column: 7, scope: !3596)
!3598 = !DILocation(line: 103, column: 7, scope: !3596)
!3599 = !DILocation(line: 106, column: 7, scope: !3596)
!3600 = !DILocation(line: 107, column: 7, scope: !3596)
!3601 = !DILocation(line: 110, column: 7, scope: !3596)
!3602 = !DILocation(line: 112, column: 7, scope: !3596)
!3603 = !DILocation(line: 117, column: 7, scope: !3596)
!3604 = !DILocation(line: 119, column: 7, scope: !3596)
!3605 = !DILocation(line: 124, column: 7, scope: !3596)
!3606 = !DILocation(line: 126, column: 7, scope: !3596)
!3607 = !DILocation(line: 131, column: 7, scope: !3596)
!3608 = !DILocation(line: 134, column: 7, scope: !3596)
!3609 = !DILocation(line: 139, column: 7, scope: !3596)
!3610 = !DILocation(line: 142, column: 7, scope: !3596)
!3611 = !DILocation(line: 147, column: 7, scope: !3596)
!3612 = !DILocation(line: 151, column: 7, scope: !3596)
!3613 = !DILocation(line: 156, column: 7, scope: !3596)
!3614 = !DILocation(line: 160, column: 7, scope: !3596)
!3615 = !DILocation(line: 167, column: 7, scope: !3596)
!3616 = !DILocation(line: 171, column: 7, scope: !3596)
!3617 = !DILocation(line: 173, column: 1, scope: !3537)
!3618 = distinct !DISubprogram(name: "version_etc_ar", scope: !365, file: !365, line: 180, type: !3619, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3540, !26, !26, !26, !24}
!3621 = !{!3622, !3623, !3624, !3625, !3626, !3627}
!3622 = !DILocalVariable(name: "stream", arg: 1, scope: !3618, file: !365, line: 180, type: !3540)
!3623 = !DILocalVariable(name: "command_name", arg: 2, scope: !3618, file: !365, line: 181, type: !26)
!3624 = !DILocalVariable(name: "package", arg: 3, scope: !3618, file: !365, line: 181, type: !26)
!3625 = !DILocalVariable(name: "version", arg: 4, scope: !3618, file: !365, line: 182, type: !26)
!3626 = !DILocalVariable(name: "authors", arg: 5, scope: !3618, file: !365, line: 182, type: !24)
!3627 = !DILocalVariable(name: "n_authors", scope: !3618, file: !365, line: 184, type: !28)
!3628 = !DILocation(line: 180, column: 23, scope: !3618)
!3629 = !DILocation(line: 181, column: 29, scope: !3618)
!3630 = !DILocation(line: 181, column: 55, scope: !3618)
!3631 = !DILocation(line: 182, column: 29, scope: !3618)
!3632 = !DILocation(line: 182, column: 59, scope: !3618)
!3633 = !DILocation(line: 184, column: 10, scope: !3618)
!3634 = !DILocation(line: 186, column: 8, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3618, file: !365, line: 186, column: 3)
!3636 = !DILocation(line: 0, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3635, file: !365, line: 186, column: 3)
!3638 = !DILocation(line: 186, column: 23, scope: !3637)
!3639 = !DILocation(line: 186, column: 3, scope: !3635)
!3640 = !DILocation(line: 186, column: 52, scope: !3637)
!3641 = distinct !{!3641, !3639, !3642}
!3642 = !DILocation(line: 187, column: 5, scope: !3635)
!3643 = !DILocation(line: 188, column: 3, scope: !3618)
!3644 = !DILocation(line: 189, column: 1, scope: !3618)
!3645 = distinct !DISubprogram(name: "version_etc_va", scope: !365, file: !365, line: 196, type: !3646, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !3655)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3540, !26, !26, !26, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !362, line: 189, size: 192, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3649, file: !362, line: 189, baseType: !7, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3649, file: !362, line: 189, baseType: !7, size: 32, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3649, file: !362, line: 189, baseType: !23, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3649, file: !362, line: 189, baseType: !23, size: 64, offset: 128)
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3656 = !DILocalVariable(name: "stream", arg: 1, scope: !3645, file: !365, line: 196, type: !3540)
!3657 = !DILocalVariable(name: "command_name", arg: 2, scope: !3645, file: !365, line: 197, type: !26)
!3658 = !DILocalVariable(name: "package", arg: 3, scope: !3645, file: !365, line: 197, type: !26)
!3659 = !DILocalVariable(name: "version", arg: 4, scope: !3645, file: !365, line: 198, type: !26)
!3660 = !DILocalVariable(name: "authors", arg: 5, scope: !3645, file: !365, line: 198, type: !3648)
!3661 = !DILocalVariable(name: "n_authors", scope: !3645, file: !365, line: 200, type: !28)
!3662 = !DILocalVariable(name: "authtab", scope: !3645, file: !365, line: 201, type: !3663)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 640, elements: !271)
!3664 = !DILocation(line: 196, column: 23, scope: !3645)
!3665 = !DILocation(line: 197, column: 29, scope: !3645)
!3666 = !DILocation(line: 197, column: 55, scope: !3645)
!3667 = !DILocation(line: 198, column: 29, scope: !3645)
!3668 = !DILocation(line: 198, column: 46, scope: !3645)
!3669 = !DILocation(line: 201, column: 3, scope: !3645)
!3670 = !DILocation(line: 201, column: 15, scope: !3645)
!3671 = !DILocation(line: 200, column: 10, scope: !3645)
!3672 = !DILocation(line: 205, column: 35, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !365, line: 203, column: 3)
!3674 = distinct !DILexicalBlock(scope: !3645, file: !365, line: 203, column: 3)
!3675 = !DILocation(line: 205, column: 14, scope: !3673)
!3676 = !DILocation(line: 205, column: 33, scope: !3673)
!3677 = !DILocation(line: 205, column: 67, scope: !3673)
!3678 = !DILocation(line: 203, column: 3, scope: !3674)
!3679 = !DILocation(line: 0, scope: !3673)
!3680 = !DILocation(line: 208, column: 3, scope: !3645)
!3681 = !DILocation(line: 210, column: 1, scope: !3645)
!3682 = distinct !DISubprogram(name: "version_etc", scope: !365, file: !365, line: 227, type: !3683, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3540, !26, !26, !26, null}
!3685 = !{!3686, !3687, !3688, !3689, !3690}
!3686 = !DILocalVariable(name: "stream", arg: 1, scope: !3682, file: !365, line: 227, type: !3540)
!3687 = !DILocalVariable(name: "command_name", arg: 2, scope: !3682, file: !365, line: 228, type: !26)
!3688 = !DILocalVariable(name: "package", arg: 3, scope: !3682, file: !365, line: 228, type: !26)
!3689 = !DILocalVariable(name: "version", arg: 4, scope: !3682, file: !365, line: 229, type: !26)
!3690 = !DILocalVariable(name: "authors", scope: !3682, file: !365, line: 231, type: !3691)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1007, line: 52, baseType: !3692)
!3692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 48, baseType: !3693)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !362, line: 231, baseType: !3694)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3649, size: 192, elements: !151)
!3695 = !DILocation(line: 227, column: 20, scope: !3682)
!3696 = !DILocation(line: 228, column: 26, scope: !3682)
!3697 = !DILocation(line: 228, column: 52, scope: !3682)
!3698 = !DILocation(line: 229, column: 26, scope: !3682)
!3699 = !DILocation(line: 231, column: 3, scope: !3682)
!3700 = !DILocation(line: 231, column: 11, scope: !3682)
!3701 = !DILocation(line: 233, column: 3, scope: !3682)
!3702 = !DILocation(line: 234, column: 3, scope: !3682)
!3703 = !DILocation(line: 235, column: 3, scope: !3682)
!3704 = !DILocation(line: 236, column: 1, scope: !3682)
!3705 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !365, file: !365, line: 239, type: !847, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !361, retainedNodes: !215)
!3706 = !DILocation(line: 245, column: 3, scope: !3705)
!3707 = !DILocation(line: 251, column: 3, scope: !3705)
!3708 = !DILocation(line: 256, column: 3, scope: !3705)
!3709 = !DILocation(line: 258, column: 1, scope: !3705)
!3710 = distinct !DISubprogram(name: "xnmalloc", scope: !372, file: !372, line: 99, type: !3711, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!23, !28, !28}
!3713 = !{!3714, !3715}
!3714 = !DILocalVariable(name: "n", arg: 1, scope: !3710, file: !372, line: 99, type: !28)
!3715 = !DILocalVariable(name: "s", arg: 2, scope: !3710, file: !372, line: 99, type: !28)
!3716 = !DILocation(line: 99, column: 18, scope: !3710)
!3717 = !DILocation(line: 99, column: 28, scope: !3710)
!3718 = !DILocation(line: 101, column: 7, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3710, file: !372, line: 101, column: 7)
!3720 = !DILocation(line: 101, column: 7, scope: !3710)
!3721 = !DILocation(line: 102, column: 5, scope: !3719)
!3722 = !DILocation(line: 103, column: 21, scope: !3710)
!3723 = !DILocalVariable(name: "n", arg: 1, scope: !3724, file: !3725, line: 39, type: !28)
!3724 = distinct !DISubprogram(name: "xmalloc", scope: !3725, file: !3725, line: 39, type: !3726, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3728)
!3725 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!23, !28}
!3728 = !{!3723, !3729}
!3729 = !DILocalVariable(name: "p", scope: !3724, file: !3725, line: 41, type: !23)
!3730 = !DILocation(line: 39, column: 17, scope: !3724, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 103, column: 10, scope: !3710)
!3732 = !DILocation(line: 41, column: 13, scope: !3724, inlinedAt: !3731)
!3733 = !DILocation(line: 41, column: 9, scope: !3724, inlinedAt: !3731)
!3734 = !DILocation(line: 42, column: 8, scope: !3735, inlinedAt: !3731)
!3735 = distinct !DILexicalBlock(scope: !3724, file: !3725, line: 42, column: 7)
!3736 = !DILocation(line: 42, column: 15, scope: !3735, inlinedAt: !3731)
!3737 = !DILocation(line: 42, column: 10, scope: !3735, inlinedAt: !3731)
!3738 = !DILocation(line: 43, column: 5, scope: !3735, inlinedAt: !3731)
!3739 = !DILocation(line: 103, column: 3, scope: !3710)
!3740 = !DILocation(line: 39, column: 17, scope: !3724)
!3741 = !DILocation(line: 41, column: 13, scope: !3724)
!3742 = !DILocation(line: 41, column: 9, scope: !3724)
!3743 = !DILocation(line: 42, column: 8, scope: !3735)
!3744 = !DILocation(line: 42, column: 15, scope: !3735)
!3745 = !DILocation(line: 42, column: 10, scope: !3735)
!3746 = !DILocation(line: 43, column: 5, scope: !3735)
!3747 = !DILocation(line: 44, column: 3, scope: !3724)
!3748 = distinct !DISubprogram(name: "xnrealloc", scope: !372, file: !372, line: 112, type: !3749, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!23, !23, !28, !28}
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "p", arg: 1, scope: !3748, file: !372, line: 112, type: !23)
!3753 = !DILocalVariable(name: "n", arg: 2, scope: !3748, file: !372, line: 112, type: !28)
!3754 = !DILocalVariable(name: "s", arg: 3, scope: !3748, file: !372, line: 112, type: !28)
!3755 = !DILocation(line: 112, column: 18, scope: !3748)
!3756 = !DILocation(line: 112, column: 28, scope: !3748)
!3757 = !DILocation(line: 112, column: 38, scope: !3748)
!3758 = !DILocation(line: 114, column: 7, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3748, file: !372, line: 114, column: 7)
!3760 = !DILocation(line: 114, column: 7, scope: !3748)
!3761 = !DILocation(line: 115, column: 5, scope: !3759)
!3762 = !DILocation(line: 116, column: 25, scope: !3748)
!3763 = !DILocalVariable(name: "p", arg: 1, scope: !3764, file: !3725, line: 51, type: !23)
!3764 = distinct !DISubprogram(name: "xrealloc", scope: !3725, file: !3725, line: 51, type: !3765, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!23, !23, !28}
!3767 = !{!3763, !3768}
!3768 = !DILocalVariable(name: "n", arg: 2, scope: !3764, file: !3725, line: 51, type: !28)
!3769 = !DILocation(line: 51, column: 17, scope: !3764, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 116, column: 10, scope: !3748)
!3771 = !DILocation(line: 51, column: 27, scope: !3764, inlinedAt: !3770)
!3772 = !DILocation(line: 53, column: 8, scope: !3773, inlinedAt: !3770)
!3773 = distinct !DILexicalBlock(scope: !3764, file: !3725, line: 53, column: 7)
!3774 = !DILocation(line: 53, column: 13, scope: !3773, inlinedAt: !3770)
!3775 = !DILocation(line: 53, column: 10, scope: !3773, inlinedAt: !3770)
!3776 = !DILocation(line: 57, column: 7, scope: !3777, inlinedAt: !3770)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !3725, line: 54, column: 5)
!3778 = !DILocation(line: 58, column: 7, scope: !3777, inlinedAt: !3770)
!3779 = !DILocation(line: 61, column: 7, scope: !3764, inlinedAt: !3770)
!3780 = !DILocation(line: 62, column: 8, scope: !3781, inlinedAt: !3770)
!3781 = distinct !DILexicalBlock(scope: !3764, file: !3725, line: 62, column: 7)
!3782 = !DILocation(line: 62, column: 13, scope: !3781, inlinedAt: !3770)
!3783 = !DILocation(line: 62, column: 10, scope: !3781, inlinedAt: !3770)
!3784 = !DILocation(line: 63, column: 5, scope: !3781, inlinedAt: !3770)
!3785 = !DILocation(line: 0, scope: !3764, inlinedAt: !3770)
!3786 = !DILocation(line: 116, column: 3, scope: !3748)
!3787 = !DILocation(line: 51, column: 17, scope: !3764)
!3788 = !DILocation(line: 51, column: 27, scope: !3764)
!3789 = !DILocation(line: 53, column: 8, scope: !3773)
!3790 = !DILocation(line: 53, column: 13, scope: !3773)
!3791 = !DILocation(line: 53, column: 10, scope: !3773)
!3792 = !DILocation(line: 57, column: 7, scope: !3777)
!3793 = !DILocation(line: 58, column: 7, scope: !3777)
!3794 = !DILocation(line: 61, column: 7, scope: !3764)
!3795 = !DILocation(line: 62, column: 8, scope: !3781)
!3796 = !DILocation(line: 62, column: 13, scope: !3781)
!3797 = !DILocation(line: 62, column: 10, scope: !3781)
!3798 = !DILocation(line: 63, column: 5, scope: !3781)
!3799 = !DILocation(line: 0, scope: !3764)
!3800 = !DILocation(line: 65, column: 1, scope: !3764)
!3801 = !DILocation(line: 174, column: 19, scope: !373)
!3802 = !DILocation(line: 174, column: 30, scope: !373)
!3803 = !DILocation(line: 174, column: 41, scope: !373)
!3804 = !DILocation(line: 176, column: 14, scope: !373)
!3805 = !DILocation(line: 176, column: 10, scope: !373)
!3806 = !DILocation(line: 178, column: 9, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !373, file: !372, line: 178, column: 7)
!3808 = !DILocation(line: 178, column: 7, scope: !373)
!3809 = !DILocation(line: 180, column: 13, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !372, line: 180, column: 11)
!3811 = distinct !DILexicalBlock(scope: !3807, file: !372, line: 179, column: 5)
!3812 = !DILocation(line: 180, column: 11, scope: !3811)
!3813 = !DILocation(line: 188, column: 30, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3810, file: !372, line: 181, column: 9)
!3815 = !DILocation(line: 189, column: 16, scope: !3814)
!3816 = !DILocation(line: 189, column: 13, scope: !3814)
!3817 = !DILocation(line: 190, column: 9, scope: !3814)
!3818 = !DILocation(line: 0, scope: !3814)
!3819 = !DILocation(line: 191, column: 11, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3811, file: !372, line: 191, column: 11)
!3821 = !DILocation(line: 191, column: 11, scope: !3811)
!3822 = !DILocation(line: 206, column: 7, scope: !373)
!3823 = !DILocation(line: 207, column: 25, scope: !373)
!3824 = !DILocation(line: 51, column: 17, scope: !3764, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 207, column: 10, scope: !373)
!3826 = !DILocation(line: 51, column: 27, scope: !3764, inlinedAt: !3825)
!3827 = !DILocation(line: 53, column: 10, scope: !3773, inlinedAt: !3825)
!3828 = !DILocation(line: 192, column: 9, scope: !3820)
!3829 = !DILocation(line: 200, column: 69, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !372, line: 200, column: 11)
!3831 = distinct !DILexicalBlock(scope: !3807, file: !372, line: 195, column: 5)
!3832 = !DILocation(line: 201, column: 11, scope: !3830)
!3833 = !DILocation(line: 200, column: 11, scope: !3831)
!3834 = !DILocation(line: 202, column: 9, scope: !3830)
!3835 = !DILocation(line: 203, column: 14, scope: !3831)
!3836 = !DILocation(line: 203, column: 18, scope: !3831)
!3837 = !DILocation(line: 203, column: 9, scope: !3831)
!3838 = !DILocation(line: 53, column: 8, scope: !3773, inlinedAt: !3825)
!3839 = !DILocation(line: 57, column: 7, scope: !3777, inlinedAt: !3825)
!3840 = !DILocation(line: 58, column: 7, scope: !3777, inlinedAt: !3825)
!3841 = !DILocation(line: 61, column: 7, scope: !3764, inlinedAt: !3825)
!3842 = !DILocation(line: 62, column: 8, scope: !3781, inlinedAt: !3825)
!3843 = !DILocation(line: 62, column: 13, scope: !3781, inlinedAt: !3825)
!3844 = !DILocation(line: 62, column: 10, scope: !3781, inlinedAt: !3825)
!3845 = !DILocation(line: 63, column: 5, scope: !3781, inlinedAt: !3825)
!3846 = !DILocation(line: 0, scope: !3764, inlinedAt: !3825)
!3847 = !DILocation(line: 207, column: 3, scope: !373)
!3848 = distinct !DISubprogram(name: "xcharalloc", scope: !372, file: !372, line: 216, type: !2747, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3849)
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3848, file: !372, line: 216, type: !28)
!3851 = !DILocation(line: 216, column: 20, scope: !3848)
!3852 = !DILocation(line: 39, column: 17, scope: !3724, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 218, column: 10, scope: !3848)
!3854 = !DILocation(line: 41, column: 13, scope: !3724, inlinedAt: !3853)
!3855 = !DILocation(line: 41, column: 9, scope: !3724, inlinedAt: !3853)
!3856 = !DILocation(line: 42, column: 8, scope: !3735, inlinedAt: !3853)
!3857 = !DILocation(line: 42, column: 15, scope: !3735, inlinedAt: !3853)
!3858 = !DILocation(line: 42, column: 10, scope: !3735, inlinedAt: !3853)
!3859 = !DILocation(line: 43, column: 5, scope: !3735, inlinedAt: !3853)
!3860 = !DILocation(line: 218, column: 3, scope: !3848)
!3861 = distinct !DISubprogram(name: "x2realloc", scope: !3725, file: !3725, line: 74, type: !3862, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!23, !23, !376}
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "p", arg: 1, scope: !3861, file: !3725, line: 74, type: !23)
!3866 = !DILocalVariable(name: "pn", arg: 2, scope: !3861, file: !3725, line: 74, type: !376)
!3867 = !DILocation(line: 74, column: 18, scope: !3861)
!3868 = !DILocation(line: 74, column: 29, scope: !3861)
!3869 = !DILocation(line: 174, column: 19, scope: !373, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 76, column: 10, scope: !3861)
!3871 = !DILocation(line: 174, column: 30, scope: !373, inlinedAt: !3870)
!3872 = !DILocation(line: 174, column: 41, scope: !373, inlinedAt: !3870)
!3873 = !DILocation(line: 176, column: 14, scope: !373, inlinedAt: !3870)
!3874 = !DILocation(line: 176, column: 10, scope: !373, inlinedAt: !3870)
!3875 = !DILocation(line: 178, column: 9, scope: !3807, inlinedAt: !3870)
!3876 = !DILocation(line: 178, column: 7, scope: !373, inlinedAt: !3870)
!3877 = !DILocation(line: 180, column: 13, scope: !3810, inlinedAt: !3870)
!3878 = !DILocation(line: 180, column: 11, scope: !3811, inlinedAt: !3870)
!3879 = !DILocation(line: 191, column: 11, scope: !3820, inlinedAt: !3870)
!3880 = !DILocation(line: 191, column: 11, scope: !3811, inlinedAt: !3870)
!3881 = !DILocation(line: 206, column: 7, scope: !373, inlinedAt: !3870)
!3882 = !DILocation(line: 51, column: 17, scope: !3764, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 207, column: 10, scope: !373, inlinedAt: !3870)
!3884 = !DILocation(line: 51, column: 27, scope: !3764, inlinedAt: !3883)
!3885 = !DILocation(line: 53, column: 10, scope: !3773, inlinedAt: !3883)
!3886 = !DILocation(line: 192, column: 9, scope: !3820, inlinedAt: !3870)
!3887 = !DILocation(line: 201, column: 11, scope: !3830, inlinedAt: !3870)
!3888 = !DILocation(line: 200, column: 11, scope: !3831, inlinedAt: !3870)
!3889 = !DILocation(line: 202, column: 9, scope: !3830, inlinedAt: !3870)
!3890 = !DILocation(line: 203, column: 14, scope: !3831, inlinedAt: !3870)
!3891 = !DILocation(line: 203, column: 18, scope: !3831, inlinedAt: !3870)
!3892 = !DILocation(line: 203, column: 9, scope: !3831, inlinedAt: !3870)
!3893 = !DILocation(line: 53, column: 8, scope: !3773, inlinedAt: !3883)
!3894 = !DILocation(line: 57, column: 7, scope: !3777, inlinedAt: !3883)
!3895 = !DILocation(line: 58, column: 7, scope: !3777, inlinedAt: !3883)
!3896 = !DILocation(line: 61, column: 7, scope: !3764, inlinedAt: !3883)
!3897 = !DILocation(line: 62, column: 8, scope: !3781, inlinedAt: !3883)
!3898 = !DILocation(line: 62, column: 13, scope: !3781, inlinedAt: !3883)
!3899 = !DILocation(line: 62, column: 10, scope: !3781, inlinedAt: !3883)
!3900 = !DILocation(line: 63, column: 5, scope: !3781, inlinedAt: !3883)
!3901 = !DILocation(line: 0, scope: !3764, inlinedAt: !3883)
!3902 = !DILocation(line: 76, column: 3, scope: !3861)
!3903 = distinct !DISubprogram(name: "xzalloc", scope: !3725, file: !3725, line: 84, type: !3726, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3904)
!3904 = !{!3905}
!3905 = !DILocalVariable(name: "s", arg: 1, scope: !3903, file: !3725, line: 84, type: !28)
!3906 = !DILocation(line: 84, column: 17, scope: !3903)
!3907 = !DILocation(line: 39, column: 17, scope: !3724, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 86, column: 18, scope: !3903)
!3909 = !DILocation(line: 41, column: 13, scope: !3724, inlinedAt: !3908)
!3910 = !DILocation(line: 41, column: 9, scope: !3724, inlinedAt: !3908)
!3911 = !DILocation(line: 42, column: 8, scope: !3735, inlinedAt: !3908)
!3912 = !DILocation(line: 42, column: 15, scope: !3735, inlinedAt: !3908)
!3913 = !DILocation(line: 42, column: 10, scope: !3735, inlinedAt: !3908)
!3914 = !DILocation(line: 43, column: 5, scope: !3735, inlinedAt: !3908)
!3915 = !DILocation(line: 86, column: 10, scope: !3903)
!3916 = !DILocation(line: 86, column: 3, scope: !3903)
!3917 = distinct !DISubprogram(name: "xcalloc", scope: !3725, file: !3725, line: 93, type: !3711, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3918)
!3918 = !{!3919, !3920, !3921}
!3919 = !DILocalVariable(name: "n", arg: 1, scope: !3917, file: !3725, line: 93, type: !28)
!3920 = !DILocalVariable(name: "s", arg: 2, scope: !3917, file: !3725, line: 93, type: !28)
!3921 = !DILocalVariable(name: "p", scope: !3917, file: !3725, line: 95, type: !23)
!3922 = !DILocation(line: 93, column: 17, scope: !3917)
!3923 = !DILocation(line: 93, column: 27, scope: !3917)
!3924 = !DILocation(line: 100, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3917, file: !3725, line: 100, column: 7)
!3926 = !DILocation(line: 101, column: 7, scope: !3925)
!3927 = !DILocation(line: 101, column: 18, scope: !3925)
!3928 = !DILocation(line: 95, column: 9, scope: !3917)
!3929 = !DILocation(line: 101, column: 16, scope: !3925)
!3930 = !DILocation(line: 100, column: 7, scope: !3917)
!3931 = !DILocation(line: 102, column: 5, scope: !3925)
!3932 = !DILocation(line: 103, column: 3, scope: !3917)
!3933 = distinct !DISubprogram(name: "xmemdup", scope: !3725, file: !3725, line: 111, type: !3934, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!23, !1659, !28}
!3936 = !{!3937, !3938}
!3937 = !DILocalVariable(name: "p", arg: 1, scope: !3933, file: !3725, line: 111, type: !1659)
!3938 = !DILocalVariable(name: "s", arg: 2, scope: !3933, file: !3725, line: 111, type: !28)
!3939 = !DILocation(line: 111, column: 22, scope: !3933)
!3940 = !DILocation(line: 111, column: 32, scope: !3933)
!3941 = !DILocation(line: 39, column: 17, scope: !3724, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 113, column: 18, scope: !3933)
!3943 = !DILocation(line: 41, column: 13, scope: !3724, inlinedAt: !3942)
!3944 = !DILocation(line: 41, column: 9, scope: !3724, inlinedAt: !3942)
!3945 = !DILocation(line: 42, column: 8, scope: !3735, inlinedAt: !3942)
!3946 = !DILocation(line: 42, column: 15, scope: !3735, inlinedAt: !3942)
!3947 = !DILocation(line: 42, column: 10, scope: !3735, inlinedAt: !3942)
!3948 = !DILocation(line: 43, column: 5, scope: !3735, inlinedAt: !3942)
!3949 = !DILocation(line: 113, column: 10, scope: !3933)
!3950 = !DILocation(line: 113, column: 3, scope: !3933)
!3951 = distinct !DISubprogram(name: "xstrdup", scope: !3725, file: !3725, line: 119, type: !2951, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !368, retainedNodes: !3952)
!3952 = !{!3953}
!3953 = !DILocalVariable(name: "string", arg: 1, scope: !3951, file: !3725, line: 119, type: !26)
!3954 = !DILocation(line: 119, column: 22, scope: !3951)
!3955 = !DILocation(line: 121, column: 27, scope: !3951)
!3956 = !DILocation(line: 121, column: 43, scope: !3951)
!3957 = !DILocation(line: 111, column: 22, scope: !3933, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 121, column: 10, scope: !3951)
!3959 = !DILocation(line: 111, column: 32, scope: !3933, inlinedAt: !3958)
!3960 = !DILocation(line: 39, column: 17, scope: !3724, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 113, column: 18, scope: !3933, inlinedAt: !3958)
!3962 = !DILocation(line: 41, column: 13, scope: !3724, inlinedAt: !3961)
!3963 = !DILocation(line: 41, column: 9, scope: !3724, inlinedAt: !3961)
!3964 = !DILocation(line: 42, column: 8, scope: !3735, inlinedAt: !3961)
!3965 = !DILocation(line: 42, column: 15, scope: !3735, inlinedAt: !3961)
!3966 = !DILocation(line: 42, column: 10, scope: !3735, inlinedAt: !3961)
!3967 = !DILocation(line: 43, column: 5, scope: !3735, inlinedAt: !3961)
!3968 = !DILocation(line: 113, column: 10, scope: !3933, inlinedAt: !3958)
!3969 = !DILocation(line: 121, column: 3, scope: !3951)
!3970 = distinct !DISubprogram(name: "xalloc_die", scope: !3971, file: !3971, line: 32, type: !847, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !385, retainedNodes: !215)
!3971 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3972 = !DILocation(line: 34, column: 10, scope: !3970)
!3973 = !DILocation(line: 34, column: 33, scope: !3970)
!3974 = !DILocation(line: 34, column: 3, scope: !3970)
!3975 = !DILocation(line: 40, column: 3, scope: !3970)
!3976 = distinct !DISubprogram(name: "rpl_calloc", scope: !3977, file: !3977, line: 42, type: !3711, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !387, retainedNodes: !3978)
!3977 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DILocalVariable(name: "n", arg: 1, scope: !3976, file: !3977, line: 42, type: !28)
!3980 = !DILocalVariable(name: "s", arg: 2, scope: !3976, file: !3977, line: 42, type: !28)
!3981 = !DILocalVariable(name: "result", scope: !3976, file: !3977, line: 44, type: !23)
!3982 = !DILocalVariable(name: "bytes", scope: !3983, file: !3977, line: 56, type: !28)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3977, line: 53, column: 5)
!3984 = distinct !DILexicalBlock(scope: !3976, file: !3977, line: 47, column: 7)
!3985 = !DILocation(line: 42, column: 20, scope: !3976)
!3986 = !DILocation(line: 42, column: 30, scope: !3976)
!3987 = !DILocation(line: 47, column: 9, scope: !3984)
!3988 = !DILocation(line: 47, column: 19, scope: !3984)
!3989 = !DILocation(line: 47, column: 14, scope: !3984)
!3990 = !DILocation(line: 56, column: 24, scope: !3983)
!3991 = !DILocation(line: 56, column: 14, scope: !3983)
!3992 = !DILocation(line: 57, column: 17, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3983, file: !3977, line: 57, column: 11)
!3994 = !DILocation(line: 57, column: 21, scope: !3993)
!3995 = !DILocation(line: 57, column: 11, scope: !3983)
!3996 = !DILocation(line: 59, column: 11, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3993, file: !3977, line: 58, column: 9)
!3998 = !DILocation(line: 59, column: 17, scope: !3997)
!3999 = !DILocation(line: 65, column: 12, scope: !3976)
!4000 = !DILocation(line: 44, column: 9, scope: !3976)
!4001 = !DILocation(line: 72, column: 3, scope: !3976)
!4002 = !DILocation(line: 0, scope: !3997)
!4003 = !DILocation(line: 73, column: 1, scope: !3976)
!4004 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4005, file: !4005, line: 28, type: !4006, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !389, retainedNodes: !4042)
!4005 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!37, !4008, !1006, !37}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !118, line: 7, baseType: !4010)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !120, line: 49, size: 1728, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4010, file: !120, line: 51, baseType: !37, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4010, file: !120, line: 54, baseType: !21, size: 64, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4010, file: !120, line: 55, baseType: !21, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4010, file: !120, line: 56, baseType: !21, size: 64, offset: 192)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4010, file: !120, line: 57, baseType: !21, size: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4010, file: !120, line: 58, baseType: !21, size: 64, offset: 320)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4010, file: !120, line: 59, baseType: !21, size: 64, offset: 384)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4010, file: !120, line: 60, baseType: !21, size: 64, offset: 448)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4010, file: !120, line: 61, baseType: !21, size: 64, offset: 512)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4010, file: !120, line: 64, baseType: !21, size: 64, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4010, file: !120, line: 65, baseType: !21, size: 64, offset: 640)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4010, file: !120, line: 66, baseType: !21, size: 64, offset: 704)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4010, file: !120, line: 68, baseType: !135, size: 64, offset: 768)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4010, file: !120, line: 70, baseType: !4026, size: 64, offset: 832)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4010, file: !120, line: 72, baseType: !37, size: 32, offset: 896)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4010, file: !120, line: 73, baseType: !37, size: 32, offset: 928)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4010, file: !120, line: 74, baseType: !142, size: 64, offset: 960)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4010, file: !120, line: 77, baseType: !146, size: 16, offset: 1024)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4010, file: !120, line: 78, baseType: !148, size: 8, offset: 1040)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4010, file: !120, line: 79, baseType: !150, size: 8, offset: 1048)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4010, file: !120, line: 81, baseType: !154, size: 64, offset: 1088)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4010, file: !120, line: 89, baseType: !157, size: 64, offset: 1152)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4010, file: !120, line: 91, baseType: !159, size: 64, offset: 1216)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4010, file: !120, line: 92, baseType: !162, size: 64, offset: 1280)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4010, file: !120, line: 93, baseType: !4026, size: 64, offset: 1344)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4010, file: !120, line: 94, baseType: !23, size: 64, offset: 1408)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4010, file: !120, line: 95, baseType: !28, size: 64, offset: 1472)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4010, file: !120, line: 96, baseType: !37, size: 32, offset: 1536)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4010, file: !120, line: 98, baseType: !169, size: 160, offset: 1568)
!4042 = !{!4043, !4044, !4045, !4046}
!4043 = !DILocalVariable(name: "fp", arg: 1, scope: !4004, file: !4005, line: 28, type: !4008)
!4044 = !DILocalVariable(name: "offset", arg: 2, scope: !4004, file: !4005, line: 28, type: !1006)
!4045 = !DILocalVariable(name: "whence", arg: 3, scope: !4004, file: !4005, line: 28, type: !37)
!4046 = !DILocalVariable(name: "pos", scope: !4047, file: !4005, line: 117, type: !1006)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !4005, line: 113, column: 5)
!4048 = distinct !DILexicalBlock(scope: !4004, file: !4005, line: 52, column: 7)
!4049 = !DILocation(line: 28, column: 15, scope: !4004)
!4050 = !DILocation(line: 28, column: 25, scope: !4004)
!4051 = !DILocation(line: 28, column: 37, scope: !4004)
!4052 = !DILocation(line: 52, column: 11, scope: !4048)
!4053 = !{!4054, !840, i64 16}
!4054 = !{!"_IO_FILE", !978, i64 0, !840, i64 8, !840, i64 16, !840, i64 24, !840, i64 32, !840, i64 40, !840, i64 48, !840, i64 56, !840, i64 64, !840, i64 72, !840, i64 80, !840, i64 88, !840, i64 96, !840, i64 104, !978, i64 112, !978, i64 116, !902, i64 120, !2166, i64 128, !841, i64 130, !841, i64 131, !840, i64 136, !902, i64 144, !840, i64 152, !840, i64 160, !840, i64 168, !840, i64 176, !902, i64 184, !978, i64 192, !841, i64 196}
!4055 = !DILocation(line: 52, column: 31, scope: !4048)
!4056 = !{!4054, !840, i64 8}
!4057 = !DILocation(line: 52, column: 24, scope: !4048)
!4058 = !DILocation(line: 53, column: 7, scope: !4048)
!4059 = !DILocation(line: 53, column: 14, scope: !4048)
!4060 = !{!4054, !840, i64 40}
!4061 = !DILocation(line: 53, column: 35, scope: !4048)
!4062 = !{!4054, !840, i64 32}
!4063 = !DILocation(line: 53, column: 28, scope: !4048)
!4064 = !DILocation(line: 54, column: 7, scope: !4048)
!4065 = !DILocation(line: 54, column: 14, scope: !4048)
!4066 = !{!4054, !840, i64 72}
!4067 = !DILocation(line: 54, column: 28, scope: !4048)
!4068 = !DILocation(line: 52, column: 7, scope: !4004)
!4069 = !DILocation(line: 117, column: 26, scope: !4047)
!4070 = !DILocation(line: 117, column: 19, scope: !4047)
!4071 = !DILocation(line: 117, column: 13, scope: !4047)
!4072 = !DILocation(line: 118, column: 15, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4047, file: !4005, line: 118, column: 11)
!4074 = !DILocation(line: 118, column: 11, scope: !4047)
!4075 = !DILocation(line: 129, column: 11, scope: !4047)
!4076 = !DILocation(line: 129, column: 18, scope: !4047)
!4077 = !{!4054, !978, i64 0}
!4078 = !DILocation(line: 130, column: 11, scope: !4047)
!4079 = !DILocation(line: 130, column: 19, scope: !4047)
!4080 = !{!4054, !902, i64 144}
!4081 = !DILocation(line: 161, column: 7, scope: !4047)
!4082 = !DILocation(line: 163, column: 10, scope: !4004)
!4083 = !DILocation(line: 163, column: 3, scope: !4004)
!4084 = !DILocation(line: 0, scope: !4004)
!4085 = !DILocation(line: 164, column: 1, scope: !4004)
!4086 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4087, file: !4087, line: 385, type: !4088, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !391, retainedNodes: !4102)
!4087 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!28, !4090, !26, !28, !4091}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1910, line: 6, baseType: !4093)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1912, line: 21, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1912, line: 13, size: 64, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4094, file: !1912, line: 15, baseType: !37, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4094, file: !1912, line: 20, baseType: !4098, size: 32, offset: 32)
!4098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4094, file: !1912, line: 16, size: 32, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4098, file: !1912, line: 18, baseType: !7, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4098, file: !1912, line: 19, baseType: !1921, size: 32)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109}
!4103 = !DILocalVariable(name: "pwc", arg: 1, scope: !4086, file: !4087, line: 385, type: !4090)
!4104 = !DILocalVariable(name: "s", arg: 2, scope: !4086, file: !4087, line: 385, type: !26)
!4105 = !DILocalVariable(name: "n", arg: 3, scope: !4086, file: !4087, line: 385, type: !28)
!4106 = !DILocalVariable(name: "ps", arg: 4, scope: !4086, file: !4087, line: 385, type: !4091)
!4107 = !DILocalVariable(name: "ret", scope: !4086, file: !4087, line: 387, type: !28)
!4108 = !DILocalVariable(name: "wc", scope: !4086, file: !4087, line: 388, type: !1926)
!4109 = !DILocalVariable(name: "uc", scope: !4110, file: !4087, line: 449, type: !82)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !4087, line: 448, column: 5)
!4111 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 447, column: 7)
!4112 = !DILocation(line: 385, column: 23, scope: !4086)
!4113 = !DILocation(line: 385, column: 40, scope: !4086)
!4114 = !DILocation(line: 385, column: 50, scope: !4086)
!4115 = !DILocation(line: 385, column: 64, scope: !4086)
!4116 = !DILocation(line: 388, column: 3, scope: !4086)
!4117 = !DILocation(line: 404, column: 9, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 404, column: 7)
!4119 = !DILocation(line: 404, column: 7, scope: !4086)
!4120 = !DILocation(line: 439, column: 9, scope: !4086)
!4121 = !DILocation(line: 387, column: 10, scope: !4086)
!4122 = !DILocation(line: 447, column: 19, scope: !4111)
!4123 = !DILocation(line: 447, column: 31, scope: !4111)
!4124 = !DILocation(line: 447, column: 26, scope: !4111)
!4125 = !DILocation(line: 447, column: 41, scope: !4111)
!4126 = !DILocation(line: 447, column: 7, scope: !4086)
!4127 = !DILocation(line: 449, column: 26, scope: !4110)
!4128 = !DILocation(line: 449, column: 21, scope: !4110)
!4129 = !DILocation(line: 450, column: 14, scope: !4110)
!4130 = !DILocation(line: 450, column: 12, scope: !4110)
!4131 = !DILocation(line: 0, scope: !4110)
!4132 = !DILocation(line: 456, column: 1, scope: !4086)
!4133 = distinct !DISubprogram(name: "close_stream", scope: !4134, file: !4134, line: 56, type: !4135, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !394, retainedNodes: !4171)
!4134 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!37, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !118, line: 7, baseType: !4139)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !120, line: 49, size: 1728, elements: !4140)
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4139, file: !120, line: 51, baseType: !37, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4139, file: !120, line: 54, baseType: !21, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4139, file: !120, line: 55, baseType: !21, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4139, file: !120, line: 56, baseType: !21, size: 64, offset: 192)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4139, file: !120, line: 57, baseType: !21, size: 64, offset: 256)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4139, file: !120, line: 58, baseType: !21, size: 64, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4139, file: !120, line: 59, baseType: !21, size: 64, offset: 384)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4139, file: !120, line: 60, baseType: !21, size: 64, offset: 448)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4139, file: !120, line: 61, baseType: !21, size: 64, offset: 512)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4139, file: !120, line: 64, baseType: !21, size: 64, offset: 576)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4139, file: !120, line: 65, baseType: !21, size: 64, offset: 640)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4139, file: !120, line: 66, baseType: !21, size: 64, offset: 704)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4139, file: !120, line: 68, baseType: !135, size: 64, offset: 768)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4139, file: !120, line: 70, baseType: !4155, size: 64, offset: 832)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4139, file: !120, line: 72, baseType: !37, size: 32, offset: 896)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4139, file: !120, line: 73, baseType: !37, size: 32, offset: 928)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4139, file: !120, line: 74, baseType: !142, size: 64, offset: 960)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4139, file: !120, line: 77, baseType: !146, size: 16, offset: 1024)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4139, file: !120, line: 78, baseType: !148, size: 8, offset: 1040)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4139, file: !120, line: 79, baseType: !150, size: 8, offset: 1048)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4139, file: !120, line: 81, baseType: !154, size: 64, offset: 1088)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4139, file: !120, line: 89, baseType: !157, size: 64, offset: 1152)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4139, file: !120, line: 91, baseType: !159, size: 64, offset: 1216)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4139, file: !120, line: 92, baseType: !162, size: 64, offset: 1280)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4139, file: !120, line: 93, baseType: !4155, size: 64, offset: 1344)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4139, file: !120, line: 94, baseType: !23, size: 64, offset: 1408)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4139, file: !120, line: 95, baseType: !28, size: 64, offset: 1472)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4139, file: !120, line: 96, baseType: !37, size: 32, offset: 1536)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4139, file: !120, line: 98, baseType: !169, size: 160, offset: 1568)
!4171 = !{!4172, !4173, !4175, !4176}
!4172 = !DILocalVariable(name: "stream", arg: 1, scope: !4133, file: !4134, line: 56, type: !4137)
!4173 = !DILocalVariable(name: "some_pending", scope: !4133, file: !4134, line: 58, type: !4174)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!4175 = !DILocalVariable(name: "prev_fail", scope: !4133, file: !4134, line: 59, type: !4174)
!4176 = !DILocalVariable(name: "fclose_fail", scope: !4133, file: !4134, line: 60, type: !4174)
!4177 = !DILocation(line: 56, column: 21, scope: !4133)
!4178 = !DILocation(line: 58, column: 30, scope: !4133)
!4179 = !DILocalVariable(name: "__stream", arg: 1, scope: !4180, file: !4181, line: 135, type: !4137)
!4180 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4181, file: !4181, line: 135, type: !4135, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !394, retainedNodes: !4182)
!4181 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4182 = !{!4179}
!4183 = !DILocation(line: 135, column: 1, scope: !4180, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 59, column: 27, scope: !4133)
!4185 = !DILocation(line: 137, column: 10, scope: !4180, inlinedAt: !4184)
!4186 = !DILocation(line: 59, column: 43, scope: !4133)
!4187 = !DILocation(line: 60, column: 29, scope: !4133)
!4188 = !DILocation(line: 60, column: 45, scope: !4133)
!4189 = !DILocation(line: 70, column: 17, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4133, file: !4134, line: 70, column: 7)
!4191 = !DILocation(line: 58, column: 50, scope: !4133)
!4192 = !DILocation(line: 70, column: 33, scope: !4190)
!4193 = !DILocation(line: 70, column: 53, scope: !4190)
!4194 = !DILocation(line: 70, column: 59, scope: !4190)
!4195 = !DILocation(line: 70, column: 7, scope: !4133)
!4196 = !DILocation(line: 72, column: 11, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4190, file: !4134, line: 71, column: 5)
!4198 = !DILocation(line: 73, column: 9, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4197, file: !4134, line: 72, column: 11)
!4200 = !DILocation(line: 73, column: 15, scope: !4199)
!4201 = !DILocation(line: 0, scope: !4133)
!4202 = !DILocation(line: 78, column: 1, scope: !4133)
!4203 = distinct !DISubprogram(name: "last_component", scope: !4204, file: !4204, line: 30, type: !2951, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !396, retainedNodes: !4205)
!4204 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4205 = !{!4206, !4207, !4208, !4209}
!4206 = !DILocalVariable(name: "name", arg: 1, scope: !4203, file: !4204, line: 30, type: !26)
!4207 = !DILocalVariable(name: "base", scope: !4203, file: !4204, line: 32, type: !26)
!4208 = !DILocalVariable(name: "p", scope: !4203, file: !4204, line: 33, type: !26)
!4209 = !DILocalVariable(name: "saw_slash", scope: !4203, file: !4204, line: 34, type: !45)
!4210 = !DILocation(line: 30, column: 29, scope: !4203)
!4211 = !DILocation(line: 32, column: 15, scope: !4203)
!4212 = !DILocation(line: 34, column: 8, scope: !4203)
!4213 = !DILocation(line: 36, column: 3, scope: !4203)
!4214 = !DILocation(line: 0, scope: !4203)
!4215 = !DILocation(line: 36, column: 10, scope: !4203)
!4216 = !DILocation(line: 37, column: 9, scope: !4203)
!4217 = distinct !{!4217, !4213, !4216}
!4218 = !DILocation(line: 39, column: 18, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !4204, line: 39, column: 3)
!4220 = distinct !DILexicalBlock(scope: !4203, file: !4204, line: 39, column: 3)
!4221 = !DILocation(line: 0, scope: !4219)
!4222 = !DILocation(line: 0, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !4204, line: 41, column: 11)
!4224 = distinct !DILexicalBlock(scope: !4219, file: !4204, line: 40, column: 5)
!4225 = !DILocation(line: 33, column: 15, scope: !4203)
!4226 = !DILocation(line: 39, column: 3, scope: !4220)
!4227 = !DILocation(line: 43, column: 16, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4223, file: !4204, line: 43, column: 16)
!4229 = !DILocation(line: 43, column: 16, scope: !4223)
!4230 = !DILocation(line: 39, column: 23, scope: !4219)
!4231 = !DILocation(line: 39, column: 3, scope: !4219)
!4232 = distinct !{!4232, !4226, !4233}
!4233 = !DILocation(line: 48, column: 5, scope: !4220)
!4234 = !DILocation(line: 50, column: 3, scope: !4203)
!4235 = distinct !DISubprogram(name: "base_len", scope: !4204, file: !4204, line: 58, type: !4236, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !396, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!28, !26}
!4238 = !{!4239, !4240, !4241}
!4239 = !DILocalVariable(name: "name", arg: 1, scope: !4235, file: !4204, line: 58, type: !26)
!4240 = !DILocalVariable(name: "len", scope: !4235, file: !4204, line: 60, type: !28)
!4241 = !DILocalVariable(name: "prefix_len", scope: !4235, file: !4204, line: 61, type: !28)
!4242 = !DILocation(line: 58, column: 23, scope: !4235)
!4243 = !DILocation(line: 61, column: 10, scope: !4235)
!4244 = !DILocation(line: 63, column: 14, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4235, file: !4204, line: 63, column: 3)
!4246 = !DILocation(line: 60, column: 10, scope: !4235)
!4247 = !DILocation(line: 63, column: 8, scope: !4245)
!4248 = !DILocation(line: 0, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4245, file: !4204, line: 63, column: 3)
!4250 = !DILocation(line: 63, column: 32, scope: !4249)
!4251 = !DILocation(line: 63, column: 38, scope: !4249)
!4252 = !DILocation(line: 63, column: 41, scope: !4249)
!4253 = !DILocation(line: 63, column: 3, scope: !4245)
!4254 = distinct !{!4254, !4253, !4255}
!4255 = !DILocation(line: 64, column: 5, scope: !4245)
!4256 = !DILocation(line: 74, column: 3, scope: !4235)
!4257 = distinct !DISubprogram(name: "fd_safer_flag", scope: !4258, file: !4258, line: 40, type: !4259, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !399, retainedNodes: !4261)
!4258 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!37, !37, !37}
!4261 = !{!4262, !4263, !4264, !4267}
!4262 = !DILocalVariable(name: "fd", arg: 1, scope: !4257, file: !4258, line: 40, type: !37)
!4263 = !DILocalVariable(name: "flag", arg: 2, scope: !4257, file: !4258, line: 40, type: !37)
!4264 = !DILocalVariable(name: "f", scope: !4265, file: !4258, line: 44, type: !37)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !4258, line: 43, column: 5)
!4266 = distinct !DILexicalBlock(scope: !4257, file: !4258, line: 42, column: 7)
!4267 = !DILocalVariable(name: "e", scope: !4265, file: !4258, line: 45, type: !37)
!4268 = !DILocation(line: 40, column: 20, scope: !4257)
!4269 = !DILocation(line: 40, column: 28, scope: !4257)
!4270 = !DILocation(line: 42, column: 26, scope: !4266)
!4271 = !DILocation(line: 44, column: 15, scope: !4265)
!4272 = !DILocation(line: 44, column: 11, scope: !4265)
!4273 = !DILocation(line: 45, column: 15, scope: !4265)
!4274 = !DILocation(line: 45, column: 11, scope: !4265)
!4275 = !DILocation(line: 46, column: 7, scope: !4265)
!4276 = !DILocation(line: 47, column: 13, scope: !4265)
!4277 = !DILocation(line: 49, column: 5, scope: !4265)
!4278 = !DILocation(line: 51, column: 3, scope: !4257)
!4279 = distinct !DISubprogram(name: "dup_safer_flag", scope: !4280, file: !4280, line: 34, type: !4259, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !401, retainedNodes: !4281)
!4280 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4281 = !{!4282, !4283}
!4282 = !DILocalVariable(name: "fd", arg: 1, scope: !4279, file: !4280, line: 34, type: !37)
!4283 = !DILocalVariable(name: "flag", arg: 2, scope: !4279, file: !4280, line: 34, type: !37)
!4284 = !DILocation(line: 34, column: 21, scope: !4279)
!4285 = !DILocation(line: 34, column: 29, scope: !4279)
!4286 = !DILocation(line: 36, column: 27, scope: !4279)
!4287 = !DILocation(line: 36, column: 21, scope: !4279)
!4288 = !DILocation(line: 36, column: 10, scope: !4279)
!4289 = !DILocation(line: 36, column: 3, scope: !4279)
!4290 = distinct !DISubprogram(name: "hard_locale", scope: !4291, file: !4291, line: 38, type: !4292, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !403, retainedNodes: !4294)
!4291 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!45, !37}
!4294 = !{!4295, !4296, !4297}
!4295 = !DILocalVariable(name: "category", arg: 1, scope: !4290, file: !4291, line: 38, type: !37)
!4296 = !DILocalVariable(name: "hard", scope: !4290, file: !4291, line: 40, type: !45)
!4297 = !DILocalVariable(name: "p", scope: !4290, file: !4291, line: 41, type: !26)
!4298 = !DILocation(line: 38, column: 18, scope: !4290)
!4299 = !DILocation(line: 40, column: 8, scope: !4290)
!4300 = !DILocation(line: 41, column: 19, scope: !4290)
!4301 = !DILocation(line: 41, column: 15, scope: !4290)
!4302 = !DILocation(line: 43, column: 7, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4290, file: !4291, line: 43, column: 7)
!4304 = !DILocation(line: 43, column: 7, scope: !4290)
!4305 = !DILocation(line: 47, column: 15, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !4291, line: 47, column: 15)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !4291, line: 46, column: 9)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !4291, line: 45, column: 11)
!4309 = distinct !DILexicalBlock(scope: !4303, file: !4291, line: 44, column: 5)
!4310 = !DILocation(line: 47, column: 31, scope: !4306)
!4311 = !DILocation(line: 47, column: 36, scope: !4306)
!4312 = !DILocation(line: 47, column: 39, scope: !4306)
!4313 = !DILocation(line: 47, column: 59, scope: !4306)
!4314 = !DILocation(line: 47, column: 15, scope: !4307)
!4315 = !DILocation(line: 48, column: 13, scope: !4306)
!4316 = !DILocation(line: 71, column: 3, scope: !4290)
!4317 = distinct !DISubprogram(name: "locale_charset", scope: !4318, file: !4318, line: 687, type: !4319, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !405, retainedNodes: !4321)
!4318 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!26}
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "codeset", scope: !4317, file: !4318, line: 689, type: !26)
!4323 = !DILocation(line: 696, column: 13, scope: !4317)
!4324 = !DILocation(line: 689, column: 15, scope: !4317)
!4325 = !DILocation(line: 754, column: 15, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4317, file: !4318, line: 754, column: 7)
!4327 = !DILocation(line: 754, column: 7, scope: !4317)
!4328 = !DILocation(line: 907, column: 13, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !4318, line: 907, column: 13)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !4318, line: 897, column: 7)
!4331 = distinct !DILexicalBlock(scope: !4317, file: !4318, line: 856, column: 3)
!4332 = !DILocation(line: 907, column: 24, scope: !4329)
!4333 = !DILocation(line: 907, column: 13, scope: !4330)
!4334 = !DILocation(line: 995, column: 3, scope: !4317)
!4335 = distinct !DISubprogram(name: "dup_safer", scope: !4336, file: !4336, line: 31, type: !3519, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !794, retainedNodes: !4337)
!4336 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4337 = !{!4338}
!4338 = !DILocalVariable(name: "fd", arg: 1, scope: !4335, file: !4336, line: 31, type: !37)
!4339 = !DILocation(line: 31, column: 16, scope: !4335)
!4340 = !DILocation(line: 33, column: 10, scope: !4335)
!4341 = !DILocation(line: 33, column: 3, scope: !4335)
!4342 = distinct !DISubprogram(name: "rpl_fclose", scope: !4343, file: !4343, line: 58, type: !4344, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !796, retainedNodes: !4380)
!4343 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!37, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !118, line: 7, baseType: !4348)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !120, line: 49, size: 1728, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4348, file: !120, line: 51, baseType: !37, size: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4348, file: !120, line: 54, baseType: !21, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4348, file: !120, line: 55, baseType: !21, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4348, file: !120, line: 56, baseType: !21, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4348, file: !120, line: 57, baseType: !21, size: 64, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4348, file: !120, line: 58, baseType: !21, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4348, file: !120, line: 59, baseType: !21, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4348, file: !120, line: 60, baseType: !21, size: 64, offset: 448)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4348, file: !120, line: 61, baseType: !21, size: 64, offset: 512)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4348, file: !120, line: 64, baseType: !21, size: 64, offset: 576)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4348, file: !120, line: 65, baseType: !21, size: 64, offset: 640)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4348, file: !120, line: 66, baseType: !21, size: 64, offset: 704)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4348, file: !120, line: 68, baseType: !135, size: 64, offset: 768)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4348, file: !120, line: 70, baseType: !4364, size: 64, offset: 832)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4348, file: !120, line: 72, baseType: !37, size: 32, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4348, file: !120, line: 73, baseType: !37, size: 32, offset: 928)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4348, file: !120, line: 74, baseType: !142, size: 64, offset: 960)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4348, file: !120, line: 77, baseType: !146, size: 16, offset: 1024)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4348, file: !120, line: 78, baseType: !148, size: 8, offset: 1040)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4348, file: !120, line: 79, baseType: !150, size: 8, offset: 1048)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4348, file: !120, line: 81, baseType: !154, size: 64, offset: 1088)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4348, file: !120, line: 89, baseType: !157, size: 64, offset: 1152)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4348, file: !120, line: 91, baseType: !159, size: 64, offset: 1216)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4348, file: !120, line: 92, baseType: !162, size: 64, offset: 1280)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4348, file: !120, line: 93, baseType: !4364, size: 64, offset: 1344)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4348, file: !120, line: 94, baseType: !23, size: 64, offset: 1408)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4348, file: !120, line: 95, baseType: !28, size: 64, offset: 1472)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4348, file: !120, line: 96, baseType: !37, size: 32, offset: 1536)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4348, file: !120, line: 98, baseType: !169, size: 160, offset: 1568)
!4380 = !{!4381, !4382, !4383, !4384}
!4381 = !DILocalVariable(name: "fp", arg: 1, scope: !4342, file: !4343, line: 58, type: !4346)
!4382 = !DILocalVariable(name: "saved_errno", scope: !4342, file: !4343, line: 60, type: !37)
!4383 = !DILocalVariable(name: "fd", scope: !4342, file: !4343, line: 61, type: !37)
!4384 = !DILocalVariable(name: "result", scope: !4342, file: !4343, line: 62, type: !37)
!4385 = !DILocation(line: 58, column: 19, scope: !4342)
!4386 = !DILocation(line: 60, column: 7, scope: !4342)
!4387 = !DILocation(line: 62, column: 7, scope: !4342)
!4388 = !DILocation(line: 65, column: 8, scope: !4342)
!4389 = !DILocation(line: 61, column: 7, scope: !4342)
!4390 = !DILocation(line: 66, column: 10, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4342, file: !4343, line: 66, column: 7)
!4392 = !DILocation(line: 66, column: 7, scope: !4342)
!4393 = !DILocation(line: 67, column: 12, scope: !4391)
!4394 = !DILocation(line: 67, column: 5, scope: !4391)
!4395 = !DILocation(line: 72, column: 9, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4342, file: !4343, line: 72, column: 7)
!4397 = !DILocation(line: 72, column: 23, scope: !4396)
!4398 = !DILocation(line: 72, column: 33, scope: !4396)
!4399 = !DILocation(line: 72, column: 26, scope: !4396)
!4400 = !DILocation(line: 72, column: 59, scope: !4396)
!4401 = !DILocation(line: 73, column: 7, scope: !4396)
!4402 = !DILocation(line: 73, column: 10, scope: !4396)
!4403 = !DILocation(line: 72, column: 7, scope: !4342)
!4404 = !DILocation(line: 100, column: 12, scope: !4342)
!4405 = !DILocation(line: 105, column: 7, scope: !4342)
!4406 = !DILocation(line: 74, column: 19, scope: !4396)
!4407 = !DILocation(line: 105, column: 19, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4342, file: !4343, line: 105, column: 7)
!4409 = !DILocation(line: 107, column: 13, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !4343, line: 106, column: 5)
!4411 = !DILocation(line: 109, column: 5, scope: !4410)
!4412 = !DILocation(line: 0, scope: !4342)
!4413 = !DILocation(line: 112, column: 1, scope: !4342)
!4414 = !DILocation(line: 276, column: 16, scope: !314)
!4415 = !DILocation(line: 276, column: 24, scope: !314)
!4416 = !DILocation(line: 278, column: 3, scope: !314)
!4417 = !DILocation(line: 278, column: 11, scope: !314)
!4418 = !DILocation(line: 279, column: 7, scope: !314)
!4419 = !DILocation(line: 280, column: 3, scope: !314)
!4420 = !DILocation(line: 281, column: 3, scope: !314)
!4421 = !DILocation(line: 0, scope: !346)
!4422 = !DILocation(line: 326, column: 22, scope: !337)
!4423 = !DILocation(line: 326, column: 13, scope: !337)
!4424 = !DILocation(line: 340, column: 18, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !337, file: !315, line: 340, column: 13)
!4426 = !DILocation(line: 340, column: 15, scope: !4425)
!4427 = !DILocation(line: 340, column: 13, scope: !337)
!4428 = !DILocation(line: 342, column: 22, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4425, file: !315, line: 341, column: 11)
!4430 = !DILocation(line: 343, column: 19, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4429, file: !315, line: 343, column: 17)
!4432 = !DILocation(line: 343, column: 29, scope: !4431)
!4433 = !DILocation(line: 343, column: 32, scope: !4431)
!4434 = !DILocation(line: 343, column: 38, scope: !4431)
!4435 = !DILocation(line: 343, column: 17, scope: !4429)
!4436 = !DILocation(line: 345, column: 36, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4431, file: !315, line: 344, column: 15)
!4438 = !DILocation(line: 361, column: 25, scope: !341)
!4439 = !DILocation(line: 353, column: 26, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4431, file: !315, line: 352, column: 15)
!4441 = !DILocation(line: 354, column: 28, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4440, file: !315, line: 354, column: 21)
!4443 = !DILocation(line: 354, column: 21, scope: !4440)
!4444 = !DILocation(line: 356, column: 36, scope: !4440)
!4445 = !DILocation(line: 360, column: 20, scope: !4425)
!4446 = !DILocation(line: 361, column: 28, scope: !341)
!4447 = !DILocation(line: 0, scope: !4425)
!4448 = !DILocation(line: 361, column: 15, scope: !341)
!4449 = !DILocation(line: 363, column: 25, scope: !340)
!4450 = !DILocation(line: 363, column: 17, scope: !340)
!4451 = !DILocation(line: 364, column: 23, scope: !344)
!4452 = !DILocation(line: 364, column: 27, scope: !344)
!4453 = !DILocation(line: 364, column: 60, scope: !344)
!4454 = !DILocation(line: 364, column: 30, scope: !344)
!4455 = !DILocation(line: 364, column: 74, scope: !344)
!4456 = !DILocation(line: 364, column: 17, scope: !340)
!4457 = !DILocation(line: 366, column: 35, scope: !343)
!4458 = !DILocation(line: 366, column: 21, scope: !343)
!4459 = !DILocation(line: 367, column: 17, scope: !343)
!4460 = !DILocation(line: 368, column: 23, scope: !343)
!4461 = !DILocation(line: 370, column: 15, scope: !343)
!4462 = !DILocation(line: 408, column: 19, scope: !346)
!4463 = !DILocation(line: 408, column: 15, scope: !346)
!4464 = !DILocation(line: 409, column: 18, scope: !346)
!4465 = !DILocation(line: 416, column: 3, scope: !314)
!4466 = !DILocation(line: 418, column: 1, scope: !314)
!4467 = !DILocation(line: 417, column: 3, scope: !314)
!4468 = distinct !DISubprogram(name: "rpl_fflush", scope: !4469, file: !4469, line: 129, type: !4470, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !798, retainedNodes: !4506)
!4469 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!37, !4472}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !118, line: 7, baseType: !4474)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !120, line: 49, size: 1728, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4474, file: !120, line: 51, baseType: !37, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4474, file: !120, line: 54, baseType: !21, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4474, file: !120, line: 55, baseType: !21, size: 64, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4474, file: !120, line: 56, baseType: !21, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4474, file: !120, line: 57, baseType: !21, size: 64, offset: 256)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4474, file: !120, line: 58, baseType: !21, size: 64, offset: 320)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4474, file: !120, line: 59, baseType: !21, size: 64, offset: 384)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4474, file: !120, line: 60, baseType: !21, size: 64, offset: 448)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4474, file: !120, line: 61, baseType: !21, size: 64, offset: 512)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4474, file: !120, line: 64, baseType: !21, size: 64, offset: 576)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4474, file: !120, line: 65, baseType: !21, size: 64, offset: 640)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4474, file: !120, line: 66, baseType: !21, size: 64, offset: 704)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4474, file: !120, line: 68, baseType: !135, size: 64, offset: 768)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4474, file: !120, line: 70, baseType: !4490, size: 64, offset: 832)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4474, file: !120, line: 72, baseType: !37, size: 32, offset: 896)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4474, file: !120, line: 73, baseType: !37, size: 32, offset: 928)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4474, file: !120, line: 74, baseType: !142, size: 64, offset: 960)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4474, file: !120, line: 77, baseType: !146, size: 16, offset: 1024)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4474, file: !120, line: 78, baseType: !148, size: 8, offset: 1040)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4474, file: !120, line: 79, baseType: !150, size: 8, offset: 1048)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4474, file: !120, line: 81, baseType: !154, size: 64, offset: 1088)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4474, file: !120, line: 89, baseType: !157, size: 64, offset: 1152)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4474, file: !120, line: 91, baseType: !159, size: 64, offset: 1216)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4474, file: !120, line: 92, baseType: !162, size: 64, offset: 1280)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4474, file: !120, line: 93, baseType: !4490, size: 64, offset: 1344)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4474, file: !120, line: 94, baseType: !23, size: 64, offset: 1408)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4474, file: !120, line: 95, baseType: !28, size: 64, offset: 1472)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4474, file: !120, line: 96, baseType: !37, size: 32, offset: 1536)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4474, file: !120, line: 98, baseType: !169, size: 160, offset: 1568)
!4506 = !{!4507}
!4507 = !DILocalVariable(name: "stream", arg: 1, scope: !4468, file: !4469, line: 129, type: !4472)
!4508 = !DILocation(line: 129, column: 19, scope: !4468)
!4509 = !DILocation(line: 150, column: 14, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4468, file: !4469, line: 150, column: 7)
!4511 = !DILocation(line: 150, column: 22, scope: !4510)
!4512 = !DILocation(line: 150, column: 27, scope: !4510)
!4513 = !DILocation(line: 150, column: 7, scope: !4468)
!4514 = !DILocation(line: 151, column: 12, scope: !4510)
!4515 = !DILocation(line: 151, column: 5, scope: !4510)
!4516 = !DILocalVariable(name: "fp", arg: 1, scope: !4517, file: !4469, line: 41, type: !4472)
!4517 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4469, file: !4469, line: 41, type: !4518, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !798, retainedNodes: !4520)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !4472}
!4520 = !{!4516}
!4521 = !DILocation(line: 41, column: 48, scope: !4517, inlinedAt: !4522)
!4522 = distinct !DILocation(line: 156, column: 3, scope: !4468)
!4523 = !DILocation(line: 43, column: 11, scope: !4524, inlinedAt: !4522)
!4524 = distinct !DILexicalBlock(scope: !4517, file: !4469, line: 43, column: 7)
!4525 = !DILocation(line: 43, column: 18, scope: !4524, inlinedAt: !4522)
!4526 = !DILocation(line: 43, column: 7, scope: !4517, inlinedAt: !4522)
!4527 = !DILocation(line: 45, column: 5, scope: !4524, inlinedAt: !4522)
!4528 = !DILocation(line: 158, column: 10, scope: !4468)
!4529 = !DILocation(line: 158, column: 3, scope: !4468)
!4530 = !DILocation(line: 0, scope: !4468)
!4531 = !DILocation(line: 232, column: 1, scope: !4468)
