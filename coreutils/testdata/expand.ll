; ModuleID = 'coreutils-8.30/src/expand.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"  -i, --initial    do not convert tabs after non blanks\0A  -t, --tabs=N     have tabs N characters apart, not 8\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !0
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !30
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !49
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !100
@max_column_width = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !164
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !166
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !168
@n_tabs_allocated = internal unnamed_addr global i64 0, align 8, !dbg !170
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !172
@.str.13.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !174
@.str.14.8 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.1.9 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.10 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.3.11 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4.12 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.5.13 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.15.16 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.16.17 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.17.18 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !176
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !189
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i32 0, i32 0), i8* null], align 16, !dbg !181
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !186
@.str.9.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !102
@.str.6.26 = private unnamed_addr constant [10 x i8] c"prev_file\00", align 1
@.str.7.27 = private unnamed_addr constant [20 x i8] c"src/expand-common.c\00", align 1
@__PRETTY_FUNCTION__.next_file = private unnamed_addr constant [24 x i8] c"FILE *next_file(FILE *)\00", align 1
@.str.8.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.34 = private unnamed_addr constant [62 x i8] c"  -t, --tabs=LIST  use comma separated list of tab positions\0A\00", align 1
@.str.12.35 = private unnamed_addr constant [365 x i8] c"                     The last specified position can be prefixed with '/'\0A                     to specify a tab size to use after the last\0A                     explicitly specified tab stop.  Also a prefix of '+'\0A                     can be used to align remaining tab stops relative to\0A                     the last specified tab stop instead of the first column\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !190
@.str.38 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !196
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !201
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !204
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !211
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !218
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !230
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !237
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !249
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !256
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !263
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !251
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !265
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.99 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !271
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !716 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !721, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %0, metadata !720, metadata !DIExpression()), !dbg !744
  %3 = icmp eq i32 %0, 0, !dbg !745
  br i1 %3, label %9, label %4, !dbg !746

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !747, !tbaa !749
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !747
  %7 = load i8*, i8** @program_name, align 8, !dbg !747, !tbaa !749
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !747
  br label %66, !dbg !747

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !753
  %11 = load i8*, i8** @program_name, align 8, !dbg !753, !tbaa !749
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !753
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !754
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !749
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !754
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !755
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !749
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !755
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !760
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !760, !tbaa !749
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #10, !dbg !760
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !763
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !749
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !763
  tail call void @emit_tab_list_info() #10, !dbg !764
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !765
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !749
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !765
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !766
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766, !tbaa !749
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !766
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !767
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #10, !dbg !767
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !740
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !768
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !729, metadata !DIExpression()) #10, !dbg !769
  br label %33, !dbg !770

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !729, metadata !DIExpression()) #10, !dbg !769
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #14, !dbg !770
  %37 = icmp eq i32 %36, 0, !dbg !770
  br i1 %37, label %43, label %38, !dbg !771

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !772
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !729, metadata !DIExpression()) #10, !dbg !769
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !773
  %41 = load i8*, i8** %40, align 8, !dbg !773, !tbaa !774
  %42 = icmp eq i8* %41, null, !dbg !776
  br i1 %42, label %43, label %33, !dbg !777, !llvm.loop !778

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !729, metadata !DIExpression()) #10, !dbg !769
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !729, metadata !DIExpression()) #10, !dbg !769
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !781
  %46 = load i8*, i8** %45, align 8, !dbg !781, !tbaa !783
  %47 = icmp eq i8* %46, null, !dbg !784
  %48 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !785
  call void @llvm.dbg.value(metadata i8* %48, metadata !728, metadata !DIExpression()) #10, !dbg !786
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !787
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !787
  %51 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !788
  call void @llvm.dbg.value(metadata i8* %51, metadata !736, metadata !DIExpression()) #10, !dbg !789
  %52 = icmp eq i8* %51, null, !dbg !790
  br i1 %52, label %59, label %53, !dbg !792

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !793
  %55 = icmp eq i32 %54, 0, !dbg !793
  br i1 %55, label %59, label %56, !dbg !794

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !795
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !795
  br label %59, !dbg !797

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !798
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !798
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !799
  %63 = icmp eq i8* %48, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !799
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !799
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #10, !dbg !799
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #10, !dbg !800
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #15, !dbg !801
  unreachable, !dbg !801
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !802 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !806, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i8** %1, metadata !807, metadata !DIExpression()), !dbg !816
  %6 = load i8*, i8** %1, align 8, !dbg !817, !tbaa !749
  tail call void @set_program_name(i8* %6) #10, !dbg !818
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !819
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !820
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !821
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !822
  store i8 1, i8* @convert_entire_line, align 1, !dbg !823, !tbaa !824
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  br label %13, !dbg !826

; <label>:13:                                     ; preds = %23, %2
  %14 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !827
  call void @llvm.dbg.value(metadata i32 %14, metadata !808, metadata !DIExpression()), !dbg !828
  switch i32 %14, label %30 [
    i32 -1, label %31
    i32 105, label %15
    i32 116, label %16
    i32 48, label %18
    i32 49, label %18
    i32 50, label %18
    i32 51, label %18
    i32 52, label %18
    i32 53, label %18
    i32 54, label %18
    i32 55, label %18
    i32 56, label %18
    i32 57, label %18
    i32 -130, label %26
    i32 -131, label %27
  ], !dbg !826

; <label>:15:                                     ; preds = %13
  store i8 0, i8* @convert_entire_line, align 1, !dbg !829, !tbaa !824
  br label %23, !dbg !830

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** @optarg, align 8, !dbg !831, !tbaa !749
  call void @parse_tab_stops(i8* %17) #10, !dbg !832
  br label %23, !dbg !833

; <label>:18:                                     ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load i8*, i8** @optarg, align 8, !dbg !834, !tbaa !749
  %20 = icmp eq i8* %19, null, !dbg !834
  br i1 %20, label %24, label %21, !dbg !835

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !836
  call void @parse_tab_stops(i8* nonnull %22) #10, !dbg !837
  br label %23, !dbg !837

; <label>:23:                                     ; preds = %21, %24, %16, %15
  br label %13, !dbg !827, !llvm.loop !838

; <label>:24:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #10, !dbg !840
  call void @llvm.dbg.declare(metadata [2 x i8]* %5, metadata !809, metadata !DIExpression()), !dbg !841
  %25 = trunc i32 %14 to i8, !dbg !842
  store i8 %25, i8* %11, align 1, !dbg !843, !tbaa !844
  store i8 0, i8* %12, align 1, !dbg !845, !tbaa !844
  call void @parse_tab_stops(i8* nonnull %11) #10, !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #10, !dbg !847
  br label %23

; <label>:26:                                     ; preds = %13
  call void @usage(i32 0) #16, !dbg !848
  unreachable, !dbg !848

; <label>:27:                                     ; preds = %13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !849, !tbaa !749
  %29 = load i8*, i8** @Version, align 8, !dbg !849, !tbaa !749
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !849
  call void @exit(i32 0) #15, !dbg !849
  unreachable, !dbg !849

; <label>:30:                                     ; preds = %13
  call void @usage(i32 1) #16, !dbg !850
  unreachable, !dbg !850

; <label>:31:                                     ; preds = %13
  call void @finalize_tab_stops() #10, !dbg !851
  %32 = load i32, i32* @optind, align 4, !dbg !852, !tbaa !853
  %33 = icmp slt i32 %32, %0, !dbg !855
  %34 = sext i32 %32 to i64, !dbg !856
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !856
  %36 = select i1 %33, i8** %35, i8** null, !dbg !857
  call void @set_file_list(i8** %36) #10, !dbg !858
  %37 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #10, !dbg !859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, metadata !862, metadata !DIExpression()) #10, !dbg !910
  %38 = icmp eq %struct._IO_FILE* %37, null, !dbg !911
  br i1 %38, label %159, label %39, !dbg !913

; <label>:39:                                     ; preds = %31
  %40 = bitcast i64* %3 to i8*
  br label %41, !dbg !914

; <label>:41:                                     ; preds = %157, %39
  %42 = phi %struct._IO_FILE* [ %67, %157 ], [ %37, %39 ], !dbg !915
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata i8 1, metadata !899, metadata !DIExpression()) #10, !dbg !916
  call void @llvm.dbg.value(metadata i64 0, metadata !900, metadata !DIExpression()) #10, !dbg !917
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #10, !dbg !914
  call void @llvm.dbg.value(metadata i64 0, metadata !901, metadata !DIExpression()) #10, !dbg !918
  store i64 0, i64* %3, align 8, !dbg !918, !tbaa !919
  br label %43, !dbg !921

; <label>:43:                                     ; preds = %155, %41
  %44 = phi %struct._IO_FILE* [ %42, %41 ], [ %67, %155 ], !dbg !915
  %45 = phi i8 [ 1, %41 ], [ %134, %155 ], !dbg !922
  %46 = phi i64 [ 0, %41 ], [ %135, %155 ], !dbg !923
  call void @llvm.dbg.value(metadata i64 %46, metadata !900, metadata !DIExpression()) #10, !dbg !917
  call void @llvm.dbg.value(metadata i8 %45, metadata !899, metadata !DIExpression()) #10, !dbg !916
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !862, metadata !DIExpression()) #10, !dbg !910
  br label %47, !dbg !924

; <label>:47:                                     ; preds = %62, %43
  %48 = phi %struct._IO_FILE* [ %44, %43 ], [ %63, %62 ], !dbg !915
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !925, metadata !DIExpression()) #10, !dbg !931
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 1, !dbg !933
  %50 = load i8*, i8** %49, align 8, !dbg !933, !tbaa !934
  %51 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 2, !dbg !933
  %52 = load i8*, i8** %51, align 8, !dbg !933, !tbaa !937
  %53 = icmp ult i8* %50, %52, !dbg !933
  br i1 %53, label %54, label %59, !dbg !933, !prof !938

; <label>:54:                                     ; preds = %47
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  %55 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 1, !dbg !933
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !862, metadata !DIExpression()) #10, !dbg !910
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !933
  store i8* %56, i8** %55, align 8, !dbg !933, !tbaa !934
  %57 = load i8, i8* %50, align 1, !dbg !933, !tbaa !844
  %58 = zext i8 %57 to i32, !dbg !933
  call void @llvm.dbg.value(metadata i32 %60, metadata !897, metadata !DIExpression()) #10, !dbg !939
  br label %65, !dbg !940

; <label>:59:                                     ; preds = %47
  %60 = call i32 @__uflow(%struct._IO_FILE* nonnull %48) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 %60, metadata !897, metadata !DIExpression()) #10, !dbg !939
  %61 = icmp slt i32 %60, 0, !dbg !941
  br i1 %61, label %62, label %65, !dbg !940

; <label>:62:                                     ; preds = %59
  %63 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %48) #10, !dbg !942
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !862, metadata !DIExpression()) #10, !dbg !910
  %64 = icmp eq %struct._IO_FILE* %63, null, !dbg !940
  br i1 %64, label %65, label %47, !dbg !924, !llvm.loop !943

; <label>:65:                                     ; preds = %62, %59, %54
  %66 = phi i32 [ %58, %54 ], [ %60, %59 ], [ %60, %62 ]
  %67 = phi %struct._IO_FILE* [ %48, %54 ], [ null, %62 ], [ %48, %59 ], !dbg !946
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  %68 = and i8 %45, 1, !dbg !947
  %69 = icmp eq i8 %68, 0, !dbg !947
  br i1 %69, label %132, label %70, !dbg !948

; <label>:70:                                     ; preds = %65
  switch i32 %66, label %111 [
    i32 9, label %71
    i32 8, label %103
  ], !dbg !949

; <label>:71:                                     ; preds = %70
  call void @llvm.dbg.value(metadata i8* %4, metadata !908, metadata !DIExpression(DW_OP_deref)) #10, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #10, !dbg !951
  call void @llvm.dbg.value(metadata i64* %3, metadata !901, metadata !DIExpression(DW_OP_deref)) #10, !dbg !918
  call void @llvm.dbg.value(metadata i8* %4, metadata !908, metadata !DIExpression(DW_OP_deref)) #10, !dbg !950
  %72 = call i64 @get_next_tab_column(i64 %46, i64* nonnull %3, i8* nonnull %4) #10, !dbg !952
  call void @llvm.dbg.value(metadata i64 %72, metadata !902, metadata !DIExpression()) #10, !dbg !953
  %73 = load i8, i8* %4, align 1, !dbg !954, !tbaa !824, !range !956
  call void @llvm.dbg.value(metadata i8 %73, metadata !908, metadata !DIExpression()) #10, !dbg !950
  %74 = icmp eq i8 %73, 0, !dbg !954
  %75 = add i64 %46, 1, !dbg !957
  %76 = select i1 %74, i64 %72, i64 %75, !dbg !958
  call void @llvm.dbg.value(metadata i64 %76, metadata !902, metadata !DIExpression()) #10, !dbg !953
  %77 = icmp ult i64 %76, %46, !dbg !959
  br i1 %77, label %78, label %80, !dbg !961

; <label>:78:                                     ; preds = %71
  %79 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !962
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %79) #10, !dbg !962
  unreachable, !dbg !962

; <label>:80:                                     ; preds = %71, %95
  %81 = phi i64 [ %82, %95 ], [ %46, %71 ], !dbg !923
  call void @llvm.dbg.value(metadata i64 %81, metadata !900, metadata !DIExpression()) #10, !dbg !917
  %82 = add i64 %81, 1, !dbg !963
  call void @llvm.dbg.value(metadata i64 %82, metadata !900, metadata !DIExpression()) #10, !dbg !917
  %83 = icmp ult i64 %82, %76, !dbg !964
  br i1 %83, label %84, label %102, !dbg !965

; <label>:84:                                     ; preds = %80
  call void @llvm.dbg.value(metadata i32 32, metadata !966, metadata !DIExpression()) #10, !dbg !971
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !974, !tbaa !749
  %86 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 5, !dbg !974
  %87 = load i8*, i8** %86, align 8, !dbg !974, !tbaa !975
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 6, !dbg !974
  %89 = load i8*, i8** %88, align 8, !dbg !974, !tbaa !976
  %90 = icmp ult i8* %87, %89, !dbg !974
  br i1 %90, label %93, label %91, !dbg !974, !prof !938

; <label>:91:                                     ; preds = %84
  %92 = call i32 @__overflow(%struct._IO_FILE* %85, i32 32) #10, !dbg !974
  br label %95, !dbg !974

; <label>:93:                                     ; preds = %84
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !974
  store i8* %94, i8** %86, align 8, !dbg !974, !tbaa !975
  store i8 32, i8* %87, align 1, !dbg !974, !tbaa !844
  br label %95, !dbg !974

; <label>:95:                                     ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ 32, %93 ], !dbg !974
  %97 = icmp slt i32 %96, 0, !dbg !977
  br i1 %97, label %98, label %80, !dbg !978, !llvm.loop !979

; <label>:98:                                     ; preds = %95
  %99 = tail call i32* @__errno_location() #17, !dbg !982
  %100 = load i32, i32* %99, align 4, !dbg !982, !tbaa !853
  %101 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %100, i8* %101) #10, !dbg !982
  unreachable, !dbg !982

; <label>:102:                                    ; preds = %80
  call void @llvm.dbg.value(metadata i32 32, metadata !897, metadata !DIExpression()) #10, !dbg !939
  call void @llvm.dbg.value(metadata i8* %4, metadata !908, metadata !DIExpression(DW_OP_deref)) #10, !dbg !950
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #10, !dbg !983
  br label %116, !dbg !984

; <label>:103:                                    ; preds = %70
  %104 = icmp ne i64 %46, 0, !dbg !985
  %105 = zext i1 %104 to i64, !dbg !988
  %106 = sub i64 %46, %105, !dbg !989
  call void @llvm.dbg.value(metadata i64 %106, metadata !900, metadata !DIExpression()) #10, !dbg !917
  %107 = load i64, i64* %3, align 8, !dbg !990, !tbaa !919
  call void @llvm.dbg.value(metadata i64 %107, metadata !901, metadata !DIExpression()) #10, !dbg !918
  %108 = icmp ne i64 %107, 0, !dbg !991
  %109 = zext i1 %108 to i64, !dbg !992
  %110 = sub i64 %107, %109, !dbg !993
  call void @llvm.dbg.value(metadata i64 %110, metadata !901, metadata !DIExpression()) #10, !dbg !918
  store i64 %110, i64* %3, align 8, !dbg !993, !tbaa !919
  br label %116, !dbg !994

; <label>:111:                                    ; preds = %70
  %112 = add i64 %46, 1, !dbg !995
  call void @llvm.dbg.value(metadata i64 %112, metadata !900, metadata !DIExpression()) #10, !dbg !917
  %113 = icmp eq i64 %112, 0, !dbg !997
  br i1 %113, label %114, label %116, !dbg !999

; <label>:114:                                    ; preds = %111
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1000
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %115) #10, !dbg !1000
  unreachable, !dbg !1000

; <label>:116:                                    ; preds = %111, %103, %102
  %117 = phi i32 [ 32, %102 ], [ 8, %103 ], [ %66, %111 ], !dbg !915
  %118 = phi i64 [ %82, %102 ], [ %106, %103 ], [ %112, %111 ], !dbg !1001
  call void @llvm.dbg.value(metadata i64 %118, metadata !900, metadata !DIExpression()) #10, !dbg !917
  call void @llvm.dbg.value(metadata i32 %117, metadata !897, metadata !DIExpression()) #10, !dbg !939
  %119 = load i8, i8* @convert_entire_line, align 1, !dbg !1002, !tbaa !824, !range !956
  %120 = icmp eq i8 %119, 0, !dbg !1002
  br i1 %120, label %121, label %129, !dbg !1003

; <label>:121:                                    ; preds = %116
  %122 = tail call i16** @__ctype_b_loc() #17, !dbg !1004
  %123 = load i16*, i16** %122, align 8, !dbg !1004, !tbaa !749
  %124 = sext i32 %117 to i64, !dbg !1004
  %125 = getelementptr inbounds i16, i16* %123, i64 %124, !dbg !1004
  %126 = load i16, i16* %125, align 2, !dbg !1004, !tbaa !1005
  %127 = and i16 %126, 1, !dbg !1004
  %128 = icmp ne i16 %127, 0, !dbg !1006
  br label %129, !dbg !1003

; <label>:129:                                    ; preds = %121, %116
  %130 = phi i1 [ true, %116 ], [ %128, %121 ]
  %131 = zext i1 %130 to i8, !dbg !1007
  call void @llvm.dbg.value(metadata i8 %131, metadata !899, metadata !DIExpression()) #10, !dbg !916
  br label %132, !dbg !1008

; <label>:132:                                    ; preds = %129, %65
  %133 = phi i32 [ %117, %129 ], [ %66, %65 ], !dbg !915
  %134 = phi i8 [ %131, %129 ], [ %45, %65 ], !dbg !1009
  %135 = phi i64 [ %118, %129 ], [ %46, %65 ], !dbg !1009
  call void @llvm.dbg.value(metadata i64 %135, metadata !900, metadata !DIExpression()) #10, !dbg !917
  call void @llvm.dbg.value(metadata i8 %134, metadata !899, metadata !DIExpression()) #10, !dbg !916
  call void @llvm.dbg.value(metadata i32 %133, metadata !897, metadata !DIExpression()) #10, !dbg !939
  %136 = icmp slt i32 %133, 0, !dbg !1010
  br i1 %136, label %158, label %137, !dbg !1012

; <label>:137:                                    ; preds = %132
  call void @llvm.dbg.value(metadata i32 %133, metadata !966, metadata !DIExpression()) #10, !dbg !1013
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1016, !tbaa !749
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1016
  %140 = load i8*, i8** %139, align 8, !dbg !1016, !tbaa !975
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1016
  %142 = load i8*, i8** %141, align 8, !dbg !1016, !tbaa !976
  %143 = icmp ult i8* %140, %142, !dbg !1016
  br i1 %143, label %144, label %147, !dbg !1016, !prof !938

; <label>:144:                                    ; preds = %137
  %145 = trunc i32 %133 to i8, !dbg !1016
  %146 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1016
  store i8* %146, i8** %139, align 8, !dbg !1016, !tbaa !975
  store i8 %145, i8* %140, align 1, !dbg !1016, !tbaa !844
  br label %155, !dbg !1017

; <label>:147:                                    ; preds = %137
  %148 = and i32 %133, 255, !dbg !1016
  %149 = call i32 @__overflow(%struct._IO_FILE* %138, i32 %148) #10, !dbg !1016
  %150 = icmp slt i32 %149, 0, !dbg !1018
  br i1 %150, label %151, label %155, !dbg !1017

; <label>:151:                                    ; preds = %147
  %152 = tail call i32* @__errno_location() #17, !dbg !1019
  %153 = load i32, i32* %152, align 4, !dbg !1019, !tbaa !853
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1019
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %153, i8* %154) #10, !dbg !1019
  unreachable, !dbg !1019

; <label>:155:                                    ; preds = %147, %144
  %156 = icmp eq i32 %133, 10, !dbg !1020
  br i1 %156, label %157, label %43, !dbg !1021, !llvm.loop !1022

; <label>:157:                                    ; preds = %155
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !862, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #10, !dbg !1025
  br label %41

; <label>:158:                                    ; preds = %132
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #10, !dbg !1025
  br label %159

; <label>:159:                                    ; preds = %31, %158
  call void @cleanup_file_list_stdin() #10, !dbg !1026
  %160 = load i32, i32* @exit_status, align 4, !dbg !1027, !tbaa !853
  ret i32 %160, !dbg !1028
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @add_tab_stop(i64) local_unnamed_addr #7 !dbg !1029 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1033, metadata !DIExpression()), !dbg !1036
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1037, !tbaa !919
  %3 = icmp eq i64 %2, 0, !dbg !1037
  br i1 %3, label %9, label %4, !dbg !1037

; <label>:4:                                      ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1038, !tbaa !749
  %6 = add i64 %2, -1, !dbg !1039
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1038
  %8 = load i64, i64* %7, align 8, !dbg !1038, !tbaa !919
  br label %9, !dbg !1037

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1037
  call void @llvm.dbg.value(metadata i64 %10, metadata !1034, metadata !DIExpression()), !dbg !1040
  %11 = icmp ugt i64 %10, %0, !dbg !1041
  %12 = select i1 %11, i64 %10, i64 %0, !dbg !1041
  %13 = sub i64 %12, %10, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %13, metadata !1035, metadata !DIExpression()), !dbg !1042
  %14 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1043, !tbaa !919
  %15 = icmp eq i64 %2, %14, !dbg !1045
  br i1 %15, label %18, label %16, !dbg !1046

; <label>:16:                                     ; preds = %9
  %17 = load i64*, i64** @tab_list, align 8, !dbg !1047, !tbaa !749
  br label %38, !dbg !1046

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1048, !tbaa !749
  call void @llvm.dbg.value(metadata i8* %19, metadata !87, metadata !DIExpression()) #10, !dbg !1049
  call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, metadata !88, metadata !DIExpression()) #10, !dbg !1051
  call void @llvm.dbg.value(metadata i64 8, metadata !89, metadata !DIExpression()) #10, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %14, metadata !90, metadata !DIExpression()) #10, !dbg !1053
  %20 = icmp eq i8* %19, null, !dbg !1054
  br i1 %20, label %21, label %25, !dbg !1056

; <label>:21:                                     ; preds = %18
  br i1 %3, label %32, label %22, !dbg !1057

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 %14, metadata !90, metadata !DIExpression()) #10, !dbg !1053
  %23 = icmp ugt i64 %2, 1152921504606846975, !dbg !1059
  br i1 %23, label %24, label %32, !dbg !1061

; <label>:24:                                     ; preds = %22
  tail call void @xalloc_die() #15, !dbg !1062
  unreachable, !dbg !1062

; <label>:25:                                     ; preds = %18
  %26 = icmp ult i64 %2, 768614336404564650, !dbg !1063
  br i1 %26, label %28, label %27, !dbg !1066

; <label>:27:                                     ; preds = %25
  tail call void @xalloc_die() #15, !dbg !1067
  unreachable, !dbg !1067

; <label>:28:                                     ; preds = %25
  %29 = lshr i64 %2, 1, !dbg !1068
  %30 = add i64 %2, 1, !dbg !1069
  %31 = add i64 %30, %29, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %31, metadata !90, metadata !DIExpression()) #10, !dbg !1053
  br label %32

; <label>:32:                                     ; preds = %21, %22, %28
  %33 = phi i64 [ %31, %28 ], [ %2, %22 ], [ 16, %21 ], !dbg !1071
  call void @llvm.dbg.value(metadata i64 %33, metadata !90, metadata !DIExpression()) #10, !dbg !1053
  store i64 %33, i64* @n_tabs_allocated, align 8, !dbg !1072, !tbaa !919
  %34 = shl i64 %33, 3, !dbg !1073
  %35 = tail call i8* @xrealloc(i8* %19, i64 %34) #10, !dbg !1074
  store i8* %35, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1075, !tbaa !749
  %36 = bitcast i8* %35 to i64*, !dbg !1076
  %37 = load i64, i64* @first_free_tab, align 8, !dbg !1077, !tbaa !919
  br label %38, !dbg !1076

; <label>:38:                                     ; preds = %16, %32
  %39 = phi i64 [ %2, %16 ], [ %37, %32 ], !dbg !1077
  %40 = phi i64* [ %17, %16 ], [ %36, %32 ], !dbg !1047
  %41 = add i64 %39, 1, !dbg !1077
  store i64 %41, i64* @first_free_tab, align 8, !dbg !1077, !tbaa !919
  %42 = getelementptr inbounds i64, i64* %40, i64 %39, !dbg !1047
  store i64 %0, i64* %42, align 8, !dbg !1078, !tbaa !919
  %43 = load i64, i64* @max_column_width, align 8, !dbg !1079, !tbaa !919
  %44 = icmp ult i64 %43, %13, !dbg !1081
  br i1 %44, label %45, label %46, !dbg !1082

; <label>:45:                                     ; preds = %38
  store i64 %13, i64* @max_column_width, align 8, !dbg !1083, !tbaa !919
  br label %46, !dbg !1085

; <label>:46:                                     ; preds = %45, %38
  ret void, !dbg !1086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_tab_stops(i8*) local_unnamed_addr #7 !dbg !1087 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 0, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 0, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 0, metadata !1092, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8* null, metadata !1094, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %2, !dbg !1115

; <label>:2:                                      ; preds = %81, %1
  %3 = phi i64 [ 0, %1 ], [ %82, %81 ], !dbg !1110
  %4 = phi i8 [ 0, %1 ], [ %83, %81 ], !dbg !1111
  %5 = phi i8 [ 0, %1 ], [ %84, %81 ], !dbg !1112
  %6 = phi i8* [ null, %1 ], [ %85, %81 ], !dbg !1113
  %7 = phi i8 [ 1, %1 ], [ %86, %81 ], !dbg !1114
  %8 = phi i8 [ 0, %1 ], [ %87, %81 ], !dbg !1116
  %9 = phi i8* [ %0, %1 ], [ %89, %81 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %8, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %6, metadata !1094, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %5, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %4, metadata !1092, metadata !DIExpression()), !dbg !1111
  %10 = load i8, i8* %9, align 1, !dbg !1118, !tbaa !844
  switch i8 %10, label %11 [
    i8 0, label %90
    i8 44, label %19
  ], !dbg !1119

; <label>:11:                                     ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #17, !dbg !1120
  %13 = load i16*, i16** %12, align 8, !dbg !1120, !tbaa !749
  %14 = zext i8 %10 to i64, !dbg !1120
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1120
  %16 = load i16, i16* %15, align 2, !dbg !1120, !tbaa !1005
  %17 = and i16 %16, 1, !dbg !1120
  %18 = icmp eq i16 %17, 0, !dbg !1120
  br i1 %18, label %41, label %19, !dbg !1121

; <label>:19:                                     ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1122
  %21 = icmp eq i8 %20, 0, !dbg !1122
  br i1 %21, label %81, label %22, !dbg !1124

; <label>:22:                                     ; preds = %19
  %23 = and i8 %4, 1, !dbg !1125
  %24 = icmp eq i8 %23, 0, !dbg !1125
  br i1 %24, label %31, label %25, !dbg !1128

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1129, metadata !DIExpression()) #10, !dbg !1135
  call void @llvm.dbg.value(metadata i8 1, metadata !1134, metadata !DIExpression()) #10, !dbg !1139
  %26 = load i64, i64* @extend_size, align 8, !dbg !1140, !tbaa !919
  %27 = icmp eq i64 %26, 0, !dbg !1140
  br i1 %27, label %28, label %29, !dbg !1142

; <label>:28:                                     ; preds = %25
  store i64 %3, i64* @extend_size, align 8, !dbg !1143, !tbaa !919
  br label %81, !dbg !1144

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.7, i64 0, i64 0), i32 5) #10, !dbg !1145
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #10, !dbg !1147
  call void @llvm.dbg.value(metadata i8 0, metadata !1134, metadata !DIExpression()) #10, !dbg !1139
  store i64 %3, i64* @extend_size, align 8, !dbg !1143, !tbaa !919
  br label %119, !dbg !1144

; <label>:31:                                     ; preds = %22
  %32 = and i8 %5, 1, !dbg !1148
  %33 = icmp eq i8 %32, 0, !dbg !1148
  br i1 %33, label %40, label %34, !dbg !1150

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1151, metadata !DIExpression()) #10, !dbg !1155
  call void @llvm.dbg.value(metadata i8 1, metadata !1154, metadata !DIExpression()) #10, !dbg !1159
  %35 = load i64, i64* @increment_size, align 8, !dbg !1160, !tbaa !919
  %36 = icmp eq i64 %35, 0, !dbg !1160
  br i1 %36, label %37, label %38, !dbg !1162

; <label>:37:                                     ; preds = %34
  store i64 %3, i64* @increment_size, align 8, !dbg !1163, !tbaa !919
  br label %81, !dbg !1164

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.8, i64 0, i64 0), i32 5) #10, !dbg !1165
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #10, !dbg !1167
  call void @llvm.dbg.value(metadata i8 0, metadata !1154, metadata !DIExpression()) #10, !dbg !1159
  store i64 %3, i64* @increment_size, align 8, !dbg !1163, !tbaa !919
  br label %119, !dbg !1164

; <label>:40:                                     ; preds = %31
  tail call void @add_tab_stop(i64 %3), !dbg !1168
  br label %81

; <label>:41:                                     ; preds = %11
  switch i8 %10, label %54 [
    i8 47, label %42
    i8 43, label %48
  ], !dbg !1169

; <label>:42:                                     ; preds = %41
  %43 = and i8 %8, 1, !dbg !1170
  %44 = icmp eq i8 %43, 0, !dbg !1170
  br i1 %44, label %81, label %45, !dbg !1173

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.9, i64 0, i64 0), i32 5) #10, !dbg !1174
  %47 = tail call i8* @quote(i8* %9) #10, !dbg !1176
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %47) #10, !dbg !1177
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %81, !dbg !1178

; <label>:48:                                     ; preds = %41
  %49 = and i8 %8, 1, !dbg !1179
  %50 = icmp eq i8 %49, 0, !dbg !1179
  br i1 %50, label %81, label %51, !dbg !1182

; <label>:51:                                     ; preds = %48
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.10, i64 0, i64 0), i32 5) #10, !dbg !1183
  %53 = tail call i8* @quote(i8* %9) #10, !dbg !1185
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %53) #10, !dbg !1186
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %81, !dbg !1187

; <label>:54:                                     ; preds = %41
  %55 = sext i8 %10 to i32, !dbg !1188
  %56 = add nsw i32 %55, -48, !dbg !1189
  %57 = icmp ult i32 %56, 10, !dbg !1189
  br i1 %57, label %58, label %78, !dbg !1190

; <label>:58:                                     ; preds = %54
  %59 = and i8 %8, 1, !dbg !1191
  %60 = icmp eq i8 %59, 0, !dbg !1191
  %61 = select i1 %60, i64 0, i64 %3, !dbg !1193
  %62 = select i1 %60, i8* %9, i8* %6, !dbg !1193
  %63 = select i1 %60, i8 1, i8 %8, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %61, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %63, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %62, metadata !1094, metadata !DIExpression()), !dbg !1113
  %64 = icmp ugt i64 %61, 1844674407370955161, !dbg !1194
  br i1 %64, label %71, label %65, !dbg !1194

; <label>:65:                                     ; preds = %58
  %66 = mul i64 %61, 10, !dbg !1194
  %67 = sext i8 %10 to i64, !dbg !1194
  %68 = add nsw i64 %67, -48, !dbg !1194
  %69 = add i64 %68, %66, !dbg !1194
  %70 = icmp ult i64 %69, %61, !dbg !1194
  br i1 %70, label %71, label %81, !dbg !1195

; <label>:71:                                     ; preds = %65, %58
  %72 = tail call i64 @strspn(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.11, i64 0, i64 0)) #14, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %72, metadata !1096, metadata !DIExpression()), !dbg !1197
  %73 = tail call noalias i8* @xstrndup(i8* %62, i64 %72) #10, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %73, metadata !1107, metadata !DIExpression()), !dbg !1199
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.12, i64 0, i64 0), i32 5) #10, !dbg !1200
  %75 = tail call i8* @quote(i8* %73) #10, !dbg !1201
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %74, i8* %75) #10, !dbg !1202
  tail call void @free(i8* %73) #10, !dbg !1203
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1114
  %76 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !1204
  %77 = getelementptr inbounds i8, i8* %76, i64 %72, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %77, metadata !1089, metadata !DIExpression()), !dbg !1108
  br label %81, !dbg !1206

; <label>:78:                                     ; preds = %54
  call void @llvm.dbg.value(metadata i8* %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5.13, i64 0, i64 0), i32 5) #10, !dbg !1207
  %80 = tail call i8* @quote(i8* %9) #10, !dbg !1209
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #10, !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %119, !dbg !1211

; <label>:81:                                     ; preds = %65, %37, %28, %51, %48, %45, %42, %40, %19, %71
  %82 = phi i64 [ %69, %65 ], [ %61, %71 ], [ %3, %19 ], [ %3, %40 ], [ %3, %42 ], [ %3, %45 ], [ %3, %48 ], [ %3, %51 ], [ %3, %28 ], [ %3, %37 ], !dbg !1110
  %83 = phi i8 [ %4, %65 ], [ %4, %71 ], [ %4, %19 ], [ %4, %40 ], [ 1, %42 ], [ 1, %45 ], [ 0, %48 ], [ 0, %51 ], [ %4, %28 ], [ %4, %37 ], !dbg !1212
  %84 = phi i8 [ %5, %65 ], [ %5, %71 ], [ %5, %19 ], [ %5, %40 ], [ 0, %42 ], [ 0, %45 ], [ 1, %48 ], [ 1, %51 ], [ %5, %28 ], [ %5, %37 ], !dbg !1212
  %85 = phi i8* [ %62, %65 ], [ %62, %71 ], [ %6, %19 ], [ %6, %40 ], [ %6, %42 ], [ %6, %45 ], [ %6, %48 ], [ %6, %51 ], [ %6, %28 ], [ %6, %37 ], !dbg !1113
  %86 = phi i8 [ %7, %65 ], [ 0, %71 ], [ %7, %19 ], [ %7, %40 ], [ %7, %42 ], [ 0, %45 ], [ %7, %48 ], [ 0, %51 ], [ %7, %28 ], [ %7, %37 ], !dbg !1213
  %87 = phi i8 [ %63, %65 ], [ %63, %71 ], [ 0, %19 ], [ 0, %40 ], [ %8, %42 ], [ %8, %45 ], [ %8, %48 ], [ %8, %51 ], [ 0, %28 ], [ 0, %37 ], !dbg !1212
  %88 = phi i8* [ %9, %65 ], [ %77, %71 ], [ %9, %19 ], [ %9, %40 ], [ %9, %42 ], [ %9, %45 ], [ %9, %48 ], [ %9, %51 ], [ %9, %28 ], [ %9, %37 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %88, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %87, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %86, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %85, metadata !1094, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %84, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %83, metadata !1092, metadata !DIExpression()), !dbg !1111
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %89, metadata !1089, metadata !DIExpression()), !dbg !1108
  br label %2, !dbg !1215, !llvm.loop !1216

; <label>:90:                                     ; preds = %2
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %4, metadata !1092, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %5, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %8, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %4, metadata !1092, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %5, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %8, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %4, metadata !1092, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %5, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %8, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %4, metadata !1092, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %5, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %8, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %4, metadata !1092, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %5, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %8, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %3, metadata !1091, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %4, metadata !1092, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %5, metadata !1093, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %8, metadata !1090, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %7, metadata !1095, metadata !DIExpression()), !dbg !1114
  %91 = and i8 %8, 1, !dbg !1218
  %92 = and i8 %91, %7, !dbg !1218
  %93 = icmp eq i8 %92, 0, !dbg !1218
  br i1 %93, label %115, label %94, !dbg !1218

; <label>:94:                                     ; preds = %90
  %95 = and i8 %4, 1, !dbg !1220
  %96 = icmp eq i8 %95, 0, !dbg !1220
  br i1 %96, label %104, label %97, !dbg !1223

; <label>:97:                                     ; preds = %94
  call void @llvm.dbg.value(metadata i64 %3, metadata !1129, metadata !DIExpression()) #10, !dbg !1224
  call void @llvm.dbg.value(metadata i8 1, metadata !1134, metadata !DIExpression()) #10, !dbg !1226
  %98 = load i64, i64* @extend_size, align 8, !dbg !1227, !tbaa !919
  %99 = icmp eq i64 %98, 0, !dbg !1227
  br i1 %99, label %102, label %100, !dbg !1228

; <label>:100:                                    ; preds = %97
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.7, i64 0, i64 0), i32 5) #10, !dbg !1229
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i8 0, metadata !1134, metadata !DIExpression()) #10, !dbg !1226
  br label %102, !dbg !1231

; <label>:102:                                    ; preds = %97, %100
  %103 = phi i8 [ 0, %100 ], [ 1, %97 ]
  store i64 %3, i64* @extend_size, align 8, !dbg !1232, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %103, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %115, !dbg !1233

; <label>:104:                                    ; preds = %94
  %105 = and i8 %5, 1, !dbg !1234
  %106 = icmp eq i8 %105, 0, !dbg !1234
  br i1 %106, label %114, label %107, !dbg !1236

; <label>:107:                                    ; preds = %104
  call void @llvm.dbg.value(metadata i64 %3, metadata !1151, metadata !DIExpression()) #10, !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1154, metadata !DIExpression()) #10, !dbg !1239
  %108 = load i64, i64* @increment_size, align 8, !dbg !1240, !tbaa !919
  %109 = icmp eq i64 %108, 0, !dbg !1240
  br i1 %109, label %112, label %110, !dbg !1241

; <label>:110:                                    ; preds = %107
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.8, i64 0, i64 0), i32 5) #10, !dbg !1242
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111) #10, !dbg !1243
  call void @llvm.dbg.value(metadata i8 0, metadata !1154, metadata !DIExpression()) #10, !dbg !1239
  br label %112, !dbg !1244

; <label>:112:                                    ; preds = %107, %110
  %113 = phi i8 [ 0, %110 ], [ 1, %107 ]
  store i64 %3, i64* @increment_size, align 8, !dbg !1245, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %113, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %115, !dbg !1246

; <label>:114:                                    ; preds = %104
  tail call void @add_tab_stop(i64 %3), !dbg !1247
  br label %115

; <label>:115:                                    ; preds = %90, %102, %114, %112
  %116 = phi i8 [ %103, %102 ], [ %113, %112 ], [ %7, %114 ], [ %7, %90 ], !dbg !1248
  call void @llvm.dbg.value(metadata i8 %116, metadata !1095, metadata !DIExpression()), !dbg !1114
  %117 = and i8 %116, 1, !dbg !1250
  %118 = icmp eq i8 %117, 0, !dbg !1250
  br i1 %118, label %119, label %120, !dbg !1252

; <label>:119:                                    ; preds = %78, %29, %38, %115
  tail call void @exit(i32 1) #15, !dbg !1253
  unreachable, !dbg !1253

; <label>:120:                                    ; preds = %115
  ret void, !dbg !1254
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #7 !dbg !1255 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1256, !tbaa !749
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1257, !tbaa !919
  call void @llvm.dbg.value(metadata i64* %1, metadata !1258, metadata !DIExpression()) #10, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %2, metadata !1265, metadata !DIExpression()) #10, !dbg !1271
  call void @llvm.dbg.value(metadata i64 0, metadata !1266, metadata !DIExpression()) #10, !dbg !1272
  call void @llvm.dbg.value(metadata i64 0, metadata !1267, metadata !DIExpression()) #10, !dbg !1273
  %3 = icmp eq i64 %2, 0, !dbg !1274
  br i1 %3, label %6, label %12, !dbg !1276

; <label>:4:                                      ; preds = %20
  call void @llvm.dbg.value(metadata i64 %22, metadata !1267, metadata !DIExpression()) #10, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %16, metadata !1266, metadata !DIExpression()) #10, !dbg !1272
  %5 = icmp ult i64 %22, %2, !dbg !1274
  br i1 %5, label %12, label %6, !dbg !1276, !llvm.loop !1277

; <label>:6:                                      ; preds = %4, %0
  %7 = load i64, i64* @increment_size, align 8, !dbg !1280, !tbaa !919
  %8 = icmp ne i64 %7, 0, !dbg !1280
  %9 = load i64, i64* @extend_size, align 8, !dbg !1282
  %10 = icmp ne i64 %9, 0, !dbg !1282
  %11 = and i1 %8, %10, !dbg !1283
  br i1 %11, label %25, label %27, !dbg !1283

; <label>:12:                                     ; preds = %0, %4
  %13 = phi i64 [ %22, %4 ], [ 0, %0 ]
  %14 = phi i64 [ %16, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !1267, metadata !DIExpression()) #10, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %14, metadata !1266, metadata !DIExpression()) #10, !dbg !1272
  %15 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1284
  %16 = load i64, i64* %15, align 8, !dbg !1284, !tbaa !919
  %17 = icmp eq i64 %16, 0, !dbg !1287
  br i1 %17, label %18, label %20, !dbg !1288

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15.16, i64 0, i64 0), i32 5) #10, !dbg !1289
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #10, !dbg !1289
  unreachable, !dbg !1289

; <label>:20:                                     ; preds = %12
  %21 = icmp ugt i64 %16, %14, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %16, metadata !1266, metadata !DIExpression()) #10, !dbg !1272
  %22 = add nuw i64 %13, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %22, metadata !1267, metadata !DIExpression()) #10, !dbg !1273
  br i1 %21, label %4, label %23, !dbg !1293

; <label>:23:                                     ; preds = %20
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.17, i64 0, i64 0), i32 5) #10, !dbg !1294
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %24) #10, !dbg !1294
  unreachable, !dbg !1294

; <label>:25:                                     ; preds = %6
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17.18, i64 0, i64 0), i32 5) #10, !dbg !1295
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !1295
  unreachable, !dbg !1295

; <label>:27:                                     ; preds = %6
  br i1 %3, label %28, label %33, !dbg !1296

; <label>:28:                                     ; preds = %27
  %29 = icmp eq i64 %9, 0, !dbg !1297
  %30 = icmp eq i64 %7, 0, !dbg !1299
  %31 = select i1 %30, i64 8, i64 %7, !dbg !1299
  %32 = select i1 %29, i64 %31, i64 %9, !dbg !1297
  store i64 %32, i64* @max_column_width, align 8, !dbg !1300, !tbaa !919
  br label %40, !dbg !1301

; <label>:33:                                     ; preds = %27
  %34 = icmp ne i64 %2, 1, !dbg !1302
  %35 = or i64 %9, %7, !dbg !1304
  %36 = icmp ne i64 %35, 0, !dbg !1304
  %37 = or i1 %34, %36, !dbg !1304
  br i1 %37, label %40, label %38, !dbg !1304

; <label>:38:                                     ; preds = %33
  %39 = load i64, i64* %1, align 8, !dbg !1305, !tbaa !919
  br label %40, !dbg !1306

; <label>:40:                                     ; preds = %33, %38, %28
  %41 = phi i64 [ %39, %38 ], [ %32, %28 ], [ 0, %33 ]
  store i64 %41, i64* @tab_size, align 8, !dbg !1307, !tbaa !919
  ret void, !dbg !1308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @get_next_tab_column(i64, i64* nocapture, i8* nocapture) local_unnamed_addr #7 !dbg !1309 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1314, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64* %1, metadata !1315, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %2, metadata !1316, metadata !DIExpression()), !dbg !1326
  store i8 0, i8* %2, align 1, !dbg !1327, !tbaa !824
  %4 = load i64, i64* @tab_size, align 8, !dbg !1328, !tbaa !919
  %5 = icmp eq i64 %4, 0, !dbg !1328
  br i1 %5, label %6, label %12, !dbg !1330

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1331, !tbaa !919
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1332, !tbaa !919
  %9 = icmp ult i64 %7, %8, !dbg !1333
  br i1 %9, label %10, label %24, !dbg !1334

; <label>:10:                                     ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !749
  br label %16, !dbg !1334

; <label>:12:                                     ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1335
  %14 = add i64 %4, %0, !dbg !1336
  %15 = sub i64 %14, %13, !dbg !1337
  br label %44, !dbg !1338

; <label>:16:                                     ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1339
  %19 = load i64, i64* %18, align 8, !dbg !1339, !tbaa !919
  call void @llvm.dbg.value(metadata i64 %19, metadata !1317, metadata !DIExpression()), !dbg !1340
  %20 = icmp ugt i64 %19, %0, !dbg !1341
  br i1 %20, label %44, label %21

; <label>:21:                                     ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1343
  store i64 %22, i64* %1, align 8, !dbg !1343, !tbaa !919
  %23 = icmp ult i64 %22, %8, !dbg !1333
  br i1 %23, label %16, label %24, !dbg !1334, !llvm.loop !1344

; <label>:24:                                     ; preds = %21, %6
  %25 = load i64, i64* @extend_size, align 8, !dbg !1346, !tbaa !919
  %26 = icmp eq i64 %25, 0, !dbg !1346
  br i1 %26, label %31, label %27, !dbg !1348

; <label>:27:                                     ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1349
  %29 = add i64 %25, %0, !dbg !1350
  %30 = sub i64 %29, %28, !dbg !1351
  br label %44, !dbg !1352

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* @increment_size, align 8, !dbg !1353, !tbaa !919
  %33 = icmp eq i64 %32, 0, !dbg !1353
  br i1 %33, label %43, label %34, !dbg !1354

; <label>:34:                                     ; preds = %31
  %35 = load i64*, i64** @tab_list, align 8, !dbg !1355, !tbaa !749
  %36 = add i64 %8, -1, !dbg !1356
  %37 = getelementptr inbounds i64, i64* %35, i64 %36, !dbg !1355
  %38 = load i64, i64* %37, align 8, !dbg !1355, !tbaa !919
  call void @llvm.dbg.value(metadata i64 %38, metadata !1321, metadata !DIExpression()), !dbg !1357
  %39 = sub i64 %0, %38, !dbg !1358
  %40 = urem i64 %39, %32, !dbg !1359
  %41 = add i64 %32, %0, !dbg !1360
  %42 = sub i64 %41, %40, !dbg !1361
  br label %44

; <label>:43:                                     ; preds = %31
  store i8 1, i8* %2, align 1, !dbg !1362, !tbaa !824
  br label %44, !dbg !1363

; <label>:44:                                     ; preds = %16, %43, %34, %27, %12
  %45 = phi i64 [ %15, %12 ], [ %30, %27 ], [ %42, %34 ], [ 0, %43 ], [ %19, %16 ], !dbg !1364
  ret i64 %45, !dbg !1365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_file_list(i8**) local_unnamed_addr #7 !dbg !1366 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1370, metadata !DIExpression()), !dbg !1371
  store i1 false, i1* @have_read_stdin, align 1
  %2 = icmp eq i8** %0, null, !dbg !1372
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0, !dbg !1374
  store i8** %3, i8*** @file_list, align 8, !dbg !1375, !tbaa !749
  ret void, !dbg !1376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !104 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !162, metadata !DIExpression()), !dbg !1377
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1378
  br i1 %2, label %30, label %3, !dbg !1380

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1381, !tbaa !749
  %5 = icmp eq i8* %4, null, !dbg !1381
  br i1 %5, label %6, label %7, !dbg !1385

; <label>:6:                                      ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.27, i64 0, i64 0), i32 341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.next_file, i64 0, i64 0)) #15, !dbg !1381
  unreachable, !dbg !1381

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1386, metadata !DIExpression()), !dbg !1391
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1394
  %9 = load i32, i32* %8, align 8, !dbg !1394, !tbaa !1395
  %10 = and i32 %9, 32, !dbg !1394
  %11 = icmp eq i32 %10, 0, !dbg !1396
  br i1 %11, label %17, label %12, !dbg !1397

; <label>:12:                                     ; preds = %7
  %13 = tail call i32* @__errno_location() #17, !dbg !1398
  %14 = load i32, i32* %13, align 4, !dbg !1398, !tbaa !853
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %4) #10, !dbg !1400
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %15) #10, !dbg !1401
  store i32 1, i32* @exit_status, align 4, !dbg !1402, !tbaa !853
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1403, !tbaa !749
  br label %17, !dbg !1405

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i8* [ %4, %7 ], [ %16, %12 ], !dbg !1403
  %19 = tail call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #14, !dbg !1403
  %20 = icmp eq i32 %19, 0, !dbg !1403
  br i1 %20, label %21, label %22, !dbg !1406

; <label>:21:                                     ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #10, !dbg !1407
  br label %30, !dbg !1407

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #10, !dbg !1408
  %24 = icmp eq i32 %23, 0, !dbg !1410
  br i1 %24, label %30, label %25, !dbg !1411

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #17, !dbg !1412
  %27 = load i32, i32* %26, align 4, !dbg !1412, !tbaa !853
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1414, !tbaa !749
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #10, !dbg !1414
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %29) #10, !dbg !1415
  store i32 1, i32* @exit_status, align 4, !dbg !1416, !tbaa !853
  br label %30, !dbg !1417

; <label>:30:                                     ; preds = %22, %1, %21, %25
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1418, !tbaa !749
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1418
  store i8** %32, i8*** @file_list, align 8, !dbg !1418, !tbaa !749
  %33 = load i8*, i8** %31, align 8, !dbg !1419, !tbaa !749
  call void @llvm.dbg.value(metadata i8* %33, metadata !163, metadata !DIExpression()), !dbg !1420
  %34 = icmp eq i8* %33, null, !dbg !1421
  br i1 %34, label %55, label %35, !dbg !1422

; <label>:35:                                     ; preds = %30, %47
  %36 = phi i8* [ %53, %47 ], [ %33, %30 ]
  %37 = tail call i32 @strcmp(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #14, !dbg !1423
  %38 = icmp eq i32 %37, 0, !dbg !1423
  br i1 %38, label %39, label %41, !dbg !1426

; <label>:39:                                     ; preds = %35
  store i1 true, i1* @have_read_stdin, align 1
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1427, !tbaa !749
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !162, metadata !DIExpression()), !dbg !1377
  br label %43, !dbg !1429

; <label>:41:                                     ; preds = %35
  %42 = tail call %struct._IO_FILE* @fopen(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.29, i64 0, i64 0)), !dbg !1430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !162, metadata !DIExpression()), !dbg !1377
  br label %43

; <label>:43:                                     ; preds = %41, %39
  %44 = phi %struct._IO_FILE* [ %40, %39 ], [ %42, %41 ], !dbg !1431
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1377
  %45 = icmp eq %struct._IO_FILE* %44, null, !dbg !1432
  br i1 %45, label %47, label %46, !dbg !1434

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1377
  store i8* %36, i8** @next_file.prev_file, align 8, !dbg !1435, !tbaa !749
  tail call void @fadvise(%struct._IO_FILE* nonnull %44, i32 2) #10, !dbg !1437
  br label %55, !dbg !1438

; <label>:47:                                     ; preds = %43
  %48 = tail call i32* @__errno_location() #17, !dbg !1439
  %49 = load i32, i32* %48, align 4, !dbg !1439, !tbaa !853
  %50 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %36) #10, !dbg !1440
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %50) #10, !dbg !1441
  store i32 1, i32* @exit_status, align 4, !dbg !1442, !tbaa !853
  %51 = load i8**, i8*** @file_list, align 8, !dbg !1418, !tbaa !749
  %52 = getelementptr inbounds i8*, i8** %51, i64 1, !dbg !1418
  store i8** %52, i8*** @file_list, align 8, !dbg !1418, !tbaa !749
  %53 = load i8*, i8** %51, align 8, !dbg !1419, !tbaa !749
  call void @llvm.dbg.value(metadata i8* %53, metadata !163, metadata !DIExpression()), !dbg !1420
  %54 = icmp eq i8* %53, null, !dbg !1421
  br i1 %54, label %55, label %35, !dbg !1422, !llvm.loop !1443

; <label>:55:                                     ; preds = %47, %30, %46
  %56 = phi %struct._IO_FILE* [ %44, %46 ], [ null, %30 ], [ null, %47 ], !dbg !1445
  ret %struct._IO_FILE* %56, !dbg !1446
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #7 !dbg !1447 {
  %1 = load i1, i1* @have_read_stdin, align 1
  br i1 %1, label %2, label %9, !dbg !1448

; <label>:2:                                      ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1450, !tbaa !749
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #10, !dbg !1451
  %5 = icmp eq i32 %4, 0, !dbg !1452
  br i1 %5, label %9, label %6, !dbg !1453

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno_location() #17, !dbg !1454
  %8 = load i32, i32* %7, align 4, !dbg !1454, !tbaa !853
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #10, !dbg !1454
  unreachable, !dbg !1454

; <label>:9:                                      ; preds = %2, %0
  ret void, !dbg !1455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_tab_list_info() local_unnamed_addr #7 !dbg !1456 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11.34, i64 0, i64 0), i32 5) #10, !dbg !1457
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1457, !tbaa !749
  %3 = tail call i32 @fputs_unlocked(i8* %1, %struct._IO_FILE* %2), !dbg !1457
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.12.35, i64 0, i64 0), i32 5) #10, !dbg !1458
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1458, !tbaa !749
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1458
  ret void, !dbg !1459
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1462, metadata !DIExpression()), !dbg !1463
  store i8* %0, i8** @file_name, align 8, !dbg !1464, !tbaa !749
  ret void, !dbg !1465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1466 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1470, metadata !DIExpression()), !dbg !1471
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1472, !tbaa !824
  ret void, !dbg !1473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1474 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1479, !tbaa !749
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1480
  %3 = icmp eq i32 %2, 0, !dbg !1481
  br i1 %3, label %22, label %4, !dbg !1482

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1483, !tbaa !824, !range !956
  %6 = icmp eq i8 %5, 0, !dbg !1483
  br i1 %6, label %11, label %7, !dbg !1484

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1485
  %9 = load i32, i32* %8, align 4, !dbg !1485, !tbaa !853
  %10 = icmp eq i32 %9, 32, !dbg !1486
  br i1 %10, label %22, label %11, !dbg !1487

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i8* %12, metadata !1476, metadata !DIExpression()), !dbg !1489
  %13 = load i8*, i8** @file_name, align 8, !dbg !1490, !tbaa !749
  %14 = icmp eq i8* %13, null, !dbg !1490
  %15 = tail call i32* @__errno_location() #17, !dbg !1492
  %16 = load i32, i32* %15, align 4, !dbg !1492, !tbaa !853
  br i1 %14, label %19, label %17, !dbg !1493

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1494
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1495
  br label %20, !dbg !1495

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #10, !dbg !1496
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1497, !tbaa !853
  tail call void @_exit(i32 %21) #15, !dbg !1498
  unreachable, !dbg !1498

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1499, !tbaa !749
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1501
  %25 = icmp eq i32 %24, 0, !dbg !1502
  br i1 %25, label %28, label %26, !dbg !1503

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1504, !tbaa !853
  tail call void @_exit(i32 %27) #15, !dbg !1505
  unreachable, !dbg !1505

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1506
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1507 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1515, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %1, metadata !1516, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i64 %2, metadata !1517, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %3, metadata !1518, metadata !DIExpression()), !dbg !1524
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %5, metadata !1519, metadata !DIExpression()), !dbg !1525
  ret void, !dbg !1526
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1527 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1565, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %1, metadata !1566, metadata !DIExpression()), !dbg !1568
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1569
  br i1 %3, label %7, label %4, !dbg !1571

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %5, metadata !1515, metadata !DIExpression()) #10, !dbg !1573
  call void @llvm.dbg.value(metadata i64 0, metadata !1516, metadata !DIExpression()) #10, !dbg !1575
  call void @llvm.dbg.value(metadata i64 0, metadata !1517, metadata !DIExpression()) #10, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %1, metadata !1518, metadata !DIExpression()) #10, !dbg !1577
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %6, metadata !1519, metadata !DIExpression()) #10, !dbg !1578
  br label %7, !dbg !1579

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1580
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1581 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1583, metadata !DIExpression()), !dbg !1586
  %2 = icmp eq i8* %0, null, !dbg !1587
  br i1 %2, label %3, label %6, !dbg !1589

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1590, !tbaa !749
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1592
  tail call void @abort() #15, !dbg !1593
  unreachable, !dbg !1593

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1594
  call void @llvm.dbg.value(metadata i8* %7, metadata !1584, metadata !DIExpression()), !dbg !1595
  %8 = icmp eq i8* %7, null, !dbg !1596
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1597
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %10, metadata !1585, metadata !DIExpression()), !dbg !1599
  %11 = ptrtoint i8* %10 to i64, !dbg !1600
  %12 = ptrtoint i8* %0 to i64, !dbg !1600
  %13 = sub i64 %11, %12, !dbg !1600
  %14 = icmp sgt i64 %13, 6, !dbg !1602
  br i1 %14, label %15, label %24, !dbg !1603

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1604
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #14, !dbg !1605
  %18 = icmp eq i32 %17, 0, !dbg !1606
  br i1 %18, label %19, label %24, !dbg !1607

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1583, metadata !DIExpression()), !dbg !1586
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #14, !dbg !1608
  %21 = icmp eq i32 %20, 0, !dbg !1611
  br i1 %21, label %22, label %24, !dbg !1612

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %23, metadata !1583, metadata !DIExpression()), !dbg !1586
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1615, !tbaa !749
  br label %24, !dbg !1616

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1583, metadata !DIExpression()), !dbg !1586
  store i8* %25, i8** @program_name, align 8, !dbg !1617, !tbaa !749
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1618, !tbaa !749
  ret void, !dbg !1619
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1620 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1625, metadata !DIExpression()), !dbg !1628
  %2 = tail call i32* @__errno_location() #17, !dbg !1629
  %3 = load i32, i32* %2, align 4, !dbg !1629, !tbaa !853
  call void @llvm.dbg.value(metadata i32 %3, metadata !1626, metadata !DIExpression()), !dbg !1630
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1631
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1631
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1631
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1632
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1627, metadata !DIExpression()), !dbg !1633
  store i32 %3, i32* %2, align 4, !dbg !1634, !tbaa !853
  ret %struct.quoting_options* %8, !dbg !1635
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1636 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1642, metadata !DIExpression()), !dbg !1643
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1644
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1644
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1645
  %5 = load i32, i32* %4, align 8, !dbg !1645, !tbaa !1646
  ret i32 %5, !dbg !1648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1649 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1653, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %1, metadata !1654, metadata !DIExpression()), !dbg !1656
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1657
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1657
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1658
  store i32 %1, i32* %5, align 8, !dbg !1659, !tbaa !1646
  ret void, !dbg !1660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1661 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1665, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 %1, metadata !1666, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 %2, metadata !1667, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %1, metadata !1668, metadata !DIExpression()), !dbg !1676
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1677
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1677
  %6 = lshr i8 %1, 5, !dbg !1678
  %7 = zext i8 %6 to i64, !dbg !1678
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1679
  call void @llvm.dbg.value(metadata i32* %8, metadata !1669, metadata !DIExpression()), !dbg !1680
  %9 = and i8 %1, 31, !dbg !1681
  %10 = zext i8 %9 to i32, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %10, metadata !1671, metadata !DIExpression()), !dbg !1682
  %11 = load i32, i32* %8, align 4, !dbg !1683, !tbaa !853
  %12 = lshr i32 %11, %10, !dbg !1684
  %13 = and i32 %12, 1, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %13, metadata !1672, metadata !DIExpression()), !dbg !1686
  %14 = and i32 %2, 1, !dbg !1687
  %15 = xor i32 %13, %14, !dbg !1688
  %16 = shl i32 %15, %10, !dbg !1689
  %17 = xor i32 %16, %11, !dbg !1690
  store i32 %17, i32* %8, align 4, !dbg !1690, !tbaa !853
  ret i32 %13, !dbg !1691
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1692 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %1, metadata !1697, metadata !DIExpression()), !dbg !1700
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1701
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1696, metadata !DIExpression()), !dbg !1699
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1704
  %6 = load i32, i32* %5, align 4, !dbg !1704, !tbaa !1705
  call void @llvm.dbg.value(metadata i32 %6, metadata !1698, metadata !DIExpression()), !dbg !1706
  store i32 %1, i32* %5, align 4, !dbg !1707, !tbaa !1705
  ret i32 %6, !dbg !1708
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1709 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1713, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8* %1, metadata !1714, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8* %2, metadata !1715, metadata !DIExpression()), !dbg !1718
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1719
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1713, metadata !DIExpression()), !dbg !1716
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1722
  store i32 10, i32* %6, align 8, !dbg !1723, !tbaa !1646
  %7 = icmp ne i8* %1, null, !dbg !1724
  %8 = icmp ne i8* %2, null, !dbg !1726
  %9 = and i1 %7, %8, !dbg !1727
  br i1 %9, label %11, label %10, !dbg !1727

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1728
  unreachable, !dbg !1728

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1729
  store i8* %1, i8** %12, align 8, !dbg !1730, !tbaa !1731
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1732
  store i8* %2, i8** %13, align 8, !dbg !1733, !tbaa !1734
  ret void, !dbg !1735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1740, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %1, metadata !1741, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8* %2, metadata !1742, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %3, metadata !1743, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1744, metadata !DIExpression()), !dbg !1752
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1753
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1745, metadata !DIExpression()), !dbg !1754
  %8 = tail call i32* @__errno_location() #17, !dbg !1755
  %9 = load i32, i32* %8, align 4, !dbg !1755, !tbaa !853
  call void @llvm.dbg.value(metadata i32 %9, metadata !1746, metadata !DIExpression()), !dbg !1756
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1757
  %11 = load i32, i32* %10, align 8, !dbg !1757, !tbaa !1646
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1758
  %13 = load i32, i32* %12, align 4, !dbg !1758, !tbaa !1705
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1759
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1760
  %16 = load i8*, i8** %15, align 8, !dbg !1760, !tbaa !1731
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1761
  %18 = load i8*, i8** %17, align 8, !dbg !1761, !tbaa !1734
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %19, metadata !1747, metadata !DIExpression()), !dbg !1763
  store i32 %9, i32* %8, align 4, !dbg !1764, !tbaa !853
  ret i64 %19, !dbg !1765
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1766 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1772, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %1, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %2, metadata !1774, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %3, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %4, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %5, metadata !1777, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32* %6, metadata !1778, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %7, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %8, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 0, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* null, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1849
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1850
  %14 = icmp eq i64 %13, 1, !dbg !1851
  %15 = lshr i32 %5, 1, !dbg !1852
  %16 = trunc i32 %15 to i8, !dbg !1852
  %17 = and i8 %16, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i8 %17, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 0, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 1, metadata !1791, metadata !DIExpression()), !dbg !1855
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1856

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1846
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1847
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1848
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1849
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1857
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1853
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1854
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1855
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 %39, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %38, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %37, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %36, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %35, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %34, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %33, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %32, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %31, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %30, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %29, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %28, metadata !1776, metadata !DIExpression()), !dbg !1840
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
  ], !dbg !1859

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 1, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 %36, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 5, metadata !1776, metadata !DIExpression()), !dbg !1840
  br label %93, !dbg !1860

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 5, metadata !1776, metadata !DIExpression()), !dbg !1840
  %43 = and i8 %36, 1, !dbg !1861
  %44 = icmp eq i8 %43, 0, !dbg !1861
  br i1 %44, label %45, label %93, !dbg !1860

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1863
  br i1 %46, label %93, label %47, !dbg !1866

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1863, !tbaa !844
  br label %93, !dbg !1863

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %28), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %49, metadata !1779, metadata !DIExpression()), !dbg !1843
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %28), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %50, metadata !1780, metadata !DIExpression()), !dbg !1844
  br label %51, !dbg !1872

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %52, metadata !1779, metadata !DIExpression()), !dbg !1843
  %54 = and i8 %36, 1, !dbg !1873
  %55 = icmp eq i8 %54, 0, !dbg !1873
  br i1 %55, label %56, label %71, !dbg !1875

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !1845
  %57 = load i8, i8* %52, align 1, !dbg !1876, !tbaa !844
  %58 = icmp eq i8 %57, 0, !dbg !1879
  br i1 %58, label %71, label %59, !dbg !1879

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %62, metadata !1782, metadata !DIExpression()), !dbg !1845
  %63 = icmp ult i64 %62, %40, !dbg !1880
  br i1 %63, label %64, label %66, !dbg !1883

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1880
  store i8 %60, i8* %65, align 1, !dbg !1880, !tbaa !844
  br label %66, !dbg !1880

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1883
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %68, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %67, metadata !1782, metadata !DIExpression()), !dbg !1845
  %69 = load i8, i8* %68, align 1, !dbg !1876, !tbaa !844
  %70 = icmp eq i8 %69, 0, !dbg !1879
  br i1 %70, label %71, label %59, !dbg !1879, !llvm.loop !1885

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1845
  call void @llvm.dbg.value(metadata i64 %72, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8* %53, metadata !1784, metadata !DIExpression()), !dbg !1847
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %73, metadata !1785, metadata !DIExpression()), !dbg !1848
  br label %93, !dbg !1888

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !1849
  br label %75, !dbg !1889

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8 %76, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 1, metadata !1788, metadata !DIExpression()), !dbg !1852
  br label %77, !dbg !1890

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1849
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8 %79, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 %78, metadata !1786, metadata !DIExpression()), !dbg !1849
  %80 = and i8 %79, 1, !dbg !1891
  %81 = icmp eq i8 %80, 0, !dbg !1891
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1893
  br label %83, !dbg !1893

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1894
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1852
  call void @llvm.dbg.value(metadata i8 %85, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 %84, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i32 2, metadata !1776, metadata !DIExpression()), !dbg !1840
  %86 = and i8 %85, 1, !dbg !1895
  %87 = icmp eq i8 %86, 0, !dbg !1895
  br i1 %87, label %88, label %93, !dbg !1897

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1898
  br i1 %89, label %93, label %90, !dbg !1901

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1898, !tbaa !844
  br label %93, !dbg !1898

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1788, metadata !DIExpression()), !dbg !1852
  br label %93, !dbg !1902

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1903
  unreachable, !dbg !1903

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1845
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], !dbg !1857
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1857
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1857
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %101, metadata !1788, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %99, metadata !1785, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %97, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %94, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 0, metadata !1781, metadata !DIExpression()), !dbg !1905
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
  br label %121, !dbg !1906

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1907
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1845
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1846
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1853
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1854
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1855
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %125, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %122, metadata !1781, metadata !DIExpression()), !dbg !1905
  %130 = icmp eq i64 %125, -1, !dbg !1908
  br i1 %130, label %131, label %135, !dbg !1909

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1910
  %133 = load i8, i8* %132, align 1, !dbg !1910, !tbaa !844
  %134 = icmp eq i8 %133, 0, !dbg !1911
  br i1 %134, label %617, label %137, !dbg !1912

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1913
  br i1 %136, label %617, label %137, !dbg !1912

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1916
  br i1 %107, label %138, label %153, !dbg !1917

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1919
  %140 = and i1 %108, %130, !dbg !1920
  br i1 %140, label %141, label %143, !dbg !1920

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %142, metadata !1775, metadata !DIExpression()), !dbg !1839
  br label %143, !dbg !1922

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1775, metadata !DIExpression()), !dbg !1839
  %145 = icmp ugt i64 %139, %144, !dbg !1923
  br i1 %145, label %153, label %146, !dbg !1924

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1925
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1926
  %149 = icmp ne i32 %148, 0, !dbg !1927
  %150 = or i1 %149, %110, !dbg !1928
  %151 = xor i1 %149, true, !dbg !1928
  %152 = zext i1 %151 to i8, !dbg !1928
  br i1 %150, label %153, label %661, !dbg !1928

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1929
  call void @llvm.dbg.value(metadata i8 %155, metadata !1797, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %154, metadata !1775, metadata !DIExpression()), !dbg !1839
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1930
  %157 = load i8, i8* %156, align 1, !dbg !1930, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %157, metadata !1792, metadata !DIExpression()), !dbg !1931
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
  ], !dbg !1932

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1933

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1934

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1798, metadata !DIExpression()), !dbg !1915
  %161 = and i8 %126, 1, !dbg !1938
  %162 = icmp eq i8 %161, 0, !dbg !1938
  %163 = and i1 %114, %162, !dbg !1938
  br i1 %163, label %164, label %180, !dbg !1938

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1940
  br i1 %165, label %166, label %168, !dbg !1944

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1940
  store i8 39, i8* %167, align 1, !dbg !1940, !tbaa !844
  br label %168, !dbg !1940

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %169, metadata !1782, metadata !DIExpression()), !dbg !1845
  %170 = icmp ult i64 %169, %129, !dbg !1945
  br i1 %170, label %171, label %173, !dbg !1948

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1945
  store i8 36, i8* %172, align 1, !dbg !1945, !tbaa !844
  br label %173, !dbg !1945

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %174, metadata !1782, metadata !DIExpression()), !dbg !1845
  %175 = icmp ult i64 %174, %129, !dbg !1949
  br i1 %175, label %176, label %178, !dbg !1952

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1949
  store i8 39, i8* %177, align 1, !dbg !1949, !tbaa !844
  br label %178, !dbg !1949

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %179, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 1, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %180, !dbg !1953

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1904
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %182, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %181, metadata !1782, metadata !DIExpression()), !dbg !1845
  %183 = icmp ult i64 %181, %129, !dbg !1954
  br i1 %183, label %184, label %186, !dbg !1957

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1954
  store i8 92, i8* %185, align 1, !dbg !1954, !tbaa !844
  br label %186, !dbg !1954

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %187, metadata !1782, metadata !DIExpression()), !dbg !1845
  br i1 %104, label %188, label %478, !dbg !1958

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1960
  %190 = icmp ult i64 %189, %154, !dbg !1961
  br i1 %190, label %191, label %467, !dbg !1962

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1963
  %193 = load i8, i8* %192, align 1, !dbg !1963, !tbaa !844
  %194 = add i8 %193, -48, !dbg !1964
  %195 = icmp ult i8 %194, 10, !dbg !1964
  br i1 %195, label %196, label %467, !dbg !1964

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1965
  br i1 %197, label %198, label %200, !dbg !1969

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1965
  store i8 48, i8* %199, align 1, !dbg !1965, !tbaa !844
  br label %200, !dbg !1965

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %201, metadata !1782, metadata !DIExpression()), !dbg !1845
  %202 = icmp ult i64 %201, %129, !dbg !1970
  br i1 %202, label %203, label %205, !dbg !1973

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1970
  store i8 48, i8* %204, align 1, !dbg !1970, !tbaa !844
  br label %205, !dbg !1970

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %206, metadata !1782, metadata !DIExpression()), !dbg !1845
  br label %467, !dbg !1974

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1975

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1976

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1977

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1979

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1981
  %213 = icmp ult i64 %212, %154, !dbg !1982
  br i1 %213, label %214, label %467, !dbg !1983

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1984
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1985
  %217 = load i8, i8* %216, align 1, !dbg !1985, !tbaa !844
  %218 = icmp eq i8 %217, 63, !dbg !1986
  br i1 %218, label %219, label %467, !dbg !1987

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1988
  %221 = load i8, i8* %220, align 1, !dbg !1988, !tbaa !844
  %222 = sext i8 %221 to i32, !dbg !1988
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
  ], !dbg !1989

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1990

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1792, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %212, metadata !1781, metadata !DIExpression()), !dbg !1905
  %225 = icmp ult i64 %123, %129, !dbg !1992
  br i1 %225, label %226, label %228, !dbg !1995

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1992
  store i8 63, i8* %227, align 1, !dbg !1992, !tbaa !844
  br label %228, !dbg !1992

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %229, metadata !1782, metadata !DIExpression()), !dbg !1845
  %230 = icmp ult i64 %229, %129, !dbg !1996
  br i1 %230, label %231, label %233, !dbg !1999

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1996
  store i8 34, i8* %232, align 1, !dbg !1996, !tbaa !844
  br label %233, !dbg !1996

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %234, metadata !1782, metadata !DIExpression()), !dbg !1845
  %235 = icmp ult i64 %234, %129, !dbg !2000
  br i1 %235, label %236, label %238, !dbg !2003

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2000
  store i8 34, i8* %237, align 1, !dbg !2000, !tbaa !844
  br label %238, !dbg !2000

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %239, metadata !1782, metadata !DIExpression()), !dbg !1845
  %240 = icmp ult i64 %239, %129, !dbg !2004
  br i1 %240, label %241, label %243, !dbg !2007

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2004
  store i8 63, i8* %242, align 1, !dbg !2004, !tbaa !844
  br label %243, !dbg !2004

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %244, metadata !1782, metadata !DIExpression()), !dbg !1845
  br label %467, !dbg !2008

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1796, metadata !DIExpression()), !dbg !2009
  br label %255, !dbg !2010

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1796, metadata !DIExpression()), !dbg !2009
  br label %255, !dbg !2011

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1796, metadata !DIExpression()), !dbg !2009
  br label %253, !dbg !2012

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1796, metadata !DIExpression()), !dbg !2009
  br label %253, !dbg !2013

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1796, metadata !DIExpression()), !dbg !2009
  br label %255, !dbg !2014

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1796, metadata !DIExpression()), !dbg !2009
  br i1 %114, label %251, label %252, !dbg !2015

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2016

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2019

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2021
  call void @llvm.dbg.value(metadata i8 %254, metadata !1796, metadata !DIExpression()), !dbg !2009
  br i1 %113, label %255, label %661, !dbg !2022

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2021
  call void @llvm.dbg.value(metadata i8 %256, metadata !1796, metadata !DIExpression()), !dbg !2009
  br i1 %103, label %524, label %478, !dbg !2024

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2025
  br i1 %258, label %259, label %264, !dbg !2027

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2028, !tbaa !844
  %261 = icmp ne i8 %260, 0, !dbg !2029
  %262 = icmp ne i64 %122, 0, !dbg !2030
  %263 = or i1 %262, %261, !dbg !2032
  br i1 %263, label %467, label %270, !dbg !2032

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2033
  %266 = icmp ne i64 %122, 0, !dbg !2030
  %267 = or i1 %266, %265, !dbg !2027
  br i1 %267, label %467, label %270, !dbg !2027

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2030
  br i1 %269, label %270, label %467, !dbg !2034

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1916
  br label %271, !dbg !2035

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2021
  call void @llvm.dbg.value(metadata i8 %272, metadata !1799, metadata !DIExpression()), !dbg !1916
  br i1 %113, label %467, label %661, !dbg !2036

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1916
  br i1 %114, label %274, label %467, !dbg !2038

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2039

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2042
  %277 = icmp ne i64 %124, 0, !dbg !2044
  %278 = or i1 %277, %276, !dbg !2045
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2045
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %280, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %279, metadata !1783, metadata !DIExpression()), !dbg !1846
  %281 = icmp ult i64 %123, %280, !dbg !2046
  br i1 %281, label %282, label %284, !dbg !2049

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2046
  store i8 39, i8* %283, align 1, !dbg !2046, !tbaa !844
  br label %284, !dbg !2046

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %285, metadata !1782, metadata !DIExpression()), !dbg !1845
  %286 = icmp ult i64 %285, %280, !dbg !2050
  br i1 %286, label %287, label %289, !dbg !2053

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2050
  store i8 92, i8* %288, align 1, !dbg !2050, !tbaa !844
  br label %289, !dbg !2050

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %290, metadata !1782, metadata !DIExpression()), !dbg !1845
  %291 = icmp ult i64 %290, %280, !dbg !2054
  br i1 %291, label %292, label %294, !dbg !2057

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2054
  store i8 39, i8* %293, align 1, !dbg !2054, !tbaa !844
  br label %294, !dbg !2054

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %295, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %467, !dbg !2058

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2059

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1800, metadata !DIExpression()), !dbg !2060
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2061
  %299 = load i16*, i16** %298, align 8, !dbg !2061, !tbaa !749
  %300 = zext i8 %157 to i64, !dbg !2061
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2061
  %302 = load i16, i16* %301, align 2, !dbg !2061, !tbaa !1005
  %303 = lshr i16 %302, 14, !dbg !2063
  %304 = trunc i16 %303 to i8, !dbg !2063
  %305 = and i8 %304, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i8 %305, metadata !1803, metadata !DIExpression()), !dbg !2064
  br label %359, !dbg !2065

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2066
  store i64 0, i64* %10, align 8, !dbg !2067
  call void @llvm.dbg.value(metadata i64 0, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !2064
  %307 = icmp eq i64 %154, -1, !dbg !2068
  br i1 %307, label %308, label %310, !dbg !2070

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %309, metadata !1775, metadata !DIExpression()), !dbg !1839
  br label %310, !dbg !2072

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2073
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  br label %312, !dbg !2074

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2075
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %314, metadata !1803, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2077
  %315 = add i64 %313, %122, !dbg !2078
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2079
  %317 = sub i64 %311, %315, !dbg !2080
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1804, metadata !DIExpression(DW_OP_deref)), !dbg !2081
  call void @llvm.dbg.value(metadata i32* %12, metadata !1822, metadata !DIExpression(DW_OP_deref)), !dbg !2082
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %318, metadata !1825, metadata !DIExpression()), !dbg !2084
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2085

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  %320 = icmp ugt i64 %311, %315, !dbg !2086
  br i1 %320, label %321, label %344, !dbg !2088

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1800, metadata !DIExpression()), !dbg !2060
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2089
  %325 = load i8, i8* %324, align 1, !dbg !2089, !tbaa !844
  %326 = icmp eq i8 %325, 0, !dbg !2088
  br i1 %326, label %344, label %327, !dbg !2090

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %328, metadata !1800, metadata !DIExpression()), !dbg !2060
  %329 = add i64 %328, %122, !dbg !2092
  %330 = icmp ult i64 %329, %311, !dbg !2086
  br i1 %330, label %321, label %344, !dbg !2088, !llvm.loop !2093

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2094
  %333 = and i1 %116, %332, !dbg !2097
  call void @llvm.dbg.value(metadata i64 1, metadata !1826, metadata !DIExpression()), !dbg !2098
  br i1 %333, label %334, label %347, !dbg !2097

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1826, metadata !DIExpression()), !dbg !2098
  %336 = add i64 %335, %315, !dbg !2099
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2100
  %338 = load i8, i8* %337, align 1, !dbg !2100, !tbaa !844
  %339 = sext i8 %338 to i32, !dbg !2100
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2101

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %341, metadata !1826, metadata !DIExpression()), !dbg !2098
  %342 = icmp ult i64 %341, %318, !dbg !2094
  br i1 %342, label %334, label %347, !dbg !2103, !llvm.loop !2104

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 %314, metadata !1803, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %313, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 %314, metadata !1803, metadata !DIExpression()), !dbg !2064
  br label %344, !dbg !2106

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1803, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %352, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2106
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2107, !tbaa !853
  call void @llvm.dbg.value(metadata i32 %348, metadata !1822, metadata !DIExpression()), !dbg !2082
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !2109
  %350 = icmp eq i32 %349, 0, !dbg !2109
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2110
  call void @llvm.dbg.value(metadata i8 %351, metadata !1803, metadata !DIExpression()), !dbg !2064
  %352 = add i64 %318, %313, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %352, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 %351, metadata !1803, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %352, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2106
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1804, metadata !DIExpression(DW_OP_deref)), !dbg !2081
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2112
  %354 = icmp eq i32 %353, 0, !dbg !2113
  br i1 %354, label %312, label %355, !dbg !2114, !llvm.loop !2115

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2117
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 2, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 2, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 2, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 2, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 2, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %94, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %94, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %94, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %94, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %94, metadata !1776, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 %100, metadata !1786, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %311, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %351, metadata !1803, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %352, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2117
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2118
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2119
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2119
  call void @llvm.dbg.value(metadata i8 %362, metadata !1803, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %361, metadata !1800, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %360, metadata !1775, metadata !DIExpression()), !dbg !1839
  %363 = and i8 %362, 1, !dbg !2120
  %364 = icmp ne i8 %363, 0, !dbg !2120
  call void @llvm.dbg.value(metadata i8 %363, metadata !1799, metadata !DIExpression()), !dbg !1916
  %365 = icmp ult i64 %361, 2, !dbg !2121
  %366 = or i1 %364, %115, !dbg !2122
  %367 = and i1 %365, %366, !dbg !2123
  br i1 %367, label %467, label %368, !dbg !2123

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %369, metadata !1833, metadata !DIExpression()), !dbg !2125
  br label %370, !dbg !2126

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2127
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2131
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1853
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2127
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2133
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8 %376, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %375, metadata !1797, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 %374, metadata !1792, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %373, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %372, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %371, metadata !1781, metadata !DIExpression()), !dbg !1905
  br i1 %366, label %423, label %377, !dbg !2137

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2138

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1798, metadata !DIExpression()), !dbg !1915
  %379 = and i8 %373, 1, !dbg !2141
  %380 = icmp eq i8 %379, 0, !dbg !2141
  %381 = and i1 %114, %380, !dbg !2141
  br i1 %381, label %382, label %398, !dbg !2141

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2143
  br i1 %383, label %384, label %386, !dbg !2147

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2143
  store i8 39, i8* %385, align 1, !dbg !2143, !tbaa !844
  br label %386, !dbg !2143

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %387, metadata !1782, metadata !DIExpression()), !dbg !1845
  %388 = icmp ult i64 %387, %129, !dbg !2148
  br i1 %388, label %389, label %391, !dbg !2151

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2148
  store i8 36, i8* %390, align 1, !dbg !2148, !tbaa !844
  br label %391, !dbg !2148

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %392, metadata !1782, metadata !DIExpression()), !dbg !1845
  %393 = icmp ult i64 %392, %129, !dbg !2152
  br i1 %393, label %394, label %396, !dbg !2155

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2152
  store i8 39, i8* %395, align 1, !dbg !2152, !tbaa !844
  br label %396, !dbg !2152

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %397, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 1, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %398, !dbg !2156

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1904
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %400, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %399, metadata !1782, metadata !DIExpression()), !dbg !1845
  %401 = icmp ult i64 %399, %129, !dbg !2157
  br i1 %401, label %402, label %404, !dbg !2160

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2157
  store i8 92, i8* %403, align 1, !dbg !2157, !tbaa !844
  br label %404, !dbg !2157

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %405, metadata !1782, metadata !DIExpression()), !dbg !1845
  %406 = icmp ult i64 %405, %129, !dbg !2161
  br i1 %406, label %407, label %411, !dbg !2164

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2161
  %409 = or i8 %408, 48, !dbg !2161
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2161
  store i8 %409, i8* %410, align 1, !dbg !2161, !tbaa !844
  br label %411, !dbg !2161

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %412, metadata !1782, metadata !DIExpression()), !dbg !1845
  %413 = icmp ult i64 %412, %129, !dbg !2165
  br i1 %413, label %414, label %419, !dbg !2168

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2165
  %416 = and i8 %415, 7, !dbg !2165
  %417 = or i8 %416, 48, !dbg !2165
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2165
  store i8 %417, i8* %418, align 1, !dbg !2165, !tbaa !844
  br label %419, !dbg !2165

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %420, metadata !1782, metadata !DIExpression()), !dbg !1845
  %421 = and i8 %374, 7, !dbg !2169
  %422 = or i8 %421, 48, !dbg !2170
  call void @llvm.dbg.value(metadata i8 %422, metadata !1792, metadata !DIExpression()), !dbg !1931
  br label %432, !dbg !2171

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2172
  %425 = icmp eq i8 %424, 0, !dbg !2172
  br i1 %425, label %432, label %426, !dbg !2173

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2174
  br i1 %427, label %428, label %430, !dbg !2177

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2174
  store i8 92, i8* %429, align 1, !dbg !2174, !tbaa !844
  br label %430, !dbg !2174

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %431, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1914
  br label %432, !dbg !2178

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2179
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1853
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2180
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2181
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2183
  call void @llvm.dbg.value(metadata i8 %437, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %436, metadata !1797, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 %435, metadata !1792, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %434, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %433, metadata !1782, metadata !DIExpression()), !dbg !1845
  %438 = add i64 %371, 1, !dbg !2184
  %439 = icmp ugt i64 %369, %438, !dbg !2186
  br i1 %439, label %440, label %562, !dbg !2187

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2188
  %442 = icmp ne i8 %441, 0, !dbg !2188
  %443 = and i8 %437, 1, !dbg !2188
  %444 = icmp eq i8 %443, 0, !dbg !2188
  %445 = and i1 %442, %444, !dbg !2188
  br i1 %445, label %446, label %457, !dbg !2188

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2191
  br i1 %447, label %448, label %450, !dbg !2195

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2191
  store i8 39, i8* %449, align 1, !dbg !2191, !tbaa !844
  br label %450, !dbg !2191

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %451, metadata !1782, metadata !DIExpression()), !dbg !1845
  %452 = icmp ult i64 %451, %129, !dbg !2196
  br i1 %452, label %453, label %455, !dbg !2199

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2196
  store i8 39, i8* %454, align 1, !dbg !2196, !tbaa !844
  br label %455, !dbg !2196

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %456, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %457, !dbg !2200

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2201
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %459, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %458, metadata !1782, metadata !DIExpression()), !dbg !1845
  %460 = icmp ult i64 %458, %129, !dbg !2202
  br i1 %460, label %461, label %463, !dbg !2204

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2202
  store i8 %435, i8* %462, align 1, !dbg !2202, !tbaa !844
  br label %463, !dbg !2202

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %464, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %438, metadata !1781, metadata !DIExpression()), !dbg !1905
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2205
  %466 = load i8, i8* %465, align 1, !dbg !2205, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %466, metadata !1792, metadata !DIExpression()), !dbg !1931
  br label %370, !dbg !2206, !llvm.loop !2207

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2210
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1904
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1846
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2211
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1904
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1904
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1929
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1929
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1929
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 %476, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %475, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %155, metadata !1797, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 %474, metadata !1792, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %473, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %472, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %471, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %470, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %469, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %468, metadata !1781, metadata !DIExpression()), !dbg !1905
  br i1 %105, label %489, label %478, !dbg !2212

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
  br i1 %112, label %490, label %512, !dbg !2214

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2215

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
  %501 = lshr i8 %494, 5, !dbg !2216
  %502 = zext i8 %501 to i64, !dbg !2216
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2217
  %504 = load i32, i32* %503, align 4, !dbg !2217, !tbaa !853
  %505 = and i8 %494, 31, !dbg !2218
  %506 = zext i8 %505 to i32, !dbg !2218
  %507 = shl i32 1, %506, !dbg !2219
  %508 = and i32 %504, %507, !dbg !2219
  %509 = icmp eq i32 %508, 0, !dbg !2219
  %510 = icmp eq i8 %155, 0, !dbg !2220
  %511 = and i1 %510, %509, !dbg !2221
  br i1 %511, label %562, label %524, !dbg !2221

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
  %523 = icmp eq i8 %155, 0, !dbg !2220
  br i1 %523, label %562, label %524, !dbg !2222

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2223
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1904
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1846
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2211
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1853
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1854
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2224
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1929
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 %532, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %531, metadata !1792, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %530, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %529, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %528, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %527, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %526, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %525, metadata !1781, metadata !DIExpression()), !dbg !1905
  br i1 %110, label %534, label %661, !dbg !2227

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1798, metadata !DIExpression()), !dbg !1915
  %535 = and i8 %529, 1, !dbg !2229
  %536 = icmp eq i8 %535, 0, !dbg !2229
  %537 = and i1 %114, %536, !dbg !2229
  br i1 %537, label %538, label %554, !dbg !2229

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2231
  br i1 %539, label %540, label %542, !dbg !2235

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2231
  store i8 39, i8* %541, align 1, !dbg !2231, !tbaa !844
  br label %542, !dbg !2231

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %543, metadata !1782, metadata !DIExpression()), !dbg !1845
  %544 = icmp ult i64 %543, %533, !dbg !2236
  br i1 %544, label %545, label %547, !dbg !2239

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2236
  store i8 36, i8* %546, align 1, !dbg !2236, !tbaa !844
  br label %547, !dbg !2236

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %548, metadata !1782, metadata !DIExpression()), !dbg !1845
  %549 = icmp ult i64 %548, %533, !dbg !2240
  br i1 %549, label %550, label %552, !dbg !2243

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2240
  store i8 39, i8* %551, align 1, !dbg !2240, !tbaa !844
  br label %552, !dbg !2240

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %553, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 1, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %554, !dbg !2244

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2201
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %556, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %555, metadata !1782, metadata !DIExpression()), !dbg !1845
  %557 = icmp ult i64 %555, %533, !dbg !2245
  br i1 %557, label %558, label %560, !dbg !2248

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2245
  store i8 92, i8* %559, align 1, !dbg !2245, !tbaa !844
  br label %560, !dbg !2245

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %561, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %572, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 %571, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %570, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %569, metadata !1792, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %568, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %567, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %566, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %565, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %564, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %563, metadata !1781, metadata !DIExpression()), !dbg !1905
  br label %589, !dbg !2249

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2223
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1904
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1846
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2211
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1853
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1854
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2252
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1929
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1929
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 %571, metadata !1799, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %570, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %569, metadata !1792, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %568, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %567, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %566, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %565, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %564, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %563, metadata !1781, metadata !DIExpression()), !dbg !1905
  %573 = and i8 %567, 1, !dbg !2249
  %574 = icmp ne i8 %573, 0, !dbg !2249
  %575 = and i8 %570, 1, !dbg !2249
  %576 = icmp eq i8 %575, 0, !dbg !2249
  %577 = and i1 %574, %576, !dbg !2249
  br i1 %577, label %578, label %589, !dbg !2249

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2253
  br i1 %579, label %580, label %582, !dbg !2257

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2253
  store i8 39, i8* %581, align 1, !dbg !2253, !tbaa !844
  br label %582, !dbg !2253

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %583, metadata !1782, metadata !DIExpression()), !dbg !1845
  %584 = icmp ult i64 %583, %572, !dbg !2258
  br i1 %584, label %585, label %587, !dbg !2261

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2258
  store i8 39, i8* %586, align 1, !dbg !2258, !tbaa !844
  br label %587, !dbg !2258

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %588, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1789, metadata !DIExpression()), !dbg !1853
  br label %589, !dbg !2262

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2201
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %598, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %597, metadata !1782, metadata !DIExpression()), !dbg !1845
  %599 = icmp ult i64 %597, %590, !dbg !2263
  br i1 %599, label %600, label %602, !dbg !2266

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2263
  store i8 %592, i8* %601, align 1, !dbg !2263, !tbaa !844
  br label %602, !dbg !2263

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %603, metadata !1782, metadata !DIExpression()), !dbg !1845
  %604 = and i8 %591, 1, !dbg !2267
  %605 = icmp eq i8 %604, 0, !dbg !2267
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2269
  call void @llvm.dbg.value(metadata i8 %606, metadata !1791, metadata !DIExpression()), !dbg !1855
  br label %607, !dbg !2270

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2223
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1904
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1846
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2211
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1853
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1904
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1855
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 %614, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %613, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %612, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %611, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %610, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %609, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %608, metadata !1781, metadata !DIExpression()), !dbg !1905
  %616 = add i64 %608, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %616, metadata !1781, metadata !DIExpression()), !dbg !1905
  br label %121, !dbg !2272, !llvm.loop !2273

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %618, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %618, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %125, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %125, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %126, metadata !1789, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %127, metadata !1790, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1791, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  %619 = icmp eq i64 %123, 0, !dbg !2275
  %620 = and i1 %114, %619, !dbg !2277
  %621 = xor i1 %620, true, !dbg !2277
  %622 = or i1 %110, %621, !dbg !2277
  br i1 %622, label %623, label %661, !dbg !2277

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2278
  %625 = xor i1 %624, true, !dbg !2278
  %626 = and i8 %127, 1, !dbg !2280
  %627 = icmp eq i8 %626, 0, !dbg !2280
  %628 = or i1 %627, %625, !dbg !2278
  br i1 %628, label %638, label %629, !dbg !2278

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2281
  %631 = icmp eq i8 %630, 0, !dbg !2281
  br i1 %631, label %634, label %632, !dbg !2284

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %618, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %618, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %618, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %618, metadata !1775, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %95, metadata !1779, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %96, metadata !1780, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %124, metadata !1783, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %125, metadata !1775, metadata !DIExpression()), !dbg !1839
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2285
  br label %671, !dbg !2286

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2287
  %636 = icmp ne i64 %124, 0, !dbg !2289
  %637 = and i1 %636, %635, !dbg !2290
  br i1 %637, label %27, label %638, !dbg !2290

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %129, metadata !1773, metadata !DIExpression()), !dbg !1837
  %639 = icmp ne i8* %98, null, !dbg !2291
  %640 = and i1 %639, %110, !dbg !2293
  br i1 %640, label %641, label %656, !dbg !2293

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1782, metadata !DIExpression()), !dbg !1845
  %642 = load i8, i8* %98, align 1, !dbg !2294, !tbaa !844
  %643 = icmp eq i8 %642, 0, !dbg !2297
  br i1 %643, label %656, label %644, !dbg !2297

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %647, metadata !1782, metadata !DIExpression()), !dbg !1845
  %648 = icmp ult i64 %647, %129, !dbg !2298
  br i1 %648, label %649, label %651, !dbg !2301

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2298
  store i8 %645, i8* %650, align 1, !dbg !2298, !tbaa !844
  br label %651, !dbg !2298

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2301
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %653, metadata !1784, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %652, metadata !1782, metadata !DIExpression()), !dbg !1845
  %654 = load i8, i8* %653, align 1, !dbg !2294, !tbaa !844
  %655 = icmp eq i8 %654, 0, !dbg !2297
  br i1 %655, label %656, label %644, !dbg !2297, !llvm.loop !2303

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1845
  call void @llvm.dbg.value(metadata i64 %657, metadata !1782, metadata !DIExpression()), !dbg !1845
  %658 = icmp ult i64 %657, %129, !dbg !2305
  br i1 %658, label %659, label %671, !dbg !2307

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2308
  store i8 0, i8* %660, align 1, !dbg !2309, !tbaa !844
  br label %671, !dbg !2308

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1773, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %663, metadata !1775, metadata !DIExpression()), !dbg !1839
  %665 = icmp ne i32 %662, 2, !dbg !2310
  %666 = icmp eq i8 %102, 0, !dbg !2312
  %667 = or i1 %665, %666, !dbg !2313
  call void @llvm.dbg.value(metadata i32 4, metadata !1776, metadata !DIExpression()), !dbg !1840
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %668, metadata !1776, metadata !DIExpression()), !dbg !1840
  %669 = and i32 %5, -3, !dbg !2314
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2315
  br label %671, !dbg !2316

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2317
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2318 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2322, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 %1, metadata !2323, metadata !DIExpression()), !dbg !2327
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %3, metadata !2324, metadata !DIExpression()), !dbg !2329
  %4 = icmp eq i8* %3, %0, !dbg !2330
  br i1 %4, label %5, label %71, !dbg !2332

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %6, metadata !2325, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8* %6, metadata !2335, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* null, metadata !2341, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 85, metadata !2342, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8 84, metadata !2343, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 70, metadata !2344, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 45, metadata !2345, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 56, metadata !2346, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 0, metadata !2347, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 0, metadata !2348, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2349, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2363
  %7 = load i8, i8* %6, align 1, !dbg !2364, !tbaa !844
  %8 = and i8 %7, -33, !dbg !2364
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2364

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2366, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8* null, metadata !2371, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 84, metadata !2372, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 70, metadata !2373, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 45, metadata !2374, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 56, metadata !2375, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2376, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2392
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2393
  %11 = load i8, i8* %10, align 1, !dbg !2393, !tbaa !844
  %12 = and i8 %11, -33, !dbg !2393
  %13 = icmp eq i8 %12, 84, !dbg !2393
  br i1 %13, label %14, label %68, !dbg !2393

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2395, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* null, metadata !2400, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 70, metadata !2401, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 45, metadata !2402, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 56, metadata !2403, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2419
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2420
  %16 = load i8, i8* %15, align 1, !dbg !2420, !tbaa !844
  %17 = and i8 %16, -33, !dbg !2420
  %18 = icmp eq i8 %17, 70, !dbg !2420
  br i1 %18, label %19, label %68, !dbg !2420

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2422, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8* null, metadata !2427, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 45, metadata !2428, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 56, metadata !2429, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2444
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2445
  %21 = load i8, i8* %20, align 1, !dbg !2445, !tbaa !844
  %22 = icmp eq i8 %21, 45, !dbg !2445
  br i1 %22, label %23, label %68, !dbg !2447

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2448, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* null, metadata !2453, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 56, metadata !2454, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 0, metadata !2456, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 0, metadata !2457, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2458, metadata !DIExpression()), !dbg !2468
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2469
  %25 = load i8, i8* %24, align 1, !dbg !2469, !tbaa !844
  %26 = icmp eq i8 %25, 56, !dbg !2469
  br i1 %26, label %27, label %68, !dbg !2471

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2472, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* null, metadata !2477, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 0, metadata !2478, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 0, metadata !2479, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2490
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2491
  %29 = load i8, i8* %28, align 1, !dbg !2491, !tbaa !844
  %30 = icmp eq i8 %29, 0, !dbg !2491
  br i1 %30, label %31, label %68, !dbg !2493

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2494, !tbaa !844
  %33 = icmp eq i8 %32, 96, !dbg !2495
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2494
  br label %71, !dbg !2496

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2366, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* null, metadata !2371, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 66, metadata !2372, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 49, metadata !2373, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 56, metadata !2374, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 48, metadata !2375, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 51, metadata !2376, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 48, metadata !2377, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2509
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2510
  %37 = load i8, i8* %36, align 1, !dbg !2510, !tbaa !844
  %38 = and i8 %37, -33, !dbg !2510
  %39 = icmp eq i8 %38, 66, !dbg !2510
  br i1 %39, label %40, label %68, !dbg !2510

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2395, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* null, metadata !2400, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 49, metadata !2401, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 56, metadata !2402, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 48, metadata !2403, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 51, metadata !2404, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 48, metadata !2405, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2520
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2521
  %42 = load i8, i8* %41, align 1, !dbg !2521, !tbaa !844
  %43 = icmp eq i8 %42, 49, !dbg !2521
  br i1 %43, label %44, label %68, !dbg !2522

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2422, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8* null, metadata !2427, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 56, metadata !2428, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 48, metadata !2429, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8 51, metadata !2430, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 48, metadata !2431, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2531
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2532
  %46 = load i8, i8* %45, align 1, !dbg !2532, !tbaa !844
  %47 = icmp eq i8 %46, 56, !dbg !2532
  br i1 %47, label %48, label %68, !dbg !2533

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2448, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* null, metadata !2453, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 48, metadata !2454, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 51, metadata !2455, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 48, metadata !2456, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, metadata !2457, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2458, metadata !DIExpression()), !dbg !2541
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2542
  %50 = load i8, i8* %49, align 1, !dbg !2542, !tbaa !844
  %51 = icmp eq i8 %50, 48, !dbg !2542
  br i1 %51, label %52, label %68, !dbg !2543

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2472, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8* null, metadata !2477, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 51, metadata !2478, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 48, metadata !2479, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2550
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2551
  %54 = load i8, i8* %53, align 1, !dbg !2551, !tbaa !844
  %55 = icmp eq i8 %54, 51, !dbg !2551
  br i1 %55, label %56, label %68, !dbg !2552

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2553, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* null, metadata !2558, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 48, metadata !2559, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2569
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2570
  %58 = load i8, i8* %57, align 1, !dbg !2570, !tbaa !844
  %59 = icmp eq i8 %58, 48, !dbg !2570
  br i1 %59, label %60, label %68, !dbg !2572

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2573, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* null, metadata !2578, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2587
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2588
  %62 = load i8, i8* %61, align 1, !dbg !2588, !tbaa !844
  %63 = icmp eq i8 %62, 0, !dbg !2588
  br i1 %63, label %64, label %68, !dbg !2590

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2591, !tbaa !844
  %66 = icmp eq i8 %65, 96, !dbg !2592
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2591
  br label %71, !dbg !2593

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2594
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2595
  br label %71, !dbg !2596

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2597
  ret i8* %72, !dbg !2598
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2599 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2603, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %1, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %1, metadata !2614, metadata !DIExpression()) #10, !dbg !2624
  call void @llvm.dbg.value(metadata i64* null, metadata !2615, metadata !DIExpression()) #10, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2616, metadata !DIExpression()) #10, !dbg !2626
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2627
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2627
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2617, metadata !DIExpression()) #10, !dbg !2628
  %6 = tail call i32* @__errno_location() #17, !dbg !2629
  %7 = load i32, i32* %6, align 4, !dbg !2629, !tbaa !853
  call void @llvm.dbg.value(metadata i32 %7, metadata !2618, metadata !DIExpression()) #10, !dbg !2630
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2631
  %9 = load i32, i32* %8, align 4, !dbg !2631, !tbaa !1705
  %10 = or i32 %9, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %10, metadata !2619, metadata !DIExpression()) #10, !dbg !2633
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2634
  %12 = load i32, i32* %11, align 8, !dbg !2634, !tbaa !1646
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2635
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2636
  %15 = load i8*, i8** %14, align 8, !dbg !2636, !tbaa !1731
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2637
  %17 = load i8*, i8** %16, align 8, !dbg !2637, !tbaa !1734
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2638
  %19 = add i64 %18, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %19, metadata !2620, metadata !DIExpression()) #10, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %19, metadata !2641, metadata !DIExpression()) #10, !dbg !2646
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %20, metadata !2621, metadata !DIExpression()) #10, !dbg !2649
  %21 = load i32, i32* %11, align 8, !dbg !2650, !tbaa !1646
  %22 = load i8*, i8** %14, align 8, !dbg !2651, !tbaa !1731
  %23 = load i8*, i8** %16, align 8, !dbg !2652, !tbaa !1734
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2653
  store i32 %7, i32* %6, align 4, !dbg !2654, !tbaa !853
  ret i8* %20, !dbg !2655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %1, metadata !2614, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i64* %2, metadata !2615, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2616, metadata !DIExpression()), !dbg !2659
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2660
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2617, metadata !DIExpression()), !dbg !2661
  %7 = tail call i32* @__errno_location() #17, !dbg !2662
  %8 = load i32, i32* %7, align 4, !dbg !2662, !tbaa !853
  call void @llvm.dbg.value(metadata i32 %8, metadata !2618, metadata !DIExpression()), !dbg !2663
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2664
  %10 = load i32, i32* %9, align 4, !dbg !2664, !tbaa !1705
  %11 = icmp ne i64* %2, null, !dbg !2665
  %12 = xor i1 %11, true, !dbg !2665
  %13 = zext i1 %12 to i32, !dbg !2665
  %14 = or i32 %10, %13, !dbg !2666
  call void @llvm.dbg.value(metadata i32 %14, metadata !2619, metadata !DIExpression()), !dbg !2667
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2668
  %16 = load i32, i32* %15, align 8, !dbg !2668, !tbaa !1646
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2669
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2670
  %19 = load i8*, i8** %18, align 8, !dbg !2670, !tbaa !1731
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2671
  %21 = load i8*, i8** %20, align 8, !dbg !2671, !tbaa !1734
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2672
  %23 = add i64 %22, 1, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %23, metadata !2620, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %23, metadata !2641, metadata !DIExpression()) #10, !dbg !2675
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2677
  call void @llvm.dbg.value(metadata i8* %24, metadata !2621, metadata !DIExpression()), !dbg !2678
  %25 = load i32, i32* %15, align 8, !dbg !2679, !tbaa !1646
  %26 = load i8*, i8** %18, align 8, !dbg !2680, !tbaa !1731
  %27 = load i8*, i8** %20, align 8, !dbg !2681, !tbaa !1734
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2682
  store i32 %8, i32* %7, align 4, !dbg !2683, !tbaa !853
  br i1 %11, label %29, label %30, !dbg !2684

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2685, !tbaa !919
  br label %30, !dbg !2687

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2689 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2693, !tbaa !749
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 1, metadata !2692, metadata !DIExpression()), !dbg !2695
  %2 = load i32, i32* @nslots, align 4, !dbg !2696, !tbaa !853
  %3 = icmp sgt i32 %2, 1, !dbg !2699
  br i1 %3, label %4, label %12, !dbg !2700

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2692, metadata !DIExpression()), !dbg !2695
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2701
  %7 = load i8*, i8** %6, align 8, !dbg !2701, !tbaa !2702
  tail call void @free(i8* %7) #10, !dbg !2704
  %8 = add nuw nsw i64 %5, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i32 undef, metadata !2692, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2695
  %9 = load i32, i32* @nslots, align 4, !dbg !2696, !tbaa !853
  %10 = sext i32 %9 to i64, !dbg !2699
  %11 = icmp slt i64 %8, %10, !dbg !2699
  br i1 %11, label %4, label %12, !dbg !2700, !llvm.loop !2706

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2708
  %14 = load i8*, i8** %13, align 8, !dbg !2708, !tbaa !2702
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2710
  br i1 %15, label %17, label %16, !dbg !2711

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2712
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2714, !tbaa !2715
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2716, !tbaa !2702
  br label %17, !dbg !2717

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2718
  br i1 %18, label %21, label %19, !dbg !2720

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2721
  tail call void @free(i8* %20) #10, !dbg !2723
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2724, !tbaa !749
  br label %21, !dbg !2725

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2726, !tbaa !853
  ret void, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2733, metadata !DIExpression()), !dbg !2735
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2736
  ret i8* %3, !dbg !2737
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2742, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %1, metadata !2743, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %2, metadata !2744, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2745, metadata !DIExpression()), !dbg !2760
  %5 = tail call i32* @__errno_location() #17, !dbg !2761
  %6 = load i32, i32* %5, align 4, !dbg !2761, !tbaa !853
  call void @llvm.dbg.value(metadata i32 %6, metadata !2746, metadata !DIExpression()), !dbg !2762
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2763, !tbaa !749
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2747, metadata !DIExpression()), !dbg !2764
  %8 = icmp slt i32 %0, 0, !dbg !2765
  br i1 %8, label %9, label %10, !dbg !2767

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2768
  unreachable, !dbg !2768

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2769, !tbaa !853
  %12 = icmp sgt i32 %11, %0, !dbg !2770
  br i1 %12, label %34, label %13, !dbg !2771

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2772
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2751, metadata !DIExpression()), !dbg !2773
  %15 = icmp eq i32 %0, 2147483647, !dbg !2774
  br i1 %15, label %16, label %17, !dbg !2776

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2777
  unreachable, !dbg !2777

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2778
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2778
  %20 = add nsw i32 %0, 1, !dbg !2779
  %21 = sext i32 %20 to i64, !dbg !2780
  %22 = shl nsw i64 %21, 4, !dbg !2781
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2782
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2747, metadata !DIExpression()), !dbg !2764
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2783, !tbaa !749
  br i1 %14, label %25, label %26, !dbg !2784

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2785, !tbaa.struct !2787
  br label %26, !dbg !2788

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2789, !tbaa !853
  %28 = sext i32 %27 to i64, !dbg !2790
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2790
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2791
  %31 = sub nsw i32 %20, %27, !dbg !2792
  %32 = sext i32 %31 to i64, !dbg !2793
  %33 = shl nsw i64 %32, 4, !dbg !2794
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2791
  store i32 %20, i32* @nslots, align 4, !dbg !2795, !tbaa !853
  br label %34, !dbg !2796

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2797
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2747, metadata !DIExpression()), !dbg !2764
  %36 = sext i32 %0 to i64, !dbg !2798
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2799
  %38 = load i64, i64* %37, align 8, !dbg !2799, !tbaa !2715
  call void @llvm.dbg.value(metadata i64 %38, metadata !2752, metadata !DIExpression()), !dbg !2800
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2801
  %40 = load i8*, i8** %39, align 8, !dbg !2801, !tbaa !2702
  call void @llvm.dbg.value(metadata i8* %40, metadata !2754, metadata !DIExpression()), !dbg !2802
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2803
  %42 = load i32, i32* %41, align 4, !dbg !2803, !tbaa !1705
  %43 = or i32 %42, 1, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %43, metadata !2755, metadata !DIExpression()), !dbg !2805
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2806
  %45 = load i32, i32* %44, align 8, !dbg !2806, !tbaa !1646
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2807
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2808
  %48 = load i8*, i8** %47, align 8, !dbg !2808, !tbaa !1731
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2809
  %50 = load i8*, i8** %49, align 8, !dbg !2809, !tbaa !1734
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %51, metadata !2756, metadata !DIExpression()), !dbg !2811
  %52 = icmp ugt i64 %38, %51, !dbg !2812
  br i1 %52, label %63, label %53, !dbg !2814

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %54, metadata !2752, metadata !DIExpression()), !dbg !2800
  store i64 %54, i64* %37, align 8, !dbg !2817, !tbaa !2715
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2818
  br i1 %55, label %57, label %56, !dbg !2820

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2821
  br label %57, !dbg !2821

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2641, metadata !DIExpression()) #10, !dbg !2822
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %58, metadata !2754, metadata !DIExpression()), !dbg !2802
  store i8* %58, i8** %39, align 8, !dbg !2825, !tbaa !2702
  %59 = load i32, i32* %44, align 8, !dbg !2826, !tbaa !1646
  %60 = load i8*, i8** %47, align 8, !dbg !2827, !tbaa !1731
  %61 = load i8*, i8** %49, align 8, !dbg !2828, !tbaa !1734
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2829
  br label %63, !dbg !2830

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2831
  call void @llvm.dbg.value(metadata i8* %64, metadata !2754, metadata !DIExpression()), !dbg !2802
  store i32 %6, i32* %5, align 4, !dbg !2832, !tbaa !853
  ret i8* %64, !dbg !2833
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %2, metadata !2840, metadata !DIExpression()), !dbg !2843
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2844
  ret i8* %4, !dbg !2845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2846 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()) #10, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %0, metadata !2733, metadata !DIExpression()) #10, !dbg !2854
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2855
  ret i8* %2, !dbg !2856
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()) #10, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()) #10, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %1, metadata !2840, metadata !DIExpression()) #10, !dbg !2868
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2869
  ret i8* %3, !dbg !2870
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2871 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %1, metadata !2876, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %2, metadata !2877, metadata !DIExpression()), !dbg !2881
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2883
  call void @llvm.dbg.value(metadata i32 %1, metadata !2884, metadata !DIExpression()) #10, !dbg !2890
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2892, !alias.scope !2893
  %6 = icmp eq i32 %1, 10, !dbg !2896
  br i1 %6, label %7, label %8, !dbg !2898

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2899, !noalias !2893
  unreachable, !dbg !2899

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2900
  store i32 %1, i32* %9, align 8, !dbg !2901, !tbaa !1646, !alias.scope !2893
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2883
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2889, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2902
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2903
  ret i8* %10, !dbg !2904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2905 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2909, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %1, metadata !2910, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8* %2, metadata !2911, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %3, metadata !2912, metadata !DIExpression()), !dbg !2917
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2918
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2913, metadata !DIExpression(DW_OP_deref)), !dbg !2919
  call void @llvm.dbg.value(metadata i32 %1, metadata !2884, metadata !DIExpression()) #10, !dbg !2920
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2922, !alias.scope !2923
  %7 = icmp eq i32 %1, 10, !dbg !2926
  br i1 %7, label %8, label %9, !dbg !2927

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2928, !noalias !2923
  unreachable, !dbg !2928

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2929
  store i32 %1, i32* %10, align 8, !dbg !2930, !tbaa !1646, !alias.scope !2923
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2913, metadata !DIExpression(DW_OP_deref)), !dbg !2919
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2889, metadata !DIExpression(DW_OP_deref)), !dbg !2922
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2931
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2932
  ret i8* %11, !dbg !2933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2934 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8* %1, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2875, metadata !DIExpression()) #10, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %0, metadata !2876, metadata !DIExpression()) #10, !dbg !2944
  call void @llvm.dbg.value(metadata i8* %1, metadata !2877, metadata !DIExpression()) #10, !dbg !2945
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2878, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2947
  call void @llvm.dbg.value(metadata i32 %0, metadata !2884, metadata !DIExpression()) #10, !dbg !2948
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2950, !alias.scope !2951
  %5 = icmp eq i32 %0, 10, !dbg !2954
  br i1 %5, label %6, label %7, !dbg !2955

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2956, !noalias !2951
  unreachable, !dbg !2956

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2957
  store i32 %0, i32* %8, align 8, !dbg !2958, !tbaa !1646, !alias.scope !2951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2878, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2947
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2889, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2950
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2960
  ret i8* %9, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2962 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %2, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 0, metadata !2909, metadata !DIExpression()) #10, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %0, metadata !2910, metadata !DIExpression()) #10, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %1, metadata !2911, metadata !DIExpression()) #10, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %2, metadata !2912, metadata !DIExpression()) #10, !dbg !2976
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2977
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2913, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2978
  call void @llvm.dbg.value(metadata i32 %0, metadata !2884, metadata !DIExpression()) #10, !dbg !2979
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2981, !alias.scope !2982
  %6 = icmp eq i32 %0, 10, !dbg !2985
  br i1 %6, label %7, label %8, !dbg !2986

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2987, !noalias !2982
  unreachable, !dbg !2987

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2988
  store i32 %0, i32* %9, align 8, !dbg !2989, !tbaa !1646, !alias.scope !2982
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2913, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2889, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2981
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2991
  ret i8* %10, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2993 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8 %2, metadata !2999, metadata !DIExpression()), !dbg !3003
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3005, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3007
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1665, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i8 %2, metadata !1666, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8 %2, metadata !1668, metadata !DIExpression()), !dbg !3012
  %6 = lshr i8 %2, 5, !dbg !3013
  %7 = zext i8 %6 to i64, !dbg !3013
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3014
  call void @llvm.dbg.value(metadata i32* %8, metadata !1669, metadata !DIExpression()), !dbg !3015
  %9 = and i8 %2, 31, !dbg !3016
  %10 = zext i8 %9 to i32, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %10, metadata !1671, metadata !DIExpression()), !dbg !3017
  %11 = load i32, i32* %8, align 4, !dbg !3018, !tbaa !853
  %12 = lshr i32 %11, %10, !dbg !3019
  %13 = and i32 %12, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %13, metadata !1672, metadata !DIExpression()), !dbg !3021
  %14 = xor i32 %13, 1, !dbg !3022
  %15 = shl i32 %14, %10, !dbg !3023
  %16 = xor i32 %15, %11, !dbg !3024
  store i32 %16, i32* %8, align 4, !dbg !3024, !tbaa !853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3007
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3026
  ret i8* %17, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3028 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3032, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %1, metadata !3033, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()) #10, !dbg !3036
  call void @llvm.dbg.value(metadata i64 -1, metadata !2998, metadata !DIExpression()) #10, !dbg !3038
  call void @llvm.dbg.value(metadata i8 %1, metadata !2999, metadata !DIExpression()) #10, !dbg !3039
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3041, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3042
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1665, metadata !DIExpression()) #10, !dbg !3043
  call void @llvm.dbg.value(metadata i8 %1, metadata !1666, metadata !DIExpression()) #10, !dbg !3045
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()) #10, !dbg !3046
  call void @llvm.dbg.value(metadata i8 %1, metadata !1668, metadata !DIExpression()) #10, !dbg !3047
  %5 = lshr i8 %1, 5, !dbg !3048
  %6 = zext i8 %5 to i64, !dbg !3048
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3049
  call void @llvm.dbg.value(metadata i32* %7, metadata !1669, metadata !DIExpression()) #10, !dbg !3050
  %8 = and i8 %1, 31, !dbg !3051
  %9 = zext i8 %8 to i32, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %9, metadata !1671, metadata !DIExpression()) #10, !dbg !3052
  %10 = load i32, i32* %7, align 4, !dbg !3053, !tbaa !853
  %11 = lshr i32 %10, %9, !dbg !3054
  %12 = and i32 %11, 1, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %12, metadata !1672, metadata !DIExpression()) #10, !dbg !3056
  %13 = xor i32 %12, 1, !dbg !3057
  %14 = shl i32 %13, %9, !dbg !3058
  %15 = xor i32 %14, %10, !dbg !3059
  store i32 %15, i32* %7, align 4, !dbg !3059, !tbaa !853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3042
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3061
  ret i8* %16, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3063 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3065, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %0, metadata !3032, metadata !DIExpression()) #10, !dbg !3067
  call void @llvm.dbg.value(metadata i8 58, metadata !3033, metadata !DIExpression()) #10, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()) #10, !dbg !3070
  call void @llvm.dbg.value(metadata i64 -1, metadata !2998, metadata !DIExpression()) #10, !dbg !3072
  call void @llvm.dbg.value(metadata i8 58, metadata !2999, metadata !DIExpression()) #10, !dbg !3073
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3075, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3000, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1665, metadata !DIExpression()) #10, !dbg !3077
  call void @llvm.dbg.value(metadata i8 58, metadata !1666, metadata !DIExpression()) #10, !dbg !3079
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()) #10, !dbg !3080
  call void @llvm.dbg.value(metadata i8 58, metadata !1668, metadata !DIExpression()) #10, !dbg !3081
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3082
  call void @llvm.dbg.value(metadata i32* %4, metadata !1669, metadata !DIExpression()) #10, !dbg !3083
  call void @llvm.dbg.value(metadata i32 26, metadata !1671, metadata !DIExpression()) #10, !dbg !3084
  %5 = load i32, i32* %4, align 4, !dbg !3085, !tbaa !853
  %6 = or i32 %5, 67108864, !dbg !3086
  store i32 %6, i32* %4, align 4, !dbg !3086, !tbaa !853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3000, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3076
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3088
  ret i8* %7, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3090 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %1, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()) #10, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()) #10, !dbg !3098
  call void @llvm.dbg.value(metadata i8 58, metadata !2999, metadata !DIExpression()) #10, !dbg !3099
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3100
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3101, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3102
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1665, metadata !DIExpression()) #10, !dbg !3103
  call void @llvm.dbg.value(metadata i8 58, metadata !1666, metadata !DIExpression()) #10, !dbg !3105
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()) #10, !dbg !3106
  call void @llvm.dbg.value(metadata i8 58, metadata !1668, metadata !DIExpression()) #10, !dbg !3107
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3108
  call void @llvm.dbg.value(metadata i32* %5, metadata !1669, metadata !DIExpression()) #10, !dbg !3109
  call void @llvm.dbg.value(metadata i32 26, metadata !1671, metadata !DIExpression()) #10, !dbg !3110
  %6 = load i32, i32* %5, align 4, !dbg !3111, !tbaa !853
  %7 = or i32 %6, 67108864, !dbg !3112
  store i32 %7, i32* %5, align 4, !dbg !3112, !tbaa !853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3102
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3113
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3114
  ret i8* %8, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3116 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2889, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 %1, metadata !3119, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !3120, metadata !DIExpression()), !dbg !3126
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3127
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3127
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3128
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2884, metadata !DIExpression()) #10, !dbg !3129
  call void @llvm.dbg.value(metadata i32 0, metadata !2889, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3122
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3122, !alias.scope !3130
  %8 = icmp eq i32 %1, 10, !dbg !3133
  br i1 %8, label %9, label %10, !dbg !3134

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3135, !noalias !3130
  unreachable, !dbg !3135

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2889, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3122
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3128
  store i32 %1, i32* %11, align 8, !dbg !3128
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3128
  %13 = bitcast i32* %12 to i8*, !dbg !3128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3121, metadata !DIExpression(DW_OP_deref)), !dbg !3136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1665, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8 58, metadata !1666, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i32 1, metadata !1667, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 58, metadata !1668, metadata !DIExpression()), !dbg !3141
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3142
  call void @llvm.dbg.value(metadata i32* %14, metadata !1669, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 26, metadata !1671, metadata !DIExpression()), !dbg !3144
  %15 = load i32, i32* %14, align 4, !dbg !3145, !tbaa !853
  %16 = or i32 %15, 67108864, !dbg !3146
  store i32 %16, i32* %14, align 4, !dbg !3146, !tbaa !853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3121, metadata !DIExpression(DW_OP_deref)), !dbg !3136
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3148
  ret i8* %17, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3150 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3154, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8* %1, metadata !3155, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %2, metadata !3156, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %3, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %0, metadata !3162, metadata !DIExpression()) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3167, metadata !DIExpression()) #10, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()) #10, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()) #10, !dbg !3176
  call void @llvm.dbg.value(metadata i64 -1, metadata !3170, metadata !DIExpression()) #10, !dbg !3177
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3179, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3171, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1713, metadata !DIExpression()) #10, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %1, metadata !1714, metadata !DIExpression()) #10, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %2, metadata !1715, metadata !DIExpression()) #10, !dbg !3184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1713, metadata !DIExpression()) #10, !dbg !3181
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3185
  store i32 10, i32* %7, align 8, !dbg !3186, !tbaa !1646
  %8 = icmp ne i8* %1, null, !dbg !3187
  %9 = icmp ne i8* %2, null, !dbg !3188
  %10 = and i1 %8, %9, !dbg !3189
  br i1 %10, label %12, label %11, !dbg !3189

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3190
  unreachable, !dbg !3190

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3191
  store i8* %1, i8** %13, align 8, !dbg !3192, !tbaa !1731
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3193
  store i8* %2, i8** %14, align 8, !dbg !3194, !tbaa !1734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3171, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3180
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3196
  ret i8* %15, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3163 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3162, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %1, metadata !3167, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %4, metadata !3170, metadata !DIExpression()), !dbg !3202
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3204, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3171, metadata !DIExpression(DW_OP_deref)), !dbg !3205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1713, metadata !DIExpression()) #10, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %1, metadata !1714, metadata !DIExpression()) #10, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %2, metadata !1715, metadata !DIExpression()) #10, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1713, metadata !DIExpression()) #10, !dbg !3206
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3210
  store i32 10, i32* %8, align 8, !dbg !3211, !tbaa !1646
  %9 = icmp ne i8* %1, null, !dbg !3212
  %10 = icmp ne i8* %2, null, !dbg !3213
  %11 = and i1 %9, %10, !dbg !3214
  br i1 %11, label %13, label %12, !dbg !3214

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3215
  unreachable, !dbg !3215

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3216
  store i8* %1, i8** %14, align 8, !dbg !3217, !tbaa !1731
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3218
  store i8* %2, i8** %15, align 8, !dbg !3219, !tbaa !1734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3171, metadata !DIExpression(DW_OP_deref)), !dbg !3205
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3221
  ret i8* %16, !dbg !3222
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3223 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8* %1, metadata !3228, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 0, metadata !3154, metadata !DIExpression()) #10, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %0, metadata !3155, metadata !DIExpression()) #10, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %1, metadata !3156, metadata !DIExpression()) #10, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %2, metadata !3157, metadata !DIExpression()) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()) #10, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #10, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %1, metadata !3168, metadata !DIExpression()) #10, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %2, metadata !3169, metadata !DIExpression()) #10, !dbg !3242
  call void @llvm.dbg.value(metadata i64 -1, metadata !3170, metadata !DIExpression()) #10, !dbg !3243
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3244
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3245, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3171, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1713, metadata !DIExpression()) #10, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !1714, metadata !DIExpression()) #10, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %1, metadata !1715, metadata !DIExpression()) #10, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1713, metadata !DIExpression()) #10, !dbg !3247
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3251
  store i32 10, i32* %6, align 8, !dbg !3252, !tbaa !1646
  %7 = icmp ne i8* %0, null, !dbg !3253
  %8 = icmp ne i8* %1, null, !dbg !3254
  %9 = and i1 %7, %8, !dbg !3255
  br i1 %9, label %11, label %10, !dbg !3255

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3256
  unreachable, !dbg !3256

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3257
  store i8* %0, i8** %12, align 8, !dbg !3258, !tbaa !1731
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3259
  store i8* %1, i8** %13, align 8, !dbg !3260, !tbaa !1734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3171, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3246
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3261
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3262
  ret i8* %14, !dbg !3263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3264 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3268, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8* %1, metadata !3269, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %2, metadata !3270, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %3, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()) #10, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #10, !dbg !3278
  call void @llvm.dbg.value(metadata i8* %1, metadata !3168, metadata !DIExpression()) #10, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %2, metadata !3169, metadata !DIExpression()) #10, !dbg !3280
  call void @llvm.dbg.value(metadata i64 %3, metadata !3170, metadata !DIExpression()) #10, !dbg !3281
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3283, !tbaa.struct !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3171, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1713, metadata !DIExpression()) #10, !dbg !3285
  call void @llvm.dbg.value(metadata i8* %0, metadata !1714, metadata !DIExpression()) #10, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %1, metadata !1715, metadata !DIExpression()) #10, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1713, metadata !DIExpression()) #10, !dbg !3285
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3289
  store i32 10, i32* %7, align 8, !dbg !3290, !tbaa !1646
  %8 = icmp ne i8* %0, null, !dbg !3291
  %9 = icmp ne i8* %1, null, !dbg !3292
  %10 = and i1 %8, %9, !dbg !3293
  br i1 %10, label %12, label %11, !dbg !3293

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3294
  unreachable, !dbg !3294

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3295
  store i8* %0, i8** %13, align 8, !dbg !3296, !tbaa !1731
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3297
  store i8* %1, i8** %14, align 8, !dbg !3298, !tbaa !1734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3171, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3284
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3300
  ret i8* %15, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %1, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3308, metadata !DIExpression()), !dbg !3311
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3312
  ret i8* %4, !dbg !3313
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3318, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %1, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3306, metadata !DIExpression()) #10, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()) #10, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()) #10, !dbg !3325
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3326
  ret i8* %3, !dbg !3327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %1, metadata !3333, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 %0, metadata !3306, metadata !DIExpression()) #10, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %1, metadata !3307, metadata !DIExpression()) #10, !dbg !3338
  call void @llvm.dbg.value(metadata i64 -1, metadata !3308, metadata !DIExpression()) #10, !dbg !3339
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3340
  ret i8* %3, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 0, metadata !3332, metadata !DIExpression()) #10, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %0, metadata !3333, metadata !DIExpression()) #10, !dbg !3350
  call void @llvm.dbg.value(metadata i32 0, metadata !3306, metadata !DIExpression()) #10, !dbg !3351
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()) #10, !dbg !3353
  call void @llvm.dbg.value(metadata i64 -1, metadata !3308, metadata !DIExpression()) #10, !dbg !3354
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3355
  ret i8* %2, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3357 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3396, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %1, metadata !3397, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8* %2, metadata !3398, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8* %3, metadata !3399, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8** %4, metadata !3400, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %5, metadata !3401, metadata !DIExpression()), !dbg !3407
  %7 = icmp eq i8* %1, null, !dbg !3408
  br i1 %7, label %10, label %8, !dbg !3410

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3411
  br label %12, !dbg !3411

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3412
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #10, !dbg !3413
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3413
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.81, i64 0, i64 0), i32 5) #10, !dbg !3414
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3414
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
  ], !dbg !3415

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3416
  unreachable, !dbg !3416

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #10, !dbg !3418
  %20 = load i8*, i8** %4, align 8, !dbg !3418, !tbaa !749
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3418
  br label %146, !dbg !3419

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.83, i64 0, i64 0), i32 5) #10, !dbg !3420
  %24 = load i8*, i8** %4, align 8, !dbg !3420, !tbaa !749
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3420
  %26 = load i8*, i8** %25, align 8, !dbg !3420, !tbaa !749
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3420
  br label %146, !dbg !3421

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #10, !dbg !3422
  %30 = load i8*, i8** %4, align 8, !dbg !3422, !tbaa !749
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3422
  %32 = load i8*, i8** %31, align 8, !dbg !3422, !tbaa !749
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3422
  %34 = load i8*, i8** %33, align 8, !dbg !3422, !tbaa !749
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3422
  br label %146, !dbg !3423

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #10, !dbg !3424
  %38 = load i8*, i8** %4, align 8, !dbg !3424, !tbaa !749
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3424
  %40 = load i8*, i8** %39, align 8, !dbg !3424, !tbaa !749
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3424
  %42 = load i8*, i8** %41, align 8, !dbg !3424, !tbaa !749
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3424
  %44 = load i8*, i8** %43, align 8, !dbg !3424, !tbaa !749
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3424
  br label %146, !dbg !3425

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #10, !dbg !3426
  %48 = load i8*, i8** %4, align 8, !dbg !3426, !tbaa !749
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3426
  %50 = load i8*, i8** %49, align 8, !dbg !3426, !tbaa !749
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3426
  %52 = load i8*, i8** %51, align 8, !dbg !3426, !tbaa !749
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3426
  %54 = load i8*, i8** %53, align 8, !dbg !3426, !tbaa !749
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3426
  %56 = load i8*, i8** %55, align 8, !dbg !3426, !tbaa !749
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3426
  br label %146, !dbg !3427

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #10, !dbg !3428
  %60 = load i8*, i8** %4, align 8, !dbg !3428, !tbaa !749
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3428
  %62 = load i8*, i8** %61, align 8, !dbg !3428, !tbaa !749
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3428
  %64 = load i8*, i8** %63, align 8, !dbg !3428, !tbaa !749
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3428
  %66 = load i8*, i8** %65, align 8, !dbg !3428, !tbaa !749
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3428
  %68 = load i8*, i8** %67, align 8, !dbg !3428, !tbaa !749
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3428
  %70 = load i8*, i8** %69, align 8, !dbg !3428, !tbaa !749
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3428
  br label %146, !dbg !3429

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #10, !dbg !3430
  %74 = load i8*, i8** %4, align 8, !dbg !3430, !tbaa !749
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3430
  %76 = load i8*, i8** %75, align 8, !dbg !3430, !tbaa !749
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3430
  %78 = load i8*, i8** %77, align 8, !dbg !3430, !tbaa !749
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3430
  %80 = load i8*, i8** %79, align 8, !dbg !3430, !tbaa !749
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3430
  %82 = load i8*, i8** %81, align 8, !dbg !3430, !tbaa !749
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3430
  %84 = load i8*, i8** %83, align 8, !dbg !3430, !tbaa !749
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3430
  %86 = load i8*, i8** %85, align 8, !dbg !3430, !tbaa !749
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3430
  br label %146, !dbg !3431

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #10, !dbg !3432
  %90 = load i8*, i8** %4, align 8, !dbg !3432, !tbaa !749
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3432
  %92 = load i8*, i8** %91, align 8, !dbg !3432, !tbaa !749
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3432
  %94 = load i8*, i8** %93, align 8, !dbg !3432, !tbaa !749
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3432
  %96 = load i8*, i8** %95, align 8, !dbg !3432, !tbaa !749
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3432
  %98 = load i8*, i8** %97, align 8, !dbg !3432, !tbaa !749
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3432
  %100 = load i8*, i8** %99, align 8, !dbg !3432, !tbaa !749
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3432
  %102 = load i8*, i8** %101, align 8, !dbg !3432, !tbaa !749
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3432
  %104 = load i8*, i8** %103, align 8, !dbg !3432, !tbaa !749
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3432
  br label %146, !dbg !3433

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #10, !dbg !3434
  %108 = load i8*, i8** %4, align 8, !dbg !3434, !tbaa !749
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3434
  %110 = load i8*, i8** %109, align 8, !dbg !3434, !tbaa !749
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3434
  %112 = load i8*, i8** %111, align 8, !dbg !3434, !tbaa !749
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3434
  %114 = load i8*, i8** %113, align 8, !dbg !3434, !tbaa !749
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3434
  %116 = load i8*, i8** %115, align 8, !dbg !3434, !tbaa !749
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3434
  %118 = load i8*, i8** %117, align 8, !dbg !3434, !tbaa !749
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3434
  %120 = load i8*, i8** %119, align 8, !dbg !3434, !tbaa !749
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3434
  %122 = load i8*, i8** %121, align 8, !dbg !3434, !tbaa !749
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3434
  %124 = load i8*, i8** %123, align 8, !dbg !3434, !tbaa !749
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3434
  br label %146, !dbg !3435

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #10, !dbg !3436
  %128 = load i8*, i8** %4, align 8, !dbg !3436, !tbaa !749
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3436
  %130 = load i8*, i8** %129, align 8, !dbg !3436, !tbaa !749
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3436
  %132 = load i8*, i8** %131, align 8, !dbg !3436, !tbaa !749
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3436
  %134 = load i8*, i8** %133, align 8, !dbg !3436, !tbaa !749
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3436
  %136 = load i8*, i8** %135, align 8, !dbg !3436, !tbaa !749
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3436
  %138 = load i8*, i8** %137, align 8, !dbg !3436, !tbaa !749
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3436
  %140 = load i8*, i8** %139, align 8, !dbg !3436, !tbaa !749
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3436
  %142 = load i8*, i8** %141, align 8, !dbg !3436, !tbaa !749
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3436
  %144 = load i8*, i8** %143, align 8, !dbg !3436, !tbaa !749
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3436
  br label %146, !dbg !3437

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3439 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8* %1, metadata !3444, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8* %2, metadata !3445, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8** %4, metadata !3447, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 0, metadata !3448, metadata !DIExpression()), !dbg !3454
  br label %6, !dbg !3455

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3457
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3454
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3459
  %9 = load i8*, i8** %8, align 8, !dbg !3459, !tbaa !749
  %10 = icmp eq i8* %9, null, !dbg !3460
  %11 = add i64 %7, 1, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %11, metadata !3448, metadata !DIExpression()), !dbg !3454
  br i1 %10, label %12, label %6, !dbg !3460, !llvm.loop !3462

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %7, metadata !3448, metadata !DIExpression()), !dbg !3454
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3464
  ret void, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3466 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3477, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %1, metadata !3478, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %2, metadata !3479, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8* %3, metadata !3480, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3481, metadata !DIExpression()), !dbg !3489
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3490
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3490
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3483, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 0, metadata !3482, metadata !DIExpression()), !dbg !3492
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3482, metadata !DIExpression()), !dbg !3492
  %11 = load i32, i32* %8, align 8, !dbg !3493
  %12 = icmp ult i32 %11, 41, !dbg !3493
  br i1 %12, label %13, label %18, !dbg !3493

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3493
  %15 = sext i32 %11 to i64, !dbg !3493
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3493
  %17 = add i32 %11, 8, !dbg !3493
  store i32 %17, i32* %8, align 8, !dbg !3493
  br label %21, !dbg !3493

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3493
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3493
  store i8* %20, i8** %10, align 8, !dbg !3493
  br label %21, !dbg !3493

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3493
  %25 = load i8*, i8** %24, align 8, !dbg !3493
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3496
  store i8* %25, i8** %26, align 16, !dbg !3497, !tbaa !749
  %27 = icmp eq i8* %25, null, !dbg !3498
  br i1 %27, label %30, label %28, !dbg !3499

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 1, metadata !3482, metadata !DIExpression()), !dbg !3492
  %29 = icmp ult i32 %22, 41, !dbg !3493
  br i1 %29, label %35, label %32, !dbg !3493

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3500
  call void @llvm.dbg.value(metadata i64 %31, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %31, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3501
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3502
  ret void, !dbg !3502

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3493
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3493
  store i8* %34, i8** %10, align 8, !dbg !3493
  br label %40, !dbg !3493

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3493
  %37 = sext i32 %22 to i64, !dbg !3493
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3493
  %39 = add i32 %22, 8, !dbg !3493
  store i32 %39, i32* %8, align 8, !dbg !3493
  br label %40, !dbg !3493

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3493
  %44 = load i8*, i8** %43, align 8, !dbg !3493
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3496
  store i8* %44, i8** %45, align 8, !dbg !3497, !tbaa !749
  %46 = icmp eq i8* %44, null, !dbg !3498
  br i1 %46, label %30, label %47, !dbg !3499

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 2, metadata !3482, metadata !DIExpression()), !dbg !3492
  %48 = icmp ult i32 %41, 41, !dbg !3493
  br i1 %48, label %52, label %49, !dbg !3493

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3493
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3493
  store i8* %51, i8** %10, align 8, !dbg !3493
  br label %57, !dbg !3493

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3493
  %54 = sext i32 %41 to i64, !dbg !3493
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3493
  %56 = add i32 %41, 8, !dbg !3493
  store i32 %56, i32* %8, align 8, !dbg !3493
  br label %57, !dbg !3493

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3493
  %61 = load i8*, i8** %60, align 8, !dbg !3493
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3496
  store i8* %61, i8** %62, align 16, !dbg !3497, !tbaa !749
  %63 = icmp eq i8* %61, null, !dbg !3498
  br i1 %63, label %30, label %64, !dbg !3499

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 3, metadata !3482, metadata !DIExpression()), !dbg !3492
  %65 = icmp ult i32 %58, 41, !dbg !3493
  br i1 %65, label %69, label %66, !dbg !3493

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3493
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3493
  store i8* %68, i8** %10, align 8, !dbg !3493
  br label %74, !dbg !3493

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3493
  %71 = sext i32 %58 to i64, !dbg !3493
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3493
  %73 = add i32 %58, 8, !dbg !3493
  store i32 %73, i32* %8, align 8, !dbg !3493
  br label %74, !dbg !3493

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3493
  %78 = load i8*, i8** %77, align 8, !dbg !3493
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3496
  store i8* %78, i8** %79, align 8, !dbg !3497, !tbaa !749
  %80 = icmp eq i8* %78, null, !dbg !3498
  br i1 %80, label %30, label %81, !dbg !3499

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 4, metadata !3482, metadata !DIExpression()), !dbg !3492
  %82 = icmp ult i32 %75, 41, !dbg !3493
  br i1 %82, label %86, label %83, !dbg !3493

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3493
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3493
  store i8* %85, i8** %10, align 8, !dbg !3493
  br label %91, !dbg !3493

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3493
  %88 = sext i32 %75 to i64, !dbg !3493
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3493
  %90 = add i32 %75, 8, !dbg !3493
  store i32 %90, i32* %8, align 8, !dbg !3493
  br label %91, !dbg !3493

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3493
  %95 = load i8*, i8** %94, align 8, !dbg !3493
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3496
  store i8* %95, i8** %96, align 16, !dbg !3497, !tbaa !749
  %97 = icmp eq i8* %95, null, !dbg !3498
  br i1 %97, label %30, label %98, !dbg !3499

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 5, metadata !3482, metadata !DIExpression()), !dbg !3492
  %99 = icmp ult i32 %92, 41, !dbg !3493
  br i1 %99, label %103, label %100, !dbg !3493

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3493
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3493
  store i8* %102, i8** %10, align 8, !dbg !3493
  br label %108, !dbg !3493

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3493
  %105 = sext i32 %92 to i64, !dbg !3493
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3493
  %107 = add i32 %92, 8, !dbg !3493
  store i32 %107, i32* %8, align 8, !dbg !3493
  br label %108, !dbg !3493

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3493
  %111 = load i8*, i8** %110, align 8, !dbg !3493
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3496
  store i8* %111, i8** %112, align 8, !dbg !3497, !tbaa !749
  %113 = icmp eq i8* %111, null, !dbg !3498
  br i1 %113, label %30, label %114, !dbg !3499

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 6, metadata !3482, metadata !DIExpression()), !dbg !3492
  %115 = load i8*, i8** %10, align 8, !dbg !3493
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3493
  store i8* %116, i8** %10, align 8, !dbg !3493
  %117 = bitcast i8* %115 to i8**, !dbg !3493
  %118 = load i8*, i8** %117, align 8, !dbg !3493
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3496
  store i8* %118, i8** %119, align 16, !dbg !3497, !tbaa !749
  %120 = icmp eq i8* %118, null, !dbg !3498
  br i1 %120, label %30, label %121, !dbg !3499

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 7, metadata !3482, metadata !DIExpression()), !dbg !3492
  %122 = load i8*, i8** %10, align 8, !dbg !3493
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3493
  store i8* %123, i8** %10, align 8, !dbg !3493
  %124 = bitcast i8* %122 to i8**, !dbg !3493
  %125 = load i8*, i8** %124, align 8, !dbg !3493
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3496
  store i8* %125, i8** %126, align 8, !dbg !3497, !tbaa !749
  %127 = icmp eq i8* %125, null, !dbg !3498
  br i1 %127, label %30, label %128, !dbg !3499

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 8, metadata !3482, metadata !DIExpression()), !dbg !3492
  %129 = load i8*, i8** %10, align 8, !dbg !3493
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3493
  store i8* %130, i8** %10, align 8, !dbg !3493
  %131 = bitcast i8* %129 to i8**, !dbg !3493
  %132 = load i8*, i8** %131, align 8, !dbg !3493
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3496
  store i8* %132, i8** %133, align 16, !dbg !3497, !tbaa !749
  %134 = icmp eq i8* %132, null, !dbg !3498
  br i1 %134, label %30, label %135, !dbg !3499

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3482, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 9, metadata !3482, metadata !DIExpression()), !dbg !3492
  %136 = load i8*, i8** %10, align 8, !dbg !3493
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3493
  store i8* %137, i8** %10, align 8, !dbg !3493
  %138 = bitcast i8* %136 to i8**, !dbg !3493
  %139 = load i8*, i8** %138, align 8, !dbg !3493
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3496
  store i8* %139, i8** %140, align 8, !dbg !3497, !tbaa !749
  %141 = icmp eq i8* %139, null, !dbg !3498
  %142 = select i1 %141, i64 9, i64 10, !dbg !3499
  br label %30, !dbg !3499
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3503 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3507, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8* %1, metadata !3508, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %2, metadata !3509, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %3, metadata !3510, metadata !DIExpression()), !dbg !3520
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3521
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3521
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3511, metadata !DIExpression()), !dbg !3522
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3523
  call void @llvm.va_start(i8* nonnull %6), !dbg !3523
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3524
  call void @llvm.va_end(i8* nonnull %6), !dbg !3525
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3526
  ret void, !dbg !3526
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3527 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #10, !dbg !3528
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.95, i64 0, i64 0)) #10, !dbg !3528
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #10, !dbg !3529
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.98, i64 0, i64 0)) #10, !dbg !3529
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.99, i64 0, i64 0), i32 5) #10, !dbg !3530
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3530, !tbaa !749
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3530
  ret void, !dbg !3531
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3532 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3536, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %1, metadata !3537, metadata !DIExpression()), !dbg !3539
  %3 = udiv i64 9223372036854775807, %1, !dbg !3540
  %4 = icmp ult i64 %3, %0, !dbg !3540
  br i1 %4, label %5, label %6, !dbg !3542

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3543
  unreachable, !dbg !3543

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %7, metadata !3545, metadata !DIExpression()) #10, !dbg !3552
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %8, metadata !3551, metadata !DIExpression()) #10, !dbg !3555
  %9 = icmp eq i8* %8, null, !dbg !3556
  %10 = icmp ne i64 %7, 0, !dbg !3558
  %11 = and i1 %10, %9, !dbg !3559
  br i1 %11, label %12, label %13, !dbg !3559

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3560
  unreachable, !dbg !3560

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3561
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3546 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()), !dbg !3562
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %2, metadata !3551, metadata !DIExpression()), !dbg !3564
  %3 = icmp eq i8* %2, null, !dbg !3565
  %4 = icmp ne i64 %0, 0, !dbg !3566
  %5 = and i1 %4, %3, !dbg !3567
  br i1 %5, label %6, label %7, !dbg !3567

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3568
  unreachable, !dbg !3568

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3569
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3570 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %2, metadata !3576, metadata !DIExpression()), !dbg !3579
  %4 = udiv i64 9223372036854775807, %2, !dbg !3580
  %5 = icmp ult i64 %4, %1, !dbg !3580
  br i1 %5, label %6, label %7, !dbg !3582

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3583
  unreachable, !dbg !3583

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()) #10, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %8, metadata !3590, metadata !DIExpression()) #10, !dbg !3593
  %9 = icmp eq i64 %8, 0, !dbg !3594
  %10 = icmp ne i8* %0, null, !dbg !3596
  %11 = and i1 %10, %9, !dbg !3597
  br i1 %11, label %12, label %13, !dbg !3597

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3598
  br label %19, !dbg !3600

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3601
  call void @llvm.dbg.value(metadata i8* %14, metadata !3585, metadata !DIExpression()) #10, !dbg !3591
  %15 = icmp eq i8* %14, null, !dbg !3602
  %16 = icmp ne i64 %8, 0, !dbg !3604
  %17 = and i1 %16, %15, !dbg !3605
  br i1 %17, label %18, label %19, !dbg !3605

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3606
  unreachable, !dbg !3606

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3607
  ret i8* %20, !dbg !3608
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()), !dbg !3610
  %3 = icmp eq i64 %1, 0, !dbg !3611
  %4 = icmp ne i8* %0, null, !dbg !3612
  %5 = and i1 %4, %3, !dbg !3613
  br i1 %5, label %6, label %7, !dbg !3613

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3614
  br label %13, !dbg !3615

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %8, metadata !3585, metadata !DIExpression()), !dbg !3609
  %9 = icmp eq i8* %8, null, !dbg !3617
  %10 = icmp ne i64 %1, 0, !dbg !3618
  %11 = and i1 %10, %9, !dbg !3619
  br i1 %11, label %12, label %13, !dbg !3619

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3620
  unreachable, !dbg !3620

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3621
  ret i8* %14, !dbg !3622
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !295 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !297, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64* %1, metadata !298, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %2, metadata !299, metadata !DIExpression()), !dbg !3625
  %4 = load i64, i64* %1, align 8, !dbg !3626, !tbaa !919
  call void @llvm.dbg.value(metadata i64 %4, metadata !300, metadata !DIExpression()), !dbg !3627
  %5 = icmp eq i8* %0, null, !dbg !3628
  br i1 %5, label %6, label %20, !dbg !3630

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3631
  br i1 %7, label %8, label %13, !dbg !3634

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %9, metadata !300, metadata !DIExpression()), !dbg !3627
  %10 = icmp ugt i64 %2, 128, !dbg !3637
  %11 = zext i1 %10 to i64, !dbg !3637
  %12 = add nuw nsw i64 %9, %11, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %12, metadata !300, metadata !DIExpression()), !dbg !3627
  br label %13, !dbg !3639

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3640
  call void @llvm.dbg.value(metadata i64 %14, metadata !300, metadata !DIExpression()), !dbg !3627
  %15 = udiv i64 9223372036854775807, %2, !dbg !3641
  %16 = icmp ult i64 %15, %14, !dbg !3641
  br i1 %16, label %19, label %17, !dbg !3643

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !300, metadata !DIExpression()), !dbg !3627
  store i64 %14, i64* %1, align 8, !dbg !3644, !tbaa !919
  %18 = mul i64 %14, %2, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()) #10, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %28, metadata !3590, metadata !DIExpression()) #10, !dbg !3648
  br label %31, !dbg !3649

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3650
  unreachable, !dbg !3650

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3651
  %22 = icmp ugt i64 %21, %4, !dbg !3654
  br i1 %22, label %24, label %23, !dbg !3655

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3656
  unreachable, !dbg !3656

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3657
  %26 = add i64 %4, 1, !dbg !3658
  %27 = add i64 %26, %25, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %27, metadata !300, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %27, metadata !300, metadata !DIExpression()), !dbg !3627
  store i64 %27, i64* %1, align 8, !dbg !3644, !tbaa !919
  %28 = mul i64 %27, %2, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()) #10, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %28, metadata !3590, metadata !DIExpression()) #10, !dbg !3648
  %29 = icmp eq i64 %28, 0, !dbg !3660
  br i1 %29, label %30, label %31, !dbg !3649

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3661
  br label %38, !dbg !3662

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %33, metadata !3585, metadata !DIExpression()) #10, !dbg !3646
  %34 = icmp eq i8* %33, null, !dbg !3664
  %35 = icmp ne i64 %32, 0, !dbg !3665
  %36 = and i1 %35, %34, !dbg !3666
  br i1 %36, label %37, label %38, !dbg !3666

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3667
  unreachable, !dbg !3667

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3668
  ret i8* %39, !dbg !3669
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3670 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()) #10, !dbg !3674
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %2, metadata !3551, metadata !DIExpression()) #10, !dbg !3677
  %3 = icmp eq i8* %2, null, !dbg !3678
  %4 = icmp ne i64 %0, 0, !dbg !3679
  %5 = and i1 %4, %3, !dbg !3680
  br i1 %5, label %6, label %7, !dbg !3680

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3681
  unreachable, !dbg !3681

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64* %1, metadata !3688, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i8* %0, metadata !297, metadata !DIExpression()) #10, !dbg !3691
  call void @llvm.dbg.value(metadata i64* %1, metadata !298, metadata !DIExpression()) #10, !dbg !3693
  call void @llvm.dbg.value(metadata i64 1, metadata !299, metadata !DIExpression()) #10, !dbg !3694
  %3 = load i64, i64* %1, align 8, !dbg !3695, !tbaa !919
  call void @llvm.dbg.value(metadata i64 %3, metadata !300, metadata !DIExpression()) #10, !dbg !3696
  %4 = icmp eq i8* %0, null, !dbg !3697
  br i1 %4, label %5, label %12, !dbg !3698

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3699
  br i1 %6, label %9, label %7, !dbg !3700

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !300, metadata !DIExpression()) #10, !dbg !3696
  %8 = icmp slt i64 %3, 0, !dbg !3701
  br i1 %8, label %11, label %9, !dbg !3702

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !300, metadata !DIExpression()) #10, !dbg !3696
  store i64 %10, i64* %1, align 8, !dbg !3703, !tbaa !919
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %18, metadata !3590, metadata !DIExpression()) #10, !dbg !3706
  br label %21, !dbg !3707

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3708
  unreachable, !dbg !3708

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3709
  br i1 %13, label %15, label %14, !dbg !3710

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3711
  unreachable, !dbg !3711

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3712
  %17 = add i64 %3, 1, !dbg !3713
  %18 = add i64 %17, %16, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %18, metadata !300, metadata !DIExpression()) #10, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %18, metadata !300, metadata !DIExpression()) #10, !dbg !3696
  store i64 %18, i64* %1, align 8, !dbg !3703, !tbaa !919
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %18, metadata !3590, metadata !DIExpression()) #10, !dbg !3706
  %19 = icmp eq i64 %18, 0, !dbg !3715
  br i1 %19, label %20, label %21, !dbg !3707

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3716
  br label %28, !dbg !3717

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %23, metadata !3585, metadata !DIExpression()) #10, !dbg !3704
  %24 = icmp eq i8* %23, null, !dbg !3719
  %25 = icmp ne i64 %22, 0, !dbg !3720
  %26 = and i1 %25, %24, !dbg !3721
  br i1 %26, label %27, label %28, !dbg !3721

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3722
  unreachable, !dbg !3722

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3723
  ret i8* %29, !dbg !3724
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3725 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()) #10, !dbg !3729
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %2, metadata !3551, metadata !DIExpression()) #10, !dbg !3732
  %3 = icmp eq i8* %2, null, !dbg !3733
  %4 = icmp ne i64 %0, 0, !dbg !3734
  %5 = and i1 %4, %3, !dbg !3735
  br i1 %5, label %6, label %7, !dbg !3735

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3736
  unreachable, !dbg !3736

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3737
  ret i8* %2, !dbg !3738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3739 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3741, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3745
  %3 = udiv i64 9223372036854775807, %1, !dbg !3746
  %4 = icmp ult i64 %3, %0, !dbg !3746
  br i1 %4, label %8, label %5, !dbg !3748

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %6, metadata !3743, metadata !DIExpression()), !dbg !3750
  %7 = icmp eq i8* %6, null, !dbg !3751
  br i1 %7, label %8, label %9, !dbg !3752

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3753
  unreachable, !dbg !3753

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3762, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()) #10, !dbg !3765
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3767
  call void @llvm.dbg.value(metadata i8* %3, metadata !3551, metadata !DIExpression()) #10, !dbg !3768
  %4 = icmp eq i8* %3, null, !dbg !3769
  %5 = icmp ne i64 %1, 0, !dbg !3770
  %6 = and i1 %5, %4, !dbg !3771
  br i1 %6, label %7, label %8, !dbg !3771

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3772
  unreachable, !dbg !3772

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3773
  ret i8* %3, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3775 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3777, metadata !DIExpression()), !dbg !3778
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3779
  %3 = add i64 %2, 1, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %0, metadata !3761, metadata !DIExpression()) #10, !dbg !3781
  call void @llvm.dbg.value(metadata i64 %3, metadata !3762, metadata !DIExpression()) #10, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %3, metadata !3545, metadata !DIExpression()) #10, !dbg !3784
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %4, metadata !3551, metadata !DIExpression()) #10, !dbg !3787
  %5 = icmp eq i8* %4, null, !dbg !3788
  %6 = icmp ne i64 %3, 0, !dbg !3789
  %7 = and i1 %6, %5, !dbg !3790
  br i1 %7, label %8, label %9, !dbg !3790

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3791
  unreachable, !dbg !3791

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3792
  ret i8* %4, !dbg !3793
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3794 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3796, !tbaa !853
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #10, !dbg !3797
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #10, !dbg !3798
  tail call void @abort() #15, !dbg !3799
  unreachable, !dbg !3799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3800 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %1, metadata !3804, metadata !DIExpression()), !dbg !3807
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #10, !dbg !3808
  call void @llvm.dbg.value(metadata i8* %3, metadata !3805, metadata !DIExpression()), !dbg !3809
  %4 = icmp eq i8* %3, null, !dbg !3810
  br i1 %4, label %5, label %6, !dbg !3812

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3813
  unreachable, !dbg !3813

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3814
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3815 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3818, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %1, metadata !3819, metadata !DIExpression()), !dbg !3825
  %3 = icmp eq i64 %0, 0, !dbg !3826
  %4 = icmp eq i64 %1, 0, !dbg !3827
  %5 = or i1 %3, %4, !dbg !3828
  br i1 %5, label %12, label %6, !dbg !3828

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %7, metadata !3821, metadata !DIExpression()), !dbg !3830
  %8 = udiv i64 %7, %1, !dbg !3831
  %9 = icmp eq i64 %8, %0, !dbg !3833
  br i1 %9, label %12, label %10, !dbg !3834

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3835
  store i32 12, i32* %11, align 4, !dbg !3837, !tbaa !853
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3818, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %13, metadata !3819, metadata !DIExpression()), !dbg !3825
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3838
  call void @llvm.dbg.value(metadata i8* %15, metadata !3820, metadata !DIExpression()), !dbg !3839
  br label %16, !dbg !3840

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3841
  ret i8* %17, !dbg !3842
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3843 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3882, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i32 0, metadata !3885, metadata !DIExpression()), !dbg !3888
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3889
  call void @llvm.dbg.value(metadata i32 %2, metadata !3884, metadata !DIExpression()), !dbg !3890
  %3 = icmp slt i32 %2, 0, !dbg !3891
  br i1 %3, label %4, label %6, !dbg !3893

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3894
  br label %24, !dbg !3895

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3896
  %8 = icmp eq i32 %7, 0, !dbg !3896
  br i1 %8, label %13, label %9, !dbg !3898

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3899
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3900
  %12 = icmp eq i64 %11, -1, !dbg !3901
  br i1 %12, label %16, label %13, !dbg !3902

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3903
  %15 = icmp eq i32 %14, 0, !dbg !3903
  br i1 %15, label %16, label %18, !dbg !3904

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3883, metadata !DIExpression()), !dbg !3887
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3905
  call void @llvm.dbg.value(metadata i32 %21, metadata !3885, metadata !DIExpression()), !dbg !3888
  br label %24, !dbg !3906

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3907
  %20 = load i32, i32* %19, align 4, !dbg !3907, !tbaa !853
  call void @llvm.dbg.value(metadata i32 %20, metadata !3883, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i32 %20, metadata !3883, metadata !DIExpression()), !dbg !3887
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3905
  call void @llvm.dbg.value(metadata i32 %21, metadata !3885, metadata !DIExpression()), !dbg !3888
  %22 = icmp eq i32 %20, 0, !dbg !3908
  br i1 %22, label %24, label %23, !dbg !3906

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3910, !tbaa !853
  call void @llvm.dbg.value(metadata i32 -1, metadata !3885, metadata !DIExpression()), !dbg !3888
  br label %24, !dbg !3912

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3913
  ret i32 %25, !dbg !3914
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3915 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3954, metadata !DIExpression()), !dbg !3955
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3956
  br i1 %2, label %6, label %3, !dbg !3958

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3959
  %5 = icmp eq i32 %4, 0, !dbg !3959
  br i1 %5, label %6, label %8, !dbg !3960

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3961
  br label %17, !dbg !3962

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3963, metadata !DIExpression()) #10, !dbg !3968
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3970
  %10 = load i32, i32* %9, align 8, !dbg !3970, !tbaa !1395
  %11 = and i32 %10, 256, !dbg !3972
  %12 = icmp eq i32 %11, 0, !dbg !3972
  br i1 %12, label %15, label %13, !dbg !3973

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3974
  br label %15, !dbg !3974

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3975
  br label %17, !dbg !3976

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3977
  ret i32 %18, !dbg !3978
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3979 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4018, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !4019, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %2, metadata !4020, metadata !DIExpression()), !dbg !4026
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4027
  %5 = load i8*, i8** %4, align 8, !dbg !4027, !tbaa !937
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4028
  %7 = load i8*, i8** %6, align 8, !dbg !4028, !tbaa !934
  %8 = icmp eq i8* %5, %7, !dbg !4029
  br i1 %8, label %9, label %28, !dbg !4030

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4031
  %11 = load i8*, i8** %10, align 8, !dbg !4031, !tbaa !975
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4032
  %13 = load i8*, i8** %12, align 8, !dbg !4032, !tbaa !4033
  %14 = icmp eq i8* %11, %13, !dbg !4034
  br i1 %14, label %15, label %28, !dbg !4035

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4036
  %17 = load i8*, i8** %16, align 8, !dbg !4036, !tbaa !4037
  %18 = icmp eq i8* %17, null, !dbg !4038
  br i1 %18, label %19, label %28, !dbg !4039

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4040
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4041
  call void @llvm.dbg.value(metadata i64 %21, metadata !4021, metadata !DIExpression()), !dbg !4042
  %22 = icmp eq i64 %21, -1, !dbg !4043
  br i1 %22, label %30, label %23, !dbg !4045

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4046
  %25 = load i32, i32* %24, align 8, !dbg !4047, !tbaa !1395
  %26 = and i32 %25, -17, !dbg !4047
  store i32 %26, i32* %24, align 8, !dbg !4047, !tbaa !1395
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4048
  store i64 %21, i64* %27, align 8, !dbg !4049, !tbaa !4050
  br label %30, !dbg !4051

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4052
  br label %30, !dbg !4053

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4054
  ret i32 %31, !dbg !4055
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4056 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4073, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8* %1, metadata !4074, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %2, metadata !4075, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4076, metadata !DIExpression()), !dbg !4085
  %6 = bitcast i32* %5 to i8*, !dbg !4086
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4086
  %7 = icmp eq i32* %0, null, !dbg !4087
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4089
  call void @llvm.dbg.value(metadata i32* %8, metadata !4073, metadata !DIExpression()), !dbg !4082
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %9, metadata !4077, metadata !DIExpression()), !dbg !4091
  %10 = icmp ugt i64 %9, -3, !dbg !4092
  %11 = icmp ne i64 %2, 0, !dbg !4093
  %12 = and i1 %11, %10, !dbg !4094
  br i1 %12, label %13, label %18, !dbg !4094

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4095
  br i1 %14, label %18, label %15, !dbg !4096

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4097, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %16, metadata !4079, metadata !DIExpression()), !dbg !4098
  %17 = zext i8 %16 to i32, !dbg !4099
  store i32 %17, i32* %8, align 4, !dbg !4100, !tbaa !853
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4102
  ret i64 %19, !dbg !4102
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4103 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4142, metadata !DIExpression()), !dbg !4147
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4148
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4149, metadata !DIExpression()), !dbg !4152
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4154
  %4 = load i32, i32* %3, align 8, !dbg !4154, !tbaa !1395
  %5 = and i32 %4, 32, !dbg !4154
  %6 = icmp eq i32 %5, 0, !dbg !4155
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4156
  %8 = icmp ne i32 %7, 0, !dbg !4157
  br i1 %6, label %9, label %19, !dbg !4158

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4160
  %11 = xor i1 %8, true, !dbg !4161
  %12 = or i1 %10, %11, !dbg !4161
  %13 = sext i1 %8 to i32, !dbg !4161
  br i1 %12, label %22, label %14, !dbg !4161

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4162
  %16 = load i32, i32* %15, align 4, !dbg !4162, !tbaa !853
  %17 = icmp ne i32 %16, 9, !dbg !4163
  %18 = sext i1 %17 to i32, !dbg !4164
  br label %22, !dbg !4164

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4165

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4167
  store i32 0, i32* %21, align 4, !dbg !4169, !tbaa !853
  br label %22, !dbg !4167

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4170
  ret i32 %23, !dbg !4171
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4172 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4177, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i8 1, metadata !4178, metadata !DIExpression()), !dbg !4181
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4182
  call void @llvm.dbg.value(metadata i8* %2, metadata !4179, metadata !DIExpression()), !dbg !4183
  %3 = icmp eq i8* %2, null, !dbg !4184
  br i1 %3, label %11, label %4, !dbg !4186

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i64 0, i64 0)) #14, !dbg !4187
  %6 = icmp eq i32 %5, 0, !dbg !4192
  br i1 %6, label %10, label %7, !dbg !4193

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0)) #14, !dbg !4194
  %9 = icmp eq i32 %8, 0, !dbg !4195
  br i1 %9, label %10, label %11, !dbg !4196

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4178, metadata !DIExpression()), !dbg !4181
  br label %11, !dbg !4197

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4198
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4199 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %1, metadata !4204, metadata !DIExpression()), !dbg !4206
  %2 = icmp eq i8* %1, null, !dbg !4207
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), i8* %1, !dbg !4209
  call void @llvm.dbg.value(metadata i8* %3, metadata !4204, metadata !DIExpression()), !dbg !4206
  %4 = load i8, i8* %3, align 1, !dbg !4210, !tbaa !844
  %5 = icmp eq i8 %4, 0, !dbg !4214
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i8* %3, !dbg !4215
  call void @llvm.dbg.value(metadata i8* %6, metadata !4204, metadata !DIExpression()), !dbg !4206
  ret i8* %6, !dbg !4216
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
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !51, !192, !198, !206, !280, !213, !220, !283, !273, !291, !302, !304, !306, !308, !310, !312, !314, !317, !319, !321}
!llvm.ident = !{!710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710}
!llvm.module.flags = !{!711, !712, !713, !714, !715}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 51, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !29)
!3 = !DIFile(filename: "src/expand.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !24, !25, !26, !27, !28}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !{!0, !30}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 53, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1280, elements: !44)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 50, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!36 = !{!37, !40, !41, !43}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 52, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 55, baseType: !25, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 56, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 57, baseType: !25, size: 32, offset: 192)
!44 = !{!45}
!45 = !DISubrange(count: 5)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 272, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 34)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !51, file: !52, line: 33, type: !180, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !93, globals: !99)
!52 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!53 = !{!5, !54, !68, !77}
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !55, line: 32, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!57 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!62 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!63 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!64 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!65 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!66 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!67 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 45, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!74 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!75 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !79, file: !78, line: 186, baseType: !7, size: 32, elements: !91)
!78 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!79 = distinct !DISubprogram(name: "x2nrealloc", scope: !78, file: !78, line: 174, type: !80, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !86)
!80 = !DISubroutineType(types: !81)
!81 = !{!24, !24, !82, !83}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 62, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!85 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: "p", arg: 1, scope: !79, file: !78, line: 174, type: !24)
!88 = !DILocalVariable(name: "pn", arg: 2, scope: !79, file: !78, line: 174, type: !82)
!89 = !DILocalVariable(name: "s", arg: 3, scope: !79, file: !78, line: 174, type: !83)
!90 = !DILocalVariable(name: "n", scope: !79, file: !78, line: 176, type: !83)
!91 = !{!92}
!92 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!93 = !{!25, !26, !7, !94, !24, !95, !83}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !96, line: 102, baseType: !97)
!96 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !98, line: 72, baseType: !85)
!98 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!99 = !{!49, !100, !102, !164, !166, !168, !170, !172, !174, !176, !178, !181, !186}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "exit_status", scope: !51, file: !52, line: 72, type: !25, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "prev_file", scope: !104, file: !52, line: 336, type: !22, isLocal: true, isDefinition: true)
!104 = distinct !DISubprogram(name: "next_file", scope: !52, file: !52, line: 334, type: !105, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !161)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !110)
!109 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !112)
!111 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !128, !130, !131, !132, !135, !136, !138, !142, !145, !147, !150, !153, !154, !155, !156, !157}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !110, file: !111, line: 51, baseType: !25, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !110, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !110, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !110, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !110, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !110, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !110, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !110, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !110, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !110, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !110, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !110, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !110, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 36, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !110, file: !111, line: 70, baseType: !129, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !110, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !110, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !110, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 150, baseType: !134)
!134 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !110, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !110, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!137 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !110, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 1)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !110, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !111, line: 43, baseType: null)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !110, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 151, baseType: !134)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !110, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !111, line: 37, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !110, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !111, line: 38, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !110, file: !111, line: 93, baseType: !129, size: 64, offset: 1344)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !110, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !110, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !110, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !110, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 20)
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "fp", arg: 1, scope: !104, file: !52, line: 334, type: !107)
!163 = !DILocalVariable(name: "file", scope: !104, file: !52, line: 337, type: !22)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "max_column_width", scope: !51, file: !52, line: 45, type: !83, isLocal: false, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !51, file: !52, line: 57, type: !83, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "tab_list", scope: !51, file: !52, line: 50, type: !94, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !51, file: !52, line: 53, type: !83, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "extend_size", scope: !51, file: !52, line: 39, type: !95, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "increment_size", scope: !51, file: !52, line: 42, type: !95, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "tab_size", scope: !51, file: !52, line: 36, type: !95, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !51, file: !52, line: 69, type: !180, isLocal: true, isDefinition: true)
!180 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !51, file: !52, line: 63, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 2)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "file_list", scope: !51, file: !52, line: 60, type: !188, isLocal: true, isDefinition: true)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!189 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "Version", scope: !192, file: !193, line: 2, type: !38, isLocal: false, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !195)
!193 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = !{}
!195 = !{!190}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "file_name", scope: !198, file: !203, line: 46, type: !38, isLocal: true, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !200)
!199 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = !{!196, !201}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !198, file: !203, line: 56, type: !180, isLocal: true, isDefinition: true)
!203 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "exit_failure", scope: !206, file: !209, line: 24, type: !210, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !208)
!207 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!208 = !{!204}
!209 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "program_name", scope: !213, file: !217, line: 33, type: !38, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !215, globals: !216)
!214 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!215 = !{!24, !22}
!216 = !{!211}
!217 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !220, file: !232, line: 85, type: !267, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !228, globals: !229)
!221 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = !{!54, !223, !5}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !55, line: 242, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!226 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!227 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!228 = !{!25, !26, !83, !22}
!229 = !{!218, !230, !237, !249, !251, !256, !263, !265}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !220, file: !232, line: 101, type: !233, isLocal: false, isDefinition: true)
!232 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 320, elements: !235)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!235 = !{!236}
!236 = !DISubrange(count: 10)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !220, file: !232, line: 1052, type: !239, isLocal: false, isDefinition: true)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !232, line: 65, size: 448, elements: !240)
!240 = !{!241, !242, !243, !247, !248}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !239, file: !232, line: 68, baseType: !54, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !239, file: !232, line: 71, baseType: !25, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !239, file: !232, line: 75, baseType: !244, size: 256, offset: 64)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !239, file: !232, line: 78, baseType: !38, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !239, file: !232, line: 81, baseType: !38, size: 64, offset: 384)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !220, file: !232, line: 116, type: !239, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "slot0", scope: !220, file: !232, line: 842, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 256)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "slotvec", scope: !220, file: !232, line: 845, type: !258, isLocal: true, isDefinition: true)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !232, line: 834, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !259, file: !232, line: 836, baseType: !83, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !259, file: !232, line: 837, baseType: !22, size: 64, offset: 64)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "nslots", scope: !220, file: !232, line: 843, type: !25, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "slotvec0", scope: !220, file: !232, line: 844, type: !259, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 704, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!269 = !{!270}
!270 = !DISubrange(count: 11)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !273, file: !276, line: 26, type: !277, isLocal: false, isDefinition: true)
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !275)
!274 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!275 = !{!271}
!276 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 47)
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !282)
!281 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!282 = !{!68}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !290)
!284 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = !{!286}
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !287, line: 41, baseType: !7, size: 32, elements: !288)
!287 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!288 = !{!289}
!289 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!290 = !{!24}
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !293, retainedTypes: !301)
!292 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!293 = !{!294}
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !295, file: !78, line: 186, baseType: !7, size: 32, elements: !91)
!295 = distinct !DISubprogram(name: "x2nrealloc", scope: !78, file: !78, line: 174, type: !80, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DILocalVariable(name: "p", arg: 1, scope: !295, file: !78, line: 174, type: !24)
!298 = !DILocalVariable(name: "pn", arg: 2, scope: !295, file: !78, line: 174, type: !82)
!299 = !DILocalVariable(name: "s", arg: 3, scope: !295, file: !78, line: 174, type: !83)
!300 = !DILocalVariable(name: "n", scope: !295, file: !78, line: 176, type: !83)
!301 = !{!83, !22, !24}
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194)
!303 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194)
!305 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !290)
!307 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194)
!309 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !290)
!311 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !290)
!313 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !316)
!315 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!316 = !{!83}
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194)
!318 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194)
!320 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !323, retainedTypes: !290)
!322 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!323 = !{!324}
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !325, line: 41, baseType: !7, size: 32, elements: !326)
!325 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!327 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!328 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!329 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!330 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!331 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!332 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!333 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!334 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!335 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!336 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!337 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!338 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!339 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!340 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!343 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!344 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!345 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!346 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!347 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!348 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!349 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!350 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!351 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!352 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!355 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!356 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!357 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!358 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!359 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!360 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!361 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!362 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!363 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!364 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!365 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!366 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!367 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!368 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!369 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!370 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!371 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!372 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!373 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!374 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!375 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!376 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!435 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!440 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!441 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!442 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!443 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!444 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!445 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!446 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!447 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!448 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!449 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!522 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!595 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!596 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!597 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!598 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!599 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!600 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!601 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!602 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!603 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!604 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!605 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!606 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!607 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!608 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!609 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!611 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!612 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!613 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!614 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!615 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!616 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!642 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!643 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!644 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!645 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!646 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!651 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!652 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!653 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!654 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!710 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!711 = !{i32 2, !"Dwarf Version", i32 4}
!712 = !{i32 2, !"Debug Info Version", i32 3}
!713 = !{i32 1, !"wchar_size", i32 4}
!714 = !{i32 7, !"PIC Level", i32 2}
!715 = !{i32 7, !"PIE Level", i32 2}
!716 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 63, type: !717, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !25}
!719 = !{!720}
!720 = !DILocalVariable(name: "status", arg: 1, scope: !716, file: !3, line: 63, type: !25)
!721 = !DILocalVariable(name: "infomap", scope: !722, file: !723, line: 632, type: !737)
!722 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !723, file: !723, line: 630, type: !724, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !726)
!723 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!724 = !DISubroutineType(types: !725)
!725 = !{null, !38}
!726 = !{!727, !721, !728, !729, !736}
!727 = !DILocalVariable(name: "program", arg: 1, scope: !722, file: !723, line: 630, type: !38)
!728 = !DILocalVariable(name: "node", scope: !722, file: !723, line: 642, type: !38)
!729 = !DILocalVariable(name: "map_prog", scope: !722, file: !723, line: 643, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !722, file: !723, line: 632, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !732, file: !723, line: 632, baseType: !38, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !723, line: 632, baseType: !38, size: 64, offset: 64)
!736 = !DILocalVariable(name: "lc_messages", scope: !722, file: !723, line: 655, type: !38)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 896, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 7)
!740 = !DILocation(line: 632, column: 67, scope: !722, inlinedAt: !741)
!741 = distinct !DILocation(line: 87, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 68, column: 5)
!743 = distinct !DILexicalBlock(scope: !716, file: !3, line: 65, column: 7)
!744 = !DILocation(line: 63, column: 12, scope: !716)
!745 = !DILocation(line: 65, column: 14, scope: !743)
!746 = !DILocation(line: 65, column: 7, scope: !716)
!747 = !DILocation(line: 66, column: 5, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !3, line: 66, column: 5)
!749 = !{!750, !750, i64 0}
!750 = !{!"any pointer", !751, i64 0}
!751 = !{!"omnipotent char", !752, i64 0}
!752 = !{!"Simple C/C++ TBAA"}
!753 = !DILocation(line: 69, column: 7, scope: !742)
!754 = !DILocation(line: 73, column: 7, scope: !742)
!755 = !DILocation(line: 580, column: 3, scope: !756, inlinedAt: !759)
!756 = distinct !DISubprogram(name: "emit_stdin_note", scope: !723, file: !723, line: 578, type: !757, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !194)
!757 = !DISubroutineType(types: !758)
!758 = !{null}
!759 = distinct !DILocation(line: 77, column: 7, scope: !742)
!760 = !DILocation(line: 587, column: 3, scope: !761, inlinedAt: !762)
!761 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !723, file: !723, line: 585, type: !757, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !194)
!762 = distinct !DILocation(line: 78, column: 7, scope: !742)
!763 = !DILocation(line: 80, column: 7, scope: !742)
!764 = !DILocation(line: 84, column: 7, scope: !742)
!765 = !DILocation(line: 85, column: 7, scope: !742)
!766 = !DILocation(line: 86, column: 7, scope: !742)
!767 = !DILocation(line: 632, column: 3, scope: !722, inlinedAt: !741)
!768 = !DILocation(line: 643, column: 36, scope: !722, inlinedAt: !741)
!769 = !DILocation(line: 643, column: 25, scope: !722, inlinedAt: !741)
!770 = !DILocation(line: 645, column: 33, scope: !722, inlinedAt: !741)
!771 = !DILocation(line: 645, column: 3, scope: !722, inlinedAt: !741)
!772 = !DILocation(line: 646, column: 13, scope: !722, inlinedAt: !741)
!773 = !DILocation(line: 645, column: 20, scope: !722, inlinedAt: !741)
!774 = !{!775, !750, i64 0}
!775 = !{!"infomap", !750, i64 0, !750, i64 8}
!776 = !DILocation(line: 645, column: 10, scope: !722, inlinedAt: !741)
!777 = !DILocation(line: 645, column: 28, scope: !722, inlinedAt: !741)
!778 = distinct !{!778, !779, !780}
!779 = !DILocation(line: 645, column: 3, scope: !722)
!780 = !DILocation(line: 646, column: 13, scope: !722)
!781 = !DILocation(line: 648, column: 17, scope: !782, inlinedAt: !741)
!782 = distinct !DILexicalBlock(scope: !722, file: !723, line: 648, column: 7)
!783 = !{!775, !750, i64 8}
!784 = !DILocation(line: 648, column: 7, scope: !782, inlinedAt: !741)
!785 = !DILocation(line: 648, column: 7, scope: !722, inlinedAt: !741)
!786 = !DILocation(line: 642, column: 15, scope: !722, inlinedAt: !741)
!787 = !DILocation(line: 651, column: 3, scope: !722, inlinedAt: !741)
!788 = !DILocation(line: 655, column: 29, scope: !722, inlinedAt: !741)
!789 = !DILocation(line: 655, column: 15, scope: !722, inlinedAt: !741)
!790 = !DILocation(line: 656, column: 7, scope: !791, inlinedAt: !741)
!791 = distinct !DILexicalBlock(scope: !722, file: !723, line: 656, column: 7)
!792 = !DILocation(line: 656, column: 19, scope: !791, inlinedAt: !741)
!793 = !DILocation(line: 656, column: 22, scope: !791, inlinedAt: !741)
!794 = !DILocation(line: 656, column: 7, scope: !722, inlinedAt: !741)
!795 = !DILocation(line: 662, column: 7, scope: !796, inlinedAt: !741)
!796 = distinct !DILexicalBlock(scope: !791, file: !723, line: 657, column: 5)
!797 = !DILocation(line: 664, column: 5, scope: !796, inlinedAt: !741)
!798 = !DILocation(line: 665, column: 3, scope: !722, inlinedAt: !741)
!799 = !DILocation(line: 667, column: 3, scope: !722, inlinedAt: !741)
!800 = !DILocation(line: 669, column: 1, scope: !722, inlinedAt: !741)
!801 = !DILocation(line: 89, column: 3, scope: !716)
!802 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 182, type: !803, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!25, !25, !188}
!805 = !{!806, !807, !808, !809}
!806 = !DILocalVariable(name: "argc", arg: 1, scope: !802, file: !3, line: 182, type: !25)
!807 = !DILocalVariable(name: "argv", arg: 2, scope: !802, file: !3, line: 182, type: !188)
!808 = !DILocalVariable(name: "c", scope: !802, file: !3, line: 184, type: !25)
!809 = !DILocalVariable(name: "tab_stop", scope: !810, file: !3, line: 213, type: !814)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 212, column: 13)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 209, column: 15)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 198, column: 9)
!813 = distinct !DILexicalBlock(scope: !802, file: !3, line: 196, column: 5)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16, elements: !184)
!815 = !DILocation(line: 182, column: 11, scope: !802)
!816 = !DILocation(line: 182, column: 24, scope: !802)
!817 = !DILocation(line: 187, column: 21, scope: !802)
!818 = !DILocation(line: 187, column: 3, scope: !802)
!819 = !DILocation(line: 188, column: 3, scope: !802)
!820 = !DILocation(line: 189, column: 3, scope: !802)
!821 = !DILocation(line: 190, column: 3, scope: !802)
!822 = !DILocation(line: 192, column: 3, scope: !802)
!823 = !DILocation(line: 193, column: 23, scope: !802)
!824 = !{!825, !825, i64 0}
!825 = !{!"_Bool", !751, i64 0}
!826 = !DILocation(line: 195, column: 3, scope: !802)
!827 = !DILocation(line: 195, column: 15, scope: !802)
!828 = !DILocation(line: 184, column: 7, scope: !802)
!829 = !DILocation(line: 200, column: 31, scope: !812)
!830 = !DILocation(line: 201, column: 11, scope: !812)
!831 = !DILocation(line: 204, column: 28, scope: !812)
!832 = !DILocation(line: 204, column: 11, scope: !812)
!833 = !DILocation(line: 205, column: 11, scope: !812)
!834 = !DILocation(line: 209, column: 15, scope: !811)
!835 = !DILocation(line: 209, column: 15, scope: !812)
!836 = !DILocation(line: 210, column: 37, scope: !811)
!837 = !DILocation(line: 210, column: 13, scope: !811)
!838 = distinct !{!838, !826, !839}
!839 = !DILocation(line: 227, column: 5, scope: !802)
!840 = !DILocation(line: 213, column: 15, scope: !810)
!841 = !DILocation(line: 213, column: 20, scope: !810)
!842 = !DILocation(line: 214, column: 29, scope: !810)
!843 = !DILocation(line: 214, column: 27, scope: !810)
!844 = !{!751, !751, i64 0}
!845 = !DILocation(line: 215, column: 27, scope: !810)
!846 = !DILocation(line: 216, column: 15, scope: !810)
!847 = !DILocation(line: 217, column: 13, scope: !811)
!848 = !DILocation(line: 220, column: 9, scope: !812)
!849 = !DILocation(line: 222, column: 9, scope: !812)
!850 = !DILocation(line: 225, column: 11, scope: !812)
!851 = !DILocation(line: 229, column: 3, scope: !802)
!852 = !DILocation(line: 231, column: 20, scope: !802)
!853 = !{!854, !854, i64 0}
!854 = !{!"int", !751, i64 0}
!855 = !DILocation(line: 231, column: 27, scope: !802)
!856 = !DILocation(line: 231, column: 38, scope: !802)
!857 = !DILocation(line: 231, column: 19, scope: !802)
!858 = !DILocation(line: 231, column: 3, scope: !802)
!859 = !DILocation(line: 100, column: 14, scope: !860, inlinedAt: !909)
!860 = distinct !DISubprogram(name: "expand", scope: !3, file: !3, line: 97, type: !757, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !861)
!861 = !{!862, !897, !899, !900, !901, !902, !908}
!862 = !DILocalVariable(name: "fp", scope: !860, file: !3, line: 100, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !865, file: !111, line: 51, baseType: !25, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !865, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !865, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !865, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !865, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !865, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !865, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !865, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !865, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !865, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !865, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !865, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !865, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !865, file: !111, line: 70, baseType: !881, size: 64, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !865, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !865, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !865, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !865, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !865, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !865, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !865, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !865, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !865, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !865, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !865, file: !111, line: 93, baseType: !881, size: 64, offset: 1344)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !865, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !865, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !865, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !865, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!897 = !DILocalVariable(name: "c", scope: !898, file: !3, line: 108, type: !25)
!898 = distinct !DILexicalBlock(scope: !860, file: !3, line: 106, column: 5)
!899 = !DILocalVariable(name: "convert", scope: !898, file: !3, line: 111, type: !180)
!900 = !DILocalVariable(name: "column", scope: !898, file: !3, line: 118, type: !95)
!901 = !DILocalVariable(name: "tab_index", scope: !898, file: !3, line: 121, type: !83)
!902 = !DILocalVariable(name: "next_tab_column", scope: !903, file: !3, line: 136, type: !95)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 134, column: 17)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 133, column: 19)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 132, column: 13)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 131, column: 15)
!907 = distinct !DILexicalBlock(scope: !898, file: !3, line: 127, column: 9)
!908 = !DILocalVariable(name: "last_tab", scope: !903, file: !3, line: 137, type: !180)
!909 = distinct !DILocation(line: 233, column: 3, scope: !802)
!910 = !DILocation(line: 100, column: 9, scope: !860, inlinedAt: !909)
!911 = !DILocation(line: 102, column: 8, scope: !912, inlinedAt: !909)
!912 = distinct !DILexicalBlock(scope: !860, file: !3, line: 102, column: 7)
!913 = !DILocation(line: 102, column: 7, scope: !860, inlinedAt: !909)
!914 = !DILocation(line: 121, column: 7, scope: !898, inlinedAt: !909)
!915 = !DILocation(line: 0, scope: !907, inlinedAt: !909)
!916 = !DILocation(line: 111, column: 12, scope: !898, inlinedAt: !909)
!917 = !DILocation(line: 118, column: 17, scope: !898, inlinedAt: !909)
!918 = !DILocation(line: 121, column: 14, scope: !898, inlinedAt: !909)
!919 = !{!920, !920, i64 0}
!920 = !{!"long", !751, i64 0}
!921 = !DILocation(line: 126, column: 7, scope: !898, inlinedAt: !909)
!922 = !DILocation(line: 0, scope: !905, inlinedAt: !909)
!923 = !DILocation(line: 0, scope: !903, inlinedAt: !909)
!924 = !DILocation(line: 128, column: 11, scope: !907, inlinedAt: !909)
!925 = !DILocalVariable(name: "__fp", arg: 1, scope: !926, file: !927, line: 66, type: !863)
!926 = distinct !DISubprogram(name: "getc_unlocked", scope: !927, file: !927, line: 66, type: !928, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !930)
!927 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!928 = !DISubroutineType(types: !929)
!929 = !{!25, !863}
!930 = !{!925}
!931 = !DILocation(line: 66, column: 22, scope: !926, inlinedAt: !932)
!932 = distinct !DILocation(line: 128, column: 23, scope: !907, inlinedAt: !909)
!933 = !DILocation(line: 68, column: 10, scope: !926, inlinedAt: !932)
!934 = !{!935, !750, i64 8}
!935 = !{!"_IO_FILE", !854, i64 0, !750, i64 8, !750, i64 16, !750, i64 24, !750, i64 32, !750, i64 40, !750, i64 48, !750, i64 56, !750, i64 64, !750, i64 72, !750, i64 80, !750, i64 88, !750, i64 96, !750, i64 104, !854, i64 112, !854, i64 116, !920, i64 120, !936, i64 128, !751, i64 130, !751, i64 131, !750, i64 136, !920, i64 144, !750, i64 152, !750, i64 160, !750, i64 168, !750, i64 176, !920, i64 184, !854, i64 192, !751, i64 196}
!936 = !{!"short", !751, i64 0}
!937 = !{!935, !750, i64 16}
!938 = !{!"branch_weights", i32 2000, i32 1}
!939 = !DILocation(line: 108, column: 11, scope: !898, inlinedAt: !909)
!940 = !DILocation(line: 128, column: 38, scope: !907, inlinedAt: !909)
!941 = !DILocation(line: 128, column: 34, scope: !907, inlinedAt: !909)
!942 = !DILocation(line: 128, column: 47, scope: !907, inlinedAt: !909)
!943 = distinct !{!943, !944, !945}
!944 = !DILocation(line: 128, column: 11, scope: !907)
!945 = !DILocation(line: 129, column: 13, scope: !907)
!946 = !DILocation(line: 0, scope: !860, inlinedAt: !909)
!947 = !DILocation(line: 131, column: 15, scope: !906, inlinedAt: !909)
!948 = !DILocation(line: 131, column: 15, scope: !907, inlinedAt: !909)
!949 = !DILocation(line: 133, column: 19, scope: !905, inlinedAt: !909)
!950 = !DILocation(line: 137, column: 24, scope: !903, inlinedAt: !909)
!951 = !DILocation(line: 137, column: 19, scope: !903, inlinedAt: !909)
!952 = !DILocation(line: 139, column: 37, scope: !903, inlinedAt: !909)
!953 = !DILocation(line: 136, column: 29, scope: !903, inlinedAt: !909)
!954 = !DILocation(line: 142, column: 23, scope: !955, inlinedAt: !909)
!955 = distinct !DILexicalBlock(scope: !903, file: !3, line: 142, column: 23)
!956 = !{i8 0, i8 2}
!957 = !DILocation(line: 143, column: 46, scope: !955, inlinedAt: !909)
!958 = !DILocation(line: 142, column: 23, scope: !903, inlinedAt: !909)
!959 = !DILocation(line: 145, column: 39, scope: !960, inlinedAt: !909)
!960 = distinct !DILexicalBlock(scope: !903, file: !3, line: 145, column: 23)
!961 = !DILocation(line: 145, column: 23, scope: !903, inlinedAt: !909)
!962 = !DILocation(line: 146, column: 21, scope: !960, inlinedAt: !909)
!963 = !DILocation(line: 148, column: 26, scope: !903, inlinedAt: !909)
!964 = !DILocation(line: 148, column: 35, scope: !903, inlinedAt: !909)
!965 = !DILocation(line: 148, column: 19, scope: !903, inlinedAt: !909)
!966 = !DILocalVariable(name: "__c", arg: 1, scope: !967, file: !927, line: 108, type: !25)
!967 = distinct !DISubprogram(name: "putchar_unlocked", scope: !927, file: !927, line: 108, type: !968, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!25, !25}
!970 = !{!966}
!971 = !DILocation(line: 108, column: 23, scope: !967, inlinedAt: !972)
!972 = distinct !DILocation(line: 149, column: 25, scope: !973, inlinedAt: !909)
!973 = distinct !DILexicalBlock(scope: !903, file: !3, line: 149, column: 25)
!974 = !DILocation(line: 110, column: 10, scope: !967, inlinedAt: !972)
!975 = !{!935, !750, i64 40}
!976 = !{!935, !750, i64 48}
!977 = !DILocation(line: 149, column: 39, scope: !973, inlinedAt: !909)
!978 = !DILocation(line: 149, column: 25, scope: !903, inlinedAt: !909)
!979 = distinct !{!979, !980, !981}
!980 = !DILocation(line: 148, column: 19, scope: !903)
!981 = !DILocation(line: 150, column: 23, scope: !903)
!982 = !DILocation(line: 150, column: 23, scope: !973, inlinedAt: !909)
!983 = !DILocation(line: 153, column: 17, scope: !904, inlinedAt: !909)
!984 = !DILocation(line: 153, column: 17, scope: !903, inlinedAt: !909)
!985 = !DILocation(line: 158, column: 30, scope: !986, inlinedAt: !909)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 155, column: 17)
!987 = distinct !DILexicalBlock(scope: !904, file: !3, line: 154, column: 24)
!988 = !DILocation(line: 158, column: 29, scope: !986, inlinedAt: !909)
!989 = !DILocation(line: 158, column: 26, scope: !986, inlinedAt: !909)
!990 = !DILocation(line: 159, column: 34, scope: !986, inlinedAt: !909)
!991 = !DILocation(line: 159, column: 33, scope: !986, inlinedAt: !909)
!992 = !DILocation(line: 159, column: 32, scope: !986, inlinedAt: !909)
!993 = !DILocation(line: 159, column: 29, scope: !986, inlinedAt: !909)
!994 = !DILocation(line: 160, column: 17, scope: !986, inlinedAt: !909)
!995 = !DILocation(line: 163, column: 25, scope: !996, inlinedAt: !909)
!996 = distinct !DILexicalBlock(scope: !987, file: !3, line: 162, column: 17)
!997 = !DILocation(line: 164, column: 24, scope: !998, inlinedAt: !909)
!998 = distinct !DILexicalBlock(scope: !996, file: !3, line: 164, column: 23)
!999 = !DILocation(line: 164, column: 23, scope: !996, inlinedAt: !909)
!1000 = !DILocation(line: 165, column: 21, scope: !998, inlinedAt: !909)
!1001 = !DILocation(line: 0, scope: !996, inlinedAt: !909)
!1002 = !DILocation(line: 168, column: 26, scope: !905, inlinedAt: !909)
!1003 = !DILocation(line: 168, column: 46, scope: !905, inlinedAt: !909)
!1004 = !DILocation(line: 168, column: 52, scope: !905, inlinedAt: !909)
!1005 = !{!936, !936, i64 0}
!1006 = !DILocation(line: 168, column: 50, scope: !905, inlinedAt: !909)
!1007 = !DILocation(line: 168, column: 23, scope: !905, inlinedAt: !909)
!1008 = !DILocation(line: 169, column: 13, scope: !905, inlinedAt: !909)
!1009 = !DILocation(line: 0, scope: !898, inlinedAt: !909)
!1010 = !DILocation(line: 171, column: 17, scope: !1011, inlinedAt: !909)
!1011 = distinct !DILexicalBlock(scope: !907, file: !3, line: 171, column: 15)
!1012 = !DILocation(line: 171, column: 15, scope: !907, inlinedAt: !909)
!1013 = !DILocation(line: 108, column: 23, scope: !967, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 174, column: 15, scope: !1015, inlinedAt: !909)
!1015 = distinct !DILexicalBlock(scope: !907, file: !3, line: 174, column: 15)
!1016 = !DILocation(line: 110, column: 10, scope: !967, inlinedAt: !1014)
!1017 = !DILocation(line: 174, column: 15, scope: !907, inlinedAt: !909)
!1018 = !DILocation(line: 174, column: 27, scope: !1015, inlinedAt: !909)
!1019 = !DILocation(line: 175, column: 13, scope: !1015, inlinedAt: !909)
!1020 = !DILocation(line: 177, column: 16, scope: !898, inlinedAt: !909)
!1021 = !DILocation(line: 176, column: 9, scope: !907, inlinedAt: !909)
!1022 = distinct !{!1022, !1023, !1024}
!1023 = !DILocation(line: 126, column: 7, scope: !898)
!1024 = !DILocation(line: 177, column: 23, scope: !898)
!1025 = !DILocation(line: 178, column: 5, scope: !860, inlinedAt: !909)
!1026 = !DILocation(line: 235, column: 3, scope: !802)
!1027 = !DILocation(line: 237, column: 10, scope: !802)
!1028 = !DILocation(line: 237, column: 3, scope: !802)
!1029 = distinct !DISubprogram(name: "add_tab_stop", scope: !52, file: !52, line: 78, type: !1030, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !95}
!1032 = !{!1033, !1034, !1035}
!1033 = !DILocalVariable(name: "tabval", arg: 1, scope: !1029, file: !52, line: 78, type: !95)
!1034 = !DILocalVariable(name: "prev_column", scope: !1029, file: !52, line: 80, type: !95)
!1035 = !DILocalVariable(name: "column_width", scope: !1029, file: !52, line: 81, type: !95)
!1036 = !DILocation(line: 78, column: 25, scope: !1029)
!1037 = !DILocation(line: 80, column: 27, scope: !1029)
!1038 = !DILocation(line: 80, column: 44, scope: !1029)
!1039 = !DILocation(line: 80, column: 68, scope: !1029)
!1040 = !DILocation(line: 80, column: 13, scope: !1029)
!1041 = !DILocation(line: 81, column: 28, scope: !1029)
!1042 = !DILocation(line: 81, column: 13, scope: !1029)
!1043 = !DILocation(line: 83, column: 25, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1029, file: !52, line: 83, column: 7)
!1045 = !DILocation(line: 83, column: 22, scope: !1044)
!1046 = !DILocation(line: 83, column: 7, scope: !1029)
!1047 = !DILocation(line: 85, column: 3, scope: !1029)
!1048 = !DILocation(line: 84, column: 16, scope: !1044)
!1049 = !DILocation(line: 174, column: 19, scope: !79, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 84, column: 16, scope: !1044)
!1051 = !DILocation(line: 174, column: 30, scope: !79, inlinedAt: !1050)
!1052 = !DILocation(line: 174, column: 41, scope: !79, inlinedAt: !1050)
!1053 = !DILocation(line: 176, column: 10, scope: !79, inlinedAt: !1050)
!1054 = !DILocation(line: 178, column: 9, scope: !1055, inlinedAt: !1050)
!1055 = distinct !DILexicalBlock(scope: !79, file: !78, line: 178, column: 7)
!1056 = !DILocation(line: 178, column: 7, scope: !79, inlinedAt: !1050)
!1057 = !DILocation(line: 180, column: 11, scope: !1058, inlinedAt: !1050)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !78, line: 179, column: 5)
!1059 = !DILocation(line: 191, column: 11, scope: !1060, inlinedAt: !1050)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !78, line: 191, column: 11)
!1061 = !DILocation(line: 191, column: 11, scope: !1058, inlinedAt: !1050)
!1062 = !DILocation(line: 192, column: 9, scope: !1060, inlinedAt: !1050)
!1063 = !DILocation(line: 201, column: 11, scope: !1064, inlinedAt: !1050)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !78, line: 200, column: 11)
!1065 = distinct !DILexicalBlock(scope: !1055, file: !78, line: 195, column: 5)
!1066 = !DILocation(line: 200, column: 11, scope: !1065, inlinedAt: !1050)
!1067 = !DILocation(line: 202, column: 9, scope: !1064, inlinedAt: !1050)
!1068 = !DILocation(line: 203, column: 14, scope: !1065, inlinedAt: !1050)
!1069 = !DILocation(line: 203, column: 18, scope: !1065, inlinedAt: !1050)
!1070 = !DILocation(line: 203, column: 9, scope: !1065, inlinedAt: !1050)
!1071 = !DILocation(line: 0, scope: !79, inlinedAt: !1050)
!1072 = !DILocation(line: 206, column: 7, scope: !79, inlinedAt: !1050)
!1073 = !DILocation(line: 207, column: 25, scope: !79, inlinedAt: !1050)
!1074 = !DILocation(line: 207, column: 10, scope: !79, inlinedAt: !1050)
!1075 = !DILocation(line: 84, column: 14, scope: !1044)
!1076 = !DILocation(line: 84, column: 5, scope: !1044)
!1077 = !DILocation(line: 85, column: 26, scope: !1029)
!1078 = !DILocation(line: 85, column: 30, scope: !1029)
!1079 = !DILocation(line: 87, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1029, file: !52, line: 87, column: 7)
!1081 = !DILocation(line: 87, column: 24, scope: !1080)
!1082 = !DILocation(line: 87, column: 7, scope: !1029)
!1083 = !DILocation(line: 91, column: 24, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !52, line: 88, column: 5)
!1085 = !DILocation(line: 92, column: 5, scope: !1084)
!1086 = !DILocation(line: 93, column: 1, scope: !1029)
!1087 = distinct !DISubprogram(name: "parse_tab_stops", scope: !52, file: !52, line: 132, type: !724, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1107}
!1089 = !DILocalVariable(name: "stops", arg: 1, scope: !1087, file: !52, line: 132, type: !38)
!1090 = !DILocalVariable(name: "have_tabval", scope: !1087, file: !52, line: 134, type: !180)
!1091 = !DILocalVariable(name: "tabval", scope: !1087, file: !52, line: 135, type: !95)
!1092 = !DILocalVariable(name: "extend_tabval", scope: !1087, file: !52, line: 136, type: !180)
!1093 = !DILocalVariable(name: "increment_tabval", scope: !1087, file: !52, line: 137, type: !180)
!1094 = !DILocalVariable(name: "num_start", scope: !1087, file: !52, line: 138, type: !38)
!1095 = !DILocalVariable(name: "ok", scope: !1087, file: !52, line: 139, type: !180)
!1096 = !DILocalVariable(name: "len", scope: !1097, file: !52, line: 202, type: !83)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !52, line: 201, column: 13)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !52, line: 200, column: 15)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !52, line: 191, column: 9)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !52, line: 190, column: 16)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 179, column: 16)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !52, line: 168, column: 16)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !52, line: 143, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !52, line: 142, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !52, line: 141, column: 3)
!1106 = distinct !DILexicalBlock(scope: !1087, file: !52, line: 141, column: 3)
!1107 = !DILocalVariable(name: "bad_num", scope: !1097, file: !52, line: 203, type: !22)
!1108 = !DILocation(line: 132, column: 30, scope: !1087)
!1109 = !DILocation(line: 134, column: 8, scope: !1087)
!1110 = !DILocation(line: 135, column: 13, scope: !1087)
!1111 = !DILocation(line: 136, column: 8, scope: !1087)
!1112 = !DILocation(line: 137, column: 8, scope: !1087)
!1113 = !DILocation(line: 138, column: 15, scope: !1087)
!1114 = !DILocation(line: 139, column: 8, scope: !1087)
!1115 = !DILocation(line: 141, column: 3, scope: !1087)
!1116 = !DILocation(line: 0, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1103, file: !52, line: 144, column: 9)
!1118 = !DILocation(line: 141, column: 10, scope: !1105)
!1119 = !DILocation(line: 141, column: 3, scope: !1106)
!1120 = !DILocation(line: 143, column: 28, scope: !1103)
!1121 = !DILocation(line: 143, column: 11, scope: !1104)
!1122 = !DILocation(line: 145, column: 15, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1117, file: !52, line: 145, column: 15)
!1124 = !DILocation(line: 145, column: 15, scope: !1117)
!1125 = !DILocation(line: 147, column: 19, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !52, line: 147, column: 19)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !52, line: 146, column: 13)
!1128 = !DILocation(line: 147, column: 19, scope: !1127)
!1129 = !DILocalVariable(name: "tabval", arg: 1, scope: !1130, file: !52, line: 96, type: !95)
!1130 = distinct !DISubprogram(name: "set_extend_size", scope: !52, file: !52, line: 96, type: !1131, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!180, !95}
!1133 = !{!1129, !1134}
!1134 = !DILocalVariable(name: "ok", scope: !1130, file: !52, line: 98, type: !180)
!1135 = !DILocation(line: 96, column: 28, scope: !1130, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 149, column: 25, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !52, line: 149, column: 23)
!1138 = distinct !DILexicalBlock(scope: !1126, file: !52, line: 148, column: 17)
!1139 = !DILocation(line: 98, column: 8, scope: !1130, inlinedAt: !1136)
!1140 = !DILocation(line: 100, column: 7, scope: !1141, inlinedAt: !1136)
!1141 = distinct !DILexicalBlock(scope: !1130, file: !52, line: 100, column: 7)
!1142 = !DILocation(line: 100, column: 7, scope: !1130, inlinedAt: !1136)
!1143 = !DILocation(line: 107, column: 15, scope: !1130, inlinedAt: !1136)
!1144 = !DILocation(line: 149, column: 23, scope: !1138)
!1145 = !DILocation(line: 103, column: 14, scope: !1146, inlinedAt: !1136)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !52, line: 101, column: 5)
!1147 = !DILocation(line: 102, column: 7, scope: !1146, inlinedAt: !1136)
!1148 = !DILocation(line: 155, column: 24, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1126, file: !52, line: 155, column: 24)
!1150 = !DILocation(line: 155, column: 24, scope: !1126)
!1151 = !DILocalVariable(name: "tabval", arg: 1, scope: !1152, file: !52, line: 113, type: !95)
!1152 = distinct !DISubprogram(name: "set_increment_size", scope: !52, file: !52, line: 113, type: !1131, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1153)
!1153 = !{!1151, !1154}
!1154 = !DILocalVariable(name: "ok", scope: !1152, file: !52, line: 115, type: !180)
!1155 = !DILocation(line: 113, column: 31, scope: !1152, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 157, column: 25, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !52, line: 157, column: 23)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !52, line: 156, column: 17)
!1159 = !DILocation(line: 115, column: 8, scope: !1152, inlinedAt: !1156)
!1160 = !DILocation(line: 117, column: 7, scope: !1161, inlinedAt: !1156)
!1161 = distinct !DILexicalBlock(scope: !1152, file: !52, line: 117, column: 7)
!1162 = !DILocation(line: 117, column: 7, scope: !1152, inlinedAt: !1156)
!1163 = !DILocation(line: 124, column: 18, scope: !1152, inlinedAt: !1156)
!1164 = !DILocation(line: 157, column: 23, scope: !1158)
!1165 = !DILocation(line: 120, column: 14, scope: !1166, inlinedAt: !1156)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !52, line: 118, column: 5)
!1167 = !DILocation(line: 119, column: 7, scope: !1166, inlinedAt: !1156)
!1168 = !DILocation(line: 164, column: 17, scope: !1149)
!1169 = !DILocation(line: 168, column: 16, scope: !1103)
!1170 = !DILocation(line: 170, column: 15, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !52, line: 170, column: 15)
!1172 = distinct !DILexicalBlock(scope: !1102, file: !52, line: 169, column: 9)
!1173 = !DILocation(line: 170, column: 15, scope: !1172)
!1174 = !DILocation(line: 172, column: 28, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !52, line: 171, column: 13)
!1176 = !DILocation(line: 173, column: 22, scope: !1175)
!1177 = !DILocation(line: 172, column: 15, scope: !1175)
!1178 = !DILocation(line: 175, column: 13, scope: !1175)
!1179 = !DILocation(line: 181, column: 15, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !52, line: 181, column: 15)
!1181 = distinct !DILexicalBlock(scope: !1101, file: !52, line: 180, column: 9)
!1182 = !DILocation(line: 181, column: 15, scope: !1181)
!1183 = !DILocation(line: 183, column: 28, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !52, line: 182, column: 13)
!1185 = !DILocation(line: 184, column: 22, scope: !1184)
!1186 = !DILocation(line: 183, column: 15, scope: !1184)
!1187 = !DILocation(line: 186, column: 13, scope: !1184)
!1188 = !DILocation(line: 168, column: 16, scope: !1102)
!1189 = !DILocation(line: 190, column: 16, scope: !1100)
!1190 = !DILocation(line: 190, column: 16, scope: !1101)
!1191 = !DILocation(line: 192, column: 16, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1099, file: !52, line: 192, column: 15)
!1193 = !DILocation(line: 192, column: 15, scope: !1099)
!1194 = !DILocation(line: 200, column: 16, scope: !1098)
!1195 = !DILocation(line: 200, column: 15, scope: !1099)
!1196 = !DILocation(line: 202, column: 28, scope: !1097)
!1197 = !DILocation(line: 202, column: 22, scope: !1097)
!1198 = !DILocation(line: 203, column: 31, scope: !1097)
!1199 = !DILocation(line: 203, column: 21, scope: !1097)
!1200 = !DILocation(line: 204, column: 28, scope: !1097)
!1201 = !DILocation(line: 204, column: 59, scope: !1097)
!1202 = !DILocation(line: 204, column: 15, scope: !1097)
!1203 = !DILocation(line: 205, column: 15, scope: !1097)
!1204 = !DILocation(line: 207, column: 33, scope: !1097)
!1205 = !DILocation(line: 207, column: 39, scope: !1097)
!1206 = !DILocation(line: 208, column: 13, scope: !1097)
!1207 = !DILocation(line: 212, column: 24, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1100, file: !52, line: 211, column: 9)
!1209 = !DILocation(line: 213, column: 18, scope: !1208)
!1210 = !DILocation(line: 212, column: 11, scope: !1208)
!1211 = !DILocation(line: 215, column: 11, scope: !1208)
!1212 = !DILocation(line: 0, scope: !1087)
!1213 = !DILocation(line: 0, scope: !1097)
!1214 = !DILocation(line: 141, column: 23, scope: !1105)
!1215 = !DILocation(line: 141, column: 3, scope: !1105)
!1216 = distinct !{!1216, !1119, !1217}
!1217 = !DILocation(line: 217, column: 5, scope: !1106)
!1218 = !DILocation(line: 219, column: 10, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1087, file: !52, line: 219, column: 7)
!1220 = !DILocation(line: 221, column: 11, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !52, line: 221, column: 11)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !52, line: 220, column: 5)
!1223 = !DILocation(line: 221, column: 11, scope: !1222)
!1224 = !DILocation(line: 96, column: 28, scope: !1130, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 222, column: 15, scope: !1221)
!1226 = !DILocation(line: 98, column: 8, scope: !1130, inlinedAt: !1225)
!1227 = !DILocation(line: 100, column: 7, scope: !1141, inlinedAt: !1225)
!1228 = !DILocation(line: 100, column: 7, scope: !1130, inlinedAt: !1225)
!1229 = !DILocation(line: 103, column: 14, scope: !1146, inlinedAt: !1225)
!1230 = !DILocation(line: 102, column: 7, scope: !1146, inlinedAt: !1225)
!1231 = !DILocation(line: 106, column: 5, scope: !1146, inlinedAt: !1225)
!1232 = !DILocation(line: 107, column: 15, scope: !1130, inlinedAt: !1225)
!1233 = !DILocation(line: 222, column: 9, scope: !1221)
!1234 = !DILocation(line: 223, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1221, file: !52, line: 223, column: 16)
!1236 = !DILocation(line: 223, column: 16, scope: !1221)
!1237 = !DILocation(line: 113, column: 31, scope: !1152, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 224, column: 15, scope: !1235)
!1239 = !DILocation(line: 115, column: 8, scope: !1152, inlinedAt: !1238)
!1240 = !DILocation(line: 117, column: 7, scope: !1161, inlinedAt: !1238)
!1241 = !DILocation(line: 117, column: 7, scope: !1152, inlinedAt: !1238)
!1242 = !DILocation(line: 120, column: 14, scope: !1166, inlinedAt: !1238)
!1243 = !DILocation(line: 119, column: 7, scope: !1166, inlinedAt: !1238)
!1244 = !DILocation(line: 123, column: 5, scope: !1166, inlinedAt: !1238)
!1245 = !DILocation(line: 124, column: 18, scope: !1152, inlinedAt: !1238)
!1246 = !DILocation(line: 224, column: 9, scope: !1235)
!1247 = !DILocation(line: 226, column: 9, scope: !1235)
!1248 = !DILocation(line: 0, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1137, file: !52, line: 150, column: 21)
!1250 = !DILocation(line: 229, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1087, file: !52, line: 229, column: 7)
!1252 = !DILocation(line: 229, column: 7, scope: !1087)
!1253 = !DILocation(line: 230, column: 5, scope: !1251)
!1254 = !DILocation(line: 231, column: 1, scope: !1087)
!1255 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !52, file: !52, line: 263, type: !757, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !194)
!1256 = !DILocation(line: 265, column: 23, scope: !1255)
!1257 = !DILocation(line: 265, column: 33, scope: !1255)
!1258 = !DILocalVariable(name: "tabs", arg: 1, scope: !1259, file: !52, line: 237, type: !1262)
!1259 = distinct !DISubprogram(name: "validate_tab_stops", scope: !52, file: !52, line: 237, type: !1260, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1264)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !1262, !83}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1264 = !{!1258, !1265, !1266, !1267}
!1265 = !DILocalVariable(name: "entries", arg: 2, scope: !1259, file: !52, line: 237, type: !83)
!1266 = !DILocalVariable(name: "prev_tab", scope: !1259, file: !52, line: 239, type: !95)
!1267 = !DILocalVariable(name: "i", scope: !1268, file: !52, line: 241, type: !83)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !52, line: 241, column: 3)
!1269 = !DILocation(line: 237, column: 38, scope: !1259, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 265, column: 3, scope: !1255)
!1271 = !DILocation(line: 237, column: 51, scope: !1259, inlinedAt: !1270)
!1272 = !DILocation(line: 239, column: 13, scope: !1259, inlinedAt: !1270)
!1273 = !DILocation(line: 241, column: 15, scope: !1268, inlinedAt: !1270)
!1274 = !DILocation(line: 241, column: 24, scope: !1275, inlinedAt: !1270)
!1275 = distinct !DILexicalBlock(scope: !1268, file: !52, line: 241, column: 3)
!1276 = !DILocation(line: 241, column: 3, scope: !1268, inlinedAt: !1270)
!1277 = distinct !{!1277, !1278, !1279}
!1278 = !DILocation(line: 241, column: 3, scope: !1268)
!1279 = !DILocation(line: 248, column: 5, scope: !1268)
!1280 = !DILocation(line: 250, column: 7, scope: !1281, inlinedAt: !1270)
!1281 = distinct !DILexicalBlock(scope: !1259, file: !52, line: 250, column: 7)
!1282 = !DILocation(line: 250, column: 25, scope: !1281, inlinedAt: !1270)
!1283 = !DILocation(line: 250, column: 22, scope: !1281, inlinedAt: !1270)
!1284 = !DILocation(line: 243, column: 11, scope: !1285, inlinedAt: !1270)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 243, column: 11)
!1286 = distinct !DILexicalBlock(scope: !1275, file: !52, line: 242, column: 5)
!1287 = !DILocation(line: 243, column: 19, scope: !1285, inlinedAt: !1270)
!1288 = !DILocation(line: 243, column: 11, scope: !1286, inlinedAt: !1270)
!1289 = !DILocation(line: 244, column: 9, scope: !1285, inlinedAt: !1270)
!1290 = !DILocation(line: 245, column: 19, scope: !1291, inlinedAt: !1270)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 245, column: 11)
!1292 = !DILocation(line: 241, column: 36, scope: !1275, inlinedAt: !1270)
!1293 = !DILocation(line: 245, column: 11, scope: !1286, inlinedAt: !1270)
!1294 = !DILocation(line: 246, column: 9, scope: !1291, inlinedAt: !1270)
!1295 = !DILocation(line: 251, column: 5, scope: !1281, inlinedAt: !1270)
!1296 = !DILocation(line: 267, column: 7, scope: !1255)
!1297 = !DILocation(line: 268, column: 35, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1255, file: !52, line: 267, column: 7)
!1299 = !DILocation(line: 269, column: 51, scope: !1298)
!1300 = !DILocation(line: 268, column: 33, scope: !1298)
!1301 = !DILocation(line: 268, column: 5, scope: !1298)
!1302 = !DILocation(line: 271, column: 27, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !52, line: 271, column: 12)
!1304 = !DILocation(line: 271, column: 32, scope: !1303)
!1305 = !DILocation(line: 272, column: 16, scope: !1303)
!1306 = !DILocation(line: 272, column: 5, scope: !1303)
!1307 = !DILocation(line: 0, scope: !1298)
!1308 = !DILocation(line: 275, column: 1, scope: !1255)
!1309 = distinct !DISubprogram(name: "get_next_tab_column", scope: !52, file: !52, line: 279, type: !1310, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1313)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!95, !1263, !82, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1313 = !{!1314, !1315, !1316, !1317, !1321}
!1314 = !DILocalVariable(name: "column", arg: 1, scope: !1309, file: !52, line: 279, type: !1263)
!1315 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1309, file: !52, line: 279, type: !82)
!1316 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1309, file: !52, line: 280, type: !1312)
!1317 = !DILocalVariable(name: "tab", scope: !1318, file: !52, line: 292, type: !95)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !52, line: 291, column: 5)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !52, line: 290, column: 3)
!1320 = distinct !DILexicalBlock(scope: !1309, file: !52, line: 290, column: 3)
!1321 = !DILocalVariable(name: "end_tab", scope: !1322, file: !52, line: 304, type: !95)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !52, line: 303, column: 5)
!1323 = distinct !DILexicalBlock(scope: !1309, file: !52, line: 302, column: 7)
!1324 = !DILocation(line: 279, column: 38, scope: !1309)
!1325 = !DILocation(line: 279, column: 54, scope: !1309)
!1326 = !DILocation(line: 280, column: 28, scope: !1309)
!1327 = !DILocation(line: 282, column: 13, scope: !1309)
!1328 = !DILocation(line: 285, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1309, file: !52, line: 285, column: 7)
!1330 = !DILocation(line: 285, column: 7, scope: !1309)
!1331 = !DILocation(line: 290, column: 11, scope: !1319)
!1332 = !DILocation(line: 290, column: 24, scope: !1319)
!1333 = !DILocation(line: 290, column: 22, scope: !1319)
!1334 = !DILocation(line: 290, column: 3, scope: !1320)
!1335 = !DILocation(line: 286, column: 40, scope: !1329)
!1336 = !DILocation(line: 286, column: 31, scope: !1329)
!1337 = !DILocation(line: 286, column: 19, scope: !1329)
!1338 = !DILocation(line: 286, column: 5, scope: !1329)
!1339 = !DILocation(line: 292, column: 25, scope: !1318)
!1340 = !DILocation(line: 292, column: 19, scope: !1318)
!1341 = !DILocation(line: 293, column: 20, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1318, file: !52, line: 293, column: 13)
!1343 = !DILocation(line: 290, column: 53, scope: !1319)
!1344 = distinct !{!1344, !1334, !1345}
!1345 = !DILocation(line: 295, column: 5, scope: !1320)
!1346 = !DILocation(line: 298, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1309, file: !52, line: 298, column: 7)
!1348 = !DILocation(line: 298, column: 7, scope: !1309)
!1349 = !DILocation(line: 299, column: 43, scope: !1347)
!1350 = !DILocation(line: 299, column: 34, scope: !1347)
!1351 = !DILocation(line: 299, column: 19, scope: !1347)
!1352 = !DILocation(line: 299, column: 5, scope: !1347)
!1353 = !DILocation(line: 302, column: 7, scope: !1323)
!1354 = !DILocation(line: 302, column: 7, scope: !1309)
!1355 = !DILocation(line: 304, column: 27, scope: !1322)
!1356 = !DILocation(line: 304, column: 51, scope: !1322)
!1357 = !DILocation(line: 304, column: 17, scope: !1322)
!1358 = !DILocation(line: 306, column: 50, scope: !1322)
!1359 = !DILocation(line: 306, column: 61, scope: !1322)
!1360 = !DILocation(line: 306, column: 39, scope: !1322)
!1361 = !DILocation(line: 306, column: 21, scope: !1322)
!1362 = !DILocation(line: 309, column: 13, scope: !1309)
!1363 = !DILocation(line: 310, column: 3, scope: !1309)
!1364 = !DILocation(line: 0, scope: !1309)
!1365 = !DILocation(line: 311, column: 1, scope: !1309)
!1366 = distinct !DISubprogram(name: "set_file_list", scope: !52, file: !52, line: 318, type: !1367, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !188}
!1369 = !{!1370}
!1370 = !DILocalVariable(name: "list", arg: 1, scope: !1366, file: !52, line: 318, type: !188)
!1371 = !DILocation(line: 318, column: 23, scope: !1366)
!1372 = !DILocation(line: 322, column: 8, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !52, line: 322, column: 7)
!1374 = !DILocation(line: 323, column: 5, scope: !1373)
!1375 = !DILocation(line: 0, scope: !1373)
!1376 = !DILocation(line: 326, column: 1, scope: !1366)
!1377 = !DILocation(line: 334, column: 18, scope: !104)
!1378 = !DILocation(line: 339, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !104, file: !52, line: 339, column: 7)
!1380 = !DILocation(line: 339, column: 7, scope: !104)
!1381 = !DILocation(line: 341, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !52, line: 341, column: 7)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !52, line: 341, column: 7)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !52, line: 340, column: 5)
!1385 = !DILocation(line: 341, column: 7, scope: !1383)
!1386 = !DILocalVariable(name: "__stream", arg: 1, scope: !1387, file: !927, line: 135, type: !107)
!1387 = distinct !DISubprogram(name: "ferror_unlocked", scope: !927, file: !927, line: 135, type: !1388, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!25, !107}
!1390 = !{!1386}
!1391 = !DILocation(line: 135, column: 1, scope: !1387, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 342, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1384, file: !52, line: 342, column: 11)
!1394 = !DILocation(line: 137, column: 10, scope: !1387, inlinedAt: !1392)
!1395 = !{!935, !854, i64 0}
!1396 = !DILocation(line: 342, column: 11, scope: !1393)
!1397 = !DILocation(line: 342, column: 11, scope: !1384)
!1398 = !DILocation(line: 344, column: 21, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1393, file: !52, line: 343, column: 9)
!1400 = !DILocation(line: 344, column: 34, scope: !1399)
!1401 = !DILocation(line: 344, column: 11, scope: !1399)
!1402 = !DILocation(line: 345, column: 23, scope: !1399)
!1403 = !DILocation(line: 347, column: 11, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1384, file: !52, line: 347, column: 11)
!1405 = !DILocation(line: 346, column: 9, scope: !1399)
!1406 = !DILocation(line: 347, column: 11, scope: !1384)
!1407 = !DILocation(line: 348, column: 9, scope: !1404)
!1408 = !DILocation(line: 349, column: 16, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 349, column: 16)
!1410 = !DILocation(line: 349, column: 28, scope: !1409)
!1411 = !DILocation(line: 349, column: 16, scope: !1404)
!1412 = !DILocation(line: 351, column: 21, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !52, line: 350, column: 9)
!1414 = !DILocation(line: 351, column: 34, scope: !1413)
!1415 = !DILocation(line: 351, column: 11, scope: !1413)
!1416 = !DILocation(line: 352, column: 23, scope: !1413)
!1417 = !DILocation(line: 353, column: 9, scope: !1413)
!1418 = !DILocation(line: 356, column: 28, scope: !104)
!1419 = !DILocation(line: 356, column: 18, scope: !104)
!1420 = !DILocation(line: 337, column: 9, scope: !104)
!1421 = !DILocation(line: 356, column: 32, scope: !104)
!1422 = !DILocation(line: 356, column: 3, scope: !104)
!1423 = !DILocation(line: 358, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !52, line: 358, column: 11)
!1425 = distinct !DILexicalBlock(scope: !104, file: !52, line: 357, column: 5)
!1426 = !DILocation(line: 358, column: 11, scope: !1425)
!1427 = !DILocation(line: 361, column: 16, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !52, line: 359, column: 9)
!1429 = !DILocation(line: 362, column: 9, scope: !1428)
!1430 = !DILocation(line: 364, column: 14, scope: !1424)
!1431 = !DILocation(line: 0, scope: !1424)
!1432 = !DILocation(line: 365, column: 11, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1425, file: !52, line: 365, column: 11)
!1434 = !DILocation(line: 365, column: 11, scope: !1425)
!1435 = !DILocation(line: 367, column: 21, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !52, line: 366, column: 9)
!1437 = !DILocation(line: 368, column: 11, scope: !1436)
!1438 = !DILocation(line: 369, column: 11, scope: !1436)
!1439 = !DILocation(line: 371, column: 17, scope: !1425)
!1440 = !DILocation(line: 371, column: 30, scope: !1425)
!1441 = !DILocation(line: 371, column: 7, scope: !1425)
!1442 = !DILocation(line: 372, column: 19, scope: !1425)
!1443 = distinct !{!1443, !1422, !1444}
!1444 = !DILocation(line: 373, column: 5, scope: !104)
!1445 = !DILocation(line: 0, scope: !104)
!1446 = !DILocation(line: 375, column: 1, scope: !104)
!1447 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !52, file: !52, line: 379, type: !757, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !194)
!1448 = !DILocation(line: 381, column: 25, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1447, file: !52, line: 381, column: 9)
!1450 = !DILocation(line: 381, column: 36, scope: !1449)
!1451 = !DILocation(line: 381, column: 28, scope: !1449)
!1452 = !DILocation(line: 381, column: 43, scope: !1449)
!1453 = !DILocation(line: 381, column: 9, scope: !1447)
!1454 = !DILocation(line: 382, column: 7, scope: !1449)
!1455 = !DILocation(line: 383, column: 1, scope: !1447)
!1456 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !52, file: !52, line: 387, type: !757, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !194)
!1457 = !DILocation(line: 390, column: 3, scope: !1456)
!1458 = !DILocation(line: 393, column: 3, scope: !1456)
!1459 = !DILocation(line: 400, column: 1, scope: !1456)
!1460 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !203, file: !203, line: 51, type: !724, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !1461)
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "file", arg: 1, scope: !1460, file: !203, line: 51, type: !38)
!1463 = !DILocation(line: 51, column: 41, scope: !1460)
!1464 = !DILocation(line: 53, column: 13, scope: !1460)
!1465 = !DILocation(line: 54, column: 1, scope: !1460)
!1466 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !203, file: !203, line: 88, type: !1467, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !180}
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "ignore", arg: 1, scope: !1466, file: !203, line: 88, type: !180)
!1471 = !DILocation(line: 88, column: 37, scope: !1466)
!1472 = !DILocation(line: 90, column: 16, scope: !1466)
!1473 = !DILocation(line: 91, column: 1, scope: !1466)
!1474 = distinct !DISubprogram(name: "close_stdout", scope: !203, file: !203, line: 117, type: !757, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !1475)
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "write_error", scope: !1477, file: !203, line: 122, type: !38)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !203, line: 121, column: 5)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !203, line: 119, column: 7)
!1479 = !DILocation(line: 119, column: 21, scope: !1478)
!1480 = !DILocation(line: 119, column: 7, scope: !1478)
!1481 = !DILocation(line: 119, column: 29, scope: !1478)
!1482 = !DILocation(line: 120, column: 7, scope: !1478)
!1483 = !DILocation(line: 120, column: 12, scope: !1478)
!1484 = !DILocation(line: 120, column: 25, scope: !1478)
!1485 = !DILocation(line: 120, column: 28, scope: !1478)
!1486 = !DILocation(line: 120, column: 34, scope: !1478)
!1487 = !DILocation(line: 119, column: 7, scope: !1474)
!1488 = !DILocation(line: 122, column: 33, scope: !1477)
!1489 = !DILocation(line: 122, column: 19, scope: !1477)
!1490 = !DILocation(line: 123, column: 11, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1477, file: !203, line: 123, column: 11)
!1492 = !DILocation(line: 0, scope: !1491)
!1493 = !DILocation(line: 123, column: 11, scope: !1477)
!1494 = !DILocation(line: 124, column: 36, scope: !1491)
!1495 = !DILocation(line: 124, column: 9, scope: !1491)
!1496 = !DILocation(line: 127, column: 9, scope: !1491)
!1497 = !DILocation(line: 129, column: 14, scope: !1477)
!1498 = !DILocation(line: 129, column: 7, scope: !1477)
!1499 = !DILocation(line: 134, column: 42, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1474, file: !203, line: 134, column: 7)
!1501 = !DILocation(line: 134, column: 28, scope: !1500)
!1502 = !DILocation(line: 134, column: 50, scope: !1500)
!1503 = !DILocation(line: 134, column: 7, scope: !1474)
!1504 = !DILocation(line: 135, column: 12, scope: !1500)
!1505 = !DILocation(line: 135, column: 5, scope: !1500)
!1506 = !DILocation(line: 136, column: 1, scope: !1474)
!1507 = distinct !DISubprogram(name: "fdadvise", scope: !1508, file: !1508, line: 31, type: !1509, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !1514)
!1508 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !25, !1511, !1511, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1512, line: 63, baseType: !133)
!1512 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !69, line: 52, baseType: !68)
!1514 = !{!1515, !1516, !1517, !1518, !1519}
!1515 = !DILocalVariable(name: "fd", arg: 1, scope: !1507, file: !1508, line: 31, type: !25)
!1516 = !DILocalVariable(name: "offset", arg: 2, scope: !1507, file: !1508, line: 31, type: !1511)
!1517 = !DILocalVariable(name: "len", arg: 3, scope: !1507, file: !1508, line: 31, type: !1511)
!1518 = !DILocalVariable(name: "advice", arg: 4, scope: !1507, file: !1508, line: 31, type: !1513)
!1519 = !DILocalVariable(name: "__x", scope: !1520, file: !1508, line: 34, type: !25)
!1520 = distinct !DILexicalBlock(scope: !1507, file: !1508, line: 34, column: 3)
!1521 = !DILocation(line: 31, column: 15, scope: !1507)
!1522 = !DILocation(line: 31, column: 25, scope: !1507)
!1523 = !DILocation(line: 31, column: 39, scope: !1507)
!1524 = !DILocation(line: 31, column: 54, scope: !1507)
!1525 = !DILocation(line: 34, column: 3, scope: !1520)
!1526 = !DILocation(line: 36, column: 1, scope: !1507)
!1527 = distinct !DISubprogram(name: "fadvise", scope: !1508, file: !1508, line: 39, type: !1528, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !1564)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1530, !1513}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1532, file: !111, line: 51, baseType: !25, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1532, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1532, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1532, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1532, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1532, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1532, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1532, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1532, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1532, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1532, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1532, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1532, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1532, file: !111, line: 70, baseType: !1548, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1532, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1532, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1532, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1532, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1532, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1532, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1532, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1532, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1532, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1532, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1532, file: !111, line: 93, baseType: !1548, size: 64, offset: 1344)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1532, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1532, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1532, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1532, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!1564 = !{!1565, !1566}
!1565 = !DILocalVariable(name: "fp", arg: 1, scope: !1527, file: !1508, line: 39, type: !1530)
!1566 = !DILocalVariable(name: "advice", arg: 2, scope: !1527, file: !1508, line: 39, type: !1513)
!1567 = !DILocation(line: 39, column: 16, scope: !1527)
!1568 = !DILocation(line: 39, column: 30, scope: !1527)
!1569 = !DILocation(line: 41, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1527, file: !1508, line: 41, column: 7)
!1571 = !DILocation(line: 41, column: 7, scope: !1527)
!1572 = !DILocation(line: 42, column: 15, scope: !1570)
!1573 = !DILocation(line: 31, column: 15, scope: !1507, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 42, column: 5, scope: !1570)
!1575 = !DILocation(line: 31, column: 25, scope: !1507, inlinedAt: !1574)
!1576 = !DILocation(line: 31, column: 39, scope: !1507, inlinedAt: !1574)
!1577 = !DILocation(line: 31, column: 54, scope: !1507, inlinedAt: !1574)
!1578 = !DILocation(line: 34, column: 3, scope: !1520, inlinedAt: !1574)
!1579 = !DILocation(line: 42, column: 5, scope: !1570)
!1580 = !DILocation(line: 43, column: 1, scope: !1527)
!1581 = distinct !DISubprogram(name: "set_program_name", scope: !217, file: !217, line: 39, type: !724, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !213, retainedNodes: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DILocalVariable(name: "argv0", arg: 1, scope: !1581, file: !217, line: 39, type: !38)
!1584 = !DILocalVariable(name: "slash", scope: !1581, file: !217, line: 46, type: !38)
!1585 = !DILocalVariable(name: "base", scope: !1581, file: !217, line: 47, type: !38)
!1586 = !DILocation(line: 39, column: 31, scope: !1581)
!1587 = !DILocation(line: 51, column: 13, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !217, line: 51, column: 7)
!1589 = !DILocation(line: 51, column: 7, scope: !1581)
!1590 = !DILocation(line: 55, column: 14, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !217, line: 52, column: 5)
!1592 = !DILocation(line: 54, column: 7, scope: !1591)
!1593 = !DILocation(line: 56, column: 7, scope: !1591)
!1594 = !DILocation(line: 59, column: 11, scope: !1581)
!1595 = !DILocation(line: 46, column: 15, scope: !1581)
!1596 = !DILocation(line: 60, column: 17, scope: !1581)
!1597 = !DILocation(line: 60, column: 33, scope: !1581)
!1598 = !DILocation(line: 60, column: 11, scope: !1581)
!1599 = !DILocation(line: 47, column: 15, scope: !1581)
!1600 = !DILocation(line: 61, column: 12, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1581, file: !217, line: 61, column: 7)
!1602 = !DILocation(line: 61, column: 20, scope: !1601)
!1603 = !DILocation(line: 61, column: 25, scope: !1601)
!1604 = !DILocation(line: 61, column: 42, scope: !1601)
!1605 = !DILocation(line: 61, column: 28, scope: !1601)
!1606 = !DILocation(line: 61, column: 61, scope: !1601)
!1607 = !DILocation(line: 61, column: 7, scope: !1581)
!1608 = !DILocation(line: 64, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !217, line: 64, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1601, file: !217, line: 62, column: 5)
!1611 = !DILocation(line: 64, column: 36, scope: !1609)
!1612 = !DILocation(line: 64, column: 11, scope: !1610)
!1613 = !DILocation(line: 66, column: 24, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !217, line: 65, column: 9)
!1615 = !DILocation(line: 70, column: 41, scope: !1614)
!1616 = !DILocation(line: 72, column: 9, scope: !1614)
!1617 = !DILocation(line: 84, column: 16, scope: !1581)
!1618 = !DILocation(line: 90, column: 27, scope: !1581)
!1619 = !DILocation(line: 92, column: 1, scope: !1581)
!1620 = distinct !DISubprogram(name: "clone_quoting_options", scope: !232, file: !232, line: 122, type: !1621, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1624)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1623, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1624 = !{!1625, !1626, !1627}
!1625 = !DILocalVariable(name: "o", arg: 1, scope: !1620, file: !232, line: 122, type: !1623)
!1626 = !DILocalVariable(name: "e", scope: !1620, file: !232, line: 124, type: !25)
!1627 = !DILocalVariable(name: "p", scope: !1620, file: !232, line: 125, type: !1623)
!1628 = !DILocation(line: 122, column: 48, scope: !1620)
!1629 = !DILocation(line: 124, column: 11, scope: !1620)
!1630 = !DILocation(line: 124, column: 7, scope: !1620)
!1631 = !DILocation(line: 125, column: 40, scope: !1620)
!1632 = !DILocation(line: 125, column: 31, scope: !1620)
!1633 = !DILocation(line: 125, column: 27, scope: !1620)
!1634 = !DILocation(line: 127, column: 9, scope: !1620)
!1635 = !DILocation(line: 128, column: 3, scope: !1620)
!1636 = distinct !DISubprogram(name: "get_quoting_style", scope: !232, file: !232, line: 133, type: !1637, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1641)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!54, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1641 = !{!1642}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1636, file: !232, line: 133, type: !1639)
!1643 = !DILocation(line: 133, column: 50, scope: !1636)
!1644 = !DILocation(line: 135, column: 11, scope: !1636)
!1645 = !DILocation(line: 135, column: 46, scope: !1636)
!1646 = !{!1647, !751, i64 0}
!1647 = !{!"quoting_options", !751, i64 0, !854, i64 4, !751, i64 8, !750, i64 40, !750, i64 48}
!1648 = !DILocation(line: 135, column: 3, scope: !1636)
!1649 = distinct !DISubprogram(name: "set_quoting_style", scope: !232, file: !232, line: 141, type: !1650, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1623, !54}
!1652 = !{!1653, !1654}
!1653 = !DILocalVariable(name: "o", arg: 1, scope: !1649, file: !232, line: 141, type: !1623)
!1654 = !DILocalVariable(name: "s", arg: 2, scope: !1649, file: !232, line: 141, type: !54)
!1655 = !DILocation(line: 141, column: 44, scope: !1649)
!1656 = !DILocation(line: 141, column: 66, scope: !1649)
!1657 = !DILocation(line: 143, column: 4, scope: !1649)
!1658 = !DILocation(line: 143, column: 39, scope: !1649)
!1659 = !DILocation(line: 143, column: 45, scope: !1649)
!1660 = !DILocation(line: 144, column: 1, scope: !1649)
!1661 = distinct !DISubprogram(name: "set_char_quoting", scope: !232, file: !232, line: 152, type: !1662, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!25, !1623, !23, !25}
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1671, !1672}
!1665 = !DILocalVariable(name: "o", arg: 1, scope: !1661, file: !232, line: 152, type: !1623)
!1666 = !DILocalVariable(name: "c", arg: 2, scope: !1661, file: !232, line: 152, type: !23)
!1667 = !DILocalVariable(name: "i", arg: 3, scope: !1661, file: !232, line: 152, type: !25)
!1668 = !DILocalVariable(name: "uc", scope: !1661, file: !232, line: 154, type: !28)
!1669 = !DILocalVariable(name: "p", scope: !1661, file: !232, line: 155, type: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1671 = !DILocalVariable(name: "shift", scope: !1661, file: !232, line: 157, type: !25)
!1672 = !DILocalVariable(name: "r", scope: !1661, file: !232, line: 158, type: !25)
!1673 = !DILocation(line: 152, column: 43, scope: !1661)
!1674 = !DILocation(line: 152, column: 51, scope: !1661)
!1675 = !DILocation(line: 152, column: 58, scope: !1661)
!1676 = !DILocation(line: 154, column: 17, scope: !1661)
!1677 = !DILocation(line: 156, column: 6, scope: !1661)
!1678 = !DILocation(line: 156, column: 62, scope: !1661)
!1679 = !DILocation(line: 156, column: 57, scope: !1661)
!1680 = !DILocation(line: 155, column: 17, scope: !1661)
!1681 = !DILocation(line: 157, column: 15, scope: !1661)
!1682 = !DILocation(line: 157, column: 7, scope: !1661)
!1683 = !DILocation(line: 158, column: 12, scope: !1661)
!1684 = !DILocation(line: 158, column: 15, scope: !1661)
!1685 = !DILocation(line: 158, column: 25, scope: !1661)
!1686 = !DILocation(line: 158, column: 7, scope: !1661)
!1687 = !DILocation(line: 159, column: 13, scope: !1661)
!1688 = !DILocation(line: 159, column: 18, scope: !1661)
!1689 = !DILocation(line: 159, column: 23, scope: !1661)
!1690 = !DILocation(line: 159, column: 6, scope: !1661)
!1691 = !DILocation(line: 160, column: 3, scope: !1661)
!1692 = distinct !DISubprogram(name: "set_quoting_flags", scope: !232, file: !232, line: 168, type: !1693, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!25, !1623, !25}
!1695 = !{!1696, !1697, !1698}
!1696 = !DILocalVariable(name: "o", arg: 1, scope: !1692, file: !232, line: 168, type: !1623)
!1697 = !DILocalVariable(name: "i", arg: 2, scope: !1692, file: !232, line: 168, type: !25)
!1698 = !DILocalVariable(name: "r", scope: !1692, file: !232, line: 170, type: !25)
!1699 = !DILocation(line: 168, column: 44, scope: !1692)
!1700 = !DILocation(line: 168, column: 51, scope: !1692)
!1701 = !DILocation(line: 171, column: 8, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1692, file: !232, line: 171, column: 7)
!1703 = !DILocation(line: 171, column: 7, scope: !1692)
!1704 = !DILocation(line: 173, column: 10, scope: !1692)
!1705 = !{!1647, !854, i64 4}
!1706 = !DILocation(line: 170, column: 7, scope: !1692)
!1707 = !DILocation(line: 174, column: 12, scope: !1692)
!1708 = !DILocation(line: 175, column: 3, scope: !1692)
!1709 = distinct !DISubprogram(name: "set_custom_quoting", scope: !232, file: !232, line: 179, type: !1710, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1623, !38, !38}
!1712 = !{!1713, !1714, !1715}
!1713 = !DILocalVariable(name: "o", arg: 1, scope: !1709, file: !232, line: 179, type: !1623)
!1714 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1709, file: !232, line: 180, type: !38)
!1715 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1709, file: !232, line: 180, type: !38)
!1716 = !DILocation(line: 179, column: 45, scope: !1709)
!1717 = !DILocation(line: 180, column: 33, scope: !1709)
!1718 = !DILocation(line: 180, column: 57, scope: !1709)
!1719 = !DILocation(line: 182, column: 8, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !232, line: 182, column: 7)
!1721 = !DILocation(line: 182, column: 7, scope: !1709)
!1722 = !DILocation(line: 184, column: 6, scope: !1709)
!1723 = !DILocation(line: 184, column: 12, scope: !1709)
!1724 = !DILocation(line: 185, column: 8, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1709, file: !232, line: 185, column: 7)
!1726 = !DILocation(line: 185, column: 23, scope: !1725)
!1727 = !DILocation(line: 185, column: 19, scope: !1725)
!1728 = !DILocation(line: 186, column: 5, scope: !1725)
!1729 = !DILocation(line: 187, column: 6, scope: !1709)
!1730 = !DILocation(line: 187, column: 17, scope: !1709)
!1731 = !{!1647, !750, i64 40}
!1732 = !DILocation(line: 188, column: 6, scope: !1709)
!1733 = !DILocation(line: 188, column: 18, scope: !1709)
!1734 = !{!1647, !750, i64 48}
!1735 = !DILocation(line: 189, column: 1, scope: !1709)
!1736 = distinct !DISubprogram(name: "quotearg_buffer", scope: !232, file: !232, line: 784, type: !1737, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!83, !22, !83, !38, !83, !1639}
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1740 = !DILocalVariable(name: "buffer", arg: 1, scope: !1736, file: !232, line: 784, type: !22)
!1741 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1736, file: !232, line: 784, type: !83)
!1742 = !DILocalVariable(name: "arg", arg: 3, scope: !1736, file: !232, line: 785, type: !38)
!1743 = !DILocalVariable(name: "argsize", arg: 4, scope: !1736, file: !232, line: 785, type: !83)
!1744 = !DILocalVariable(name: "o", arg: 5, scope: !1736, file: !232, line: 786, type: !1639)
!1745 = !DILocalVariable(name: "p", scope: !1736, file: !232, line: 788, type: !1639)
!1746 = !DILocalVariable(name: "e", scope: !1736, file: !232, line: 789, type: !25)
!1747 = !DILocalVariable(name: "r", scope: !1736, file: !232, line: 790, type: !83)
!1748 = !DILocation(line: 784, column: 24, scope: !1736)
!1749 = !DILocation(line: 784, column: 39, scope: !1736)
!1750 = !DILocation(line: 785, column: 30, scope: !1736)
!1751 = !DILocation(line: 785, column: 42, scope: !1736)
!1752 = !DILocation(line: 786, column: 48, scope: !1736)
!1753 = !DILocation(line: 788, column: 37, scope: !1736)
!1754 = !DILocation(line: 788, column: 33, scope: !1736)
!1755 = !DILocation(line: 789, column: 11, scope: !1736)
!1756 = !DILocation(line: 789, column: 7, scope: !1736)
!1757 = !DILocation(line: 791, column: 43, scope: !1736)
!1758 = !DILocation(line: 791, column: 53, scope: !1736)
!1759 = !DILocation(line: 791, column: 60, scope: !1736)
!1760 = !DILocation(line: 792, column: 43, scope: !1736)
!1761 = !DILocation(line: 792, column: 58, scope: !1736)
!1762 = !DILocation(line: 790, column: 14, scope: !1736)
!1763 = !DILocation(line: 790, column: 10, scope: !1736)
!1764 = !DILocation(line: 793, column: 9, scope: !1736)
!1765 = !DILocation(line: 794, column: 3, scope: !1736)
!1766 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !232, file: !232, line: 256, type: !1767, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !1771)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!83, !22, !83, !38, !83, !54, !25, !1769, !38, !38}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1796, !1797, !1798, !1799, !1800, !1803, !1804, !1822, !1825, !1826, !1833}
!1772 = !DILocalVariable(name: "buffer", arg: 1, scope: !1766, file: !232, line: 256, type: !22)
!1773 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1766, file: !232, line: 256, type: !83)
!1774 = !DILocalVariable(name: "arg", arg: 3, scope: !1766, file: !232, line: 257, type: !38)
!1775 = !DILocalVariable(name: "argsize", arg: 4, scope: !1766, file: !232, line: 257, type: !83)
!1776 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1766, file: !232, line: 258, type: !54)
!1777 = !DILocalVariable(name: "flags", arg: 6, scope: !1766, file: !232, line: 258, type: !25)
!1778 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1766, file: !232, line: 259, type: !1769)
!1779 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1766, file: !232, line: 260, type: !38)
!1780 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1766, file: !232, line: 261, type: !38)
!1781 = !DILocalVariable(name: "i", scope: !1766, file: !232, line: 263, type: !83)
!1782 = !DILocalVariable(name: "len", scope: !1766, file: !232, line: 264, type: !83)
!1783 = !DILocalVariable(name: "orig_buffersize", scope: !1766, file: !232, line: 265, type: !83)
!1784 = !DILocalVariable(name: "quote_string", scope: !1766, file: !232, line: 266, type: !38)
!1785 = !DILocalVariable(name: "quote_string_len", scope: !1766, file: !232, line: 267, type: !83)
!1786 = !DILocalVariable(name: "backslash_escapes", scope: !1766, file: !232, line: 268, type: !180)
!1787 = !DILocalVariable(name: "unibyte_locale", scope: !1766, file: !232, line: 269, type: !180)
!1788 = !DILocalVariable(name: "elide_outer_quotes", scope: !1766, file: !232, line: 270, type: !180)
!1789 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1766, file: !232, line: 271, type: !180)
!1790 = !DILocalVariable(name: "encountered_single_quote", scope: !1766, file: !232, line: 272, type: !180)
!1791 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1766, file: !232, line: 273, type: !180)
!1792 = !DILocalVariable(name: "c", scope: !1793, file: !232, line: 402, type: !28)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !232, line: 401, column: 5)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !232, line: 400, column: 3)
!1795 = distinct !DILexicalBlock(scope: !1766, file: !232, line: 400, column: 3)
!1796 = !DILocalVariable(name: "esc", scope: !1793, file: !232, line: 403, type: !28)
!1797 = !DILocalVariable(name: "is_right_quote", scope: !1793, file: !232, line: 404, type: !180)
!1798 = !DILocalVariable(name: "escaping", scope: !1793, file: !232, line: 405, type: !180)
!1799 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1793, file: !232, line: 406, type: !180)
!1800 = !DILocalVariable(name: "m", scope: !1801, file: !232, line: 610, type: !83)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 608, column: 11)
!1802 = distinct !DILexicalBlock(scope: !1793, file: !232, line: 426, column: 9)
!1803 = !DILocalVariable(name: "printable", scope: !1801, file: !232, line: 612, type: !180)
!1804 = !DILocalVariable(name: "mbstate", scope: !1805, file: !232, line: 621, type: !1807)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !232, line: 620, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !232, line: 614, column: 17)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1808, line: 6, baseType: !1809)
!1808 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1810, line: 21, baseType: !1811)
!1810 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1810, line: 13, size: 64, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1811, file: !1810, line: 15, baseType: !25, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1811, file: !1810, line: 20, baseType: !1815, size: 32, offset: 32)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1810, line: 16, size: 32, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1815, file: !1810, line: 18, baseType: !7, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1815, file: !1810, line: 19, baseType: !1819, size: 32)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 4)
!1822 = !DILocalVariable(name: "w", scope: !1823, file: !232, line: 631, type: !1824)
!1823 = distinct !DILexicalBlock(scope: !1805, file: !232, line: 630, column: 19)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !84, line: 90, baseType: !25)
!1825 = !DILocalVariable(name: "bytes", scope: !1823, file: !232, line: 632, type: !83)
!1826 = !DILocalVariable(name: "j", scope: !1827, file: !232, line: 657, type: !83)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !232, line: 656, column: 27)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !232, line: 654, column: 29)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !232, line: 649, column: 23)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !232, line: 641, column: 30)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !232, line: 636, column: 30)
!1832 = distinct !DILexicalBlock(scope: !1823, file: !232, line: 634, column: 25)
!1833 = !DILocalVariable(name: "ilim", scope: !1834, file: !232, line: 684, type: !83)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !232, line: 681, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1801, file: !232, line: 680, column: 17)
!1836 = !DILocation(line: 256, column: 33, scope: !1766)
!1837 = !DILocation(line: 256, column: 48, scope: !1766)
!1838 = !DILocation(line: 257, column: 39, scope: !1766)
!1839 = !DILocation(line: 257, column: 51, scope: !1766)
!1840 = !DILocation(line: 258, column: 46, scope: !1766)
!1841 = !DILocation(line: 258, column: 65, scope: !1766)
!1842 = !DILocation(line: 259, column: 47, scope: !1766)
!1843 = !DILocation(line: 260, column: 39, scope: !1766)
!1844 = !DILocation(line: 261, column: 39, scope: !1766)
!1845 = !DILocation(line: 264, column: 10, scope: !1766)
!1846 = !DILocation(line: 265, column: 10, scope: !1766)
!1847 = !DILocation(line: 266, column: 15, scope: !1766)
!1848 = !DILocation(line: 267, column: 10, scope: !1766)
!1849 = !DILocation(line: 268, column: 8, scope: !1766)
!1850 = !DILocation(line: 269, column: 25, scope: !1766)
!1851 = !DILocation(line: 269, column: 36, scope: !1766)
!1852 = !DILocation(line: 270, column: 8, scope: !1766)
!1853 = !DILocation(line: 271, column: 8, scope: !1766)
!1854 = !DILocation(line: 272, column: 8, scope: !1766)
!1855 = !DILocation(line: 273, column: 8, scope: !1766)
!1856 = !DILocation(line: 273, column: 3, scope: !1766)
!1857 = !DILocation(line: 0, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1766, file: !232, line: 317, column: 5)
!1859 = !DILocation(line: 316, column: 3, scope: !1766)
!1860 = !DILocation(line: 323, column: 11, scope: !1858)
!1861 = !DILocation(line: 323, column: 12, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !232, line: 323, column: 11)
!1863 = !DILocation(line: 324, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !232, line: 324, column: 9)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !232, line: 324, column: 9)
!1866 = !DILocation(line: 324, column: 9, scope: !1865)
!1867 = !DILocation(line: 362, column: 26, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !232, line: 340, column: 11)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !232, line: 339, column: 13)
!1870 = distinct !DILexicalBlock(scope: !1858, file: !232, line: 338, column: 7)
!1871 = !DILocation(line: 363, column: 27, scope: !1868)
!1872 = !DILocation(line: 364, column: 11, scope: !1868)
!1873 = !DILocation(line: 365, column: 14, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !232, line: 365, column: 13)
!1875 = !DILocation(line: 365, column: 13, scope: !1870)
!1876 = !DILocation(line: 366, column: 43, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !232, line: 366, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !232, line: 366, column: 11)
!1879 = !DILocation(line: 366, column: 11, scope: !1878)
!1880 = !DILocation(line: 367, column: 13, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !232, line: 367, column: 13)
!1882 = distinct !DILexicalBlock(scope: !1877, file: !232, line: 367, column: 13)
!1883 = !DILocation(line: 367, column: 13, scope: !1882)
!1884 = !DILocation(line: 366, column: 70, scope: !1877)
!1885 = distinct !{!1885, !1879, !1886}
!1886 = !DILocation(line: 367, column: 13, scope: !1878)
!1887 = !DILocation(line: 370, column: 28, scope: !1870)
!1888 = !DILocation(line: 372, column: 7, scope: !1858)
!1889 = !DILocation(line: 376, column: 7, scope: !1858)
!1890 = !DILocation(line: 379, column: 7, scope: !1858)
!1891 = !DILocation(line: 381, column: 12, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1858, file: !232, line: 381, column: 11)
!1893 = !DILocation(line: 381, column: 11, scope: !1858)
!1894 = !DILocation(line: 0, scope: !1892)
!1895 = !DILocation(line: 386, column: 12, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1858, file: !232, line: 386, column: 11)
!1897 = !DILocation(line: 386, column: 11, scope: !1858)
!1898 = !DILocation(line: 387, column: 9, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !232, line: 387, column: 9)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !232, line: 387, column: 9)
!1901 = !DILocation(line: 387, column: 9, scope: !1900)
!1902 = !DILocation(line: 394, column: 7, scope: !1858)
!1903 = !DILocation(line: 397, column: 7, scope: !1858)
!1904 = !DILocation(line: 0, scope: !1766)
!1905 = !DILocation(line: 263, column: 10, scope: !1766)
!1906 = !DILocation(line: 400, column: 8, scope: !1795)
!1907 = !DILocation(line: 0, scope: !1794)
!1908 = !DILocation(line: 400, column: 27, scope: !1794)
!1909 = !DILocation(line: 400, column: 19, scope: !1794)
!1910 = !DILocation(line: 400, column: 41, scope: !1794)
!1911 = !DILocation(line: 400, column: 48, scope: !1794)
!1912 = !DILocation(line: 400, column: 3, scope: !1795)
!1913 = !DILocation(line: 400, column: 60, scope: !1794)
!1914 = !DILocation(line: 404, column: 12, scope: !1793)
!1915 = !DILocation(line: 405, column: 12, scope: !1793)
!1916 = !DILocation(line: 406, column: 12, scope: !1793)
!1917 = !DILocation(line: 409, column: 11, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1793, file: !232, line: 408, column: 11)
!1919 = !DILocation(line: 411, column: 17, scope: !1918)
!1920 = !DILocation(line: 412, column: 39, scope: !1918)
!1921 = !DILocation(line: 416, column: 32, scope: !1918)
!1922 = !DILocation(line: 412, column: 19, scope: !1918)
!1923 = !DILocation(line: 412, column: 15, scope: !1918)
!1924 = !DILocation(line: 417, column: 11, scope: !1918)
!1925 = !DILocation(line: 417, column: 26, scope: !1918)
!1926 = !DILocation(line: 417, column: 14, scope: !1918)
!1927 = !DILocation(line: 417, column: 63, scope: !1918)
!1928 = !DILocation(line: 408, column: 11, scope: !1793)
!1929 = !DILocation(line: 0, scope: !1793)
!1930 = !DILocation(line: 424, column: 11, scope: !1793)
!1931 = !DILocation(line: 402, column: 21, scope: !1793)
!1932 = !DILocation(line: 425, column: 7, scope: !1793)
!1933 = !DILocation(line: 428, column: 15, scope: !1802)
!1934 = !DILocation(line: 430, column: 15, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !232, line: 430, column: 15)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !232, line: 429, column: 13)
!1937 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 428, column: 15)
!1938 = !DILocation(line: 430, column: 15, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !232, line: 430, column: 15)
!1940 = !DILocation(line: 430, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !232, line: 430, column: 15)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !232, line: 430, column: 15)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !232, line: 430, column: 15)
!1944 = !DILocation(line: 430, column: 15, scope: !1942)
!1945 = !DILocation(line: 430, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !232, line: 430, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !232, line: 430, column: 15)
!1948 = !DILocation(line: 430, column: 15, scope: !1947)
!1949 = !DILocation(line: 430, column: 15, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !232, line: 430, column: 15)
!1951 = distinct !DILexicalBlock(scope: !1943, file: !232, line: 430, column: 15)
!1952 = !DILocation(line: 430, column: 15, scope: !1951)
!1953 = !DILocation(line: 430, column: 15, scope: !1943)
!1954 = !DILocation(line: 430, column: 15, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !232, line: 430, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1935, file: !232, line: 430, column: 15)
!1957 = !DILocation(line: 430, column: 15, scope: !1956)
!1958 = !DILocation(line: 438, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1936, file: !232, line: 437, column: 19)
!1960 = !DILocation(line: 438, column: 24, scope: !1959)
!1961 = !DILocation(line: 438, column: 28, scope: !1959)
!1962 = !DILocation(line: 438, column: 38, scope: !1959)
!1963 = !DILocation(line: 438, column: 48, scope: !1959)
!1964 = !DILocation(line: 438, column: 59, scope: !1959)
!1965 = !DILocation(line: 440, column: 19, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !232, line: 440, column: 19)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !232, line: 440, column: 19)
!1968 = distinct !DILexicalBlock(scope: !1959, file: !232, line: 439, column: 17)
!1969 = !DILocation(line: 440, column: 19, scope: !1967)
!1970 = !DILocation(line: 441, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !232, line: 441, column: 19)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !232, line: 441, column: 19)
!1973 = !DILocation(line: 441, column: 19, scope: !1972)
!1974 = !DILocation(line: 442, column: 17, scope: !1968)
!1975 = !DILocation(line: 449, column: 20, scope: !1937)
!1976 = !DILocation(line: 454, column: 11, scope: !1802)
!1977 = !DILocation(line: 457, column: 19, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 455, column: 13)
!1979 = !DILocation(line: 463, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1978, file: !232, line: 462, column: 19)
!1981 = !DILocation(line: 463, column: 24, scope: !1980)
!1982 = !DILocation(line: 463, column: 28, scope: !1980)
!1983 = !DILocation(line: 463, column: 38, scope: !1980)
!1984 = !DILocation(line: 463, column: 47, scope: !1980)
!1985 = !DILocation(line: 463, column: 41, scope: !1980)
!1986 = !DILocation(line: 463, column: 52, scope: !1980)
!1987 = !DILocation(line: 462, column: 19, scope: !1978)
!1988 = !DILocation(line: 464, column: 25, scope: !1980)
!1989 = !DILocation(line: 464, column: 17, scope: !1980)
!1990 = !DILocation(line: 471, column: 25, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1980, file: !232, line: 465, column: 19)
!1992 = !DILocation(line: 475, column: 21, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !232, line: 475, column: 21)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !232, line: 475, column: 21)
!1995 = !DILocation(line: 475, column: 21, scope: !1994)
!1996 = !DILocation(line: 476, column: 21, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !232, line: 476, column: 21)
!1998 = distinct !DILexicalBlock(scope: !1991, file: !232, line: 476, column: 21)
!1999 = !DILocation(line: 476, column: 21, scope: !1998)
!2000 = !DILocation(line: 477, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !232, line: 477, column: 21)
!2002 = distinct !DILexicalBlock(scope: !1991, file: !232, line: 477, column: 21)
!2003 = !DILocation(line: 477, column: 21, scope: !2002)
!2004 = !DILocation(line: 478, column: 21, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !232, line: 478, column: 21)
!2006 = distinct !DILexicalBlock(scope: !1991, file: !232, line: 478, column: 21)
!2007 = !DILocation(line: 478, column: 21, scope: !2006)
!2008 = !DILocation(line: 479, column: 21, scope: !1991)
!2009 = !DILocation(line: 403, column: 21, scope: !1793)
!2010 = !DILocation(line: 492, column: 31, scope: !1802)
!2011 = !DILocation(line: 493, column: 31, scope: !1802)
!2012 = !DILocation(line: 495, column: 31, scope: !1802)
!2013 = !DILocation(line: 496, column: 31, scope: !1802)
!2014 = !DILocation(line: 497, column: 31, scope: !1802)
!2015 = !DILocation(line: 500, column: 15, scope: !1802)
!2016 = !DILocation(line: 502, column: 19, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !232, line: 501, column: 13)
!2018 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 500, column: 15)
!2019 = !DILocation(line: 509, column: 33, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 509, column: 15)
!2021 = !DILocation(line: 0, scope: !1802)
!2022 = !DILocation(line: 514, column: 15, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 513, column: 15)
!2024 = !DILocation(line: 518, column: 15, scope: !1802)
!2025 = !DILocation(line: 526, column: 26, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 526, column: 15)
!2027 = !DILocation(line: 526, column: 15, scope: !1802)
!2028 = !DILocation(line: 526, column: 40, scope: !2026)
!2029 = !DILocation(line: 526, column: 47, scope: !2026)
!2030 = !DILocation(line: 530, column: 17, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 530, column: 15)
!2032 = !DILocation(line: 526, column: 18, scope: !2026)
!2033 = !DILocation(line: 526, column: 65, scope: !2026)
!2034 = !DILocation(line: 530, column: 15, scope: !1802)
!2035 = !DILocation(line: 535, column: 11, scope: !1802)
!2036 = !DILocation(line: 549, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 548, column: 15)
!2038 = !DILocation(line: 556, column: 15, scope: !1802)
!2039 = !DILocation(line: 558, column: 19, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !232, line: 557, column: 13)
!2041 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 556, column: 15)
!2042 = !DILocation(line: 561, column: 19, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !232, line: 561, column: 19)
!2044 = !DILocation(line: 561, column: 35, scope: !2043)
!2045 = !DILocation(line: 561, column: 30, scope: !2043)
!2046 = !DILocation(line: 570, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !232, line: 570, column: 15)
!2048 = distinct !DILexicalBlock(scope: !2040, file: !232, line: 570, column: 15)
!2049 = !DILocation(line: 570, column: 15, scope: !2048)
!2050 = !DILocation(line: 571, column: 15, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !232, line: 571, column: 15)
!2052 = distinct !DILexicalBlock(scope: !2040, file: !232, line: 571, column: 15)
!2053 = !DILocation(line: 571, column: 15, scope: !2052)
!2054 = !DILocation(line: 572, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !232, line: 572, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2040, file: !232, line: 572, column: 15)
!2057 = !DILocation(line: 572, column: 15, scope: !2056)
!2058 = !DILocation(line: 574, column: 13, scope: !2040)
!2059 = !DILocation(line: 614, column: 17, scope: !1801)
!2060 = !DILocation(line: 610, column: 20, scope: !1801)
!2061 = !DILocation(line: 617, column: 29, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1806, file: !232, line: 615, column: 15)
!2063 = !DILocation(line: 617, column: 27, scope: !2062)
!2064 = !DILocation(line: 612, column: 18, scope: !1801)
!2065 = !DILocation(line: 618, column: 15, scope: !2062)
!2066 = !DILocation(line: 621, column: 17, scope: !1805)
!2067 = !DILocation(line: 622, column: 17, scope: !1805)
!2068 = !DILocation(line: 626, column: 29, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1805, file: !232, line: 626, column: 21)
!2070 = !DILocation(line: 626, column: 21, scope: !1805)
!2071 = !DILocation(line: 627, column: 29, scope: !2069)
!2072 = !DILocation(line: 627, column: 19, scope: !2069)
!2073 = !DILocation(line: 0, scope: !1918)
!2074 = !DILocation(line: 629, column: 17, scope: !1805)
!2075 = !DILocation(line: 624, column: 19, scope: !1805)
!2076 = !DILocation(line: 625, column: 27, scope: !1805)
!2077 = !DILocation(line: 631, column: 21, scope: !1823)
!2078 = !DILocation(line: 632, column: 56, scope: !1823)
!2079 = !DILocation(line: 632, column: 50, scope: !1823)
!2080 = !DILocation(line: 633, column: 53, scope: !1823)
!2081 = !DILocation(line: 621, column: 27, scope: !1805)
!2082 = !DILocation(line: 631, column: 29, scope: !1823)
!2083 = !DILocation(line: 632, column: 36, scope: !1823)
!2084 = !DILocation(line: 632, column: 28, scope: !1823)
!2085 = !DILocation(line: 634, column: 25, scope: !1823)
!2086 = !DILocation(line: 644, column: 38, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1830, file: !232, line: 642, column: 23)
!2088 = !DILocation(line: 644, column: 48, scope: !2087)
!2089 = !DILocation(line: 644, column: 51, scope: !2087)
!2090 = !DILocation(line: 644, column: 25, scope: !2087)
!2091 = !DILocation(line: 645, column: 28, scope: !2087)
!2092 = !DILocation(line: 644, column: 34, scope: !2087)
!2093 = distinct !{!2093, !2090, !2091}
!2094 = !DILocation(line: 658, column: 43, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !232, line: 658, column: 29)
!2096 = distinct !DILexicalBlock(scope: !1827, file: !232, line: 658, column: 29)
!2097 = !DILocation(line: 655, column: 29, scope: !1828)
!2098 = !DILocation(line: 657, column: 36, scope: !1827)
!2099 = !DILocation(line: 659, column: 49, scope: !2095)
!2100 = !DILocation(line: 659, column: 39, scope: !2095)
!2101 = !DILocation(line: 659, column: 31, scope: !2095)
!2102 = !DILocation(line: 658, column: 53, scope: !2095)
!2103 = !DILocation(line: 658, column: 29, scope: !2096)
!2104 = distinct !{!2104, !2103, !2105}
!2105 = !DILocation(line: 667, column: 33, scope: !2096)
!2106 = !DILocation(line: 674, column: 19, scope: !1805)
!2107 = !DILocation(line: 670, column: 41, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1829, file: !232, line: 670, column: 29)
!2109 = !DILocation(line: 670, column: 31, scope: !2108)
!2110 = !DILocation(line: 670, column: 29, scope: !1829)
!2111 = !DILocation(line: 672, column: 27, scope: !1829)
!2112 = !DILocation(line: 675, column: 26, scope: !1805)
!2113 = !DILocation(line: 675, column: 24, scope: !1805)
!2114 = !DILocation(line: 674, column: 19, scope: !1823)
!2115 = distinct !{!2115, !2074, !2116}
!2116 = !DILocation(line: 675, column: 44, scope: !1805)
!2117 = !DILocation(line: 676, column: 15, scope: !1806)
!2118 = !DILocation(line: 0, scope: !2069)
!2119 = !DILocation(line: 0, scope: !1805)
!2120 = !DILocation(line: 678, column: 40, scope: !1801)
!2121 = !DILocation(line: 680, column: 19, scope: !1835)
!2122 = !DILocation(line: 680, column: 45, scope: !1835)
!2123 = !DILocation(line: 680, column: 23, scope: !1835)
!2124 = !DILocation(line: 684, column: 33, scope: !1834)
!2125 = !DILocation(line: 684, column: 24, scope: !1834)
!2126 = !DILocation(line: 686, column: 17, scope: !1834)
!2127 = !DILocation(line: 0, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !232, line: 687, column: 19)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !232, line: 686, column: 17)
!2130 = distinct !DILexicalBlock(scope: !1834, file: !232, line: 686, column: 17)
!2131 = !DILocation(line: 0, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2128, file: !232, line: 703, column: 21)
!2133 = !DILocation(line: 0, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !232, line: 696, column: 23)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !232, line: 695, column: 30)
!2136 = distinct !DILexicalBlock(scope: !2128, file: !232, line: 688, column: 25)
!2137 = !DILocation(line: 688, column: 43, scope: !2136)
!2138 = !DILocation(line: 690, column: 25, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !232, line: 690, column: 25)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !232, line: 689, column: 23)
!2141 = !DILocation(line: 690, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !232, line: 690, column: 25)
!2143 = !DILocation(line: 690, column: 25, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !232, line: 690, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !232, line: 690, column: 25)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !232, line: 690, column: 25)
!2147 = !DILocation(line: 690, column: 25, scope: !2145)
!2148 = !DILocation(line: 690, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !232, line: 690, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !232, line: 690, column: 25)
!2151 = !DILocation(line: 690, column: 25, scope: !2150)
!2152 = !DILocation(line: 690, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !232, line: 690, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2146, file: !232, line: 690, column: 25)
!2155 = !DILocation(line: 690, column: 25, scope: !2154)
!2156 = !DILocation(line: 690, column: 25, scope: !2146)
!2157 = !DILocation(line: 690, column: 25, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !232, line: 690, column: 25)
!2159 = distinct !DILexicalBlock(scope: !2139, file: !232, line: 690, column: 25)
!2160 = !DILocation(line: 690, column: 25, scope: !2159)
!2161 = !DILocation(line: 691, column: 25, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !232, line: 691, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2140, file: !232, line: 691, column: 25)
!2164 = !DILocation(line: 691, column: 25, scope: !2163)
!2165 = !DILocation(line: 692, column: 25, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !232, line: 692, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2140, file: !232, line: 692, column: 25)
!2168 = !DILocation(line: 692, column: 25, scope: !2167)
!2169 = !DILocation(line: 693, column: 38, scope: !2140)
!2170 = !DILocation(line: 693, column: 33, scope: !2140)
!2171 = !DILocation(line: 694, column: 23, scope: !2140)
!2172 = !DILocation(line: 695, column: 30, scope: !2135)
!2173 = !DILocation(line: 695, column: 30, scope: !2136)
!2174 = !DILocation(line: 697, column: 25, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !232, line: 697, column: 25)
!2176 = distinct !DILexicalBlock(scope: !2134, file: !232, line: 697, column: 25)
!2177 = !DILocation(line: 697, column: 25, scope: !2176)
!2178 = !DILocation(line: 699, column: 23, scope: !2134)
!2179 = !DILocation(line: 0, scope: !2167)
!2180 = !DILocation(line: 0, scope: !2140)
!2181 = !DILocation(line: 0, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1918, file: !232, line: 418, column: 9)
!2183 = !DILocation(line: 0, scope: !2139)
!2184 = !DILocation(line: 700, column: 35, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2128, file: !232, line: 700, column: 25)
!2186 = !DILocation(line: 700, column: 30, scope: !2185)
!2187 = !DILocation(line: 700, column: 25, scope: !2128)
!2188 = !DILocation(line: 702, column: 21, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !232, line: 702, column: 21)
!2190 = distinct !DILexicalBlock(scope: !2128, file: !232, line: 702, column: 21)
!2191 = !DILocation(line: 702, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !232, line: 702, column: 21)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !232, line: 702, column: 21)
!2194 = distinct !DILexicalBlock(scope: !2189, file: !232, line: 702, column: 21)
!2195 = !DILocation(line: 702, column: 21, scope: !2193)
!2196 = !DILocation(line: 702, column: 21, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !232, line: 702, column: 21)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !232, line: 702, column: 21)
!2199 = !DILocation(line: 702, column: 21, scope: !2198)
!2200 = !DILocation(line: 702, column: 21, scope: !2194)
!2201 = !DILocation(line: 0, scope: !2176)
!2202 = !DILocation(line: 703, column: 21, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2132, file: !232, line: 703, column: 21)
!2204 = !DILocation(line: 703, column: 21, scope: !2132)
!2205 = !DILocation(line: 704, column: 25, scope: !2128)
!2206 = !DILocation(line: 686, column: 17, scope: !2129)
!2207 = distinct !{!2207, !2208, !2209}
!2208 = !DILocation(line: 686, column: 17, scope: !2130)
!2209 = !DILocation(line: 705, column: 19, scope: !2130)
!2210 = !DILocation(line: 0, scope: !1795)
!2211 = !DILocation(line: 416, column: 30, scope: !1918)
!2212 = !DILocation(line: 712, column: 34, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1793, file: !232, line: 712, column: 11)
!2214 = !DILocation(line: 714, column: 14, scope: !2213)
!2215 = !DILocation(line: 715, column: 14, scope: !2213)
!2216 = !DILocation(line: 715, column: 35, scope: !2213)
!2217 = !DILocation(line: 715, column: 17, scope: !2213)
!2218 = !DILocation(line: 715, column: 47, scope: !2213)
!2219 = !DILocation(line: 715, column: 65, scope: !2213)
!2220 = !DILocation(line: 716, column: 15, scope: !2213)
!2221 = !DILocation(line: 716, column: 11, scope: !2213)
!2222 = !DILocation(line: 712, column: 11, scope: !1793)
!2223 = !DILocation(line: 400, column: 10, scope: !1795)
!2224 = !DILocation(line: 0, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !232, line: 519, column: 13)
!2226 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 518, column: 15)
!2227 = !DILocation(line: 720, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1793, file: !232, line: 720, column: 7)
!2229 = !DILocation(line: 720, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2228, file: !232, line: 720, column: 7)
!2231 = !DILocation(line: 720, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !232, line: 720, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !232, line: 720, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !232, line: 720, column: 7)
!2235 = !DILocation(line: 720, column: 7, scope: !2233)
!2236 = !DILocation(line: 720, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !232, line: 720, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !232, line: 720, column: 7)
!2239 = !DILocation(line: 720, column: 7, scope: !2238)
!2240 = !DILocation(line: 720, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !232, line: 720, column: 7)
!2242 = distinct !DILexicalBlock(scope: !2234, file: !232, line: 720, column: 7)
!2243 = !DILocation(line: 720, column: 7, scope: !2242)
!2244 = !DILocation(line: 720, column: 7, scope: !2234)
!2245 = !DILocation(line: 720, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !232, line: 720, column: 7)
!2247 = distinct !DILexicalBlock(scope: !2228, file: !232, line: 720, column: 7)
!2248 = !DILocation(line: 720, column: 7, scope: !2247)
!2249 = !DILocation(line: 723, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !232, line: 723, column: 7)
!2251 = distinct !DILexicalBlock(scope: !1793, file: !232, line: 723, column: 7)
!2252 = !DILocation(line: 424, column: 9, scope: !1793)
!2253 = !DILocation(line: 723, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !232, line: 723, column: 7)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !232, line: 723, column: 7)
!2256 = distinct !DILexicalBlock(scope: !2250, file: !232, line: 723, column: 7)
!2257 = !DILocation(line: 723, column: 7, scope: !2255)
!2258 = !DILocation(line: 723, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !232, line: 723, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !232, line: 723, column: 7)
!2261 = !DILocation(line: 723, column: 7, scope: !2260)
!2262 = !DILocation(line: 723, column: 7, scope: !2256)
!2263 = !DILocation(line: 724, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !232, line: 724, column: 7)
!2265 = distinct !DILexicalBlock(scope: !1793, file: !232, line: 724, column: 7)
!2266 = !DILocation(line: 724, column: 7, scope: !2265)
!2267 = !DILocation(line: 726, column: 13, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !1793, file: !232, line: 726, column: 11)
!2269 = !DILocation(line: 726, column: 11, scope: !1793)
!2270 = !DILocation(line: 728, column: 5, scope: !1794)
!2271 = !DILocation(line: 400, column: 75, scope: !1794)
!2272 = !DILocation(line: 400, column: 3, scope: !1794)
!2273 = distinct !{!2273, !1912, !2274}
!2274 = !DILocation(line: 728, column: 5, scope: !1795)
!2275 = !DILocation(line: 730, column: 11, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !1766, file: !232, line: 730, column: 7)
!2277 = !DILocation(line: 730, column: 16, scope: !2276)
!2278 = !DILocation(line: 738, column: 51, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !1766, file: !232, line: 738, column: 7)
!2280 = !DILocation(line: 739, column: 10, scope: !2279)
!2281 = !DILocation(line: 741, column: 11, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !232, line: 741, column: 11)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !232, line: 740, column: 5)
!2284 = !DILocation(line: 741, column: 11, scope: !2283)
!2285 = !DILocation(line: 742, column: 16, scope: !2282)
!2286 = !DILocation(line: 742, column: 9, scope: !2282)
!2287 = !DILocation(line: 746, column: 18, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2282, file: !232, line: 746, column: 16)
!2289 = !DILocation(line: 746, column: 32, scope: !2288)
!2290 = !DILocation(line: 746, column: 29, scope: !2288)
!2291 = !DILocation(line: 755, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !1766, file: !232, line: 755, column: 7)
!2293 = !DILocation(line: 755, column: 20, scope: !2292)
!2294 = !DILocation(line: 756, column: 12, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !232, line: 756, column: 5)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !232, line: 756, column: 5)
!2297 = !DILocation(line: 756, column: 5, scope: !2296)
!2298 = !DILocation(line: 757, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !232, line: 757, column: 7)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !232, line: 757, column: 7)
!2301 = !DILocation(line: 757, column: 7, scope: !2300)
!2302 = !DILocation(line: 756, column: 39, scope: !2295)
!2303 = distinct !{!2303, !2297, !2304}
!2304 = !DILocation(line: 757, column: 7, scope: !2296)
!2305 = !DILocation(line: 759, column: 11, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1766, file: !232, line: 759, column: 7)
!2307 = !DILocation(line: 759, column: 7, scope: !1766)
!2308 = !DILocation(line: 760, column: 5, scope: !2306)
!2309 = !DILocation(line: 760, column: 17, scope: !2306)
!2310 = !DILocation(line: 766, column: 21, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !1766, file: !232, line: 766, column: 7)
!2312 = !DILocation(line: 766, column: 54, scope: !2311)
!2313 = !DILocation(line: 766, column: 51, scope: !2311)
!2314 = !DILocation(line: 770, column: 42, scope: !1766)
!2315 = !DILocation(line: 768, column: 10, scope: !1766)
!2316 = !DILocation(line: 768, column: 3, scope: !1766)
!2317 = !DILocation(line: 772, column: 1, scope: !1766)
!2318 = distinct !DISubprogram(name: "gettext_quote", scope: !232, file: !232, line: 207, type: !2319, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!38, !38, !54}
!2321 = !{!2322, !2323, !2324, !2325}
!2322 = !DILocalVariable(name: "msgid", arg: 1, scope: !2318, file: !232, line: 207, type: !38)
!2323 = !DILocalVariable(name: "s", arg: 2, scope: !2318, file: !232, line: 207, type: !54)
!2324 = !DILocalVariable(name: "translation", scope: !2318, file: !232, line: 209, type: !38)
!2325 = !DILocalVariable(name: "locale_code", scope: !2318, file: !232, line: 210, type: !38)
!2326 = !DILocation(line: 207, column: 28, scope: !2318)
!2327 = !DILocation(line: 207, column: 54, scope: !2318)
!2328 = !DILocation(line: 209, column: 29, scope: !2318)
!2329 = !DILocation(line: 209, column: 15, scope: !2318)
!2330 = !DILocation(line: 212, column: 19, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2318, file: !232, line: 212, column: 7)
!2332 = !DILocation(line: 212, column: 7, scope: !2318)
!2333 = !DILocation(line: 233, column: 17, scope: !2318)
!2334 = !DILocation(line: 210, column: 15, scope: !2318)
!2335 = !DILocalVariable(name: "s1", arg: 1, scope: !2336, file: !2337, line: 160, type: !38)
!2336 = distinct !DISubprogram(name: "strcaseeq0", scope: !2337, file: !2337, line: 160, type: !2338, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2340)
!2337 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2340 = !{!2335, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2341 = !DILocalVariable(name: "s2", arg: 2, scope: !2336, file: !2337, line: 160, type: !38)
!2342 = !DILocalVariable(name: "s20", arg: 3, scope: !2336, file: !2337, line: 160, type: !23)
!2343 = !DILocalVariable(name: "s21", arg: 4, scope: !2336, file: !2337, line: 160, type: !23)
!2344 = !DILocalVariable(name: "s22", arg: 5, scope: !2336, file: !2337, line: 160, type: !23)
!2345 = !DILocalVariable(name: "s23", arg: 6, scope: !2336, file: !2337, line: 160, type: !23)
!2346 = !DILocalVariable(name: "s24", arg: 7, scope: !2336, file: !2337, line: 160, type: !23)
!2347 = !DILocalVariable(name: "s25", arg: 8, scope: !2336, file: !2337, line: 160, type: !23)
!2348 = !DILocalVariable(name: "s26", arg: 9, scope: !2336, file: !2337, line: 160, type: !23)
!2349 = !DILocalVariable(name: "s27", arg: 10, scope: !2336, file: !2337, line: 160, type: !23)
!2350 = !DILocalVariable(name: "s28", arg: 11, scope: !2336, file: !2337, line: 160, type: !23)
!2351 = !DILocation(line: 160, column: 25, scope: !2336, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 234, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2318, file: !232, line: 234, column: 7)
!2354 = !DILocation(line: 160, column: 41, scope: !2336, inlinedAt: !2352)
!2355 = !DILocation(line: 160, column: 50, scope: !2336, inlinedAt: !2352)
!2356 = !DILocation(line: 160, column: 60, scope: !2336, inlinedAt: !2352)
!2357 = !DILocation(line: 160, column: 70, scope: !2336, inlinedAt: !2352)
!2358 = !DILocation(line: 160, column: 80, scope: !2336, inlinedAt: !2352)
!2359 = !DILocation(line: 160, column: 90, scope: !2336, inlinedAt: !2352)
!2360 = !DILocation(line: 160, column: 100, scope: !2336, inlinedAt: !2352)
!2361 = !DILocation(line: 160, column: 110, scope: !2336, inlinedAt: !2352)
!2362 = !DILocation(line: 160, column: 120, scope: !2336, inlinedAt: !2352)
!2363 = !DILocation(line: 160, column: 130, scope: !2336, inlinedAt: !2352)
!2364 = !DILocation(line: 162, column: 7, scope: !2365, inlinedAt: !2352)
!2365 = distinct !DILexicalBlock(scope: !2336, file: !2337, line: 162, column: 7)
!2366 = !DILocalVariable(name: "s1", arg: 1, scope: !2367, file: !2337, line: 146, type: !38)
!2367 = distinct !DISubprogram(name: "strcaseeq1", scope: !2337, file: !2337, line: 146, type: !2368, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23, !23, !23}
!2370 = !{!2366, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2371 = !DILocalVariable(name: "s2", arg: 2, scope: !2367, file: !2337, line: 146, type: !38)
!2372 = !DILocalVariable(name: "s21", arg: 3, scope: !2367, file: !2337, line: 146, type: !23)
!2373 = !DILocalVariable(name: "s22", arg: 4, scope: !2367, file: !2337, line: 146, type: !23)
!2374 = !DILocalVariable(name: "s23", arg: 5, scope: !2367, file: !2337, line: 146, type: !23)
!2375 = !DILocalVariable(name: "s24", arg: 6, scope: !2367, file: !2337, line: 146, type: !23)
!2376 = !DILocalVariable(name: "s25", arg: 7, scope: !2367, file: !2337, line: 146, type: !23)
!2377 = !DILocalVariable(name: "s26", arg: 8, scope: !2367, file: !2337, line: 146, type: !23)
!2378 = !DILocalVariable(name: "s27", arg: 9, scope: !2367, file: !2337, line: 146, type: !23)
!2379 = !DILocalVariable(name: "s28", arg: 10, scope: !2367, file: !2337, line: 146, type: !23)
!2380 = !DILocation(line: 146, column: 25, scope: !2367, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 167, column: 16, scope: !2382, inlinedAt: !2352)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !2337, line: 164, column: 11)
!2383 = distinct !DILexicalBlock(scope: !2365, file: !2337, line: 163, column: 5)
!2384 = !DILocation(line: 146, column: 41, scope: !2367, inlinedAt: !2381)
!2385 = !DILocation(line: 146, column: 50, scope: !2367, inlinedAt: !2381)
!2386 = !DILocation(line: 146, column: 60, scope: !2367, inlinedAt: !2381)
!2387 = !DILocation(line: 146, column: 70, scope: !2367, inlinedAt: !2381)
!2388 = !DILocation(line: 146, column: 80, scope: !2367, inlinedAt: !2381)
!2389 = !DILocation(line: 146, column: 90, scope: !2367, inlinedAt: !2381)
!2390 = !DILocation(line: 146, column: 100, scope: !2367, inlinedAt: !2381)
!2391 = !DILocation(line: 146, column: 110, scope: !2367, inlinedAt: !2381)
!2392 = !DILocation(line: 146, column: 120, scope: !2367, inlinedAt: !2381)
!2393 = !DILocation(line: 148, column: 7, scope: !2394, inlinedAt: !2381)
!2394 = distinct !DILexicalBlock(scope: !2367, file: !2337, line: 148, column: 7)
!2395 = !DILocalVariable(name: "s1", arg: 1, scope: !2396, file: !2337, line: 132, type: !38)
!2396 = distinct !DISubprogram(name: "strcaseeq2", scope: !2337, file: !2337, line: 132, type: !2397, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23, !23}
!2399 = !{!2395, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2400 = !DILocalVariable(name: "s2", arg: 2, scope: !2396, file: !2337, line: 132, type: !38)
!2401 = !DILocalVariable(name: "s22", arg: 3, scope: !2396, file: !2337, line: 132, type: !23)
!2402 = !DILocalVariable(name: "s23", arg: 4, scope: !2396, file: !2337, line: 132, type: !23)
!2403 = !DILocalVariable(name: "s24", arg: 5, scope: !2396, file: !2337, line: 132, type: !23)
!2404 = !DILocalVariable(name: "s25", arg: 6, scope: !2396, file: !2337, line: 132, type: !23)
!2405 = !DILocalVariable(name: "s26", arg: 7, scope: !2396, file: !2337, line: 132, type: !23)
!2406 = !DILocalVariable(name: "s27", arg: 8, scope: !2396, file: !2337, line: 132, type: !23)
!2407 = !DILocalVariable(name: "s28", arg: 9, scope: !2396, file: !2337, line: 132, type: !23)
!2408 = !DILocation(line: 132, column: 25, scope: !2396, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 153, column: 16, scope: !2410, inlinedAt: !2381)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !2337, line: 150, column: 11)
!2411 = distinct !DILexicalBlock(scope: !2394, file: !2337, line: 149, column: 5)
!2412 = !DILocation(line: 132, column: 41, scope: !2396, inlinedAt: !2409)
!2413 = !DILocation(line: 132, column: 50, scope: !2396, inlinedAt: !2409)
!2414 = !DILocation(line: 132, column: 60, scope: !2396, inlinedAt: !2409)
!2415 = !DILocation(line: 132, column: 70, scope: !2396, inlinedAt: !2409)
!2416 = !DILocation(line: 132, column: 80, scope: !2396, inlinedAt: !2409)
!2417 = !DILocation(line: 132, column: 90, scope: !2396, inlinedAt: !2409)
!2418 = !DILocation(line: 132, column: 100, scope: !2396, inlinedAt: !2409)
!2419 = !DILocation(line: 132, column: 110, scope: !2396, inlinedAt: !2409)
!2420 = !DILocation(line: 134, column: 7, scope: !2421, inlinedAt: !2409)
!2421 = distinct !DILexicalBlock(scope: !2396, file: !2337, line: 134, column: 7)
!2422 = !DILocalVariable(name: "s1", arg: 1, scope: !2423, file: !2337, line: 118, type: !38)
!2423 = distinct !DISubprogram(name: "strcaseeq3", scope: !2337, file: !2337, line: 118, type: !2424, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23}
!2426 = !{!2422, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2427 = !DILocalVariable(name: "s2", arg: 2, scope: !2423, file: !2337, line: 118, type: !38)
!2428 = !DILocalVariable(name: "s23", arg: 3, scope: !2423, file: !2337, line: 118, type: !23)
!2429 = !DILocalVariable(name: "s24", arg: 4, scope: !2423, file: !2337, line: 118, type: !23)
!2430 = !DILocalVariable(name: "s25", arg: 5, scope: !2423, file: !2337, line: 118, type: !23)
!2431 = !DILocalVariable(name: "s26", arg: 6, scope: !2423, file: !2337, line: 118, type: !23)
!2432 = !DILocalVariable(name: "s27", arg: 7, scope: !2423, file: !2337, line: 118, type: !23)
!2433 = !DILocalVariable(name: "s28", arg: 8, scope: !2423, file: !2337, line: 118, type: !23)
!2434 = !DILocation(line: 118, column: 25, scope: !2423, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 139, column: 16, scope: !2436, inlinedAt: !2409)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !2337, line: 136, column: 11)
!2437 = distinct !DILexicalBlock(scope: !2421, file: !2337, line: 135, column: 5)
!2438 = !DILocation(line: 118, column: 41, scope: !2423, inlinedAt: !2435)
!2439 = !DILocation(line: 118, column: 50, scope: !2423, inlinedAt: !2435)
!2440 = !DILocation(line: 118, column: 60, scope: !2423, inlinedAt: !2435)
!2441 = !DILocation(line: 118, column: 70, scope: !2423, inlinedAt: !2435)
!2442 = !DILocation(line: 118, column: 80, scope: !2423, inlinedAt: !2435)
!2443 = !DILocation(line: 118, column: 90, scope: !2423, inlinedAt: !2435)
!2444 = !DILocation(line: 118, column: 100, scope: !2423, inlinedAt: !2435)
!2445 = !DILocation(line: 120, column: 7, scope: !2446, inlinedAt: !2435)
!2446 = distinct !DILexicalBlock(scope: !2423, file: !2337, line: 120, column: 7)
!2447 = !DILocation(line: 120, column: 7, scope: !2423, inlinedAt: !2435)
!2448 = !DILocalVariable(name: "s1", arg: 1, scope: !2449, file: !2337, line: 104, type: !38)
!2449 = distinct !DISubprogram(name: "strcaseeq4", scope: !2337, file: !2337, line: 104, type: !2450, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!25, !38, !38, !23, !23, !23, !23, !23}
!2452 = !{!2448, !2453, !2454, !2455, !2456, !2457, !2458}
!2453 = !DILocalVariable(name: "s2", arg: 2, scope: !2449, file: !2337, line: 104, type: !38)
!2454 = !DILocalVariable(name: "s24", arg: 3, scope: !2449, file: !2337, line: 104, type: !23)
!2455 = !DILocalVariable(name: "s25", arg: 4, scope: !2449, file: !2337, line: 104, type: !23)
!2456 = !DILocalVariable(name: "s26", arg: 5, scope: !2449, file: !2337, line: 104, type: !23)
!2457 = !DILocalVariable(name: "s27", arg: 6, scope: !2449, file: !2337, line: 104, type: !23)
!2458 = !DILocalVariable(name: "s28", arg: 7, scope: !2449, file: !2337, line: 104, type: !23)
!2459 = !DILocation(line: 104, column: 25, scope: !2449, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 125, column: 16, scope: !2461, inlinedAt: !2435)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !2337, line: 122, column: 11)
!2462 = distinct !DILexicalBlock(scope: !2446, file: !2337, line: 121, column: 5)
!2463 = !DILocation(line: 104, column: 41, scope: !2449, inlinedAt: !2460)
!2464 = !DILocation(line: 104, column: 50, scope: !2449, inlinedAt: !2460)
!2465 = !DILocation(line: 104, column: 60, scope: !2449, inlinedAt: !2460)
!2466 = !DILocation(line: 104, column: 70, scope: !2449, inlinedAt: !2460)
!2467 = !DILocation(line: 104, column: 80, scope: !2449, inlinedAt: !2460)
!2468 = !DILocation(line: 104, column: 90, scope: !2449, inlinedAt: !2460)
!2469 = !DILocation(line: 106, column: 7, scope: !2470, inlinedAt: !2460)
!2470 = distinct !DILexicalBlock(scope: !2449, file: !2337, line: 106, column: 7)
!2471 = !DILocation(line: 106, column: 7, scope: !2449, inlinedAt: !2460)
!2472 = !DILocalVariable(name: "s1", arg: 1, scope: !2473, file: !2337, line: 90, type: !38)
!2473 = distinct !DISubprogram(name: "strcaseeq5", scope: !2337, file: !2337, line: 90, type: !2474, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!25, !38, !38, !23, !23, !23, !23}
!2476 = !{!2472, !2477, !2478, !2479, !2480, !2481}
!2477 = !DILocalVariable(name: "s2", arg: 2, scope: !2473, file: !2337, line: 90, type: !38)
!2478 = !DILocalVariable(name: "s25", arg: 3, scope: !2473, file: !2337, line: 90, type: !23)
!2479 = !DILocalVariable(name: "s26", arg: 4, scope: !2473, file: !2337, line: 90, type: !23)
!2480 = !DILocalVariable(name: "s27", arg: 5, scope: !2473, file: !2337, line: 90, type: !23)
!2481 = !DILocalVariable(name: "s28", arg: 6, scope: !2473, file: !2337, line: 90, type: !23)
!2482 = !DILocation(line: 90, column: 25, scope: !2473, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 111, column: 16, scope: !2484, inlinedAt: !2460)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !2337, line: 108, column: 11)
!2485 = distinct !DILexicalBlock(scope: !2470, file: !2337, line: 107, column: 5)
!2486 = !DILocation(line: 90, column: 41, scope: !2473, inlinedAt: !2483)
!2487 = !DILocation(line: 90, column: 50, scope: !2473, inlinedAt: !2483)
!2488 = !DILocation(line: 90, column: 60, scope: !2473, inlinedAt: !2483)
!2489 = !DILocation(line: 90, column: 70, scope: !2473, inlinedAt: !2483)
!2490 = !DILocation(line: 90, column: 80, scope: !2473, inlinedAt: !2483)
!2491 = !DILocation(line: 92, column: 7, scope: !2492, inlinedAt: !2483)
!2492 = distinct !DILexicalBlock(scope: !2473, file: !2337, line: 92, column: 7)
!2493 = !DILocation(line: 92, column: 7, scope: !2473, inlinedAt: !2483)
!2494 = !DILocation(line: 235, column: 12, scope: !2353)
!2495 = !DILocation(line: 235, column: 21, scope: !2353)
!2496 = !DILocation(line: 235, column: 5, scope: !2353)
!2497 = !DILocation(line: 146, column: 25, scope: !2367, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 167, column: 16, scope: !2382, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 236, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2318, file: !232, line: 236, column: 7)
!2501 = !DILocation(line: 146, column: 41, scope: !2367, inlinedAt: !2498)
!2502 = !DILocation(line: 146, column: 50, scope: !2367, inlinedAt: !2498)
!2503 = !DILocation(line: 146, column: 60, scope: !2367, inlinedAt: !2498)
!2504 = !DILocation(line: 146, column: 70, scope: !2367, inlinedAt: !2498)
!2505 = !DILocation(line: 146, column: 80, scope: !2367, inlinedAt: !2498)
!2506 = !DILocation(line: 146, column: 90, scope: !2367, inlinedAt: !2498)
!2507 = !DILocation(line: 146, column: 100, scope: !2367, inlinedAt: !2498)
!2508 = !DILocation(line: 146, column: 110, scope: !2367, inlinedAt: !2498)
!2509 = !DILocation(line: 146, column: 120, scope: !2367, inlinedAt: !2498)
!2510 = !DILocation(line: 148, column: 7, scope: !2394, inlinedAt: !2498)
!2511 = !DILocation(line: 132, column: 25, scope: !2396, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 153, column: 16, scope: !2410, inlinedAt: !2498)
!2513 = !DILocation(line: 132, column: 41, scope: !2396, inlinedAt: !2512)
!2514 = !DILocation(line: 132, column: 50, scope: !2396, inlinedAt: !2512)
!2515 = !DILocation(line: 132, column: 60, scope: !2396, inlinedAt: !2512)
!2516 = !DILocation(line: 132, column: 70, scope: !2396, inlinedAt: !2512)
!2517 = !DILocation(line: 132, column: 80, scope: !2396, inlinedAt: !2512)
!2518 = !DILocation(line: 132, column: 90, scope: !2396, inlinedAt: !2512)
!2519 = !DILocation(line: 132, column: 100, scope: !2396, inlinedAt: !2512)
!2520 = !DILocation(line: 132, column: 110, scope: !2396, inlinedAt: !2512)
!2521 = !DILocation(line: 134, column: 7, scope: !2421, inlinedAt: !2512)
!2522 = !DILocation(line: 134, column: 7, scope: !2396, inlinedAt: !2512)
!2523 = !DILocation(line: 118, column: 25, scope: !2423, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 139, column: 16, scope: !2436, inlinedAt: !2512)
!2525 = !DILocation(line: 118, column: 41, scope: !2423, inlinedAt: !2524)
!2526 = !DILocation(line: 118, column: 50, scope: !2423, inlinedAt: !2524)
!2527 = !DILocation(line: 118, column: 60, scope: !2423, inlinedAt: !2524)
!2528 = !DILocation(line: 118, column: 70, scope: !2423, inlinedAt: !2524)
!2529 = !DILocation(line: 118, column: 80, scope: !2423, inlinedAt: !2524)
!2530 = !DILocation(line: 118, column: 90, scope: !2423, inlinedAt: !2524)
!2531 = !DILocation(line: 118, column: 100, scope: !2423, inlinedAt: !2524)
!2532 = !DILocation(line: 120, column: 7, scope: !2446, inlinedAt: !2524)
!2533 = !DILocation(line: 120, column: 7, scope: !2423, inlinedAt: !2524)
!2534 = !DILocation(line: 104, column: 25, scope: !2449, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 125, column: 16, scope: !2461, inlinedAt: !2524)
!2536 = !DILocation(line: 104, column: 41, scope: !2449, inlinedAt: !2535)
!2537 = !DILocation(line: 104, column: 50, scope: !2449, inlinedAt: !2535)
!2538 = !DILocation(line: 104, column: 60, scope: !2449, inlinedAt: !2535)
!2539 = !DILocation(line: 104, column: 70, scope: !2449, inlinedAt: !2535)
!2540 = !DILocation(line: 104, column: 80, scope: !2449, inlinedAt: !2535)
!2541 = !DILocation(line: 104, column: 90, scope: !2449, inlinedAt: !2535)
!2542 = !DILocation(line: 106, column: 7, scope: !2470, inlinedAt: !2535)
!2543 = !DILocation(line: 106, column: 7, scope: !2449, inlinedAt: !2535)
!2544 = !DILocation(line: 90, column: 25, scope: !2473, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 111, column: 16, scope: !2484, inlinedAt: !2535)
!2546 = !DILocation(line: 90, column: 41, scope: !2473, inlinedAt: !2545)
!2547 = !DILocation(line: 90, column: 50, scope: !2473, inlinedAt: !2545)
!2548 = !DILocation(line: 90, column: 60, scope: !2473, inlinedAt: !2545)
!2549 = !DILocation(line: 90, column: 70, scope: !2473, inlinedAt: !2545)
!2550 = !DILocation(line: 90, column: 80, scope: !2473, inlinedAt: !2545)
!2551 = !DILocation(line: 92, column: 7, scope: !2492, inlinedAt: !2545)
!2552 = !DILocation(line: 92, column: 7, scope: !2473, inlinedAt: !2545)
!2553 = !DILocalVariable(name: "s1", arg: 1, scope: !2554, file: !2337, line: 76, type: !38)
!2554 = distinct !DISubprogram(name: "strcaseeq6", scope: !2337, file: !2337, line: 76, type: !2555, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!25, !38, !38, !23, !23, !23}
!2557 = !{!2553, !2558, !2559, !2560, !2561}
!2558 = !DILocalVariable(name: "s2", arg: 2, scope: !2554, file: !2337, line: 76, type: !38)
!2559 = !DILocalVariable(name: "s26", arg: 3, scope: !2554, file: !2337, line: 76, type: !23)
!2560 = !DILocalVariable(name: "s27", arg: 4, scope: !2554, file: !2337, line: 76, type: !23)
!2561 = !DILocalVariable(name: "s28", arg: 5, scope: !2554, file: !2337, line: 76, type: !23)
!2562 = !DILocation(line: 76, column: 25, scope: !2554, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 97, column: 16, scope: !2564, inlinedAt: !2545)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !2337, line: 94, column: 11)
!2565 = distinct !DILexicalBlock(scope: !2492, file: !2337, line: 93, column: 5)
!2566 = !DILocation(line: 76, column: 41, scope: !2554, inlinedAt: !2563)
!2567 = !DILocation(line: 76, column: 50, scope: !2554, inlinedAt: !2563)
!2568 = !DILocation(line: 76, column: 60, scope: !2554, inlinedAt: !2563)
!2569 = !DILocation(line: 76, column: 70, scope: !2554, inlinedAt: !2563)
!2570 = !DILocation(line: 78, column: 7, scope: !2571, inlinedAt: !2563)
!2571 = distinct !DILexicalBlock(scope: !2554, file: !2337, line: 78, column: 7)
!2572 = !DILocation(line: 78, column: 7, scope: !2554, inlinedAt: !2563)
!2573 = !DILocalVariable(name: "s1", arg: 1, scope: !2574, file: !2337, line: 62, type: !38)
!2574 = distinct !DISubprogram(name: "strcaseeq7", scope: !2337, file: !2337, line: 62, type: !2575, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!25, !38, !38, !23, !23}
!2577 = !{!2573, !2578, !2579, !2580}
!2578 = !DILocalVariable(name: "s2", arg: 2, scope: !2574, file: !2337, line: 62, type: !38)
!2579 = !DILocalVariable(name: "s27", arg: 3, scope: !2574, file: !2337, line: 62, type: !23)
!2580 = !DILocalVariable(name: "s28", arg: 4, scope: !2574, file: !2337, line: 62, type: !23)
!2581 = !DILocation(line: 62, column: 25, scope: !2574, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 83, column: 16, scope: !2583, inlinedAt: !2563)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !2337, line: 80, column: 11)
!2584 = distinct !DILexicalBlock(scope: !2571, file: !2337, line: 79, column: 5)
!2585 = !DILocation(line: 62, column: 41, scope: !2574, inlinedAt: !2582)
!2586 = !DILocation(line: 62, column: 50, scope: !2574, inlinedAt: !2582)
!2587 = !DILocation(line: 62, column: 60, scope: !2574, inlinedAt: !2582)
!2588 = !DILocation(line: 64, column: 7, scope: !2589, inlinedAt: !2582)
!2589 = distinct !DILexicalBlock(scope: !2574, file: !2337, line: 64, column: 7)
!2590 = !DILocation(line: 236, column: 7, scope: !2318)
!2591 = !DILocation(line: 237, column: 12, scope: !2500)
!2592 = !DILocation(line: 237, column: 21, scope: !2500)
!2593 = !DILocation(line: 237, column: 5, scope: !2500)
!2594 = !DILocation(line: 239, column: 13, scope: !2318)
!2595 = !DILocation(line: 239, column: 11, scope: !2318)
!2596 = !DILocation(line: 239, column: 3, scope: !2318)
!2597 = !DILocation(line: 0, scope: !2318)
!2598 = !DILocation(line: 240, column: 1, scope: !2318)
!2599 = distinct !DISubprogram(name: "quotearg_alloc", scope: !232, file: !232, line: 799, type: !2600, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!22, !38, !83, !1639}
!2602 = !{!2603, !2604, !2605}
!2603 = !DILocalVariable(name: "arg", arg: 1, scope: !2599, file: !232, line: 799, type: !38)
!2604 = !DILocalVariable(name: "argsize", arg: 2, scope: !2599, file: !232, line: 799, type: !83)
!2605 = !DILocalVariable(name: "o", arg: 3, scope: !2599, file: !232, line: 800, type: !1639)
!2606 = !DILocation(line: 799, column: 29, scope: !2599)
!2607 = !DILocation(line: 799, column: 41, scope: !2599)
!2608 = !DILocation(line: 800, column: 47, scope: !2599)
!2609 = !DILocalVariable(name: "arg", arg: 1, scope: !2610, file: !232, line: 812, type: !38)
!2610 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !232, file: !232, line: 812, type: !2611, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!22, !38, !83, !82, !1639}
!2613 = !{!2609, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2614 = !DILocalVariable(name: "argsize", arg: 2, scope: !2610, file: !232, line: 812, type: !83)
!2615 = !DILocalVariable(name: "size", arg: 3, scope: !2610, file: !232, line: 812, type: !82)
!2616 = !DILocalVariable(name: "o", arg: 4, scope: !2610, file: !232, line: 813, type: !1639)
!2617 = !DILocalVariable(name: "p", scope: !2610, file: !232, line: 815, type: !1639)
!2618 = !DILocalVariable(name: "e", scope: !2610, file: !232, line: 816, type: !25)
!2619 = !DILocalVariable(name: "flags", scope: !2610, file: !232, line: 818, type: !25)
!2620 = !DILocalVariable(name: "bufsize", scope: !2610, file: !232, line: 819, type: !83)
!2621 = !DILocalVariable(name: "buf", scope: !2610, file: !232, line: 823, type: !22)
!2622 = !DILocation(line: 812, column: 33, scope: !2610, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 802, column: 10, scope: !2599)
!2624 = !DILocation(line: 812, column: 45, scope: !2610, inlinedAt: !2623)
!2625 = !DILocation(line: 812, column: 62, scope: !2610, inlinedAt: !2623)
!2626 = !DILocation(line: 813, column: 51, scope: !2610, inlinedAt: !2623)
!2627 = !DILocation(line: 815, column: 37, scope: !2610, inlinedAt: !2623)
!2628 = !DILocation(line: 815, column: 33, scope: !2610, inlinedAt: !2623)
!2629 = !DILocation(line: 816, column: 11, scope: !2610, inlinedAt: !2623)
!2630 = !DILocation(line: 816, column: 7, scope: !2610, inlinedAt: !2623)
!2631 = !DILocation(line: 818, column: 18, scope: !2610, inlinedAt: !2623)
!2632 = !DILocation(line: 818, column: 24, scope: !2610, inlinedAt: !2623)
!2633 = !DILocation(line: 818, column: 7, scope: !2610, inlinedAt: !2623)
!2634 = !DILocation(line: 819, column: 69, scope: !2610, inlinedAt: !2623)
!2635 = !DILocation(line: 820, column: 53, scope: !2610, inlinedAt: !2623)
!2636 = !DILocation(line: 821, column: 49, scope: !2610, inlinedAt: !2623)
!2637 = !DILocation(line: 822, column: 49, scope: !2610, inlinedAt: !2623)
!2638 = !DILocation(line: 819, column: 20, scope: !2610, inlinedAt: !2623)
!2639 = !DILocation(line: 822, column: 62, scope: !2610, inlinedAt: !2623)
!2640 = !DILocation(line: 819, column: 10, scope: !2610, inlinedAt: !2623)
!2641 = !DILocalVariable(name: "n", arg: 1, scope: !2642, file: !78, line: 216, type: !83)
!2642 = distinct !DISubprogram(name: "xcharalloc", scope: !78, file: !78, line: 216, type: !2643, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!22, !83}
!2645 = !{!2641}
!2646 = !DILocation(line: 216, column: 20, scope: !2642, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 823, column: 15, scope: !2610, inlinedAt: !2623)
!2648 = !DILocation(line: 218, column: 10, scope: !2642, inlinedAt: !2647)
!2649 = !DILocation(line: 823, column: 9, scope: !2610, inlinedAt: !2623)
!2650 = !DILocation(line: 824, column: 60, scope: !2610, inlinedAt: !2623)
!2651 = !DILocation(line: 826, column: 32, scope: !2610, inlinedAt: !2623)
!2652 = !DILocation(line: 826, column: 47, scope: !2610, inlinedAt: !2623)
!2653 = !DILocation(line: 824, column: 3, scope: !2610, inlinedAt: !2623)
!2654 = !DILocation(line: 827, column: 9, scope: !2610, inlinedAt: !2623)
!2655 = !DILocation(line: 802, column: 3, scope: !2599)
!2656 = !DILocation(line: 812, column: 33, scope: !2610)
!2657 = !DILocation(line: 812, column: 45, scope: !2610)
!2658 = !DILocation(line: 812, column: 62, scope: !2610)
!2659 = !DILocation(line: 813, column: 51, scope: !2610)
!2660 = !DILocation(line: 815, column: 37, scope: !2610)
!2661 = !DILocation(line: 815, column: 33, scope: !2610)
!2662 = !DILocation(line: 816, column: 11, scope: !2610)
!2663 = !DILocation(line: 816, column: 7, scope: !2610)
!2664 = !DILocation(line: 818, column: 18, scope: !2610)
!2665 = !DILocation(line: 818, column: 27, scope: !2610)
!2666 = !DILocation(line: 818, column: 24, scope: !2610)
!2667 = !DILocation(line: 818, column: 7, scope: !2610)
!2668 = !DILocation(line: 819, column: 69, scope: !2610)
!2669 = !DILocation(line: 820, column: 53, scope: !2610)
!2670 = !DILocation(line: 821, column: 49, scope: !2610)
!2671 = !DILocation(line: 822, column: 49, scope: !2610)
!2672 = !DILocation(line: 819, column: 20, scope: !2610)
!2673 = !DILocation(line: 822, column: 62, scope: !2610)
!2674 = !DILocation(line: 819, column: 10, scope: !2610)
!2675 = !DILocation(line: 216, column: 20, scope: !2642, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 823, column: 15, scope: !2610)
!2677 = !DILocation(line: 218, column: 10, scope: !2642, inlinedAt: !2676)
!2678 = !DILocation(line: 823, column: 9, scope: !2610)
!2679 = !DILocation(line: 824, column: 60, scope: !2610)
!2680 = !DILocation(line: 826, column: 32, scope: !2610)
!2681 = !DILocation(line: 826, column: 47, scope: !2610)
!2682 = !DILocation(line: 824, column: 3, scope: !2610)
!2683 = !DILocation(line: 827, column: 9, scope: !2610)
!2684 = !DILocation(line: 828, column: 7, scope: !2610)
!2685 = !DILocation(line: 829, column: 11, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2610, file: !232, line: 828, column: 7)
!2687 = !DILocation(line: 829, column: 5, scope: !2686)
!2688 = !DILocation(line: 830, column: 3, scope: !2610)
!2689 = distinct !DISubprogram(name: "quotearg_free", scope: !232, file: !232, line: 848, type: !757, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2690)
!2690 = !{!2691, !2692}
!2691 = !DILocalVariable(name: "sv", scope: !2689, file: !232, line: 850, type: !258)
!2692 = !DILocalVariable(name: "i", scope: !2689, file: !232, line: 851, type: !25)
!2693 = !DILocation(line: 850, column: 24, scope: !2689)
!2694 = !DILocation(line: 850, column: 19, scope: !2689)
!2695 = !DILocation(line: 851, column: 7, scope: !2689)
!2696 = !DILocation(line: 852, column: 19, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !232, line: 852, column: 3)
!2698 = distinct !DILexicalBlock(scope: !2689, file: !232, line: 852, column: 3)
!2699 = !DILocation(line: 852, column: 17, scope: !2697)
!2700 = !DILocation(line: 852, column: 3, scope: !2698)
!2701 = !DILocation(line: 853, column: 17, scope: !2697)
!2702 = !{!2703, !750, i64 8}
!2703 = !{!"slotvec", !920, i64 0, !750, i64 8}
!2704 = !DILocation(line: 853, column: 5, scope: !2697)
!2705 = !DILocation(line: 852, column: 28, scope: !2697)
!2706 = distinct !{!2706, !2700, !2707}
!2707 = !DILocation(line: 853, column: 20, scope: !2698)
!2708 = !DILocation(line: 854, column: 13, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2689, file: !232, line: 854, column: 7)
!2710 = !DILocation(line: 854, column: 17, scope: !2709)
!2711 = !DILocation(line: 854, column: 7, scope: !2689)
!2712 = !DILocation(line: 856, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !232, line: 855, column: 5)
!2714 = !DILocation(line: 857, column: 21, scope: !2713)
!2715 = !{!2703, !920, i64 0}
!2716 = !DILocation(line: 858, column: 20, scope: !2713)
!2717 = !DILocation(line: 859, column: 5, scope: !2713)
!2718 = !DILocation(line: 860, column: 10, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2689, file: !232, line: 860, column: 7)
!2720 = !DILocation(line: 860, column: 7, scope: !2689)
!2721 = !DILocation(line: 862, column: 13, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !232, line: 861, column: 5)
!2723 = !DILocation(line: 862, column: 7, scope: !2722)
!2724 = !DILocation(line: 863, column: 15, scope: !2722)
!2725 = !DILocation(line: 864, column: 5, scope: !2722)
!2726 = !DILocation(line: 865, column: 10, scope: !2689)
!2727 = !DILocation(line: 866, column: 1, scope: !2689)
!2728 = distinct !DISubprogram(name: "quotearg_n", scope: !232, file: !232, line: 931, type: !2729, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!22, !25, !38}
!2731 = !{!2732, !2733}
!2732 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !232, line: 931, type: !25)
!2733 = !DILocalVariable(name: "arg", arg: 2, scope: !2728, file: !232, line: 931, type: !38)
!2734 = !DILocation(line: 931, column: 17, scope: !2728)
!2735 = !DILocation(line: 931, column: 32, scope: !2728)
!2736 = !DILocation(line: 933, column: 10, scope: !2728)
!2737 = !DILocation(line: 933, column: 3, scope: !2728)
!2738 = distinct !DISubprogram(name: "quotearg_n_options", scope: !232, file: !232, line: 877, type: !2739, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!22, !25, !38, !83, !1639}
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748, !2751, !2752, !2754, !2755, !2756}
!2742 = !DILocalVariable(name: "n", arg: 1, scope: !2738, file: !232, line: 877, type: !25)
!2743 = !DILocalVariable(name: "arg", arg: 2, scope: !2738, file: !232, line: 877, type: !38)
!2744 = !DILocalVariable(name: "argsize", arg: 3, scope: !2738, file: !232, line: 877, type: !83)
!2745 = !DILocalVariable(name: "options", arg: 4, scope: !2738, file: !232, line: 878, type: !1639)
!2746 = !DILocalVariable(name: "e", scope: !2738, file: !232, line: 880, type: !25)
!2747 = !DILocalVariable(name: "sv", scope: !2738, file: !232, line: 882, type: !258)
!2748 = !DILocalVariable(name: "preallocated", scope: !2749, file: !232, line: 889, type: !180)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !232, line: 888, column: 5)
!2750 = distinct !DILexicalBlock(scope: !2738, file: !232, line: 887, column: 7)
!2751 = !DILocalVariable(name: "nmax", scope: !2749, file: !232, line: 890, type: !25)
!2752 = !DILocalVariable(name: "size", scope: !2753, file: !232, line: 903, type: !83)
!2753 = distinct !DILexicalBlock(scope: !2738, file: !232, line: 902, column: 3)
!2754 = !DILocalVariable(name: "val", scope: !2753, file: !232, line: 904, type: !22)
!2755 = !DILocalVariable(name: "flags", scope: !2753, file: !232, line: 906, type: !25)
!2756 = !DILocalVariable(name: "qsize", scope: !2753, file: !232, line: 907, type: !83)
!2757 = !DILocation(line: 877, column: 25, scope: !2738)
!2758 = !DILocation(line: 877, column: 40, scope: !2738)
!2759 = !DILocation(line: 877, column: 52, scope: !2738)
!2760 = !DILocation(line: 878, column: 51, scope: !2738)
!2761 = !DILocation(line: 880, column: 11, scope: !2738)
!2762 = !DILocation(line: 880, column: 7, scope: !2738)
!2763 = !DILocation(line: 882, column: 24, scope: !2738)
!2764 = !DILocation(line: 882, column: 19, scope: !2738)
!2765 = !DILocation(line: 884, column: 9, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2738, file: !232, line: 884, column: 7)
!2767 = !DILocation(line: 884, column: 7, scope: !2738)
!2768 = !DILocation(line: 885, column: 5, scope: !2766)
!2769 = !DILocation(line: 887, column: 7, scope: !2750)
!2770 = !DILocation(line: 887, column: 14, scope: !2750)
!2771 = !DILocation(line: 887, column: 7, scope: !2738)
!2772 = !DILocation(line: 889, column: 31, scope: !2749)
!2773 = !DILocation(line: 890, column: 11, scope: !2749)
!2774 = !DILocation(line: 892, column: 16, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2749, file: !232, line: 892, column: 11)
!2776 = !DILocation(line: 892, column: 11, scope: !2749)
!2777 = !DILocation(line: 893, column: 9, scope: !2775)
!2778 = !DILocation(line: 895, column: 32, scope: !2749)
!2779 = !DILocation(line: 895, column: 61, scope: !2749)
!2780 = !DILocation(line: 895, column: 58, scope: !2749)
!2781 = !DILocation(line: 895, column: 66, scope: !2749)
!2782 = !DILocation(line: 895, column: 22, scope: !2749)
!2783 = !DILocation(line: 895, column: 15, scope: !2749)
!2784 = !DILocation(line: 896, column: 11, scope: !2749)
!2785 = !DILocation(line: 897, column: 15, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2749, file: !232, line: 896, column: 11)
!2787 = !{i64 0, i64 8, !919, i64 8, i64 8, !749}
!2788 = !DILocation(line: 897, column: 9, scope: !2786)
!2789 = !DILocation(line: 898, column: 20, scope: !2749)
!2790 = !DILocation(line: 898, column: 18, scope: !2749)
!2791 = !DILocation(line: 898, column: 7, scope: !2749)
!2792 = !DILocation(line: 898, column: 38, scope: !2749)
!2793 = !DILocation(line: 898, column: 31, scope: !2749)
!2794 = !DILocation(line: 898, column: 48, scope: !2749)
!2795 = !DILocation(line: 899, column: 14, scope: !2749)
!2796 = !DILocation(line: 900, column: 5, scope: !2749)
!2797 = !DILocation(line: 0, scope: !2738)
!2798 = !DILocation(line: 903, column: 19, scope: !2753)
!2799 = !DILocation(line: 903, column: 25, scope: !2753)
!2800 = !DILocation(line: 903, column: 12, scope: !2753)
!2801 = !DILocation(line: 904, column: 23, scope: !2753)
!2802 = !DILocation(line: 904, column: 11, scope: !2753)
!2803 = !DILocation(line: 906, column: 26, scope: !2753)
!2804 = !DILocation(line: 906, column: 32, scope: !2753)
!2805 = !DILocation(line: 906, column: 9, scope: !2753)
!2806 = !DILocation(line: 908, column: 55, scope: !2753)
!2807 = !DILocation(line: 909, column: 46, scope: !2753)
!2808 = !DILocation(line: 910, column: 55, scope: !2753)
!2809 = !DILocation(line: 911, column: 55, scope: !2753)
!2810 = !DILocation(line: 907, column: 20, scope: !2753)
!2811 = !DILocation(line: 907, column: 12, scope: !2753)
!2812 = !DILocation(line: 913, column: 14, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2753, file: !232, line: 913, column: 9)
!2814 = !DILocation(line: 913, column: 9, scope: !2753)
!2815 = !DILocation(line: 915, column: 35, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !232, line: 914, column: 7)
!2817 = !DILocation(line: 915, column: 20, scope: !2816)
!2818 = !DILocation(line: 916, column: 17, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2816, file: !232, line: 916, column: 13)
!2820 = !DILocation(line: 916, column: 13, scope: !2816)
!2821 = !DILocation(line: 917, column: 11, scope: !2819)
!2822 = !DILocation(line: 216, column: 20, scope: !2642, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 918, column: 27, scope: !2816)
!2824 = !DILocation(line: 218, column: 10, scope: !2642, inlinedAt: !2823)
!2825 = !DILocation(line: 918, column: 19, scope: !2816)
!2826 = !DILocation(line: 919, column: 69, scope: !2816)
!2827 = !DILocation(line: 921, column: 44, scope: !2816)
!2828 = !DILocation(line: 922, column: 44, scope: !2816)
!2829 = !DILocation(line: 919, column: 9, scope: !2816)
!2830 = !DILocation(line: 923, column: 7, scope: !2816)
!2831 = !DILocation(line: 0, scope: !2753)
!2832 = !DILocation(line: 925, column: 11, scope: !2753)
!2833 = !DILocation(line: 926, column: 5, scope: !2753)
!2834 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !232, file: !232, line: 937, type: !2835, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!22, !25, !38, !83}
!2837 = !{!2838, !2839, !2840}
!2838 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !232, line: 937, type: !25)
!2839 = !DILocalVariable(name: "arg", arg: 2, scope: !2834, file: !232, line: 937, type: !38)
!2840 = !DILocalVariable(name: "argsize", arg: 3, scope: !2834, file: !232, line: 937, type: !83)
!2841 = !DILocation(line: 937, column: 21, scope: !2834)
!2842 = !DILocation(line: 937, column: 36, scope: !2834)
!2843 = !DILocation(line: 937, column: 48, scope: !2834)
!2844 = !DILocation(line: 939, column: 10, scope: !2834)
!2845 = !DILocation(line: 939, column: 3, scope: !2834)
!2846 = distinct !DISubprogram(name: "quotearg", scope: !232, file: !232, line: 943, type: !2847, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!22, !38}
!2849 = !{!2850}
!2850 = !DILocalVariable(name: "arg", arg: 1, scope: !2846, file: !232, line: 943, type: !38)
!2851 = !DILocation(line: 943, column: 23, scope: !2846)
!2852 = !DILocation(line: 931, column: 17, scope: !2728, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 945, column: 10, scope: !2846)
!2854 = !DILocation(line: 931, column: 32, scope: !2728, inlinedAt: !2853)
!2855 = !DILocation(line: 933, column: 10, scope: !2728, inlinedAt: !2853)
!2856 = !DILocation(line: 945, column: 3, scope: !2846)
!2857 = distinct !DISubprogram(name: "quotearg_mem", scope: !232, file: !232, line: 949, type: !2858, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!22, !38, !83}
!2860 = !{!2861, !2862}
!2861 = !DILocalVariable(name: "arg", arg: 1, scope: !2857, file: !232, line: 949, type: !38)
!2862 = !DILocalVariable(name: "argsize", arg: 2, scope: !2857, file: !232, line: 949, type: !83)
!2863 = !DILocation(line: 949, column: 27, scope: !2857)
!2864 = !DILocation(line: 949, column: 39, scope: !2857)
!2865 = !DILocation(line: 937, column: 21, scope: !2834, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 951, column: 10, scope: !2857)
!2867 = !DILocation(line: 937, column: 36, scope: !2834, inlinedAt: !2866)
!2868 = !DILocation(line: 937, column: 48, scope: !2834, inlinedAt: !2866)
!2869 = !DILocation(line: 939, column: 10, scope: !2834, inlinedAt: !2866)
!2870 = !DILocation(line: 951, column: 3, scope: !2857)
!2871 = distinct !DISubprogram(name: "quotearg_n_style", scope: !232, file: !232, line: 955, type: !2872, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!22, !25, !54, !38}
!2874 = !{!2875, !2876, !2877, !2878}
!2875 = !DILocalVariable(name: "n", arg: 1, scope: !2871, file: !232, line: 955, type: !25)
!2876 = !DILocalVariable(name: "s", arg: 2, scope: !2871, file: !232, line: 955, type: !54)
!2877 = !DILocalVariable(name: "arg", arg: 3, scope: !2871, file: !232, line: 955, type: !38)
!2878 = !DILocalVariable(name: "o", scope: !2871, file: !232, line: 957, type: !1640)
!2879 = !DILocation(line: 955, column: 23, scope: !2871)
!2880 = !DILocation(line: 955, column: 45, scope: !2871)
!2881 = !DILocation(line: 955, column: 60, scope: !2871)
!2882 = !DILocation(line: 957, column: 3, scope: !2871)
!2883 = !DILocation(line: 957, column: 32, scope: !2871)
!2884 = !DILocalVariable(name: "style", arg: 1, scope: !2885, file: !232, line: 193, type: !54)
!2885 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !232, file: !232, line: 193, type: !2886, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!239, !54}
!2888 = !{!2884, !2889}
!2889 = !DILocalVariable(name: "o", scope: !2885, file: !232, line: 195, type: !239)
!2890 = !DILocation(line: 193, column: 48, scope: !2885, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 957, column: 36, scope: !2871)
!2892 = !DILocation(line: 195, column: 26, scope: !2885, inlinedAt: !2891)
!2893 = !{!2894}
!2894 = distinct !{!2894, !2895, !"quoting_options_from_style: argument 0"}
!2895 = distinct !{!2895, !"quoting_options_from_style"}
!2896 = !DILocation(line: 196, column: 13, scope: !2897, inlinedAt: !2891)
!2897 = distinct !DILexicalBlock(scope: !2885, file: !232, line: 196, column: 7)
!2898 = !DILocation(line: 196, column: 7, scope: !2885, inlinedAt: !2891)
!2899 = !DILocation(line: 197, column: 5, scope: !2897, inlinedAt: !2891)
!2900 = !DILocation(line: 198, column: 5, scope: !2885, inlinedAt: !2891)
!2901 = !DILocation(line: 198, column: 11, scope: !2885, inlinedAt: !2891)
!2902 = !DILocation(line: 958, column: 10, scope: !2871)
!2903 = !DILocation(line: 959, column: 1, scope: !2871)
!2904 = !DILocation(line: 958, column: 3, scope: !2871)
!2905 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !232, file: !232, line: 962, type: !2906, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!22, !25, !54, !38, !83}
!2908 = !{!2909, !2910, !2911, !2912, !2913}
!2909 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !232, line: 962, type: !25)
!2910 = !DILocalVariable(name: "s", arg: 2, scope: !2905, file: !232, line: 962, type: !54)
!2911 = !DILocalVariable(name: "arg", arg: 3, scope: !2905, file: !232, line: 963, type: !38)
!2912 = !DILocalVariable(name: "argsize", arg: 4, scope: !2905, file: !232, line: 963, type: !83)
!2913 = !DILocalVariable(name: "o", scope: !2905, file: !232, line: 965, type: !1640)
!2914 = !DILocation(line: 962, column: 27, scope: !2905)
!2915 = !DILocation(line: 962, column: 49, scope: !2905)
!2916 = !DILocation(line: 963, column: 35, scope: !2905)
!2917 = !DILocation(line: 963, column: 47, scope: !2905)
!2918 = !DILocation(line: 965, column: 3, scope: !2905)
!2919 = !DILocation(line: 965, column: 32, scope: !2905)
!2920 = !DILocation(line: 193, column: 48, scope: !2885, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 965, column: 36, scope: !2905)
!2922 = !DILocation(line: 195, column: 26, scope: !2885, inlinedAt: !2921)
!2923 = !{!2924}
!2924 = distinct !{!2924, !2925, !"quoting_options_from_style: argument 0"}
!2925 = distinct !{!2925, !"quoting_options_from_style"}
!2926 = !DILocation(line: 196, column: 13, scope: !2897, inlinedAt: !2921)
!2927 = !DILocation(line: 196, column: 7, scope: !2885, inlinedAt: !2921)
!2928 = !DILocation(line: 197, column: 5, scope: !2897, inlinedAt: !2921)
!2929 = !DILocation(line: 198, column: 5, scope: !2885, inlinedAt: !2921)
!2930 = !DILocation(line: 198, column: 11, scope: !2885, inlinedAt: !2921)
!2931 = !DILocation(line: 966, column: 10, scope: !2905)
!2932 = !DILocation(line: 967, column: 1, scope: !2905)
!2933 = !DILocation(line: 966, column: 3, scope: !2905)
!2934 = distinct !DISubprogram(name: "quotearg_style", scope: !232, file: !232, line: 970, type: !2935, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!22, !54, !38}
!2937 = !{!2938, !2939}
!2938 = !DILocalVariable(name: "s", arg: 1, scope: !2934, file: !232, line: 970, type: !54)
!2939 = !DILocalVariable(name: "arg", arg: 2, scope: !2934, file: !232, line: 970, type: !38)
!2940 = !DILocation(line: 970, column: 36, scope: !2934)
!2941 = !DILocation(line: 970, column: 51, scope: !2934)
!2942 = !DILocation(line: 955, column: 23, scope: !2871, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 972, column: 10, scope: !2934)
!2944 = !DILocation(line: 955, column: 45, scope: !2871, inlinedAt: !2943)
!2945 = !DILocation(line: 955, column: 60, scope: !2871, inlinedAt: !2943)
!2946 = !DILocation(line: 957, column: 3, scope: !2871, inlinedAt: !2943)
!2947 = !DILocation(line: 957, column: 32, scope: !2871, inlinedAt: !2943)
!2948 = !DILocation(line: 193, column: 48, scope: !2885, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 957, column: 36, scope: !2871, inlinedAt: !2943)
!2950 = !DILocation(line: 195, column: 26, scope: !2885, inlinedAt: !2949)
!2951 = !{!2952}
!2952 = distinct !{!2952, !2953, !"quoting_options_from_style: argument 0"}
!2953 = distinct !{!2953, !"quoting_options_from_style"}
!2954 = !DILocation(line: 196, column: 13, scope: !2897, inlinedAt: !2949)
!2955 = !DILocation(line: 196, column: 7, scope: !2885, inlinedAt: !2949)
!2956 = !DILocation(line: 197, column: 5, scope: !2897, inlinedAt: !2949)
!2957 = !DILocation(line: 198, column: 5, scope: !2885, inlinedAt: !2949)
!2958 = !DILocation(line: 198, column: 11, scope: !2885, inlinedAt: !2949)
!2959 = !DILocation(line: 958, column: 10, scope: !2871, inlinedAt: !2943)
!2960 = !DILocation(line: 959, column: 1, scope: !2871, inlinedAt: !2943)
!2961 = !DILocation(line: 972, column: 3, scope: !2934)
!2962 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !232, file: !232, line: 976, type: !2963, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!22, !54, !38, !83}
!2965 = !{!2966, !2967, !2968}
!2966 = !DILocalVariable(name: "s", arg: 1, scope: !2962, file: !232, line: 976, type: !54)
!2967 = !DILocalVariable(name: "arg", arg: 2, scope: !2962, file: !232, line: 976, type: !38)
!2968 = !DILocalVariable(name: "argsize", arg: 3, scope: !2962, file: !232, line: 976, type: !83)
!2969 = !DILocation(line: 976, column: 40, scope: !2962)
!2970 = !DILocation(line: 976, column: 55, scope: !2962)
!2971 = !DILocation(line: 976, column: 67, scope: !2962)
!2972 = !DILocation(line: 962, column: 27, scope: !2905, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 978, column: 10, scope: !2962)
!2974 = !DILocation(line: 962, column: 49, scope: !2905, inlinedAt: !2973)
!2975 = !DILocation(line: 963, column: 35, scope: !2905, inlinedAt: !2973)
!2976 = !DILocation(line: 963, column: 47, scope: !2905, inlinedAt: !2973)
!2977 = !DILocation(line: 965, column: 3, scope: !2905, inlinedAt: !2973)
!2978 = !DILocation(line: 965, column: 32, scope: !2905, inlinedAt: !2973)
!2979 = !DILocation(line: 193, column: 48, scope: !2885, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 965, column: 36, scope: !2905, inlinedAt: !2973)
!2981 = !DILocation(line: 195, column: 26, scope: !2885, inlinedAt: !2980)
!2982 = !{!2983}
!2983 = distinct !{!2983, !2984, !"quoting_options_from_style: argument 0"}
!2984 = distinct !{!2984, !"quoting_options_from_style"}
!2985 = !DILocation(line: 196, column: 13, scope: !2897, inlinedAt: !2980)
!2986 = !DILocation(line: 196, column: 7, scope: !2885, inlinedAt: !2980)
!2987 = !DILocation(line: 197, column: 5, scope: !2897, inlinedAt: !2980)
!2988 = !DILocation(line: 198, column: 5, scope: !2885, inlinedAt: !2980)
!2989 = !DILocation(line: 198, column: 11, scope: !2885, inlinedAt: !2980)
!2990 = !DILocation(line: 966, column: 10, scope: !2905, inlinedAt: !2973)
!2991 = !DILocation(line: 967, column: 1, scope: !2905, inlinedAt: !2973)
!2992 = !DILocation(line: 978, column: 3, scope: !2962)
!2993 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !232, file: !232, line: 982, type: !2994, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!22, !38, !83, !23}
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DILocalVariable(name: "arg", arg: 1, scope: !2993, file: !232, line: 982, type: !38)
!2998 = !DILocalVariable(name: "argsize", arg: 2, scope: !2993, file: !232, line: 982, type: !83)
!2999 = !DILocalVariable(name: "ch", arg: 3, scope: !2993, file: !232, line: 982, type: !23)
!3000 = !DILocalVariable(name: "options", scope: !2993, file: !232, line: 984, type: !239)
!3001 = !DILocation(line: 982, column: 32, scope: !2993)
!3002 = !DILocation(line: 982, column: 44, scope: !2993)
!3003 = !DILocation(line: 982, column: 58, scope: !2993)
!3004 = !DILocation(line: 984, column: 3, scope: !2993)
!3005 = !DILocation(line: 985, column: 13, scope: !2993)
!3006 = !{i64 0, i64 4, !844, i64 4, i64 4, !853, i64 8, i64 32, !844, i64 40, i64 8, !749, i64 48, i64 8, !749}
!3007 = !DILocation(line: 984, column: 26, scope: !2993)
!3008 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 986, column: 3, scope: !2993)
!3010 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3009)
!3011 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3009)
!3012 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3009)
!3013 = !DILocation(line: 156, column: 62, scope: !1661, inlinedAt: !3009)
!3014 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3009)
!3015 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3009)
!3016 = !DILocation(line: 157, column: 15, scope: !1661, inlinedAt: !3009)
!3017 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3009)
!3018 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3009)
!3019 = !DILocation(line: 158, column: 15, scope: !1661, inlinedAt: !3009)
!3020 = !DILocation(line: 158, column: 25, scope: !1661, inlinedAt: !3009)
!3021 = !DILocation(line: 158, column: 7, scope: !1661, inlinedAt: !3009)
!3022 = !DILocation(line: 159, column: 18, scope: !1661, inlinedAt: !3009)
!3023 = !DILocation(line: 159, column: 23, scope: !1661, inlinedAt: !3009)
!3024 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3009)
!3025 = !DILocation(line: 987, column: 10, scope: !2993)
!3026 = !DILocation(line: 988, column: 1, scope: !2993)
!3027 = !DILocation(line: 987, column: 3, scope: !2993)
!3028 = distinct !DISubprogram(name: "quotearg_char", scope: !232, file: !232, line: 991, type: !3029, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!22, !38, !23}
!3031 = !{!3032, !3033}
!3032 = !DILocalVariable(name: "arg", arg: 1, scope: !3028, file: !232, line: 991, type: !38)
!3033 = !DILocalVariable(name: "ch", arg: 2, scope: !3028, file: !232, line: 991, type: !23)
!3034 = !DILocation(line: 991, column: 28, scope: !3028)
!3035 = !DILocation(line: 991, column: 38, scope: !3028)
!3036 = !DILocation(line: 982, column: 32, scope: !2993, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 993, column: 10, scope: !3028)
!3038 = !DILocation(line: 982, column: 44, scope: !2993, inlinedAt: !3037)
!3039 = !DILocation(line: 982, column: 58, scope: !2993, inlinedAt: !3037)
!3040 = !DILocation(line: 984, column: 3, scope: !2993, inlinedAt: !3037)
!3041 = !DILocation(line: 985, column: 13, scope: !2993, inlinedAt: !3037)
!3042 = !DILocation(line: 984, column: 26, scope: !2993, inlinedAt: !3037)
!3043 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 986, column: 3, scope: !2993, inlinedAt: !3037)
!3045 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3044)
!3046 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3044)
!3047 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3044)
!3048 = !DILocation(line: 156, column: 62, scope: !1661, inlinedAt: !3044)
!3049 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3044)
!3050 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3044)
!3051 = !DILocation(line: 157, column: 15, scope: !1661, inlinedAt: !3044)
!3052 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3044)
!3053 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3044)
!3054 = !DILocation(line: 158, column: 15, scope: !1661, inlinedAt: !3044)
!3055 = !DILocation(line: 158, column: 25, scope: !1661, inlinedAt: !3044)
!3056 = !DILocation(line: 158, column: 7, scope: !1661, inlinedAt: !3044)
!3057 = !DILocation(line: 159, column: 18, scope: !1661, inlinedAt: !3044)
!3058 = !DILocation(line: 159, column: 23, scope: !1661, inlinedAt: !3044)
!3059 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3044)
!3060 = !DILocation(line: 987, column: 10, scope: !2993, inlinedAt: !3037)
!3061 = !DILocation(line: 988, column: 1, scope: !2993, inlinedAt: !3037)
!3062 = !DILocation(line: 993, column: 3, scope: !3028)
!3063 = distinct !DISubprogram(name: "quotearg_colon", scope: !232, file: !232, line: 997, type: !2847, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3064)
!3064 = !{!3065}
!3065 = !DILocalVariable(name: "arg", arg: 1, scope: !3063, file: !232, line: 997, type: !38)
!3066 = !DILocation(line: 997, column: 29, scope: !3063)
!3067 = !DILocation(line: 991, column: 28, scope: !3028, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 999, column: 10, scope: !3063)
!3069 = !DILocation(line: 991, column: 38, scope: !3028, inlinedAt: !3068)
!3070 = !DILocation(line: 982, column: 32, scope: !2993, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 993, column: 10, scope: !3028, inlinedAt: !3068)
!3072 = !DILocation(line: 982, column: 44, scope: !2993, inlinedAt: !3071)
!3073 = !DILocation(line: 982, column: 58, scope: !2993, inlinedAt: !3071)
!3074 = !DILocation(line: 984, column: 3, scope: !2993, inlinedAt: !3071)
!3075 = !DILocation(line: 985, column: 13, scope: !2993, inlinedAt: !3071)
!3076 = !DILocation(line: 984, column: 26, scope: !2993, inlinedAt: !3071)
!3077 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 986, column: 3, scope: !2993, inlinedAt: !3071)
!3079 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3078)
!3080 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3078)
!3081 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3078)
!3082 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3078)
!3083 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3078)
!3084 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3078)
!3085 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3078)
!3086 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3078)
!3087 = !DILocation(line: 987, column: 10, scope: !2993, inlinedAt: !3071)
!3088 = !DILocation(line: 988, column: 1, scope: !2993, inlinedAt: !3071)
!3089 = !DILocation(line: 999, column: 3, scope: !3063)
!3090 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !232, file: !232, line: 1003, type: !2858, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3091)
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "arg", arg: 1, scope: !3090, file: !232, line: 1003, type: !38)
!3093 = !DILocalVariable(name: "argsize", arg: 2, scope: !3090, file: !232, line: 1003, type: !83)
!3094 = !DILocation(line: 1003, column: 33, scope: !3090)
!3095 = !DILocation(line: 1003, column: 45, scope: !3090)
!3096 = !DILocation(line: 982, column: 32, scope: !2993, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 1005, column: 10, scope: !3090)
!3098 = !DILocation(line: 982, column: 44, scope: !2993, inlinedAt: !3097)
!3099 = !DILocation(line: 982, column: 58, scope: !2993, inlinedAt: !3097)
!3100 = !DILocation(line: 984, column: 3, scope: !2993, inlinedAt: !3097)
!3101 = !DILocation(line: 985, column: 13, scope: !2993, inlinedAt: !3097)
!3102 = !DILocation(line: 984, column: 26, scope: !2993, inlinedAt: !3097)
!3103 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 986, column: 3, scope: !2993, inlinedAt: !3097)
!3105 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3104)
!3106 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3104)
!3107 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3104)
!3108 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3104)
!3109 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3104)
!3110 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3104)
!3111 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3104)
!3112 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3104)
!3113 = !DILocation(line: 987, column: 10, scope: !2993, inlinedAt: !3097)
!3114 = !DILocation(line: 988, column: 1, scope: !2993, inlinedAt: !3097)
!3115 = !DILocation(line: 1005, column: 3, scope: !3090)
!3116 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !232, file: !232, line: 1009, type: !2872, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3117)
!3117 = !{!3118, !3119, !3120, !3121}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3116, file: !232, line: 1009, type: !25)
!3119 = !DILocalVariable(name: "s", arg: 2, scope: !3116, file: !232, line: 1009, type: !54)
!3120 = !DILocalVariable(name: "arg", arg: 3, scope: !3116, file: !232, line: 1009, type: !38)
!3121 = !DILocalVariable(name: "options", scope: !3116, file: !232, line: 1011, type: !239)
!3122 = !DILocation(line: 195, column: 26, scope: !2885, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 1012, column: 13, scope: !3116)
!3124 = !DILocation(line: 1009, column: 29, scope: !3116)
!3125 = !DILocation(line: 1009, column: 51, scope: !3116)
!3126 = !DILocation(line: 1009, column: 66, scope: !3116)
!3127 = !DILocation(line: 1011, column: 3, scope: !3116)
!3128 = !DILocation(line: 1012, column: 13, scope: !3116)
!3129 = !DILocation(line: 193, column: 48, scope: !2885, inlinedAt: !3123)
!3130 = !{!3131}
!3131 = distinct !{!3131, !3132, !"quoting_options_from_style: argument 0"}
!3132 = distinct !{!3132, !"quoting_options_from_style"}
!3133 = !DILocation(line: 196, column: 13, scope: !2897, inlinedAt: !3123)
!3134 = !DILocation(line: 196, column: 7, scope: !2885, inlinedAt: !3123)
!3135 = !DILocation(line: 197, column: 5, scope: !2897, inlinedAt: !3123)
!3136 = !DILocation(line: 1011, column: 26, scope: !3116)
!3137 = !DILocation(line: 152, column: 43, scope: !1661, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 1013, column: 3, scope: !3116)
!3139 = !DILocation(line: 152, column: 51, scope: !1661, inlinedAt: !3138)
!3140 = !DILocation(line: 152, column: 58, scope: !1661, inlinedAt: !3138)
!3141 = !DILocation(line: 154, column: 17, scope: !1661, inlinedAt: !3138)
!3142 = !DILocation(line: 156, column: 57, scope: !1661, inlinedAt: !3138)
!3143 = !DILocation(line: 155, column: 17, scope: !1661, inlinedAt: !3138)
!3144 = !DILocation(line: 157, column: 7, scope: !1661, inlinedAt: !3138)
!3145 = !DILocation(line: 158, column: 12, scope: !1661, inlinedAt: !3138)
!3146 = !DILocation(line: 159, column: 6, scope: !1661, inlinedAt: !3138)
!3147 = !DILocation(line: 1014, column: 10, scope: !3116)
!3148 = !DILocation(line: 1015, column: 1, scope: !3116)
!3149 = !DILocation(line: 1014, column: 3, scope: !3116)
!3150 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !232, file: !232, line: 1018, type: !3151, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!22, !25, !38, !38, !38}
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DILocalVariable(name: "n", arg: 1, scope: !3150, file: !232, line: 1018, type: !25)
!3155 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3150, file: !232, line: 1018, type: !38)
!3156 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3150, file: !232, line: 1019, type: !38)
!3157 = !DILocalVariable(name: "arg", arg: 4, scope: !3150, file: !232, line: 1019, type: !38)
!3158 = !DILocation(line: 1018, column: 24, scope: !3150)
!3159 = !DILocation(line: 1018, column: 39, scope: !3150)
!3160 = !DILocation(line: 1019, column: 32, scope: !3150)
!3161 = !DILocation(line: 1019, column: 57, scope: !3150)
!3162 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !232, line: 1026, type: !25)
!3163 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !232, file: !232, line: 1026, type: !3164, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!22, !25, !38, !38, !38, !83}
!3166 = !{!3162, !3167, !3168, !3169, !3170, !3171}
!3167 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3163, file: !232, line: 1026, type: !38)
!3168 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3163, file: !232, line: 1027, type: !38)
!3169 = !DILocalVariable(name: "arg", arg: 4, scope: !3163, file: !232, line: 1028, type: !38)
!3170 = !DILocalVariable(name: "argsize", arg: 5, scope: !3163, file: !232, line: 1028, type: !83)
!3171 = !DILocalVariable(name: "o", scope: !3163, file: !232, line: 1030, type: !239)
!3172 = !DILocation(line: 1026, column: 28, scope: !3163, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1021, column: 10, scope: !3150)
!3174 = !DILocation(line: 1026, column: 43, scope: !3163, inlinedAt: !3173)
!3175 = !DILocation(line: 1027, column: 36, scope: !3163, inlinedAt: !3173)
!3176 = !DILocation(line: 1028, column: 36, scope: !3163, inlinedAt: !3173)
!3177 = !DILocation(line: 1028, column: 48, scope: !3163, inlinedAt: !3173)
!3178 = !DILocation(line: 1030, column: 3, scope: !3163, inlinedAt: !3173)
!3179 = !DILocation(line: 1030, column: 30, scope: !3163, inlinedAt: !3173)
!3180 = !DILocation(line: 1030, column: 26, scope: !3163, inlinedAt: !3173)
!3181 = !DILocation(line: 179, column: 45, scope: !1709, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1031, column: 3, scope: !3163, inlinedAt: !3173)
!3183 = !DILocation(line: 180, column: 33, scope: !1709, inlinedAt: !3182)
!3184 = !DILocation(line: 180, column: 57, scope: !1709, inlinedAt: !3182)
!3185 = !DILocation(line: 184, column: 6, scope: !1709, inlinedAt: !3182)
!3186 = !DILocation(line: 184, column: 12, scope: !1709, inlinedAt: !3182)
!3187 = !DILocation(line: 185, column: 8, scope: !1725, inlinedAt: !3182)
!3188 = !DILocation(line: 185, column: 23, scope: !1725, inlinedAt: !3182)
!3189 = !DILocation(line: 185, column: 19, scope: !1725, inlinedAt: !3182)
!3190 = !DILocation(line: 186, column: 5, scope: !1725, inlinedAt: !3182)
!3191 = !DILocation(line: 187, column: 6, scope: !1709, inlinedAt: !3182)
!3192 = !DILocation(line: 187, column: 17, scope: !1709, inlinedAt: !3182)
!3193 = !DILocation(line: 188, column: 6, scope: !1709, inlinedAt: !3182)
!3194 = !DILocation(line: 188, column: 18, scope: !1709, inlinedAt: !3182)
!3195 = !DILocation(line: 1032, column: 10, scope: !3163, inlinedAt: !3173)
!3196 = !DILocation(line: 1033, column: 1, scope: !3163, inlinedAt: !3173)
!3197 = !DILocation(line: 1021, column: 3, scope: !3150)
!3198 = !DILocation(line: 1026, column: 28, scope: !3163)
!3199 = !DILocation(line: 1026, column: 43, scope: !3163)
!3200 = !DILocation(line: 1027, column: 36, scope: !3163)
!3201 = !DILocation(line: 1028, column: 36, scope: !3163)
!3202 = !DILocation(line: 1028, column: 48, scope: !3163)
!3203 = !DILocation(line: 1030, column: 3, scope: !3163)
!3204 = !DILocation(line: 1030, column: 30, scope: !3163)
!3205 = !DILocation(line: 1030, column: 26, scope: !3163)
!3206 = !DILocation(line: 179, column: 45, scope: !1709, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1031, column: 3, scope: !3163)
!3208 = !DILocation(line: 180, column: 33, scope: !1709, inlinedAt: !3207)
!3209 = !DILocation(line: 180, column: 57, scope: !1709, inlinedAt: !3207)
!3210 = !DILocation(line: 184, column: 6, scope: !1709, inlinedAt: !3207)
!3211 = !DILocation(line: 184, column: 12, scope: !1709, inlinedAt: !3207)
!3212 = !DILocation(line: 185, column: 8, scope: !1725, inlinedAt: !3207)
!3213 = !DILocation(line: 185, column: 23, scope: !1725, inlinedAt: !3207)
!3214 = !DILocation(line: 185, column: 19, scope: !1725, inlinedAt: !3207)
!3215 = !DILocation(line: 186, column: 5, scope: !1725, inlinedAt: !3207)
!3216 = !DILocation(line: 187, column: 6, scope: !1709, inlinedAt: !3207)
!3217 = !DILocation(line: 187, column: 17, scope: !1709, inlinedAt: !3207)
!3218 = !DILocation(line: 188, column: 6, scope: !1709, inlinedAt: !3207)
!3219 = !DILocation(line: 188, column: 18, scope: !1709, inlinedAt: !3207)
!3220 = !DILocation(line: 1032, column: 10, scope: !3163)
!3221 = !DILocation(line: 1033, column: 1, scope: !3163)
!3222 = !DILocation(line: 1032, column: 3, scope: !3163)
!3223 = distinct !DISubprogram(name: "quotearg_custom", scope: !232, file: !232, line: 1036, type: !3224, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3226)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!22, !38, !38, !38}
!3226 = !{!3227, !3228, !3229}
!3227 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3223, file: !232, line: 1036, type: !38)
!3228 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3223, file: !232, line: 1036, type: !38)
!3229 = !DILocalVariable(name: "arg", arg: 3, scope: !3223, file: !232, line: 1037, type: !38)
!3230 = !DILocation(line: 1036, column: 30, scope: !3223)
!3231 = !DILocation(line: 1036, column: 54, scope: !3223)
!3232 = !DILocation(line: 1037, column: 30, scope: !3223)
!3233 = !DILocation(line: 1018, column: 24, scope: !3150, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 1039, column: 10, scope: !3223)
!3235 = !DILocation(line: 1018, column: 39, scope: !3150, inlinedAt: !3234)
!3236 = !DILocation(line: 1019, column: 32, scope: !3150, inlinedAt: !3234)
!3237 = !DILocation(line: 1019, column: 57, scope: !3150, inlinedAt: !3234)
!3238 = !DILocation(line: 1026, column: 28, scope: !3163, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 1021, column: 10, scope: !3150, inlinedAt: !3234)
!3240 = !DILocation(line: 1026, column: 43, scope: !3163, inlinedAt: !3239)
!3241 = !DILocation(line: 1027, column: 36, scope: !3163, inlinedAt: !3239)
!3242 = !DILocation(line: 1028, column: 36, scope: !3163, inlinedAt: !3239)
!3243 = !DILocation(line: 1028, column: 48, scope: !3163, inlinedAt: !3239)
!3244 = !DILocation(line: 1030, column: 3, scope: !3163, inlinedAt: !3239)
!3245 = !DILocation(line: 1030, column: 30, scope: !3163, inlinedAt: !3239)
!3246 = !DILocation(line: 1030, column: 26, scope: !3163, inlinedAt: !3239)
!3247 = !DILocation(line: 179, column: 45, scope: !1709, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1031, column: 3, scope: !3163, inlinedAt: !3239)
!3249 = !DILocation(line: 180, column: 33, scope: !1709, inlinedAt: !3248)
!3250 = !DILocation(line: 180, column: 57, scope: !1709, inlinedAt: !3248)
!3251 = !DILocation(line: 184, column: 6, scope: !1709, inlinedAt: !3248)
!3252 = !DILocation(line: 184, column: 12, scope: !1709, inlinedAt: !3248)
!3253 = !DILocation(line: 185, column: 8, scope: !1725, inlinedAt: !3248)
!3254 = !DILocation(line: 185, column: 23, scope: !1725, inlinedAt: !3248)
!3255 = !DILocation(line: 185, column: 19, scope: !1725, inlinedAt: !3248)
!3256 = !DILocation(line: 186, column: 5, scope: !1725, inlinedAt: !3248)
!3257 = !DILocation(line: 187, column: 6, scope: !1709, inlinedAt: !3248)
!3258 = !DILocation(line: 187, column: 17, scope: !1709, inlinedAt: !3248)
!3259 = !DILocation(line: 188, column: 6, scope: !1709, inlinedAt: !3248)
!3260 = !DILocation(line: 188, column: 18, scope: !1709, inlinedAt: !3248)
!3261 = !DILocation(line: 1032, column: 10, scope: !3163, inlinedAt: !3239)
!3262 = !DILocation(line: 1033, column: 1, scope: !3163, inlinedAt: !3239)
!3263 = !DILocation(line: 1039, column: 3, scope: !3223)
!3264 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !232, file: !232, line: 1043, type: !3265, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!22, !38, !38, !38, !83}
!3267 = !{!3268, !3269, !3270, !3271}
!3268 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3264, file: !232, line: 1043, type: !38)
!3269 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3264, file: !232, line: 1043, type: !38)
!3270 = !DILocalVariable(name: "arg", arg: 3, scope: !3264, file: !232, line: 1044, type: !38)
!3271 = !DILocalVariable(name: "argsize", arg: 4, scope: !3264, file: !232, line: 1044, type: !83)
!3272 = !DILocation(line: 1043, column: 34, scope: !3264)
!3273 = !DILocation(line: 1043, column: 58, scope: !3264)
!3274 = !DILocation(line: 1044, column: 34, scope: !3264)
!3275 = !DILocation(line: 1044, column: 46, scope: !3264)
!3276 = !DILocation(line: 1026, column: 28, scope: !3163, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 1046, column: 10, scope: !3264)
!3278 = !DILocation(line: 1026, column: 43, scope: !3163, inlinedAt: !3277)
!3279 = !DILocation(line: 1027, column: 36, scope: !3163, inlinedAt: !3277)
!3280 = !DILocation(line: 1028, column: 36, scope: !3163, inlinedAt: !3277)
!3281 = !DILocation(line: 1028, column: 48, scope: !3163, inlinedAt: !3277)
!3282 = !DILocation(line: 1030, column: 3, scope: !3163, inlinedAt: !3277)
!3283 = !DILocation(line: 1030, column: 30, scope: !3163, inlinedAt: !3277)
!3284 = !DILocation(line: 1030, column: 26, scope: !3163, inlinedAt: !3277)
!3285 = !DILocation(line: 179, column: 45, scope: !1709, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 1031, column: 3, scope: !3163, inlinedAt: !3277)
!3287 = !DILocation(line: 180, column: 33, scope: !1709, inlinedAt: !3286)
!3288 = !DILocation(line: 180, column: 57, scope: !1709, inlinedAt: !3286)
!3289 = !DILocation(line: 184, column: 6, scope: !1709, inlinedAt: !3286)
!3290 = !DILocation(line: 184, column: 12, scope: !1709, inlinedAt: !3286)
!3291 = !DILocation(line: 185, column: 8, scope: !1725, inlinedAt: !3286)
!3292 = !DILocation(line: 185, column: 23, scope: !1725, inlinedAt: !3286)
!3293 = !DILocation(line: 185, column: 19, scope: !1725, inlinedAt: !3286)
!3294 = !DILocation(line: 186, column: 5, scope: !1725, inlinedAt: !3286)
!3295 = !DILocation(line: 187, column: 6, scope: !1709, inlinedAt: !3286)
!3296 = !DILocation(line: 187, column: 17, scope: !1709, inlinedAt: !3286)
!3297 = !DILocation(line: 188, column: 6, scope: !1709, inlinedAt: !3286)
!3298 = !DILocation(line: 188, column: 18, scope: !1709, inlinedAt: !3286)
!3299 = !DILocation(line: 1032, column: 10, scope: !3163, inlinedAt: !3277)
!3300 = !DILocation(line: 1033, column: 1, scope: !3163, inlinedAt: !3277)
!3301 = !DILocation(line: 1046, column: 3, scope: !3264)
!3302 = distinct !DISubprogram(name: "quote_n_mem", scope: !232, file: !232, line: 1061, type: !3303, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!38, !25, !38, !83}
!3305 = !{!3306, !3307, !3308}
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !232, line: 1061, type: !25)
!3307 = !DILocalVariable(name: "arg", arg: 2, scope: !3302, file: !232, line: 1061, type: !38)
!3308 = !DILocalVariable(name: "argsize", arg: 3, scope: !3302, file: !232, line: 1061, type: !83)
!3309 = !DILocation(line: 1061, column: 18, scope: !3302)
!3310 = !DILocation(line: 1061, column: 33, scope: !3302)
!3311 = !DILocation(line: 1061, column: 45, scope: !3302)
!3312 = !DILocation(line: 1063, column: 10, scope: !3302)
!3313 = !DILocation(line: 1063, column: 3, scope: !3302)
!3314 = distinct !DISubprogram(name: "quote_mem", scope: !232, file: !232, line: 1067, type: !3315, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!38, !38, !83}
!3317 = !{!3318, !3319}
!3318 = !DILocalVariable(name: "arg", arg: 1, scope: !3314, file: !232, line: 1067, type: !38)
!3319 = !DILocalVariable(name: "argsize", arg: 2, scope: !3314, file: !232, line: 1067, type: !83)
!3320 = !DILocation(line: 1067, column: 24, scope: !3314)
!3321 = !DILocation(line: 1067, column: 36, scope: !3314)
!3322 = !DILocation(line: 1061, column: 18, scope: !3302, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1069, column: 10, scope: !3314)
!3324 = !DILocation(line: 1061, column: 33, scope: !3302, inlinedAt: !3323)
!3325 = !DILocation(line: 1061, column: 45, scope: !3302, inlinedAt: !3323)
!3326 = !DILocation(line: 1063, column: 10, scope: !3302, inlinedAt: !3323)
!3327 = !DILocation(line: 1069, column: 3, scope: !3314)
!3328 = distinct !DISubprogram(name: "quote_n", scope: !232, file: !232, line: 1073, type: !3329, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!38, !25, !38}
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "n", arg: 1, scope: !3328, file: !232, line: 1073, type: !25)
!3333 = !DILocalVariable(name: "arg", arg: 2, scope: !3328, file: !232, line: 1073, type: !38)
!3334 = !DILocation(line: 1073, column: 14, scope: !3328)
!3335 = !DILocation(line: 1073, column: 29, scope: !3328)
!3336 = !DILocation(line: 1061, column: 18, scope: !3302, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1075, column: 10, scope: !3328)
!3338 = !DILocation(line: 1061, column: 33, scope: !3302, inlinedAt: !3337)
!3339 = !DILocation(line: 1061, column: 45, scope: !3302, inlinedAt: !3337)
!3340 = !DILocation(line: 1063, column: 10, scope: !3302, inlinedAt: !3337)
!3341 = !DILocation(line: 1075, column: 3, scope: !3328)
!3342 = distinct !DISubprogram(name: "quote", scope: !232, file: !232, line: 1079, type: !3343, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!38, !38}
!3345 = !{!3346}
!3346 = !DILocalVariable(name: "arg", arg: 1, scope: !3342, file: !232, line: 1079, type: !38)
!3347 = !DILocation(line: 1079, column: 20, scope: !3342)
!3348 = !DILocation(line: 1073, column: 14, scope: !3328, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 1081, column: 10, scope: !3342)
!3350 = !DILocation(line: 1073, column: 29, scope: !3328, inlinedAt: !3349)
!3351 = !DILocation(line: 1061, column: 18, scope: !3302, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 1075, column: 10, scope: !3328, inlinedAt: !3349)
!3353 = !DILocation(line: 1061, column: 33, scope: !3302, inlinedAt: !3352)
!3354 = !DILocation(line: 1061, column: 45, scope: !3302, inlinedAt: !3352)
!3355 = !DILocation(line: 1063, column: 10, scope: !3302, inlinedAt: !3352)
!3356 = !DILocation(line: 1081, column: 3, scope: !3342)
!3357 = distinct !DISubprogram(name: "version_etc_arn", scope: !287, file: !287, line: 62, type: !3358, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !3395)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3360, !38, !38, !38, !3394, !83}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3362, file: !111, line: 51, baseType: !25, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3362, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3362, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3362, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3362, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3362, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3362, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3362, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3362, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3362, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3362, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3362, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3362, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3362, file: !111, line: 70, baseType: !3378, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3362, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3362, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3362, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3362, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3362, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3362, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3362, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3362, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3362, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3362, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3362, file: !111, line: 93, baseType: !3378, size: 64, offset: 1344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3362, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3362, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3362, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3362, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401}
!3396 = !DILocalVariable(name: "stream", arg: 1, scope: !3357, file: !287, line: 62, type: !3360)
!3397 = !DILocalVariable(name: "command_name", arg: 2, scope: !3357, file: !287, line: 63, type: !38)
!3398 = !DILocalVariable(name: "package", arg: 3, scope: !3357, file: !287, line: 63, type: !38)
!3399 = !DILocalVariable(name: "version", arg: 4, scope: !3357, file: !287, line: 64, type: !38)
!3400 = !DILocalVariable(name: "authors", arg: 5, scope: !3357, file: !287, line: 65, type: !3394)
!3401 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3357, file: !287, line: 65, type: !83)
!3402 = !DILocation(line: 62, column: 24, scope: !3357)
!3403 = !DILocation(line: 63, column: 30, scope: !3357)
!3404 = !DILocation(line: 63, column: 56, scope: !3357)
!3405 = !DILocation(line: 64, column: 30, scope: !3357)
!3406 = !DILocation(line: 65, column: 39, scope: !3357)
!3407 = !DILocation(line: 65, column: 55, scope: !3357)
!3408 = !DILocation(line: 67, column: 7, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3357, file: !287, line: 67, column: 7)
!3410 = !DILocation(line: 67, column: 7, scope: !3357)
!3411 = !DILocation(line: 68, column: 5, scope: !3409)
!3412 = !DILocation(line: 70, column: 5, scope: !3409)
!3413 = !DILocation(line: 84, column: 3, scope: !3357)
!3414 = !DILocation(line: 86, column: 3, scope: !3357)
!3415 = !DILocation(line: 95, column: 3, scope: !3357)
!3416 = !DILocation(line: 99, column: 7, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3357, file: !287, line: 96, column: 5)
!3418 = !DILocation(line: 102, column: 7, scope: !3417)
!3419 = !DILocation(line: 103, column: 7, scope: !3417)
!3420 = !DILocation(line: 106, column: 7, scope: !3417)
!3421 = !DILocation(line: 107, column: 7, scope: !3417)
!3422 = !DILocation(line: 110, column: 7, scope: !3417)
!3423 = !DILocation(line: 112, column: 7, scope: !3417)
!3424 = !DILocation(line: 117, column: 7, scope: !3417)
!3425 = !DILocation(line: 119, column: 7, scope: !3417)
!3426 = !DILocation(line: 124, column: 7, scope: !3417)
!3427 = !DILocation(line: 126, column: 7, scope: !3417)
!3428 = !DILocation(line: 131, column: 7, scope: !3417)
!3429 = !DILocation(line: 134, column: 7, scope: !3417)
!3430 = !DILocation(line: 139, column: 7, scope: !3417)
!3431 = !DILocation(line: 142, column: 7, scope: !3417)
!3432 = !DILocation(line: 147, column: 7, scope: !3417)
!3433 = !DILocation(line: 151, column: 7, scope: !3417)
!3434 = !DILocation(line: 156, column: 7, scope: !3417)
!3435 = !DILocation(line: 160, column: 7, scope: !3417)
!3436 = !DILocation(line: 167, column: 7, scope: !3417)
!3437 = !DILocation(line: 171, column: 7, scope: !3417)
!3438 = !DILocation(line: 173, column: 1, scope: !3357)
!3439 = distinct !DISubprogram(name: "version_etc_ar", scope: !287, file: !287, line: 180, type: !3440, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3360, !38, !38, !38, !3394}
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448}
!3443 = !DILocalVariable(name: "stream", arg: 1, scope: !3439, file: !287, line: 180, type: !3360)
!3444 = !DILocalVariable(name: "command_name", arg: 2, scope: !3439, file: !287, line: 181, type: !38)
!3445 = !DILocalVariable(name: "package", arg: 3, scope: !3439, file: !287, line: 181, type: !38)
!3446 = !DILocalVariable(name: "version", arg: 4, scope: !3439, file: !287, line: 182, type: !38)
!3447 = !DILocalVariable(name: "authors", arg: 5, scope: !3439, file: !287, line: 182, type: !3394)
!3448 = !DILocalVariable(name: "n_authors", scope: !3439, file: !287, line: 184, type: !83)
!3449 = !DILocation(line: 180, column: 23, scope: !3439)
!3450 = !DILocation(line: 181, column: 29, scope: !3439)
!3451 = !DILocation(line: 181, column: 55, scope: !3439)
!3452 = !DILocation(line: 182, column: 29, scope: !3439)
!3453 = !DILocation(line: 182, column: 59, scope: !3439)
!3454 = !DILocation(line: 184, column: 10, scope: !3439)
!3455 = !DILocation(line: 186, column: 8, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3439, file: !287, line: 186, column: 3)
!3457 = !DILocation(line: 0, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3456, file: !287, line: 186, column: 3)
!3459 = !DILocation(line: 186, column: 23, scope: !3458)
!3460 = !DILocation(line: 186, column: 3, scope: !3456)
!3461 = !DILocation(line: 186, column: 52, scope: !3458)
!3462 = distinct !{!3462, !3460, !3463}
!3463 = !DILocation(line: 187, column: 5, scope: !3456)
!3464 = !DILocation(line: 188, column: 3, scope: !3439)
!3465 = !DILocation(line: 189, column: 1, scope: !3439)
!3466 = distinct !DISubprogram(name: "version_etc_va", scope: !287, file: !287, line: 196, type: !3467, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !3476)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3360, !38, !38, !38, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !284, line: 189, size: 192, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3470, file: !284, line: 189, baseType: !7, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3470, file: !284, line: 189, baseType: !7, size: 32, offset: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3470, file: !284, line: 189, baseType: !24, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3470, file: !284, line: 189, baseType: !24, size: 64, offset: 128)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3477 = !DILocalVariable(name: "stream", arg: 1, scope: !3466, file: !287, line: 196, type: !3360)
!3478 = !DILocalVariable(name: "command_name", arg: 2, scope: !3466, file: !287, line: 197, type: !38)
!3479 = !DILocalVariable(name: "package", arg: 3, scope: !3466, file: !287, line: 197, type: !38)
!3480 = !DILocalVariable(name: "version", arg: 4, scope: !3466, file: !287, line: 198, type: !38)
!3481 = !DILocalVariable(name: "authors", arg: 5, scope: !3466, file: !287, line: 198, type: !3469)
!3482 = !DILocalVariable(name: "n_authors", scope: !3466, file: !287, line: 200, type: !83)
!3483 = !DILocalVariable(name: "authtab", scope: !3466, file: !287, line: 201, type: !3484)
!3484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !235)
!3485 = !DILocation(line: 196, column: 23, scope: !3466)
!3486 = !DILocation(line: 197, column: 29, scope: !3466)
!3487 = !DILocation(line: 197, column: 55, scope: !3466)
!3488 = !DILocation(line: 198, column: 29, scope: !3466)
!3489 = !DILocation(line: 198, column: 46, scope: !3466)
!3490 = !DILocation(line: 201, column: 3, scope: !3466)
!3491 = !DILocation(line: 201, column: 15, scope: !3466)
!3492 = !DILocation(line: 200, column: 10, scope: !3466)
!3493 = !DILocation(line: 205, column: 35, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !287, line: 203, column: 3)
!3495 = distinct !DILexicalBlock(scope: !3466, file: !287, line: 203, column: 3)
!3496 = !DILocation(line: 205, column: 14, scope: !3494)
!3497 = !DILocation(line: 205, column: 33, scope: !3494)
!3498 = !DILocation(line: 205, column: 67, scope: !3494)
!3499 = !DILocation(line: 203, column: 3, scope: !3495)
!3500 = !DILocation(line: 0, scope: !3494)
!3501 = !DILocation(line: 208, column: 3, scope: !3466)
!3502 = !DILocation(line: 210, column: 1, scope: !3466)
!3503 = distinct !DISubprogram(name: "version_etc", scope: !287, file: !287, line: 227, type: !3504, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3360, !38, !38, !38, null}
!3506 = !{!3507, !3508, !3509, !3510, !3511}
!3507 = !DILocalVariable(name: "stream", arg: 1, scope: !3503, file: !287, line: 227, type: !3360)
!3508 = !DILocalVariable(name: "command_name", arg: 2, scope: !3503, file: !287, line: 228, type: !38)
!3509 = !DILocalVariable(name: "package", arg: 3, scope: !3503, file: !287, line: 228, type: !38)
!3510 = !DILocalVariable(name: "version", arg: 4, scope: !3503, file: !287, line: 229, type: !38)
!3511 = !DILocalVariable(name: "authors", scope: !3503, file: !287, line: 231, type: !3512)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1512, line: 52, baseType: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3514, line: 48, baseType: !3515)
!3514 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !284, line: 231, baseType: !3516)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3470, size: 192, elements: !140)
!3517 = !DILocation(line: 227, column: 20, scope: !3503)
!3518 = !DILocation(line: 228, column: 26, scope: !3503)
!3519 = !DILocation(line: 228, column: 52, scope: !3503)
!3520 = !DILocation(line: 229, column: 26, scope: !3503)
!3521 = !DILocation(line: 231, column: 3, scope: !3503)
!3522 = !DILocation(line: 231, column: 11, scope: !3503)
!3523 = !DILocation(line: 233, column: 3, scope: !3503)
!3524 = !DILocation(line: 234, column: 3, scope: !3503)
!3525 = !DILocation(line: 235, column: 3, scope: !3503)
!3526 = !DILocation(line: 236, column: 1, scope: !3503)
!3527 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !287, file: !287, line: 239, type: !757, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !194)
!3528 = !DILocation(line: 245, column: 3, scope: !3527)
!3529 = !DILocation(line: 251, column: 3, scope: !3527)
!3530 = !DILocation(line: 256, column: 3, scope: !3527)
!3531 = !DILocation(line: 258, column: 1, scope: !3527)
!3532 = distinct !DISubprogram(name: "xnmalloc", scope: !78, file: !78, line: 99, type: !3533, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!24, !83, !83}
!3535 = !{!3536, !3537}
!3536 = !DILocalVariable(name: "n", arg: 1, scope: !3532, file: !78, line: 99, type: !83)
!3537 = !DILocalVariable(name: "s", arg: 2, scope: !3532, file: !78, line: 99, type: !83)
!3538 = !DILocation(line: 99, column: 18, scope: !3532)
!3539 = !DILocation(line: 99, column: 28, scope: !3532)
!3540 = !DILocation(line: 101, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3532, file: !78, line: 101, column: 7)
!3542 = !DILocation(line: 101, column: 7, scope: !3532)
!3543 = !DILocation(line: 102, column: 5, scope: !3541)
!3544 = !DILocation(line: 103, column: 21, scope: !3532)
!3545 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !3547, line: 39, type: !83)
!3546 = distinct !DISubprogram(name: "xmalloc", scope: !3547, file: !3547, line: 39, type: !3548, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3550)
!3547 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!24, !83}
!3550 = !{!3545, !3551}
!3551 = !DILocalVariable(name: "p", scope: !3546, file: !3547, line: 41, type: !24)
!3552 = !DILocation(line: 39, column: 17, scope: !3546, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 103, column: 10, scope: !3532)
!3554 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3553)
!3555 = !DILocation(line: 41, column: 9, scope: !3546, inlinedAt: !3553)
!3556 = !DILocation(line: 42, column: 8, scope: !3557, inlinedAt: !3553)
!3557 = distinct !DILexicalBlock(scope: !3546, file: !3547, line: 42, column: 7)
!3558 = !DILocation(line: 42, column: 15, scope: !3557, inlinedAt: !3553)
!3559 = !DILocation(line: 42, column: 10, scope: !3557, inlinedAt: !3553)
!3560 = !DILocation(line: 43, column: 5, scope: !3557, inlinedAt: !3553)
!3561 = !DILocation(line: 103, column: 3, scope: !3532)
!3562 = !DILocation(line: 39, column: 17, scope: !3546)
!3563 = !DILocation(line: 41, column: 13, scope: !3546)
!3564 = !DILocation(line: 41, column: 9, scope: !3546)
!3565 = !DILocation(line: 42, column: 8, scope: !3557)
!3566 = !DILocation(line: 42, column: 15, scope: !3557)
!3567 = !DILocation(line: 42, column: 10, scope: !3557)
!3568 = !DILocation(line: 43, column: 5, scope: !3557)
!3569 = !DILocation(line: 44, column: 3, scope: !3546)
!3570 = distinct !DISubprogram(name: "xnrealloc", scope: !78, file: !78, line: 112, type: !3571, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!24, !24, !83, !83}
!3573 = !{!3574, !3575, !3576}
!3574 = !DILocalVariable(name: "p", arg: 1, scope: !3570, file: !78, line: 112, type: !24)
!3575 = !DILocalVariable(name: "n", arg: 2, scope: !3570, file: !78, line: 112, type: !83)
!3576 = !DILocalVariable(name: "s", arg: 3, scope: !3570, file: !78, line: 112, type: !83)
!3577 = !DILocation(line: 112, column: 18, scope: !3570)
!3578 = !DILocation(line: 112, column: 28, scope: !3570)
!3579 = !DILocation(line: 112, column: 38, scope: !3570)
!3580 = !DILocation(line: 114, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3570, file: !78, line: 114, column: 7)
!3582 = !DILocation(line: 114, column: 7, scope: !3570)
!3583 = !DILocation(line: 115, column: 5, scope: !3581)
!3584 = !DILocation(line: 116, column: 25, scope: !3570)
!3585 = !DILocalVariable(name: "p", arg: 1, scope: !3586, file: !3547, line: 51, type: !24)
!3586 = distinct !DISubprogram(name: "xrealloc", scope: !3547, file: !3547, line: 51, type: !3587, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!24, !24, !83}
!3589 = !{!3585, !3590}
!3590 = !DILocalVariable(name: "n", arg: 2, scope: !3586, file: !3547, line: 51, type: !83)
!3591 = !DILocation(line: 51, column: 17, scope: !3586, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 116, column: 10, scope: !3570)
!3593 = !DILocation(line: 51, column: 27, scope: !3586, inlinedAt: !3592)
!3594 = !DILocation(line: 53, column: 8, scope: !3595, inlinedAt: !3592)
!3595 = distinct !DILexicalBlock(scope: !3586, file: !3547, line: 53, column: 7)
!3596 = !DILocation(line: 53, column: 13, scope: !3595, inlinedAt: !3592)
!3597 = !DILocation(line: 53, column: 10, scope: !3595, inlinedAt: !3592)
!3598 = !DILocation(line: 57, column: 7, scope: !3599, inlinedAt: !3592)
!3599 = distinct !DILexicalBlock(scope: !3595, file: !3547, line: 54, column: 5)
!3600 = !DILocation(line: 58, column: 7, scope: !3599, inlinedAt: !3592)
!3601 = !DILocation(line: 61, column: 7, scope: !3586, inlinedAt: !3592)
!3602 = !DILocation(line: 62, column: 8, scope: !3603, inlinedAt: !3592)
!3603 = distinct !DILexicalBlock(scope: !3586, file: !3547, line: 62, column: 7)
!3604 = !DILocation(line: 62, column: 13, scope: !3603, inlinedAt: !3592)
!3605 = !DILocation(line: 62, column: 10, scope: !3603, inlinedAt: !3592)
!3606 = !DILocation(line: 63, column: 5, scope: !3603, inlinedAt: !3592)
!3607 = !DILocation(line: 0, scope: !3586, inlinedAt: !3592)
!3608 = !DILocation(line: 116, column: 3, scope: !3570)
!3609 = !DILocation(line: 51, column: 17, scope: !3586)
!3610 = !DILocation(line: 51, column: 27, scope: !3586)
!3611 = !DILocation(line: 53, column: 8, scope: !3595)
!3612 = !DILocation(line: 53, column: 13, scope: !3595)
!3613 = !DILocation(line: 53, column: 10, scope: !3595)
!3614 = !DILocation(line: 57, column: 7, scope: !3599)
!3615 = !DILocation(line: 58, column: 7, scope: !3599)
!3616 = !DILocation(line: 61, column: 7, scope: !3586)
!3617 = !DILocation(line: 62, column: 8, scope: !3603)
!3618 = !DILocation(line: 62, column: 13, scope: !3603)
!3619 = !DILocation(line: 62, column: 10, scope: !3603)
!3620 = !DILocation(line: 63, column: 5, scope: !3603)
!3621 = !DILocation(line: 0, scope: !3586)
!3622 = !DILocation(line: 65, column: 1, scope: !3586)
!3623 = !DILocation(line: 174, column: 19, scope: !295)
!3624 = !DILocation(line: 174, column: 30, scope: !295)
!3625 = !DILocation(line: 174, column: 41, scope: !295)
!3626 = !DILocation(line: 176, column: 14, scope: !295)
!3627 = !DILocation(line: 176, column: 10, scope: !295)
!3628 = !DILocation(line: 178, column: 9, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !295, file: !78, line: 178, column: 7)
!3630 = !DILocation(line: 178, column: 7, scope: !295)
!3631 = !DILocation(line: 180, column: 13, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !78, line: 180, column: 11)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !78, line: 179, column: 5)
!3634 = !DILocation(line: 180, column: 11, scope: !3633)
!3635 = !DILocation(line: 188, column: 30, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3632, file: !78, line: 181, column: 9)
!3637 = !DILocation(line: 189, column: 16, scope: !3636)
!3638 = !DILocation(line: 189, column: 13, scope: !3636)
!3639 = !DILocation(line: 190, column: 9, scope: !3636)
!3640 = !DILocation(line: 0, scope: !3636)
!3641 = !DILocation(line: 191, column: 11, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3633, file: !78, line: 191, column: 11)
!3643 = !DILocation(line: 191, column: 11, scope: !3633)
!3644 = !DILocation(line: 206, column: 7, scope: !295)
!3645 = !DILocation(line: 207, column: 25, scope: !295)
!3646 = !DILocation(line: 51, column: 17, scope: !3586, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 207, column: 10, scope: !295)
!3648 = !DILocation(line: 51, column: 27, scope: !3586, inlinedAt: !3647)
!3649 = !DILocation(line: 53, column: 10, scope: !3595, inlinedAt: !3647)
!3650 = !DILocation(line: 192, column: 9, scope: !3642)
!3651 = !DILocation(line: 200, column: 69, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !78, line: 200, column: 11)
!3653 = distinct !DILexicalBlock(scope: !3629, file: !78, line: 195, column: 5)
!3654 = !DILocation(line: 201, column: 11, scope: !3652)
!3655 = !DILocation(line: 200, column: 11, scope: !3653)
!3656 = !DILocation(line: 202, column: 9, scope: !3652)
!3657 = !DILocation(line: 203, column: 14, scope: !3653)
!3658 = !DILocation(line: 203, column: 18, scope: !3653)
!3659 = !DILocation(line: 203, column: 9, scope: !3653)
!3660 = !DILocation(line: 53, column: 8, scope: !3595, inlinedAt: !3647)
!3661 = !DILocation(line: 57, column: 7, scope: !3599, inlinedAt: !3647)
!3662 = !DILocation(line: 58, column: 7, scope: !3599, inlinedAt: !3647)
!3663 = !DILocation(line: 61, column: 7, scope: !3586, inlinedAt: !3647)
!3664 = !DILocation(line: 62, column: 8, scope: !3603, inlinedAt: !3647)
!3665 = !DILocation(line: 62, column: 13, scope: !3603, inlinedAt: !3647)
!3666 = !DILocation(line: 62, column: 10, scope: !3603, inlinedAt: !3647)
!3667 = !DILocation(line: 63, column: 5, scope: !3603, inlinedAt: !3647)
!3668 = !DILocation(line: 0, scope: !3586, inlinedAt: !3647)
!3669 = !DILocation(line: 207, column: 3, scope: !295)
!3670 = distinct !DISubprogram(name: "xcharalloc", scope: !78, file: !78, line: 216, type: !2643, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3671)
!3671 = !{!3672}
!3672 = !DILocalVariable(name: "n", arg: 1, scope: !3670, file: !78, line: 216, type: !83)
!3673 = !DILocation(line: 216, column: 20, scope: !3670)
!3674 = !DILocation(line: 39, column: 17, scope: !3546, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 218, column: 10, scope: !3670)
!3676 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3675)
!3677 = !DILocation(line: 41, column: 9, scope: !3546, inlinedAt: !3675)
!3678 = !DILocation(line: 42, column: 8, scope: !3557, inlinedAt: !3675)
!3679 = !DILocation(line: 42, column: 15, scope: !3557, inlinedAt: !3675)
!3680 = !DILocation(line: 42, column: 10, scope: !3557, inlinedAt: !3675)
!3681 = !DILocation(line: 43, column: 5, scope: !3557, inlinedAt: !3675)
!3682 = !DILocation(line: 218, column: 3, scope: !3670)
!3683 = distinct !DISubprogram(name: "x2realloc", scope: !3547, file: !3547, line: 74, type: !3684, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!24, !24, !82}
!3686 = !{!3687, !3688}
!3687 = !DILocalVariable(name: "p", arg: 1, scope: !3683, file: !3547, line: 74, type: !24)
!3688 = !DILocalVariable(name: "pn", arg: 2, scope: !3683, file: !3547, line: 74, type: !82)
!3689 = !DILocation(line: 74, column: 18, scope: !3683)
!3690 = !DILocation(line: 74, column: 29, scope: !3683)
!3691 = !DILocation(line: 174, column: 19, scope: !295, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 76, column: 10, scope: !3683)
!3693 = !DILocation(line: 174, column: 30, scope: !295, inlinedAt: !3692)
!3694 = !DILocation(line: 174, column: 41, scope: !295, inlinedAt: !3692)
!3695 = !DILocation(line: 176, column: 14, scope: !295, inlinedAt: !3692)
!3696 = !DILocation(line: 176, column: 10, scope: !295, inlinedAt: !3692)
!3697 = !DILocation(line: 178, column: 9, scope: !3629, inlinedAt: !3692)
!3698 = !DILocation(line: 178, column: 7, scope: !295, inlinedAt: !3692)
!3699 = !DILocation(line: 180, column: 13, scope: !3632, inlinedAt: !3692)
!3700 = !DILocation(line: 180, column: 11, scope: !3633, inlinedAt: !3692)
!3701 = !DILocation(line: 191, column: 11, scope: !3642, inlinedAt: !3692)
!3702 = !DILocation(line: 191, column: 11, scope: !3633, inlinedAt: !3692)
!3703 = !DILocation(line: 206, column: 7, scope: !295, inlinedAt: !3692)
!3704 = !DILocation(line: 51, column: 17, scope: !3586, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 207, column: 10, scope: !295, inlinedAt: !3692)
!3706 = !DILocation(line: 51, column: 27, scope: !3586, inlinedAt: !3705)
!3707 = !DILocation(line: 53, column: 10, scope: !3595, inlinedAt: !3705)
!3708 = !DILocation(line: 192, column: 9, scope: !3642, inlinedAt: !3692)
!3709 = !DILocation(line: 201, column: 11, scope: !3652, inlinedAt: !3692)
!3710 = !DILocation(line: 200, column: 11, scope: !3653, inlinedAt: !3692)
!3711 = !DILocation(line: 202, column: 9, scope: !3652, inlinedAt: !3692)
!3712 = !DILocation(line: 203, column: 14, scope: !3653, inlinedAt: !3692)
!3713 = !DILocation(line: 203, column: 18, scope: !3653, inlinedAt: !3692)
!3714 = !DILocation(line: 203, column: 9, scope: !3653, inlinedAt: !3692)
!3715 = !DILocation(line: 53, column: 8, scope: !3595, inlinedAt: !3705)
!3716 = !DILocation(line: 57, column: 7, scope: !3599, inlinedAt: !3705)
!3717 = !DILocation(line: 58, column: 7, scope: !3599, inlinedAt: !3705)
!3718 = !DILocation(line: 61, column: 7, scope: !3586, inlinedAt: !3705)
!3719 = !DILocation(line: 62, column: 8, scope: !3603, inlinedAt: !3705)
!3720 = !DILocation(line: 62, column: 13, scope: !3603, inlinedAt: !3705)
!3721 = !DILocation(line: 62, column: 10, scope: !3603, inlinedAt: !3705)
!3722 = !DILocation(line: 63, column: 5, scope: !3603, inlinedAt: !3705)
!3723 = !DILocation(line: 0, scope: !3586, inlinedAt: !3705)
!3724 = !DILocation(line: 76, column: 3, scope: !3683)
!3725 = distinct !DISubprogram(name: "xzalloc", scope: !3547, file: !3547, line: 84, type: !3548, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3726)
!3726 = !{!3727}
!3727 = !DILocalVariable(name: "s", arg: 1, scope: !3725, file: !3547, line: 84, type: !83)
!3728 = !DILocation(line: 84, column: 17, scope: !3725)
!3729 = !DILocation(line: 39, column: 17, scope: !3546, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 86, column: 18, scope: !3725)
!3731 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3730)
!3732 = !DILocation(line: 41, column: 9, scope: !3546, inlinedAt: !3730)
!3733 = !DILocation(line: 42, column: 8, scope: !3557, inlinedAt: !3730)
!3734 = !DILocation(line: 42, column: 15, scope: !3557, inlinedAt: !3730)
!3735 = !DILocation(line: 42, column: 10, scope: !3557, inlinedAt: !3730)
!3736 = !DILocation(line: 43, column: 5, scope: !3557, inlinedAt: !3730)
!3737 = !DILocation(line: 86, column: 10, scope: !3725)
!3738 = !DILocation(line: 86, column: 3, scope: !3725)
!3739 = distinct !DISubprogram(name: "xcalloc", scope: !3547, file: !3547, line: 93, type: !3533, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3740)
!3740 = !{!3741, !3742, !3743}
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3739, file: !3547, line: 93, type: !83)
!3742 = !DILocalVariable(name: "s", arg: 2, scope: !3739, file: !3547, line: 93, type: !83)
!3743 = !DILocalVariable(name: "p", scope: !3739, file: !3547, line: 95, type: !24)
!3744 = !DILocation(line: 93, column: 17, scope: !3739)
!3745 = !DILocation(line: 93, column: 27, scope: !3739)
!3746 = !DILocation(line: 100, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3739, file: !3547, line: 100, column: 7)
!3748 = !DILocation(line: 101, column: 7, scope: !3747)
!3749 = !DILocation(line: 101, column: 18, scope: !3747)
!3750 = !DILocation(line: 95, column: 9, scope: !3739)
!3751 = !DILocation(line: 101, column: 16, scope: !3747)
!3752 = !DILocation(line: 100, column: 7, scope: !3739)
!3753 = !DILocation(line: 102, column: 5, scope: !3747)
!3754 = !DILocation(line: 103, column: 3, scope: !3739)
!3755 = distinct !DISubprogram(name: "xmemdup", scope: !3547, file: !3547, line: 111, type: !3756, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3760)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!24, !3758, !83}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "p", arg: 1, scope: !3755, file: !3547, line: 111, type: !3758)
!3762 = !DILocalVariable(name: "s", arg: 2, scope: !3755, file: !3547, line: 111, type: !83)
!3763 = !DILocation(line: 111, column: 22, scope: !3755)
!3764 = !DILocation(line: 111, column: 32, scope: !3755)
!3765 = !DILocation(line: 39, column: 17, scope: !3546, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 113, column: 18, scope: !3755)
!3767 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3766)
!3768 = !DILocation(line: 41, column: 9, scope: !3546, inlinedAt: !3766)
!3769 = !DILocation(line: 42, column: 8, scope: !3557, inlinedAt: !3766)
!3770 = !DILocation(line: 42, column: 15, scope: !3557, inlinedAt: !3766)
!3771 = !DILocation(line: 42, column: 10, scope: !3557, inlinedAt: !3766)
!3772 = !DILocation(line: 43, column: 5, scope: !3557, inlinedAt: !3766)
!3773 = !DILocation(line: 113, column: 10, scope: !3755)
!3774 = !DILocation(line: 113, column: 3, scope: !3755)
!3775 = distinct !DISubprogram(name: "xstrdup", scope: !3547, file: !3547, line: 119, type: !2847, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3776)
!3776 = !{!3777}
!3777 = !DILocalVariable(name: "string", arg: 1, scope: !3775, file: !3547, line: 119, type: !38)
!3778 = !DILocation(line: 119, column: 22, scope: !3775)
!3779 = !DILocation(line: 121, column: 27, scope: !3775)
!3780 = !DILocation(line: 121, column: 43, scope: !3775)
!3781 = !DILocation(line: 111, column: 22, scope: !3755, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 121, column: 10, scope: !3775)
!3783 = !DILocation(line: 111, column: 32, scope: !3755, inlinedAt: !3782)
!3784 = !DILocation(line: 39, column: 17, scope: !3546, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 113, column: 18, scope: !3755, inlinedAt: !3782)
!3786 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3785)
!3787 = !DILocation(line: 41, column: 9, scope: !3546, inlinedAt: !3785)
!3788 = !DILocation(line: 42, column: 8, scope: !3557, inlinedAt: !3785)
!3789 = !DILocation(line: 42, column: 15, scope: !3557, inlinedAt: !3785)
!3790 = !DILocation(line: 42, column: 10, scope: !3557, inlinedAt: !3785)
!3791 = !DILocation(line: 43, column: 5, scope: !3557, inlinedAt: !3785)
!3792 = !DILocation(line: 113, column: 10, scope: !3755, inlinedAt: !3782)
!3793 = !DILocation(line: 121, column: 3, scope: !3775)
!3794 = distinct !DISubprogram(name: "xalloc_die", scope: !3795, file: !3795, line: 32, type: !757, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !302, retainedNodes: !194)
!3795 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3796 = !DILocation(line: 34, column: 10, scope: !3794)
!3797 = !DILocation(line: 34, column: 33, scope: !3794)
!3798 = !DILocation(line: 34, column: 3, scope: !3794)
!3799 = !DILocation(line: 40, column: 3, scope: !3794)
!3800 = distinct !DISubprogram(name: "xstrndup", scope: !3801, file: !3801, line: 30, type: !2858, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !304, retainedNodes: !3802)
!3801 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3802 = !{!3803, !3804, !3805}
!3803 = !DILocalVariable(name: "string", arg: 1, scope: !3800, file: !3801, line: 30, type: !38)
!3804 = !DILocalVariable(name: "n", arg: 2, scope: !3800, file: !3801, line: 30, type: !83)
!3805 = !DILocalVariable(name: "s", scope: !3800, file: !3801, line: 32, type: !22)
!3806 = !DILocation(line: 30, column: 23, scope: !3800)
!3807 = !DILocation(line: 30, column: 38, scope: !3800)
!3808 = !DILocation(line: 32, column: 13, scope: !3800)
!3809 = !DILocation(line: 32, column: 9, scope: !3800)
!3810 = !DILocation(line: 33, column: 9, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3800, file: !3801, line: 33, column: 7)
!3812 = !DILocation(line: 33, column: 7, scope: !3800)
!3813 = !DILocation(line: 34, column: 5, scope: !3811)
!3814 = !DILocation(line: 35, column: 3, scope: !3800)
!3815 = distinct !DISubprogram(name: "rpl_calloc", scope: !3816, file: !3816, line: 42, type: !3533, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !306, retainedNodes: !3817)
!3816 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3817 = !{!3818, !3819, !3820, !3821}
!3818 = !DILocalVariable(name: "n", arg: 1, scope: !3815, file: !3816, line: 42, type: !83)
!3819 = !DILocalVariable(name: "s", arg: 2, scope: !3815, file: !3816, line: 42, type: !83)
!3820 = !DILocalVariable(name: "result", scope: !3815, file: !3816, line: 44, type: !24)
!3821 = !DILocalVariable(name: "bytes", scope: !3822, file: !3816, line: 56, type: !83)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !3816, line: 53, column: 5)
!3823 = distinct !DILexicalBlock(scope: !3815, file: !3816, line: 47, column: 7)
!3824 = !DILocation(line: 42, column: 20, scope: !3815)
!3825 = !DILocation(line: 42, column: 30, scope: !3815)
!3826 = !DILocation(line: 47, column: 9, scope: !3823)
!3827 = !DILocation(line: 47, column: 19, scope: !3823)
!3828 = !DILocation(line: 47, column: 14, scope: !3823)
!3829 = !DILocation(line: 56, column: 24, scope: !3822)
!3830 = !DILocation(line: 56, column: 14, scope: !3822)
!3831 = !DILocation(line: 57, column: 17, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3822, file: !3816, line: 57, column: 11)
!3833 = !DILocation(line: 57, column: 21, scope: !3832)
!3834 = !DILocation(line: 57, column: 11, scope: !3822)
!3835 = !DILocation(line: 59, column: 11, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3832, file: !3816, line: 58, column: 9)
!3837 = !DILocation(line: 59, column: 17, scope: !3836)
!3838 = !DILocation(line: 65, column: 12, scope: !3815)
!3839 = !DILocation(line: 44, column: 9, scope: !3815)
!3840 = !DILocation(line: 72, column: 3, scope: !3815)
!3841 = !DILocation(line: 0, scope: !3836)
!3842 = !DILocation(line: 73, column: 1, scope: !3815)
!3843 = distinct !DISubprogram(name: "rpl_fclose", scope: !3844, file: !3844, line: 58, type: !3845, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !308, retainedNodes: !3881)
!3844 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!25, !3847}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3849)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3850)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3849, file: !111, line: 51, baseType: !25, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3849, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3849, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3849, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3849, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3849, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3849, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3849, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3849, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3849, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3849, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3849, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3849, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3849, file: !111, line: 70, baseType: !3865, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3849, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3849, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3849, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3849, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3849, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3849, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3849, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3849, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3849, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3849, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3849, file: !111, line: 93, baseType: !3865, size: 64, offset: 1344)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3849, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3849, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3849, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3849, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3881 = !{!3882, !3883, !3884, !3885}
!3882 = !DILocalVariable(name: "fp", arg: 1, scope: !3843, file: !3844, line: 58, type: !3847)
!3883 = !DILocalVariable(name: "saved_errno", scope: !3843, file: !3844, line: 60, type: !25)
!3884 = !DILocalVariable(name: "fd", scope: !3843, file: !3844, line: 61, type: !25)
!3885 = !DILocalVariable(name: "result", scope: !3843, file: !3844, line: 62, type: !25)
!3886 = !DILocation(line: 58, column: 19, scope: !3843)
!3887 = !DILocation(line: 60, column: 7, scope: !3843)
!3888 = !DILocation(line: 62, column: 7, scope: !3843)
!3889 = !DILocation(line: 65, column: 8, scope: !3843)
!3890 = !DILocation(line: 61, column: 7, scope: !3843)
!3891 = !DILocation(line: 66, column: 10, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3843, file: !3844, line: 66, column: 7)
!3893 = !DILocation(line: 66, column: 7, scope: !3843)
!3894 = !DILocation(line: 67, column: 12, scope: !3892)
!3895 = !DILocation(line: 67, column: 5, scope: !3892)
!3896 = !DILocation(line: 72, column: 9, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3843, file: !3844, line: 72, column: 7)
!3898 = !DILocation(line: 72, column: 23, scope: !3897)
!3899 = !DILocation(line: 72, column: 33, scope: !3897)
!3900 = !DILocation(line: 72, column: 26, scope: !3897)
!3901 = !DILocation(line: 72, column: 59, scope: !3897)
!3902 = !DILocation(line: 73, column: 7, scope: !3897)
!3903 = !DILocation(line: 73, column: 10, scope: !3897)
!3904 = !DILocation(line: 72, column: 7, scope: !3843)
!3905 = !DILocation(line: 100, column: 12, scope: !3843)
!3906 = !DILocation(line: 105, column: 7, scope: !3843)
!3907 = !DILocation(line: 74, column: 19, scope: !3897)
!3908 = !DILocation(line: 105, column: 19, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3843, file: !3844, line: 105, column: 7)
!3910 = !DILocation(line: 107, column: 13, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3909, file: !3844, line: 106, column: 5)
!3912 = !DILocation(line: 109, column: 5, scope: !3911)
!3913 = !DILocation(line: 0, scope: !3843)
!3914 = !DILocation(line: 112, column: 1, scope: !3843)
!3915 = distinct !DISubprogram(name: "rpl_fflush", scope: !3916, file: !3916, line: 129, type: !3917, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !310, retainedNodes: !3953)
!3916 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!25, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3921)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3922)
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3921, file: !111, line: 51, baseType: !25, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3921, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3921, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3921, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3921, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3921, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3921, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3921, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3921, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3921, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3921, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3921, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3921, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3921, file: !111, line: 70, baseType: !3937, size: 64, offset: 832)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3921, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3921, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3921, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3921, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3921, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3921, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3921, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3921, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3921, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3921, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3921, file: !111, line: 93, baseType: !3937, size: 64, offset: 1344)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3921, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3921, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3921, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3921, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3953 = !{!3954}
!3954 = !DILocalVariable(name: "stream", arg: 1, scope: !3915, file: !3916, line: 129, type: !3919)
!3955 = !DILocation(line: 129, column: 19, scope: !3915)
!3956 = !DILocation(line: 150, column: 14, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3915, file: !3916, line: 150, column: 7)
!3958 = !DILocation(line: 150, column: 22, scope: !3957)
!3959 = !DILocation(line: 150, column: 27, scope: !3957)
!3960 = !DILocation(line: 150, column: 7, scope: !3915)
!3961 = !DILocation(line: 151, column: 12, scope: !3957)
!3962 = !DILocation(line: 151, column: 5, scope: !3957)
!3963 = !DILocalVariable(name: "fp", arg: 1, scope: !3964, file: !3916, line: 41, type: !3919)
!3964 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3916, file: !3916, line: 41, type: !3965, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !310, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3919}
!3967 = !{!3963}
!3968 = !DILocation(line: 41, column: 48, scope: !3964, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 156, column: 3, scope: !3915)
!3970 = !DILocation(line: 43, column: 11, scope: !3971, inlinedAt: !3969)
!3971 = distinct !DILexicalBlock(scope: !3964, file: !3916, line: 43, column: 7)
!3972 = !DILocation(line: 43, column: 18, scope: !3971, inlinedAt: !3969)
!3973 = !DILocation(line: 43, column: 7, scope: !3964, inlinedAt: !3969)
!3974 = !DILocation(line: 45, column: 5, scope: !3971, inlinedAt: !3969)
!3975 = !DILocation(line: 158, column: 10, scope: !3915)
!3976 = !DILocation(line: 158, column: 3, scope: !3915)
!3977 = !DILocation(line: 0, scope: !3915)
!3978 = !DILocation(line: 232, column: 1, scope: !3915)
!3979 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3980, file: !3980, line: 28, type: !3981, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !312, retainedNodes: !4017)
!3980 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!25, !3983, !1511, !25}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3985)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3985, file: !111, line: 51, baseType: !25, size: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3985, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3985, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3985, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3985, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3985, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3985, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3985, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3985, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3985, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3985, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3985, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3985, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3985, file: !111, line: 70, baseType: !4001, size: 64, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3985, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3985, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3985, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3985, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3985, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3985, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3985, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3985, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3985, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3985, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3985, file: !111, line: 93, baseType: !4001, size: 64, offset: 1344)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3985, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3985, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3985, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3985, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!4017 = !{!4018, !4019, !4020, !4021}
!4018 = !DILocalVariable(name: "fp", arg: 1, scope: !3979, file: !3980, line: 28, type: !3983)
!4019 = !DILocalVariable(name: "offset", arg: 2, scope: !3979, file: !3980, line: 28, type: !1511)
!4020 = !DILocalVariable(name: "whence", arg: 3, scope: !3979, file: !3980, line: 28, type: !25)
!4021 = !DILocalVariable(name: "pos", scope: !4022, file: !3980, line: 117, type: !1511)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !3980, line: 113, column: 5)
!4023 = distinct !DILexicalBlock(scope: !3979, file: !3980, line: 52, column: 7)
!4024 = !DILocation(line: 28, column: 15, scope: !3979)
!4025 = !DILocation(line: 28, column: 25, scope: !3979)
!4026 = !DILocation(line: 28, column: 37, scope: !3979)
!4027 = !DILocation(line: 52, column: 11, scope: !4023)
!4028 = !DILocation(line: 52, column: 31, scope: !4023)
!4029 = !DILocation(line: 52, column: 24, scope: !4023)
!4030 = !DILocation(line: 53, column: 7, scope: !4023)
!4031 = !DILocation(line: 53, column: 14, scope: !4023)
!4032 = !DILocation(line: 53, column: 35, scope: !4023)
!4033 = !{!935, !750, i64 32}
!4034 = !DILocation(line: 53, column: 28, scope: !4023)
!4035 = !DILocation(line: 54, column: 7, scope: !4023)
!4036 = !DILocation(line: 54, column: 14, scope: !4023)
!4037 = !{!935, !750, i64 72}
!4038 = !DILocation(line: 54, column: 28, scope: !4023)
!4039 = !DILocation(line: 52, column: 7, scope: !3979)
!4040 = !DILocation(line: 117, column: 26, scope: !4022)
!4041 = !DILocation(line: 117, column: 19, scope: !4022)
!4042 = !DILocation(line: 117, column: 13, scope: !4022)
!4043 = !DILocation(line: 118, column: 15, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4022, file: !3980, line: 118, column: 11)
!4045 = !DILocation(line: 118, column: 11, scope: !4022)
!4046 = !DILocation(line: 129, column: 11, scope: !4022)
!4047 = !DILocation(line: 129, column: 18, scope: !4022)
!4048 = !DILocation(line: 130, column: 11, scope: !4022)
!4049 = !DILocation(line: 130, column: 19, scope: !4022)
!4050 = !{!935, !920, i64 144}
!4051 = !DILocation(line: 161, column: 7, scope: !4022)
!4052 = !DILocation(line: 163, column: 10, scope: !3979)
!4053 = !DILocation(line: 163, column: 3, scope: !3979)
!4054 = !DILocation(line: 0, scope: !3979)
!4055 = !DILocation(line: 164, column: 1, scope: !3979)
!4056 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4057, file: !4057, line: 385, type: !4058, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !4072)
!4057 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!83, !4060, !38, !83, !4061}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1808, line: 6, baseType: !4063)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1810, line: 21, baseType: !4064)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1810, line: 13, size: 64, elements: !4065)
!4065 = !{!4066, !4067}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4064, file: !1810, line: 15, baseType: !25, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4064, file: !1810, line: 20, baseType: !4068, size: 32, offset: 32)
!4068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !1810, line: 16, size: 32, elements: !4069)
!4069 = !{!4070, !4071}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4068, file: !1810, line: 18, baseType: !7, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4068, file: !1810, line: 19, baseType: !1819, size: 32)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079}
!4073 = !DILocalVariable(name: "pwc", arg: 1, scope: !4056, file: !4057, line: 385, type: !4060)
!4074 = !DILocalVariable(name: "s", arg: 2, scope: !4056, file: !4057, line: 385, type: !38)
!4075 = !DILocalVariable(name: "n", arg: 3, scope: !4056, file: !4057, line: 385, type: !83)
!4076 = !DILocalVariable(name: "ps", arg: 4, scope: !4056, file: !4057, line: 385, type: !4061)
!4077 = !DILocalVariable(name: "ret", scope: !4056, file: !4057, line: 387, type: !83)
!4078 = !DILocalVariable(name: "wc", scope: !4056, file: !4057, line: 388, type: !1824)
!4079 = !DILocalVariable(name: "uc", scope: !4080, file: !4057, line: 449, type: !28)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !4057, line: 448, column: 5)
!4081 = distinct !DILexicalBlock(scope: !4056, file: !4057, line: 447, column: 7)
!4082 = !DILocation(line: 385, column: 23, scope: !4056)
!4083 = !DILocation(line: 385, column: 40, scope: !4056)
!4084 = !DILocation(line: 385, column: 50, scope: !4056)
!4085 = !DILocation(line: 385, column: 64, scope: !4056)
!4086 = !DILocation(line: 388, column: 3, scope: !4056)
!4087 = !DILocation(line: 404, column: 9, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4056, file: !4057, line: 404, column: 7)
!4089 = !DILocation(line: 404, column: 7, scope: !4056)
!4090 = !DILocation(line: 439, column: 9, scope: !4056)
!4091 = !DILocation(line: 387, column: 10, scope: !4056)
!4092 = !DILocation(line: 447, column: 19, scope: !4081)
!4093 = !DILocation(line: 447, column: 31, scope: !4081)
!4094 = !DILocation(line: 447, column: 26, scope: !4081)
!4095 = !DILocation(line: 447, column: 41, scope: !4081)
!4096 = !DILocation(line: 447, column: 7, scope: !4056)
!4097 = !DILocation(line: 449, column: 26, scope: !4080)
!4098 = !DILocation(line: 449, column: 21, scope: !4080)
!4099 = !DILocation(line: 450, column: 14, scope: !4080)
!4100 = !DILocation(line: 450, column: 12, scope: !4080)
!4101 = !DILocation(line: 0, scope: !4080)
!4102 = !DILocation(line: 456, column: 1, scope: !4056)
!4103 = distinct !DISubprogram(name: "close_stream", scope: !4104, file: !4104, line: 56, type: !4105, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !317, retainedNodes: !4141)
!4104 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!25, !4107}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4109, file: !111, line: 51, baseType: !25, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4109, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4109, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4109, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4109, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4109, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4109, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4109, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4109, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4109, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4109, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4109, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4109, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4109, file: !111, line: 70, baseType: !4125, size: 64, offset: 832)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4109, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4109, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4109, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4109, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4109, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4109, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4109, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4109, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4109, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4109, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4109, file: !111, line: 93, baseType: !4125, size: 64, offset: 1344)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4109, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4109, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4109, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4109, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!4141 = !{!4142, !4143, !4145, !4146}
!4142 = !DILocalVariable(name: "stream", arg: 1, scope: !4103, file: !4104, line: 56, type: !4107)
!4143 = !DILocalVariable(name: "some_pending", scope: !4103, file: !4104, line: 58, type: !4144)
!4144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!4145 = !DILocalVariable(name: "prev_fail", scope: !4103, file: !4104, line: 59, type: !4144)
!4146 = !DILocalVariable(name: "fclose_fail", scope: !4103, file: !4104, line: 60, type: !4144)
!4147 = !DILocation(line: 56, column: 21, scope: !4103)
!4148 = !DILocation(line: 58, column: 30, scope: !4103)
!4149 = !DILocalVariable(name: "__stream", arg: 1, scope: !4150, file: !927, line: 135, type: !4107)
!4150 = distinct !DISubprogram(name: "ferror_unlocked", scope: !927, file: !927, line: 135, type: !4105, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !317, retainedNodes: !4151)
!4151 = !{!4149}
!4152 = !DILocation(line: 135, column: 1, scope: !4150, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 59, column: 27, scope: !4103)
!4154 = !DILocation(line: 137, column: 10, scope: !4150, inlinedAt: !4153)
!4155 = !DILocation(line: 59, column: 43, scope: !4103)
!4156 = !DILocation(line: 60, column: 29, scope: !4103)
!4157 = !DILocation(line: 60, column: 45, scope: !4103)
!4158 = !DILocation(line: 70, column: 17, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4103, file: !4104, line: 70, column: 7)
!4160 = !DILocation(line: 58, column: 50, scope: !4103)
!4161 = !DILocation(line: 70, column: 33, scope: !4159)
!4162 = !DILocation(line: 70, column: 53, scope: !4159)
!4163 = !DILocation(line: 70, column: 59, scope: !4159)
!4164 = !DILocation(line: 70, column: 7, scope: !4103)
!4165 = !DILocation(line: 72, column: 11, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4159, file: !4104, line: 71, column: 5)
!4167 = !DILocation(line: 73, column: 9, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4166, file: !4104, line: 72, column: 11)
!4169 = !DILocation(line: 73, column: 15, scope: !4168)
!4170 = !DILocation(line: 0, scope: !4103)
!4171 = !DILocation(line: 78, column: 1, scope: !4103)
!4172 = distinct !DISubprogram(name: "hard_locale", scope: !4173, file: !4173, line: 38, type: !4174, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !319, retainedNodes: !4176)
!4173 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!180, !25}
!4176 = !{!4177, !4178, !4179}
!4177 = !DILocalVariable(name: "category", arg: 1, scope: !4172, file: !4173, line: 38, type: !25)
!4178 = !DILocalVariable(name: "hard", scope: !4172, file: !4173, line: 40, type: !180)
!4179 = !DILocalVariable(name: "p", scope: !4172, file: !4173, line: 41, type: !38)
!4180 = !DILocation(line: 38, column: 18, scope: !4172)
!4181 = !DILocation(line: 40, column: 8, scope: !4172)
!4182 = !DILocation(line: 41, column: 19, scope: !4172)
!4183 = !DILocation(line: 41, column: 15, scope: !4172)
!4184 = !DILocation(line: 43, column: 7, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4172, file: !4173, line: 43, column: 7)
!4186 = !DILocation(line: 43, column: 7, scope: !4172)
!4187 = !DILocation(line: 47, column: 15, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !4173, line: 47, column: 15)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !4173, line: 46, column: 9)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !4173, line: 45, column: 11)
!4191 = distinct !DILexicalBlock(scope: !4185, file: !4173, line: 44, column: 5)
!4192 = !DILocation(line: 47, column: 31, scope: !4188)
!4193 = !DILocation(line: 47, column: 36, scope: !4188)
!4194 = !DILocation(line: 47, column: 39, scope: !4188)
!4195 = !DILocation(line: 47, column: 59, scope: !4188)
!4196 = !DILocation(line: 47, column: 15, scope: !4189)
!4197 = !DILocation(line: 48, column: 13, scope: !4188)
!4198 = !DILocation(line: 71, column: 3, scope: !4172)
!4199 = distinct !DISubprogram(name: "locale_charset", scope: !4200, file: !4200, line: 687, type: !4201, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !321, retainedNodes: !4203)
!4200 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!38}
!4203 = !{!4204}
!4204 = !DILocalVariable(name: "codeset", scope: !4199, file: !4200, line: 689, type: !38)
!4205 = !DILocation(line: 696, column: 13, scope: !4199)
!4206 = !DILocation(line: 689, column: 15, scope: !4199)
!4207 = !DILocation(line: 754, column: 15, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4199, file: !4200, line: 754, column: 7)
!4209 = !DILocation(line: 754, column: 7, scope: !4199)
!4210 = !DILocation(line: 907, column: 13, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !4200, line: 907, column: 13)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !4200, line: 897, column: 7)
!4213 = distinct !DILexicalBlock(scope: !4199, file: !4200, line: 856, column: 3)
!4214 = !DILocation(line: 907, column: 24, scope: !4211)
!4215 = !DILocation(line: 907, column: 13, scope: !4212)
!4216 = !DILocation(line: 995, column: 3, scope: !4199)
