; ModuleID = 'coreutils-8.30/src/unexpand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert blanks in each FILE to tabs, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [221 x i8] c"  -a, --all        convert all blanks, instead of just initial blanks\0A      --first-only  convert only leading sequences of blanks (overrides -a)\0A  -t, --tabs=N     have tabs N characters apart instead of 8 (enables -a)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"unexpand\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c",0123456789at:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"first-only\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !50
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !95
@max_column_width = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !159
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !161
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !163
@n_tabs_allocated = internal unnamed_addr global i64 0, align 8, !dbg !165
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !167
@.str.13.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !169
@.str.14.12 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.1.13 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.14 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.3.15 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4.16 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.5.17 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.15.20 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.16.21 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.17.22 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !171
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !184
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i32 0, i32 0), i8* null], align 16, !dbg !176
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !181
@.str.9.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !97
@.str.6.30 = private unnamed_addr constant [10 x i8] c"prev_file\00", align 1
@.str.7.31 = private unnamed_addr constant [20 x i8] c"src/expand-common.c\00", align 1
@__PRETTY_FUNCTION__.next_file = private unnamed_addr constant [24 x i8] c"FILE *next_file(FILE *)\00", align 1
@.str.8.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10.33 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.38 = private unnamed_addr constant [62 x i8] c"  -t, --tabs=LIST  use comma separated list of tab positions\0A\00", align 1
@.str.12.39 = private unnamed_addr constant [365 x i8] c"                     The last specified position can be prefixed with '/'\0A                     to specify a tab size to use after the last\0A                     explicitly specified tab stop.  Also a prefix of '+'\0A                     can be used to align remaining tab stops relative to\0A                     the last specified tab stop instead of the first column\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), align 8, !dbg !185
@.str.42 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !191
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !196
@.str.45 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !199
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !206
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !213
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !225
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !232
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !244
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !251
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !258
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !246
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !260
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.85 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.86 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.88 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.89 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.98 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.102 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.103 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !266
@.str.1.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !711 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !716, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32 %0, metadata !715, metadata !DIExpression()), !dbg !739
  %3 = icmp eq i32 %0, 0, !dbg !740
  br i1 %3, label %9, label %4, !dbg !741

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !742, !tbaa !744
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !742
  %7 = load i8*, i8** @program_name, align 8, !dbg !742, !tbaa !744
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !742
  br label %66, !dbg !742

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !748
  %11 = load i8*, i8** @program_name, align 8, !dbg !748, !tbaa !744
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !748
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !749
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !744
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !749
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !750
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !744
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !750
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !755
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !744
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #10, !dbg !755
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !758
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !744
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !758
  tail call void @emit_tab_list_info() #10, !dbg !759
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !760
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !760, !tbaa !744
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !760
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !761
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !744
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !761
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !762
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #10, !dbg !762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !735
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !763
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !724, metadata !DIExpression()) #10, !dbg !764
  br label %33, !dbg !765

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !724, metadata !DIExpression()) #10, !dbg !764
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #14, !dbg !765
  %37 = icmp eq i32 %36, 0, !dbg !765
  br i1 %37, label %43, label %38, !dbg !766

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !767
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !724, metadata !DIExpression()) #10, !dbg !764
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !768
  %41 = load i8*, i8** %40, align 8, !dbg !768, !tbaa !769
  %42 = icmp eq i8* %41, null, !dbg !771
  br i1 %42, label %43, label %33, !dbg !772, !llvm.loop !773

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !724, metadata !DIExpression()) #10, !dbg !764
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !724, metadata !DIExpression()) #10, !dbg !764
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !776
  %46 = load i8*, i8** %45, align 8, !dbg !776, !tbaa !778
  %47 = icmp eq i8* %46, null, !dbg !779
  %48 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !780
  call void @llvm.dbg.value(metadata i8* %48, metadata !723, metadata !DIExpression()) #10, !dbg !781
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !782
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !782
  %51 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !783
  call void @llvm.dbg.value(metadata i8* %51, metadata !731, metadata !DIExpression()) #10, !dbg !784
  %52 = icmp eq i8* %51, null, !dbg !785
  br i1 %52, label %59, label %53, !dbg !787

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !788
  %55 = icmp eq i32 %54, 0, !dbg !788
  br i1 %55, label %59, label %56, !dbg !789

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !790
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !790
  br label %59, !dbg !792

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !793
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !793
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !794
  %63 = icmp eq i8* %48, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), !dbg !794
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !794
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #10, !dbg !794
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #10, !dbg !795
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #15, !dbg !796
  unreachable, !dbg !796
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !797 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !801, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8** %1, metadata !802, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i8 0, metadata !803, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8 0, metadata !806, metadata !DIExpression()), !dbg !810
  %5 = load i8*, i8** %1, align 8, !dbg !811, !tbaa !744
  tail call void @set_program_name(i8* %5) #10, !dbg !812
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !813
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !814
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !815
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !816
  br label %10, !dbg !817

; <label>:10:                                     ; preds = %40, %2
  %11 = phi i64 [ %45, %40 ], [ undef, %2 ]
  %12 = phi i8 [ %41, %40 ], [ 0, %2 ]
  %13 = phi i8 [ %18, %40 ], [ 0, %2 ]
  br label %14, !dbg !818

; <label>:14:                                     ; preds = %29, %10
  %15 = phi i8 [ %12, %10 ], [ 0, %29 ]
  %16 = phi i8 [ %13, %10 ], [ %18, %29 ]
  br label %17, !dbg !818

; <label>:17:                                     ; preds = %19, %14
  %18 = phi i8 [ %16, %14 ], [ 1, %19 ]
  br label %19, !dbg !818

; <label>:19:                                     ; preds = %25, %17
  call void @llvm.dbg.value(metadata i64 %11, metadata !804, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8 %18, metadata !806, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i8 %15, metadata !803, metadata !DIExpression()), !dbg !809
  %20 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !818
  call void @llvm.dbg.value(metadata i32 %20, metadata !805, metadata !DIExpression()), !dbg !820
  switch i32 %20, label %35 [
    i32 -1, label %49
    i32 63, label %21
    i32 97, label %22
    i32 116, label %23
    i32 128, label %17
    i32 44, label %26
    i32 -130, label %31
    i32 -131, label %32
  ], !dbg !817, !llvm.loop !821

; <label>:21:                                     ; preds = %19
  tail call void @usage(i32 1) #16, !dbg !823
  unreachable, !dbg !823

; <label>:22:                                     ; preds = %19
  store i8 1, i8* @convert_entire_line, align 1, !dbg !826, !tbaa !827
  br label %25, !dbg !829

; <label>:23:                                     ; preds = %19
  store i8 1, i8* @convert_entire_line, align 1, !dbg !830, !tbaa !827
  %24 = load i8*, i8** @optarg, align 8, !dbg !831, !tbaa !744
  tail call void @parse_tab_stops(i8* %24) #10, !dbg !832
  br label %25, !dbg !833

; <label>:25:                                     ; preds = %23, %22
  br label %19, !dbg !819, !llvm.loop !821

; <label>:26:                                     ; preds = %19
  %27 = and i8 %15, 1, !dbg !834
  %28 = icmp eq i8 %27, 0, !dbg !834
  br i1 %28, label %29, label %30, !dbg !836

; <label>:29:                                     ; preds = %26, %30
  br label %14, !dbg !818, !llvm.loop !821

; <label>:30:                                     ; preds = %26
  tail call void @add_tab_stop(i64 %11) #10, !dbg !837
  br label %29, !dbg !837

; <label>:31:                                     ; preds = %19
  tail call void @usage(i32 0) #16, !dbg !838
  unreachable, !dbg !838

; <label>:32:                                     ; preds = %19
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !839, !tbaa !744
  %34 = load i8*, i8** @Version, align 8, !dbg !839, !tbaa !744
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !839
  tail call void @exit(i32 0) #15, !dbg !839
  unreachable, !dbg !839

; <label>:35:                                     ; preds = %19
  %36 = and i8 %15, 1, !dbg !840
  %37 = icmp eq i8 %36, 0, !dbg !840
  %38 = select i1 %37, i64 0, i64 %11, !dbg !842
  call void @llvm.dbg.value(metadata i64 %38, metadata !804, metadata !DIExpression()), !dbg !819
  %39 = icmp ugt i64 %38, 1844674407370955161, !dbg !843
  br i1 %39, label %47, label %40, !dbg !843

; <label>:40:                                     ; preds = %35
  %41 = select i1 %37, i8 1, i8 %15, !dbg !842
  call void @llvm.dbg.value(metadata i8 %41, metadata !803, metadata !DIExpression()), !dbg !809
  %42 = mul i64 %38, 10, !dbg !843
  %43 = add nsw i32 %20, -48, !dbg !843
  %44 = sext i32 %43 to i64, !dbg !843
  %45 = add i64 %42, %44, !dbg !843
  %46 = icmp ult i64 %45, %38, !dbg !843
  br i1 %46, label %47, label %10, !dbg !845, !llvm.loop !821

; <label>:47:                                     ; preds = %40, %35
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !846
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #10, !dbg !846
  unreachable, !dbg !846

; <label>:49:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i64 %11, metadata !804, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8 %15, metadata !803, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8 %18, metadata !806, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %11, metadata !804, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8 %15, metadata !803, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8 %18, metadata !806, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %11, metadata !804, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8 %15, metadata !803, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8 %18, metadata !806, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %11, metadata !804, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8 %15, metadata !803, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8 %18, metadata !806, metadata !DIExpression()), !dbg !810
  %50 = icmp eq i8 %18, 0, !dbg !847
  br i1 %50, label %52, label %51, !dbg !849

; <label>:51:                                     ; preds = %49
  store i8 0, i8* @convert_entire_line, align 1, !dbg !850, !tbaa !827
  br label %52, !dbg !851

; <label>:52:                                     ; preds = %49, %51
  %53 = and i8 %15, 1, !dbg !852
  %54 = icmp eq i8 %53, 0, !dbg !852
  br i1 %54, label %56, label %55, !dbg !854

; <label>:55:                                     ; preds = %52
  tail call void @add_tab_stop(i64 %11) #10, !dbg !855
  br label %56, !dbg !855

; <label>:56:                                     ; preds = %52, %55
  tail call void @finalize_tab_stops() #10, !dbg !856
  %57 = load i32, i32* @optind, align 4, !dbg !857, !tbaa !858
  %58 = icmp slt i32 %57, %0, !dbg !860
  %59 = sext i32 %57 to i64, !dbg !861
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !861
  %61 = select i1 %58, i8** %60, i8** null, !dbg !862
  tail call void @set_file_list(i8** %61) #10, !dbg !863
  %62 = tail call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #10, !dbg !864
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !867, metadata !DIExpression()) #10, !dbg !920
  %63 = icmp eq %struct._IO_FILE* %62, null, !dbg !921
  br i1 %63, label %220, label %64, !dbg !923

; <label>:64:                                     ; preds = %56
  %65 = load i64, i64* @max_column_width, align 8, !dbg !924, !tbaa !925
  %66 = tail call noalias i8* @xmalloc(i64 %65) #10, !dbg !927
  call void @llvm.dbg.value(metadata i8* %66, metadata !902, metadata !DIExpression()) #10, !dbg !928
  %67 = bitcast i64* %3 to i8*
  br label %68, !dbg !929

; <label>:68:                                     ; preds = %219, %64
  %69 = phi %struct._IO_FILE* [ %62, %64 ], [ %97, %219 ], !dbg !930
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata i8 1, metadata !905, metadata !DIExpression()) #10, !dbg !931
  call void @llvm.dbg.value(metadata i64 0, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i64 0, metadata !907, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #10, !dbg !934
  call void @llvm.dbg.value(metadata i64 0, metadata !908, metadata !DIExpression()) #10, !dbg !935
  store i64 0, i64* %3, align 8, !dbg !935, !tbaa !925
  call void @llvm.dbg.value(metadata i8 0, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i8 1, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i64 0, metadata !911, metadata !DIExpression()) #10, !dbg !938
  br label %70, !dbg !939

; <label>:70:                                     ; preds = %211, %68
  %71 = phi i8 [ 1, %68 ], [ %213, %211 ], !dbg !940
  %72 = phi i64 [ 0, %68 ], [ %214, %211 ], !dbg !941
  %73 = phi i8 [ 0, %68 ], [ %215, %211 ], !dbg !946
  %74 = phi i8 [ 1, %68 ], [ %216, %211 ], !dbg !940
  %75 = phi i64 [ 0, %68 ], [ %217, %211 ], !dbg !946
  %76 = phi %struct._IO_FILE* [ %69, %68 ], [ %97, %211 ], !dbg !930
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata i64 %75, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 %74, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8 %73, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 %72, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i8 %71, metadata !905, metadata !DIExpression()) #10, !dbg !931
  br label %77, !dbg !949

; <label>:77:                                     ; preds = %92, %70
  %78 = phi %struct._IO_FILE* [ %76, %70 ], [ %93, %92 ], !dbg !930
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !950, metadata !DIExpression()) #10, !dbg !956
  %79 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 1, !dbg !958
  %80 = load i8*, i8** %79, align 8, !dbg !958, !tbaa !959
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 2, !dbg !958
  %82 = load i8*, i8** %81, align 8, !dbg !958, !tbaa !962
  %83 = icmp ult i8* %80, %82, !dbg !958
  br i1 %83, label %84, label %89, !dbg !958, !prof !963

; <label>:84:                                     ; preds = %77
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 1, !dbg !958
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !867, metadata !DIExpression()) #10, !dbg !920
  %86 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !958
  store i8* %86, i8** %85, align 8, !dbg !958, !tbaa !959
  %87 = load i8, i8* %80, align 1, !dbg !958, !tbaa !964
  %88 = zext i8 %87 to i32, !dbg !958
  call void @llvm.dbg.value(metadata i32 %90, metadata !903, metadata !DIExpression()) #10, !dbg !965
  br label %95, !dbg !966

; <label>:89:                                     ; preds = %77
  %90 = call i32 @__uflow(%struct._IO_FILE* nonnull %78) #10, !dbg !958
  call void @llvm.dbg.value(metadata i32 %90, metadata !903, metadata !DIExpression()) #10, !dbg !965
  %91 = icmp slt i32 %90, 0, !dbg !967
  br i1 %91, label %92, label %95, !dbg !966

; <label>:92:                                     ; preds = %89
  %93 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %78) #10, !dbg !968
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %93, metadata !867, metadata !DIExpression()) #10, !dbg !920
  %94 = icmp eq %struct._IO_FILE* %93, null, !dbg !966
  br i1 %94, label %95, label %77, !dbg !949, !llvm.loop !969

; <label>:95:                                     ; preds = %92, %89, %84
  %96 = phi i32 [ %88, %84 ], [ %90, %89 ], [ %90, %92 ]
  %97 = phi %struct._IO_FILE* [ %78, %84 ], [ null, %92 ], [ %78, %89 ], !dbg !972
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  %98 = and i8 %71, 1, !dbg !973
  %99 = icmp eq i8 %98, 0, !dbg !973
  br i1 %99, label %184, label %100, !dbg !974

; <label>:100:                                    ; preds = %95
  %101 = tail call i16** @__ctype_b_loc() #17, !dbg !975
  %102 = load i16*, i16** %101, align 8, !dbg !975, !tbaa !744
  %103 = sext i32 %96 to i64, !dbg !975
  %104 = getelementptr inbounds i16, i16* %102, i64 %103, !dbg !975
  %105 = load i16, i16* %104, align 2, !dbg !975, !tbaa !976
  %106 = and i16 %105, 1, !dbg !975
  %107 = icmp ne i16 %106, 0, !dbg !977
  %108 = trunc i16 %106 to i8, !dbg !978
  call void @llvm.dbg.value(metadata i8 %108, metadata !912, metadata !DIExpression()) #10, !dbg !978
  br i1 %107, label %109, label %140, !dbg !979

; <label>:109:                                    ; preds = %100
  call void @llvm.dbg.value(metadata i8* %4, metadata !916, metadata !DIExpression(DW_OP_deref)) #10, !dbg !980
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #10, !dbg !981
  call void @llvm.dbg.value(metadata i64* %3, metadata !908, metadata !DIExpression(DW_OP_deref)) #10, !dbg !935
  call void @llvm.dbg.value(metadata i8* %4, metadata !916, metadata !DIExpression(DW_OP_deref)) #10, !dbg !980
  %110 = call i64 @get_next_tab_column(i64 %72, i64* nonnull %3, i8* nonnull %4) #10, !dbg !982
  call void @llvm.dbg.value(metadata i64 %110, metadata !907, metadata !DIExpression()) #10, !dbg !933
  %111 = load i8, i8* %4, align 1, !dbg !983, !tbaa !827, !range !985
  call void @llvm.dbg.value(metadata i8 %111, metadata !916, metadata !DIExpression()) #10, !dbg !980
  %112 = icmp eq i8 %111, 0, !dbg !983
  %113 = select i1 %112, i8 %71, i8 0, !dbg !986
  call void @llvm.dbg.value(metadata i8 %113, metadata !905, metadata !DIExpression()) #10, !dbg !931
  %114 = and i8 %113, 1, !dbg !987
  %115 = icmp eq i8 %114, 0, !dbg !987
  br i1 %115, label %136, label %116, !dbg !988

; <label>:116:                                    ; preds = %109
  %117 = icmp ult i64 %110, %72, !dbg !989
  br i1 %117, label %118, label %120, !dbg !991

; <label>:118:                                    ; preds = %116
  %119 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !992
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %119) #10, !dbg !992
  unreachable, !dbg !992

; <label>:120:                                    ; preds = %116
  %121 = icmp eq i32 %96, 9, !dbg !993
  br i1 %121, label %122, label %124, !dbg !994

; <label>:122:                                    ; preds = %120
  call void @llvm.dbg.value(metadata i64 %110, metadata !906, metadata !DIExpression()) #10, !dbg !932
  %123 = icmp eq i64 %75, 0, !dbg !995
  br i1 %123, label %132, label %130, !dbg !997

; <label>:124:                                    ; preds = %120
  %125 = add i64 %72, 1, !dbg !998
  call void @llvm.dbg.value(metadata i64 %125, metadata !906, metadata !DIExpression()) #10, !dbg !932
  %126 = and i8 %74, 1, !dbg !1000
  %127 = icmp ne i8 %126, 0, !dbg !1000
  %128 = icmp eq i64 %125, %110, !dbg !1002
  %129 = and i1 %127, %128, !dbg !1003
  br i1 %129, label %130, label %179, !dbg !1003

; <label>:130:                                    ; preds = %124, %122
  %131 = phi i64 [ %110, %122 ], [ %125, %124 ]
  store i8 9, i8* %66, align 1, !dbg !1004, !tbaa !964
  br label %132, !dbg !1005

; <label>:132:                                    ; preds = %130, %122
  %133 = phi i64 [ %110, %122 ], [ %131, %130 ], !dbg !1006
  call void @llvm.dbg.value(metadata i64 %133, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i32 9, metadata !903, metadata !DIExpression()) #10, !dbg !965
  %134 = and i8 %73, 1, !dbg !1005
  %135 = zext i8 %134 to i64, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %135, metadata !911, metadata !DIExpression()) #10, !dbg !938
  br label %136, !dbg !1007

; <label>:136:                                    ; preds = %132, %109
  %137 = phi i32 [ %96, %109 ], [ 9, %132 ]
  %138 = phi i64 [ %72, %109 ], [ %133, %132 ]
  %139 = phi i64 [ %75, %109 ], [ %135, %132 ]
  call void @llvm.dbg.value(metadata i64 %182, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 1, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8 %180, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 %125, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i32 %96, metadata !903, metadata !DIExpression()) #10, !dbg !965
  call void @llvm.dbg.value(metadata i8* %4, metadata !916, metadata !DIExpression(DW_OP_deref)) #10, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #10, !dbg !1008
  br label %155

; <label>:140:                                    ; preds = %100
  %141 = icmp eq i32 %96, 8, !dbg !1009
  br i1 %141, label %142, label %150, !dbg !1011

; <label>:142:                                    ; preds = %140
  %143 = icmp ne i64 %72, 0, !dbg !1012
  %144 = zext i1 %143 to i64, !dbg !1014
  %145 = sub i64 %72, %144, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %145, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i64 %145, metadata !907, metadata !DIExpression()) #10, !dbg !933
  %146 = load i64, i64* %3, align 8, !dbg !1016, !tbaa !925
  call void @llvm.dbg.value(metadata i64 %146, metadata !908, metadata !DIExpression()) #10, !dbg !935
  %147 = icmp ne i64 %146, 0, !dbg !1017
  %148 = zext i1 %147 to i64, !dbg !1018
  %149 = sub i64 %146, %148, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %149, metadata !908, metadata !DIExpression()) #10, !dbg !935
  store i64 %149, i64* %3, align 8, !dbg !1019, !tbaa !925
  br label %155, !dbg !1020

; <label>:150:                                    ; preds = %140
  %151 = add i64 %72, 1, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %151, metadata !906, metadata !DIExpression()) #10, !dbg !932
  %152 = icmp eq i64 %151, 0, !dbg !1023
  br i1 %152, label %153, label %155, !dbg !1025

; <label>:153:                                    ; preds = %150
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !1026
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154) #10, !dbg !1026
  unreachable, !dbg !1026

; <label>:155:                                    ; preds = %150, %142, %136
  %156 = phi i32 [ 8, %142 ], [ %96, %150 ], [ %137, %136 ], !dbg !1027
  %157 = phi i8 [ %71, %142 ], [ %71, %150 ], [ %113, %136 ], !dbg !1028
  %158 = phi i64 [ %145, %142 ], [ %151, %150 ], [ %138, %136 ], !dbg !1029
  %159 = phi i64 [ %75, %142 ], [ %75, %150 ], [ %139, %136 ], !dbg !1028
  call void @llvm.dbg.value(metadata i64 %159, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 %73, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 %158, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i8 %157, metadata !905, metadata !DIExpression()) #10, !dbg !931
  call void @llvm.dbg.value(metadata i32 %156, metadata !903, metadata !DIExpression()) #10, !dbg !965
  switch i64 %159, label %160 [
    i64 0, label %172
    i64 1, label %164
  ], !dbg !1030

; <label>:160:                                    ; preds = %155
  %161 = and i8 %73, 1, !dbg !1031
  %162 = icmp eq i8 %161, 0, !dbg !1031
  br i1 %162, label %164, label %163, !dbg !1033

; <label>:163:                                    ; preds = %160
  store i8 9, i8* %66, align 1, !dbg !1034, !tbaa !964
  br label %164, !dbg !1035

; <label>:164:                                    ; preds = %163, %160, %155
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1036, !tbaa !744
  %166 = call i64 @fwrite_unlocked(i8* %66, i64 1, i64 %159, %struct._IO_FILE* %165) #10, !dbg !1036
  %167 = icmp eq i64 %166, %159, !dbg !1038
  br i1 %167, label %172, label %168, !dbg !1039

; <label>:168:                                    ; preds = %164
  %169 = tail call i32* @__errno_location() #17, !dbg !1040
  %170 = load i32, i32* %169, align 4, !dbg !1040, !tbaa !858
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !1040
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %170, i8* %171) #10, !dbg !1040
  unreachable, !dbg !1040

; <label>:172:                                    ; preds = %164, %155
  %173 = phi i8 [ %73, %155 ], [ 0, %164 ], !dbg !1028
  call void @llvm.dbg.value(metadata i64 0, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 %173, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i8 %108, metadata !910, metadata !DIExpression()) #10, !dbg !937
  %174 = load i8, i8* @convert_entire_line, align 1, !dbg !1041, !tbaa !827, !range !985
  %175 = icmp ne i8 %174, 0, !dbg !1041
  %176 = or i1 %107, %175, !dbg !1042
  %177 = zext i1 %176 to i8, !dbg !1042
  %178 = and i8 %157, %177, !dbg !1043
  call void @llvm.dbg.value(metadata i8 %178, metadata !905, metadata !DIExpression()) #10, !dbg !931
  call void @llvm.dbg.value(metadata i8 1, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i32 %96, metadata !903, metadata !DIExpression()) #10, !dbg !965
  br label %184

; <label>:179:                                    ; preds = %124
  %180 = select i1 %128, i8 1, i8 %73, !dbg !1044
  call void @llvm.dbg.value(metadata i8 %180, metadata !909, metadata !DIExpression()) #10, !dbg !936
  %181 = trunc i32 %96 to i8, !dbg !1046
  %182 = add i64 %75, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %182, metadata !911, metadata !DIExpression()) #10, !dbg !938
  %183 = getelementptr inbounds i8, i8* %66, i64 %75, !dbg !1048
  store i8 %181, i8* %183, align 1, !dbg !1049, !tbaa !964
  call void @llvm.dbg.value(metadata i8 1, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i64 %182, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 1, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8 %180, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 %125, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i32 %96, metadata !903, metadata !DIExpression()) #10, !dbg !965
  call void @llvm.dbg.value(metadata i8* %4, metadata !916, metadata !DIExpression(DW_OP_deref)) #10, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #10, !dbg !1008
  call void @llvm.dbg.value(metadata i64 %182, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 1, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8 %180, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 %125, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i8 %113, metadata !905, metadata !DIExpression()) #10, !dbg !931
  call void @llvm.dbg.value(metadata i32 %96, metadata !903, metadata !DIExpression()) #10, !dbg !965
  br label %211

; <label>:184:                                    ; preds = %172, %95
  %185 = phi i32 [ %96, %95 ], [ %156, %172 ], !dbg !1027
  %186 = phi i8 [ %71, %95 ], [ %178, %172 ], !dbg !1028
  %187 = phi i64 [ %72, %95 ], [ %158, %172 ], !dbg !1028
  %188 = phi i8 [ %73, %95 ], [ %173, %172 ], !dbg !1028
  %189 = phi i8 [ %74, %95 ], [ %108, %172 ], !dbg !1028
  %190 = phi i64 [ %75, %95 ], [ 0, %172 ], !dbg !1028
  call void @llvm.dbg.value(metadata i64 %190, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 %189, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8 %188, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 %187, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i8 %186, metadata !905, metadata !DIExpression()) #10, !dbg !931
  call void @llvm.dbg.value(metadata i32 %185, metadata !903, metadata !DIExpression()) #10, !dbg !965
  %191 = icmp slt i32 %185, 0, !dbg !1050
  br i1 %191, label %192, label %193, !dbg !1052

; <label>:192:                                    ; preds = %184
  call void @free(i8* %66) #10, !dbg !1053
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #10, !dbg !1055
  br label %220

; <label>:193:                                    ; preds = %184
  call void @llvm.dbg.value(metadata i32 %185, metadata !1056, metadata !DIExpression()) #10, !dbg !1061
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1064, !tbaa !744
  %195 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %194, i64 0, i32 5, !dbg !1064
  %196 = load i8*, i8** %195, align 8, !dbg !1064, !tbaa !1065
  %197 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %194, i64 0, i32 6, !dbg !1064
  %198 = load i8*, i8** %197, align 8, !dbg !1064, !tbaa !1066
  %199 = icmp ult i8* %196, %198, !dbg !1064
  br i1 %199, label %200, label %203, !dbg !1064, !prof !963

; <label>:200:                                    ; preds = %193
  %201 = trunc i32 %185 to i8, !dbg !1064
  %202 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !1064
  store i8* %202, i8** %195, align 8, !dbg !1064, !tbaa !1065
  store i8 %201, i8* %196, align 1, !dbg !1064, !tbaa !964
  br label %211, !dbg !1067

; <label>:203:                                    ; preds = %193
  %204 = and i32 %185, 255, !dbg !1064
  %205 = call i32 @__overflow(%struct._IO_FILE* %194, i32 %204) #10, !dbg !1064
  %206 = icmp slt i32 %205, 0, !dbg !1068
  br i1 %206, label %207, label %211, !dbg !1067

; <label>:207:                                    ; preds = %203
  %208 = tail call i32* @__errno_location() #17, !dbg !1069
  %209 = load i32, i32* %208, align 4, !dbg !1069, !tbaa !858
  %210 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !1069
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %209, i8* %210) #10, !dbg !1069
  unreachable, !dbg !1069

; <label>:211:                                    ; preds = %203, %200, %179
  %212 = phi i32 [ %185, %203 ], [ %96, %179 ], [ %185, %200 ], !dbg !1027
  %213 = phi i8 [ %186, %203 ], [ %113, %179 ], [ %186, %200 ], !dbg !1043
  %214 = phi i64 [ %187, %203 ], [ %125, %179 ], [ %187, %200 ], !dbg !1070
  %215 = phi i8 [ %188, %203 ], [ %180, %179 ], [ %188, %200 ], !dbg !1071
  %216 = phi i8 [ %189, %203 ], [ 1, %179 ], [ %189, %200 ], !dbg !1072
  %217 = phi i64 [ %190, %203 ], [ %182, %179 ], [ %190, %200 ], !dbg !1073
  call void @llvm.dbg.value(metadata i64 %217, metadata !911, metadata !DIExpression()) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 %216, metadata !910, metadata !DIExpression()) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8 %215, metadata !909, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 %214, metadata !906, metadata !DIExpression()) #10, !dbg !932
  call void @llvm.dbg.value(metadata i8 %213, metadata !905, metadata !DIExpression()) #10, !dbg !931
  call void @llvm.dbg.value(metadata i32 %212, metadata !903, metadata !DIExpression()) #10, !dbg !965
  %218 = icmp eq i32 %212, 10, !dbg !1074
  br i1 %218, label %219, label %70, !dbg !1075, !llvm.loop !1076

; <label>:219:                                    ; preds = %211
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !867, metadata !DIExpression()) #10, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #10, !dbg !1055
  br label %68

; <label>:220:                                    ; preds = %56, %192
  call void @cleanup_file_list_stdin() #10, !dbg !1079
  %221 = load i32, i32* @exit_status, align 4, !dbg !1080, !tbaa !858
  ret i32 %221, !dbg !1081
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

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @add_tab_stop(i64) local_unnamed_addr #7 !dbg !1082 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1086, metadata !DIExpression()), !dbg !1089
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1090, !tbaa !925
  %3 = icmp eq i64 %2, 0, !dbg !1090
  br i1 %3, label %9, label %4, !dbg !1090

; <label>:4:                                      ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1091, !tbaa !744
  %6 = add i64 %2, -1, !dbg !1092
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1091
  %8 = load i64, i64* %7, align 8, !dbg !1091, !tbaa !925
  br label %9, !dbg !1090

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1090
  call void @llvm.dbg.value(metadata i64 %10, metadata !1087, metadata !DIExpression()), !dbg !1093
  %11 = icmp ugt i64 %10, %0, !dbg !1094
  %12 = select i1 %11, i64 %10, i64 %0, !dbg !1094
  %13 = sub i64 %12, %10, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %13, metadata !1088, metadata !DIExpression()), !dbg !1095
  %14 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1096, !tbaa !925
  %15 = icmp eq i64 %2, %14, !dbg !1098
  br i1 %15, label %18, label %16, !dbg !1099

; <label>:16:                                     ; preds = %9
  %17 = load i64*, i64** @tab_list, align 8, !dbg !1100, !tbaa !744
  br label %38, !dbg !1099

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1101, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %19, metadata !87, metadata !DIExpression()) #10, !dbg !1102
  call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, metadata !88, metadata !DIExpression()) #10, !dbg !1104
  call void @llvm.dbg.value(metadata i64 8, metadata !89, metadata !DIExpression()) #10, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %14, metadata !90, metadata !DIExpression()) #10, !dbg !1106
  %20 = icmp eq i8* %19, null, !dbg !1107
  br i1 %20, label %21, label %25, !dbg !1109

; <label>:21:                                     ; preds = %18
  br i1 %3, label %32, label %22, !dbg !1110

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 %14, metadata !90, metadata !DIExpression()) #10, !dbg !1106
  %23 = icmp ugt i64 %2, 1152921504606846975, !dbg !1112
  br i1 %23, label %24, label %32, !dbg !1114

; <label>:24:                                     ; preds = %22
  tail call void @xalloc_die() #15, !dbg !1115
  unreachable, !dbg !1115

; <label>:25:                                     ; preds = %18
  %26 = icmp ult i64 %2, 768614336404564650, !dbg !1116
  br i1 %26, label %28, label %27, !dbg !1119

; <label>:27:                                     ; preds = %25
  tail call void @xalloc_die() #15, !dbg !1120
  unreachable, !dbg !1120

; <label>:28:                                     ; preds = %25
  %29 = lshr i64 %2, 1, !dbg !1121
  %30 = add i64 %2, 1, !dbg !1122
  %31 = add i64 %30, %29, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %31, metadata !90, metadata !DIExpression()) #10, !dbg !1106
  br label %32

; <label>:32:                                     ; preds = %21, %22, %28
  %33 = phi i64 [ %31, %28 ], [ %2, %22 ], [ 16, %21 ], !dbg !1124
  call void @llvm.dbg.value(metadata i64 %33, metadata !90, metadata !DIExpression()) #10, !dbg !1106
  store i64 %33, i64* @n_tabs_allocated, align 8, !dbg !1125, !tbaa !925
  %34 = shl i64 %33, 3, !dbg !1126
  %35 = tail call i8* @xrealloc(i8* %19, i64 %34) #10, !dbg !1127
  store i8* %35, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1128, !tbaa !744
  %36 = bitcast i8* %35 to i64*, !dbg !1129
  %37 = load i64, i64* @first_free_tab, align 8, !dbg !1130, !tbaa !925
  br label %38, !dbg !1129

; <label>:38:                                     ; preds = %16, %32
  %39 = phi i64 [ %2, %16 ], [ %37, %32 ], !dbg !1130
  %40 = phi i64* [ %17, %16 ], [ %36, %32 ], !dbg !1100
  %41 = add i64 %39, 1, !dbg !1130
  store i64 %41, i64* @first_free_tab, align 8, !dbg !1130, !tbaa !925
  %42 = getelementptr inbounds i64, i64* %40, i64 %39, !dbg !1100
  store i64 %0, i64* %42, align 8, !dbg !1131, !tbaa !925
  %43 = load i64, i64* @max_column_width, align 8, !dbg !1132, !tbaa !925
  %44 = icmp ult i64 %43, %13, !dbg !1134
  br i1 %44, label %45, label %46, !dbg !1135

; <label>:45:                                     ; preds = %38
  store i64 %13, i64* @max_column_width, align 8, !dbg !1136, !tbaa !925
  br label %46, !dbg !1138

; <label>:46:                                     ; preds = %45, %38
  ret void, !dbg !1139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_tab_stops(i8*) local_unnamed_addr #7 !dbg !1140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 0, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 0, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 0, metadata !1145, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 0, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* null, metadata !1147, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 1, metadata !1148, metadata !DIExpression()), !dbg !1167
  br label %2, !dbg !1168

; <label>:2:                                      ; preds = %81, %1
  %3 = phi i64 [ 0, %1 ], [ %82, %81 ], !dbg !1163
  %4 = phi i8 [ 0, %1 ], [ %83, %81 ], !dbg !1164
  %5 = phi i8 [ 0, %1 ], [ %84, %81 ], !dbg !1165
  %6 = phi i8* [ null, %1 ], [ %85, %81 ], !dbg !1166
  %7 = phi i8 [ 1, %1 ], [ %86, %81 ], !dbg !1167
  %8 = phi i8 [ 0, %1 ], [ %87, %81 ], !dbg !1169
  %9 = phi i8* [ %0, %1 ], [ %89, %81 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8* %9, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %8, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %6, metadata !1147, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %5, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %4, metadata !1145, metadata !DIExpression()), !dbg !1164
  %10 = load i8, i8* %9, align 1, !dbg !1171, !tbaa !964
  switch i8 %10, label %11 [
    i8 0, label %90
    i8 44, label %19
  ], !dbg !1172

; <label>:11:                                     ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #17, !dbg !1173
  %13 = load i16*, i16** %12, align 8, !dbg !1173, !tbaa !744
  %14 = zext i8 %10 to i64, !dbg !1173
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1173
  %16 = load i16, i16* %15, align 2, !dbg !1173, !tbaa !976
  %17 = and i16 %16, 1, !dbg !1173
  %18 = icmp eq i16 %17, 0, !dbg !1173
  br i1 %18, label %41, label %19, !dbg !1174

; <label>:19:                                     ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1175
  %21 = icmp eq i8 %20, 0, !dbg !1175
  br i1 %21, label %81, label %22, !dbg !1177

; <label>:22:                                     ; preds = %19
  %23 = and i8 %4, 1, !dbg !1178
  %24 = icmp eq i8 %23, 0, !dbg !1178
  br i1 %24, label %31, label %25, !dbg !1181

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1182, metadata !DIExpression()) #10, !dbg !1188
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()) #10, !dbg !1192
  %26 = load i64, i64* @extend_size, align 8, !dbg !1193, !tbaa !925
  %27 = icmp eq i64 %26, 0, !dbg !1193
  br i1 %27, label %28, label %29, !dbg !1195

; <label>:28:                                     ; preds = %25
  store i64 %3, i64* @extend_size, align 8, !dbg !1196, !tbaa !925
  br label %81, !dbg !1197

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.11, i64 0, i64 0), i32 5) #10, !dbg !1198
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()) #10, !dbg !1192
  store i64 %3, i64* @extend_size, align 8, !dbg !1196, !tbaa !925
  br label %119, !dbg !1197

; <label>:31:                                     ; preds = %22
  %32 = and i8 %5, 1, !dbg !1201
  %33 = icmp eq i8 %32, 0, !dbg !1201
  br i1 %33, label %40, label %34, !dbg !1203

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1204, metadata !DIExpression()) #10, !dbg !1208
  call void @llvm.dbg.value(metadata i8 1, metadata !1207, metadata !DIExpression()) #10, !dbg !1212
  %35 = load i64, i64* @increment_size, align 8, !dbg !1213, !tbaa !925
  %36 = icmp eq i64 %35, 0, !dbg !1213
  br i1 %36, label %37, label %38, !dbg !1215

; <label>:37:                                     ; preds = %34
  store i64 %3, i64* @increment_size, align 8, !dbg !1216, !tbaa !925
  br label %81, !dbg !1217

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.12, i64 0, i64 0), i32 5) #10, !dbg !1218
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #10, !dbg !1220
  call void @llvm.dbg.value(metadata i8 0, metadata !1207, metadata !DIExpression()) #10, !dbg !1212
  store i64 %3, i64* @increment_size, align 8, !dbg !1216, !tbaa !925
  br label %119, !dbg !1217

; <label>:40:                                     ; preds = %31
  tail call void @add_tab_stop(i64 %3), !dbg !1221
  br label %81

; <label>:41:                                     ; preds = %11
  switch i8 %10, label %54 [
    i8 47, label %42
    i8 43, label %48
  ], !dbg !1222

; <label>:42:                                     ; preds = %41
  %43 = and i8 %8, 1, !dbg !1223
  %44 = icmp eq i8 %43, 0, !dbg !1223
  br i1 %44, label %81, label %45, !dbg !1226

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.13, i64 0, i64 0), i32 5) #10, !dbg !1227
  %47 = tail call i8* @quote(i8* %9) #10, !dbg !1229
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %47) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i8 0, metadata !1148, metadata !DIExpression()), !dbg !1167
  br label %81, !dbg !1231

; <label>:48:                                     ; preds = %41
  %49 = and i8 %8, 1, !dbg !1232
  %50 = icmp eq i8 %49, 0, !dbg !1232
  br i1 %50, label %81, label %51, !dbg !1235

; <label>:51:                                     ; preds = %48
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.14, i64 0, i64 0), i32 5) #10, !dbg !1236
  %53 = tail call i8* @quote(i8* %9) #10, !dbg !1238
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %53) #10, !dbg !1239
  call void @llvm.dbg.value(metadata i8 0, metadata !1148, metadata !DIExpression()), !dbg !1167
  br label %81, !dbg !1240

; <label>:54:                                     ; preds = %41
  %55 = sext i8 %10 to i32, !dbg !1241
  %56 = add nsw i32 %55, -48, !dbg !1242
  %57 = icmp ult i32 %56, 10, !dbg !1242
  br i1 %57, label %58, label %78, !dbg !1243

; <label>:58:                                     ; preds = %54
  %59 = and i8 %8, 1, !dbg !1244
  %60 = icmp eq i8 %59, 0, !dbg !1244
  %61 = select i1 %60, i64 0, i64 %3, !dbg !1246
  %62 = select i1 %60, i8* %9, i8* %6, !dbg !1246
  %63 = select i1 %60, i8 1, i8 %8, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %61, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %63, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %62, metadata !1147, metadata !DIExpression()), !dbg !1166
  %64 = icmp ugt i64 %61, 1844674407370955161, !dbg !1247
  br i1 %64, label %71, label %65, !dbg !1247

; <label>:65:                                     ; preds = %58
  %66 = mul i64 %61, 10, !dbg !1247
  %67 = sext i8 %10 to i64, !dbg !1247
  %68 = add nsw i64 %67, -48, !dbg !1247
  %69 = add i64 %68, %66, !dbg !1247
  %70 = icmp ult i64 %69, %61, !dbg !1247
  br i1 %70, label %71, label %81, !dbg !1248

; <label>:71:                                     ; preds = %65, %58
  %72 = tail call i64 @strspn(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.15, i64 0, i64 0)) #14, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %72, metadata !1149, metadata !DIExpression()), !dbg !1250
  %73 = tail call noalias i8* @xstrndup(i8* %62, i64 %72) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %73, metadata !1160, metadata !DIExpression()), !dbg !1252
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.16, i64 0, i64 0), i32 5) #10, !dbg !1253
  %75 = tail call i8* @quote(i8* %73) #10, !dbg !1254
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %74, i8* %75) #10, !dbg !1255
  tail call void @free(i8* %73) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i8 0, metadata !1148, metadata !DIExpression()), !dbg !1167
  %76 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !1257
  %77 = getelementptr inbounds i8, i8* %76, i64 %72, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %77, metadata !1142, metadata !DIExpression()), !dbg !1161
  br label %81, !dbg !1259

; <label>:78:                                     ; preds = %54
  call void @llvm.dbg.value(metadata i8* %9, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %9, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %9, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %9, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %9, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %9, metadata !1142, metadata !DIExpression()), !dbg !1161
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5.17, i64 0, i64 0), i32 5) #10, !dbg !1260
  %80 = tail call i8* @quote(i8* %9) #10, !dbg !1262
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #10, !dbg !1263
  call void @llvm.dbg.value(metadata i8 0, metadata !1148, metadata !DIExpression()), !dbg !1167
  br label %119, !dbg !1264

; <label>:81:                                     ; preds = %65, %37, %28, %51, %48, %45, %42, %40, %19, %71
  %82 = phi i64 [ %69, %65 ], [ %61, %71 ], [ %3, %19 ], [ %3, %40 ], [ %3, %42 ], [ %3, %45 ], [ %3, %48 ], [ %3, %51 ], [ %3, %28 ], [ %3, %37 ], !dbg !1163
  %83 = phi i8 [ %4, %65 ], [ %4, %71 ], [ %4, %19 ], [ %4, %40 ], [ 1, %42 ], [ 1, %45 ], [ 0, %48 ], [ 0, %51 ], [ %4, %28 ], [ %4, %37 ], !dbg !1265
  %84 = phi i8 [ %5, %65 ], [ %5, %71 ], [ %5, %19 ], [ %5, %40 ], [ 0, %42 ], [ 0, %45 ], [ 1, %48 ], [ 1, %51 ], [ %5, %28 ], [ %5, %37 ], !dbg !1265
  %85 = phi i8* [ %62, %65 ], [ %62, %71 ], [ %6, %19 ], [ %6, %40 ], [ %6, %42 ], [ %6, %45 ], [ %6, %48 ], [ %6, %51 ], [ %6, %28 ], [ %6, %37 ], !dbg !1166
  %86 = phi i8 [ %7, %65 ], [ 0, %71 ], [ %7, %19 ], [ %7, %40 ], [ %7, %42 ], [ 0, %45 ], [ %7, %48 ], [ 0, %51 ], [ %7, %28 ], [ %7, %37 ], !dbg !1266
  %87 = phi i8 [ %63, %65 ], [ %63, %71 ], [ 0, %19 ], [ 0, %40 ], [ %8, %42 ], [ %8, %45 ], [ %8, %48 ], [ %8, %51 ], [ 0, %28 ], [ 0, %37 ], !dbg !1265
  %88 = phi i8* [ %9, %65 ], [ %77, %71 ], [ %9, %19 ], [ %9, %40 ], [ %9, %42 ], [ %9, %45 ], [ %9, %48 ], [ %9, %51 ], [ %9, %28 ], [ %9, %37 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8* %88, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %87, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8 %86, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %85, metadata !1147, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %84, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %83, metadata !1145, metadata !DIExpression()), !dbg !1164
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1267
  call void @llvm.dbg.value(metadata i8* %89, metadata !1142, metadata !DIExpression()), !dbg !1161
  br label %2, !dbg !1268, !llvm.loop !1269

; <label>:90:                                     ; preds = %2
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %4, metadata !1145, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %5, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %8, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %4, metadata !1145, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %5, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %8, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %4, metadata !1145, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %5, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %8, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %4, metadata !1145, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %5, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %8, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %4, metadata !1145, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %5, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %8, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %4, metadata !1145, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %5, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %8, metadata !1143, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8 %7, metadata !1148, metadata !DIExpression()), !dbg !1167
  %91 = and i8 %8, 1, !dbg !1271
  %92 = and i8 %91, %7, !dbg !1271
  %93 = icmp eq i8 %92, 0, !dbg !1271
  br i1 %93, label %115, label %94, !dbg !1271

; <label>:94:                                     ; preds = %90
  %95 = and i8 %4, 1, !dbg !1273
  %96 = icmp eq i8 %95, 0, !dbg !1273
  br i1 %96, label %104, label %97, !dbg !1276

; <label>:97:                                     ; preds = %94
  call void @llvm.dbg.value(metadata i64 %3, metadata !1182, metadata !DIExpression()) #10, !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()) #10, !dbg !1279
  %98 = load i64, i64* @extend_size, align 8, !dbg !1280, !tbaa !925
  %99 = icmp eq i64 %98, 0, !dbg !1280
  br i1 %99, label %102, label %100, !dbg !1281

; <label>:100:                                    ; preds = %97
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.11, i64 0, i64 0), i32 5) #10, !dbg !1282
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101) #10, !dbg !1283
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()) #10, !dbg !1279
  br label %102, !dbg !1284

; <label>:102:                                    ; preds = %97, %100
  %103 = phi i8 [ 0, %100 ], [ 1, %97 ]
  store i64 %3, i64* @extend_size, align 8, !dbg !1285, !tbaa !925
  call void @llvm.dbg.value(metadata i8 %103, metadata !1148, metadata !DIExpression()), !dbg !1167
  br label %115, !dbg !1286

; <label>:104:                                    ; preds = %94
  %105 = and i8 %5, 1, !dbg !1287
  %106 = icmp eq i8 %105, 0, !dbg !1287
  br i1 %106, label %114, label %107, !dbg !1289

; <label>:107:                                    ; preds = %104
  call void @llvm.dbg.value(metadata i64 %3, metadata !1204, metadata !DIExpression()) #10, !dbg !1290
  call void @llvm.dbg.value(metadata i8 1, metadata !1207, metadata !DIExpression()) #10, !dbg !1292
  %108 = load i64, i64* @increment_size, align 8, !dbg !1293, !tbaa !925
  %109 = icmp eq i64 %108, 0, !dbg !1293
  br i1 %109, label %112, label %110, !dbg !1294

; <label>:110:                                    ; preds = %107
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.12, i64 0, i64 0), i32 5) #10, !dbg !1295
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111) #10, !dbg !1296
  call void @llvm.dbg.value(metadata i8 0, metadata !1207, metadata !DIExpression()) #10, !dbg !1292
  br label %112, !dbg !1297

; <label>:112:                                    ; preds = %107, %110
  %113 = phi i8 [ 0, %110 ], [ 1, %107 ]
  store i64 %3, i64* @increment_size, align 8, !dbg !1298, !tbaa !925
  call void @llvm.dbg.value(metadata i8 %113, metadata !1148, metadata !DIExpression()), !dbg !1167
  br label %115, !dbg !1299

; <label>:114:                                    ; preds = %104
  tail call void @add_tab_stop(i64 %3), !dbg !1300
  br label %115

; <label>:115:                                    ; preds = %90, %102, %114, %112
  %116 = phi i8 [ %103, %102 ], [ %113, %112 ], [ %7, %114 ], [ %7, %90 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %116, metadata !1148, metadata !DIExpression()), !dbg !1167
  %117 = and i8 %116, 1, !dbg !1303
  %118 = icmp eq i8 %117, 0, !dbg !1303
  br i1 %118, label %119, label %120, !dbg !1305

; <label>:119:                                    ; preds = %78, %29, %38, %115
  tail call void @exit(i32 1) #15, !dbg !1306
  unreachable, !dbg !1306

; <label>:120:                                    ; preds = %115
  ret void, !dbg !1307
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #7 !dbg !1308 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1309, !tbaa !744
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1310, !tbaa !925
  call void @llvm.dbg.value(metadata i64* %1, metadata !1311, metadata !DIExpression()) #10, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %2, metadata !1318, metadata !DIExpression()) #10, !dbg !1324
  call void @llvm.dbg.value(metadata i64 0, metadata !1319, metadata !DIExpression()) #10, !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()) #10, !dbg !1326
  %3 = icmp eq i64 %2, 0, !dbg !1327
  br i1 %3, label %6, label %12, !dbg !1329

; <label>:4:                                      ; preds = %20
  call void @llvm.dbg.value(metadata i64 %22, metadata !1320, metadata !DIExpression()) #10, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %16, metadata !1319, metadata !DIExpression()) #10, !dbg !1325
  %5 = icmp ult i64 %22, %2, !dbg !1327
  br i1 %5, label %12, label %6, !dbg !1329, !llvm.loop !1330

; <label>:6:                                      ; preds = %4, %0
  %7 = load i64, i64* @increment_size, align 8, !dbg !1333, !tbaa !925
  %8 = icmp ne i64 %7, 0, !dbg !1333
  %9 = load i64, i64* @extend_size, align 8, !dbg !1335
  %10 = icmp ne i64 %9, 0, !dbg !1335
  %11 = and i1 %8, %10, !dbg !1336
  br i1 %11, label %25, label %27, !dbg !1336

; <label>:12:                                     ; preds = %0, %4
  %13 = phi i64 [ %22, %4 ], [ 0, %0 ]
  %14 = phi i64 [ %16, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !1320, metadata !DIExpression()) #10, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %14, metadata !1319, metadata !DIExpression()) #10, !dbg !1325
  %15 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1337
  %16 = load i64, i64* %15, align 8, !dbg !1337, !tbaa !925
  %17 = icmp eq i64 %16, 0, !dbg !1340
  br i1 %17, label %18, label %20, !dbg !1341

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15.20, i64 0, i64 0), i32 5) #10, !dbg !1342
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #10, !dbg !1342
  unreachable, !dbg !1342

; <label>:20:                                     ; preds = %12
  %21 = icmp ugt i64 %16, %14, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %16, metadata !1319, metadata !DIExpression()) #10, !dbg !1325
  %22 = add nuw i64 %13, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %22, metadata !1320, metadata !DIExpression()) #10, !dbg !1326
  br i1 %21, label %4, label %23, !dbg !1346

; <label>:23:                                     ; preds = %20
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.21, i64 0, i64 0), i32 5) #10, !dbg !1347
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %24) #10, !dbg !1347
  unreachable, !dbg !1347

; <label>:25:                                     ; preds = %6
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17.22, i64 0, i64 0), i32 5) #10, !dbg !1348
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !1348
  unreachable, !dbg !1348

; <label>:27:                                     ; preds = %6
  br i1 %3, label %28, label %33, !dbg !1349

; <label>:28:                                     ; preds = %27
  %29 = icmp eq i64 %9, 0, !dbg !1350
  %30 = icmp eq i64 %7, 0, !dbg !1352
  %31 = select i1 %30, i64 8, i64 %7, !dbg !1352
  %32 = select i1 %29, i64 %31, i64 %9, !dbg !1350
  store i64 %32, i64* @max_column_width, align 8, !dbg !1353, !tbaa !925
  br label %40, !dbg !1354

; <label>:33:                                     ; preds = %27
  %34 = icmp ne i64 %2, 1, !dbg !1355
  %35 = or i64 %9, %7, !dbg !1357
  %36 = icmp ne i64 %35, 0, !dbg !1357
  %37 = or i1 %34, %36, !dbg !1357
  br i1 %37, label %40, label %38, !dbg !1357

; <label>:38:                                     ; preds = %33
  %39 = load i64, i64* %1, align 8, !dbg !1358, !tbaa !925
  br label %40, !dbg !1359

; <label>:40:                                     ; preds = %33, %38, %28
  %41 = phi i64 [ %39, %38 ], [ %32, %28 ], [ 0, %33 ]
  store i64 %41, i64* @tab_size, align 8, !dbg !1360, !tbaa !925
  ret void, !dbg !1361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @get_next_tab_column(i64, i64* nocapture, i8* nocapture) local_unnamed_addr #7 !dbg !1362 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1367, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i64* %1, metadata !1368, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i8* %2, metadata !1369, metadata !DIExpression()), !dbg !1379
  store i8 0, i8* %2, align 1, !dbg !1380, !tbaa !827
  %4 = load i64, i64* @tab_size, align 8, !dbg !1381, !tbaa !925
  %5 = icmp eq i64 %4, 0, !dbg !1381
  br i1 %5, label %6, label %12, !dbg !1383

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1384, !tbaa !925
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1385, !tbaa !925
  %9 = icmp ult i64 %7, %8, !dbg !1386
  br i1 %9, label %10, label %24, !dbg !1387

; <label>:10:                                     ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !744
  br label %16, !dbg !1387

; <label>:12:                                     ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1388
  %14 = add i64 %4, %0, !dbg !1389
  %15 = sub i64 %14, %13, !dbg !1390
  br label %44, !dbg !1391

; <label>:16:                                     ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1392
  %19 = load i64, i64* %18, align 8, !dbg !1392, !tbaa !925
  call void @llvm.dbg.value(metadata i64 %19, metadata !1370, metadata !DIExpression()), !dbg !1393
  %20 = icmp ugt i64 %19, %0, !dbg !1394
  br i1 %20, label %44, label %21

; <label>:21:                                     ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1396
  store i64 %22, i64* %1, align 8, !dbg !1396, !tbaa !925
  %23 = icmp ult i64 %22, %8, !dbg !1386
  br i1 %23, label %16, label %24, !dbg !1387, !llvm.loop !1397

; <label>:24:                                     ; preds = %21, %6
  %25 = load i64, i64* @extend_size, align 8, !dbg !1399, !tbaa !925
  %26 = icmp eq i64 %25, 0, !dbg !1399
  br i1 %26, label %31, label %27, !dbg !1401

; <label>:27:                                     ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1402
  %29 = add i64 %25, %0, !dbg !1403
  %30 = sub i64 %29, %28, !dbg !1404
  br label %44, !dbg !1405

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* @increment_size, align 8, !dbg !1406, !tbaa !925
  %33 = icmp eq i64 %32, 0, !dbg !1406
  br i1 %33, label %43, label %34, !dbg !1407

; <label>:34:                                     ; preds = %31
  %35 = load i64*, i64** @tab_list, align 8, !dbg !1408, !tbaa !744
  %36 = add i64 %8, -1, !dbg !1409
  %37 = getelementptr inbounds i64, i64* %35, i64 %36, !dbg !1408
  %38 = load i64, i64* %37, align 8, !dbg !1408, !tbaa !925
  call void @llvm.dbg.value(metadata i64 %38, metadata !1374, metadata !DIExpression()), !dbg !1410
  %39 = sub i64 %0, %38, !dbg !1411
  %40 = urem i64 %39, %32, !dbg !1412
  %41 = add i64 %32, %0, !dbg !1413
  %42 = sub i64 %41, %40, !dbg !1414
  br label %44

; <label>:43:                                     ; preds = %31
  store i8 1, i8* %2, align 1, !dbg !1415, !tbaa !827
  br label %44, !dbg !1416

; <label>:44:                                     ; preds = %16, %43, %34, %27, %12
  %45 = phi i64 [ %15, %12 ], [ %30, %27 ], [ %42, %34 ], [ 0, %43 ], [ %19, %16 ], !dbg !1417
  ret i64 %45, !dbg !1418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_file_list(i8**) local_unnamed_addr #7 !dbg !1419 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1423, metadata !DIExpression()), !dbg !1424
  store i1 false, i1* @have_read_stdin, align 1
  %2 = icmp eq i8** %0, null, !dbg !1425
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0, !dbg !1427
  store i8** %3, i8*** @file_list, align 8, !dbg !1428, !tbaa !744
  ret void, !dbg !1429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !99 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !157, metadata !DIExpression()), !dbg !1430
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1431
  br i1 %2, label %30, label %3, !dbg !1433

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1434, !tbaa !744
  %5 = icmp eq i8* %4, null, !dbg !1434
  br i1 %5, label %6, label %7, !dbg !1438

; <label>:6:                                      ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.30, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.31, i64 0, i64 0), i32 341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.next_file, i64 0, i64 0)) #15, !dbg !1434
  unreachable, !dbg !1434

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1439, metadata !DIExpression()), !dbg !1444
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1447
  %9 = load i32, i32* %8, align 8, !dbg !1447, !tbaa !1448
  %10 = and i32 %9, 32, !dbg !1447
  %11 = icmp eq i32 %10, 0, !dbg !1449
  br i1 %11, label %17, label %12, !dbg !1450

; <label>:12:                                     ; preds = %7
  %13 = tail call i32* @__errno_location() #17, !dbg !1451
  %14 = load i32, i32* %13, align 4, !dbg !1451, !tbaa !858
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %4) #10, !dbg !1453
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %15) #10, !dbg !1454
  store i32 1, i32* @exit_status, align 4, !dbg !1455, !tbaa !858
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1456, !tbaa !744
  br label %17, !dbg !1458

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i8* [ %4, %7 ], [ %16, %12 ], !dbg !1456
  %19 = tail call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #14, !dbg !1456
  %20 = icmp eq i32 %19, 0, !dbg !1456
  br i1 %20, label %21, label %22, !dbg !1459

; <label>:21:                                     ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #10, !dbg !1460
  br label %30, !dbg !1460

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #10, !dbg !1461
  %24 = icmp eq i32 %23, 0, !dbg !1463
  br i1 %24, label %30, label %25, !dbg !1464

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #17, !dbg !1465
  %27 = load i32, i32* %26, align 4, !dbg !1465, !tbaa !858
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1467, !tbaa !744
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #10, !dbg !1467
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %29) #10, !dbg !1468
  store i32 1, i32* @exit_status, align 4, !dbg !1469, !tbaa !858
  br label %30, !dbg !1470

; <label>:30:                                     ; preds = %22, %1, %21, %25
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1471, !tbaa !744
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1471
  store i8** %32, i8*** @file_list, align 8, !dbg !1471, !tbaa !744
  %33 = load i8*, i8** %31, align 8, !dbg !1472, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %33, metadata !158, metadata !DIExpression()), !dbg !1473
  %34 = icmp eq i8* %33, null, !dbg !1474
  br i1 %34, label %55, label %35, !dbg !1475

; <label>:35:                                     ; preds = %30, %47
  %36 = phi i8* [ %53, %47 ], [ %33, %30 ]
  %37 = tail call i32 @strcmp(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #14, !dbg !1476
  %38 = icmp eq i32 %37, 0, !dbg !1476
  br i1 %38, label %39, label %41, !dbg !1479

; <label>:39:                                     ; preds = %35
  store i1 true, i1* @have_read_stdin, align 1
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1480, !tbaa !744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !157, metadata !DIExpression()), !dbg !1430
  br label %43, !dbg !1482

; <label>:41:                                     ; preds = %35
  %42 = tail call %struct._IO_FILE* @fopen(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.33, i64 0, i64 0)), !dbg !1483
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !157, metadata !DIExpression()), !dbg !1430
  br label %43

; <label>:43:                                     ; preds = %41, %39
  %44 = phi %struct._IO_FILE* [ %40, %39 ], [ %42, %41 ], !dbg !1484
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1430
  %45 = icmp eq %struct._IO_FILE* %44, null, !dbg !1485
  br i1 %45, label %47, label %46, !dbg !1487

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1430
  store i8* %36, i8** @next_file.prev_file, align 8, !dbg !1488, !tbaa !744
  tail call void @fadvise(%struct._IO_FILE* nonnull %44, i32 2) #10, !dbg !1490
  br label %55, !dbg !1491

; <label>:47:                                     ; preds = %43
  %48 = tail call i32* @__errno_location() #17, !dbg !1492
  %49 = load i32, i32* %48, align 4, !dbg !1492, !tbaa !858
  %50 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %36) #10, !dbg !1493
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %50) #10, !dbg !1494
  store i32 1, i32* @exit_status, align 4, !dbg !1495, !tbaa !858
  %51 = load i8**, i8*** @file_list, align 8, !dbg !1471, !tbaa !744
  %52 = getelementptr inbounds i8*, i8** %51, i64 1, !dbg !1471
  store i8** %52, i8*** @file_list, align 8, !dbg !1471, !tbaa !744
  %53 = load i8*, i8** %51, align 8, !dbg !1472, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %53, metadata !158, metadata !DIExpression()), !dbg !1473
  %54 = icmp eq i8* %53, null, !dbg !1474
  br i1 %54, label %55, label %35, !dbg !1475, !llvm.loop !1496

; <label>:55:                                     ; preds = %47, %30, %46
  %56 = phi %struct._IO_FILE* [ %44, %46 ], [ null, %30 ], [ null, %47 ], !dbg !1498
  ret %struct._IO_FILE* %56, !dbg !1499
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #7 !dbg !1500 {
  %1 = load i1, i1* @have_read_stdin, align 1
  br i1 %1, label %2, label %9, !dbg !1501

; <label>:2:                                      ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1503, !tbaa !744
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #10, !dbg !1504
  %5 = icmp eq i32 %4, 0, !dbg !1505
  br i1 %5, label %9, label %6, !dbg !1506

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno_location() #17, !dbg !1507
  %8 = load i32, i32* %7, align 4, !dbg !1507, !tbaa !858
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #10, !dbg !1507
  unreachable, !dbg !1507

; <label>:9:                                      ; preds = %2, %0
  ret void, !dbg !1508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_tab_list_info() local_unnamed_addr #7 !dbg !1509 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11.38, i64 0, i64 0), i32 5) #10, !dbg !1510
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1510, !tbaa !744
  %3 = tail call i32 @fputs_unlocked(i8* %1, %struct._IO_FILE* %2), !dbg !1510
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.12.39, i64 0, i64 0), i32 5) #10, !dbg !1511
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1511, !tbaa !744
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1511
  ret void, !dbg !1512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1513 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i8* %0, i8** @file_name, align 8, !dbg !1517, !tbaa !744
  ret void, !dbg !1518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1519 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1525, !tbaa !827
  ret void, !dbg !1526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1527 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1532, !tbaa !744
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1533
  %3 = icmp eq i32 %2, 0, !dbg !1534
  br i1 %3, label %22, label %4, !dbg !1535

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1536, !tbaa !827, !range !985
  %6 = icmp eq i8 %5, 0, !dbg !1536
  br i1 %6, label %11, label %7, !dbg !1537

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1538
  %9 = load i32, i32* %8, align 4, !dbg !1538, !tbaa !858
  %10 = icmp eq i32 %9, 32, !dbg !1539
  br i1 %10, label %22, label %11, !dbg !1540

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !1541
  call void @llvm.dbg.value(metadata i8* %12, metadata !1529, metadata !DIExpression()), !dbg !1542
  %13 = load i8*, i8** @file_name, align 8, !dbg !1543, !tbaa !744
  %14 = icmp eq i8* %13, null, !dbg !1543
  %15 = tail call i32* @__errno_location() #17, !dbg !1545
  %16 = load i32, i32* %15, align 4, !dbg !1545, !tbaa !858
  br i1 %14, label %19, label %17, !dbg !1546

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1547
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.46, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1548
  br label %20, !dbg !1548

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.47, i64 0, i64 0), i8* %12) #10, !dbg !1549
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1550, !tbaa !858
  tail call void @_exit(i32 %21) #15, !dbg !1551
  unreachable, !dbg !1551

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1552, !tbaa !744
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1554
  %25 = icmp eq i32 %24, 0, !dbg !1555
  br i1 %25, label %28, label %26, !dbg !1556

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1557, !tbaa !858
  tail call void @_exit(i32 %27) #15, !dbg !1558
  unreachable, !dbg !1558

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1559
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1560 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1568, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64 %1, metadata !1569, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i64 %2, metadata !1570, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 %3, metadata !1571, metadata !DIExpression()), !dbg !1577
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %5, metadata !1572, metadata !DIExpression()), !dbg !1578
  ret void, !dbg !1579
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1580 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1618, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i32 %1, metadata !1619, metadata !DIExpression()), !dbg !1621
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1622
  br i1 %3, label %7, label %4, !dbg !1624

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %5, metadata !1568, metadata !DIExpression()) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i64 0, metadata !1569, metadata !DIExpression()) #10, !dbg !1628
  call void @llvm.dbg.value(metadata i64 0, metadata !1570, metadata !DIExpression()) #10, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %1, metadata !1571, metadata !DIExpression()) #10, !dbg !1630
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %6, metadata !1572, metadata !DIExpression()) #10, !dbg !1631
  br label %7, !dbg !1632

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1633
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1634 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1636, metadata !DIExpression()), !dbg !1639
  %2 = icmp eq i8* %0, null, !dbg !1640
  br i1 %2, label %3, label %6, !dbg !1642

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1643, !tbaa !744
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1645
  tail call void @abort() #15, !dbg !1646
  unreachable, !dbg !1646

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1647
  call void @llvm.dbg.value(metadata i8* %7, metadata !1637, metadata !DIExpression()), !dbg !1648
  %8 = icmp eq i8* %7, null, !dbg !1649
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1650
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %10, metadata !1638, metadata !DIExpression()), !dbg !1652
  %11 = ptrtoint i8* %10 to i64, !dbg !1653
  %12 = ptrtoint i8* %0 to i64, !dbg !1653
  %13 = sub i64 %11, %12, !dbg !1653
  %14 = icmp sgt i64 %13, 6, !dbg !1655
  br i1 %14, label %15, label %24, !dbg !1656

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1657
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #14, !dbg !1658
  %18 = icmp eq i32 %17, 0, !dbg !1659
  br i1 %18, label %19, label %24, !dbg !1660

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1636, metadata !DIExpression()), !dbg !1639
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #14, !dbg !1661
  %21 = icmp eq i32 %20, 0, !dbg !1664
  br i1 %21, label %22, label %24, !dbg !1665

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %23, metadata !1636, metadata !DIExpression()), !dbg !1639
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1668, !tbaa !744
  br label %24, !dbg !1669

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1636, metadata !DIExpression()), !dbg !1639
  store i8* %25, i8** @program_name, align 8, !dbg !1670, !tbaa !744
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1671, !tbaa !744
  ret void, !dbg !1672
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1673 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1678, metadata !DIExpression()), !dbg !1681
  %2 = tail call i32* @__errno_location() #17, !dbg !1682
  %3 = load i32, i32* %2, align 4, !dbg !1682, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %3, metadata !1679, metadata !DIExpression()), !dbg !1683
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1684
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1684
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1684
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1685
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1680, metadata !DIExpression()), !dbg !1686
  store i32 %3, i32* %2, align 4, !dbg !1687, !tbaa !858
  ret %struct.quoting_options* %8, !dbg !1688
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1689 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1695, metadata !DIExpression()), !dbg !1696
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1697
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1697
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1698
  %5 = load i32, i32* %4, align 8, !dbg !1698, !tbaa !1699
  ret i32 %5, !dbg !1701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1702 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1706, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i32 %1, metadata !1707, metadata !DIExpression()), !dbg !1709
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1710
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1710
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1711
  store i32 %1, i32* %5, align 8, !dbg !1712, !tbaa !1699
  ret void, !dbg !1713
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1714 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1718, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %1, metadata !1719, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i32 %2, metadata !1720, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %1, metadata !1721, metadata !DIExpression()), !dbg !1729
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1730
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1730
  %6 = lshr i8 %1, 5, !dbg !1731
  %7 = zext i8 %6 to i64, !dbg !1731
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1732
  call void @llvm.dbg.value(metadata i32* %8, metadata !1722, metadata !DIExpression()), !dbg !1733
  %9 = and i8 %1, 31, !dbg !1734
  %10 = zext i8 %9 to i32, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %10, metadata !1724, metadata !DIExpression()), !dbg !1735
  %11 = load i32, i32* %8, align 4, !dbg !1736, !tbaa !858
  %12 = lshr i32 %11, %10, !dbg !1737
  %13 = and i32 %12, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %13, metadata !1725, metadata !DIExpression()), !dbg !1739
  %14 = and i32 %2, 1, !dbg !1740
  %15 = xor i32 %13, %14, !dbg !1741
  %16 = shl i32 %15, %10, !dbg !1742
  %17 = xor i32 %16, %11, !dbg !1743
  store i32 %17, i32* %8, align 4, !dbg !1743, !tbaa !858
  ret i32 %13, !dbg !1744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1745 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1749, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i32 %1, metadata !1750, metadata !DIExpression()), !dbg !1753
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1754
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1756
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1749, metadata !DIExpression()), !dbg !1752
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1757
  %6 = load i32, i32* %5, align 4, !dbg !1757, !tbaa !1758
  call void @llvm.dbg.value(metadata i32 %6, metadata !1751, metadata !DIExpression()), !dbg !1759
  store i32 %1, i32* %5, align 4, !dbg !1760, !tbaa !1758
  ret i32 %6, !dbg !1761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1762 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1766, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8* %1, metadata !1767, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8* %2, metadata !1768, metadata !DIExpression()), !dbg !1771
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1772
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1774
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1766, metadata !DIExpression()), !dbg !1769
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1775
  store i32 10, i32* %6, align 8, !dbg !1776, !tbaa !1699
  %7 = icmp ne i8* %1, null, !dbg !1777
  %8 = icmp ne i8* %2, null, !dbg !1779
  %9 = and i1 %7, %8, !dbg !1780
  br i1 %9, label %11, label %10, !dbg !1780

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1781
  unreachable, !dbg !1781

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1782
  store i8* %1, i8** %12, align 8, !dbg !1783, !tbaa !1784
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1785
  store i8* %2, i8** %13, align 8, !dbg !1786, !tbaa !1787
  ret void, !dbg !1788
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1793, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %1, metadata !1794, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %2, metadata !1795, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %3, metadata !1796, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1797, metadata !DIExpression()), !dbg !1805
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1806
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1806
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1798, metadata !DIExpression()), !dbg !1807
  %8 = tail call i32* @__errno_location() #17, !dbg !1808
  %9 = load i32, i32* %8, align 4, !dbg !1808, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %9, metadata !1799, metadata !DIExpression()), !dbg !1809
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1810
  %11 = load i32, i32* %10, align 8, !dbg !1810, !tbaa !1699
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1811
  %13 = load i32, i32* %12, align 4, !dbg !1811, !tbaa !1758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1812
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1813
  %16 = load i8*, i8** %15, align 8, !dbg !1813, !tbaa !1784
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1814
  %18 = load i8*, i8** %17, align 8, !dbg !1814, !tbaa !1787
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1815
  call void @llvm.dbg.value(metadata i64 %19, metadata !1800, metadata !DIExpression()), !dbg !1816
  store i32 %9, i32* %8, align 4, !dbg !1817, !tbaa !858
  ret i64 %19, !dbg !1818
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1819 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1825, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %1, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %2, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %3, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 %4, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %5, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32* %6, metadata !1831, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8* %7, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %8, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8* null, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1902
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1903
  %14 = icmp eq i64 %13, 1, !dbg !1904
  %15 = lshr i32 %5, 1, !dbg !1905
  %16 = trunc i32 %15 to i8, !dbg !1905
  %17 = and i8 %16, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i8 %17, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 1, metadata !1844, metadata !DIExpression()), !dbg !1908
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1909

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1899
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1900
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1901
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1902
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1910
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1906
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1907
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1908
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %39, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %38, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %37, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %36, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %35, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %34, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %33, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %32, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %31, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 0, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %30, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %29, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %28, metadata !1829, metadata !DIExpression()), !dbg !1893
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
  ], !dbg !1912

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 1, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %36, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 5, metadata !1829, metadata !DIExpression()), !dbg !1893
  br label %93, !dbg !1913

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 5, metadata !1829, metadata !DIExpression()), !dbg !1893
  %43 = and i8 %36, 1, !dbg !1914
  %44 = icmp eq i8 %43, 0, !dbg !1914
  br i1 %44, label %45, label %93, !dbg !1913

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1916
  br i1 %46, label %93, label %47, !dbg !1919

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1916, !tbaa !964
  br label %93, !dbg !1916

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %28), !dbg !1920
  call void @llvm.dbg.value(metadata i8* %49, metadata !1832, metadata !DIExpression()), !dbg !1896
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %28), !dbg !1924
  call void @llvm.dbg.value(metadata i8* %50, metadata !1833, metadata !DIExpression()), !dbg !1897
  br label %51, !dbg !1925

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %52, metadata !1832, metadata !DIExpression()), !dbg !1896
  %54 = and i8 %36, 1, !dbg !1926
  %55 = icmp eq i8 %54, 0, !dbg !1926
  br i1 %55, label %56, label %71, !dbg !1928

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 0, metadata !1835, metadata !DIExpression()), !dbg !1898
  %57 = load i8, i8* %52, align 1, !dbg !1929, !tbaa !964
  %58 = icmp eq i8 %57, 0, !dbg !1932
  br i1 %58, label %71, label %59, !dbg !1932

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %62, metadata !1835, metadata !DIExpression()), !dbg !1898
  %63 = icmp ult i64 %62, %40, !dbg !1933
  br i1 %63, label %64, label %66, !dbg !1936

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1933
  store i8 %60, i8* %65, align 1, !dbg !1933, !tbaa !964
  br label %66, !dbg !1933

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1936
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1937
  call void @llvm.dbg.value(metadata i8* %68, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %67, metadata !1835, metadata !DIExpression()), !dbg !1898
  %69 = load i8, i8* %68, align 1, !dbg !1929, !tbaa !964
  %70 = icmp eq i8 %69, 0, !dbg !1932
  br i1 %70, label %71, label %59, !dbg !1932, !llvm.loop !1938

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1898
  call void @llvm.dbg.value(metadata i64 %72, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8* %53, metadata !1837, metadata !DIExpression()), !dbg !1900
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %73, metadata !1838, metadata !DIExpression()), !dbg !1901
  br label %93, !dbg !1941

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1902
  br label %75, !dbg !1942

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1910
  call void @llvm.dbg.value(metadata i8 %76, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 1, metadata !1841, metadata !DIExpression()), !dbg !1905
  br label %77, !dbg !1943

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1902
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1910
  call void @llvm.dbg.value(metadata i8 %79, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %78, metadata !1839, metadata !DIExpression()), !dbg !1902
  %80 = and i8 %79, 1, !dbg !1944
  %81 = icmp eq i8 %80, 0, !dbg !1944
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1946
  br label %83, !dbg !1946

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1947
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %85, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %84, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1893
  %86 = and i8 %85, 1, !dbg !1948
  %87 = icmp eq i8 %86, 0, !dbg !1948
  br i1 %87, label %88, label %93, !dbg !1950

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1951
  br i1 %89, label %93, label %90, !dbg !1954

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1951, !tbaa !964
  br label %93, !dbg !1951

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1841, metadata !DIExpression()), !dbg !1905
  br label %93, !dbg !1955

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1956
  unreachable, !dbg !1956

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1898
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], !dbg !1910
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1910
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1910
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8 %101, metadata !1841, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %99, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %97, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %94, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 0, metadata !1834, metadata !DIExpression()), !dbg !1958
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
  br label %121, !dbg !1959

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1960
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1898
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1899
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1906
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1907
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1908
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %125, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %122, metadata !1834, metadata !DIExpression()), !dbg !1958
  %130 = icmp eq i64 %125, -1, !dbg !1961
  br i1 %130, label %131, label %135, !dbg !1962

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1963
  %133 = load i8, i8* %132, align 1, !dbg !1963, !tbaa !964
  %134 = icmp eq i8 %133, 0, !dbg !1964
  br i1 %134, label %617, label %137, !dbg !1965

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1966
  br i1 %136, label %617, label %137, !dbg !1965

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1852, metadata !DIExpression()), !dbg !1969
  br i1 %107, label %138, label %153, !dbg !1970

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1972
  %140 = and i1 %108, %130, !dbg !1973
  br i1 %140, label %141, label %143, !dbg !1973

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %142, metadata !1828, metadata !DIExpression()), !dbg !1892
  br label %143, !dbg !1975

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1828, metadata !DIExpression()), !dbg !1892
  %145 = icmp ugt i64 %139, %144, !dbg !1976
  br i1 %145, label %153, label %146, !dbg !1977

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1978
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1979
  %149 = icmp ne i32 %148, 0, !dbg !1980
  %150 = or i1 %149, %110, !dbg !1981
  %151 = xor i1 %149, true, !dbg !1981
  %152 = zext i1 %151 to i8, !dbg !1981
  br i1 %150, label %153, label %661, !dbg !1981

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1982
  call void @llvm.dbg.value(metadata i8 %155, metadata !1850, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %154, metadata !1828, metadata !DIExpression()), !dbg !1892
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1983
  %157 = load i8, i8* %156, align 1, !dbg !1983, !tbaa !964
  call void @llvm.dbg.value(metadata i8 %157, metadata !1845, metadata !DIExpression()), !dbg !1984
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
  ], !dbg !1985

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1986

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1987

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1968
  %161 = and i8 %126, 1, !dbg !1991
  %162 = icmp eq i8 %161, 0, !dbg !1991
  %163 = and i1 %114, %162, !dbg !1991
  br i1 %163, label %164, label %180, !dbg !1991

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1993
  br i1 %165, label %166, label %168, !dbg !1997

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1993
  store i8 39, i8* %167, align 1, !dbg !1993, !tbaa !964
  br label %168, !dbg !1993

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %169, metadata !1835, metadata !DIExpression()), !dbg !1898
  %170 = icmp ult i64 %169, %129, !dbg !1998
  br i1 %170, label %171, label %173, !dbg !2001

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1998
  store i8 36, i8* %172, align 1, !dbg !1998, !tbaa !964
  br label %173, !dbg !1998

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %174, metadata !1835, metadata !DIExpression()), !dbg !1898
  %175 = icmp ult i64 %174, %129, !dbg !2002
  br i1 %175, label %176, label %178, !dbg !2005

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2002
  store i8 39, i8* %177, align 1, !dbg !2002, !tbaa !964
  br label %178, !dbg !2002

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %179, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %180, !dbg !2006

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1957
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8 %182, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %181, metadata !1835, metadata !DIExpression()), !dbg !1898
  %183 = icmp ult i64 %181, %129, !dbg !2007
  br i1 %183, label %184, label %186, !dbg !2010

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2007
  store i8 92, i8* %185, align 1, !dbg !2007, !tbaa !964
  br label %186, !dbg !2007

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %187, metadata !1835, metadata !DIExpression()), !dbg !1898
  br i1 %104, label %188, label %478, !dbg !2011

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2013
  %190 = icmp ult i64 %189, %154, !dbg !2014
  br i1 %190, label %191, label %467, !dbg !2015

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2016
  %193 = load i8, i8* %192, align 1, !dbg !2016, !tbaa !964
  %194 = add i8 %193, -48, !dbg !2017
  %195 = icmp ult i8 %194, 10, !dbg !2017
  br i1 %195, label %196, label %467, !dbg !2017

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2018
  br i1 %197, label %198, label %200, !dbg !2022

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2018
  store i8 48, i8* %199, align 1, !dbg !2018, !tbaa !964
  br label %200, !dbg !2018

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %201, metadata !1835, metadata !DIExpression()), !dbg !1898
  %202 = icmp ult i64 %201, %129, !dbg !2023
  br i1 %202, label %203, label %205, !dbg !2026

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2023
  store i8 48, i8* %204, align 1, !dbg !2023, !tbaa !964
  br label %205, !dbg !2023

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %206, metadata !1835, metadata !DIExpression()), !dbg !1898
  br label %467, !dbg !2027

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2028

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2029

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2030

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2032

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2034
  %213 = icmp ult i64 %212, %154, !dbg !2035
  br i1 %213, label %214, label %467, !dbg !2036

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2037
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2038
  %217 = load i8, i8* %216, align 1, !dbg !2038, !tbaa !964
  %218 = icmp eq i8 %217, 63, !dbg !2039
  br i1 %218, label %219, label %467, !dbg !2040

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2041
  %221 = load i8, i8* %220, align 1, !dbg !2041, !tbaa !964
  %222 = sext i8 %221 to i32, !dbg !2041
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
  ], !dbg !2042

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2043

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1845, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i64 %212, metadata !1834, metadata !DIExpression()), !dbg !1958
  %225 = icmp ult i64 %123, %129, !dbg !2045
  br i1 %225, label %226, label %228, !dbg !2048

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2045
  store i8 63, i8* %227, align 1, !dbg !2045, !tbaa !964
  br label %228, !dbg !2045

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %229, metadata !1835, metadata !DIExpression()), !dbg !1898
  %230 = icmp ult i64 %229, %129, !dbg !2049
  br i1 %230, label %231, label %233, !dbg !2052

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2049
  store i8 34, i8* %232, align 1, !dbg !2049, !tbaa !964
  br label %233, !dbg !2049

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %234, metadata !1835, metadata !DIExpression()), !dbg !1898
  %235 = icmp ult i64 %234, %129, !dbg !2053
  br i1 %235, label %236, label %238, !dbg !2056

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2053
  store i8 34, i8* %237, align 1, !dbg !2053, !tbaa !964
  br label %238, !dbg !2053

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %239, metadata !1835, metadata !DIExpression()), !dbg !1898
  %240 = icmp ult i64 %239, %129, !dbg !2057
  br i1 %240, label %241, label %243, !dbg !2060

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2057
  store i8 63, i8* %242, align 1, !dbg !2057, !tbaa !964
  br label %243, !dbg !2057

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %244, metadata !1835, metadata !DIExpression()), !dbg !1898
  br label %467, !dbg !2061

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1849, metadata !DIExpression()), !dbg !2062
  br label %255, !dbg !2063

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1849, metadata !DIExpression()), !dbg !2062
  br label %255, !dbg !2064

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1849, metadata !DIExpression()), !dbg !2062
  br label %253, !dbg !2065

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1849, metadata !DIExpression()), !dbg !2062
  br label %253, !dbg !2066

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1849, metadata !DIExpression()), !dbg !2062
  br label %255, !dbg !2067

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1849, metadata !DIExpression()), !dbg !2062
  br i1 %114, label %251, label %252, !dbg !2068

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2069

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2072

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2074
  call void @llvm.dbg.value(metadata i8 %254, metadata !1849, metadata !DIExpression()), !dbg !2062
  br i1 %113, label %255, label %661, !dbg !2075

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2074
  call void @llvm.dbg.value(metadata i8 %256, metadata !1849, metadata !DIExpression()), !dbg !2062
  br i1 %103, label %524, label %478, !dbg !2077

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2078
  br i1 %258, label %259, label %264, !dbg !2080

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2081, !tbaa !964
  %261 = icmp ne i8 %260, 0, !dbg !2082
  %262 = icmp ne i64 %122, 0, !dbg !2083
  %263 = or i1 %262, %261, !dbg !2085
  br i1 %263, label %467, label %270, !dbg !2085

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2086
  %266 = icmp ne i64 %122, 0, !dbg !2083
  %267 = or i1 %266, %265, !dbg !2080
  br i1 %267, label %467, label %270, !dbg !2080

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2083
  br i1 %269, label %270, label %467, !dbg !2087

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1852, metadata !DIExpression()), !dbg !1969
  br label %271, !dbg !2088

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2074
  call void @llvm.dbg.value(metadata i8 %272, metadata !1852, metadata !DIExpression()), !dbg !1969
  br i1 %113, label %467, label %661, !dbg !2089

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 1, metadata !1852, metadata !DIExpression()), !dbg !1969
  br i1 %114, label %274, label %467, !dbg !2091

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2092

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2095
  %277 = icmp ne i64 %124, 0, !dbg !2097
  %278 = or i1 %277, %276, !dbg !2098
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2098
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %280, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %279, metadata !1836, metadata !DIExpression()), !dbg !1899
  %281 = icmp ult i64 %123, %280, !dbg !2099
  br i1 %281, label %282, label %284, !dbg !2102

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2099
  store i8 39, i8* %283, align 1, !dbg !2099, !tbaa !964
  br label %284, !dbg !2099

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %285, metadata !1835, metadata !DIExpression()), !dbg !1898
  %286 = icmp ult i64 %285, %280, !dbg !2103
  br i1 %286, label %287, label %289, !dbg !2106

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2103
  store i8 92, i8* %288, align 1, !dbg !2103, !tbaa !964
  br label %289, !dbg !2103

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %290, metadata !1835, metadata !DIExpression()), !dbg !1898
  %291 = icmp ult i64 %290, %280, !dbg !2107
  br i1 %291, label %292, label %294, !dbg !2110

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2107
  store i8 39, i8* %293, align 1, !dbg !2107, !tbaa !964
  br label %294, !dbg !2107

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %295, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %467, !dbg !2111

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2112

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1853, metadata !DIExpression()), !dbg !2113
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2114
  %299 = load i16*, i16** %298, align 8, !dbg !2114, !tbaa !744
  %300 = zext i8 %157 to i64, !dbg !2114
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2114
  %302 = load i16, i16* %301, align 2, !dbg !2114, !tbaa !976
  %303 = lshr i16 %302, 14, !dbg !2116
  %304 = trunc i16 %303 to i8, !dbg !2116
  %305 = and i8 %304, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i8 %305, metadata !1856, metadata !DIExpression()), !dbg !2117
  br label %359, !dbg !2118

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2119
  store i64 0, i64* %10, align 8, !dbg !2120
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8 1, metadata !1856, metadata !DIExpression()), !dbg !2117
  %307 = icmp eq i64 %154, -1, !dbg !2121
  br i1 %307, label %308, label %310, !dbg !2123

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %309, metadata !1828, metadata !DIExpression()), !dbg !1892
  br label %310, !dbg !2125

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2126
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  br label %312, !dbg !2127

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2128
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2129
  call void @llvm.dbg.value(metadata i8 %314, metadata !1856, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2130
  %315 = add i64 %313, %122, !dbg !2131
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2132
  %317 = sub i64 %311, %315, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1857, metadata !DIExpression(DW_OP_deref)), !dbg !2134
  call void @llvm.dbg.value(metadata i32* %12, metadata !1875, metadata !DIExpression(DW_OP_deref)), !dbg !2135
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %318, metadata !1878, metadata !DIExpression()), !dbg !2137
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2138

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  %320 = icmp ugt i64 %311, %315, !dbg !2139
  br i1 %320, label %321, label %344, !dbg !2141

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1853, metadata !DIExpression()), !dbg !2113
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2142
  %325 = load i8, i8* %324, align 1, !dbg !2142, !tbaa !964
  %326 = icmp eq i8 %325, 0, !dbg !2141
  br i1 %326, label %344, label %327, !dbg !2143

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %328, metadata !1853, metadata !DIExpression()), !dbg !2113
  %329 = add i64 %328, %122, !dbg !2145
  %330 = icmp ult i64 %329, %311, !dbg !2139
  br i1 %330, label %321, label %344, !dbg !2141, !llvm.loop !2146

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2147
  %333 = and i1 %116, %332, !dbg !2150
  call void @llvm.dbg.value(metadata i64 1, metadata !1879, metadata !DIExpression()), !dbg !2151
  br i1 %333, label %334, label %347, !dbg !2150

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1879, metadata !DIExpression()), !dbg !2151
  %336 = add i64 %335, %315, !dbg !2152
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2153
  %338 = load i8, i8* %337, align 1, !dbg !2153, !tbaa !964
  %339 = sext i8 %338 to i32, !dbg !2153
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2154

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %341, metadata !1879, metadata !DIExpression()), !dbg !2151
  %342 = icmp ult i64 %341, %318, !dbg !2147
  br i1 %342, label %334, label %347, !dbg !2156, !llvm.loop !2157

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8 %314, metadata !1856, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %313, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8 %314, metadata !1856, metadata !DIExpression()), !dbg !2117
  br label %344, !dbg !2159

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1856, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %352, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2159
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2160, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %348, metadata !1875, metadata !DIExpression()), !dbg !2135
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !2162
  %350 = icmp eq i32 %349, 0, !dbg !2162
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2163
  call void @llvm.dbg.value(metadata i8 %351, metadata !1856, metadata !DIExpression()), !dbg !2117
  %352 = add i64 %318, %313, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %352, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8 %351, metadata !1856, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %352, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2159
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1857, metadata !DIExpression(DW_OP_deref)), !dbg !2134
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2165
  %354 = icmp eq i32 %353, 0, !dbg !2166
  br i1 %354, label %312, label %355, !dbg !2167, !llvm.loop !2168

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2170
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 2, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 %94, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %94, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %94, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %94, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %94, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %100, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %311, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %351, metadata !1856, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %352, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2170
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2171
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2172
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2172
  call void @llvm.dbg.value(metadata i8 %362, metadata !1856, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %361, metadata !1853, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %360, metadata !1828, metadata !DIExpression()), !dbg !1892
  %363 = and i8 %362, 1, !dbg !2173
  %364 = icmp ne i8 %363, 0, !dbg !2173
  call void @llvm.dbg.value(metadata i8 %363, metadata !1852, metadata !DIExpression()), !dbg !1969
  %365 = icmp ult i64 %361, 2, !dbg !2174
  %366 = or i1 %364, %115, !dbg !2175
  %367 = and i1 %365, %366, !dbg !2176
  br i1 %367, label %467, label %368, !dbg !2176

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %369, metadata !1886, metadata !DIExpression()), !dbg !2178
  br label %370, !dbg !2179

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2180
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2184
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1906
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2180
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2186
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %376, metadata !1851, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %375, metadata !1850, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %374, metadata !1845, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 %373, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %372, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %371, metadata !1834, metadata !DIExpression()), !dbg !1958
  br i1 %366, label %423, label %377, !dbg !2190

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2191

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1968
  %379 = and i8 %373, 1, !dbg !2194
  %380 = icmp eq i8 %379, 0, !dbg !2194
  %381 = and i1 %114, %380, !dbg !2194
  br i1 %381, label %382, label %398, !dbg !2194

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2196
  br i1 %383, label %384, label %386, !dbg !2200

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2196
  store i8 39, i8* %385, align 1, !dbg !2196, !tbaa !964
  br label %386, !dbg !2196

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %387, metadata !1835, metadata !DIExpression()), !dbg !1898
  %388 = icmp ult i64 %387, %129, !dbg !2201
  br i1 %388, label %389, label %391, !dbg !2204

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2201
  store i8 36, i8* %390, align 1, !dbg !2201, !tbaa !964
  br label %391, !dbg !2201

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %392, metadata !1835, metadata !DIExpression()), !dbg !1898
  %393 = icmp ult i64 %392, %129, !dbg !2205
  br i1 %393, label %394, label %396, !dbg !2208

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2205
  store i8 39, i8* %395, align 1, !dbg !2205, !tbaa !964
  br label %396, !dbg !2205

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %397, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %398, !dbg !2209

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1957
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8 %400, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %399, metadata !1835, metadata !DIExpression()), !dbg !1898
  %401 = icmp ult i64 %399, %129, !dbg !2210
  br i1 %401, label %402, label %404, !dbg !2213

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2210
  store i8 92, i8* %403, align 1, !dbg !2210, !tbaa !964
  br label %404, !dbg !2210

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %405, metadata !1835, metadata !DIExpression()), !dbg !1898
  %406 = icmp ult i64 %405, %129, !dbg !2214
  br i1 %406, label %407, label %411, !dbg !2217

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2214
  %409 = or i8 %408, 48, !dbg !2214
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2214
  store i8 %409, i8* %410, align 1, !dbg !2214, !tbaa !964
  br label %411, !dbg !2214

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %412, metadata !1835, metadata !DIExpression()), !dbg !1898
  %413 = icmp ult i64 %412, %129, !dbg !2218
  br i1 %413, label %414, label %419, !dbg !2221

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2218
  %416 = and i8 %415, 7, !dbg !2218
  %417 = or i8 %416, 48, !dbg !2218
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2218
  store i8 %417, i8* %418, align 1, !dbg !2218, !tbaa !964
  br label %419, !dbg !2218

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %420, metadata !1835, metadata !DIExpression()), !dbg !1898
  %421 = and i8 %374, 7, !dbg !2222
  %422 = or i8 %421, 48, !dbg !2223
  call void @llvm.dbg.value(metadata i8 %422, metadata !1845, metadata !DIExpression()), !dbg !1984
  br label %432, !dbg !2224

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2225
  %425 = icmp eq i8 %424, 0, !dbg !2225
  br i1 %425, label %432, label %426, !dbg !2226

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2227
  br i1 %427, label %428, label %430, !dbg !2230

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2227
  store i8 92, i8* %429, align 1, !dbg !2227, !tbaa !964
  br label %430, !dbg !2227

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %431, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1967
  br label %432, !dbg !2231

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2232
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1906
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2233
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2234
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2236
  call void @llvm.dbg.value(metadata i8 %437, metadata !1851, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %436, metadata !1850, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %435, metadata !1845, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 %434, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %433, metadata !1835, metadata !DIExpression()), !dbg !1898
  %438 = add i64 %371, 1, !dbg !2237
  %439 = icmp ugt i64 %369, %438, !dbg !2239
  br i1 %439, label %440, label %562, !dbg !2240

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2241
  %442 = icmp ne i8 %441, 0, !dbg !2241
  %443 = and i8 %437, 1, !dbg !2241
  %444 = icmp eq i8 %443, 0, !dbg !2241
  %445 = and i1 %442, %444, !dbg !2241
  br i1 %445, label %446, label %457, !dbg !2241

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2244
  br i1 %447, label %448, label %450, !dbg !2248

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2244
  store i8 39, i8* %449, align 1, !dbg !2244, !tbaa !964
  br label %450, !dbg !2244

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %451, metadata !1835, metadata !DIExpression()), !dbg !1898
  %452 = icmp ult i64 %451, %129, !dbg !2249
  br i1 %452, label %453, label %455, !dbg !2252

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2249
  store i8 39, i8* %454, align 1, !dbg !2249, !tbaa !964
  br label %455, !dbg !2249

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %456, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %457, !dbg !2253

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2254
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8 %459, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %458, metadata !1835, metadata !DIExpression()), !dbg !1898
  %460 = icmp ult i64 %458, %129, !dbg !2255
  br i1 %460, label %461, label %463, !dbg !2257

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2255
  store i8 %435, i8* %462, align 1, !dbg !2255, !tbaa !964
  br label %463, !dbg !2255

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %464, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %438, metadata !1834, metadata !DIExpression()), !dbg !1958
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2258
  %466 = load i8, i8* %465, align 1, !dbg !2258, !tbaa !964
  call void @llvm.dbg.value(metadata i8 %466, metadata !1845, metadata !DIExpression()), !dbg !1984
  br label %370, !dbg !2259, !llvm.loop !2260

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2263
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1957
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1899
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2264
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1957
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1957
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1982
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1982
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1982
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %476, metadata !1852, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %475, metadata !1851, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %155, metadata !1850, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %474, metadata !1845, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 %473, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %472, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %471, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %470, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %469, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %468, metadata !1834, metadata !DIExpression()), !dbg !1958
  br i1 %105, label %489, label %478, !dbg !2265

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
  br i1 %112, label %490, label %512, !dbg !2267

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2268

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
  %501 = lshr i8 %494, 5, !dbg !2269
  %502 = zext i8 %501 to i64, !dbg !2269
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2270
  %504 = load i32, i32* %503, align 4, !dbg !2270, !tbaa !858
  %505 = and i8 %494, 31, !dbg !2271
  %506 = zext i8 %505 to i32, !dbg !2271
  %507 = shl i32 1, %506, !dbg !2272
  %508 = and i32 %504, %507, !dbg !2272
  %509 = icmp eq i32 %508, 0, !dbg !2272
  %510 = icmp eq i8 %155, 0, !dbg !2273
  %511 = and i1 %510, %509, !dbg !2274
  br i1 %511, label %562, label %524, !dbg !2274

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
  %523 = icmp eq i8 %155, 0, !dbg !2273
  br i1 %523, label %562, label %524, !dbg !2275

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2276
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1957
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1899
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2264
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1906
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1907
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2277
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1982
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %532, metadata !1852, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %531, metadata !1845, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 %530, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %529, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %528, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %527, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %526, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %525, metadata !1834, metadata !DIExpression()), !dbg !1958
  br i1 %110, label %534, label %661, !dbg !2280

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1968
  %535 = and i8 %529, 1, !dbg !2282
  %536 = icmp eq i8 %535, 0, !dbg !2282
  %537 = and i1 %114, %536, !dbg !2282
  br i1 %537, label %538, label %554, !dbg !2282

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2284
  br i1 %539, label %540, label %542, !dbg !2288

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2284
  store i8 39, i8* %541, align 1, !dbg !2284, !tbaa !964
  br label %542, !dbg !2284

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %543, metadata !1835, metadata !DIExpression()), !dbg !1898
  %544 = icmp ult i64 %543, %533, !dbg !2289
  br i1 %544, label %545, label %547, !dbg !2292

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2289
  store i8 36, i8* %546, align 1, !dbg !2289, !tbaa !964
  br label %547, !dbg !2289

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %548, metadata !1835, metadata !DIExpression()), !dbg !1898
  %549 = icmp ult i64 %548, %533, !dbg !2293
  br i1 %549, label %550, label %552, !dbg !2296

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2293
  store i8 39, i8* %551, align 1, !dbg !2293, !tbaa !964
  br label %552, !dbg !2293

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %553, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %554, !dbg !2297

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2254
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8 %556, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %555, metadata !1835, metadata !DIExpression()), !dbg !1898
  %557 = icmp ult i64 %555, %533, !dbg !2298
  br i1 %557, label %558, label %560, !dbg !2301

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2298
  store i8 92, i8* %559, align 1, !dbg !2298, !tbaa !964
  br label %560, !dbg !2298

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %561, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %572, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %571, metadata !1852, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %570, metadata !1851, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %569, metadata !1845, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 %568, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %567, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %566, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %565, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %564, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %563, metadata !1834, metadata !DIExpression()), !dbg !1958
  br label %589, !dbg !2302

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2276
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1957
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1899
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2264
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1906
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1907
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2305
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1982
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1982
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %571, metadata !1852, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %570, metadata !1851, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %569, metadata !1845, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 %568, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %567, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %566, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %565, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %564, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %563, metadata !1834, metadata !DIExpression()), !dbg !1958
  %573 = and i8 %567, 1, !dbg !2302
  %574 = icmp ne i8 %573, 0, !dbg !2302
  %575 = and i8 %570, 1, !dbg !2302
  %576 = icmp eq i8 %575, 0, !dbg !2302
  %577 = and i1 %574, %576, !dbg !2302
  br i1 %577, label %578, label %589, !dbg !2302

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2306
  br i1 %579, label %580, label %582, !dbg !2310

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2306
  store i8 39, i8* %581, align 1, !dbg !2306, !tbaa !964
  br label %582, !dbg !2306

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %583, metadata !1835, metadata !DIExpression()), !dbg !1898
  %584 = icmp ult i64 %583, %572, !dbg !2311
  br i1 %584, label %585, label %587, !dbg !2314

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2311
  store i8 39, i8* %586, align 1, !dbg !2311, !tbaa !964
  br label %587, !dbg !2311

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %588, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %589, !dbg !2315

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2254
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8 %598, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %597, metadata !1835, metadata !DIExpression()), !dbg !1898
  %599 = icmp ult i64 %597, %590, !dbg !2316
  br i1 %599, label %600, label %602, !dbg !2319

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2316
  store i8 %592, i8* %601, align 1, !dbg !2316, !tbaa !964
  br label %602, !dbg !2316

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %603, metadata !1835, metadata !DIExpression()), !dbg !1898
  %604 = and i8 %591, 1, !dbg !2320
  %605 = icmp eq i8 %604, 0, !dbg !2320
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2322
  call void @llvm.dbg.value(metadata i8 %606, metadata !1844, metadata !DIExpression()), !dbg !1908
  br label %607, !dbg !2323

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2276
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1957
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1899
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2264
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1906
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1957
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1908
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %614, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %613, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %612, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %611, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %610, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %609, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %608, metadata !1834, metadata !DIExpression()), !dbg !1958
  %616 = add i64 %608, 1, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %616, metadata !1834, metadata !DIExpression()), !dbg !1958
  br label %121, !dbg !2325, !llvm.loop !2326

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %618, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %618, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %125, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %125, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %126, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  %619 = icmp eq i64 %123, 0, !dbg !2328
  %620 = and i1 %114, %619, !dbg !2330
  %621 = xor i1 %620, true, !dbg !2330
  %622 = or i1 %110, %621, !dbg !2330
  br i1 %622, label %623, label %661, !dbg !2330

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2331
  %625 = xor i1 %624, true, !dbg !2331
  %626 = and i8 %127, 1, !dbg !2333
  %627 = icmp eq i8 %626, 0, !dbg !2333
  %628 = or i1 %627, %625, !dbg !2331
  br i1 %628, label %638, label %629, !dbg !2331

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2334
  %631 = icmp eq i8 %630, 0, !dbg !2334
  br i1 %631, label %634, label %632, !dbg !2337

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %618, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %618, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %618, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %618, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %95, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %96, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %124, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %125, metadata !1828, metadata !DIExpression()), !dbg !1892
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2338
  br label %671, !dbg !2339

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2340
  %636 = icmp ne i64 %124, 0, !dbg !2342
  %637 = and i1 %636, %635, !dbg !2343
  br i1 %637, label %27, label %638, !dbg !2343

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %129, metadata !1826, metadata !DIExpression()), !dbg !1890
  %639 = icmp ne i8* %98, null, !dbg !2344
  %640 = and i1 %639, %110, !dbg !2346
  br i1 %640, label %641, label %656, !dbg !2346

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1835, metadata !DIExpression()), !dbg !1898
  %642 = load i8, i8* %98, align 1, !dbg !2347, !tbaa !964
  %643 = icmp eq i8 %642, 0, !dbg !2350
  br i1 %643, label %656, label %644, !dbg !2350

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %647, metadata !1835, metadata !DIExpression()), !dbg !1898
  %648 = icmp ult i64 %647, %129, !dbg !2351
  br i1 %648, label %649, label %651, !dbg !2354

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2351
  store i8 %645, i8* %650, align 1, !dbg !2351, !tbaa !964
  br label %651, !dbg !2351

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2354
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %653, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %652, metadata !1835, metadata !DIExpression()), !dbg !1898
  %654 = load i8, i8* %653, align 1, !dbg !2347, !tbaa !964
  %655 = icmp eq i8 %654, 0, !dbg !2350
  br i1 %655, label %656, label %644, !dbg !2350, !llvm.loop !2356

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1898
  call void @llvm.dbg.value(metadata i64 %657, metadata !1835, metadata !DIExpression()), !dbg !1898
  %658 = icmp ult i64 %657, %129, !dbg !2358
  br i1 %658, label %659, label %671, !dbg !2360

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2361
  store i8 0, i8* %660, align 1, !dbg !2362, !tbaa !964
  br label %671, !dbg !2361

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %663, metadata !1828, metadata !DIExpression()), !dbg !1892
  %665 = icmp ne i32 %662, 2, !dbg !2363
  %666 = icmp eq i8 %102, 0, !dbg !2365
  %667 = or i1 %665, %666, !dbg !2366
  call void @llvm.dbg.value(metadata i32 4, metadata !1829, metadata !DIExpression()), !dbg !1893
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %668, metadata !1829, metadata !DIExpression()), !dbg !1893
  %669 = and i32 %5, -3, !dbg !2367
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2368
  br label %671, !dbg !2369

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2370
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2375, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 %1, metadata !2376, metadata !DIExpression()), !dbg !2380
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2381
  call void @llvm.dbg.value(metadata i8* %3, metadata !2377, metadata !DIExpression()), !dbg !2382
  %4 = icmp eq i8* %3, %0, !dbg !2383
  br i1 %4, label %5, label %71, !dbg !2385

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2386
  call void @llvm.dbg.value(metadata i8* %6, metadata !2378, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8* %6, metadata !2388, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* null, metadata !2394, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 85, metadata !2395, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 84, metadata !2396, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 70, metadata !2397, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 45, metadata !2398, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 56, metadata !2399, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, metadata !2402, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2416
  %7 = load i8, i8* %6, align 1, !dbg !2417, !tbaa !964
  %8 = and i8 %7, -33, !dbg !2417
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2417

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2419, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* null, metadata !2424, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 84, metadata !2425, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 70, metadata !2426, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 45, metadata !2427, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 56, metadata !2428, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2445
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2446
  %11 = load i8, i8* %10, align 1, !dbg !2446, !tbaa !964
  %12 = and i8 %11, -33, !dbg !2446
  %13 = icmp eq i8 %12, 84, !dbg !2446
  br i1 %13, label %14, label %68, !dbg !2446

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2448, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* null, metadata !2453, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 70, metadata !2454, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 45, metadata !2455, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 56, metadata !2456, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 0, metadata !2457, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2458, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2472
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2473
  %16 = load i8, i8* %15, align 1, !dbg !2473, !tbaa !964
  %17 = and i8 %16, -33, !dbg !2473
  %18 = icmp eq i8 %17, 70, !dbg !2473
  br i1 %18, label %19, label %68, !dbg !2473

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* null, metadata !2480, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 45, metadata !2481, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 56, metadata !2482, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8 0, metadata !2485, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8 0, metadata !2486, metadata !DIExpression()), !dbg !2497
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2498
  %21 = load i8, i8* %20, align 1, !dbg !2498, !tbaa !964
  %22 = icmp eq i8 %21, 45, !dbg !2498
  br i1 %22, label %23, label %68, !dbg !2500

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2501, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* null, metadata !2506, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 56, metadata !2507, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, metadata !2508, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2509, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2521
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2522
  %25 = load i8, i8* %24, align 1, !dbg !2522, !tbaa !964
  %26 = icmp eq i8 %25, 56, !dbg !2522
  br i1 %26, label %27, label %68, !dbg !2524

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2525, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* null, metadata !2530, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2533, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2543
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2544
  %29 = load i8, i8* %28, align 1, !dbg !2544, !tbaa !964
  %30 = icmp eq i8 %29, 0, !dbg !2544
  br i1 %30, label %31, label %68, !dbg !2546

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2547, !tbaa !964
  %33 = icmp eq i8 %32, 96, !dbg !2548
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !2547
  br label %71, !dbg !2549

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2419, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* null, metadata !2424, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 66, metadata !2425, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 49, metadata !2426, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 56, metadata !2427, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 48, metadata !2428, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 51, metadata !2429, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 48, metadata !2430, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2562
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2563
  %37 = load i8, i8* %36, align 1, !dbg !2563, !tbaa !964
  %38 = and i8 %37, -33, !dbg !2563
  %39 = icmp eq i8 %38, 66, !dbg !2563
  br i1 %39, label %40, label %68, !dbg !2563

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2448, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* null, metadata !2453, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 49, metadata !2454, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 56, metadata !2455, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 48, metadata !2456, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 51, metadata !2457, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 48, metadata !2458, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2573
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2574
  %42 = load i8, i8* %41, align 1, !dbg !2574, !tbaa !964
  %43 = icmp eq i8 %42, 49, !dbg !2574
  br i1 %43, label %44, label %68, !dbg !2575

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* null, metadata !2480, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 56, metadata !2481, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 48, metadata !2482, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 51, metadata !2483, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 48, metadata !2484, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2485, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 0, metadata !2486, metadata !DIExpression()), !dbg !2584
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2585
  %46 = load i8, i8* %45, align 1, !dbg !2585, !tbaa !964
  %47 = icmp eq i8 %46, 56, !dbg !2585
  br i1 %47, label %48, label %68, !dbg !2586

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2501, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* null, metadata !2506, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 48, metadata !2507, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 51, metadata !2508, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 48, metadata !2509, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2594
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2595
  %50 = load i8, i8* %49, align 1, !dbg !2595, !tbaa !964
  %51 = icmp eq i8 %50, 48, !dbg !2595
  br i1 %51, label %52, label %68, !dbg !2596

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2525, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* null, metadata !2530, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 51, metadata !2531, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 48, metadata !2532, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8 0, metadata !2533, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2603
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2604
  %54 = load i8, i8* %53, align 1, !dbg !2604, !tbaa !964
  %55 = icmp eq i8 %54, 51, !dbg !2604
  br i1 %55, label %56, label %68, !dbg !2605

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2606, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* null, metadata !2611, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 48, metadata !2612, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 0, metadata !2613, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 0, metadata !2614, metadata !DIExpression()), !dbg !2622
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2623
  %58 = load i8, i8* %57, align 1, !dbg !2623, !tbaa !964
  %59 = icmp eq i8 %58, 48, !dbg !2623
  br i1 %59, label %60, label %68, !dbg !2625

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2626, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8* null, metadata !2631, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 0, metadata !2633, metadata !DIExpression()), !dbg !2640
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2641
  %62 = load i8, i8* %61, align 1, !dbg !2641, !tbaa !964
  %63 = icmp eq i8 %62, 0, !dbg !2641
  br i1 %63, label %64, label %68, !dbg !2643

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2644, !tbaa !964
  %66 = icmp eq i8 %65, 96, !dbg !2645
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !2644
  br label %71, !dbg !2646

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2647
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !2648
  br label %71, !dbg !2649

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2650
  ret i8* %72, !dbg !2651
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2652 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %1, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()) #10, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2667, metadata !DIExpression()) #10, !dbg !2677
  call void @llvm.dbg.value(metadata i64* null, metadata !2668, metadata !DIExpression()) #10, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2669, metadata !DIExpression()) #10, !dbg !2679
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2680
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2670, metadata !DIExpression()) #10, !dbg !2681
  %6 = tail call i32* @__errno_location() #17, !dbg !2682
  %7 = load i32, i32* %6, align 4, !dbg !2682, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %7, metadata !2671, metadata !DIExpression()) #10, !dbg !2683
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2684
  %9 = load i32, i32* %8, align 4, !dbg !2684, !tbaa !1758
  %10 = or i32 %9, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %10, metadata !2672, metadata !DIExpression()) #10, !dbg !2686
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2687
  %12 = load i32, i32* %11, align 8, !dbg !2687, !tbaa !1699
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2688
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2689
  %15 = load i8*, i8** %14, align 8, !dbg !2689, !tbaa !1784
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2690
  %17 = load i8*, i8** %16, align 8, !dbg !2690, !tbaa !1787
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2691
  %19 = add i64 %18, 1, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %19, metadata !2673, metadata !DIExpression()) #10, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %19, metadata !2694, metadata !DIExpression()) #10, !dbg !2699
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2701
  call void @llvm.dbg.value(metadata i8* %20, metadata !2674, metadata !DIExpression()) #10, !dbg !2702
  %21 = load i32, i32* %11, align 8, !dbg !2703, !tbaa !1699
  %22 = load i8*, i8** %14, align 8, !dbg !2704, !tbaa !1784
  %23 = load i8*, i8** %16, align 8, !dbg !2705, !tbaa !1787
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2706
  store i32 %7, i32* %6, align 4, !dbg !2707, !tbaa !858
  ret i8* %20, !dbg !2708
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %1, metadata !2667, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64* %2, metadata !2668, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2669, metadata !DIExpression()), !dbg !2712
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2713
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2713
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2670, metadata !DIExpression()), !dbg !2714
  %7 = tail call i32* @__errno_location() #17, !dbg !2715
  %8 = load i32, i32* %7, align 4, !dbg !2715, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %8, metadata !2671, metadata !DIExpression()), !dbg !2716
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2717
  %10 = load i32, i32* %9, align 4, !dbg !2717, !tbaa !1758
  %11 = icmp ne i64* %2, null, !dbg !2718
  %12 = xor i1 %11, true, !dbg !2718
  %13 = zext i1 %12 to i32, !dbg !2718
  %14 = or i32 %10, %13, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %14, metadata !2672, metadata !DIExpression()), !dbg !2720
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2721
  %16 = load i32, i32* %15, align 8, !dbg !2721, !tbaa !1699
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2722
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2723
  %19 = load i8*, i8** %18, align 8, !dbg !2723, !tbaa !1784
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2724
  %21 = load i8*, i8** %20, align 8, !dbg !2724, !tbaa !1787
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2725
  %23 = add i64 %22, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %23, metadata !2673, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %23, metadata !2694, metadata !DIExpression()) #10, !dbg !2728
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %24, metadata !2674, metadata !DIExpression()), !dbg !2731
  %25 = load i32, i32* %15, align 8, !dbg !2732, !tbaa !1699
  %26 = load i8*, i8** %18, align 8, !dbg !2733, !tbaa !1784
  %27 = load i8*, i8** %20, align 8, !dbg !2734, !tbaa !1787
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2735
  store i32 %8, i32* %7, align 4, !dbg !2736, !tbaa !858
  br i1 %11, label %29, label %30, !dbg !2737

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2738, !tbaa !925
  br label %30, !dbg !2740

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2741
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2742 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2746, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2744, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 1, metadata !2745, metadata !DIExpression()), !dbg !2748
  %2 = load i32, i32* @nslots, align 4, !dbg !2749, !tbaa !858
  %3 = icmp sgt i32 %2, 1, !dbg !2752
  br i1 %3, label %4, label %12, !dbg !2753

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2745, metadata !DIExpression()), !dbg !2748
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2754
  %7 = load i8*, i8** %6, align 8, !dbg !2754, !tbaa !2755
  tail call void @free(i8* %7) #10, !dbg !2757
  %8 = add nuw nsw i64 %5, 1, !dbg !2758
  call void @llvm.dbg.value(metadata i32 undef, metadata !2745, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2748
  %9 = load i32, i32* @nslots, align 4, !dbg !2749, !tbaa !858
  %10 = sext i32 %9 to i64, !dbg !2752
  %11 = icmp slt i64 %8, %10, !dbg !2752
  br i1 %11, label %4, label %12, !dbg !2753, !llvm.loop !2759

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2761
  %14 = load i8*, i8** %13, align 8, !dbg !2761, !tbaa !2755
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2763
  br i1 %15, label %17, label %16, !dbg !2764

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2765
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2767, !tbaa !2768
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2769, !tbaa !2755
  br label %17, !dbg !2770

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2771
  br i1 %18, label %21, label %19, !dbg !2773

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2774
  tail call void @free(i8* %20) #10, !dbg !2776
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2777, !tbaa !744
  br label %21, !dbg !2778

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2779, !tbaa !858
  ret void, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2781 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %1, metadata !2786, metadata !DIExpression()), !dbg !2788
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2789
  ret i8* %3, !dbg !2790
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %1, metadata !2796, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 %2, metadata !2797, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2798, metadata !DIExpression()), !dbg !2813
  %5 = tail call i32* @__errno_location() #17, !dbg !2814
  %6 = load i32, i32* %5, align 4, !dbg !2814, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %6, metadata !2799, metadata !DIExpression()), !dbg !2815
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2816, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2800, metadata !DIExpression()), !dbg !2817
  %8 = icmp slt i32 %0, 0, !dbg !2818
  br i1 %8, label %9, label %10, !dbg !2820

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2821
  unreachable, !dbg !2821

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2822, !tbaa !858
  %12 = icmp sgt i32 %11, %0, !dbg !2823
  br i1 %12, label %34, label %13, !dbg !2824

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2825
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2804, metadata !DIExpression()), !dbg !2826
  %15 = icmp eq i32 %0, 2147483647, !dbg !2827
  br i1 %15, label %16, label %17, !dbg !2829

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2830
  unreachable, !dbg !2830

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2831
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2831
  %20 = add nsw i32 %0, 1, !dbg !2832
  %21 = sext i32 %20 to i64, !dbg !2833
  %22 = shl nsw i64 %21, 4, !dbg !2834
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2835
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2835
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2800, metadata !DIExpression()), !dbg !2817
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2836, !tbaa !744
  br i1 %14, label %25, label %26, !dbg !2837

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2838, !tbaa.struct !2840
  br label %26, !dbg !2841

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2842, !tbaa !858
  %28 = sext i32 %27 to i64, !dbg !2843
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2843
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2844
  %31 = sub nsw i32 %20, %27, !dbg !2845
  %32 = sext i32 %31 to i64, !dbg !2846
  %33 = shl nsw i64 %32, 4, !dbg !2847
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2844
  store i32 %20, i32* @nslots, align 4, !dbg !2848, !tbaa !858
  br label %34, !dbg !2849

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2850
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2800, metadata !DIExpression()), !dbg !2817
  %36 = sext i32 %0 to i64, !dbg !2851
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2852
  %38 = load i64, i64* %37, align 8, !dbg !2852, !tbaa !2768
  call void @llvm.dbg.value(metadata i64 %38, metadata !2805, metadata !DIExpression()), !dbg !2853
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2854
  %40 = load i8*, i8** %39, align 8, !dbg !2854, !tbaa !2755
  call void @llvm.dbg.value(metadata i8* %40, metadata !2807, metadata !DIExpression()), !dbg !2855
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2856
  %42 = load i32, i32* %41, align 4, !dbg !2856, !tbaa !1758
  %43 = or i32 %42, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %43, metadata !2808, metadata !DIExpression()), !dbg !2858
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2859
  %45 = load i32, i32* %44, align 8, !dbg !2859, !tbaa !1699
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2860
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2861
  %48 = load i8*, i8** %47, align 8, !dbg !2861, !tbaa !1784
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2862
  %50 = load i8*, i8** %49, align 8, !dbg !2862, !tbaa !1787
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %51, metadata !2809, metadata !DIExpression()), !dbg !2864
  %52 = icmp ugt i64 %38, %51, !dbg !2865
  br i1 %52, label %63, label %53, !dbg !2867

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %54, metadata !2805, metadata !DIExpression()), !dbg !2853
  store i64 %54, i64* %37, align 8, !dbg !2870, !tbaa !2768
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2871
  br i1 %55, label %57, label %56, !dbg !2873

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2874
  br label %57, !dbg !2874

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2694, metadata !DIExpression()) #10, !dbg !2875
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %58, metadata !2807, metadata !DIExpression()), !dbg !2855
  store i8* %58, i8** %39, align 8, !dbg !2878, !tbaa !2755
  %59 = load i32, i32* %44, align 8, !dbg !2879, !tbaa !1699
  %60 = load i8*, i8** %47, align 8, !dbg !2880, !tbaa !1784
  %61 = load i8*, i8** %49, align 8, !dbg !2881, !tbaa !1787
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2882
  br label %63, !dbg !2883

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2884
  call void @llvm.dbg.value(metadata i8* %64, metadata !2807, metadata !DIExpression()), !dbg !2855
  store i32 %6, i32* %5, align 4, !dbg !2885, !tbaa !858
  ret i8* %64, !dbg !2886
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !2892, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %2, metadata !2893, metadata !DIExpression()), !dbg !2896
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2897
  ret i8* %4, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 0, metadata !2785, metadata !DIExpression()) #10, !dbg !2905
  call void @llvm.dbg.value(metadata i8* %0, metadata !2786, metadata !DIExpression()) #10, !dbg !2907
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2908
  ret i8* %2, !dbg !2909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 0, metadata !2891, metadata !DIExpression()) #10, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %0, metadata !2892, metadata !DIExpression()) #10, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()) #10, !dbg !2921
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2922
  ret i8* %3, !dbg !2923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2924 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %1, metadata !2929, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %2, metadata !2930, metadata !DIExpression()), !dbg !2934
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2935
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2931, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %1, metadata !2937, metadata !DIExpression()) #10, !dbg !2943
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2945, !alias.scope !2946
  %6 = icmp eq i32 %1, 10, !dbg !2949
  br i1 %6, label %7, label %8, !dbg !2951

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2952, !noalias !2946
  unreachable, !dbg !2952

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2953
  store i32 %1, i32* %9, align 8, !dbg !2954, !tbaa !1699, !alias.scope !2946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2931, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2942, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2955
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2956
  ret i8* %10, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2958 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %1, metadata !2963, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %2, metadata !2964, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %3, metadata !2965, metadata !DIExpression()), !dbg !2970
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2971
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2966, metadata !DIExpression(DW_OP_deref)), !dbg !2972
  call void @llvm.dbg.value(metadata i32 %1, metadata !2937, metadata !DIExpression()) #10, !dbg !2973
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2975, !alias.scope !2976
  %7 = icmp eq i32 %1, 10, !dbg !2979
  br i1 %7, label %8, label %9, !dbg !2980

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2981, !noalias !2976
  unreachable, !dbg !2981

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2982
  store i32 %1, i32* %10, align 8, !dbg !2983, !tbaa !1699, !alias.scope !2976
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2966, metadata !DIExpression(DW_OP_deref)), !dbg !2972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2942, metadata !DIExpression(DW_OP_deref)), !dbg !2975
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2984
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2985
  ret i8* %11, !dbg !2986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2987 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2991, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %1, metadata !2992, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32 0, metadata !2928, metadata !DIExpression()) #10, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()) #10, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2930, metadata !DIExpression()) #10, !dbg !2998
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2931, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3000
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()) #10, !dbg !3001
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !3003, !alias.scope !3004
  %5 = icmp eq i32 %0, 10, !dbg !3007
  br i1 %5, label %6, label %7, !dbg !3008

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3009, !noalias !3004
  unreachable, !dbg !3009

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3010
  store i32 %0, i32* %8, align 8, !dbg !3011, !tbaa !1699, !alias.scope !3004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2931, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2942, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3003
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3012
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3013
  ret i8* %9, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3015 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8* %1, metadata !3020, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %2, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 0, metadata !2962, metadata !DIExpression()) #10, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()) #10, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %1, metadata !2964, metadata !DIExpression()) #10, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %2, metadata !2965, metadata !DIExpression()) #10, !dbg !3029
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3030
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2966, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3031
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()) #10, !dbg !3032
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !3034, !alias.scope !3035
  %6 = icmp eq i32 %0, 10, !dbg !3038
  br i1 %6, label %7, label %8, !dbg !3039

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3040, !noalias !3035
  unreachable, !dbg !3040

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3041
  store i32 %0, i32* %9, align 8, !dbg !3042, !tbaa !1699, !alias.scope !3035
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2966, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2942, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3034
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !3043
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3044
  ret i8* %10, !dbg !3045
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3046 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 %2, metadata !3052, metadata !DIExpression()), !dbg !3056
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3057
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3058, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3053, metadata !DIExpression(DW_OP_deref)), !dbg !3060
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1718, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 %2, metadata !1719, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 1, metadata !1720, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8 %2, metadata !1721, metadata !DIExpression()), !dbg !3065
  %6 = lshr i8 %2, 5, !dbg !3066
  %7 = zext i8 %6 to i64, !dbg !3066
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3067
  call void @llvm.dbg.value(metadata i32* %8, metadata !1722, metadata !DIExpression()), !dbg !3068
  %9 = and i8 %2, 31, !dbg !3069
  %10 = zext i8 %9 to i32, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %10, metadata !1724, metadata !DIExpression()), !dbg !3070
  %11 = load i32, i32* %8, align 4, !dbg !3071, !tbaa !858
  %12 = lshr i32 %11, %10, !dbg !3072
  %13 = and i32 %12, 1, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %13, metadata !1725, metadata !DIExpression()), !dbg !3074
  %14 = xor i32 %13, 1, !dbg !3075
  %15 = shl i32 %14, %10, !dbg !3076
  %16 = xor i32 %15, %11, !dbg !3077
  store i32 %16, i32* %8, align 4, !dbg !3077, !tbaa !858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3053, metadata !DIExpression(DW_OP_deref)), !dbg !3060
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3078
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3079
  ret i8* %17, !dbg !3080
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3081 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3085, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 %1, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()) #10, !dbg !3089
  call void @llvm.dbg.value(metadata i64 -1, metadata !3051, metadata !DIExpression()) #10, !dbg !3091
  call void @llvm.dbg.value(metadata i8 %1, metadata !3052, metadata !DIExpression()) #10, !dbg !3092
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3093
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3093
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3094, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3053, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3095
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1718, metadata !DIExpression()) #10, !dbg !3096
  call void @llvm.dbg.value(metadata i8 %1, metadata !1719, metadata !DIExpression()) #10, !dbg !3098
  call void @llvm.dbg.value(metadata i32 1, metadata !1720, metadata !DIExpression()) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i8 %1, metadata !1721, metadata !DIExpression()) #10, !dbg !3100
  %5 = lshr i8 %1, 5, !dbg !3101
  %6 = zext i8 %5 to i64, !dbg !3101
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3102
  call void @llvm.dbg.value(metadata i32* %7, metadata !1722, metadata !DIExpression()) #10, !dbg !3103
  %8 = and i8 %1, 31, !dbg !3104
  %9 = zext i8 %8 to i32, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %9, metadata !1724, metadata !DIExpression()) #10, !dbg !3105
  %10 = load i32, i32* %7, align 4, !dbg !3106, !tbaa !858
  %11 = lshr i32 %10, %9, !dbg !3107
  %12 = and i32 %11, 1, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %12, metadata !1725, metadata !DIExpression()) #10, !dbg !3109
  %13 = xor i32 %12, 1, !dbg !3110
  %14 = shl i32 %13, %9, !dbg !3111
  %15 = xor i32 %14, %10, !dbg !3112
  store i32 %15, i32* %7, align 4, !dbg !3112, !tbaa !858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3053, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3095
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3113
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3114
  ret i8* %16, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3116 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %0, metadata !3085, metadata !DIExpression()) #10, !dbg !3120
  call void @llvm.dbg.value(metadata i8 58, metadata !3086, metadata !DIExpression()) #10, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()) #10, !dbg !3123
  call void @llvm.dbg.value(metadata i64 -1, metadata !3051, metadata !DIExpression()) #10, !dbg !3125
  call void @llvm.dbg.value(metadata i8 58, metadata !3052, metadata !DIExpression()) #10, !dbg !3126
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3127
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3128, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3053, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1718, metadata !DIExpression()) #10, !dbg !3130
  call void @llvm.dbg.value(metadata i8 58, metadata !1719, metadata !DIExpression()) #10, !dbg !3132
  call void @llvm.dbg.value(metadata i32 1, metadata !1720, metadata !DIExpression()) #10, !dbg !3133
  call void @llvm.dbg.value(metadata i8 58, metadata !1721, metadata !DIExpression()) #10, !dbg !3134
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3135
  call void @llvm.dbg.value(metadata i32* %4, metadata !1722, metadata !DIExpression()) #10, !dbg !3136
  call void @llvm.dbg.value(metadata i32 26, metadata !1724, metadata !DIExpression()) #10, !dbg !3137
  %5 = load i32, i32* %4, align 4, !dbg !3138, !tbaa !858
  %6 = or i32 %5, 67108864, !dbg !3139
  store i32 %6, i32* %4, align 4, !dbg !3139, !tbaa !858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3053, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3129
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3140
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3141
  ret i8* %7, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3143 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()) #10, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()) #10, !dbg !3151
  call void @llvm.dbg.value(metadata i8 58, metadata !3052, metadata !DIExpression()) #10, !dbg !3152
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3154, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3053, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1718, metadata !DIExpression()) #10, !dbg !3156
  call void @llvm.dbg.value(metadata i8 58, metadata !1719, metadata !DIExpression()) #10, !dbg !3158
  call void @llvm.dbg.value(metadata i32 1, metadata !1720, metadata !DIExpression()) #10, !dbg !3159
  call void @llvm.dbg.value(metadata i8 58, metadata !1721, metadata !DIExpression()) #10, !dbg !3160
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3161
  call void @llvm.dbg.value(metadata i32* %5, metadata !1722, metadata !DIExpression()) #10, !dbg !3162
  call void @llvm.dbg.value(metadata i32 26, metadata !1724, metadata !DIExpression()) #10, !dbg !3163
  %6 = load i32, i32* %5, align 4, !dbg !3164, !tbaa !858
  %7 = or i32 %6, 67108864, !dbg !3165
  store i32 %7, i32* %5, align 4, !dbg !3165, !tbaa !858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3053, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3155
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3166
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3167
  ret i8* %8, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3169 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2942, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3175
  call void @llvm.dbg.value(metadata i32 %0, metadata !3171, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %1, metadata !3172, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8* %2, metadata !3173, metadata !DIExpression()), !dbg !3179
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3180
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3180
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3181
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %1, metadata !2937, metadata !DIExpression()) #10, !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !2942, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3175
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3175, !alias.scope !3183
  %8 = icmp eq i32 %1, 10, !dbg !3186
  br i1 %8, label %9, label %10, !dbg !3187

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3188, !noalias !3183
  unreachable, !dbg !3188

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2942, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3175
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3181
  store i32 %1, i32* %11, align 8, !dbg !3181
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3181
  %13 = bitcast i32* %12 to i8*, !dbg !3181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3181
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3181
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3174, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1718, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8 58, metadata !1719, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 1, metadata !1720, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8 58, metadata !1721, metadata !DIExpression()), !dbg !3194
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3195
  call void @llvm.dbg.value(metadata i32* %14, metadata !1722, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 26, metadata !1724, metadata !DIExpression()), !dbg !3197
  %15 = load i32, i32* %14, align 4, !dbg !3198, !tbaa !858
  %16 = or i32 %15, 67108864, !dbg !3199
  store i32 %16, i32* %14, align 4, !dbg !3199, !tbaa !858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3174, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3200
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3201
  ret i8* %17, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3203 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3207, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3208, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !3209, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %3, metadata !3210, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()) #10, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %1, metadata !3220, metadata !DIExpression()) #10, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !3221, metadata !DIExpression()) #10, !dbg !3228
  call void @llvm.dbg.value(metadata i8* %3, metadata !3222, metadata !DIExpression()) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i64 -1, metadata !3223, metadata !DIExpression()) #10, !dbg !3230
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3232, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3224, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1766, metadata !DIExpression()) #10, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %1, metadata !1767, metadata !DIExpression()) #10, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %2, metadata !1768, metadata !DIExpression()) #10, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1766, metadata !DIExpression()) #10, !dbg !3234
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3238
  store i32 10, i32* %7, align 8, !dbg !3239, !tbaa !1699
  %8 = icmp ne i8* %1, null, !dbg !3240
  %9 = icmp ne i8* %2, null, !dbg !3241
  %10 = and i1 %8, %9, !dbg !3242
  br i1 %10, label %12, label %11, !dbg !3242

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3243
  unreachable, !dbg !3243

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3244
  store i8* %1, i8** %13, align 8, !dbg !3245, !tbaa !1784
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3246
  store i8* %2, i8** %14, align 8, !dbg !3247, !tbaa !1787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3224, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3233
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3248
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3249
  ret i8* %15, !dbg !3250
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3216 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8* %1, metadata !3220, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %2, metadata !3221, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %3, metadata !3222, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %4, metadata !3223, metadata !DIExpression()), !dbg !3255
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3256
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3257, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3224, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1766, metadata !DIExpression()) #10, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %1, metadata !1767, metadata !DIExpression()) #10, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %2, metadata !1768, metadata !DIExpression()) #10, !dbg !3262
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1766, metadata !DIExpression()) #10, !dbg !3259
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3263
  store i32 10, i32* %8, align 8, !dbg !3264, !tbaa !1699
  %9 = icmp ne i8* %1, null, !dbg !3265
  %10 = icmp ne i8* %2, null, !dbg !3266
  %11 = and i1 %9, %10, !dbg !3267
  br i1 %11, label %13, label %12, !dbg !3267

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3268
  unreachable, !dbg !3268

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3269
  store i8* %1, i8** %14, align 8, !dbg !3270, !tbaa !1784
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3271
  store i8* %2, i8** %15, align 8, !dbg !3272, !tbaa !1787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3224, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3273
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3274
  ret i8* %16, !dbg !3275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3276 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3281, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* %2, metadata !3282, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i32 0, metadata !3207, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()) #10, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3209, metadata !DIExpression()) #10, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()) #10, !dbg !3290
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()) #10, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #10, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !3221, metadata !DIExpression()) #10, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %2, metadata !3222, metadata !DIExpression()) #10, !dbg !3295
  call void @llvm.dbg.value(metadata i64 -1, metadata !3223, metadata !DIExpression()) #10, !dbg !3296
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3297
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3298, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3224, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1766, metadata !DIExpression()) #10, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %0, metadata !1767, metadata !DIExpression()) #10, !dbg !3302
  call void @llvm.dbg.value(metadata i8* %1, metadata !1768, metadata !DIExpression()) #10, !dbg !3303
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1766, metadata !DIExpression()) #10, !dbg !3300
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3304
  store i32 10, i32* %6, align 8, !dbg !3305, !tbaa !1699
  %7 = icmp ne i8* %0, null, !dbg !3306
  %8 = icmp ne i8* %1, null, !dbg !3307
  %9 = and i1 %7, %8, !dbg !3308
  br i1 %9, label %11, label %10, !dbg !3308

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3309
  unreachable, !dbg !3309

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3310
  store i8* %0, i8** %12, align 8, !dbg !3311, !tbaa !1784
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3312
  store i8* %1, i8** %13, align 8, !dbg !3313, !tbaa !1787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3224, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3299
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3314
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3315
  ret i8* %14, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3317 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3321, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %1, metadata !3322, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i8* %2, metadata !3323, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %3, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()) #10, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #10, !dbg !3331
  call void @llvm.dbg.value(metadata i8* %1, metadata !3221, metadata !DIExpression()) #10, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %2, metadata !3222, metadata !DIExpression()) #10, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %3, metadata !3223, metadata !DIExpression()) #10, !dbg !3334
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3335
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3336, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3224, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1766, metadata !DIExpression()) #10, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %0, metadata !1767, metadata !DIExpression()) #10, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %1, metadata !1768, metadata !DIExpression()) #10, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1766, metadata !DIExpression()) #10, !dbg !3338
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3342
  store i32 10, i32* %7, align 8, !dbg !3343, !tbaa !1699
  %8 = icmp ne i8* %0, null, !dbg !3344
  %9 = icmp ne i8* %1, null, !dbg !3345
  %10 = and i1 %8, %9, !dbg !3346
  br i1 %10, label %12, label %11, !dbg !3346

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3347
  unreachable, !dbg !3347

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3348
  store i8* %0, i8** %13, align 8, !dbg !3349, !tbaa !1784
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3350
  store i8* %1, i8** %14, align 8, !dbg !3351, !tbaa !1787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3224, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3337
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3352
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3353
  ret i8* %15, !dbg !3354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3355 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3359, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3360, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %2, metadata !3361, metadata !DIExpression()), !dbg !3364
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3365
  ret i8* %4, !dbg !3366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64 %1, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 0, metadata !3359, metadata !DIExpression()) #10, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %0, metadata !3360, metadata !DIExpression()) #10, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()) #10, !dbg !3378
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3379
  ret i8* %3, !dbg !3380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %0, metadata !3359, metadata !DIExpression()) #10, !dbg !3389
  call void @llvm.dbg.value(metadata i8* %1, metadata !3360, metadata !DIExpression()) #10, !dbg !3391
  call void @llvm.dbg.value(metadata i64 -1, metadata !3361, metadata !DIExpression()) #10, !dbg !3392
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3393
  ret i8* %3, !dbg !3394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3399, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i32 0, metadata !3385, metadata !DIExpression()) #10, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %0, metadata !3386, metadata !DIExpression()) #10, !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3359, metadata !DIExpression()) #10, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %0, metadata !3360, metadata !DIExpression()) #10, !dbg !3406
  call void @llvm.dbg.value(metadata i64 -1, metadata !3361, metadata !DIExpression()) #10, !dbg !3407
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3408
  ret i8* %2, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3410 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3449, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %1, metadata !3450, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %2, metadata !3451, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %3, metadata !3452, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8** %4, metadata !3453, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %5, metadata !3454, metadata !DIExpression()), !dbg !3460
  %7 = icmp eq i8* %1, null, !dbg !3461
  br i1 %7, label %10, label %8, !dbg !3463

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3464
  br label %12, !dbg !3464

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3465
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #10, !dbg !3466
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3466
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.85, i64 0, i64 0), i32 5) #10, !dbg !3467
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3467
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
  ], !dbg !3468

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3469
  unreachable, !dbg !3469

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #10, !dbg !3471
  %20 = load i8*, i8** %4, align 8, !dbg !3471, !tbaa !744
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3471
  br label %146, !dbg !3472

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.87, i64 0, i64 0), i32 5) #10, !dbg !3473
  %24 = load i8*, i8** %4, align 8, !dbg !3473, !tbaa !744
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3473
  %26 = load i8*, i8** %25, align 8, !dbg !3473, !tbaa !744
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3473
  br label %146, !dbg !3474

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #10, !dbg !3475
  %30 = load i8*, i8** %4, align 8, !dbg !3475, !tbaa !744
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3475
  %32 = load i8*, i8** %31, align 8, !dbg !3475, !tbaa !744
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3475
  %34 = load i8*, i8** %33, align 8, !dbg !3475, !tbaa !744
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3475
  br label %146, !dbg !3476

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #10, !dbg !3477
  %38 = load i8*, i8** %4, align 8, !dbg !3477, !tbaa !744
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3477
  %40 = load i8*, i8** %39, align 8, !dbg !3477, !tbaa !744
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3477
  %42 = load i8*, i8** %41, align 8, !dbg !3477, !tbaa !744
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3477
  %44 = load i8*, i8** %43, align 8, !dbg !3477, !tbaa !744
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3477
  br label %146, !dbg !3478

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #10, !dbg !3479
  %48 = load i8*, i8** %4, align 8, !dbg !3479, !tbaa !744
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3479
  %50 = load i8*, i8** %49, align 8, !dbg !3479, !tbaa !744
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3479
  %52 = load i8*, i8** %51, align 8, !dbg !3479, !tbaa !744
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3479
  %54 = load i8*, i8** %53, align 8, !dbg !3479, !tbaa !744
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3479
  %56 = load i8*, i8** %55, align 8, !dbg !3479, !tbaa !744
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3479
  br label %146, !dbg !3480

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #10, !dbg !3481
  %60 = load i8*, i8** %4, align 8, !dbg !3481, !tbaa !744
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3481
  %62 = load i8*, i8** %61, align 8, !dbg !3481, !tbaa !744
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3481
  %64 = load i8*, i8** %63, align 8, !dbg !3481, !tbaa !744
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3481
  %66 = load i8*, i8** %65, align 8, !dbg !3481, !tbaa !744
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3481
  %68 = load i8*, i8** %67, align 8, !dbg !3481, !tbaa !744
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3481
  %70 = load i8*, i8** %69, align 8, !dbg !3481, !tbaa !744
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3481
  br label %146, !dbg !3482

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #10, !dbg !3483
  %74 = load i8*, i8** %4, align 8, !dbg !3483, !tbaa !744
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3483
  %76 = load i8*, i8** %75, align 8, !dbg !3483, !tbaa !744
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3483
  %78 = load i8*, i8** %77, align 8, !dbg !3483, !tbaa !744
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3483
  %80 = load i8*, i8** %79, align 8, !dbg !3483, !tbaa !744
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3483
  %82 = load i8*, i8** %81, align 8, !dbg !3483, !tbaa !744
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3483
  %84 = load i8*, i8** %83, align 8, !dbg !3483, !tbaa !744
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3483
  %86 = load i8*, i8** %85, align 8, !dbg !3483, !tbaa !744
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3483
  br label %146, !dbg !3484

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #10, !dbg !3485
  %90 = load i8*, i8** %4, align 8, !dbg !3485, !tbaa !744
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3485
  %92 = load i8*, i8** %91, align 8, !dbg !3485, !tbaa !744
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3485
  %94 = load i8*, i8** %93, align 8, !dbg !3485, !tbaa !744
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3485
  %96 = load i8*, i8** %95, align 8, !dbg !3485, !tbaa !744
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3485
  %98 = load i8*, i8** %97, align 8, !dbg !3485, !tbaa !744
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3485
  %100 = load i8*, i8** %99, align 8, !dbg !3485, !tbaa !744
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3485
  %102 = load i8*, i8** %101, align 8, !dbg !3485, !tbaa !744
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3485
  %104 = load i8*, i8** %103, align 8, !dbg !3485, !tbaa !744
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3485
  br label %146, !dbg !3486

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #10, !dbg !3487
  %108 = load i8*, i8** %4, align 8, !dbg !3487, !tbaa !744
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3487
  %110 = load i8*, i8** %109, align 8, !dbg !3487, !tbaa !744
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3487
  %112 = load i8*, i8** %111, align 8, !dbg !3487, !tbaa !744
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3487
  %114 = load i8*, i8** %113, align 8, !dbg !3487, !tbaa !744
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3487
  %116 = load i8*, i8** %115, align 8, !dbg !3487, !tbaa !744
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3487
  %118 = load i8*, i8** %117, align 8, !dbg !3487, !tbaa !744
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3487
  %120 = load i8*, i8** %119, align 8, !dbg !3487, !tbaa !744
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3487
  %122 = load i8*, i8** %121, align 8, !dbg !3487, !tbaa !744
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3487
  %124 = load i8*, i8** %123, align 8, !dbg !3487, !tbaa !744
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3487
  br label %146, !dbg !3488

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #10, !dbg !3489
  %128 = load i8*, i8** %4, align 8, !dbg !3489, !tbaa !744
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3489
  %130 = load i8*, i8** %129, align 8, !dbg !3489, !tbaa !744
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3489
  %132 = load i8*, i8** %131, align 8, !dbg !3489, !tbaa !744
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3489
  %134 = load i8*, i8** %133, align 8, !dbg !3489, !tbaa !744
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3489
  %136 = load i8*, i8** %135, align 8, !dbg !3489, !tbaa !744
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3489
  %138 = load i8*, i8** %137, align 8, !dbg !3489, !tbaa !744
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3489
  %140 = load i8*, i8** %139, align 8, !dbg !3489, !tbaa !744
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3489
  %142 = load i8*, i8** %141, align 8, !dbg !3489, !tbaa !744
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3489
  %144 = load i8*, i8** %143, align 8, !dbg !3489, !tbaa !744
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3489
  br label %146, !dbg !3490

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3491
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3492 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3496, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i8* %1, metadata !3497, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8* %2, metadata !3498, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %3, metadata !3499, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8** %4, metadata !3500, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 0, metadata !3501, metadata !DIExpression()), !dbg !3507
  br label %6, !dbg !3508

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3510
  call void @llvm.dbg.value(metadata i64 %7, metadata !3501, metadata !DIExpression()), !dbg !3507
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3512
  %9 = load i8*, i8** %8, align 8, !dbg !3512, !tbaa !744
  %10 = icmp eq i8* %9, null, !dbg !3513
  %11 = add i64 %7, 1, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %11, metadata !3501, metadata !DIExpression()), !dbg !3507
  br i1 %10, label %12, label %6, !dbg !3513, !llvm.loop !3515

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %7, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %7, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %7, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %7, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %7, metadata !3501, metadata !DIExpression()), !dbg !3507
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3517
  ret void, !dbg !3518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3519 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3530, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* %1, metadata !3531, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %2, metadata !3532, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8* %3, metadata !3533, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3534, metadata !DIExpression()), !dbg !3542
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3543
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3543
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3536, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 0, metadata !3535, metadata !DIExpression()), !dbg !3545
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3535, metadata !DIExpression()), !dbg !3545
  %11 = load i32, i32* %8, align 8, !dbg !3546
  %12 = icmp ult i32 %11, 41, !dbg !3546
  br i1 %12, label %13, label %18, !dbg !3546

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3546
  %15 = sext i32 %11 to i64, !dbg !3546
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3546
  %17 = add i32 %11, 8, !dbg !3546
  store i32 %17, i32* %8, align 8, !dbg !3546
  br label %21, !dbg !3546

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3546
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3546
  store i8* %20, i8** %10, align 8, !dbg !3546
  br label %21, !dbg !3546

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3546
  %25 = load i8*, i8** %24, align 8, !dbg !3546
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3549
  store i8* %25, i8** %26, align 16, !dbg !3550, !tbaa !744
  %27 = icmp eq i8* %25, null, !dbg !3551
  br i1 %27, label %30, label %28, !dbg !3552

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 1, metadata !3535, metadata !DIExpression()), !dbg !3545
  %29 = icmp ult i32 %22, 41, !dbg !3546
  br i1 %29, label %35, label %32, !dbg !3546

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3553
  call void @llvm.dbg.value(metadata i64 %31, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %31, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3554
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3555
  ret void, !dbg !3555

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3546
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3546
  store i8* %34, i8** %10, align 8, !dbg !3546
  br label %40, !dbg !3546

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3546
  %37 = sext i32 %22 to i64, !dbg !3546
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3546
  %39 = add i32 %22, 8, !dbg !3546
  store i32 %39, i32* %8, align 8, !dbg !3546
  br label %40, !dbg !3546

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3546
  %44 = load i8*, i8** %43, align 8, !dbg !3546
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3549
  store i8* %44, i8** %45, align 8, !dbg !3550, !tbaa !744
  %46 = icmp eq i8* %44, null, !dbg !3551
  br i1 %46, label %30, label %47, !dbg !3552

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 2, metadata !3535, metadata !DIExpression()), !dbg !3545
  %48 = icmp ult i32 %41, 41, !dbg !3546
  br i1 %48, label %52, label %49, !dbg !3546

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3546
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3546
  store i8* %51, i8** %10, align 8, !dbg !3546
  br label %57, !dbg !3546

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3546
  %54 = sext i32 %41 to i64, !dbg !3546
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3546
  %56 = add i32 %41, 8, !dbg !3546
  store i32 %56, i32* %8, align 8, !dbg !3546
  br label %57, !dbg !3546

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3546
  %61 = load i8*, i8** %60, align 8, !dbg !3546
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3549
  store i8* %61, i8** %62, align 16, !dbg !3550, !tbaa !744
  %63 = icmp eq i8* %61, null, !dbg !3551
  br i1 %63, label %30, label %64, !dbg !3552

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 3, metadata !3535, metadata !DIExpression()), !dbg !3545
  %65 = icmp ult i32 %58, 41, !dbg !3546
  br i1 %65, label %69, label %66, !dbg !3546

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3546
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3546
  store i8* %68, i8** %10, align 8, !dbg !3546
  br label %74, !dbg !3546

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3546
  %71 = sext i32 %58 to i64, !dbg !3546
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3546
  %73 = add i32 %58, 8, !dbg !3546
  store i32 %73, i32* %8, align 8, !dbg !3546
  br label %74, !dbg !3546

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3546
  %78 = load i8*, i8** %77, align 8, !dbg !3546
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3549
  store i8* %78, i8** %79, align 8, !dbg !3550, !tbaa !744
  %80 = icmp eq i8* %78, null, !dbg !3551
  br i1 %80, label %30, label %81, !dbg !3552

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 4, metadata !3535, metadata !DIExpression()), !dbg !3545
  %82 = icmp ult i32 %75, 41, !dbg !3546
  br i1 %82, label %86, label %83, !dbg !3546

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3546
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3546
  store i8* %85, i8** %10, align 8, !dbg !3546
  br label %91, !dbg !3546

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3546
  %88 = sext i32 %75 to i64, !dbg !3546
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3546
  %90 = add i32 %75, 8, !dbg !3546
  store i32 %90, i32* %8, align 8, !dbg !3546
  br label %91, !dbg !3546

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3546
  %95 = load i8*, i8** %94, align 8, !dbg !3546
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3549
  store i8* %95, i8** %96, align 16, !dbg !3550, !tbaa !744
  %97 = icmp eq i8* %95, null, !dbg !3551
  br i1 %97, label %30, label %98, !dbg !3552

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 5, metadata !3535, metadata !DIExpression()), !dbg !3545
  %99 = icmp ult i32 %92, 41, !dbg !3546
  br i1 %99, label %103, label %100, !dbg !3546

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3546
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3546
  store i8* %102, i8** %10, align 8, !dbg !3546
  br label %108, !dbg !3546

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3546
  %105 = sext i32 %92 to i64, !dbg !3546
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3546
  %107 = add i32 %92, 8, !dbg !3546
  store i32 %107, i32* %8, align 8, !dbg !3546
  br label %108, !dbg !3546

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3546
  %111 = load i8*, i8** %110, align 8, !dbg !3546
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3549
  store i8* %111, i8** %112, align 8, !dbg !3550, !tbaa !744
  %113 = icmp eq i8* %111, null, !dbg !3551
  br i1 %113, label %30, label %114, !dbg !3552

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 6, metadata !3535, metadata !DIExpression()), !dbg !3545
  %115 = load i8*, i8** %10, align 8, !dbg !3546
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3546
  store i8* %116, i8** %10, align 8, !dbg !3546
  %117 = bitcast i8* %115 to i8**, !dbg !3546
  %118 = load i8*, i8** %117, align 8, !dbg !3546
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3549
  store i8* %118, i8** %119, align 16, !dbg !3550, !tbaa !744
  %120 = icmp eq i8* %118, null, !dbg !3551
  br i1 %120, label %30, label %121, !dbg !3552

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 7, metadata !3535, metadata !DIExpression()), !dbg !3545
  %122 = load i8*, i8** %10, align 8, !dbg !3546
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3546
  store i8* %123, i8** %10, align 8, !dbg !3546
  %124 = bitcast i8* %122 to i8**, !dbg !3546
  %125 = load i8*, i8** %124, align 8, !dbg !3546
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3549
  store i8* %125, i8** %126, align 8, !dbg !3550, !tbaa !744
  %127 = icmp eq i8* %125, null, !dbg !3551
  br i1 %127, label %30, label %128, !dbg !3552

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 8, metadata !3535, metadata !DIExpression()), !dbg !3545
  %129 = load i8*, i8** %10, align 8, !dbg !3546
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3546
  store i8* %130, i8** %10, align 8, !dbg !3546
  %131 = bitcast i8* %129 to i8**, !dbg !3546
  %132 = load i8*, i8** %131, align 8, !dbg !3546
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3549
  store i8* %132, i8** %133, align 16, !dbg !3550, !tbaa !744
  %134 = icmp eq i8* %132, null, !dbg !3551
  br i1 %134, label %30, label %135, !dbg !3552

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3535, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 9, metadata !3535, metadata !DIExpression()), !dbg !3545
  %136 = load i8*, i8** %10, align 8, !dbg !3546
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3546
  store i8* %137, i8** %10, align 8, !dbg !3546
  %138 = bitcast i8* %136 to i8**, !dbg !3546
  %139 = load i8*, i8** %138, align 8, !dbg !3546
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3549
  store i8* %139, i8** %140, align 8, !dbg !3550, !tbaa !744
  %141 = icmp eq i8* %139, null, !dbg !3551
  %142 = select i1 %141, i64 9, i64 10, !dbg !3552
  br label %30, !dbg !3552
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3556 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3560, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3561, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i8* %2, metadata !3562, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %3, metadata !3563, metadata !DIExpression()), !dbg !3573
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3574
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3574
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3564, metadata !DIExpression()), !dbg !3575
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3576
  call void @llvm.va_start(i8* nonnull %6), !dbg !3576
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3577
  call void @llvm.va_end(i8* nonnull %6), !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3579
  ret void, !dbg !3579
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3580 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.98, i64 0, i64 0), i32 5) #10, !dbg !3581
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.99, i64 0, i64 0)) #10, !dbg !3581
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #10, !dbg !3582
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.102, i64 0, i64 0)) #10, !dbg !3582
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.103, i64 0, i64 0), i32 5) #10, !dbg !3583
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3583, !tbaa !744
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3583
  ret void, !dbg !3584
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3585 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()), !dbg !3592
  %3 = udiv i64 9223372036854775807, %1, !dbg !3593
  %4 = icmp ult i64 %3, %0, !dbg !3593
  br i1 %4, label %5, label %6, !dbg !3595

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3596
  unreachable, !dbg !3596

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %7, metadata !3598, metadata !DIExpression()) #10, !dbg !3605
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %8, metadata !3604, metadata !DIExpression()) #10, !dbg !3608
  %9 = icmp eq i8* %8, null, !dbg !3609
  %10 = icmp ne i64 %7, 0, !dbg !3611
  %11 = and i1 %10, %9, !dbg !3612
  br i1 %11, label %12, label %13, !dbg !3612

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3613
  unreachable, !dbg !3613

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3614
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3599 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3598, metadata !DIExpression()), !dbg !3615
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()), !dbg !3617
  %3 = icmp eq i8* %2, null, !dbg !3618
  %4 = icmp ne i64 %0, 0, !dbg !3619
  %5 = and i1 %4, %3, !dbg !3620
  br i1 %5, label %6, label %7, !dbg !3620

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3621
  unreachable, !dbg !3621

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3622
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3623 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3627, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3628, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %2, metadata !3629, metadata !DIExpression()), !dbg !3632
  %4 = udiv i64 9223372036854775807, %2, !dbg !3633
  %5 = icmp ult i64 %4, %1, !dbg !3633
  br i1 %5, label %6, label %7, !dbg !3635

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3636
  unreachable, !dbg !3636

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3637
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()) #10, !dbg !3644
  call void @llvm.dbg.value(metadata i64 %8, metadata !3643, metadata !DIExpression()) #10, !dbg !3646
  %9 = icmp eq i64 %8, 0, !dbg !3647
  %10 = icmp ne i8* %0, null, !dbg !3649
  %11 = and i1 %10, %9, !dbg !3650
  br i1 %11, label %12, label %13, !dbg !3650

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3651
  br label %19, !dbg !3653

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3654
  call void @llvm.dbg.value(metadata i8* %14, metadata !3638, metadata !DIExpression()) #10, !dbg !3644
  %15 = icmp eq i8* %14, null, !dbg !3655
  %16 = icmp ne i64 %8, 0, !dbg !3657
  %17 = and i1 %16, %15, !dbg !3658
  br i1 %17, label %18, label %19, !dbg !3658

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3659
  unreachable, !dbg !3659

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3660
  ret i8* %20, !dbg !3661
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3639 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %1, metadata !3643, metadata !DIExpression()), !dbg !3663
  %3 = icmp eq i64 %1, 0, !dbg !3664
  %4 = icmp ne i8* %0, null, !dbg !3665
  %5 = and i1 %4, %3, !dbg !3666
  br i1 %5, label %6, label %7, !dbg !3666

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3667
  br label %13, !dbg !3668

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %8, metadata !3638, metadata !DIExpression()), !dbg !3662
  %9 = icmp eq i8* %8, null, !dbg !3670
  %10 = icmp ne i64 %1, 0, !dbg !3671
  %11 = and i1 %10, %9, !dbg !3672
  br i1 %11, label %12, label %13, !dbg !3672

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3673
  unreachable, !dbg !3673

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3674
  ret i8* %14, !dbg !3675
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !290 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !292, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64* %1, metadata !293, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %2, metadata !294, metadata !DIExpression()), !dbg !3678
  %4 = load i64, i64* %1, align 8, !dbg !3679, !tbaa !925
  call void @llvm.dbg.value(metadata i64 %4, metadata !295, metadata !DIExpression()), !dbg !3680
  %5 = icmp eq i8* %0, null, !dbg !3681
  br i1 %5, label %6, label %20, !dbg !3683

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3684
  br i1 %7, label %8, label %13, !dbg !3687

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3688
  call void @llvm.dbg.value(metadata i64 %9, metadata !295, metadata !DIExpression()), !dbg !3680
  %10 = icmp ugt i64 %2, 128, !dbg !3690
  %11 = zext i1 %10 to i64, !dbg !3690
  %12 = add nuw nsw i64 %9, %11, !dbg !3691
  call void @llvm.dbg.value(metadata i64 %12, metadata !295, metadata !DIExpression()), !dbg !3680
  br label %13, !dbg !3692

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3693
  call void @llvm.dbg.value(metadata i64 %14, metadata !295, metadata !DIExpression()), !dbg !3680
  %15 = udiv i64 9223372036854775807, %2, !dbg !3694
  %16 = icmp ult i64 %15, %14, !dbg !3694
  br i1 %16, label %19, label %17, !dbg !3696

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !295, metadata !DIExpression()), !dbg !3680
  store i64 %14, i64* %1, align 8, !dbg !3697, !tbaa !925
  %18 = mul i64 %14, %2, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %28, metadata !3643, metadata !DIExpression()) #10, !dbg !3701
  br label %31, !dbg !3702

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3703
  unreachable, !dbg !3703

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3704
  %22 = icmp ugt i64 %21, %4, !dbg !3707
  br i1 %22, label %24, label %23, !dbg !3708

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3709
  unreachable, !dbg !3709

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3710
  %26 = add i64 %4, 1, !dbg !3711
  %27 = add i64 %26, %25, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %27, metadata !295, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %27, metadata !295, metadata !DIExpression()), !dbg !3680
  store i64 %27, i64* %1, align 8, !dbg !3697, !tbaa !925
  %28 = mul i64 %27, %2, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %28, metadata !3643, metadata !DIExpression()) #10, !dbg !3701
  %29 = icmp eq i64 %28, 0, !dbg !3713
  br i1 %29, label %30, label %31, !dbg !3702

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3714
  br label %38, !dbg !3715

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3716
  call void @llvm.dbg.value(metadata i8* %33, metadata !3638, metadata !DIExpression()) #10, !dbg !3699
  %34 = icmp eq i8* %33, null, !dbg !3717
  %35 = icmp ne i64 %32, 0, !dbg !3718
  %36 = and i1 %35, %34, !dbg !3719
  br i1 %36, label %37, label %38, !dbg !3719

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3720
  unreachable, !dbg !3720

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3721
  ret i8* %39, !dbg !3722
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3723 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3725, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i64 %0, metadata !3598, metadata !DIExpression()) #10, !dbg !3727
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3729
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()) #10, !dbg !3730
  %3 = icmp eq i8* %2, null, !dbg !3731
  %4 = icmp ne i64 %0, 0, !dbg !3732
  %5 = and i1 %4, %3, !dbg !3733
  br i1 %5, label %6, label %7, !dbg !3733

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3734
  unreachable, !dbg !3734

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64* %1, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8* %0, metadata !292, metadata !DIExpression()) #10, !dbg !3744
  call void @llvm.dbg.value(metadata i64* %1, metadata !293, metadata !DIExpression()) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i64 1, metadata !294, metadata !DIExpression()) #10, !dbg !3747
  %3 = load i64, i64* %1, align 8, !dbg !3748, !tbaa !925
  call void @llvm.dbg.value(metadata i64 %3, metadata !295, metadata !DIExpression()) #10, !dbg !3749
  %4 = icmp eq i8* %0, null, !dbg !3750
  br i1 %4, label %5, label %12, !dbg !3751

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3752
  br i1 %6, label %9, label %7, !dbg !3753

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !295, metadata !DIExpression()) #10, !dbg !3749
  %8 = icmp slt i64 %3, 0, !dbg !3754
  br i1 %8, label %11, label %9, !dbg !3755

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !295, metadata !DIExpression()) #10, !dbg !3749
  store i64 %10, i64* %1, align 8, !dbg !3756, !tbaa !925
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()) #10, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %18, metadata !3643, metadata !DIExpression()) #10, !dbg !3759
  br label %21, !dbg !3760

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3761
  unreachable, !dbg !3761

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3762
  br i1 %13, label %15, label %14, !dbg !3763

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3764
  unreachable, !dbg !3764

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3765
  %17 = add i64 %3, 1, !dbg !3766
  %18 = add i64 %17, %16, !dbg !3767
  call void @llvm.dbg.value(metadata i64 %18, metadata !295, metadata !DIExpression()) #10, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %18, metadata !295, metadata !DIExpression()) #10, !dbg !3749
  store i64 %18, i64* %1, align 8, !dbg !3756, !tbaa !925
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()) #10, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %18, metadata !3643, metadata !DIExpression()) #10, !dbg !3759
  %19 = icmp eq i64 %18, 0, !dbg !3768
  br i1 %19, label %20, label %21, !dbg !3760

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3769
  br label %28, !dbg !3770

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %23, metadata !3638, metadata !DIExpression()) #10, !dbg !3757
  %24 = icmp eq i8* %23, null, !dbg !3772
  %25 = icmp ne i64 %22, 0, !dbg !3773
  %26 = and i1 %25, %24, !dbg !3774
  br i1 %26, label %27, label %28, !dbg !3774

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3775
  unreachable, !dbg !3775

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3776
  ret i8* %29, !dbg !3777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3778 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %0, metadata !3598, metadata !DIExpression()) #10, !dbg !3782
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3784
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()) #10, !dbg !3785
  %3 = icmp eq i8* %2, null, !dbg !3786
  %4 = icmp ne i64 %0, 0, !dbg !3787
  %5 = and i1 %4, %3, !dbg !3788
  br i1 %5, label %6, label %7, !dbg !3788

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3789
  unreachable, !dbg !3789

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3790
  ret i8* %2, !dbg !3791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3792 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3794, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 %1, metadata !3795, metadata !DIExpression()), !dbg !3798
  %3 = udiv i64 9223372036854775807, %1, !dbg !3799
  %4 = icmp ult i64 %3, %0, !dbg !3799
  br i1 %4, label %8, label %5, !dbg !3801

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3802
  call void @llvm.dbg.value(metadata i8* %6, metadata !3796, metadata !DIExpression()), !dbg !3803
  %7 = icmp eq i8* %6, null, !dbg !3804
  br i1 %7, label %8, label %9, !dbg !3805

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3806
  unreachable, !dbg !3806

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3814, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i64 %1, metadata !3815, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %1, metadata !3598, metadata !DIExpression()) #10, !dbg !3818
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %3, metadata !3604, metadata !DIExpression()) #10, !dbg !3821
  %4 = icmp eq i8* %3, null, !dbg !3822
  %5 = icmp ne i64 %1, 0, !dbg !3823
  %6 = and i1 %5, %4, !dbg !3824
  br i1 %6, label %7, label %8, !dbg !3824

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3825
  unreachable, !dbg !3825

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3826
  ret i8* %3, !dbg !3827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3830, metadata !DIExpression()), !dbg !3831
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3832
  %3 = add i64 %2, 1, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %0, metadata !3814, metadata !DIExpression()) #10, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %3, metadata !3815, metadata !DIExpression()) #10, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %3, metadata !3598, metadata !DIExpression()) #10, !dbg !3837
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %4, metadata !3604, metadata !DIExpression()) #10, !dbg !3840
  %5 = icmp eq i8* %4, null, !dbg !3841
  %6 = icmp ne i64 %3, 0, !dbg !3842
  %7 = and i1 %6, %5, !dbg !3843
  br i1 %7, label %8, label %9, !dbg !3843

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3844
  unreachable, !dbg !3844

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3845
  ret i8* %4, !dbg !3846
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3847 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3849, !tbaa !858
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.114, i64 0, i64 0), i32 5) #10, !dbg !3850
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), i8* %2) #10, !dbg !3851
  tail call void @abort() #15, !dbg !3852
  unreachable, !dbg !3852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3853 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 %1, metadata !3857, metadata !DIExpression()), !dbg !3860
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #10, !dbg !3861
  call void @llvm.dbg.value(metadata i8* %3, metadata !3858, metadata !DIExpression()), !dbg !3862
  %4 = icmp eq i8* %3, null, !dbg !3863
  br i1 %4, label %5, label %6, !dbg !3865

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3866
  unreachable, !dbg !3866

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3867
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3868 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3871, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()), !dbg !3878
  %3 = icmp eq i64 %0, 0, !dbg !3879
  %4 = icmp eq i64 %1, 0, !dbg !3880
  %5 = or i1 %3, %4, !dbg !3881
  br i1 %5, label %12, label %6, !dbg !3881

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %7, metadata !3874, metadata !DIExpression()), !dbg !3883
  %8 = udiv i64 %7, %1, !dbg !3884
  %9 = icmp eq i64 %8, %0, !dbg !3886
  br i1 %9, label %12, label %10, !dbg !3887

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3888
  store i32 12, i32* %11, align 4, !dbg !3890, !tbaa !858
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3871, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %13, metadata !3872, metadata !DIExpression()), !dbg !3878
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3891
  call void @llvm.dbg.value(metadata i8* %15, metadata !3873, metadata !DIExpression()), !dbg !3892
  br label %16, !dbg !3893

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3894
  ret i8* %17, !dbg !3895
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3896 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3935, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i32 0, metadata !3936, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3941
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3942
  call void @llvm.dbg.value(metadata i32 %2, metadata !3937, metadata !DIExpression()), !dbg !3943
  %3 = icmp slt i32 %2, 0, !dbg !3944
  br i1 %3, label %4, label %6, !dbg !3946

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3947
  br label %24, !dbg !3948

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3949
  %8 = icmp eq i32 %7, 0, !dbg !3949
  br i1 %8, label %13, label %9, !dbg !3951

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3952
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3953
  %12 = icmp eq i64 %11, -1, !dbg !3954
  br i1 %12, label %16, label %13, !dbg !3955

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3956
  %15 = icmp eq i32 %14, 0, !dbg !3956
  br i1 %15, label %16, label %18, !dbg !3957

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3936, metadata !DIExpression()), !dbg !3940
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3958
  call void @llvm.dbg.value(metadata i32 %21, metadata !3938, metadata !DIExpression()), !dbg !3941
  br label %24, !dbg !3959

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3960
  %20 = load i32, i32* %19, align 4, !dbg !3960, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %20, metadata !3936, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 %20, metadata !3936, metadata !DIExpression()), !dbg !3940
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3958
  call void @llvm.dbg.value(metadata i32 %21, metadata !3938, metadata !DIExpression()), !dbg !3941
  %22 = icmp eq i32 %20, 0, !dbg !3961
  br i1 %22, label %24, label %23, !dbg !3959

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3963, !tbaa !858
  call void @llvm.dbg.value(metadata i32 -1, metadata !3938, metadata !DIExpression()), !dbg !3941
  br label %24, !dbg !3965

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3966
  ret i32 %25, !dbg !3967
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3968 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4009
  br i1 %2, label %6, label %3, !dbg !4011

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4012
  %5 = icmp eq i32 %4, 0, !dbg !4012
  br i1 %5, label %6, label %8, !dbg !4013

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4014
  br label %17, !dbg !4015

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4016, metadata !DIExpression()) #10, !dbg !4021
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4023
  %10 = load i32, i32* %9, align 8, !dbg !4023, !tbaa !1448
  %11 = and i32 %10, 256, !dbg !4025
  %12 = icmp eq i32 %11, 0, !dbg !4025
  br i1 %12, label %15, label %13, !dbg !4026

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4027
  br label %15, !dbg !4027

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4028
  br label %17, !dbg !4029

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4030
  ret i32 %18, !dbg !4031
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4032 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4071, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %1, metadata !4072, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i32 %2, metadata !4073, metadata !DIExpression()), !dbg !4079
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4080
  %5 = load i8*, i8** %4, align 8, !dbg !4080, !tbaa !962
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4081
  %7 = load i8*, i8** %6, align 8, !dbg !4081, !tbaa !959
  %8 = icmp eq i8* %5, %7, !dbg !4082
  br i1 %8, label %9, label %28, !dbg !4083

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4084
  %11 = load i8*, i8** %10, align 8, !dbg !4084, !tbaa !1065
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4085
  %13 = load i8*, i8** %12, align 8, !dbg !4085, !tbaa !4086
  %14 = icmp eq i8* %11, %13, !dbg !4087
  br i1 %14, label %15, label %28, !dbg !4088

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4089
  %17 = load i8*, i8** %16, align 8, !dbg !4089, !tbaa !4090
  %18 = icmp eq i8* %17, null, !dbg !4091
  br i1 %18, label %19, label %28, !dbg !4092

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4093
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4094
  call void @llvm.dbg.value(metadata i64 %21, metadata !4074, metadata !DIExpression()), !dbg !4095
  %22 = icmp eq i64 %21, -1, !dbg !4096
  br i1 %22, label %30, label %23, !dbg !4098

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4099
  %25 = load i32, i32* %24, align 8, !dbg !4100, !tbaa !1448
  %26 = and i32 %25, -17, !dbg !4100
  store i32 %26, i32* %24, align 8, !dbg !4100, !tbaa !1448
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4101
  store i64 %21, i64* %27, align 8, !dbg !4102, !tbaa !4103
  br label %30, !dbg !4104

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4105
  br label %30, !dbg !4106

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4107
  ret i32 %31, !dbg !4108
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4109 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4126, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %1, metadata !4127, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 %2, metadata !4128, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4129, metadata !DIExpression()), !dbg !4138
  %6 = bitcast i32* %5 to i8*, !dbg !4139
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4139
  %7 = icmp eq i32* %0, null, !dbg !4140
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4142
  call void @llvm.dbg.value(metadata i32* %8, metadata !4126, metadata !DIExpression()), !dbg !4135
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4143
  call void @llvm.dbg.value(metadata i64 %9, metadata !4130, metadata !DIExpression()), !dbg !4144
  %10 = icmp ugt i64 %9, -3, !dbg !4145
  %11 = icmp ne i64 %2, 0, !dbg !4146
  %12 = and i1 %11, %10, !dbg !4147
  br i1 %12, label %13, label %18, !dbg !4147

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4148
  br i1 %14, label %18, label %15, !dbg !4149

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4150, !tbaa !964
  call void @llvm.dbg.value(metadata i8 %16, metadata !4132, metadata !DIExpression()), !dbg !4151
  %17 = zext i8 %16 to i32, !dbg !4152
  store i32 %17, i32* %8, align 4, !dbg !4153, !tbaa !858
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4155
  ret i64 %19, !dbg !4155
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4156 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4195, metadata !DIExpression()), !dbg !4200
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4202, metadata !DIExpression()), !dbg !4205
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4207
  %4 = load i32, i32* %3, align 8, !dbg !4207, !tbaa !1448
  %5 = and i32 %4, 32, !dbg !4207
  %6 = icmp eq i32 %5, 0, !dbg !4208
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4209
  %8 = icmp ne i32 %7, 0, !dbg !4210
  br i1 %6, label %9, label %19, !dbg !4211

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4213
  %11 = xor i1 %8, true, !dbg !4214
  %12 = or i1 %10, %11, !dbg !4214
  %13 = sext i1 %8 to i32, !dbg !4214
  br i1 %12, label %22, label %14, !dbg !4214

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4215
  %16 = load i32, i32* %15, align 4, !dbg !4215, !tbaa !858
  %17 = icmp ne i32 %16, 9, !dbg !4216
  %18 = sext i1 %17 to i32, !dbg !4217
  br label %22, !dbg !4217

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4218

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4220
  store i32 0, i32* %21, align 4, !dbg !4222, !tbaa !858
  br label %22, !dbg !4220

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4223
  ret i32 %23, !dbg !4224
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4230, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i8 1, metadata !4231, metadata !DIExpression()), !dbg !4234
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4235
  call void @llvm.dbg.value(metadata i8* %2, metadata !4232, metadata !DIExpression()), !dbg !4236
  %3 = icmp eq i8* %2, null, !dbg !4237
  br i1 %3, label %11, label %4, !dbg !4239

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0)) #14, !dbg !4240
  %6 = icmp eq i32 %5, 0, !dbg !4245
  br i1 %6, label %10, label %7, !dbg !4246

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0)) #14, !dbg !4247
  %9 = icmp eq i32 %8, 0, !dbg !4248
  br i1 %9, label %10, label %11, !dbg !4249

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4231, metadata !DIExpression()), !dbg !4234
  br label %11, !dbg !4250

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4251
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4252 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %1, metadata !4257, metadata !DIExpression()), !dbg !4259
  %2 = icmp eq i8* %1, null, !dbg !4260
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), i8* %1, !dbg !4262
  call void @llvm.dbg.value(metadata i8* %3, metadata !4257, metadata !DIExpression()), !dbg !4259
  %4 = load i8, i8* %3, align 1, !dbg !4263, !tbaa !964
  %5 = icmp eq i8 %4, 0, !dbg !4267
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0), i8* %3, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %6, metadata !4257, metadata !DIExpression()), !dbg !4259
  ret i8* %6, !dbg !4269
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

!llvm.dbg.cu = !{!2, !52, !187, !193, !201, !275, !208, !215, !278, !268, !286, !297, !299, !301, !303, !305, !307, !309, !312, !314, !316}
!llvm.ident = !{!705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705}
!llvm.module.flags = !{!706, !707, !708, !709, !710}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 61, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !35)
!3 = !DIFile(filename: "src/unexpand.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!21 = !{!22, !24, !25, !26, !31, !32, !33, !34}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !27, line: 102, baseType: !28)
!27 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !29, line: 72, baseType: !30)
!29 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!0}
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1536, elements: !48)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !39, line: 50, size: 256, elements: !40)
!39 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!40 = !{!41, !44, !45, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !38, file: !39, line: 52, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !38, file: !39, line: 55, baseType: !31, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !38, file: !39, line: 56, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !38, file: !39, line: 57, baseType: !31, size: 32, offset: 192)
!48 = !{!49}
!49 = !DISubrange(count: 6)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !52, file: !53, line: 33, type: !175, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !93, globals: !94)
!53 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!54 = !{!5, !55, !69, !78}
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !56, line: 32, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!58 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!64 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!65 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!66 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!67 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!68 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 45, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!71 = !{!72, !73, !74, !75, !76, !77}
!72 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!75 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!76 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!77 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !80, file: !79, line: 186, baseType: !7, size: 32, elements: !91)
!79 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!80 = distinct !DISubprogram(name: "x2nrealloc", scope: !79, file: !79, line: 174, type: !81, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !86)
!81 = !DISubroutineType(types: !82)
!82 = !{!24, !24, !83, !84}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 62, baseType: !30)
!85 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: "p", arg: 1, scope: !80, file: !79, line: 174, type: !24)
!88 = !DILocalVariable(name: "pn", arg: 2, scope: !80, file: !79, line: 174, type: !83)
!89 = !DILocalVariable(name: "s", arg: 3, scope: !80, file: !79, line: 174, type: !84)
!90 = !DILocalVariable(name: "n", scope: !80, file: !79, line: 176, type: !84)
!91 = !{!92}
!92 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!93 = !{!31, !32, !7, !25, !24, !26, !84}
!94 = !{!50, !95, !97, !159, !161, !163, !165, !167, !169, !171, !173, !176, !181}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "exit_status", scope: !52, file: !53, line: 72, type: !31, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "prev_file", scope: !99, file: !53, line: 336, type: !22, isLocal: true, isDefinition: true)
!99 = distinct !DISubprogram(name: "next_file", scope: !53, file: !53, line: 334, type: !100, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !156)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !105)
!104 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !107)
!106 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !123, !125, !126, !127, !130, !131, !133, !137, !140, !142, !145, !148, !149, !150, !151, !152}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !105, file: !106, line: 51, baseType: !31, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !105, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !105, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !105, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !105, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !105, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !105, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !105, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !105, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !105, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !105, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !105, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !105, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !106, line: 36, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !105, file: !106, line: 70, baseType: !124, size: 64, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !105, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !105, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !105, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !29, line: 150, baseType: !129)
!129 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !105, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !105, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!132 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !105, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !105, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !106, line: 43, baseType: null)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !105, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !29, line: 151, baseType: !129)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !105, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !106, line: 37, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !105, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !106, line: 38, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !105, file: !106, line: 93, baseType: !124, size: 64, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !105, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !105, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !105, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !105, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 20)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "fp", arg: 1, scope: !99, file: !53, line: 334, type: !102)
!158 = !DILocalVariable(name: "file", scope: !99, file: !53, line: 337, type: !22)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "max_column_width", scope: !52, file: !53, line: 45, type: !84, isLocal: false, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !52, file: !53, line: 57, type: !84, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "tab_list", scope: !52, file: !53, line: 50, type: !25, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !52, file: !53, line: 53, type: !84, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "extend_size", scope: !52, file: !53, line: 39, type: !26, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "increment_size", scope: !52, file: !53, line: 42, type: !26, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "tab_size", scope: !52, file: !53, line: 36, type: !26, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !52, file: !53, line: 69, type: !175, isLocal: true, isDefinition: true)
!175 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !52, file: !53, line: 63, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 2)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "file_list", scope: !52, file: !53, line: 60, type: !183, isLocal: true, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!184 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "Version", scope: !187, file: !188, line: 2, type: !42, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !190)
!188 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{}
!190 = !{!185}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "file_name", scope: !193, file: !198, line: 46, type: !42, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !195)
!194 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!195 = !{!191, !196}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !193, file: !198, line: 56, type: !175, isLocal: true, isDefinition: true)
!198 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "exit_failure", scope: !201, file: !204, line: 24, type: !205, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !203)
!202 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!199}
!204 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!205 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "program_name", scope: !208, file: !212, line: 33, type: !42, isLocal: false, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !210, globals: !211)
!209 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!210 = !{!24, !22}
!211 = !{!206}
!212 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !215, file: !227, line: 85, type: !262, isLocal: false, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !217, retainedTypes: !223, globals: !224)
!216 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!217 = !{!55, !218, !5}
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !56, line: 242, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!223 = !{!31, !32, !84, !22}
!224 = !{!213, !225, !232, !244, !246, !251, !258, !260}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !215, file: !227, line: 101, type: !228, isLocal: false, isDefinition: true)
!227 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 320, elements: !230)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!230 = !{!231}
!231 = !DISubrange(count: 10)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !215, file: !227, line: 1052, type: !234, isLocal: false, isDefinition: true)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !227, line: 65, size: 448, elements: !235)
!235 = !{!236, !237, !238, !242, !243}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !234, file: !227, line: 68, baseType: !55, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !227, line: 71, baseType: !31, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !234, file: !227, line: 75, baseType: !239, size: 256, offset: 64)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 8)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !234, file: !227, line: 78, baseType: !42, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !234, file: !227, line: 81, baseType: !42, size: 64, offset: 384)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !215, file: !227, line: 116, type: !234, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "slot0", scope: !215, file: !227, line: 842, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 256)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "slotvec", scope: !215, file: !227, line: 845, type: !253, isLocal: true, isDefinition: true)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !227, line: 834, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !254, file: !227, line: 836, baseType: !84, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !254, file: !227, line: 837, baseType: !22, size: 64, offset: 64)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "nslots", scope: !215, file: !227, line: 843, type: !31, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "slotvec0", scope: !215, file: !227, line: 844, type: !254, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 704, elements: !264)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!264 = !{!265}
!265 = !DISubrange(count: 11)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !268, file: !271, line: 26, type: !272, isLocal: false, isDefinition: true)
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !270)
!269 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!270 = !{!266}
!271 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 376, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 47)
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !277)
!276 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!277 = !{!69}
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !280, retainedTypes: !285)
!279 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!280 = !{!281}
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !282, line: 41, baseType: !7, size: 32, elements: !283)
!282 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!283 = !{!284}
!284 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!285 = !{!24}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !296)
!287 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!288 = !{!289}
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !290, file: !79, line: 186, baseType: !7, size: 32, elements: !91)
!290 = distinct !DISubprogram(name: "x2nrealloc", scope: !79, file: !79, line: 174, type: !81, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !291)
!291 = !{!292, !293, !294, !295}
!292 = !DILocalVariable(name: "p", arg: 1, scope: !290, file: !79, line: 174, type: !24)
!293 = !DILocalVariable(name: "pn", arg: 2, scope: !290, file: !79, line: 174, type: !83)
!294 = !DILocalVariable(name: "s", arg: 3, scope: !290, file: !79, line: 174, type: !84)
!295 = !DILocalVariable(name: "n", scope: !290, file: !79, line: 176, type: !84)
!296 = !{!84, !22, !24}
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!298 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!300 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !285)
!302 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!304 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !285)
!306 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !285)
!308 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !311)
!310 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!311 = !{!84}
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!313 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189)
!315 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !318, retainedTypes: !285)
!317 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!318 = !{!319}
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !320, line: 41, baseType: !7, size: 32, elements: !321)
!320 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!322 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!323 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!324 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!325 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!326 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!327 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!328 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!329 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!330 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!331 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!332 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!333 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!334 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!335 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!343 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!344 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!345 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!346 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!347 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!355 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!356 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!357 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!358 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!359 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!360 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!361 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!362 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!363 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!364 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!365 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!366 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!367 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!368 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!369 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!370 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!371 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!430 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!440 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!441 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!442 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!443 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!444 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!517 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!590 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!591 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!592 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!593 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!594 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!595 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!596 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!597 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!598 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!599 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!600 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!601 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!602 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!603 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!604 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!606 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!607 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!608 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!609 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!610 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!611 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!637 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!638 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!639 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!640 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!641 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!646 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!647 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!648 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!649 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!705 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!706 = !{i32 2, !"Dwarf Version", i32 4}
!707 = !{i32 2, !"Debug Info Version", i32 3}
!708 = !{i32 1, !"wchar_size", i32 4}
!709 = !{i32 7, !"PIC Level", i32 2}
!710 = !{i32 7, !"PIE Level", i32 2}
!711 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !712, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !31}
!714 = !{!715}
!715 = !DILocalVariable(name: "status", arg: 1, scope: !711, file: !3, line: 72, type: !31)
!716 = !DILocalVariable(name: "infomap", scope: !717, file: !718, line: 632, type: !732)
!717 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !718, file: !718, line: 630, type: !719, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !721)
!718 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!719 = !DISubroutineType(types: !720)
!720 = !{null, !42}
!721 = !{!722, !716, !723, !724, !731}
!722 = !DILocalVariable(name: "program", arg: 1, scope: !717, file: !718, line: 630, type: !42)
!723 = !DILocalVariable(name: "node", scope: !717, file: !718, line: 642, type: !42)
!724 = !DILocalVariable(name: "map_prog", scope: !717, file: !718, line: 643, type: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !717, file: !718, line: 632, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !727, file: !718, line: 632, baseType: !42, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !718, line: 632, baseType: !42, size: 64, offset: 64)
!731 = !DILocalVariable(name: "lc_messages", scope: !717, file: !718, line: 655, type: !42)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 896, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 7)
!735 = !DILocation(line: 632, column: 67, scope: !717, inlinedAt: !736)
!736 = distinct !DILocation(line: 97, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 77, column: 5)
!738 = distinct !DILexicalBlock(scope: !711, file: !3, line: 74, column: 7)
!739 = !DILocation(line: 72, column: 12, scope: !711)
!740 = !DILocation(line: 74, column: 14, scope: !738)
!741 = !DILocation(line: 74, column: 7, scope: !711)
!742 = !DILocation(line: 75, column: 5, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !3, line: 75, column: 5)
!744 = !{!745, !745, i64 0}
!745 = !{!"any pointer", !746, i64 0}
!746 = !{!"omnipotent char", !747, i64 0}
!747 = !{!"Simple C/C++ TBAA"}
!748 = !DILocation(line: 78, column: 7, scope: !737)
!749 = !DILocation(line: 82, column: 7, scope: !737)
!750 = !DILocation(line: 580, column: 3, scope: !751, inlinedAt: !754)
!751 = distinct !DISubprogram(name: "emit_stdin_note", scope: !718, file: !718, line: 578, type: !752, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !189)
!752 = !DISubroutineType(types: !753)
!753 = !{null}
!754 = distinct !DILocation(line: 86, column: 7, scope: !737)
!755 = !DILocation(line: 587, column: 3, scope: !756, inlinedAt: !757)
!756 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !718, file: !718, line: 585, type: !752, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !189)
!757 = distinct !DILocation(line: 87, column: 7, scope: !737)
!758 = !DILocation(line: 89, column: 7, scope: !737)
!759 = !DILocation(line: 94, column: 7, scope: !737)
!760 = !DILocation(line: 95, column: 7, scope: !737)
!761 = !DILocation(line: 96, column: 7, scope: !737)
!762 = !DILocation(line: 632, column: 3, scope: !717, inlinedAt: !736)
!763 = !DILocation(line: 643, column: 36, scope: !717, inlinedAt: !736)
!764 = !DILocation(line: 643, column: 25, scope: !717, inlinedAt: !736)
!765 = !DILocation(line: 645, column: 33, scope: !717, inlinedAt: !736)
!766 = !DILocation(line: 645, column: 3, scope: !717, inlinedAt: !736)
!767 = !DILocation(line: 646, column: 13, scope: !717, inlinedAt: !736)
!768 = !DILocation(line: 645, column: 20, scope: !717, inlinedAt: !736)
!769 = !{!770, !745, i64 0}
!770 = !{!"infomap", !745, i64 0, !745, i64 8}
!771 = !DILocation(line: 645, column: 10, scope: !717, inlinedAt: !736)
!772 = !DILocation(line: 645, column: 28, scope: !717, inlinedAt: !736)
!773 = distinct !{!773, !774, !775}
!774 = !DILocation(line: 645, column: 3, scope: !717)
!775 = !DILocation(line: 646, column: 13, scope: !717)
!776 = !DILocation(line: 648, column: 17, scope: !777, inlinedAt: !736)
!777 = distinct !DILexicalBlock(scope: !717, file: !718, line: 648, column: 7)
!778 = !{!770, !745, i64 8}
!779 = !DILocation(line: 648, column: 7, scope: !777, inlinedAt: !736)
!780 = !DILocation(line: 648, column: 7, scope: !717, inlinedAt: !736)
!781 = !DILocation(line: 642, column: 15, scope: !717, inlinedAt: !736)
!782 = !DILocation(line: 651, column: 3, scope: !717, inlinedAt: !736)
!783 = !DILocation(line: 655, column: 29, scope: !717, inlinedAt: !736)
!784 = !DILocation(line: 655, column: 15, scope: !717, inlinedAt: !736)
!785 = !DILocation(line: 656, column: 7, scope: !786, inlinedAt: !736)
!786 = distinct !DILexicalBlock(scope: !717, file: !718, line: 656, column: 7)
!787 = !DILocation(line: 656, column: 19, scope: !786, inlinedAt: !736)
!788 = !DILocation(line: 656, column: 22, scope: !786, inlinedAt: !736)
!789 = !DILocation(line: 656, column: 7, scope: !717, inlinedAt: !736)
!790 = !DILocation(line: 662, column: 7, scope: !791, inlinedAt: !736)
!791 = distinct !DILexicalBlock(scope: !786, file: !718, line: 657, column: 5)
!792 = !DILocation(line: 664, column: 5, scope: !791, inlinedAt: !736)
!793 = !DILocation(line: 665, column: 3, scope: !717, inlinedAt: !736)
!794 = !DILocation(line: 667, column: 3, scope: !717, inlinedAt: !736)
!795 = !DILocation(line: 669, column: 1, scope: !717, inlinedAt: !736)
!796 = !DILocation(line: 99, column: 3, scope: !711)
!797 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 257, type: !798, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!31, !31, !183}
!800 = !{!801, !802, !803, !804, !805, !806}
!801 = !DILocalVariable(name: "argc", arg: 1, scope: !797, file: !3, line: 257, type: !31)
!802 = !DILocalVariable(name: "argv", arg: 2, scope: !797, file: !3, line: 257, type: !183)
!803 = !DILocalVariable(name: "have_tabval", scope: !797, file: !3, line: 259, type: !175)
!804 = !DILocalVariable(name: "tabval", scope: !797, file: !3, line: 260, type: !26)
!805 = !DILocalVariable(name: "c", scope: !797, file: !3, line: 261, type: !31)
!806 = !DILocalVariable(name: "convert_first_only", scope: !797, file: !3, line: 265, type: !175)
!807 = !DILocation(line: 257, column: 11, scope: !797)
!808 = !DILocation(line: 257, column: 24, scope: !797)
!809 = !DILocation(line: 259, column: 8, scope: !797)
!810 = !DILocation(line: 265, column: 8, scope: !797)
!811 = !DILocation(line: 268, column: 21, scope: !797)
!812 = !DILocation(line: 268, column: 3, scope: !797)
!813 = !DILocation(line: 269, column: 3, scope: !797)
!814 = !DILocation(line: 270, column: 3, scope: !797)
!815 = !DILocation(line: 271, column: 3, scope: !797)
!816 = !DILocation(line: 273, column: 3, scope: !797)
!817 = !DILocation(line: 275, column: 3, scope: !797)
!818 = !DILocation(line: 275, column: 15, scope: !797)
!819 = !DILocation(line: 260, column: 13, scope: !797)
!820 = !DILocation(line: 261, column: 7, scope: !797)
!821 = distinct !{!821, !817, !822}
!822 = !DILocation(line: 309, column: 5, scope: !797)
!823 = !DILocation(line: 281, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 279, column: 9)
!825 = distinct !DILexicalBlock(scope: !797, file: !3, line: 277, column: 5)
!826 = !DILocation(line: 283, column: 31, scope: !824)
!827 = !{!828, !828, i64 0}
!828 = !{!"_Bool", !746, i64 0}
!829 = !DILocation(line: 284, column: 11, scope: !824)
!830 = !DILocation(line: 286, column: 31, scope: !824)
!831 = !DILocation(line: 287, column: 28, scope: !824)
!832 = !DILocation(line: 287, column: 11, scope: !824)
!833 = !DILocation(line: 288, column: 11, scope: !824)
!834 = !DILocation(line: 293, column: 15, scope: !835)
!835 = distinct !DILexicalBlock(scope: !824, file: !3, line: 293, column: 15)
!836 = !DILocation(line: 293, column: 15, scope: !824)
!837 = !DILocation(line: 294, column: 13, scope: !835)
!838 = !DILocation(line: 297, column: 9, scope: !824)
!839 = !DILocation(line: 298, column: 9, scope: !824)
!840 = !DILocation(line: 300, column: 16, scope: !841)
!841 = distinct !DILexicalBlock(scope: !824, file: !3, line: 300, column: 15)
!842 = !DILocation(line: 300, column: 15, scope: !824)
!843 = !DILocation(line: 305, column: 16, scope: !844)
!844 = distinct !DILexicalBlock(scope: !824, file: !3, line: 305, column: 15)
!845 = !DILocation(line: 305, column: 15, scope: !824)
!846 = !DILocation(line: 306, column: 13, scope: !844)
!847 = !DILocation(line: 311, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !797, file: !3, line: 311, column: 7)
!849 = !DILocation(line: 311, column: 7, scope: !797)
!850 = !DILocation(line: 312, column: 25, scope: !848)
!851 = !DILocation(line: 312, column: 5, scope: !848)
!852 = !DILocation(line: 314, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !797, file: !3, line: 314, column: 7)
!854 = !DILocation(line: 314, column: 7, scope: !797)
!855 = !DILocation(line: 315, column: 5, scope: !853)
!856 = !DILocation(line: 317, column: 3, scope: !797)
!857 = !DILocation(line: 319, column: 20, scope: !797)
!858 = !{!859, !859, i64 0}
!859 = !{!"int", !746, i64 0}
!860 = !DILocation(line: 319, column: 27, scope: !797)
!861 = !DILocation(line: 319, column: 38, scope: !797)
!862 = !DILocation(line: 319, column: 19, scope: !797)
!863 = !DILocation(line: 319, column: 3, scope: !797)
!864 = !DILocation(line: 109, column: 14, scope: !865, inlinedAt: !919)
!865 = distinct !DISubprogram(name: "unexpand", scope: !3, file: !3, line: 106, type: !752, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !866)
!866 = !{!867, !902, !903, !905, !906, !907, !908, !909, !910, !911, !912, !916}
!867 = !DILocalVariable(name: "fp", scope: !865, file: !3, line: 109, type: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !870, file: !106, line: 51, baseType: !31, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !870, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !870, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !870, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !870, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !870, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !870, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !870, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !870, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !870, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !870, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !870, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !870, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !870, file: !106, line: 70, baseType: !886, size: 64, offset: 832)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !870, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !870, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !870, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !870, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !870, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !870, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !870, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !870, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !870, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !870, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !870, file: !106, line: 93, baseType: !886, size: 64, offset: 1344)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !870, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !870, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !870, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !870, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!902 = !DILocalVariable(name: "pending_blank", scope: !865, file: !3, line: 114, type: !22)
!903 = !DILocalVariable(name: "c", scope: !904, file: !3, line: 127, type: !31)
!904 = distinct !DILexicalBlock(scope: !865, file: !3, line: 125, column: 5)
!905 = !DILocalVariable(name: "convert", scope: !904, file: !3, line: 130, type: !175)
!906 = !DILocalVariable(name: "column", scope: !904, file: !3, line: 137, type: !26)
!907 = !DILocalVariable(name: "next_tab_column", scope: !904, file: !3, line: 140, type: !26)
!908 = !DILocalVariable(name: "tab_index", scope: !904, file: !3, line: 143, type: !84)
!909 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !904, file: !3, line: 146, type: !175)
!910 = !DILocalVariable(name: "prev_blank", scope: !904, file: !3, line: 151, type: !175)
!911 = !DILocalVariable(name: "pending", scope: !904, file: !3, line: 154, type: !84)
!912 = !DILocalVariable(name: "blank", scope: !913, file: !3, line: 166, type: !175)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 165, column: 13)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 164, column: 15)
!915 = distinct !DILexicalBlock(scope: !904, file: !3, line: 160, column: 9)
!916 = !DILocalVariable(name: "last_tab", scope: !917, file: !3, line: 170, type: !175)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 169, column: 17)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 168, column: 19)
!919 = distinct !DILocation(line: 321, column: 3, scope: !797)
!920 = !DILocation(line: 109, column: 9, scope: !865, inlinedAt: !919)
!921 = !DILocation(line: 116, column: 8, scope: !922, inlinedAt: !919)
!922 = distinct !DILexicalBlock(scope: !865, file: !3, line: 116, column: 7)
!923 = !DILocation(line: 116, column: 7, scope: !865, inlinedAt: !919)
!924 = !DILocation(line: 122, column: 28, scope: !865, inlinedAt: !919)
!925 = !{!926, !926, i64 0}
!926 = !{!"long", !746, i64 0}
!927 = !DILocation(line: 122, column: 19, scope: !865, inlinedAt: !919)
!928 = !DILocation(line: 114, column: 9, scope: !865, inlinedAt: !919)
!929 = !DILocation(line: 124, column: 3, scope: !865, inlinedAt: !919)
!930 = !DILocation(line: 0, scope: !915, inlinedAt: !919)
!931 = !DILocation(line: 130, column: 12, scope: !904, inlinedAt: !919)
!932 = !DILocation(line: 137, column: 17, scope: !904, inlinedAt: !919)
!933 = !DILocation(line: 140, column: 17, scope: !904, inlinedAt: !919)
!934 = !DILocation(line: 143, column: 7, scope: !904, inlinedAt: !919)
!935 = !DILocation(line: 143, column: 14, scope: !904, inlinedAt: !919)
!936 = !DILocation(line: 146, column: 12, scope: !904, inlinedAt: !919)
!937 = !DILocation(line: 151, column: 12, scope: !904, inlinedAt: !919)
!938 = !DILocation(line: 154, column: 14, scope: !904, inlinedAt: !919)
!939 = !DILocation(line: 159, column: 7, scope: !904, inlinedAt: !919)
!940 = !DILocation(line: 0, scope: !913, inlinedAt: !919)
!941 = !DILocation(line: 0, scope: !942, inlinedAt: !919)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 184, column: 25)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 183, column: 27)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 179, column: 21)
!945 = distinct !DILexicalBlock(scope: !917, file: !3, line: 178, column: 23)
!946 = !DILocation(line: 0, scope: !947, inlinedAt: !919)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 230, column: 17)
!948 = distinct !DILexicalBlock(scope: !913, file: !3, line: 229, column: 19)
!949 = !DILocation(line: 161, column: 11, scope: !915, inlinedAt: !919)
!950 = !DILocalVariable(name: "__fp", arg: 1, scope: !951, file: !952, line: 66, type: !868)
!951 = distinct !DISubprogram(name: "getc_unlocked", scope: !952, file: !952, line: 66, type: !953, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !955)
!952 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!953 = !DISubroutineType(types: !954)
!954 = !{!31, !868}
!955 = !{!950}
!956 = !DILocation(line: 66, column: 22, scope: !951, inlinedAt: !957)
!957 = distinct !DILocation(line: 161, column: 23, scope: !915, inlinedAt: !919)
!958 = !DILocation(line: 68, column: 10, scope: !951, inlinedAt: !957)
!959 = !{!960, !745, i64 8}
!960 = !{!"_IO_FILE", !859, i64 0, !745, i64 8, !745, i64 16, !745, i64 24, !745, i64 32, !745, i64 40, !745, i64 48, !745, i64 56, !745, i64 64, !745, i64 72, !745, i64 80, !745, i64 88, !745, i64 96, !745, i64 104, !859, i64 112, !859, i64 116, !926, i64 120, !961, i64 128, !746, i64 130, !746, i64 131, !745, i64 136, !926, i64 144, !745, i64 152, !745, i64 160, !745, i64 168, !745, i64 176, !926, i64 184, !859, i64 192, !746, i64 196}
!961 = !{!"short", !746, i64 0}
!962 = !{!960, !745, i64 16}
!963 = !{!"branch_weights", i32 2000, i32 1}
!964 = !{!746, !746, i64 0}
!965 = !DILocation(line: 127, column: 11, scope: !904, inlinedAt: !919)
!966 = !DILocation(line: 161, column: 38, scope: !915, inlinedAt: !919)
!967 = !DILocation(line: 161, column: 34, scope: !915, inlinedAt: !919)
!968 = !DILocation(line: 161, column: 47, scope: !915, inlinedAt: !919)
!969 = distinct !{!969, !970, !971}
!970 = !DILocation(line: 161, column: 11, scope: !915)
!971 = !DILocation(line: 162, column: 13, scope: !915)
!972 = !DILocation(line: 0, scope: !865, inlinedAt: !919)
!973 = !DILocation(line: 164, column: 15, scope: !914, inlinedAt: !919)
!974 = !DILocation(line: 164, column: 15, scope: !915, inlinedAt: !919)
!975 = !DILocation(line: 166, column: 31, scope: !913, inlinedAt: !919)
!976 = !{!961, !961, i64 0}
!977 = !DILocation(line: 166, column: 29, scope: !913, inlinedAt: !919)
!978 = !DILocation(line: 166, column: 20, scope: !913, inlinedAt: !919)
!979 = !DILocation(line: 168, column: 19, scope: !913, inlinedAt: !919)
!980 = !DILocation(line: 170, column: 24, scope: !917, inlinedAt: !919)
!981 = !DILocation(line: 170, column: 19, scope: !917, inlinedAt: !919)
!982 = !DILocation(line: 172, column: 37, scope: !917, inlinedAt: !919)
!983 = !DILocation(line: 175, column: 23, scope: !984, inlinedAt: !919)
!984 = distinct !DILexicalBlock(scope: !917, file: !3, line: 175, column: 23)
!985 = !{i8 0, i8 2}
!986 = !DILocation(line: 175, column: 23, scope: !917, inlinedAt: !919)
!987 = !DILocation(line: 178, column: 23, scope: !945, inlinedAt: !919)
!988 = !DILocation(line: 178, column: 23, scope: !917, inlinedAt: !919)
!989 = !DILocation(line: 180, column: 43, scope: !990, inlinedAt: !919)
!990 = distinct !DILexicalBlock(scope: !944, file: !3, line: 180, column: 27)
!991 = !DILocation(line: 180, column: 27, scope: !944, inlinedAt: !919)
!992 = !DILocation(line: 181, column: 25, scope: !990, inlinedAt: !919)
!993 = !DILocation(line: 183, column: 29, scope: !943, inlinedAt: !919)
!994 = !DILocation(line: 183, column: 27, scope: !944, inlinedAt: !919)
!995 = !DILocation(line: 187, column: 31, scope: !996, inlinedAt: !919)
!996 = distinct !DILexicalBlock(scope: !942, file: !3, line: 187, column: 31)
!997 = !DILocation(line: 187, column: 31, scope: !942, inlinedAt: !919)
!998 = !DILocation(line: 192, column: 33, scope: !999, inlinedAt: !919)
!999 = distinct !DILexicalBlock(scope: !943, file: !3, line: 191, column: 25)
!1000 = !DILocation(line: 194, column: 34, scope: !1001, inlinedAt: !919)
!1001 = distinct !DILexicalBlock(scope: !999, file: !3, line: 194, column: 31)
!1002 = !DILocation(line: 194, column: 55, scope: !1001, inlinedAt: !919)
!1003 = !DILocation(line: 194, column: 45, scope: !1001, inlinedAt: !919)
!1004 = !DILocation(line: 0, scope: !797)
!1005 = !DILocation(line: 211, column: 33, scope: !944, inlinedAt: !919)
!1006 = !DILocation(line: 0, scope: !999, inlinedAt: !919)
!1007 = !DILocation(line: 212, column: 21, scope: !944, inlinedAt: !919)
!1008 = !DILocation(line: 213, column: 17, scope: !918, inlinedAt: !919)
!1009 = !DILocation(line: 214, column: 26, scope: !1010, inlinedAt: !919)
!1010 = distinct !DILexicalBlock(scope: !918, file: !3, line: 214, column: 24)
!1011 = !DILocation(line: 214, column: 24, scope: !918, inlinedAt: !919)
!1012 = !DILocation(line: 218, column: 30, scope: !1013, inlinedAt: !919)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 215, column: 17)
!1014 = !DILocation(line: 218, column: 29, scope: !1013, inlinedAt: !919)
!1015 = !DILocation(line: 218, column: 26, scope: !1013, inlinedAt: !919)
!1016 = !DILocation(line: 220, column: 34, scope: !1013, inlinedAt: !919)
!1017 = !DILocation(line: 220, column: 33, scope: !1013, inlinedAt: !919)
!1018 = !DILocation(line: 220, column: 32, scope: !1013, inlinedAt: !919)
!1019 = !DILocation(line: 220, column: 29, scope: !1013, inlinedAt: !919)
!1020 = !DILocation(line: 221, column: 17, scope: !1013, inlinedAt: !919)
!1021 = !DILocation(line: 224, column: 25, scope: !1022, inlinedAt: !919)
!1022 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 223, column: 17)
!1023 = !DILocation(line: 225, column: 24, scope: !1024, inlinedAt: !919)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 225, column: 23)
!1025 = !DILocation(line: 225, column: 23, scope: !1022, inlinedAt: !919)
!1026 = !DILocation(line: 226, column: 21, scope: !1024, inlinedAt: !919)
!1027 = !DILocation(line: 161, column: 21, scope: !915, inlinedAt: !919)
!1028 = !DILocation(line: 0, scope: !904, inlinedAt: !919)
!1029 = !DILocation(line: 0, scope: !1022, inlinedAt: !919)
!1030 = !DILocation(line: 229, column: 19, scope: !913, inlinedAt: !919)
!1031 = !DILocation(line: 231, column: 38, scope: !1032, inlinedAt: !919)
!1032 = distinct !DILexicalBlock(scope: !947, file: !3, line: 231, column: 23)
!1033 = !DILocation(line: 231, column: 23, scope: !947, inlinedAt: !919)
!1034 = !DILocation(line: 232, column: 38, scope: !1032, inlinedAt: !919)
!1035 = !DILocation(line: 232, column: 21, scope: !1032, inlinedAt: !919)
!1036 = !DILocation(line: 233, column: 23, scope: !1037, inlinedAt: !919)
!1037 = distinct !DILexicalBlock(scope: !947, file: !3, line: 233, column: 23)
!1038 = !DILocation(line: 233, column: 66, scope: !1037, inlinedAt: !919)
!1039 = !DILocation(line: 233, column: 23, scope: !947, inlinedAt: !919)
!1040 = !DILocation(line: 234, column: 21, scope: !1037, inlinedAt: !919)
!1041 = !DILocation(line: 240, column: 26, scope: !913, inlinedAt: !919)
!1042 = !DILocation(line: 240, column: 46, scope: !913, inlinedAt: !919)
!1043 = !DILocation(line: 240, column: 23, scope: !913, inlinedAt: !919)
!1044 = !DILocation(line: 198, column: 35, scope: !1045, inlinedAt: !919)
!1045 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 195, column: 29)
!1046 = !DILocation(line: 200, column: 58, scope: !1045, inlinedAt: !919)
!1047 = !DILocation(line: 200, column: 52, scope: !1045, inlinedAt: !919)
!1048 = !DILocation(line: 200, column: 31, scope: !1045, inlinedAt: !919)
!1049 = !DILocation(line: 200, column: 56, scope: !1045, inlinedAt: !919)
!1050 = !DILocation(line: 243, column: 17, scope: !1051, inlinedAt: !919)
!1051 = distinct !DILexicalBlock(scope: !915, file: !3, line: 243, column: 15)
!1052 = !DILocation(line: 243, column: 15, scope: !915, inlinedAt: !919)
!1053 = !DILocation(line: 245, column: 15, scope: !1054, inlinedAt: !919)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 244, column: 13)
!1055 = !DILocation(line: 253, column: 5, scope: !865, inlinedAt: !919)
!1056 = !DILocalVariable(name: "__c", arg: 1, scope: !1057, file: !952, line: 108, type: !31)
!1057 = distinct !DISubprogram(name: "putchar_unlocked", scope: !952, file: !952, line: 108, type: !1058, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!31, !31}
!1060 = !{!1056}
!1061 = !DILocation(line: 108, column: 23, scope: !1057, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 249, column: 15, scope: !1063, inlinedAt: !919)
!1063 = distinct !DILexicalBlock(scope: !915, file: !3, line: 249, column: 15)
!1064 = !DILocation(line: 110, column: 10, scope: !1057, inlinedAt: !1062)
!1065 = !{!960, !745, i64 40}
!1066 = !{!960, !745, i64 48}
!1067 = !DILocation(line: 249, column: 15, scope: !915, inlinedAt: !919)
!1068 = !DILocation(line: 249, column: 27, scope: !1063, inlinedAt: !919)
!1069 = !DILocation(line: 250, column: 13, scope: !1063, inlinedAt: !919)
!1070 = !DILocation(line: 185, column: 34, scope: !942, inlinedAt: !919)
!1071 = !DILocation(line: 236, column: 45, scope: !947, inlinedAt: !919)
!1072 = !DILocation(line: 239, column: 26, scope: !913, inlinedAt: !919)
!1073 = !DILocation(line: 235, column: 27, scope: !947, inlinedAt: !919)
!1074 = !DILocation(line: 252, column: 16, scope: !904, inlinedAt: !919)
!1075 = !DILocation(line: 251, column: 9, scope: !915, inlinedAt: !919)
!1076 = distinct !{!1076, !1077, !1078}
!1077 = !DILocation(line: 159, column: 7, scope: !904)
!1078 = !DILocation(line: 252, column: 23, scope: !904)
!1079 = !DILocation(line: 323, column: 3, scope: !797)
!1080 = !DILocation(line: 325, column: 10, scope: !797)
!1081 = !DILocation(line: 326, column: 1, scope: !797)
!1082 = distinct !DISubprogram(name: "add_tab_stop", scope: !53, file: !53, line: 78, type: !1083, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !26}
!1085 = !{!1086, !1087, !1088}
!1086 = !DILocalVariable(name: "tabval", arg: 1, scope: !1082, file: !53, line: 78, type: !26)
!1087 = !DILocalVariable(name: "prev_column", scope: !1082, file: !53, line: 80, type: !26)
!1088 = !DILocalVariable(name: "column_width", scope: !1082, file: !53, line: 81, type: !26)
!1089 = !DILocation(line: 78, column: 25, scope: !1082)
!1090 = !DILocation(line: 80, column: 27, scope: !1082)
!1091 = !DILocation(line: 80, column: 44, scope: !1082)
!1092 = !DILocation(line: 80, column: 68, scope: !1082)
!1093 = !DILocation(line: 80, column: 13, scope: !1082)
!1094 = !DILocation(line: 81, column: 28, scope: !1082)
!1095 = !DILocation(line: 81, column: 13, scope: !1082)
!1096 = !DILocation(line: 83, column: 25, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1082, file: !53, line: 83, column: 7)
!1098 = !DILocation(line: 83, column: 22, scope: !1097)
!1099 = !DILocation(line: 83, column: 7, scope: !1082)
!1100 = !DILocation(line: 85, column: 3, scope: !1082)
!1101 = !DILocation(line: 84, column: 16, scope: !1097)
!1102 = !DILocation(line: 174, column: 19, scope: !80, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 84, column: 16, scope: !1097)
!1104 = !DILocation(line: 174, column: 30, scope: !80, inlinedAt: !1103)
!1105 = !DILocation(line: 174, column: 41, scope: !80, inlinedAt: !1103)
!1106 = !DILocation(line: 176, column: 10, scope: !80, inlinedAt: !1103)
!1107 = !DILocation(line: 178, column: 9, scope: !1108, inlinedAt: !1103)
!1108 = distinct !DILexicalBlock(scope: !80, file: !79, line: 178, column: 7)
!1109 = !DILocation(line: 178, column: 7, scope: !80, inlinedAt: !1103)
!1110 = !DILocation(line: 180, column: 11, scope: !1111, inlinedAt: !1103)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !79, line: 179, column: 5)
!1112 = !DILocation(line: 191, column: 11, scope: !1113, inlinedAt: !1103)
!1113 = distinct !DILexicalBlock(scope: !1111, file: !79, line: 191, column: 11)
!1114 = !DILocation(line: 191, column: 11, scope: !1111, inlinedAt: !1103)
!1115 = !DILocation(line: 192, column: 9, scope: !1113, inlinedAt: !1103)
!1116 = !DILocation(line: 201, column: 11, scope: !1117, inlinedAt: !1103)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !79, line: 200, column: 11)
!1118 = distinct !DILexicalBlock(scope: !1108, file: !79, line: 195, column: 5)
!1119 = !DILocation(line: 200, column: 11, scope: !1118, inlinedAt: !1103)
!1120 = !DILocation(line: 202, column: 9, scope: !1117, inlinedAt: !1103)
!1121 = !DILocation(line: 203, column: 14, scope: !1118, inlinedAt: !1103)
!1122 = !DILocation(line: 203, column: 18, scope: !1118, inlinedAt: !1103)
!1123 = !DILocation(line: 203, column: 9, scope: !1118, inlinedAt: !1103)
!1124 = !DILocation(line: 0, scope: !80, inlinedAt: !1103)
!1125 = !DILocation(line: 206, column: 7, scope: !80, inlinedAt: !1103)
!1126 = !DILocation(line: 207, column: 25, scope: !80, inlinedAt: !1103)
!1127 = !DILocation(line: 207, column: 10, scope: !80, inlinedAt: !1103)
!1128 = !DILocation(line: 84, column: 14, scope: !1097)
!1129 = !DILocation(line: 84, column: 5, scope: !1097)
!1130 = !DILocation(line: 85, column: 26, scope: !1082)
!1131 = !DILocation(line: 85, column: 30, scope: !1082)
!1132 = !DILocation(line: 87, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1082, file: !53, line: 87, column: 7)
!1134 = !DILocation(line: 87, column: 24, scope: !1133)
!1135 = !DILocation(line: 87, column: 7, scope: !1082)
!1136 = !DILocation(line: 91, column: 24, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !53, line: 88, column: 5)
!1138 = !DILocation(line: 92, column: 5, scope: !1137)
!1139 = !DILocation(line: 93, column: 1, scope: !1082)
!1140 = distinct !DISubprogram(name: "parse_tab_stops", scope: !53, file: !53, line: 132, type: !719, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1160}
!1142 = !DILocalVariable(name: "stops", arg: 1, scope: !1140, file: !53, line: 132, type: !42)
!1143 = !DILocalVariable(name: "have_tabval", scope: !1140, file: !53, line: 134, type: !175)
!1144 = !DILocalVariable(name: "tabval", scope: !1140, file: !53, line: 135, type: !26)
!1145 = !DILocalVariable(name: "extend_tabval", scope: !1140, file: !53, line: 136, type: !175)
!1146 = !DILocalVariable(name: "increment_tabval", scope: !1140, file: !53, line: 137, type: !175)
!1147 = !DILocalVariable(name: "num_start", scope: !1140, file: !53, line: 138, type: !42)
!1148 = !DILocalVariable(name: "ok", scope: !1140, file: !53, line: 139, type: !175)
!1149 = !DILocalVariable(name: "len", scope: !1150, file: !53, line: 202, type: !84)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !53, line: 201, column: 13)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !53, line: 200, column: 15)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !53, line: 191, column: 9)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !53, line: 190, column: 16)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !53, line: 179, column: 16)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !53, line: 168, column: 16)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !53, line: 143, column: 11)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !53, line: 142, column: 5)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !53, line: 141, column: 3)
!1159 = distinct !DILexicalBlock(scope: !1140, file: !53, line: 141, column: 3)
!1160 = !DILocalVariable(name: "bad_num", scope: !1150, file: !53, line: 203, type: !22)
!1161 = !DILocation(line: 132, column: 30, scope: !1140)
!1162 = !DILocation(line: 134, column: 8, scope: !1140)
!1163 = !DILocation(line: 135, column: 13, scope: !1140)
!1164 = !DILocation(line: 136, column: 8, scope: !1140)
!1165 = !DILocation(line: 137, column: 8, scope: !1140)
!1166 = !DILocation(line: 138, column: 15, scope: !1140)
!1167 = !DILocation(line: 139, column: 8, scope: !1140)
!1168 = !DILocation(line: 141, column: 3, scope: !1140)
!1169 = !DILocation(line: 0, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1156, file: !53, line: 144, column: 9)
!1171 = !DILocation(line: 141, column: 10, scope: !1158)
!1172 = !DILocation(line: 141, column: 3, scope: !1159)
!1173 = !DILocation(line: 143, column: 28, scope: !1156)
!1174 = !DILocation(line: 143, column: 11, scope: !1157)
!1175 = !DILocation(line: 145, column: 15, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1170, file: !53, line: 145, column: 15)
!1177 = !DILocation(line: 145, column: 15, scope: !1170)
!1178 = !DILocation(line: 147, column: 19, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !53, line: 147, column: 19)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !53, line: 146, column: 13)
!1181 = !DILocation(line: 147, column: 19, scope: !1180)
!1182 = !DILocalVariable(name: "tabval", arg: 1, scope: !1183, file: !53, line: 96, type: !26)
!1183 = distinct !DISubprogram(name: "set_extend_size", scope: !53, file: !53, line: 96, type: !1184, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!175, !26}
!1186 = !{!1182, !1187}
!1187 = !DILocalVariable(name: "ok", scope: !1183, file: !53, line: 98, type: !175)
!1188 = !DILocation(line: 96, column: 28, scope: !1183, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 149, column: 25, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !53, line: 149, column: 23)
!1191 = distinct !DILexicalBlock(scope: !1179, file: !53, line: 148, column: 17)
!1192 = !DILocation(line: 98, column: 8, scope: !1183, inlinedAt: !1189)
!1193 = !DILocation(line: 100, column: 7, scope: !1194, inlinedAt: !1189)
!1194 = distinct !DILexicalBlock(scope: !1183, file: !53, line: 100, column: 7)
!1195 = !DILocation(line: 100, column: 7, scope: !1183, inlinedAt: !1189)
!1196 = !DILocation(line: 107, column: 15, scope: !1183, inlinedAt: !1189)
!1197 = !DILocation(line: 149, column: 23, scope: !1191)
!1198 = !DILocation(line: 103, column: 14, scope: !1199, inlinedAt: !1189)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !53, line: 101, column: 5)
!1200 = !DILocation(line: 102, column: 7, scope: !1199, inlinedAt: !1189)
!1201 = !DILocation(line: 155, column: 24, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1179, file: !53, line: 155, column: 24)
!1203 = !DILocation(line: 155, column: 24, scope: !1179)
!1204 = !DILocalVariable(name: "tabval", arg: 1, scope: !1205, file: !53, line: 113, type: !26)
!1205 = distinct !DISubprogram(name: "set_increment_size", scope: !53, file: !53, line: 113, type: !1184, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1206)
!1206 = !{!1204, !1207}
!1207 = !DILocalVariable(name: "ok", scope: !1205, file: !53, line: 115, type: !175)
!1208 = !DILocation(line: 113, column: 31, scope: !1205, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 157, column: 25, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !53, line: 157, column: 23)
!1211 = distinct !DILexicalBlock(scope: !1202, file: !53, line: 156, column: 17)
!1212 = !DILocation(line: 115, column: 8, scope: !1205, inlinedAt: !1209)
!1213 = !DILocation(line: 117, column: 7, scope: !1214, inlinedAt: !1209)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !53, line: 117, column: 7)
!1215 = !DILocation(line: 117, column: 7, scope: !1205, inlinedAt: !1209)
!1216 = !DILocation(line: 124, column: 18, scope: !1205, inlinedAt: !1209)
!1217 = !DILocation(line: 157, column: 23, scope: !1211)
!1218 = !DILocation(line: 120, column: 14, scope: !1219, inlinedAt: !1209)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !53, line: 118, column: 5)
!1220 = !DILocation(line: 119, column: 7, scope: !1219, inlinedAt: !1209)
!1221 = !DILocation(line: 164, column: 17, scope: !1202)
!1222 = !DILocation(line: 168, column: 16, scope: !1156)
!1223 = !DILocation(line: 170, column: 15, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !53, line: 170, column: 15)
!1225 = distinct !DILexicalBlock(scope: !1155, file: !53, line: 169, column: 9)
!1226 = !DILocation(line: 170, column: 15, scope: !1225)
!1227 = !DILocation(line: 172, column: 28, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !53, line: 171, column: 13)
!1229 = !DILocation(line: 173, column: 22, scope: !1228)
!1230 = !DILocation(line: 172, column: 15, scope: !1228)
!1231 = !DILocation(line: 175, column: 13, scope: !1228)
!1232 = !DILocation(line: 181, column: 15, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !53, line: 181, column: 15)
!1234 = distinct !DILexicalBlock(scope: !1154, file: !53, line: 180, column: 9)
!1235 = !DILocation(line: 181, column: 15, scope: !1234)
!1236 = !DILocation(line: 183, column: 28, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !53, line: 182, column: 13)
!1238 = !DILocation(line: 184, column: 22, scope: !1237)
!1239 = !DILocation(line: 183, column: 15, scope: !1237)
!1240 = !DILocation(line: 186, column: 13, scope: !1237)
!1241 = !DILocation(line: 168, column: 16, scope: !1155)
!1242 = !DILocation(line: 190, column: 16, scope: !1153)
!1243 = !DILocation(line: 190, column: 16, scope: !1154)
!1244 = !DILocation(line: 192, column: 16, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1152, file: !53, line: 192, column: 15)
!1246 = !DILocation(line: 192, column: 15, scope: !1152)
!1247 = !DILocation(line: 200, column: 16, scope: !1151)
!1248 = !DILocation(line: 200, column: 15, scope: !1152)
!1249 = !DILocation(line: 202, column: 28, scope: !1150)
!1250 = !DILocation(line: 202, column: 22, scope: !1150)
!1251 = !DILocation(line: 203, column: 31, scope: !1150)
!1252 = !DILocation(line: 203, column: 21, scope: !1150)
!1253 = !DILocation(line: 204, column: 28, scope: !1150)
!1254 = !DILocation(line: 204, column: 59, scope: !1150)
!1255 = !DILocation(line: 204, column: 15, scope: !1150)
!1256 = !DILocation(line: 205, column: 15, scope: !1150)
!1257 = !DILocation(line: 207, column: 33, scope: !1150)
!1258 = !DILocation(line: 207, column: 39, scope: !1150)
!1259 = !DILocation(line: 208, column: 13, scope: !1150)
!1260 = !DILocation(line: 212, column: 24, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1153, file: !53, line: 211, column: 9)
!1262 = !DILocation(line: 213, column: 18, scope: !1261)
!1263 = !DILocation(line: 212, column: 11, scope: !1261)
!1264 = !DILocation(line: 215, column: 11, scope: !1261)
!1265 = !DILocation(line: 0, scope: !1140)
!1266 = !DILocation(line: 0, scope: !1150)
!1267 = !DILocation(line: 141, column: 23, scope: !1158)
!1268 = !DILocation(line: 141, column: 3, scope: !1158)
!1269 = distinct !{!1269, !1172, !1270}
!1270 = !DILocation(line: 217, column: 5, scope: !1159)
!1271 = !DILocation(line: 219, column: 10, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1140, file: !53, line: 219, column: 7)
!1273 = !DILocation(line: 221, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !53, line: 221, column: 11)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !53, line: 220, column: 5)
!1276 = !DILocation(line: 221, column: 11, scope: !1275)
!1277 = !DILocation(line: 96, column: 28, scope: !1183, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 222, column: 15, scope: !1274)
!1279 = !DILocation(line: 98, column: 8, scope: !1183, inlinedAt: !1278)
!1280 = !DILocation(line: 100, column: 7, scope: !1194, inlinedAt: !1278)
!1281 = !DILocation(line: 100, column: 7, scope: !1183, inlinedAt: !1278)
!1282 = !DILocation(line: 103, column: 14, scope: !1199, inlinedAt: !1278)
!1283 = !DILocation(line: 102, column: 7, scope: !1199, inlinedAt: !1278)
!1284 = !DILocation(line: 106, column: 5, scope: !1199, inlinedAt: !1278)
!1285 = !DILocation(line: 107, column: 15, scope: !1183, inlinedAt: !1278)
!1286 = !DILocation(line: 222, column: 9, scope: !1274)
!1287 = !DILocation(line: 223, column: 16, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1274, file: !53, line: 223, column: 16)
!1289 = !DILocation(line: 223, column: 16, scope: !1274)
!1290 = !DILocation(line: 113, column: 31, scope: !1205, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 224, column: 15, scope: !1288)
!1292 = !DILocation(line: 115, column: 8, scope: !1205, inlinedAt: !1291)
!1293 = !DILocation(line: 117, column: 7, scope: !1214, inlinedAt: !1291)
!1294 = !DILocation(line: 117, column: 7, scope: !1205, inlinedAt: !1291)
!1295 = !DILocation(line: 120, column: 14, scope: !1219, inlinedAt: !1291)
!1296 = !DILocation(line: 119, column: 7, scope: !1219, inlinedAt: !1291)
!1297 = !DILocation(line: 123, column: 5, scope: !1219, inlinedAt: !1291)
!1298 = !DILocation(line: 124, column: 18, scope: !1205, inlinedAt: !1291)
!1299 = !DILocation(line: 224, column: 9, scope: !1288)
!1300 = !DILocation(line: 226, column: 9, scope: !1288)
!1301 = !DILocation(line: 0, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1190, file: !53, line: 150, column: 21)
!1303 = !DILocation(line: 229, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1140, file: !53, line: 229, column: 7)
!1305 = !DILocation(line: 229, column: 7, scope: !1140)
!1306 = !DILocation(line: 230, column: 5, scope: !1304)
!1307 = !DILocation(line: 231, column: 1, scope: !1140)
!1308 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !53, file: !53, line: 263, type: !752, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !189)
!1309 = !DILocation(line: 265, column: 23, scope: !1308)
!1310 = !DILocation(line: 265, column: 33, scope: !1308)
!1311 = !DILocalVariable(name: "tabs", arg: 1, scope: !1312, file: !53, line: 237, type: !1315)
!1312 = distinct !DISubprogram(name: "validate_tab_stops", scope: !53, file: !53, line: 237, type: !1313, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1317)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1315, !84}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1317 = !{!1311, !1318, !1319, !1320}
!1318 = !DILocalVariable(name: "entries", arg: 2, scope: !1312, file: !53, line: 237, type: !84)
!1319 = !DILocalVariable(name: "prev_tab", scope: !1312, file: !53, line: 239, type: !26)
!1320 = !DILocalVariable(name: "i", scope: !1321, file: !53, line: 241, type: !84)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !53, line: 241, column: 3)
!1322 = !DILocation(line: 237, column: 38, scope: !1312, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 265, column: 3, scope: !1308)
!1324 = !DILocation(line: 237, column: 51, scope: !1312, inlinedAt: !1323)
!1325 = !DILocation(line: 239, column: 13, scope: !1312, inlinedAt: !1323)
!1326 = !DILocation(line: 241, column: 15, scope: !1321, inlinedAt: !1323)
!1327 = !DILocation(line: 241, column: 24, scope: !1328, inlinedAt: !1323)
!1328 = distinct !DILexicalBlock(scope: !1321, file: !53, line: 241, column: 3)
!1329 = !DILocation(line: 241, column: 3, scope: !1321, inlinedAt: !1323)
!1330 = distinct !{!1330, !1331, !1332}
!1331 = !DILocation(line: 241, column: 3, scope: !1321)
!1332 = !DILocation(line: 248, column: 5, scope: !1321)
!1333 = !DILocation(line: 250, column: 7, scope: !1334, inlinedAt: !1323)
!1334 = distinct !DILexicalBlock(scope: !1312, file: !53, line: 250, column: 7)
!1335 = !DILocation(line: 250, column: 25, scope: !1334, inlinedAt: !1323)
!1336 = !DILocation(line: 250, column: 22, scope: !1334, inlinedAt: !1323)
!1337 = !DILocation(line: 243, column: 11, scope: !1338, inlinedAt: !1323)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !53, line: 243, column: 11)
!1339 = distinct !DILexicalBlock(scope: !1328, file: !53, line: 242, column: 5)
!1340 = !DILocation(line: 243, column: 19, scope: !1338, inlinedAt: !1323)
!1341 = !DILocation(line: 243, column: 11, scope: !1339, inlinedAt: !1323)
!1342 = !DILocation(line: 244, column: 9, scope: !1338, inlinedAt: !1323)
!1343 = !DILocation(line: 245, column: 19, scope: !1344, inlinedAt: !1323)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !53, line: 245, column: 11)
!1345 = !DILocation(line: 241, column: 36, scope: !1328, inlinedAt: !1323)
!1346 = !DILocation(line: 245, column: 11, scope: !1339, inlinedAt: !1323)
!1347 = !DILocation(line: 246, column: 9, scope: !1344, inlinedAt: !1323)
!1348 = !DILocation(line: 251, column: 5, scope: !1334, inlinedAt: !1323)
!1349 = !DILocation(line: 267, column: 7, scope: !1308)
!1350 = !DILocation(line: 268, column: 35, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1308, file: !53, line: 267, column: 7)
!1352 = !DILocation(line: 269, column: 51, scope: !1351)
!1353 = !DILocation(line: 268, column: 33, scope: !1351)
!1354 = !DILocation(line: 268, column: 5, scope: !1351)
!1355 = !DILocation(line: 271, column: 27, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !53, line: 271, column: 12)
!1357 = !DILocation(line: 271, column: 32, scope: !1356)
!1358 = !DILocation(line: 272, column: 16, scope: !1356)
!1359 = !DILocation(line: 272, column: 5, scope: !1356)
!1360 = !DILocation(line: 0, scope: !1351)
!1361 = !DILocation(line: 275, column: 1, scope: !1308)
!1362 = distinct !DISubprogram(name: "get_next_tab_column", scope: !53, file: !53, line: 279, type: !1363, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1366)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!26, !1316, !83, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1366 = !{!1367, !1368, !1369, !1370, !1374}
!1367 = !DILocalVariable(name: "column", arg: 1, scope: !1362, file: !53, line: 279, type: !1316)
!1368 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1362, file: !53, line: 279, type: !83)
!1369 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1362, file: !53, line: 280, type: !1365)
!1370 = !DILocalVariable(name: "tab", scope: !1371, file: !53, line: 292, type: !26)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !53, line: 291, column: 5)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !53, line: 290, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1362, file: !53, line: 290, column: 3)
!1374 = !DILocalVariable(name: "end_tab", scope: !1375, file: !53, line: 304, type: !26)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !53, line: 303, column: 5)
!1376 = distinct !DILexicalBlock(scope: !1362, file: !53, line: 302, column: 7)
!1377 = !DILocation(line: 279, column: 38, scope: !1362)
!1378 = !DILocation(line: 279, column: 54, scope: !1362)
!1379 = !DILocation(line: 280, column: 28, scope: !1362)
!1380 = !DILocation(line: 282, column: 13, scope: !1362)
!1381 = !DILocation(line: 285, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1362, file: !53, line: 285, column: 7)
!1383 = !DILocation(line: 285, column: 7, scope: !1362)
!1384 = !DILocation(line: 290, column: 11, scope: !1372)
!1385 = !DILocation(line: 290, column: 24, scope: !1372)
!1386 = !DILocation(line: 290, column: 22, scope: !1372)
!1387 = !DILocation(line: 290, column: 3, scope: !1373)
!1388 = !DILocation(line: 286, column: 40, scope: !1382)
!1389 = !DILocation(line: 286, column: 31, scope: !1382)
!1390 = !DILocation(line: 286, column: 19, scope: !1382)
!1391 = !DILocation(line: 286, column: 5, scope: !1382)
!1392 = !DILocation(line: 292, column: 25, scope: !1371)
!1393 = !DILocation(line: 292, column: 19, scope: !1371)
!1394 = !DILocation(line: 293, column: 20, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1371, file: !53, line: 293, column: 13)
!1396 = !DILocation(line: 290, column: 53, scope: !1372)
!1397 = distinct !{!1397, !1387, !1398}
!1398 = !DILocation(line: 295, column: 5, scope: !1373)
!1399 = !DILocation(line: 298, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1362, file: !53, line: 298, column: 7)
!1401 = !DILocation(line: 298, column: 7, scope: !1362)
!1402 = !DILocation(line: 299, column: 43, scope: !1400)
!1403 = !DILocation(line: 299, column: 34, scope: !1400)
!1404 = !DILocation(line: 299, column: 19, scope: !1400)
!1405 = !DILocation(line: 299, column: 5, scope: !1400)
!1406 = !DILocation(line: 302, column: 7, scope: !1376)
!1407 = !DILocation(line: 302, column: 7, scope: !1362)
!1408 = !DILocation(line: 304, column: 27, scope: !1375)
!1409 = !DILocation(line: 304, column: 51, scope: !1375)
!1410 = !DILocation(line: 304, column: 17, scope: !1375)
!1411 = !DILocation(line: 306, column: 50, scope: !1375)
!1412 = !DILocation(line: 306, column: 61, scope: !1375)
!1413 = !DILocation(line: 306, column: 39, scope: !1375)
!1414 = !DILocation(line: 306, column: 21, scope: !1375)
!1415 = !DILocation(line: 309, column: 13, scope: !1362)
!1416 = !DILocation(line: 310, column: 3, scope: !1362)
!1417 = !DILocation(line: 0, scope: !1362)
!1418 = !DILocation(line: 311, column: 1, scope: !1362)
!1419 = distinct !DISubprogram(name: "set_file_list", scope: !53, file: !53, line: 318, type: !1420, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !183}
!1422 = !{!1423}
!1423 = !DILocalVariable(name: "list", arg: 1, scope: !1419, file: !53, line: 318, type: !183)
!1424 = !DILocation(line: 318, column: 23, scope: !1419)
!1425 = !DILocation(line: 322, column: 8, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1419, file: !53, line: 322, column: 7)
!1427 = !DILocation(line: 323, column: 5, scope: !1426)
!1428 = !DILocation(line: 0, scope: !1426)
!1429 = !DILocation(line: 326, column: 1, scope: !1419)
!1430 = !DILocation(line: 334, column: 18, scope: !99)
!1431 = !DILocation(line: 339, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !99, file: !53, line: 339, column: 7)
!1433 = !DILocation(line: 339, column: 7, scope: !99)
!1434 = !DILocation(line: 341, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !53, line: 341, column: 7)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !53, line: 341, column: 7)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !53, line: 340, column: 5)
!1438 = !DILocation(line: 341, column: 7, scope: !1436)
!1439 = !DILocalVariable(name: "__stream", arg: 1, scope: !1440, file: !952, line: 135, type: !102)
!1440 = distinct !DISubprogram(name: "ferror_unlocked", scope: !952, file: !952, line: 135, type: !1441, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!31, !102}
!1443 = !{!1439}
!1444 = !DILocation(line: 135, column: 1, scope: !1440, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 342, column: 11, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1437, file: !53, line: 342, column: 11)
!1447 = !DILocation(line: 137, column: 10, scope: !1440, inlinedAt: !1445)
!1448 = !{!960, !859, i64 0}
!1449 = !DILocation(line: 342, column: 11, scope: !1446)
!1450 = !DILocation(line: 342, column: 11, scope: !1437)
!1451 = !DILocation(line: 344, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1446, file: !53, line: 343, column: 9)
!1453 = !DILocation(line: 344, column: 34, scope: !1452)
!1454 = !DILocation(line: 344, column: 11, scope: !1452)
!1455 = !DILocation(line: 345, column: 23, scope: !1452)
!1456 = !DILocation(line: 347, column: 11, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1437, file: !53, line: 347, column: 11)
!1458 = !DILocation(line: 346, column: 9, scope: !1452)
!1459 = !DILocation(line: 347, column: 11, scope: !1437)
!1460 = !DILocation(line: 348, column: 9, scope: !1457)
!1461 = !DILocation(line: 349, column: 16, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !53, line: 349, column: 16)
!1463 = !DILocation(line: 349, column: 28, scope: !1462)
!1464 = !DILocation(line: 349, column: 16, scope: !1457)
!1465 = !DILocation(line: 351, column: 21, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !53, line: 350, column: 9)
!1467 = !DILocation(line: 351, column: 34, scope: !1466)
!1468 = !DILocation(line: 351, column: 11, scope: !1466)
!1469 = !DILocation(line: 352, column: 23, scope: !1466)
!1470 = !DILocation(line: 353, column: 9, scope: !1466)
!1471 = !DILocation(line: 356, column: 28, scope: !99)
!1472 = !DILocation(line: 356, column: 18, scope: !99)
!1473 = !DILocation(line: 337, column: 9, scope: !99)
!1474 = !DILocation(line: 356, column: 32, scope: !99)
!1475 = !DILocation(line: 356, column: 3, scope: !99)
!1476 = !DILocation(line: 358, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !53, line: 358, column: 11)
!1478 = distinct !DILexicalBlock(scope: !99, file: !53, line: 357, column: 5)
!1479 = !DILocation(line: 358, column: 11, scope: !1478)
!1480 = !DILocation(line: 361, column: 16, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !53, line: 359, column: 9)
!1482 = !DILocation(line: 362, column: 9, scope: !1481)
!1483 = !DILocation(line: 364, column: 14, scope: !1477)
!1484 = !DILocation(line: 0, scope: !1477)
!1485 = !DILocation(line: 365, column: 11, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1478, file: !53, line: 365, column: 11)
!1487 = !DILocation(line: 365, column: 11, scope: !1478)
!1488 = !DILocation(line: 367, column: 21, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !53, line: 366, column: 9)
!1490 = !DILocation(line: 368, column: 11, scope: !1489)
!1491 = !DILocation(line: 369, column: 11, scope: !1489)
!1492 = !DILocation(line: 371, column: 17, scope: !1478)
!1493 = !DILocation(line: 371, column: 30, scope: !1478)
!1494 = !DILocation(line: 371, column: 7, scope: !1478)
!1495 = !DILocation(line: 372, column: 19, scope: !1478)
!1496 = distinct !{!1496, !1475, !1497}
!1497 = !DILocation(line: 373, column: 5, scope: !99)
!1498 = !DILocation(line: 0, scope: !99)
!1499 = !DILocation(line: 375, column: 1, scope: !99)
!1500 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !53, file: !53, line: 379, type: !752, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !189)
!1501 = !DILocation(line: 381, column: 25, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1500, file: !53, line: 381, column: 9)
!1503 = !DILocation(line: 381, column: 36, scope: !1502)
!1504 = !DILocation(line: 381, column: 28, scope: !1502)
!1505 = !DILocation(line: 381, column: 43, scope: !1502)
!1506 = !DILocation(line: 381, column: 9, scope: !1500)
!1507 = !DILocation(line: 382, column: 7, scope: !1502)
!1508 = !DILocation(line: 383, column: 1, scope: !1500)
!1509 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !53, file: !53, line: 387, type: !752, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, unit: !52, retainedNodes: !189)
!1510 = !DILocation(line: 390, column: 3, scope: !1509)
!1511 = !DILocation(line: 393, column: 3, scope: !1509)
!1512 = !DILocation(line: 400, column: 1, scope: !1509)
!1513 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !198, file: !198, line: 51, type: !719, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !1514)
!1514 = !{!1515}
!1515 = !DILocalVariable(name: "file", arg: 1, scope: !1513, file: !198, line: 51, type: !42)
!1516 = !DILocation(line: 51, column: 41, scope: !1513)
!1517 = !DILocation(line: 53, column: 13, scope: !1513)
!1518 = !DILocation(line: 54, column: 1, scope: !1513)
!1519 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !198, file: !198, line: 88, type: !1520, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !175}
!1522 = !{!1523}
!1523 = !DILocalVariable(name: "ignore", arg: 1, scope: !1519, file: !198, line: 88, type: !175)
!1524 = !DILocation(line: 88, column: 37, scope: !1519)
!1525 = !DILocation(line: 90, column: 16, scope: !1519)
!1526 = !DILocation(line: 91, column: 1, scope: !1519)
!1527 = distinct !DISubprogram(name: "close_stdout", scope: !198, file: !198, line: 117, type: !752, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !1528)
!1528 = !{!1529}
!1529 = !DILocalVariable(name: "write_error", scope: !1530, file: !198, line: 122, type: !42)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !198, line: 121, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !198, line: 119, column: 7)
!1532 = !DILocation(line: 119, column: 21, scope: !1531)
!1533 = !DILocation(line: 119, column: 7, scope: !1531)
!1534 = !DILocation(line: 119, column: 29, scope: !1531)
!1535 = !DILocation(line: 120, column: 7, scope: !1531)
!1536 = !DILocation(line: 120, column: 12, scope: !1531)
!1537 = !DILocation(line: 120, column: 25, scope: !1531)
!1538 = !DILocation(line: 120, column: 28, scope: !1531)
!1539 = !DILocation(line: 120, column: 34, scope: !1531)
!1540 = !DILocation(line: 119, column: 7, scope: !1527)
!1541 = !DILocation(line: 122, column: 33, scope: !1530)
!1542 = !DILocation(line: 122, column: 19, scope: !1530)
!1543 = !DILocation(line: 123, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1530, file: !198, line: 123, column: 11)
!1545 = !DILocation(line: 0, scope: !1544)
!1546 = !DILocation(line: 123, column: 11, scope: !1530)
!1547 = !DILocation(line: 124, column: 36, scope: !1544)
!1548 = !DILocation(line: 124, column: 9, scope: !1544)
!1549 = !DILocation(line: 127, column: 9, scope: !1544)
!1550 = !DILocation(line: 129, column: 14, scope: !1530)
!1551 = !DILocation(line: 129, column: 7, scope: !1530)
!1552 = !DILocation(line: 134, column: 42, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1527, file: !198, line: 134, column: 7)
!1554 = !DILocation(line: 134, column: 28, scope: !1553)
!1555 = !DILocation(line: 134, column: 50, scope: !1553)
!1556 = !DILocation(line: 134, column: 7, scope: !1527)
!1557 = !DILocation(line: 135, column: 12, scope: !1553)
!1558 = !DILocation(line: 135, column: 5, scope: !1553)
!1559 = !DILocation(line: 136, column: 1, scope: !1527)
!1560 = distinct !DISubprogram(name: "fdadvise", scope: !1561, file: !1561, line: 31, type: !1562, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !275, retainedNodes: !1567)
!1561 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !31, !1564, !1564, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1565, line: 63, baseType: !128)
!1565 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !70, line: 52, baseType: !69)
!1567 = !{!1568, !1569, !1570, !1571, !1572}
!1568 = !DILocalVariable(name: "fd", arg: 1, scope: !1560, file: !1561, line: 31, type: !31)
!1569 = !DILocalVariable(name: "offset", arg: 2, scope: !1560, file: !1561, line: 31, type: !1564)
!1570 = !DILocalVariable(name: "len", arg: 3, scope: !1560, file: !1561, line: 31, type: !1564)
!1571 = !DILocalVariable(name: "advice", arg: 4, scope: !1560, file: !1561, line: 31, type: !1566)
!1572 = !DILocalVariable(name: "__x", scope: !1573, file: !1561, line: 34, type: !31)
!1573 = distinct !DILexicalBlock(scope: !1560, file: !1561, line: 34, column: 3)
!1574 = !DILocation(line: 31, column: 15, scope: !1560)
!1575 = !DILocation(line: 31, column: 25, scope: !1560)
!1576 = !DILocation(line: 31, column: 39, scope: !1560)
!1577 = !DILocation(line: 31, column: 54, scope: !1560)
!1578 = !DILocation(line: 34, column: 3, scope: !1573)
!1579 = !DILocation(line: 36, column: 1, scope: !1560)
!1580 = distinct !DISubprogram(name: "fadvise", scope: !1561, file: !1561, line: 39, type: !1581, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !275, retainedNodes: !1617)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !1583, !1566}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1585, file: !106, line: 51, baseType: !31, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1585, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1585, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1585, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1585, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1585, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1585, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1585, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1585, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1585, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1585, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1585, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1585, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1585, file: !106, line: 70, baseType: !1601, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1585, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1585, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1585, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1585, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1585, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1585, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1585, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1585, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1585, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1585, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1585, file: !106, line: 93, baseType: !1601, size: 64, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1585, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1585, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1585, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1585, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!1617 = !{!1618, !1619}
!1618 = !DILocalVariable(name: "fp", arg: 1, scope: !1580, file: !1561, line: 39, type: !1583)
!1619 = !DILocalVariable(name: "advice", arg: 2, scope: !1580, file: !1561, line: 39, type: !1566)
!1620 = !DILocation(line: 39, column: 16, scope: !1580)
!1621 = !DILocation(line: 39, column: 30, scope: !1580)
!1622 = !DILocation(line: 41, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1580, file: !1561, line: 41, column: 7)
!1624 = !DILocation(line: 41, column: 7, scope: !1580)
!1625 = !DILocation(line: 42, column: 15, scope: !1623)
!1626 = !DILocation(line: 31, column: 15, scope: !1560, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 42, column: 5, scope: !1623)
!1628 = !DILocation(line: 31, column: 25, scope: !1560, inlinedAt: !1627)
!1629 = !DILocation(line: 31, column: 39, scope: !1560, inlinedAt: !1627)
!1630 = !DILocation(line: 31, column: 54, scope: !1560, inlinedAt: !1627)
!1631 = !DILocation(line: 34, column: 3, scope: !1573, inlinedAt: !1627)
!1632 = !DILocation(line: 42, column: 5, scope: !1623)
!1633 = !DILocation(line: 43, column: 1, scope: !1580)
!1634 = distinct !DISubprogram(name: "set_program_name", scope: !212, file: !212, line: 39, type: !719, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !1635)
!1635 = !{!1636, !1637, !1638}
!1636 = !DILocalVariable(name: "argv0", arg: 1, scope: !1634, file: !212, line: 39, type: !42)
!1637 = !DILocalVariable(name: "slash", scope: !1634, file: !212, line: 46, type: !42)
!1638 = !DILocalVariable(name: "base", scope: !1634, file: !212, line: 47, type: !42)
!1639 = !DILocation(line: 39, column: 31, scope: !1634)
!1640 = !DILocation(line: 51, column: 13, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 51, column: 7)
!1642 = !DILocation(line: 51, column: 7, scope: !1634)
!1643 = !DILocation(line: 55, column: 14, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !212, line: 52, column: 5)
!1645 = !DILocation(line: 54, column: 7, scope: !1644)
!1646 = !DILocation(line: 56, column: 7, scope: !1644)
!1647 = !DILocation(line: 59, column: 11, scope: !1634)
!1648 = !DILocation(line: 46, column: 15, scope: !1634)
!1649 = !DILocation(line: 60, column: 17, scope: !1634)
!1650 = !DILocation(line: 60, column: 33, scope: !1634)
!1651 = !DILocation(line: 60, column: 11, scope: !1634)
!1652 = !DILocation(line: 47, column: 15, scope: !1634)
!1653 = !DILocation(line: 61, column: 12, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 61, column: 7)
!1655 = !DILocation(line: 61, column: 20, scope: !1654)
!1656 = !DILocation(line: 61, column: 25, scope: !1654)
!1657 = !DILocation(line: 61, column: 42, scope: !1654)
!1658 = !DILocation(line: 61, column: 28, scope: !1654)
!1659 = !DILocation(line: 61, column: 61, scope: !1654)
!1660 = !DILocation(line: 61, column: 7, scope: !1634)
!1661 = !DILocation(line: 64, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !212, line: 64, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1654, file: !212, line: 62, column: 5)
!1664 = !DILocation(line: 64, column: 36, scope: !1662)
!1665 = !DILocation(line: 64, column: 11, scope: !1663)
!1666 = !DILocation(line: 66, column: 24, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !212, line: 65, column: 9)
!1668 = !DILocation(line: 70, column: 41, scope: !1667)
!1669 = !DILocation(line: 72, column: 9, scope: !1667)
!1670 = !DILocation(line: 84, column: 16, scope: !1634)
!1671 = !DILocation(line: 90, column: 27, scope: !1634)
!1672 = !DILocation(line: 92, column: 1, scope: !1634)
!1673 = distinct !DISubprogram(name: "clone_quoting_options", scope: !227, file: !227, line: 122, type: !1674, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1677)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!1676, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1677 = !{!1678, !1679, !1680}
!1678 = !DILocalVariable(name: "o", arg: 1, scope: !1673, file: !227, line: 122, type: !1676)
!1679 = !DILocalVariable(name: "e", scope: !1673, file: !227, line: 124, type: !31)
!1680 = !DILocalVariable(name: "p", scope: !1673, file: !227, line: 125, type: !1676)
!1681 = !DILocation(line: 122, column: 48, scope: !1673)
!1682 = !DILocation(line: 124, column: 11, scope: !1673)
!1683 = !DILocation(line: 124, column: 7, scope: !1673)
!1684 = !DILocation(line: 125, column: 40, scope: !1673)
!1685 = !DILocation(line: 125, column: 31, scope: !1673)
!1686 = !DILocation(line: 125, column: 27, scope: !1673)
!1687 = !DILocation(line: 127, column: 9, scope: !1673)
!1688 = !DILocation(line: 128, column: 3, scope: !1673)
!1689 = distinct !DISubprogram(name: "get_quoting_style", scope: !227, file: !227, line: 133, type: !1690, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1694)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!55, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!1694 = !{!1695}
!1695 = !DILocalVariable(name: "o", arg: 1, scope: !1689, file: !227, line: 133, type: !1692)
!1696 = !DILocation(line: 133, column: 50, scope: !1689)
!1697 = !DILocation(line: 135, column: 11, scope: !1689)
!1698 = !DILocation(line: 135, column: 46, scope: !1689)
!1699 = !{!1700, !746, i64 0}
!1700 = !{!"quoting_options", !746, i64 0, !859, i64 4, !746, i64 8, !745, i64 40, !745, i64 48}
!1701 = !DILocation(line: 135, column: 3, scope: !1689)
!1702 = distinct !DISubprogram(name: "set_quoting_style", scope: !227, file: !227, line: 141, type: !1703, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1676, !55}
!1705 = !{!1706, !1707}
!1706 = !DILocalVariable(name: "o", arg: 1, scope: !1702, file: !227, line: 141, type: !1676)
!1707 = !DILocalVariable(name: "s", arg: 2, scope: !1702, file: !227, line: 141, type: !55)
!1708 = !DILocation(line: 141, column: 44, scope: !1702)
!1709 = !DILocation(line: 141, column: 66, scope: !1702)
!1710 = !DILocation(line: 143, column: 4, scope: !1702)
!1711 = !DILocation(line: 143, column: 39, scope: !1702)
!1712 = !DILocation(line: 143, column: 45, scope: !1702)
!1713 = !DILocation(line: 144, column: 1, scope: !1702)
!1714 = distinct !DISubprogram(name: "set_char_quoting", scope: !227, file: !227, line: 152, type: !1715, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!31, !1676, !23, !31}
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1724, !1725}
!1718 = !DILocalVariable(name: "o", arg: 1, scope: !1714, file: !227, line: 152, type: !1676)
!1719 = !DILocalVariable(name: "c", arg: 2, scope: !1714, file: !227, line: 152, type: !23)
!1720 = !DILocalVariable(name: "i", arg: 3, scope: !1714, file: !227, line: 152, type: !31)
!1721 = !DILocalVariable(name: "uc", scope: !1714, file: !227, line: 154, type: !34)
!1722 = !DILocalVariable(name: "p", scope: !1714, file: !227, line: 155, type: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1724 = !DILocalVariable(name: "shift", scope: !1714, file: !227, line: 157, type: !31)
!1725 = !DILocalVariable(name: "r", scope: !1714, file: !227, line: 158, type: !31)
!1726 = !DILocation(line: 152, column: 43, scope: !1714)
!1727 = !DILocation(line: 152, column: 51, scope: !1714)
!1728 = !DILocation(line: 152, column: 58, scope: !1714)
!1729 = !DILocation(line: 154, column: 17, scope: !1714)
!1730 = !DILocation(line: 156, column: 6, scope: !1714)
!1731 = !DILocation(line: 156, column: 62, scope: !1714)
!1732 = !DILocation(line: 156, column: 57, scope: !1714)
!1733 = !DILocation(line: 155, column: 17, scope: !1714)
!1734 = !DILocation(line: 157, column: 15, scope: !1714)
!1735 = !DILocation(line: 157, column: 7, scope: !1714)
!1736 = !DILocation(line: 158, column: 12, scope: !1714)
!1737 = !DILocation(line: 158, column: 15, scope: !1714)
!1738 = !DILocation(line: 158, column: 25, scope: !1714)
!1739 = !DILocation(line: 158, column: 7, scope: !1714)
!1740 = !DILocation(line: 159, column: 13, scope: !1714)
!1741 = !DILocation(line: 159, column: 18, scope: !1714)
!1742 = !DILocation(line: 159, column: 23, scope: !1714)
!1743 = !DILocation(line: 159, column: 6, scope: !1714)
!1744 = !DILocation(line: 160, column: 3, scope: !1714)
!1745 = distinct !DISubprogram(name: "set_quoting_flags", scope: !227, file: !227, line: 168, type: !1746, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!31, !1676, !31}
!1748 = !{!1749, !1750, !1751}
!1749 = !DILocalVariable(name: "o", arg: 1, scope: !1745, file: !227, line: 168, type: !1676)
!1750 = !DILocalVariable(name: "i", arg: 2, scope: !1745, file: !227, line: 168, type: !31)
!1751 = !DILocalVariable(name: "r", scope: !1745, file: !227, line: 170, type: !31)
!1752 = !DILocation(line: 168, column: 44, scope: !1745)
!1753 = !DILocation(line: 168, column: 51, scope: !1745)
!1754 = !DILocation(line: 171, column: 8, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1745, file: !227, line: 171, column: 7)
!1756 = !DILocation(line: 171, column: 7, scope: !1745)
!1757 = !DILocation(line: 173, column: 10, scope: !1745)
!1758 = !{!1700, !859, i64 4}
!1759 = !DILocation(line: 170, column: 7, scope: !1745)
!1760 = !DILocation(line: 174, column: 12, scope: !1745)
!1761 = !DILocation(line: 175, column: 3, scope: !1745)
!1762 = distinct !DISubprogram(name: "set_custom_quoting", scope: !227, file: !227, line: 179, type: !1763, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !1676, !42, !42}
!1765 = !{!1766, !1767, !1768}
!1766 = !DILocalVariable(name: "o", arg: 1, scope: !1762, file: !227, line: 179, type: !1676)
!1767 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1762, file: !227, line: 180, type: !42)
!1768 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1762, file: !227, line: 180, type: !42)
!1769 = !DILocation(line: 179, column: 45, scope: !1762)
!1770 = !DILocation(line: 180, column: 33, scope: !1762)
!1771 = !DILocation(line: 180, column: 57, scope: !1762)
!1772 = !DILocation(line: 182, column: 8, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1762, file: !227, line: 182, column: 7)
!1774 = !DILocation(line: 182, column: 7, scope: !1762)
!1775 = !DILocation(line: 184, column: 6, scope: !1762)
!1776 = !DILocation(line: 184, column: 12, scope: !1762)
!1777 = !DILocation(line: 185, column: 8, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1762, file: !227, line: 185, column: 7)
!1779 = !DILocation(line: 185, column: 23, scope: !1778)
!1780 = !DILocation(line: 185, column: 19, scope: !1778)
!1781 = !DILocation(line: 186, column: 5, scope: !1778)
!1782 = !DILocation(line: 187, column: 6, scope: !1762)
!1783 = !DILocation(line: 187, column: 17, scope: !1762)
!1784 = !{!1700, !745, i64 40}
!1785 = !DILocation(line: 188, column: 6, scope: !1762)
!1786 = !DILocation(line: 188, column: 18, scope: !1762)
!1787 = !{!1700, !745, i64 48}
!1788 = !DILocation(line: 189, column: 1, scope: !1762)
!1789 = distinct !DISubprogram(name: "quotearg_buffer", scope: !227, file: !227, line: 784, type: !1790, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!84, !22, !84, !42, !84, !1692}
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1793 = !DILocalVariable(name: "buffer", arg: 1, scope: !1789, file: !227, line: 784, type: !22)
!1794 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1789, file: !227, line: 784, type: !84)
!1795 = !DILocalVariable(name: "arg", arg: 3, scope: !1789, file: !227, line: 785, type: !42)
!1796 = !DILocalVariable(name: "argsize", arg: 4, scope: !1789, file: !227, line: 785, type: !84)
!1797 = !DILocalVariable(name: "o", arg: 5, scope: !1789, file: !227, line: 786, type: !1692)
!1798 = !DILocalVariable(name: "p", scope: !1789, file: !227, line: 788, type: !1692)
!1799 = !DILocalVariable(name: "e", scope: !1789, file: !227, line: 789, type: !31)
!1800 = !DILocalVariable(name: "r", scope: !1789, file: !227, line: 790, type: !84)
!1801 = !DILocation(line: 784, column: 24, scope: !1789)
!1802 = !DILocation(line: 784, column: 39, scope: !1789)
!1803 = !DILocation(line: 785, column: 30, scope: !1789)
!1804 = !DILocation(line: 785, column: 42, scope: !1789)
!1805 = !DILocation(line: 786, column: 48, scope: !1789)
!1806 = !DILocation(line: 788, column: 37, scope: !1789)
!1807 = !DILocation(line: 788, column: 33, scope: !1789)
!1808 = !DILocation(line: 789, column: 11, scope: !1789)
!1809 = !DILocation(line: 789, column: 7, scope: !1789)
!1810 = !DILocation(line: 791, column: 43, scope: !1789)
!1811 = !DILocation(line: 791, column: 53, scope: !1789)
!1812 = !DILocation(line: 791, column: 60, scope: !1789)
!1813 = !DILocation(line: 792, column: 43, scope: !1789)
!1814 = !DILocation(line: 792, column: 58, scope: !1789)
!1815 = !DILocation(line: 790, column: 14, scope: !1789)
!1816 = !DILocation(line: 790, column: 10, scope: !1789)
!1817 = !DILocation(line: 793, column: 9, scope: !1789)
!1818 = !DILocation(line: 794, column: 3, scope: !1789)
!1819 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !227, file: !227, line: 256, type: !1820, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !1824)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!84, !22, !84, !42, !84, !55, !31, !1822, !42, !42}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1849, !1850, !1851, !1852, !1853, !1856, !1857, !1875, !1878, !1879, !1886}
!1825 = !DILocalVariable(name: "buffer", arg: 1, scope: !1819, file: !227, line: 256, type: !22)
!1826 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1819, file: !227, line: 256, type: !84)
!1827 = !DILocalVariable(name: "arg", arg: 3, scope: !1819, file: !227, line: 257, type: !42)
!1828 = !DILocalVariable(name: "argsize", arg: 4, scope: !1819, file: !227, line: 257, type: !84)
!1829 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1819, file: !227, line: 258, type: !55)
!1830 = !DILocalVariable(name: "flags", arg: 6, scope: !1819, file: !227, line: 258, type: !31)
!1831 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1819, file: !227, line: 259, type: !1822)
!1832 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1819, file: !227, line: 260, type: !42)
!1833 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1819, file: !227, line: 261, type: !42)
!1834 = !DILocalVariable(name: "i", scope: !1819, file: !227, line: 263, type: !84)
!1835 = !DILocalVariable(name: "len", scope: !1819, file: !227, line: 264, type: !84)
!1836 = !DILocalVariable(name: "orig_buffersize", scope: !1819, file: !227, line: 265, type: !84)
!1837 = !DILocalVariable(name: "quote_string", scope: !1819, file: !227, line: 266, type: !42)
!1838 = !DILocalVariable(name: "quote_string_len", scope: !1819, file: !227, line: 267, type: !84)
!1839 = !DILocalVariable(name: "backslash_escapes", scope: !1819, file: !227, line: 268, type: !175)
!1840 = !DILocalVariable(name: "unibyte_locale", scope: !1819, file: !227, line: 269, type: !175)
!1841 = !DILocalVariable(name: "elide_outer_quotes", scope: !1819, file: !227, line: 270, type: !175)
!1842 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1819, file: !227, line: 271, type: !175)
!1843 = !DILocalVariable(name: "encountered_single_quote", scope: !1819, file: !227, line: 272, type: !175)
!1844 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1819, file: !227, line: 273, type: !175)
!1845 = !DILocalVariable(name: "c", scope: !1846, file: !227, line: 402, type: !34)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !227, line: 401, column: 5)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !227, line: 400, column: 3)
!1848 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 400, column: 3)
!1849 = !DILocalVariable(name: "esc", scope: !1846, file: !227, line: 403, type: !34)
!1850 = !DILocalVariable(name: "is_right_quote", scope: !1846, file: !227, line: 404, type: !175)
!1851 = !DILocalVariable(name: "escaping", scope: !1846, file: !227, line: 405, type: !175)
!1852 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1846, file: !227, line: 406, type: !175)
!1853 = !DILocalVariable(name: "m", scope: !1854, file: !227, line: 610, type: !84)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 608, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !227, line: 426, column: 9)
!1856 = !DILocalVariable(name: "printable", scope: !1854, file: !227, line: 612, type: !175)
!1857 = !DILocalVariable(name: "mbstate", scope: !1858, file: !227, line: 621, type: !1860)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !227, line: 620, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !227, line: 614, column: 17)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1861, line: 6, baseType: !1862)
!1861 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1863, line: 21, baseType: !1864)
!1863 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1863, line: 13, size: 64, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1864, file: !1863, line: 15, baseType: !31, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1864, file: !1863, line: 20, baseType: !1868, size: 32, offset: 32)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1863, line: 16, size: 32, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1868, file: !1863, line: 18, baseType: !7, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1868, file: !1863, line: 19, baseType: !1872, size: 32)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1873)
!1873 = !{!1874}
!1874 = !DISubrange(count: 4)
!1875 = !DILocalVariable(name: "w", scope: !1876, file: !227, line: 631, type: !1877)
!1876 = distinct !DILexicalBlock(scope: !1858, file: !227, line: 630, column: 19)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !85, line: 90, baseType: !31)
!1878 = !DILocalVariable(name: "bytes", scope: !1876, file: !227, line: 632, type: !84)
!1879 = !DILocalVariable(name: "j", scope: !1880, file: !227, line: 657, type: !84)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !227, line: 656, column: 27)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !227, line: 654, column: 29)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !227, line: 649, column: 23)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !227, line: 641, column: 30)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !227, line: 636, column: 30)
!1885 = distinct !DILexicalBlock(scope: !1876, file: !227, line: 634, column: 25)
!1886 = !DILocalVariable(name: "ilim", scope: !1887, file: !227, line: 684, type: !84)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !227, line: 681, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1854, file: !227, line: 680, column: 17)
!1889 = !DILocation(line: 256, column: 33, scope: !1819)
!1890 = !DILocation(line: 256, column: 48, scope: !1819)
!1891 = !DILocation(line: 257, column: 39, scope: !1819)
!1892 = !DILocation(line: 257, column: 51, scope: !1819)
!1893 = !DILocation(line: 258, column: 46, scope: !1819)
!1894 = !DILocation(line: 258, column: 65, scope: !1819)
!1895 = !DILocation(line: 259, column: 47, scope: !1819)
!1896 = !DILocation(line: 260, column: 39, scope: !1819)
!1897 = !DILocation(line: 261, column: 39, scope: !1819)
!1898 = !DILocation(line: 264, column: 10, scope: !1819)
!1899 = !DILocation(line: 265, column: 10, scope: !1819)
!1900 = !DILocation(line: 266, column: 15, scope: !1819)
!1901 = !DILocation(line: 267, column: 10, scope: !1819)
!1902 = !DILocation(line: 268, column: 8, scope: !1819)
!1903 = !DILocation(line: 269, column: 25, scope: !1819)
!1904 = !DILocation(line: 269, column: 36, scope: !1819)
!1905 = !DILocation(line: 270, column: 8, scope: !1819)
!1906 = !DILocation(line: 271, column: 8, scope: !1819)
!1907 = !DILocation(line: 272, column: 8, scope: !1819)
!1908 = !DILocation(line: 273, column: 8, scope: !1819)
!1909 = !DILocation(line: 273, column: 3, scope: !1819)
!1910 = !DILocation(line: 0, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 317, column: 5)
!1912 = !DILocation(line: 316, column: 3, scope: !1819)
!1913 = !DILocation(line: 323, column: 11, scope: !1911)
!1914 = !DILocation(line: 323, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !227, line: 323, column: 11)
!1916 = !DILocation(line: 324, column: 9, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !227, line: 324, column: 9)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !227, line: 324, column: 9)
!1919 = !DILocation(line: 324, column: 9, scope: !1918)
!1920 = !DILocation(line: 362, column: 26, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !227, line: 340, column: 11)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !227, line: 339, column: 13)
!1923 = distinct !DILexicalBlock(scope: !1911, file: !227, line: 338, column: 7)
!1924 = !DILocation(line: 363, column: 27, scope: !1921)
!1925 = !DILocation(line: 364, column: 11, scope: !1921)
!1926 = !DILocation(line: 365, column: 14, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !227, line: 365, column: 13)
!1928 = !DILocation(line: 365, column: 13, scope: !1923)
!1929 = !DILocation(line: 366, column: 43, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !227, line: 366, column: 11)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !227, line: 366, column: 11)
!1932 = !DILocation(line: 366, column: 11, scope: !1931)
!1933 = !DILocation(line: 367, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !227, line: 367, column: 13)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !227, line: 367, column: 13)
!1936 = !DILocation(line: 367, column: 13, scope: !1935)
!1937 = !DILocation(line: 366, column: 70, scope: !1930)
!1938 = distinct !{!1938, !1932, !1939}
!1939 = !DILocation(line: 367, column: 13, scope: !1931)
!1940 = !DILocation(line: 370, column: 28, scope: !1923)
!1941 = !DILocation(line: 372, column: 7, scope: !1911)
!1942 = !DILocation(line: 376, column: 7, scope: !1911)
!1943 = !DILocation(line: 379, column: 7, scope: !1911)
!1944 = !DILocation(line: 381, column: 12, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1911, file: !227, line: 381, column: 11)
!1946 = !DILocation(line: 381, column: 11, scope: !1911)
!1947 = !DILocation(line: 0, scope: !1945)
!1948 = !DILocation(line: 386, column: 12, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1911, file: !227, line: 386, column: 11)
!1950 = !DILocation(line: 386, column: 11, scope: !1911)
!1951 = !DILocation(line: 387, column: 9, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !227, line: 387, column: 9)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !227, line: 387, column: 9)
!1954 = !DILocation(line: 387, column: 9, scope: !1953)
!1955 = !DILocation(line: 394, column: 7, scope: !1911)
!1956 = !DILocation(line: 397, column: 7, scope: !1911)
!1957 = !DILocation(line: 0, scope: !1819)
!1958 = !DILocation(line: 263, column: 10, scope: !1819)
!1959 = !DILocation(line: 400, column: 8, scope: !1848)
!1960 = !DILocation(line: 0, scope: !1847)
!1961 = !DILocation(line: 400, column: 27, scope: !1847)
!1962 = !DILocation(line: 400, column: 19, scope: !1847)
!1963 = !DILocation(line: 400, column: 41, scope: !1847)
!1964 = !DILocation(line: 400, column: 48, scope: !1847)
!1965 = !DILocation(line: 400, column: 3, scope: !1848)
!1966 = !DILocation(line: 400, column: 60, scope: !1847)
!1967 = !DILocation(line: 404, column: 12, scope: !1846)
!1968 = !DILocation(line: 405, column: 12, scope: !1846)
!1969 = !DILocation(line: 406, column: 12, scope: !1846)
!1970 = !DILocation(line: 409, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1846, file: !227, line: 408, column: 11)
!1972 = !DILocation(line: 411, column: 17, scope: !1971)
!1973 = !DILocation(line: 412, column: 39, scope: !1971)
!1974 = !DILocation(line: 416, column: 32, scope: !1971)
!1975 = !DILocation(line: 412, column: 19, scope: !1971)
!1976 = !DILocation(line: 412, column: 15, scope: !1971)
!1977 = !DILocation(line: 417, column: 11, scope: !1971)
!1978 = !DILocation(line: 417, column: 26, scope: !1971)
!1979 = !DILocation(line: 417, column: 14, scope: !1971)
!1980 = !DILocation(line: 417, column: 63, scope: !1971)
!1981 = !DILocation(line: 408, column: 11, scope: !1846)
!1982 = !DILocation(line: 0, scope: !1846)
!1983 = !DILocation(line: 424, column: 11, scope: !1846)
!1984 = !DILocation(line: 402, column: 21, scope: !1846)
!1985 = !DILocation(line: 425, column: 7, scope: !1846)
!1986 = !DILocation(line: 428, column: 15, scope: !1855)
!1987 = !DILocation(line: 430, column: 15, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !227, line: 430, column: 15)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !227, line: 429, column: 13)
!1990 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 428, column: 15)
!1991 = !DILocation(line: 430, column: 15, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !227, line: 430, column: 15)
!1993 = !DILocation(line: 430, column: 15, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !227, line: 430, column: 15)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !227, line: 430, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !227, line: 430, column: 15)
!1997 = !DILocation(line: 430, column: 15, scope: !1995)
!1998 = !DILocation(line: 430, column: 15, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !227, line: 430, column: 15)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !227, line: 430, column: 15)
!2001 = !DILocation(line: 430, column: 15, scope: !2000)
!2002 = !DILocation(line: 430, column: 15, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !227, line: 430, column: 15)
!2004 = distinct !DILexicalBlock(scope: !1996, file: !227, line: 430, column: 15)
!2005 = !DILocation(line: 430, column: 15, scope: !2004)
!2006 = !DILocation(line: 430, column: 15, scope: !1996)
!2007 = !DILocation(line: 430, column: 15, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !227, line: 430, column: 15)
!2009 = distinct !DILexicalBlock(scope: !1988, file: !227, line: 430, column: 15)
!2010 = !DILocation(line: 430, column: 15, scope: !2009)
!2011 = !DILocation(line: 438, column: 19, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1989, file: !227, line: 437, column: 19)
!2013 = !DILocation(line: 438, column: 24, scope: !2012)
!2014 = !DILocation(line: 438, column: 28, scope: !2012)
!2015 = !DILocation(line: 438, column: 38, scope: !2012)
!2016 = !DILocation(line: 438, column: 48, scope: !2012)
!2017 = !DILocation(line: 438, column: 59, scope: !2012)
!2018 = !DILocation(line: 440, column: 19, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !227, line: 440, column: 19)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !227, line: 440, column: 19)
!2021 = distinct !DILexicalBlock(scope: !2012, file: !227, line: 439, column: 17)
!2022 = !DILocation(line: 440, column: 19, scope: !2020)
!2023 = !DILocation(line: 441, column: 19, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !227, line: 441, column: 19)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !227, line: 441, column: 19)
!2026 = !DILocation(line: 441, column: 19, scope: !2025)
!2027 = !DILocation(line: 442, column: 17, scope: !2021)
!2028 = !DILocation(line: 449, column: 20, scope: !1990)
!2029 = !DILocation(line: 454, column: 11, scope: !1855)
!2030 = !DILocation(line: 457, column: 19, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 455, column: 13)
!2032 = !DILocation(line: 463, column: 19, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2031, file: !227, line: 462, column: 19)
!2034 = !DILocation(line: 463, column: 24, scope: !2033)
!2035 = !DILocation(line: 463, column: 28, scope: !2033)
!2036 = !DILocation(line: 463, column: 38, scope: !2033)
!2037 = !DILocation(line: 463, column: 47, scope: !2033)
!2038 = !DILocation(line: 463, column: 41, scope: !2033)
!2039 = !DILocation(line: 463, column: 52, scope: !2033)
!2040 = !DILocation(line: 462, column: 19, scope: !2031)
!2041 = !DILocation(line: 464, column: 25, scope: !2033)
!2042 = !DILocation(line: 464, column: 17, scope: !2033)
!2043 = !DILocation(line: 471, column: 25, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2033, file: !227, line: 465, column: 19)
!2045 = !DILocation(line: 475, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !227, line: 475, column: 21)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !227, line: 475, column: 21)
!2048 = !DILocation(line: 475, column: 21, scope: !2047)
!2049 = !DILocation(line: 476, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !227, line: 476, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !227, line: 476, column: 21)
!2052 = !DILocation(line: 476, column: 21, scope: !2051)
!2053 = !DILocation(line: 477, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !227, line: 477, column: 21)
!2055 = distinct !DILexicalBlock(scope: !2044, file: !227, line: 477, column: 21)
!2056 = !DILocation(line: 477, column: 21, scope: !2055)
!2057 = !DILocation(line: 478, column: 21, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !227, line: 478, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2044, file: !227, line: 478, column: 21)
!2060 = !DILocation(line: 478, column: 21, scope: !2059)
!2061 = !DILocation(line: 479, column: 21, scope: !2044)
!2062 = !DILocation(line: 403, column: 21, scope: !1846)
!2063 = !DILocation(line: 492, column: 31, scope: !1855)
!2064 = !DILocation(line: 493, column: 31, scope: !1855)
!2065 = !DILocation(line: 495, column: 31, scope: !1855)
!2066 = !DILocation(line: 496, column: 31, scope: !1855)
!2067 = !DILocation(line: 497, column: 31, scope: !1855)
!2068 = !DILocation(line: 500, column: 15, scope: !1855)
!2069 = !DILocation(line: 502, column: 19, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !227, line: 501, column: 13)
!2071 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 500, column: 15)
!2072 = !DILocation(line: 509, column: 33, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 509, column: 15)
!2074 = !DILocation(line: 0, scope: !1855)
!2075 = !DILocation(line: 514, column: 15, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 513, column: 15)
!2077 = !DILocation(line: 518, column: 15, scope: !1855)
!2078 = !DILocation(line: 526, column: 26, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 526, column: 15)
!2080 = !DILocation(line: 526, column: 15, scope: !1855)
!2081 = !DILocation(line: 526, column: 40, scope: !2079)
!2082 = !DILocation(line: 526, column: 47, scope: !2079)
!2083 = !DILocation(line: 530, column: 17, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 530, column: 15)
!2085 = !DILocation(line: 526, column: 18, scope: !2079)
!2086 = !DILocation(line: 526, column: 65, scope: !2079)
!2087 = !DILocation(line: 530, column: 15, scope: !1855)
!2088 = !DILocation(line: 535, column: 11, scope: !1855)
!2089 = !DILocation(line: 549, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 548, column: 15)
!2091 = !DILocation(line: 556, column: 15, scope: !1855)
!2092 = !DILocation(line: 558, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !227, line: 557, column: 13)
!2094 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 556, column: 15)
!2095 = !DILocation(line: 561, column: 19, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !227, line: 561, column: 19)
!2097 = !DILocation(line: 561, column: 35, scope: !2096)
!2098 = !DILocation(line: 561, column: 30, scope: !2096)
!2099 = !DILocation(line: 570, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !227, line: 570, column: 15)
!2101 = distinct !DILexicalBlock(scope: !2093, file: !227, line: 570, column: 15)
!2102 = !DILocation(line: 570, column: 15, scope: !2101)
!2103 = !DILocation(line: 571, column: 15, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !227, line: 571, column: 15)
!2105 = distinct !DILexicalBlock(scope: !2093, file: !227, line: 571, column: 15)
!2106 = !DILocation(line: 571, column: 15, scope: !2105)
!2107 = !DILocation(line: 572, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !227, line: 572, column: 15)
!2109 = distinct !DILexicalBlock(scope: !2093, file: !227, line: 572, column: 15)
!2110 = !DILocation(line: 572, column: 15, scope: !2109)
!2111 = !DILocation(line: 574, column: 13, scope: !2093)
!2112 = !DILocation(line: 614, column: 17, scope: !1854)
!2113 = !DILocation(line: 610, column: 20, scope: !1854)
!2114 = !DILocation(line: 617, column: 29, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1859, file: !227, line: 615, column: 15)
!2116 = !DILocation(line: 617, column: 27, scope: !2115)
!2117 = !DILocation(line: 612, column: 18, scope: !1854)
!2118 = !DILocation(line: 618, column: 15, scope: !2115)
!2119 = !DILocation(line: 621, column: 17, scope: !1858)
!2120 = !DILocation(line: 622, column: 17, scope: !1858)
!2121 = !DILocation(line: 626, column: 29, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1858, file: !227, line: 626, column: 21)
!2123 = !DILocation(line: 626, column: 21, scope: !1858)
!2124 = !DILocation(line: 627, column: 29, scope: !2122)
!2125 = !DILocation(line: 627, column: 19, scope: !2122)
!2126 = !DILocation(line: 0, scope: !1971)
!2127 = !DILocation(line: 629, column: 17, scope: !1858)
!2128 = !DILocation(line: 624, column: 19, scope: !1858)
!2129 = !DILocation(line: 625, column: 27, scope: !1858)
!2130 = !DILocation(line: 631, column: 21, scope: !1876)
!2131 = !DILocation(line: 632, column: 56, scope: !1876)
!2132 = !DILocation(line: 632, column: 50, scope: !1876)
!2133 = !DILocation(line: 633, column: 53, scope: !1876)
!2134 = !DILocation(line: 621, column: 27, scope: !1858)
!2135 = !DILocation(line: 631, column: 29, scope: !1876)
!2136 = !DILocation(line: 632, column: 36, scope: !1876)
!2137 = !DILocation(line: 632, column: 28, scope: !1876)
!2138 = !DILocation(line: 634, column: 25, scope: !1876)
!2139 = !DILocation(line: 644, column: 38, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1883, file: !227, line: 642, column: 23)
!2141 = !DILocation(line: 644, column: 48, scope: !2140)
!2142 = !DILocation(line: 644, column: 51, scope: !2140)
!2143 = !DILocation(line: 644, column: 25, scope: !2140)
!2144 = !DILocation(line: 645, column: 28, scope: !2140)
!2145 = !DILocation(line: 644, column: 34, scope: !2140)
!2146 = distinct !{!2146, !2143, !2144}
!2147 = !DILocation(line: 658, column: 43, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !227, line: 658, column: 29)
!2149 = distinct !DILexicalBlock(scope: !1880, file: !227, line: 658, column: 29)
!2150 = !DILocation(line: 655, column: 29, scope: !1881)
!2151 = !DILocation(line: 657, column: 36, scope: !1880)
!2152 = !DILocation(line: 659, column: 49, scope: !2148)
!2153 = !DILocation(line: 659, column: 39, scope: !2148)
!2154 = !DILocation(line: 659, column: 31, scope: !2148)
!2155 = !DILocation(line: 658, column: 53, scope: !2148)
!2156 = !DILocation(line: 658, column: 29, scope: !2149)
!2157 = distinct !{!2157, !2156, !2158}
!2158 = !DILocation(line: 667, column: 33, scope: !2149)
!2159 = !DILocation(line: 674, column: 19, scope: !1858)
!2160 = !DILocation(line: 670, column: 41, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1882, file: !227, line: 670, column: 29)
!2162 = !DILocation(line: 670, column: 31, scope: !2161)
!2163 = !DILocation(line: 670, column: 29, scope: !1882)
!2164 = !DILocation(line: 672, column: 27, scope: !1882)
!2165 = !DILocation(line: 675, column: 26, scope: !1858)
!2166 = !DILocation(line: 675, column: 24, scope: !1858)
!2167 = !DILocation(line: 674, column: 19, scope: !1876)
!2168 = distinct !{!2168, !2127, !2169}
!2169 = !DILocation(line: 675, column: 44, scope: !1858)
!2170 = !DILocation(line: 676, column: 15, scope: !1859)
!2171 = !DILocation(line: 0, scope: !2122)
!2172 = !DILocation(line: 0, scope: !1858)
!2173 = !DILocation(line: 678, column: 40, scope: !1854)
!2174 = !DILocation(line: 680, column: 19, scope: !1888)
!2175 = !DILocation(line: 680, column: 45, scope: !1888)
!2176 = !DILocation(line: 680, column: 23, scope: !1888)
!2177 = !DILocation(line: 684, column: 33, scope: !1887)
!2178 = !DILocation(line: 684, column: 24, scope: !1887)
!2179 = !DILocation(line: 686, column: 17, scope: !1887)
!2180 = !DILocation(line: 0, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !227, line: 687, column: 19)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !227, line: 686, column: 17)
!2183 = distinct !DILexicalBlock(scope: !1887, file: !227, line: 686, column: 17)
!2184 = !DILocation(line: 0, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !227, line: 703, column: 21)
!2186 = !DILocation(line: 0, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !227, line: 696, column: 23)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !227, line: 695, column: 30)
!2189 = distinct !DILexicalBlock(scope: !2181, file: !227, line: 688, column: 25)
!2190 = !DILocation(line: 688, column: 43, scope: !2189)
!2191 = !DILocation(line: 690, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !227, line: 690, column: 25)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !227, line: 689, column: 23)
!2194 = !DILocation(line: 690, column: 25, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !227, line: 690, column: 25)
!2196 = !DILocation(line: 690, column: 25, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !227, line: 690, column: 25)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !227, line: 690, column: 25)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !227, line: 690, column: 25)
!2200 = !DILocation(line: 690, column: 25, scope: !2198)
!2201 = !DILocation(line: 690, column: 25, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !227, line: 690, column: 25)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !227, line: 690, column: 25)
!2204 = !DILocation(line: 690, column: 25, scope: !2203)
!2205 = !DILocation(line: 690, column: 25, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !227, line: 690, column: 25)
!2207 = distinct !DILexicalBlock(scope: !2199, file: !227, line: 690, column: 25)
!2208 = !DILocation(line: 690, column: 25, scope: !2207)
!2209 = !DILocation(line: 690, column: 25, scope: !2199)
!2210 = !DILocation(line: 690, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !227, line: 690, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2192, file: !227, line: 690, column: 25)
!2213 = !DILocation(line: 690, column: 25, scope: !2212)
!2214 = !DILocation(line: 691, column: 25, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !227, line: 691, column: 25)
!2216 = distinct !DILexicalBlock(scope: !2193, file: !227, line: 691, column: 25)
!2217 = !DILocation(line: 691, column: 25, scope: !2216)
!2218 = !DILocation(line: 692, column: 25, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !227, line: 692, column: 25)
!2220 = distinct !DILexicalBlock(scope: !2193, file: !227, line: 692, column: 25)
!2221 = !DILocation(line: 692, column: 25, scope: !2220)
!2222 = !DILocation(line: 693, column: 38, scope: !2193)
!2223 = !DILocation(line: 693, column: 33, scope: !2193)
!2224 = !DILocation(line: 694, column: 23, scope: !2193)
!2225 = !DILocation(line: 695, column: 30, scope: !2188)
!2226 = !DILocation(line: 695, column: 30, scope: !2189)
!2227 = !DILocation(line: 697, column: 25, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !227, line: 697, column: 25)
!2229 = distinct !DILexicalBlock(scope: !2187, file: !227, line: 697, column: 25)
!2230 = !DILocation(line: 697, column: 25, scope: !2229)
!2231 = !DILocation(line: 699, column: 23, scope: !2187)
!2232 = !DILocation(line: 0, scope: !2220)
!2233 = !DILocation(line: 0, scope: !2193)
!2234 = !DILocation(line: 0, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1971, file: !227, line: 418, column: 9)
!2236 = !DILocation(line: 0, scope: !2192)
!2237 = !DILocation(line: 700, column: 35, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2181, file: !227, line: 700, column: 25)
!2239 = !DILocation(line: 700, column: 30, scope: !2238)
!2240 = !DILocation(line: 700, column: 25, scope: !2181)
!2241 = !DILocation(line: 702, column: 21, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !227, line: 702, column: 21)
!2243 = distinct !DILexicalBlock(scope: !2181, file: !227, line: 702, column: 21)
!2244 = !DILocation(line: 702, column: 21, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !227, line: 702, column: 21)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !227, line: 702, column: 21)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !227, line: 702, column: 21)
!2248 = !DILocation(line: 702, column: 21, scope: !2246)
!2249 = !DILocation(line: 702, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !227, line: 702, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !227, line: 702, column: 21)
!2252 = !DILocation(line: 702, column: 21, scope: !2251)
!2253 = !DILocation(line: 702, column: 21, scope: !2247)
!2254 = !DILocation(line: 0, scope: !2229)
!2255 = !DILocation(line: 703, column: 21, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2185, file: !227, line: 703, column: 21)
!2257 = !DILocation(line: 703, column: 21, scope: !2185)
!2258 = !DILocation(line: 704, column: 25, scope: !2181)
!2259 = !DILocation(line: 686, column: 17, scope: !2182)
!2260 = distinct !{!2260, !2261, !2262}
!2261 = !DILocation(line: 686, column: 17, scope: !2183)
!2262 = !DILocation(line: 705, column: 19, scope: !2183)
!2263 = !DILocation(line: 0, scope: !1848)
!2264 = !DILocation(line: 416, column: 30, scope: !1971)
!2265 = !DILocation(line: 712, column: 34, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1846, file: !227, line: 712, column: 11)
!2267 = !DILocation(line: 714, column: 14, scope: !2266)
!2268 = !DILocation(line: 715, column: 14, scope: !2266)
!2269 = !DILocation(line: 715, column: 35, scope: !2266)
!2270 = !DILocation(line: 715, column: 17, scope: !2266)
!2271 = !DILocation(line: 715, column: 47, scope: !2266)
!2272 = !DILocation(line: 715, column: 65, scope: !2266)
!2273 = !DILocation(line: 716, column: 15, scope: !2266)
!2274 = !DILocation(line: 716, column: 11, scope: !2266)
!2275 = !DILocation(line: 712, column: 11, scope: !1846)
!2276 = !DILocation(line: 400, column: 10, scope: !1848)
!2277 = !DILocation(line: 0, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !227, line: 519, column: 13)
!2279 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 518, column: 15)
!2280 = !DILocation(line: 720, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1846, file: !227, line: 720, column: 7)
!2282 = !DILocation(line: 720, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2281, file: !227, line: 720, column: 7)
!2284 = !DILocation(line: 720, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !227, line: 720, column: 7)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !227, line: 720, column: 7)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !227, line: 720, column: 7)
!2288 = !DILocation(line: 720, column: 7, scope: !2286)
!2289 = !DILocation(line: 720, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !227, line: 720, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !227, line: 720, column: 7)
!2292 = !DILocation(line: 720, column: 7, scope: !2291)
!2293 = !DILocation(line: 720, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !227, line: 720, column: 7)
!2295 = distinct !DILexicalBlock(scope: !2287, file: !227, line: 720, column: 7)
!2296 = !DILocation(line: 720, column: 7, scope: !2295)
!2297 = !DILocation(line: 720, column: 7, scope: !2287)
!2298 = !DILocation(line: 720, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !227, line: 720, column: 7)
!2300 = distinct !DILexicalBlock(scope: !2281, file: !227, line: 720, column: 7)
!2301 = !DILocation(line: 720, column: 7, scope: !2300)
!2302 = !DILocation(line: 723, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !227, line: 723, column: 7)
!2304 = distinct !DILexicalBlock(scope: !1846, file: !227, line: 723, column: 7)
!2305 = !DILocation(line: 424, column: 9, scope: !1846)
!2306 = !DILocation(line: 723, column: 7, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !227, line: 723, column: 7)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !227, line: 723, column: 7)
!2309 = distinct !DILexicalBlock(scope: !2303, file: !227, line: 723, column: 7)
!2310 = !DILocation(line: 723, column: 7, scope: !2308)
!2311 = !DILocation(line: 723, column: 7, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !227, line: 723, column: 7)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !227, line: 723, column: 7)
!2314 = !DILocation(line: 723, column: 7, scope: !2313)
!2315 = !DILocation(line: 723, column: 7, scope: !2309)
!2316 = !DILocation(line: 724, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !227, line: 724, column: 7)
!2318 = distinct !DILexicalBlock(scope: !1846, file: !227, line: 724, column: 7)
!2319 = !DILocation(line: 724, column: 7, scope: !2318)
!2320 = !DILocation(line: 726, column: 13, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !1846, file: !227, line: 726, column: 11)
!2322 = !DILocation(line: 726, column: 11, scope: !1846)
!2323 = !DILocation(line: 728, column: 5, scope: !1847)
!2324 = !DILocation(line: 400, column: 75, scope: !1847)
!2325 = !DILocation(line: 400, column: 3, scope: !1847)
!2326 = distinct !{!2326, !1965, !2327}
!2327 = !DILocation(line: 728, column: 5, scope: !1848)
!2328 = !DILocation(line: 730, column: 11, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 730, column: 7)
!2330 = !DILocation(line: 730, column: 16, scope: !2329)
!2331 = !DILocation(line: 738, column: 51, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 738, column: 7)
!2333 = !DILocation(line: 739, column: 10, scope: !2332)
!2334 = !DILocation(line: 741, column: 11, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !227, line: 741, column: 11)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !227, line: 740, column: 5)
!2337 = !DILocation(line: 741, column: 11, scope: !2336)
!2338 = !DILocation(line: 742, column: 16, scope: !2335)
!2339 = !DILocation(line: 742, column: 9, scope: !2335)
!2340 = !DILocation(line: 746, column: 18, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2335, file: !227, line: 746, column: 16)
!2342 = !DILocation(line: 746, column: 32, scope: !2341)
!2343 = !DILocation(line: 746, column: 29, scope: !2341)
!2344 = !DILocation(line: 755, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 755, column: 7)
!2346 = !DILocation(line: 755, column: 20, scope: !2345)
!2347 = !DILocation(line: 756, column: 12, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !227, line: 756, column: 5)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !227, line: 756, column: 5)
!2350 = !DILocation(line: 756, column: 5, scope: !2349)
!2351 = !DILocation(line: 757, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !227, line: 757, column: 7)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !227, line: 757, column: 7)
!2354 = !DILocation(line: 757, column: 7, scope: !2353)
!2355 = !DILocation(line: 756, column: 39, scope: !2348)
!2356 = distinct !{!2356, !2350, !2357}
!2357 = !DILocation(line: 757, column: 7, scope: !2349)
!2358 = !DILocation(line: 759, column: 11, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 759, column: 7)
!2360 = !DILocation(line: 759, column: 7, scope: !1819)
!2361 = !DILocation(line: 760, column: 5, scope: !2359)
!2362 = !DILocation(line: 760, column: 17, scope: !2359)
!2363 = !DILocation(line: 766, column: 21, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 766, column: 7)
!2365 = !DILocation(line: 766, column: 54, scope: !2364)
!2366 = !DILocation(line: 766, column: 51, scope: !2364)
!2367 = !DILocation(line: 770, column: 42, scope: !1819)
!2368 = !DILocation(line: 768, column: 10, scope: !1819)
!2369 = !DILocation(line: 768, column: 3, scope: !1819)
!2370 = !DILocation(line: 772, column: 1, scope: !1819)
!2371 = distinct !DISubprogram(name: "gettext_quote", scope: !227, file: !227, line: 207, type: !2372, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!42, !42, !55}
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DILocalVariable(name: "msgid", arg: 1, scope: !2371, file: !227, line: 207, type: !42)
!2376 = !DILocalVariable(name: "s", arg: 2, scope: !2371, file: !227, line: 207, type: !55)
!2377 = !DILocalVariable(name: "translation", scope: !2371, file: !227, line: 209, type: !42)
!2378 = !DILocalVariable(name: "locale_code", scope: !2371, file: !227, line: 210, type: !42)
!2379 = !DILocation(line: 207, column: 28, scope: !2371)
!2380 = !DILocation(line: 207, column: 54, scope: !2371)
!2381 = !DILocation(line: 209, column: 29, scope: !2371)
!2382 = !DILocation(line: 209, column: 15, scope: !2371)
!2383 = !DILocation(line: 212, column: 19, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2371, file: !227, line: 212, column: 7)
!2385 = !DILocation(line: 212, column: 7, scope: !2371)
!2386 = !DILocation(line: 233, column: 17, scope: !2371)
!2387 = !DILocation(line: 210, column: 15, scope: !2371)
!2388 = !DILocalVariable(name: "s1", arg: 1, scope: !2389, file: !2390, line: 160, type: !42)
!2389 = distinct !DISubprogram(name: "strcaseeq0", scope: !2390, file: !2390, line: 160, type: !2391, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2393)
!2390 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!31, !42, !42, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2393 = !{!2388, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2394 = !DILocalVariable(name: "s2", arg: 2, scope: !2389, file: !2390, line: 160, type: !42)
!2395 = !DILocalVariable(name: "s20", arg: 3, scope: !2389, file: !2390, line: 160, type: !23)
!2396 = !DILocalVariable(name: "s21", arg: 4, scope: !2389, file: !2390, line: 160, type: !23)
!2397 = !DILocalVariable(name: "s22", arg: 5, scope: !2389, file: !2390, line: 160, type: !23)
!2398 = !DILocalVariable(name: "s23", arg: 6, scope: !2389, file: !2390, line: 160, type: !23)
!2399 = !DILocalVariable(name: "s24", arg: 7, scope: !2389, file: !2390, line: 160, type: !23)
!2400 = !DILocalVariable(name: "s25", arg: 8, scope: !2389, file: !2390, line: 160, type: !23)
!2401 = !DILocalVariable(name: "s26", arg: 9, scope: !2389, file: !2390, line: 160, type: !23)
!2402 = !DILocalVariable(name: "s27", arg: 10, scope: !2389, file: !2390, line: 160, type: !23)
!2403 = !DILocalVariable(name: "s28", arg: 11, scope: !2389, file: !2390, line: 160, type: !23)
!2404 = !DILocation(line: 160, column: 25, scope: !2389, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 234, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2371, file: !227, line: 234, column: 7)
!2407 = !DILocation(line: 160, column: 41, scope: !2389, inlinedAt: !2405)
!2408 = !DILocation(line: 160, column: 50, scope: !2389, inlinedAt: !2405)
!2409 = !DILocation(line: 160, column: 60, scope: !2389, inlinedAt: !2405)
!2410 = !DILocation(line: 160, column: 70, scope: !2389, inlinedAt: !2405)
!2411 = !DILocation(line: 160, column: 80, scope: !2389, inlinedAt: !2405)
!2412 = !DILocation(line: 160, column: 90, scope: !2389, inlinedAt: !2405)
!2413 = !DILocation(line: 160, column: 100, scope: !2389, inlinedAt: !2405)
!2414 = !DILocation(line: 160, column: 110, scope: !2389, inlinedAt: !2405)
!2415 = !DILocation(line: 160, column: 120, scope: !2389, inlinedAt: !2405)
!2416 = !DILocation(line: 160, column: 130, scope: !2389, inlinedAt: !2405)
!2417 = !DILocation(line: 162, column: 7, scope: !2418, inlinedAt: !2405)
!2418 = distinct !DILexicalBlock(scope: !2389, file: !2390, line: 162, column: 7)
!2419 = !DILocalVariable(name: "s1", arg: 1, scope: !2420, file: !2390, line: 146, type: !42)
!2420 = distinct !DISubprogram(name: "strcaseeq1", scope: !2390, file: !2390, line: 146, type: !2421, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!31, !42, !42, !23, !23, !23, !23, !23, !23, !23, !23}
!2423 = !{!2419, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432}
!2424 = !DILocalVariable(name: "s2", arg: 2, scope: !2420, file: !2390, line: 146, type: !42)
!2425 = !DILocalVariable(name: "s21", arg: 3, scope: !2420, file: !2390, line: 146, type: !23)
!2426 = !DILocalVariable(name: "s22", arg: 4, scope: !2420, file: !2390, line: 146, type: !23)
!2427 = !DILocalVariable(name: "s23", arg: 5, scope: !2420, file: !2390, line: 146, type: !23)
!2428 = !DILocalVariable(name: "s24", arg: 6, scope: !2420, file: !2390, line: 146, type: !23)
!2429 = !DILocalVariable(name: "s25", arg: 7, scope: !2420, file: !2390, line: 146, type: !23)
!2430 = !DILocalVariable(name: "s26", arg: 8, scope: !2420, file: !2390, line: 146, type: !23)
!2431 = !DILocalVariable(name: "s27", arg: 9, scope: !2420, file: !2390, line: 146, type: !23)
!2432 = !DILocalVariable(name: "s28", arg: 10, scope: !2420, file: !2390, line: 146, type: !23)
!2433 = !DILocation(line: 146, column: 25, scope: !2420, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 167, column: 16, scope: !2435, inlinedAt: !2405)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !2390, line: 164, column: 11)
!2436 = distinct !DILexicalBlock(scope: !2418, file: !2390, line: 163, column: 5)
!2437 = !DILocation(line: 146, column: 41, scope: !2420, inlinedAt: !2434)
!2438 = !DILocation(line: 146, column: 50, scope: !2420, inlinedAt: !2434)
!2439 = !DILocation(line: 146, column: 60, scope: !2420, inlinedAt: !2434)
!2440 = !DILocation(line: 146, column: 70, scope: !2420, inlinedAt: !2434)
!2441 = !DILocation(line: 146, column: 80, scope: !2420, inlinedAt: !2434)
!2442 = !DILocation(line: 146, column: 90, scope: !2420, inlinedAt: !2434)
!2443 = !DILocation(line: 146, column: 100, scope: !2420, inlinedAt: !2434)
!2444 = !DILocation(line: 146, column: 110, scope: !2420, inlinedAt: !2434)
!2445 = !DILocation(line: 146, column: 120, scope: !2420, inlinedAt: !2434)
!2446 = !DILocation(line: 148, column: 7, scope: !2447, inlinedAt: !2434)
!2447 = distinct !DILexicalBlock(scope: !2420, file: !2390, line: 148, column: 7)
!2448 = !DILocalVariable(name: "s1", arg: 1, scope: !2449, file: !2390, line: 132, type: !42)
!2449 = distinct !DISubprogram(name: "strcaseeq2", scope: !2390, file: !2390, line: 132, type: !2450, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!31, !42, !42, !23, !23, !23, !23, !23, !23, !23}
!2452 = !{!2448, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2453 = !DILocalVariable(name: "s2", arg: 2, scope: !2449, file: !2390, line: 132, type: !42)
!2454 = !DILocalVariable(name: "s22", arg: 3, scope: !2449, file: !2390, line: 132, type: !23)
!2455 = !DILocalVariable(name: "s23", arg: 4, scope: !2449, file: !2390, line: 132, type: !23)
!2456 = !DILocalVariable(name: "s24", arg: 5, scope: !2449, file: !2390, line: 132, type: !23)
!2457 = !DILocalVariable(name: "s25", arg: 6, scope: !2449, file: !2390, line: 132, type: !23)
!2458 = !DILocalVariable(name: "s26", arg: 7, scope: !2449, file: !2390, line: 132, type: !23)
!2459 = !DILocalVariable(name: "s27", arg: 8, scope: !2449, file: !2390, line: 132, type: !23)
!2460 = !DILocalVariable(name: "s28", arg: 9, scope: !2449, file: !2390, line: 132, type: !23)
!2461 = !DILocation(line: 132, column: 25, scope: !2449, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 153, column: 16, scope: !2463, inlinedAt: !2434)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !2390, line: 150, column: 11)
!2464 = distinct !DILexicalBlock(scope: !2447, file: !2390, line: 149, column: 5)
!2465 = !DILocation(line: 132, column: 41, scope: !2449, inlinedAt: !2462)
!2466 = !DILocation(line: 132, column: 50, scope: !2449, inlinedAt: !2462)
!2467 = !DILocation(line: 132, column: 60, scope: !2449, inlinedAt: !2462)
!2468 = !DILocation(line: 132, column: 70, scope: !2449, inlinedAt: !2462)
!2469 = !DILocation(line: 132, column: 80, scope: !2449, inlinedAt: !2462)
!2470 = !DILocation(line: 132, column: 90, scope: !2449, inlinedAt: !2462)
!2471 = !DILocation(line: 132, column: 100, scope: !2449, inlinedAt: !2462)
!2472 = !DILocation(line: 132, column: 110, scope: !2449, inlinedAt: !2462)
!2473 = !DILocation(line: 134, column: 7, scope: !2474, inlinedAt: !2462)
!2474 = distinct !DILexicalBlock(scope: !2449, file: !2390, line: 134, column: 7)
!2475 = !DILocalVariable(name: "s1", arg: 1, scope: !2476, file: !2390, line: 118, type: !42)
!2476 = distinct !DISubprogram(name: "strcaseeq3", scope: !2390, file: !2390, line: 118, type: !2477, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!31, !42, !42, !23, !23, !23, !23, !23, !23}
!2479 = !{!2475, !2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2480 = !DILocalVariable(name: "s2", arg: 2, scope: !2476, file: !2390, line: 118, type: !42)
!2481 = !DILocalVariable(name: "s23", arg: 3, scope: !2476, file: !2390, line: 118, type: !23)
!2482 = !DILocalVariable(name: "s24", arg: 4, scope: !2476, file: !2390, line: 118, type: !23)
!2483 = !DILocalVariable(name: "s25", arg: 5, scope: !2476, file: !2390, line: 118, type: !23)
!2484 = !DILocalVariable(name: "s26", arg: 6, scope: !2476, file: !2390, line: 118, type: !23)
!2485 = !DILocalVariable(name: "s27", arg: 7, scope: !2476, file: !2390, line: 118, type: !23)
!2486 = !DILocalVariable(name: "s28", arg: 8, scope: !2476, file: !2390, line: 118, type: !23)
!2487 = !DILocation(line: 118, column: 25, scope: !2476, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 139, column: 16, scope: !2489, inlinedAt: !2462)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !2390, line: 136, column: 11)
!2490 = distinct !DILexicalBlock(scope: !2474, file: !2390, line: 135, column: 5)
!2491 = !DILocation(line: 118, column: 41, scope: !2476, inlinedAt: !2488)
!2492 = !DILocation(line: 118, column: 50, scope: !2476, inlinedAt: !2488)
!2493 = !DILocation(line: 118, column: 60, scope: !2476, inlinedAt: !2488)
!2494 = !DILocation(line: 118, column: 70, scope: !2476, inlinedAt: !2488)
!2495 = !DILocation(line: 118, column: 80, scope: !2476, inlinedAt: !2488)
!2496 = !DILocation(line: 118, column: 90, scope: !2476, inlinedAt: !2488)
!2497 = !DILocation(line: 118, column: 100, scope: !2476, inlinedAt: !2488)
!2498 = !DILocation(line: 120, column: 7, scope: !2499, inlinedAt: !2488)
!2499 = distinct !DILexicalBlock(scope: !2476, file: !2390, line: 120, column: 7)
!2500 = !DILocation(line: 120, column: 7, scope: !2476, inlinedAt: !2488)
!2501 = !DILocalVariable(name: "s1", arg: 1, scope: !2502, file: !2390, line: 104, type: !42)
!2502 = distinct !DISubprogram(name: "strcaseeq4", scope: !2390, file: !2390, line: 104, type: !2503, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!31, !42, !42, !23, !23, !23, !23, !23}
!2505 = !{!2501, !2506, !2507, !2508, !2509, !2510, !2511}
!2506 = !DILocalVariable(name: "s2", arg: 2, scope: !2502, file: !2390, line: 104, type: !42)
!2507 = !DILocalVariable(name: "s24", arg: 3, scope: !2502, file: !2390, line: 104, type: !23)
!2508 = !DILocalVariable(name: "s25", arg: 4, scope: !2502, file: !2390, line: 104, type: !23)
!2509 = !DILocalVariable(name: "s26", arg: 5, scope: !2502, file: !2390, line: 104, type: !23)
!2510 = !DILocalVariable(name: "s27", arg: 6, scope: !2502, file: !2390, line: 104, type: !23)
!2511 = !DILocalVariable(name: "s28", arg: 7, scope: !2502, file: !2390, line: 104, type: !23)
!2512 = !DILocation(line: 104, column: 25, scope: !2502, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 125, column: 16, scope: !2514, inlinedAt: !2488)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !2390, line: 122, column: 11)
!2515 = distinct !DILexicalBlock(scope: !2499, file: !2390, line: 121, column: 5)
!2516 = !DILocation(line: 104, column: 41, scope: !2502, inlinedAt: !2513)
!2517 = !DILocation(line: 104, column: 50, scope: !2502, inlinedAt: !2513)
!2518 = !DILocation(line: 104, column: 60, scope: !2502, inlinedAt: !2513)
!2519 = !DILocation(line: 104, column: 70, scope: !2502, inlinedAt: !2513)
!2520 = !DILocation(line: 104, column: 80, scope: !2502, inlinedAt: !2513)
!2521 = !DILocation(line: 104, column: 90, scope: !2502, inlinedAt: !2513)
!2522 = !DILocation(line: 106, column: 7, scope: !2523, inlinedAt: !2513)
!2523 = distinct !DILexicalBlock(scope: !2502, file: !2390, line: 106, column: 7)
!2524 = !DILocation(line: 106, column: 7, scope: !2502, inlinedAt: !2513)
!2525 = !DILocalVariable(name: "s1", arg: 1, scope: !2526, file: !2390, line: 90, type: !42)
!2526 = distinct !DISubprogram(name: "strcaseeq5", scope: !2390, file: !2390, line: 90, type: !2527, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!31, !42, !42, !23, !23, !23, !23}
!2529 = !{!2525, !2530, !2531, !2532, !2533, !2534}
!2530 = !DILocalVariable(name: "s2", arg: 2, scope: !2526, file: !2390, line: 90, type: !42)
!2531 = !DILocalVariable(name: "s25", arg: 3, scope: !2526, file: !2390, line: 90, type: !23)
!2532 = !DILocalVariable(name: "s26", arg: 4, scope: !2526, file: !2390, line: 90, type: !23)
!2533 = !DILocalVariable(name: "s27", arg: 5, scope: !2526, file: !2390, line: 90, type: !23)
!2534 = !DILocalVariable(name: "s28", arg: 6, scope: !2526, file: !2390, line: 90, type: !23)
!2535 = !DILocation(line: 90, column: 25, scope: !2526, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 111, column: 16, scope: !2537, inlinedAt: !2513)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !2390, line: 108, column: 11)
!2538 = distinct !DILexicalBlock(scope: !2523, file: !2390, line: 107, column: 5)
!2539 = !DILocation(line: 90, column: 41, scope: !2526, inlinedAt: !2536)
!2540 = !DILocation(line: 90, column: 50, scope: !2526, inlinedAt: !2536)
!2541 = !DILocation(line: 90, column: 60, scope: !2526, inlinedAt: !2536)
!2542 = !DILocation(line: 90, column: 70, scope: !2526, inlinedAt: !2536)
!2543 = !DILocation(line: 90, column: 80, scope: !2526, inlinedAt: !2536)
!2544 = !DILocation(line: 92, column: 7, scope: !2545, inlinedAt: !2536)
!2545 = distinct !DILexicalBlock(scope: !2526, file: !2390, line: 92, column: 7)
!2546 = !DILocation(line: 92, column: 7, scope: !2526, inlinedAt: !2536)
!2547 = !DILocation(line: 235, column: 12, scope: !2406)
!2548 = !DILocation(line: 235, column: 21, scope: !2406)
!2549 = !DILocation(line: 235, column: 5, scope: !2406)
!2550 = !DILocation(line: 146, column: 25, scope: !2420, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 167, column: 16, scope: !2435, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 236, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2371, file: !227, line: 236, column: 7)
!2554 = !DILocation(line: 146, column: 41, scope: !2420, inlinedAt: !2551)
!2555 = !DILocation(line: 146, column: 50, scope: !2420, inlinedAt: !2551)
!2556 = !DILocation(line: 146, column: 60, scope: !2420, inlinedAt: !2551)
!2557 = !DILocation(line: 146, column: 70, scope: !2420, inlinedAt: !2551)
!2558 = !DILocation(line: 146, column: 80, scope: !2420, inlinedAt: !2551)
!2559 = !DILocation(line: 146, column: 90, scope: !2420, inlinedAt: !2551)
!2560 = !DILocation(line: 146, column: 100, scope: !2420, inlinedAt: !2551)
!2561 = !DILocation(line: 146, column: 110, scope: !2420, inlinedAt: !2551)
!2562 = !DILocation(line: 146, column: 120, scope: !2420, inlinedAt: !2551)
!2563 = !DILocation(line: 148, column: 7, scope: !2447, inlinedAt: !2551)
!2564 = !DILocation(line: 132, column: 25, scope: !2449, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 153, column: 16, scope: !2463, inlinedAt: !2551)
!2566 = !DILocation(line: 132, column: 41, scope: !2449, inlinedAt: !2565)
!2567 = !DILocation(line: 132, column: 50, scope: !2449, inlinedAt: !2565)
!2568 = !DILocation(line: 132, column: 60, scope: !2449, inlinedAt: !2565)
!2569 = !DILocation(line: 132, column: 70, scope: !2449, inlinedAt: !2565)
!2570 = !DILocation(line: 132, column: 80, scope: !2449, inlinedAt: !2565)
!2571 = !DILocation(line: 132, column: 90, scope: !2449, inlinedAt: !2565)
!2572 = !DILocation(line: 132, column: 100, scope: !2449, inlinedAt: !2565)
!2573 = !DILocation(line: 132, column: 110, scope: !2449, inlinedAt: !2565)
!2574 = !DILocation(line: 134, column: 7, scope: !2474, inlinedAt: !2565)
!2575 = !DILocation(line: 134, column: 7, scope: !2449, inlinedAt: !2565)
!2576 = !DILocation(line: 118, column: 25, scope: !2476, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 139, column: 16, scope: !2489, inlinedAt: !2565)
!2578 = !DILocation(line: 118, column: 41, scope: !2476, inlinedAt: !2577)
!2579 = !DILocation(line: 118, column: 50, scope: !2476, inlinedAt: !2577)
!2580 = !DILocation(line: 118, column: 60, scope: !2476, inlinedAt: !2577)
!2581 = !DILocation(line: 118, column: 70, scope: !2476, inlinedAt: !2577)
!2582 = !DILocation(line: 118, column: 80, scope: !2476, inlinedAt: !2577)
!2583 = !DILocation(line: 118, column: 90, scope: !2476, inlinedAt: !2577)
!2584 = !DILocation(line: 118, column: 100, scope: !2476, inlinedAt: !2577)
!2585 = !DILocation(line: 120, column: 7, scope: !2499, inlinedAt: !2577)
!2586 = !DILocation(line: 120, column: 7, scope: !2476, inlinedAt: !2577)
!2587 = !DILocation(line: 104, column: 25, scope: !2502, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 125, column: 16, scope: !2514, inlinedAt: !2577)
!2589 = !DILocation(line: 104, column: 41, scope: !2502, inlinedAt: !2588)
!2590 = !DILocation(line: 104, column: 50, scope: !2502, inlinedAt: !2588)
!2591 = !DILocation(line: 104, column: 60, scope: !2502, inlinedAt: !2588)
!2592 = !DILocation(line: 104, column: 70, scope: !2502, inlinedAt: !2588)
!2593 = !DILocation(line: 104, column: 80, scope: !2502, inlinedAt: !2588)
!2594 = !DILocation(line: 104, column: 90, scope: !2502, inlinedAt: !2588)
!2595 = !DILocation(line: 106, column: 7, scope: !2523, inlinedAt: !2588)
!2596 = !DILocation(line: 106, column: 7, scope: !2502, inlinedAt: !2588)
!2597 = !DILocation(line: 90, column: 25, scope: !2526, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 111, column: 16, scope: !2537, inlinedAt: !2588)
!2599 = !DILocation(line: 90, column: 41, scope: !2526, inlinedAt: !2598)
!2600 = !DILocation(line: 90, column: 50, scope: !2526, inlinedAt: !2598)
!2601 = !DILocation(line: 90, column: 60, scope: !2526, inlinedAt: !2598)
!2602 = !DILocation(line: 90, column: 70, scope: !2526, inlinedAt: !2598)
!2603 = !DILocation(line: 90, column: 80, scope: !2526, inlinedAt: !2598)
!2604 = !DILocation(line: 92, column: 7, scope: !2545, inlinedAt: !2598)
!2605 = !DILocation(line: 92, column: 7, scope: !2526, inlinedAt: !2598)
!2606 = !DILocalVariable(name: "s1", arg: 1, scope: !2607, file: !2390, line: 76, type: !42)
!2607 = distinct !DISubprogram(name: "strcaseeq6", scope: !2390, file: !2390, line: 76, type: !2608, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!31, !42, !42, !23, !23, !23}
!2610 = !{!2606, !2611, !2612, !2613, !2614}
!2611 = !DILocalVariable(name: "s2", arg: 2, scope: !2607, file: !2390, line: 76, type: !42)
!2612 = !DILocalVariable(name: "s26", arg: 3, scope: !2607, file: !2390, line: 76, type: !23)
!2613 = !DILocalVariable(name: "s27", arg: 4, scope: !2607, file: !2390, line: 76, type: !23)
!2614 = !DILocalVariable(name: "s28", arg: 5, scope: !2607, file: !2390, line: 76, type: !23)
!2615 = !DILocation(line: 76, column: 25, scope: !2607, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 97, column: 16, scope: !2617, inlinedAt: !2598)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !2390, line: 94, column: 11)
!2618 = distinct !DILexicalBlock(scope: !2545, file: !2390, line: 93, column: 5)
!2619 = !DILocation(line: 76, column: 41, scope: !2607, inlinedAt: !2616)
!2620 = !DILocation(line: 76, column: 50, scope: !2607, inlinedAt: !2616)
!2621 = !DILocation(line: 76, column: 60, scope: !2607, inlinedAt: !2616)
!2622 = !DILocation(line: 76, column: 70, scope: !2607, inlinedAt: !2616)
!2623 = !DILocation(line: 78, column: 7, scope: !2624, inlinedAt: !2616)
!2624 = distinct !DILexicalBlock(scope: !2607, file: !2390, line: 78, column: 7)
!2625 = !DILocation(line: 78, column: 7, scope: !2607, inlinedAt: !2616)
!2626 = !DILocalVariable(name: "s1", arg: 1, scope: !2627, file: !2390, line: 62, type: !42)
!2627 = distinct !DISubprogram(name: "strcaseeq7", scope: !2390, file: !2390, line: 62, type: !2628, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!31, !42, !42, !23, !23}
!2630 = !{!2626, !2631, !2632, !2633}
!2631 = !DILocalVariable(name: "s2", arg: 2, scope: !2627, file: !2390, line: 62, type: !42)
!2632 = !DILocalVariable(name: "s27", arg: 3, scope: !2627, file: !2390, line: 62, type: !23)
!2633 = !DILocalVariable(name: "s28", arg: 4, scope: !2627, file: !2390, line: 62, type: !23)
!2634 = !DILocation(line: 62, column: 25, scope: !2627, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 83, column: 16, scope: !2636, inlinedAt: !2616)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !2390, line: 80, column: 11)
!2637 = distinct !DILexicalBlock(scope: !2624, file: !2390, line: 79, column: 5)
!2638 = !DILocation(line: 62, column: 41, scope: !2627, inlinedAt: !2635)
!2639 = !DILocation(line: 62, column: 50, scope: !2627, inlinedAt: !2635)
!2640 = !DILocation(line: 62, column: 60, scope: !2627, inlinedAt: !2635)
!2641 = !DILocation(line: 64, column: 7, scope: !2642, inlinedAt: !2635)
!2642 = distinct !DILexicalBlock(scope: !2627, file: !2390, line: 64, column: 7)
!2643 = !DILocation(line: 236, column: 7, scope: !2371)
!2644 = !DILocation(line: 237, column: 12, scope: !2553)
!2645 = !DILocation(line: 237, column: 21, scope: !2553)
!2646 = !DILocation(line: 237, column: 5, scope: !2553)
!2647 = !DILocation(line: 239, column: 13, scope: !2371)
!2648 = !DILocation(line: 239, column: 11, scope: !2371)
!2649 = !DILocation(line: 239, column: 3, scope: !2371)
!2650 = !DILocation(line: 0, scope: !2371)
!2651 = !DILocation(line: 240, column: 1, scope: !2371)
!2652 = distinct !DISubprogram(name: "quotearg_alloc", scope: !227, file: !227, line: 799, type: !2653, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!22, !42, !84, !1692}
!2655 = !{!2656, !2657, !2658}
!2656 = !DILocalVariable(name: "arg", arg: 1, scope: !2652, file: !227, line: 799, type: !42)
!2657 = !DILocalVariable(name: "argsize", arg: 2, scope: !2652, file: !227, line: 799, type: !84)
!2658 = !DILocalVariable(name: "o", arg: 3, scope: !2652, file: !227, line: 800, type: !1692)
!2659 = !DILocation(line: 799, column: 29, scope: !2652)
!2660 = !DILocation(line: 799, column: 41, scope: !2652)
!2661 = !DILocation(line: 800, column: 47, scope: !2652)
!2662 = !DILocalVariable(name: "arg", arg: 1, scope: !2663, file: !227, line: 812, type: !42)
!2663 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !227, file: !227, line: 812, type: !2664, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!22, !42, !84, !83, !1692}
!2666 = !{!2662, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2667 = !DILocalVariable(name: "argsize", arg: 2, scope: !2663, file: !227, line: 812, type: !84)
!2668 = !DILocalVariable(name: "size", arg: 3, scope: !2663, file: !227, line: 812, type: !83)
!2669 = !DILocalVariable(name: "o", arg: 4, scope: !2663, file: !227, line: 813, type: !1692)
!2670 = !DILocalVariable(name: "p", scope: !2663, file: !227, line: 815, type: !1692)
!2671 = !DILocalVariable(name: "e", scope: !2663, file: !227, line: 816, type: !31)
!2672 = !DILocalVariable(name: "flags", scope: !2663, file: !227, line: 818, type: !31)
!2673 = !DILocalVariable(name: "bufsize", scope: !2663, file: !227, line: 819, type: !84)
!2674 = !DILocalVariable(name: "buf", scope: !2663, file: !227, line: 823, type: !22)
!2675 = !DILocation(line: 812, column: 33, scope: !2663, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 802, column: 10, scope: !2652)
!2677 = !DILocation(line: 812, column: 45, scope: !2663, inlinedAt: !2676)
!2678 = !DILocation(line: 812, column: 62, scope: !2663, inlinedAt: !2676)
!2679 = !DILocation(line: 813, column: 51, scope: !2663, inlinedAt: !2676)
!2680 = !DILocation(line: 815, column: 37, scope: !2663, inlinedAt: !2676)
!2681 = !DILocation(line: 815, column: 33, scope: !2663, inlinedAt: !2676)
!2682 = !DILocation(line: 816, column: 11, scope: !2663, inlinedAt: !2676)
!2683 = !DILocation(line: 816, column: 7, scope: !2663, inlinedAt: !2676)
!2684 = !DILocation(line: 818, column: 18, scope: !2663, inlinedAt: !2676)
!2685 = !DILocation(line: 818, column: 24, scope: !2663, inlinedAt: !2676)
!2686 = !DILocation(line: 818, column: 7, scope: !2663, inlinedAt: !2676)
!2687 = !DILocation(line: 819, column: 69, scope: !2663, inlinedAt: !2676)
!2688 = !DILocation(line: 820, column: 53, scope: !2663, inlinedAt: !2676)
!2689 = !DILocation(line: 821, column: 49, scope: !2663, inlinedAt: !2676)
!2690 = !DILocation(line: 822, column: 49, scope: !2663, inlinedAt: !2676)
!2691 = !DILocation(line: 819, column: 20, scope: !2663, inlinedAt: !2676)
!2692 = !DILocation(line: 822, column: 62, scope: !2663, inlinedAt: !2676)
!2693 = !DILocation(line: 819, column: 10, scope: !2663, inlinedAt: !2676)
!2694 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !79, line: 216, type: !84)
!2695 = distinct !DISubprogram(name: "xcharalloc", scope: !79, file: !79, line: 216, type: !2696, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!22, !84}
!2698 = !{!2694}
!2699 = !DILocation(line: 216, column: 20, scope: !2695, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 823, column: 15, scope: !2663, inlinedAt: !2676)
!2701 = !DILocation(line: 218, column: 10, scope: !2695, inlinedAt: !2700)
!2702 = !DILocation(line: 823, column: 9, scope: !2663, inlinedAt: !2676)
!2703 = !DILocation(line: 824, column: 60, scope: !2663, inlinedAt: !2676)
!2704 = !DILocation(line: 826, column: 32, scope: !2663, inlinedAt: !2676)
!2705 = !DILocation(line: 826, column: 47, scope: !2663, inlinedAt: !2676)
!2706 = !DILocation(line: 824, column: 3, scope: !2663, inlinedAt: !2676)
!2707 = !DILocation(line: 827, column: 9, scope: !2663, inlinedAt: !2676)
!2708 = !DILocation(line: 802, column: 3, scope: !2652)
!2709 = !DILocation(line: 812, column: 33, scope: !2663)
!2710 = !DILocation(line: 812, column: 45, scope: !2663)
!2711 = !DILocation(line: 812, column: 62, scope: !2663)
!2712 = !DILocation(line: 813, column: 51, scope: !2663)
!2713 = !DILocation(line: 815, column: 37, scope: !2663)
!2714 = !DILocation(line: 815, column: 33, scope: !2663)
!2715 = !DILocation(line: 816, column: 11, scope: !2663)
!2716 = !DILocation(line: 816, column: 7, scope: !2663)
!2717 = !DILocation(line: 818, column: 18, scope: !2663)
!2718 = !DILocation(line: 818, column: 27, scope: !2663)
!2719 = !DILocation(line: 818, column: 24, scope: !2663)
!2720 = !DILocation(line: 818, column: 7, scope: !2663)
!2721 = !DILocation(line: 819, column: 69, scope: !2663)
!2722 = !DILocation(line: 820, column: 53, scope: !2663)
!2723 = !DILocation(line: 821, column: 49, scope: !2663)
!2724 = !DILocation(line: 822, column: 49, scope: !2663)
!2725 = !DILocation(line: 819, column: 20, scope: !2663)
!2726 = !DILocation(line: 822, column: 62, scope: !2663)
!2727 = !DILocation(line: 819, column: 10, scope: !2663)
!2728 = !DILocation(line: 216, column: 20, scope: !2695, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 823, column: 15, scope: !2663)
!2730 = !DILocation(line: 218, column: 10, scope: !2695, inlinedAt: !2729)
!2731 = !DILocation(line: 823, column: 9, scope: !2663)
!2732 = !DILocation(line: 824, column: 60, scope: !2663)
!2733 = !DILocation(line: 826, column: 32, scope: !2663)
!2734 = !DILocation(line: 826, column: 47, scope: !2663)
!2735 = !DILocation(line: 824, column: 3, scope: !2663)
!2736 = !DILocation(line: 827, column: 9, scope: !2663)
!2737 = !DILocation(line: 828, column: 7, scope: !2663)
!2738 = !DILocation(line: 829, column: 11, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2663, file: !227, line: 828, column: 7)
!2740 = !DILocation(line: 829, column: 5, scope: !2739)
!2741 = !DILocation(line: 830, column: 3, scope: !2663)
!2742 = distinct !DISubprogram(name: "quotearg_free", scope: !227, file: !227, line: 848, type: !752, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2743)
!2743 = !{!2744, !2745}
!2744 = !DILocalVariable(name: "sv", scope: !2742, file: !227, line: 850, type: !253)
!2745 = !DILocalVariable(name: "i", scope: !2742, file: !227, line: 851, type: !31)
!2746 = !DILocation(line: 850, column: 24, scope: !2742)
!2747 = !DILocation(line: 850, column: 19, scope: !2742)
!2748 = !DILocation(line: 851, column: 7, scope: !2742)
!2749 = !DILocation(line: 852, column: 19, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !227, line: 852, column: 3)
!2751 = distinct !DILexicalBlock(scope: !2742, file: !227, line: 852, column: 3)
!2752 = !DILocation(line: 852, column: 17, scope: !2750)
!2753 = !DILocation(line: 852, column: 3, scope: !2751)
!2754 = !DILocation(line: 853, column: 17, scope: !2750)
!2755 = !{!2756, !745, i64 8}
!2756 = !{!"slotvec", !926, i64 0, !745, i64 8}
!2757 = !DILocation(line: 853, column: 5, scope: !2750)
!2758 = !DILocation(line: 852, column: 28, scope: !2750)
!2759 = distinct !{!2759, !2753, !2760}
!2760 = !DILocation(line: 853, column: 20, scope: !2751)
!2761 = !DILocation(line: 854, column: 13, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2742, file: !227, line: 854, column: 7)
!2763 = !DILocation(line: 854, column: 17, scope: !2762)
!2764 = !DILocation(line: 854, column: 7, scope: !2742)
!2765 = !DILocation(line: 856, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !227, line: 855, column: 5)
!2767 = !DILocation(line: 857, column: 21, scope: !2766)
!2768 = !{!2756, !926, i64 0}
!2769 = !DILocation(line: 858, column: 20, scope: !2766)
!2770 = !DILocation(line: 859, column: 5, scope: !2766)
!2771 = !DILocation(line: 860, column: 10, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2742, file: !227, line: 860, column: 7)
!2773 = !DILocation(line: 860, column: 7, scope: !2742)
!2774 = !DILocation(line: 862, column: 13, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !227, line: 861, column: 5)
!2776 = !DILocation(line: 862, column: 7, scope: !2775)
!2777 = !DILocation(line: 863, column: 15, scope: !2775)
!2778 = !DILocation(line: 864, column: 5, scope: !2775)
!2779 = !DILocation(line: 865, column: 10, scope: !2742)
!2780 = !DILocation(line: 866, column: 1, scope: !2742)
!2781 = distinct !DISubprogram(name: "quotearg_n", scope: !227, file: !227, line: 931, type: !2782, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!22, !31, !42}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "n", arg: 1, scope: !2781, file: !227, line: 931, type: !31)
!2786 = !DILocalVariable(name: "arg", arg: 2, scope: !2781, file: !227, line: 931, type: !42)
!2787 = !DILocation(line: 931, column: 17, scope: !2781)
!2788 = !DILocation(line: 931, column: 32, scope: !2781)
!2789 = !DILocation(line: 933, column: 10, scope: !2781)
!2790 = !DILocation(line: 933, column: 3, scope: !2781)
!2791 = distinct !DISubprogram(name: "quotearg_n_options", scope: !227, file: !227, line: 877, type: !2792, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!22, !31, !42, !84, !1692}
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801, !2804, !2805, !2807, !2808, !2809}
!2795 = !DILocalVariable(name: "n", arg: 1, scope: !2791, file: !227, line: 877, type: !31)
!2796 = !DILocalVariable(name: "arg", arg: 2, scope: !2791, file: !227, line: 877, type: !42)
!2797 = !DILocalVariable(name: "argsize", arg: 3, scope: !2791, file: !227, line: 877, type: !84)
!2798 = !DILocalVariable(name: "options", arg: 4, scope: !2791, file: !227, line: 878, type: !1692)
!2799 = !DILocalVariable(name: "e", scope: !2791, file: !227, line: 880, type: !31)
!2800 = !DILocalVariable(name: "sv", scope: !2791, file: !227, line: 882, type: !253)
!2801 = !DILocalVariable(name: "preallocated", scope: !2802, file: !227, line: 889, type: !175)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !227, line: 888, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2791, file: !227, line: 887, column: 7)
!2804 = !DILocalVariable(name: "nmax", scope: !2802, file: !227, line: 890, type: !31)
!2805 = !DILocalVariable(name: "size", scope: !2806, file: !227, line: 903, type: !84)
!2806 = distinct !DILexicalBlock(scope: !2791, file: !227, line: 902, column: 3)
!2807 = !DILocalVariable(name: "val", scope: !2806, file: !227, line: 904, type: !22)
!2808 = !DILocalVariable(name: "flags", scope: !2806, file: !227, line: 906, type: !31)
!2809 = !DILocalVariable(name: "qsize", scope: !2806, file: !227, line: 907, type: !84)
!2810 = !DILocation(line: 877, column: 25, scope: !2791)
!2811 = !DILocation(line: 877, column: 40, scope: !2791)
!2812 = !DILocation(line: 877, column: 52, scope: !2791)
!2813 = !DILocation(line: 878, column: 51, scope: !2791)
!2814 = !DILocation(line: 880, column: 11, scope: !2791)
!2815 = !DILocation(line: 880, column: 7, scope: !2791)
!2816 = !DILocation(line: 882, column: 24, scope: !2791)
!2817 = !DILocation(line: 882, column: 19, scope: !2791)
!2818 = !DILocation(line: 884, column: 9, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2791, file: !227, line: 884, column: 7)
!2820 = !DILocation(line: 884, column: 7, scope: !2791)
!2821 = !DILocation(line: 885, column: 5, scope: !2819)
!2822 = !DILocation(line: 887, column: 7, scope: !2803)
!2823 = !DILocation(line: 887, column: 14, scope: !2803)
!2824 = !DILocation(line: 887, column: 7, scope: !2791)
!2825 = !DILocation(line: 889, column: 31, scope: !2802)
!2826 = !DILocation(line: 890, column: 11, scope: !2802)
!2827 = !DILocation(line: 892, column: 16, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2802, file: !227, line: 892, column: 11)
!2829 = !DILocation(line: 892, column: 11, scope: !2802)
!2830 = !DILocation(line: 893, column: 9, scope: !2828)
!2831 = !DILocation(line: 895, column: 32, scope: !2802)
!2832 = !DILocation(line: 895, column: 61, scope: !2802)
!2833 = !DILocation(line: 895, column: 58, scope: !2802)
!2834 = !DILocation(line: 895, column: 66, scope: !2802)
!2835 = !DILocation(line: 895, column: 22, scope: !2802)
!2836 = !DILocation(line: 895, column: 15, scope: !2802)
!2837 = !DILocation(line: 896, column: 11, scope: !2802)
!2838 = !DILocation(line: 897, column: 15, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2802, file: !227, line: 896, column: 11)
!2840 = !{i64 0, i64 8, !925, i64 8, i64 8, !744}
!2841 = !DILocation(line: 897, column: 9, scope: !2839)
!2842 = !DILocation(line: 898, column: 20, scope: !2802)
!2843 = !DILocation(line: 898, column: 18, scope: !2802)
!2844 = !DILocation(line: 898, column: 7, scope: !2802)
!2845 = !DILocation(line: 898, column: 38, scope: !2802)
!2846 = !DILocation(line: 898, column: 31, scope: !2802)
!2847 = !DILocation(line: 898, column: 48, scope: !2802)
!2848 = !DILocation(line: 899, column: 14, scope: !2802)
!2849 = !DILocation(line: 900, column: 5, scope: !2802)
!2850 = !DILocation(line: 0, scope: !2791)
!2851 = !DILocation(line: 903, column: 19, scope: !2806)
!2852 = !DILocation(line: 903, column: 25, scope: !2806)
!2853 = !DILocation(line: 903, column: 12, scope: !2806)
!2854 = !DILocation(line: 904, column: 23, scope: !2806)
!2855 = !DILocation(line: 904, column: 11, scope: !2806)
!2856 = !DILocation(line: 906, column: 26, scope: !2806)
!2857 = !DILocation(line: 906, column: 32, scope: !2806)
!2858 = !DILocation(line: 906, column: 9, scope: !2806)
!2859 = !DILocation(line: 908, column: 55, scope: !2806)
!2860 = !DILocation(line: 909, column: 46, scope: !2806)
!2861 = !DILocation(line: 910, column: 55, scope: !2806)
!2862 = !DILocation(line: 911, column: 55, scope: !2806)
!2863 = !DILocation(line: 907, column: 20, scope: !2806)
!2864 = !DILocation(line: 907, column: 12, scope: !2806)
!2865 = !DILocation(line: 913, column: 14, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2806, file: !227, line: 913, column: 9)
!2867 = !DILocation(line: 913, column: 9, scope: !2806)
!2868 = !DILocation(line: 915, column: 35, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !227, line: 914, column: 7)
!2870 = !DILocation(line: 915, column: 20, scope: !2869)
!2871 = !DILocation(line: 916, column: 17, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !227, line: 916, column: 13)
!2873 = !DILocation(line: 916, column: 13, scope: !2869)
!2874 = !DILocation(line: 917, column: 11, scope: !2872)
!2875 = !DILocation(line: 216, column: 20, scope: !2695, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 918, column: 27, scope: !2869)
!2877 = !DILocation(line: 218, column: 10, scope: !2695, inlinedAt: !2876)
!2878 = !DILocation(line: 918, column: 19, scope: !2869)
!2879 = !DILocation(line: 919, column: 69, scope: !2869)
!2880 = !DILocation(line: 921, column: 44, scope: !2869)
!2881 = !DILocation(line: 922, column: 44, scope: !2869)
!2882 = !DILocation(line: 919, column: 9, scope: !2869)
!2883 = !DILocation(line: 923, column: 7, scope: !2869)
!2884 = !DILocation(line: 0, scope: !2806)
!2885 = !DILocation(line: 925, column: 11, scope: !2806)
!2886 = !DILocation(line: 926, column: 5, scope: !2806)
!2887 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !227, file: !227, line: 937, type: !2888, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!22, !31, !42, !84}
!2890 = !{!2891, !2892, !2893}
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2887, file: !227, line: 937, type: !31)
!2892 = !DILocalVariable(name: "arg", arg: 2, scope: !2887, file: !227, line: 937, type: !42)
!2893 = !DILocalVariable(name: "argsize", arg: 3, scope: !2887, file: !227, line: 937, type: !84)
!2894 = !DILocation(line: 937, column: 21, scope: !2887)
!2895 = !DILocation(line: 937, column: 36, scope: !2887)
!2896 = !DILocation(line: 937, column: 48, scope: !2887)
!2897 = !DILocation(line: 939, column: 10, scope: !2887)
!2898 = !DILocation(line: 939, column: 3, scope: !2887)
!2899 = distinct !DISubprogram(name: "quotearg", scope: !227, file: !227, line: 943, type: !2900, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!22, !42}
!2902 = !{!2903}
!2903 = !DILocalVariable(name: "arg", arg: 1, scope: !2899, file: !227, line: 943, type: !42)
!2904 = !DILocation(line: 943, column: 23, scope: !2899)
!2905 = !DILocation(line: 931, column: 17, scope: !2781, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 945, column: 10, scope: !2899)
!2907 = !DILocation(line: 931, column: 32, scope: !2781, inlinedAt: !2906)
!2908 = !DILocation(line: 933, column: 10, scope: !2781, inlinedAt: !2906)
!2909 = !DILocation(line: 945, column: 3, scope: !2899)
!2910 = distinct !DISubprogram(name: "quotearg_mem", scope: !227, file: !227, line: 949, type: !2911, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!22, !42, !84}
!2913 = !{!2914, !2915}
!2914 = !DILocalVariable(name: "arg", arg: 1, scope: !2910, file: !227, line: 949, type: !42)
!2915 = !DILocalVariable(name: "argsize", arg: 2, scope: !2910, file: !227, line: 949, type: !84)
!2916 = !DILocation(line: 949, column: 27, scope: !2910)
!2917 = !DILocation(line: 949, column: 39, scope: !2910)
!2918 = !DILocation(line: 937, column: 21, scope: !2887, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 951, column: 10, scope: !2910)
!2920 = !DILocation(line: 937, column: 36, scope: !2887, inlinedAt: !2919)
!2921 = !DILocation(line: 937, column: 48, scope: !2887, inlinedAt: !2919)
!2922 = !DILocation(line: 939, column: 10, scope: !2887, inlinedAt: !2919)
!2923 = !DILocation(line: 951, column: 3, scope: !2910)
!2924 = distinct !DISubprogram(name: "quotearg_n_style", scope: !227, file: !227, line: 955, type: !2925, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!22, !31, !55, !42}
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2924, file: !227, line: 955, type: !31)
!2929 = !DILocalVariable(name: "s", arg: 2, scope: !2924, file: !227, line: 955, type: !55)
!2930 = !DILocalVariable(name: "arg", arg: 3, scope: !2924, file: !227, line: 955, type: !42)
!2931 = !DILocalVariable(name: "o", scope: !2924, file: !227, line: 957, type: !1693)
!2932 = !DILocation(line: 955, column: 23, scope: !2924)
!2933 = !DILocation(line: 955, column: 45, scope: !2924)
!2934 = !DILocation(line: 955, column: 60, scope: !2924)
!2935 = !DILocation(line: 957, column: 3, scope: !2924)
!2936 = !DILocation(line: 957, column: 32, scope: !2924)
!2937 = !DILocalVariable(name: "style", arg: 1, scope: !2938, file: !227, line: 193, type: !55)
!2938 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !227, file: !227, line: 193, type: !2939, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!234, !55}
!2941 = !{!2937, !2942}
!2942 = !DILocalVariable(name: "o", scope: !2938, file: !227, line: 195, type: !234)
!2943 = !DILocation(line: 193, column: 48, scope: !2938, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 957, column: 36, scope: !2924)
!2945 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !2944)
!2946 = !{!2947}
!2947 = distinct !{!2947, !2948, !"quoting_options_from_style: argument 0"}
!2948 = distinct !{!2948, !"quoting_options_from_style"}
!2949 = !DILocation(line: 196, column: 13, scope: !2950, inlinedAt: !2944)
!2950 = distinct !DILexicalBlock(scope: !2938, file: !227, line: 196, column: 7)
!2951 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !2944)
!2952 = !DILocation(line: 197, column: 5, scope: !2950, inlinedAt: !2944)
!2953 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !2944)
!2954 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !2944)
!2955 = !DILocation(line: 958, column: 10, scope: !2924)
!2956 = !DILocation(line: 959, column: 1, scope: !2924)
!2957 = !DILocation(line: 958, column: 3, scope: !2924)
!2958 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !227, file: !227, line: 962, type: !2959, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!22, !31, !55, !42, !84}
!2961 = !{!2962, !2963, !2964, !2965, !2966}
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2958, file: !227, line: 962, type: !31)
!2963 = !DILocalVariable(name: "s", arg: 2, scope: !2958, file: !227, line: 962, type: !55)
!2964 = !DILocalVariable(name: "arg", arg: 3, scope: !2958, file: !227, line: 963, type: !42)
!2965 = !DILocalVariable(name: "argsize", arg: 4, scope: !2958, file: !227, line: 963, type: !84)
!2966 = !DILocalVariable(name: "o", scope: !2958, file: !227, line: 965, type: !1693)
!2967 = !DILocation(line: 962, column: 27, scope: !2958)
!2968 = !DILocation(line: 962, column: 49, scope: !2958)
!2969 = !DILocation(line: 963, column: 35, scope: !2958)
!2970 = !DILocation(line: 963, column: 47, scope: !2958)
!2971 = !DILocation(line: 965, column: 3, scope: !2958)
!2972 = !DILocation(line: 965, column: 32, scope: !2958)
!2973 = !DILocation(line: 193, column: 48, scope: !2938, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 965, column: 36, scope: !2958)
!2975 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !2974)
!2976 = !{!2977}
!2977 = distinct !{!2977, !2978, !"quoting_options_from_style: argument 0"}
!2978 = distinct !{!2978, !"quoting_options_from_style"}
!2979 = !DILocation(line: 196, column: 13, scope: !2950, inlinedAt: !2974)
!2980 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !2974)
!2981 = !DILocation(line: 197, column: 5, scope: !2950, inlinedAt: !2974)
!2982 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !2974)
!2983 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !2974)
!2984 = !DILocation(line: 966, column: 10, scope: !2958)
!2985 = !DILocation(line: 967, column: 1, scope: !2958)
!2986 = !DILocation(line: 966, column: 3, scope: !2958)
!2987 = distinct !DISubprogram(name: "quotearg_style", scope: !227, file: !227, line: 970, type: !2988, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!22, !55, !42}
!2990 = !{!2991, !2992}
!2991 = !DILocalVariable(name: "s", arg: 1, scope: !2987, file: !227, line: 970, type: !55)
!2992 = !DILocalVariable(name: "arg", arg: 2, scope: !2987, file: !227, line: 970, type: !42)
!2993 = !DILocation(line: 970, column: 36, scope: !2987)
!2994 = !DILocation(line: 970, column: 51, scope: !2987)
!2995 = !DILocation(line: 955, column: 23, scope: !2924, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 972, column: 10, scope: !2987)
!2997 = !DILocation(line: 955, column: 45, scope: !2924, inlinedAt: !2996)
!2998 = !DILocation(line: 955, column: 60, scope: !2924, inlinedAt: !2996)
!2999 = !DILocation(line: 957, column: 3, scope: !2924, inlinedAt: !2996)
!3000 = !DILocation(line: 957, column: 32, scope: !2924, inlinedAt: !2996)
!3001 = !DILocation(line: 193, column: 48, scope: !2938, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 957, column: 36, scope: !2924, inlinedAt: !2996)
!3003 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !3002)
!3004 = !{!3005}
!3005 = distinct !{!3005, !3006, !"quoting_options_from_style: argument 0"}
!3006 = distinct !{!3006, !"quoting_options_from_style"}
!3007 = !DILocation(line: 196, column: 13, scope: !2950, inlinedAt: !3002)
!3008 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !3002)
!3009 = !DILocation(line: 197, column: 5, scope: !2950, inlinedAt: !3002)
!3010 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !3002)
!3011 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !3002)
!3012 = !DILocation(line: 958, column: 10, scope: !2924, inlinedAt: !2996)
!3013 = !DILocation(line: 959, column: 1, scope: !2924, inlinedAt: !2996)
!3014 = !DILocation(line: 972, column: 3, scope: !2987)
!3015 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !227, file: !227, line: 976, type: !3016, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!22, !55, !42, !84}
!3018 = !{!3019, !3020, !3021}
!3019 = !DILocalVariable(name: "s", arg: 1, scope: !3015, file: !227, line: 976, type: !55)
!3020 = !DILocalVariable(name: "arg", arg: 2, scope: !3015, file: !227, line: 976, type: !42)
!3021 = !DILocalVariable(name: "argsize", arg: 3, scope: !3015, file: !227, line: 976, type: !84)
!3022 = !DILocation(line: 976, column: 40, scope: !3015)
!3023 = !DILocation(line: 976, column: 55, scope: !3015)
!3024 = !DILocation(line: 976, column: 67, scope: !3015)
!3025 = !DILocation(line: 962, column: 27, scope: !2958, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 978, column: 10, scope: !3015)
!3027 = !DILocation(line: 962, column: 49, scope: !2958, inlinedAt: !3026)
!3028 = !DILocation(line: 963, column: 35, scope: !2958, inlinedAt: !3026)
!3029 = !DILocation(line: 963, column: 47, scope: !2958, inlinedAt: !3026)
!3030 = !DILocation(line: 965, column: 3, scope: !2958, inlinedAt: !3026)
!3031 = !DILocation(line: 965, column: 32, scope: !2958, inlinedAt: !3026)
!3032 = !DILocation(line: 193, column: 48, scope: !2938, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 965, column: 36, scope: !2958, inlinedAt: !3026)
!3034 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !3033)
!3035 = !{!3036}
!3036 = distinct !{!3036, !3037, !"quoting_options_from_style: argument 0"}
!3037 = distinct !{!3037, !"quoting_options_from_style"}
!3038 = !DILocation(line: 196, column: 13, scope: !2950, inlinedAt: !3033)
!3039 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !3033)
!3040 = !DILocation(line: 197, column: 5, scope: !2950, inlinedAt: !3033)
!3041 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !3033)
!3042 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !3033)
!3043 = !DILocation(line: 966, column: 10, scope: !2958, inlinedAt: !3026)
!3044 = !DILocation(line: 967, column: 1, scope: !2958, inlinedAt: !3026)
!3045 = !DILocation(line: 978, column: 3, scope: !3015)
!3046 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !227, file: !227, line: 982, type: !3047, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!22, !42, !84, !23}
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DILocalVariable(name: "arg", arg: 1, scope: !3046, file: !227, line: 982, type: !42)
!3051 = !DILocalVariable(name: "argsize", arg: 2, scope: !3046, file: !227, line: 982, type: !84)
!3052 = !DILocalVariable(name: "ch", arg: 3, scope: !3046, file: !227, line: 982, type: !23)
!3053 = !DILocalVariable(name: "options", scope: !3046, file: !227, line: 984, type: !234)
!3054 = !DILocation(line: 982, column: 32, scope: !3046)
!3055 = !DILocation(line: 982, column: 44, scope: !3046)
!3056 = !DILocation(line: 982, column: 58, scope: !3046)
!3057 = !DILocation(line: 984, column: 3, scope: !3046)
!3058 = !DILocation(line: 985, column: 13, scope: !3046)
!3059 = !{i64 0, i64 4, !964, i64 4, i64 4, !858, i64 8, i64 32, !964, i64 40, i64 8, !744, i64 48, i64 8, !744}
!3060 = !DILocation(line: 984, column: 26, scope: !3046)
!3061 = !DILocation(line: 152, column: 43, scope: !1714, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 986, column: 3, scope: !3046)
!3063 = !DILocation(line: 152, column: 51, scope: !1714, inlinedAt: !3062)
!3064 = !DILocation(line: 152, column: 58, scope: !1714, inlinedAt: !3062)
!3065 = !DILocation(line: 154, column: 17, scope: !1714, inlinedAt: !3062)
!3066 = !DILocation(line: 156, column: 62, scope: !1714, inlinedAt: !3062)
!3067 = !DILocation(line: 156, column: 57, scope: !1714, inlinedAt: !3062)
!3068 = !DILocation(line: 155, column: 17, scope: !1714, inlinedAt: !3062)
!3069 = !DILocation(line: 157, column: 15, scope: !1714, inlinedAt: !3062)
!3070 = !DILocation(line: 157, column: 7, scope: !1714, inlinedAt: !3062)
!3071 = !DILocation(line: 158, column: 12, scope: !1714, inlinedAt: !3062)
!3072 = !DILocation(line: 158, column: 15, scope: !1714, inlinedAt: !3062)
!3073 = !DILocation(line: 158, column: 25, scope: !1714, inlinedAt: !3062)
!3074 = !DILocation(line: 158, column: 7, scope: !1714, inlinedAt: !3062)
!3075 = !DILocation(line: 159, column: 18, scope: !1714, inlinedAt: !3062)
!3076 = !DILocation(line: 159, column: 23, scope: !1714, inlinedAt: !3062)
!3077 = !DILocation(line: 159, column: 6, scope: !1714, inlinedAt: !3062)
!3078 = !DILocation(line: 987, column: 10, scope: !3046)
!3079 = !DILocation(line: 988, column: 1, scope: !3046)
!3080 = !DILocation(line: 987, column: 3, scope: !3046)
!3081 = distinct !DISubprogram(name: "quotearg_char", scope: !227, file: !227, line: 991, type: !3082, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!22, !42, !23}
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "arg", arg: 1, scope: !3081, file: !227, line: 991, type: !42)
!3086 = !DILocalVariable(name: "ch", arg: 2, scope: !3081, file: !227, line: 991, type: !23)
!3087 = !DILocation(line: 991, column: 28, scope: !3081)
!3088 = !DILocation(line: 991, column: 38, scope: !3081)
!3089 = !DILocation(line: 982, column: 32, scope: !3046, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 993, column: 10, scope: !3081)
!3091 = !DILocation(line: 982, column: 44, scope: !3046, inlinedAt: !3090)
!3092 = !DILocation(line: 982, column: 58, scope: !3046, inlinedAt: !3090)
!3093 = !DILocation(line: 984, column: 3, scope: !3046, inlinedAt: !3090)
!3094 = !DILocation(line: 985, column: 13, scope: !3046, inlinedAt: !3090)
!3095 = !DILocation(line: 984, column: 26, scope: !3046, inlinedAt: !3090)
!3096 = !DILocation(line: 152, column: 43, scope: !1714, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 986, column: 3, scope: !3046, inlinedAt: !3090)
!3098 = !DILocation(line: 152, column: 51, scope: !1714, inlinedAt: !3097)
!3099 = !DILocation(line: 152, column: 58, scope: !1714, inlinedAt: !3097)
!3100 = !DILocation(line: 154, column: 17, scope: !1714, inlinedAt: !3097)
!3101 = !DILocation(line: 156, column: 62, scope: !1714, inlinedAt: !3097)
!3102 = !DILocation(line: 156, column: 57, scope: !1714, inlinedAt: !3097)
!3103 = !DILocation(line: 155, column: 17, scope: !1714, inlinedAt: !3097)
!3104 = !DILocation(line: 157, column: 15, scope: !1714, inlinedAt: !3097)
!3105 = !DILocation(line: 157, column: 7, scope: !1714, inlinedAt: !3097)
!3106 = !DILocation(line: 158, column: 12, scope: !1714, inlinedAt: !3097)
!3107 = !DILocation(line: 158, column: 15, scope: !1714, inlinedAt: !3097)
!3108 = !DILocation(line: 158, column: 25, scope: !1714, inlinedAt: !3097)
!3109 = !DILocation(line: 158, column: 7, scope: !1714, inlinedAt: !3097)
!3110 = !DILocation(line: 159, column: 18, scope: !1714, inlinedAt: !3097)
!3111 = !DILocation(line: 159, column: 23, scope: !1714, inlinedAt: !3097)
!3112 = !DILocation(line: 159, column: 6, scope: !1714, inlinedAt: !3097)
!3113 = !DILocation(line: 987, column: 10, scope: !3046, inlinedAt: !3090)
!3114 = !DILocation(line: 988, column: 1, scope: !3046, inlinedAt: !3090)
!3115 = !DILocation(line: 993, column: 3, scope: !3081)
!3116 = distinct !DISubprogram(name: "quotearg_colon", scope: !227, file: !227, line: 997, type: !2900, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3117)
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3116, file: !227, line: 997, type: !42)
!3119 = !DILocation(line: 997, column: 29, scope: !3116)
!3120 = !DILocation(line: 991, column: 28, scope: !3081, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 999, column: 10, scope: !3116)
!3122 = !DILocation(line: 991, column: 38, scope: !3081, inlinedAt: !3121)
!3123 = !DILocation(line: 982, column: 32, scope: !3046, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 993, column: 10, scope: !3081, inlinedAt: !3121)
!3125 = !DILocation(line: 982, column: 44, scope: !3046, inlinedAt: !3124)
!3126 = !DILocation(line: 982, column: 58, scope: !3046, inlinedAt: !3124)
!3127 = !DILocation(line: 984, column: 3, scope: !3046, inlinedAt: !3124)
!3128 = !DILocation(line: 985, column: 13, scope: !3046, inlinedAt: !3124)
!3129 = !DILocation(line: 984, column: 26, scope: !3046, inlinedAt: !3124)
!3130 = !DILocation(line: 152, column: 43, scope: !1714, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 986, column: 3, scope: !3046, inlinedAt: !3124)
!3132 = !DILocation(line: 152, column: 51, scope: !1714, inlinedAt: !3131)
!3133 = !DILocation(line: 152, column: 58, scope: !1714, inlinedAt: !3131)
!3134 = !DILocation(line: 154, column: 17, scope: !1714, inlinedAt: !3131)
!3135 = !DILocation(line: 156, column: 57, scope: !1714, inlinedAt: !3131)
!3136 = !DILocation(line: 155, column: 17, scope: !1714, inlinedAt: !3131)
!3137 = !DILocation(line: 157, column: 7, scope: !1714, inlinedAt: !3131)
!3138 = !DILocation(line: 158, column: 12, scope: !1714, inlinedAt: !3131)
!3139 = !DILocation(line: 159, column: 6, scope: !1714, inlinedAt: !3131)
!3140 = !DILocation(line: 987, column: 10, scope: !3046, inlinedAt: !3124)
!3141 = !DILocation(line: 988, column: 1, scope: !3046, inlinedAt: !3124)
!3142 = !DILocation(line: 999, column: 3, scope: !3116)
!3143 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !227, file: !227, line: 1003, type: !2911, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3144)
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "arg", arg: 1, scope: !3143, file: !227, line: 1003, type: !42)
!3146 = !DILocalVariable(name: "argsize", arg: 2, scope: !3143, file: !227, line: 1003, type: !84)
!3147 = !DILocation(line: 1003, column: 33, scope: !3143)
!3148 = !DILocation(line: 1003, column: 45, scope: !3143)
!3149 = !DILocation(line: 982, column: 32, scope: !3046, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1005, column: 10, scope: !3143)
!3151 = !DILocation(line: 982, column: 44, scope: !3046, inlinedAt: !3150)
!3152 = !DILocation(line: 982, column: 58, scope: !3046, inlinedAt: !3150)
!3153 = !DILocation(line: 984, column: 3, scope: !3046, inlinedAt: !3150)
!3154 = !DILocation(line: 985, column: 13, scope: !3046, inlinedAt: !3150)
!3155 = !DILocation(line: 984, column: 26, scope: !3046, inlinedAt: !3150)
!3156 = !DILocation(line: 152, column: 43, scope: !1714, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 986, column: 3, scope: !3046, inlinedAt: !3150)
!3158 = !DILocation(line: 152, column: 51, scope: !1714, inlinedAt: !3157)
!3159 = !DILocation(line: 152, column: 58, scope: !1714, inlinedAt: !3157)
!3160 = !DILocation(line: 154, column: 17, scope: !1714, inlinedAt: !3157)
!3161 = !DILocation(line: 156, column: 57, scope: !1714, inlinedAt: !3157)
!3162 = !DILocation(line: 155, column: 17, scope: !1714, inlinedAt: !3157)
!3163 = !DILocation(line: 157, column: 7, scope: !1714, inlinedAt: !3157)
!3164 = !DILocation(line: 158, column: 12, scope: !1714, inlinedAt: !3157)
!3165 = !DILocation(line: 159, column: 6, scope: !1714, inlinedAt: !3157)
!3166 = !DILocation(line: 987, column: 10, scope: !3046, inlinedAt: !3150)
!3167 = !DILocation(line: 988, column: 1, scope: !3046, inlinedAt: !3150)
!3168 = !DILocation(line: 1005, column: 3, scope: !3143)
!3169 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !227, file: !227, line: 1009, type: !2925, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3170)
!3170 = !{!3171, !3172, !3173, !3174}
!3171 = !DILocalVariable(name: "n", arg: 1, scope: !3169, file: !227, line: 1009, type: !31)
!3172 = !DILocalVariable(name: "s", arg: 2, scope: !3169, file: !227, line: 1009, type: !55)
!3173 = !DILocalVariable(name: "arg", arg: 3, scope: !3169, file: !227, line: 1009, type: !42)
!3174 = !DILocalVariable(name: "options", scope: !3169, file: !227, line: 1011, type: !234)
!3175 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 1012, column: 13, scope: !3169)
!3177 = !DILocation(line: 1009, column: 29, scope: !3169)
!3178 = !DILocation(line: 1009, column: 51, scope: !3169)
!3179 = !DILocation(line: 1009, column: 66, scope: !3169)
!3180 = !DILocation(line: 1011, column: 3, scope: !3169)
!3181 = !DILocation(line: 1012, column: 13, scope: !3169)
!3182 = !DILocation(line: 193, column: 48, scope: !2938, inlinedAt: !3176)
!3183 = !{!3184}
!3184 = distinct !{!3184, !3185, !"quoting_options_from_style: argument 0"}
!3185 = distinct !{!3185, !"quoting_options_from_style"}
!3186 = !DILocation(line: 196, column: 13, scope: !2950, inlinedAt: !3176)
!3187 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !3176)
!3188 = !DILocation(line: 197, column: 5, scope: !2950, inlinedAt: !3176)
!3189 = !DILocation(line: 1011, column: 26, scope: !3169)
!3190 = !DILocation(line: 152, column: 43, scope: !1714, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 1013, column: 3, scope: !3169)
!3192 = !DILocation(line: 152, column: 51, scope: !1714, inlinedAt: !3191)
!3193 = !DILocation(line: 152, column: 58, scope: !1714, inlinedAt: !3191)
!3194 = !DILocation(line: 154, column: 17, scope: !1714, inlinedAt: !3191)
!3195 = !DILocation(line: 156, column: 57, scope: !1714, inlinedAt: !3191)
!3196 = !DILocation(line: 155, column: 17, scope: !1714, inlinedAt: !3191)
!3197 = !DILocation(line: 157, column: 7, scope: !1714, inlinedAt: !3191)
!3198 = !DILocation(line: 158, column: 12, scope: !1714, inlinedAt: !3191)
!3199 = !DILocation(line: 159, column: 6, scope: !1714, inlinedAt: !3191)
!3200 = !DILocation(line: 1014, column: 10, scope: !3169)
!3201 = !DILocation(line: 1015, column: 1, scope: !3169)
!3202 = !DILocation(line: 1014, column: 3, scope: !3169)
!3203 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !227, file: !227, line: 1018, type: !3204, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!22, !31, !42, !42, !42}
!3206 = !{!3207, !3208, !3209, !3210}
!3207 = !DILocalVariable(name: "n", arg: 1, scope: !3203, file: !227, line: 1018, type: !31)
!3208 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3203, file: !227, line: 1018, type: !42)
!3209 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3203, file: !227, line: 1019, type: !42)
!3210 = !DILocalVariable(name: "arg", arg: 4, scope: !3203, file: !227, line: 1019, type: !42)
!3211 = !DILocation(line: 1018, column: 24, scope: !3203)
!3212 = !DILocation(line: 1018, column: 39, scope: !3203)
!3213 = !DILocation(line: 1019, column: 32, scope: !3203)
!3214 = !DILocation(line: 1019, column: 57, scope: !3203)
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !227, line: 1026, type: !31)
!3216 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !227, file: !227, line: 1026, type: !3217, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!22, !31, !42, !42, !42, !84}
!3219 = !{!3215, !3220, !3221, !3222, !3223, !3224}
!3220 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3216, file: !227, line: 1026, type: !42)
!3221 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3216, file: !227, line: 1027, type: !42)
!3222 = !DILocalVariable(name: "arg", arg: 4, scope: !3216, file: !227, line: 1028, type: !42)
!3223 = !DILocalVariable(name: "argsize", arg: 5, scope: !3216, file: !227, line: 1028, type: !84)
!3224 = !DILocalVariable(name: "o", scope: !3216, file: !227, line: 1030, type: !234)
!3225 = !DILocation(line: 1026, column: 28, scope: !3216, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 1021, column: 10, scope: !3203)
!3227 = !DILocation(line: 1026, column: 43, scope: !3216, inlinedAt: !3226)
!3228 = !DILocation(line: 1027, column: 36, scope: !3216, inlinedAt: !3226)
!3229 = !DILocation(line: 1028, column: 36, scope: !3216, inlinedAt: !3226)
!3230 = !DILocation(line: 1028, column: 48, scope: !3216, inlinedAt: !3226)
!3231 = !DILocation(line: 1030, column: 3, scope: !3216, inlinedAt: !3226)
!3232 = !DILocation(line: 1030, column: 30, scope: !3216, inlinedAt: !3226)
!3233 = !DILocation(line: 1030, column: 26, scope: !3216, inlinedAt: !3226)
!3234 = !DILocation(line: 179, column: 45, scope: !1762, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 1031, column: 3, scope: !3216, inlinedAt: !3226)
!3236 = !DILocation(line: 180, column: 33, scope: !1762, inlinedAt: !3235)
!3237 = !DILocation(line: 180, column: 57, scope: !1762, inlinedAt: !3235)
!3238 = !DILocation(line: 184, column: 6, scope: !1762, inlinedAt: !3235)
!3239 = !DILocation(line: 184, column: 12, scope: !1762, inlinedAt: !3235)
!3240 = !DILocation(line: 185, column: 8, scope: !1778, inlinedAt: !3235)
!3241 = !DILocation(line: 185, column: 23, scope: !1778, inlinedAt: !3235)
!3242 = !DILocation(line: 185, column: 19, scope: !1778, inlinedAt: !3235)
!3243 = !DILocation(line: 186, column: 5, scope: !1778, inlinedAt: !3235)
!3244 = !DILocation(line: 187, column: 6, scope: !1762, inlinedAt: !3235)
!3245 = !DILocation(line: 187, column: 17, scope: !1762, inlinedAt: !3235)
!3246 = !DILocation(line: 188, column: 6, scope: !1762, inlinedAt: !3235)
!3247 = !DILocation(line: 188, column: 18, scope: !1762, inlinedAt: !3235)
!3248 = !DILocation(line: 1032, column: 10, scope: !3216, inlinedAt: !3226)
!3249 = !DILocation(line: 1033, column: 1, scope: !3216, inlinedAt: !3226)
!3250 = !DILocation(line: 1021, column: 3, scope: !3203)
!3251 = !DILocation(line: 1026, column: 28, scope: !3216)
!3252 = !DILocation(line: 1026, column: 43, scope: !3216)
!3253 = !DILocation(line: 1027, column: 36, scope: !3216)
!3254 = !DILocation(line: 1028, column: 36, scope: !3216)
!3255 = !DILocation(line: 1028, column: 48, scope: !3216)
!3256 = !DILocation(line: 1030, column: 3, scope: !3216)
!3257 = !DILocation(line: 1030, column: 30, scope: !3216)
!3258 = !DILocation(line: 1030, column: 26, scope: !3216)
!3259 = !DILocation(line: 179, column: 45, scope: !1762, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1031, column: 3, scope: !3216)
!3261 = !DILocation(line: 180, column: 33, scope: !1762, inlinedAt: !3260)
!3262 = !DILocation(line: 180, column: 57, scope: !1762, inlinedAt: !3260)
!3263 = !DILocation(line: 184, column: 6, scope: !1762, inlinedAt: !3260)
!3264 = !DILocation(line: 184, column: 12, scope: !1762, inlinedAt: !3260)
!3265 = !DILocation(line: 185, column: 8, scope: !1778, inlinedAt: !3260)
!3266 = !DILocation(line: 185, column: 23, scope: !1778, inlinedAt: !3260)
!3267 = !DILocation(line: 185, column: 19, scope: !1778, inlinedAt: !3260)
!3268 = !DILocation(line: 186, column: 5, scope: !1778, inlinedAt: !3260)
!3269 = !DILocation(line: 187, column: 6, scope: !1762, inlinedAt: !3260)
!3270 = !DILocation(line: 187, column: 17, scope: !1762, inlinedAt: !3260)
!3271 = !DILocation(line: 188, column: 6, scope: !1762, inlinedAt: !3260)
!3272 = !DILocation(line: 188, column: 18, scope: !1762, inlinedAt: !3260)
!3273 = !DILocation(line: 1032, column: 10, scope: !3216)
!3274 = !DILocation(line: 1033, column: 1, scope: !3216)
!3275 = !DILocation(line: 1032, column: 3, scope: !3216)
!3276 = distinct !DISubprogram(name: "quotearg_custom", scope: !227, file: !227, line: 1036, type: !3277, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!22, !42, !42, !42}
!3279 = !{!3280, !3281, !3282}
!3280 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3276, file: !227, line: 1036, type: !42)
!3281 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3276, file: !227, line: 1036, type: !42)
!3282 = !DILocalVariable(name: "arg", arg: 3, scope: !3276, file: !227, line: 1037, type: !42)
!3283 = !DILocation(line: 1036, column: 30, scope: !3276)
!3284 = !DILocation(line: 1036, column: 54, scope: !3276)
!3285 = !DILocation(line: 1037, column: 30, scope: !3276)
!3286 = !DILocation(line: 1018, column: 24, scope: !3203, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1039, column: 10, scope: !3276)
!3288 = !DILocation(line: 1018, column: 39, scope: !3203, inlinedAt: !3287)
!3289 = !DILocation(line: 1019, column: 32, scope: !3203, inlinedAt: !3287)
!3290 = !DILocation(line: 1019, column: 57, scope: !3203, inlinedAt: !3287)
!3291 = !DILocation(line: 1026, column: 28, scope: !3216, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1021, column: 10, scope: !3203, inlinedAt: !3287)
!3293 = !DILocation(line: 1026, column: 43, scope: !3216, inlinedAt: !3292)
!3294 = !DILocation(line: 1027, column: 36, scope: !3216, inlinedAt: !3292)
!3295 = !DILocation(line: 1028, column: 36, scope: !3216, inlinedAt: !3292)
!3296 = !DILocation(line: 1028, column: 48, scope: !3216, inlinedAt: !3292)
!3297 = !DILocation(line: 1030, column: 3, scope: !3216, inlinedAt: !3292)
!3298 = !DILocation(line: 1030, column: 30, scope: !3216, inlinedAt: !3292)
!3299 = !DILocation(line: 1030, column: 26, scope: !3216, inlinedAt: !3292)
!3300 = !DILocation(line: 179, column: 45, scope: !1762, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 1031, column: 3, scope: !3216, inlinedAt: !3292)
!3302 = !DILocation(line: 180, column: 33, scope: !1762, inlinedAt: !3301)
!3303 = !DILocation(line: 180, column: 57, scope: !1762, inlinedAt: !3301)
!3304 = !DILocation(line: 184, column: 6, scope: !1762, inlinedAt: !3301)
!3305 = !DILocation(line: 184, column: 12, scope: !1762, inlinedAt: !3301)
!3306 = !DILocation(line: 185, column: 8, scope: !1778, inlinedAt: !3301)
!3307 = !DILocation(line: 185, column: 23, scope: !1778, inlinedAt: !3301)
!3308 = !DILocation(line: 185, column: 19, scope: !1778, inlinedAt: !3301)
!3309 = !DILocation(line: 186, column: 5, scope: !1778, inlinedAt: !3301)
!3310 = !DILocation(line: 187, column: 6, scope: !1762, inlinedAt: !3301)
!3311 = !DILocation(line: 187, column: 17, scope: !1762, inlinedAt: !3301)
!3312 = !DILocation(line: 188, column: 6, scope: !1762, inlinedAt: !3301)
!3313 = !DILocation(line: 188, column: 18, scope: !1762, inlinedAt: !3301)
!3314 = !DILocation(line: 1032, column: 10, scope: !3216, inlinedAt: !3292)
!3315 = !DILocation(line: 1033, column: 1, scope: !3216, inlinedAt: !3292)
!3316 = !DILocation(line: 1039, column: 3, scope: !3276)
!3317 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !227, file: !227, line: 1043, type: !3318, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!22, !42, !42, !42, !84}
!3320 = !{!3321, !3322, !3323, !3324}
!3321 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3317, file: !227, line: 1043, type: !42)
!3322 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3317, file: !227, line: 1043, type: !42)
!3323 = !DILocalVariable(name: "arg", arg: 3, scope: !3317, file: !227, line: 1044, type: !42)
!3324 = !DILocalVariable(name: "argsize", arg: 4, scope: !3317, file: !227, line: 1044, type: !84)
!3325 = !DILocation(line: 1043, column: 34, scope: !3317)
!3326 = !DILocation(line: 1043, column: 58, scope: !3317)
!3327 = !DILocation(line: 1044, column: 34, scope: !3317)
!3328 = !DILocation(line: 1044, column: 46, scope: !3317)
!3329 = !DILocation(line: 1026, column: 28, scope: !3216, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 1046, column: 10, scope: !3317)
!3331 = !DILocation(line: 1026, column: 43, scope: !3216, inlinedAt: !3330)
!3332 = !DILocation(line: 1027, column: 36, scope: !3216, inlinedAt: !3330)
!3333 = !DILocation(line: 1028, column: 36, scope: !3216, inlinedAt: !3330)
!3334 = !DILocation(line: 1028, column: 48, scope: !3216, inlinedAt: !3330)
!3335 = !DILocation(line: 1030, column: 3, scope: !3216, inlinedAt: !3330)
!3336 = !DILocation(line: 1030, column: 30, scope: !3216, inlinedAt: !3330)
!3337 = !DILocation(line: 1030, column: 26, scope: !3216, inlinedAt: !3330)
!3338 = !DILocation(line: 179, column: 45, scope: !1762, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1031, column: 3, scope: !3216, inlinedAt: !3330)
!3340 = !DILocation(line: 180, column: 33, scope: !1762, inlinedAt: !3339)
!3341 = !DILocation(line: 180, column: 57, scope: !1762, inlinedAt: !3339)
!3342 = !DILocation(line: 184, column: 6, scope: !1762, inlinedAt: !3339)
!3343 = !DILocation(line: 184, column: 12, scope: !1762, inlinedAt: !3339)
!3344 = !DILocation(line: 185, column: 8, scope: !1778, inlinedAt: !3339)
!3345 = !DILocation(line: 185, column: 23, scope: !1778, inlinedAt: !3339)
!3346 = !DILocation(line: 185, column: 19, scope: !1778, inlinedAt: !3339)
!3347 = !DILocation(line: 186, column: 5, scope: !1778, inlinedAt: !3339)
!3348 = !DILocation(line: 187, column: 6, scope: !1762, inlinedAt: !3339)
!3349 = !DILocation(line: 187, column: 17, scope: !1762, inlinedAt: !3339)
!3350 = !DILocation(line: 188, column: 6, scope: !1762, inlinedAt: !3339)
!3351 = !DILocation(line: 188, column: 18, scope: !1762, inlinedAt: !3339)
!3352 = !DILocation(line: 1032, column: 10, scope: !3216, inlinedAt: !3330)
!3353 = !DILocation(line: 1033, column: 1, scope: !3216, inlinedAt: !3330)
!3354 = !DILocation(line: 1046, column: 3, scope: !3317)
!3355 = distinct !DISubprogram(name: "quote_n_mem", scope: !227, file: !227, line: 1061, type: !3356, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!42, !31, !42, !84}
!3358 = !{!3359, !3360, !3361}
!3359 = !DILocalVariable(name: "n", arg: 1, scope: !3355, file: !227, line: 1061, type: !31)
!3360 = !DILocalVariable(name: "arg", arg: 2, scope: !3355, file: !227, line: 1061, type: !42)
!3361 = !DILocalVariable(name: "argsize", arg: 3, scope: !3355, file: !227, line: 1061, type: !84)
!3362 = !DILocation(line: 1061, column: 18, scope: !3355)
!3363 = !DILocation(line: 1061, column: 33, scope: !3355)
!3364 = !DILocation(line: 1061, column: 45, scope: !3355)
!3365 = !DILocation(line: 1063, column: 10, scope: !3355)
!3366 = !DILocation(line: 1063, column: 3, scope: !3355)
!3367 = distinct !DISubprogram(name: "quote_mem", scope: !227, file: !227, line: 1067, type: !3368, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!42, !42, !84}
!3370 = !{!3371, !3372}
!3371 = !DILocalVariable(name: "arg", arg: 1, scope: !3367, file: !227, line: 1067, type: !42)
!3372 = !DILocalVariable(name: "argsize", arg: 2, scope: !3367, file: !227, line: 1067, type: !84)
!3373 = !DILocation(line: 1067, column: 24, scope: !3367)
!3374 = !DILocation(line: 1067, column: 36, scope: !3367)
!3375 = !DILocation(line: 1061, column: 18, scope: !3355, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 1069, column: 10, scope: !3367)
!3377 = !DILocation(line: 1061, column: 33, scope: !3355, inlinedAt: !3376)
!3378 = !DILocation(line: 1061, column: 45, scope: !3355, inlinedAt: !3376)
!3379 = !DILocation(line: 1063, column: 10, scope: !3355, inlinedAt: !3376)
!3380 = !DILocation(line: 1069, column: 3, scope: !3367)
!3381 = distinct !DISubprogram(name: "quote_n", scope: !227, file: !227, line: 1073, type: !3382, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!42, !31, !42}
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !227, line: 1073, type: !31)
!3386 = !DILocalVariable(name: "arg", arg: 2, scope: !3381, file: !227, line: 1073, type: !42)
!3387 = !DILocation(line: 1073, column: 14, scope: !3381)
!3388 = !DILocation(line: 1073, column: 29, scope: !3381)
!3389 = !DILocation(line: 1061, column: 18, scope: !3355, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 1075, column: 10, scope: !3381)
!3391 = !DILocation(line: 1061, column: 33, scope: !3355, inlinedAt: !3390)
!3392 = !DILocation(line: 1061, column: 45, scope: !3355, inlinedAt: !3390)
!3393 = !DILocation(line: 1063, column: 10, scope: !3355, inlinedAt: !3390)
!3394 = !DILocation(line: 1075, column: 3, scope: !3381)
!3395 = distinct !DISubprogram(name: "quote", scope: !227, file: !227, line: 1079, type: !3396, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!42, !42}
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "arg", arg: 1, scope: !3395, file: !227, line: 1079, type: !42)
!3400 = !DILocation(line: 1079, column: 20, scope: !3395)
!3401 = !DILocation(line: 1073, column: 14, scope: !3381, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 1081, column: 10, scope: !3395)
!3403 = !DILocation(line: 1073, column: 29, scope: !3381, inlinedAt: !3402)
!3404 = !DILocation(line: 1061, column: 18, scope: !3355, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1075, column: 10, scope: !3381, inlinedAt: !3402)
!3406 = !DILocation(line: 1061, column: 33, scope: !3355, inlinedAt: !3405)
!3407 = !DILocation(line: 1061, column: 45, scope: !3355, inlinedAt: !3405)
!3408 = !DILocation(line: 1063, column: 10, scope: !3355, inlinedAt: !3405)
!3409 = !DILocation(line: 1081, column: 3, scope: !3395)
!3410 = distinct !DISubprogram(name: "version_etc_arn", scope: !282, file: !282, line: 62, type: !3411, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3448)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3413, !42, !42, !42, !3447, !84}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3415, file: !106, line: 51, baseType: !31, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3415, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3415, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3415, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3415, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3415, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3415, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3415, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3415, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3415, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3415, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3415, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3415, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3415, file: !106, line: 70, baseType: !3431, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3415, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3415, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3415, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3415, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3415, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3415, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3415, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3415, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3415, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3415, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3415, file: !106, line: 93, baseType: !3431, size: 64, offset: 1344)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3415, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3415, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3415, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3415, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454}
!3449 = !DILocalVariable(name: "stream", arg: 1, scope: !3410, file: !282, line: 62, type: !3413)
!3450 = !DILocalVariable(name: "command_name", arg: 2, scope: !3410, file: !282, line: 63, type: !42)
!3451 = !DILocalVariable(name: "package", arg: 3, scope: !3410, file: !282, line: 63, type: !42)
!3452 = !DILocalVariable(name: "version", arg: 4, scope: !3410, file: !282, line: 64, type: !42)
!3453 = !DILocalVariable(name: "authors", arg: 5, scope: !3410, file: !282, line: 65, type: !3447)
!3454 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3410, file: !282, line: 65, type: !84)
!3455 = !DILocation(line: 62, column: 24, scope: !3410)
!3456 = !DILocation(line: 63, column: 30, scope: !3410)
!3457 = !DILocation(line: 63, column: 56, scope: !3410)
!3458 = !DILocation(line: 64, column: 30, scope: !3410)
!3459 = !DILocation(line: 65, column: 39, scope: !3410)
!3460 = !DILocation(line: 65, column: 55, scope: !3410)
!3461 = !DILocation(line: 67, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3410, file: !282, line: 67, column: 7)
!3463 = !DILocation(line: 67, column: 7, scope: !3410)
!3464 = !DILocation(line: 68, column: 5, scope: !3462)
!3465 = !DILocation(line: 70, column: 5, scope: !3462)
!3466 = !DILocation(line: 84, column: 3, scope: !3410)
!3467 = !DILocation(line: 86, column: 3, scope: !3410)
!3468 = !DILocation(line: 95, column: 3, scope: !3410)
!3469 = !DILocation(line: 99, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3410, file: !282, line: 96, column: 5)
!3471 = !DILocation(line: 102, column: 7, scope: !3470)
!3472 = !DILocation(line: 103, column: 7, scope: !3470)
!3473 = !DILocation(line: 106, column: 7, scope: !3470)
!3474 = !DILocation(line: 107, column: 7, scope: !3470)
!3475 = !DILocation(line: 110, column: 7, scope: !3470)
!3476 = !DILocation(line: 112, column: 7, scope: !3470)
!3477 = !DILocation(line: 117, column: 7, scope: !3470)
!3478 = !DILocation(line: 119, column: 7, scope: !3470)
!3479 = !DILocation(line: 124, column: 7, scope: !3470)
!3480 = !DILocation(line: 126, column: 7, scope: !3470)
!3481 = !DILocation(line: 131, column: 7, scope: !3470)
!3482 = !DILocation(line: 134, column: 7, scope: !3470)
!3483 = !DILocation(line: 139, column: 7, scope: !3470)
!3484 = !DILocation(line: 142, column: 7, scope: !3470)
!3485 = !DILocation(line: 147, column: 7, scope: !3470)
!3486 = !DILocation(line: 151, column: 7, scope: !3470)
!3487 = !DILocation(line: 156, column: 7, scope: !3470)
!3488 = !DILocation(line: 160, column: 7, scope: !3470)
!3489 = !DILocation(line: 167, column: 7, scope: !3470)
!3490 = !DILocation(line: 171, column: 7, scope: !3470)
!3491 = !DILocation(line: 173, column: 1, scope: !3410)
!3492 = distinct !DISubprogram(name: "version_etc_ar", scope: !282, file: !282, line: 180, type: !3493, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{null, !3413, !42, !42, !42, !3447}
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501}
!3496 = !DILocalVariable(name: "stream", arg: 1, scope: !3492, file: !282, line: 180, type: !3413)
!3497 = !DILocalVariable(name: "command_name", arg: 2, scope: !3492, file: !282, line: 181, type: !42)
!3498 = !DILocalVariable(name: "package", arg: 3, scope: !3492, file: !282, line: 181, type: !42)
!3499 = !DILocalVariable(name: "version", arg: 4, scope: !3492, file: !282, line: 182, type: !42)
!3500 = !DILocalVariable(name: "authors", arg: 5, scope: !3492, file: !282, line: 182, type: !3447)
!3501 = !DILocalVariable(name: "n_authors", scope: !3492, file: !282, line: 184, type: !84)
!3502 = !DILocation(line: 180, column: 23, scope: !3492)
!3503 = !DILocation(line: 181, column: 29, scope: !3492)
!3504 = !DILocation(line: 181, column: 55, scope: !3492)
!3505 = !DILocation(line: 182, column: 29, scope: !3492)
!3506 = !DILocation(line: 182, column: 59, scope: !3492)
!3507 = !DILocation(line: 184, column: 10, scope: !3492)
!3508 = !DILocation(line: 186, column: 8, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3492, file: !282, line: 186, column: 3)
!3510 = !DILocation(line: 0, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3509, file: !282, line: 186, column: 3)
!3512 = !DILocation(line: 186, column: 23, scope: !3511)
!3513 = !DILocation(line: 186, column: 3, scope: !3509)
!3514 = !DILocation(line: 186, column: 52, scope: !3511)
!3515 = distinct !{!3515, !3513, !3516}
!3516 = !DILocation(line: 187, column: 5, scope: !3509)
!3517 = !DILocation(line: 188, column: 3, scope: !3492)
!3518 = !DILocation(line: 189, column: 1, scope: !3492)
!3519 = distinct !DISubprogram(name: "version_etc_va", scope: !282, file: !282, line: 196, type: !3520, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3529)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{null, !3413, !42, !42, !42, !3522}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !279, line: 189, size: 192, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3523, file: !279, line: 189, baseType: !7, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3523, file: !279, line: 189, baseType: !7, size: 32, offset: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3523, file: !279, line: 189, baseType: !24, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3523, file: !279, line: 189, baseType: !24, size: 64, offset: 128)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3530 = !DILocalVariable(name: "stream", arg: 1, scope: !3519, file: !282, line: 196, type: !3413)
!3531 = !DILocalVariable(name: "command_name", arg: 2, scope: !3519, file: !282, line: 197, type: !42)
!3532 = !DILocalVariable(name: "package", arg: 3, scope: !3519, file: !282, line: 197, type: !42)
!3533 = !DILocalVariable(name: "version", arg: 4, scope: !3519, file: !282, line: 198, type: !42)
!3534 = !DILocalVariable(name: "authors", arg: 5, scope: !3519, file: !282, line: 198, type: !3522)
!3535 = !DILocalVariable(name: "n_authors", scope: !3519, file: !282, line: 200, type: !84)
!3536 = !DILocalVariable(name: "authtab", scope: !3519, file: !282, line: 201, type: !3537)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 640, elements: !230)
!3538 = !DILocation(line: 196, column: 23, scope: !3519)
!3539 = !DILocation(line: 197, column: 29, scope: !3519)
!3540 = !DILocation(line: 197, column: 55, scope: !3519)
!3541 = !DILocation(line: 198, column: 29, scope: !3519)
!3542 = !DILocation(line: 198, column: 46, scope: !3519)
!3543 = !DILocation(line: 201, column: 3, scope: !3519)
!3544 = !DILocation(line: 201, column: 15, scope: !3519)
!3545 = !DILocation(line: 200, column: 10, scope: !3519)
!3546 = !DILocation(line: 205, column: 35, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !282, line: 203, column: 3)
!3548 = distinct !DILexicalBlock(scope: !3519, file: !282, line: 203, column: 3)
!3549 = !DILocation(line: 205, column: 14, scope: !3547)
!3550 = !DILocation(line: 205, column: 33, scope: !3547)
!3551 = !DILocation(line: 205, column: 67, scope: !3547)
!3552 = !DILocation(line: 203, column: 3, scope: !3548)
!3553 = !DILocation(line: 0, scope: !3547)
!3554 = !DILocation(line: 208, column: 3, scope: !3519)
!3555 = !DILocation(line: 210, column: 1, scope: !3519)
!3556 = distinct !DISubprogram(name: "version_etc", scope: !282, file: !282, line: 227, type: !3557, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !3413, !42, !42, !42, null}
!3559 = !{!3560, !3561, !3562, !3563, !3564}
!3560 = !DILocalVariable(name: "stream", arg: 1, scope: !3556, file: !282, line: 227, type: !3413)
!3561 = !DILocalVariable(name: "command_name", arg: 2, scope: !3556, file: !282, line: 228, type: !42)
!3562 = !DILocalVariable(name: "package", arg: 3, scope: !3556, file: !282, line: 228, type: !42)
!3563 = !DILocalVariable(name: "version", arg: 4, scope: !3556, file: !282, line: 229, type: !42)
!3564 = !DILocalVariable(name: "authors", scope: !3556, file: !282, line: 231, type: !3565)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1565, line: 52, baseType: !3566)
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3567, line: 48, baseType: !3568)
!3567 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !279, line: 231, baseType: !3569)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3523, size: 192, elements: !135)
!3570 = !DILocation(line: 227, column: 20, scope: !3556)
!3571 = !DILocation(line: 228, column: 26, scope: !3556)
!3572 = !DILocation(line: 228, column: 52, scope: !3556)
!3573 = !DILocation(line: 229, column: 26, scope: !3556)
!3574 = !DILocation(line: 231, column: 3, scope: !3556)
!3575 = !DILocation(line: 231, column: 11, scope: !3556)
!3576 = !DILocation(line: 233, column: 3, scope: !3556)
!3577 = !DILocation(line: 234, column: 3, scope: !3556)
!3578 = !DILocation(line: 235, column: 3, scope: !3556)
!3579 = !DILocation(line: 236, column: 1, scope: !3556)
!3580 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !282, file: !282, line: 239, type: !752, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !189)
!3581 = !DILocation(line: 245, column: 3, scope: !3580)
!3582 = !DILocation(line: 251, column: 3, scope: !3580)
!3583 = !DILocation(line: 256, column: 3, scope: !3580)
!3584 = !DILocation(line: 258, column: 1, scope: !3580)
!3585 = distinct !DISubprogram(name: "xnmalloc", scope: !79, file: !79, line: 99, type: !3586, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!24, !84, !84}
!3588 = !{!3589, !3590}
!3589 = !DILocalVariable(name: "n", arg: 1, scope: !3585, file: !79, line: 99, type: !84)
!3590 = !DILocalVariable(name: "s", arg: 2, scope: !3585, file: !79, line: 99, type: !84)
!3591 = !DILocation(line: 99, column: 18, scope: !3585)
!3592 = !DILocation(line: 99, column: 28, scope: !3585)
!3593 = !DILocation(line: 101, column: 7, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3585, file: !79, line: 101, column: 7)
!3595 = !DILocation(line: 101, column: 7, scope: !3585)
!3596 = !DILocation(line: 102, column: 5, scope: !3594)
!3597 = !DILocation(line: 103, column: 21, scope: !3585)
!3598 = !DILocalVariable(name: "n", arg: 1, scope: !3599, file: !3600, line: 39, type: !84)
!3599 = distinct !DISubprogram(name: "xmalloc", scope: !3600, file: !3600, line: 39, type: !3601, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3603)
!3600 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!24, !84}
!3603 = !{!3598, !3604}
!3604 = !DILocalVariable(name: "p", scope: !3599, file: !3600, line: 41, type: !24)
!3605 = !DILocation(line: 39, column: 17, scope: !3599, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 103, column: 10, scope: !3585)
!3607 = !DILocation(line: 41, column: 13, scope: !3599, inlinedAt: !3606)
!3608 = !DILocation(line: 41, column: 9, scope: !3599, inlinedAt: !3606)
!3609 = !DILocation(line: 42, column: 8, scope: !3610, inlinedAt: !3606)
!3610 = distinct !DILexicalBlock(scope: !3599, file: !3600, line: 42, column: 7)
!3611 = !DILocation(line: 42, column: 15, scope: !3610, inlinedAt: !3606)
!3612 = !DILocation(line: 42, column: 10, scope: !3610, inlinedAt: !3606)
!3613 = !DILocation(line: 43, column: 5, scope: !3610, inlinedAt: !3606)
!3614 = !DILocation(line: 103, column: 3, scope: !3585)
!3615 = !DILocation(line: 39, column: 17, scope: !3599)
!3616 = !DILocation(line: 41, column: 13, scope: !3599)
!3617 = !DILocation(line: 41, column: 9, scope: !3599)
!3618 = !DILocation(line: 42, column: 8, scope: !3610)
!3619 = !DILocation(line: 42, column: 15, scope: !3610)
!3620 = !DILocation(line: 42, column: 10, scope: !3610)
!3621 = !DILocation(line: 43, column: 5, scope: !3610)
!3622 = !DILocation(line: 44, column: 3, scope: !3599)
!3623 = distinct !DISubprogram(name: "xnrealloc", scope: !79, file: !79, line: 112, type: !3624, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!24, !24, !84, !84}
!3626 = !{!3627, !3628, !3629}
!3627 = !DILocalVariable(name: "p", arg: 1, scope: !3623, file: !79, line: 112, type: !24)
!3628 = !DILocalVariable(name: "n", arg: 2, scope: !3623, file: !79, line: 112, type: !84)
!3629 = !DILocalVariable(name: "s", arg: 3, scope: !3623, file: !79, line: 112, type: !84)
!3630 = !DILocation(line: 112, column: 18, scope: !3623)
!3631 = !DILocation(line: 112, column: 28, scope: !3623)
!3632 = !DILocation(line: 112, column: 38, scope: !3623)
!3633 = !DILocation(line: 114, column: 7, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3623, file: !79, line: 114, column: 7)
!3635 = !DILocation(line: 114, column: 7, scope: !3623)
!3636 = !DILocation(line: 115, column: 5, scope: !3634)
!3637 = !DILocation(line: 116, column: 25, scope: !3623)
!3638 = !DILocalVariable(name: "p", arg: 1, scope: !3639, file: !3600, line: 51, type: !24)
!3639 = distinct !DISubprogram(name: "xrealloc", scope: !3600, file: !3600, line: 51, type: !3640, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!24, !24, !84}
!3642 = !{!3638, !3643}
!3643 = !DILocalVariable(name: "n", arg: 2, scope: !3639, file: !3600, line: 51, type: !84)
!3644 = !DILocation(line: 51, column: 17, scope: !3639, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 116, column: 10, scope: !3623)
!3646 = !DILocation(line: 51, column: 27, scope: !3639, inlinedAt: !3645)
!3647 = !DILocation(line: 53, column: 8, scope: !3648, inlinedAt: !3645)
!3648 = distinct !DILexicalBlock(scope: !3639, file: !3600, line: 53, column: 7)
!3649 = !DILocation(line: 53, column: 13, scope: !3648, inlinedAt: !3645)
!3650 = !DILocation(line: 53, column: 10, scope: !3648, inlinedAt: !3645)
!3651 = !DILocation(line: 57, column: 7, scope: !3652, inlinedAt: !3645)
!3652 = distinct !DILexicalBlock(scope: !3648, file: !3600, line: 54, column: 5)
!3653 = !DILocation(line: 58, column: 7, scope: !3652, inlinedAt: !3645)
!3654 = !DILocation(line: 61, column: 7, scope: !3639, inlinedAt: !3645)
!3655 = !DILocation(line: 62, column: 8, scope: !3656, inlinedAt: !3645)
!3656 = distinct !DILexicalBlock(scope: !3639, file: !3600, line: 62, column: 7)
!3657 = !DILocation(line: 62, column: 13, scope: !3656, inlinedAt: !3645)
!3658 = !DILocation(line: 62, column: 10, scope: !3656, inlinedAt: !3645)
!3659 = !DILocation(line: 63, column: 5, scope: !3656, inlinedAt: !3645)
!3660 = !DILocation(line: 0, scope: !3639, inlinedAt: !3645)
!3661 = !DILocation(line: 116, column: 3, scope: !3623)
!3662 = !DILocation(line: 51, column: 17, scope: !3639)
!3663 = !DILocation(line: 51, column: 27, scope: !3639)
!3664 = !DILocation(line: 53, column: 8, scope: !3648)
!3665 = !DILocation(line: 53, column: 13, scope: !3648)
!3666 = !DILocation(line: 53, column: 10, scope: !3648)
!3667 = !DILocation(line: 57, column: 7, scope: !3652)
!3668 = !DILocation(line: 58, column: 7, scope: !3652)
!3669 = !DILocation(line: 61, column: 7, scope: !3639)
!3670 = !DILocation(line: 62, column: 8, scope: !3656)
!3671 = !DILocation(line: 62, column: 13, scope: !3656)
!3672 = !DILocation(line: 62, column: 10, scope: !3656)
!3673 = !DILocation(line: 63, column: 5, scope: !3656)
!3674 = !DILocation(line: 0, scope: !3639)
!3675 = !DILocation(line: 65, column: 1, scope: !3639)
!3676 = !DILocation(line: 174, column: 19, scope: !290)
!3677 = !DILocation(line: 174, column: 30, scope: !290)
!3678 = !DILocation(line: 174, column: 41, scope: !290)
!3679 = !DILocation(line: 176, column: 14, scope: !290)
!3680 = !DILocation(line: 176, column: 10, scope: !290)
!3681 = !DILocation(line: 178, column: 9, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !290, file: !79, line: 178, column: 7)
!3683 = !DILocation(line: 178, column: 7, scope: !290)
!3684 = !DILocation(line: 180, column: 13, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !79, line: 180, column: 11)
!3686 = distinct !DILexicalBlock(scope: !3682, file: !79, line: 179, column: 5)
!3687 = !DILocation(line: 180, column: 11, scope: !3686)
!3688 = !DILocation(line: 188, column: 30, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3685, file: !79, line: 181, column: 9)
!3690 = !DILocation(line: 189, column: 16, scope: !3689)
!3691 = !DILocation(line: 189, column: 13, scope: !3689)
!3692 = !DILocation(line: 190, column: 9, scope: !3689)
!3693 = !DILocation(line: 0, scope: !3689)
!3694 = !DILocation(line: 191, column: 11, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3686, file: !79, line: 191, column: 11)
!3696 = !DILocation(line: 191, column: 11, scope: !3686)
!3697 = !DILocation(line: 206, column: 7, scope: !290)
!3698 = !DILocation(line: 207, column: 25, scope: !290)
!3699 = !DILocation(line: 51, column: 17, scope: !3639, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 207, column: 10, scope: !290)
!3701 = !DILocation(line: 51, column: 27, scope: !3639, inlinedAt: !3700)
!3702 = !DILocation(line: 53, column: 10, scope: !3648, inlinedAt: !3700)
!3703 = !DILocation(line: 192, column: 9, scope: !3695)
!3704 = !DILocation(line: 200, column: 69, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !79, line: 200, column: 11)
!3706 = distinct !DILexicalBlock(scope: !3682, file: !79, line: 195, column: 5)
!3707 = !DILocation(line: 201, column: 11, scope: !3705)
!3708 = !DILocation(line: 200, column: 11, scope: !3706)
!3709 = !DILocation(line: 202, column: 9, scope: !3705)
!3710 = !DILocation(line: 203, column: 14, scope: !3706)
!3711 = !DILocation(line: 203, column: 18, scope: !3706)
!3712 = !DILocation(line: 203, column: 9, scope: !3706)
!3713 = !DILocation(line: 53, column: 8, scope: !3648, inlinedAt: !3700)
!3714 = !DILocation(line: 57, column: 7, scope: !3652, inlinedAt: !3700)
!3715 = !DILocation(line: 58, column: 7, scope: !3652, inlinedAt: !3700)
!3716 = !DILocation(line: 61, column: 7, scope: !3639, inlinedAt: !3700)
!3717 = !DILocation(line: 62, column: 8, scope: !3656, inlinedAt: !3700)
!3718 = !DILocation(line: 62, column: 13, scope: !3656, inlinedAt: !3700)
!3719 = !DILocation(line: 62, column: 10, scope: !3656, inlinedAt: !3700)
!3720 = !DILocation(line: 63, column: 5, scope: !3656, inlinedAt: !3700)
!3721 = !DILocation(line: 0, scope: !3639, inlinedAt: !3700)
!3722 = !DILocation(line: 207, column: 3, scope: !290)
!3723 = distinct !DISubprogram(name: "xcharalloc", scope: !79, file: !79, line: 216, type: !2696, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3724)
!3724 = !{!3725}
!3725 = !DILocalVariable(name: "n", arg: 1, scope: !3723, file: !79, line: 216, type: !84)
!3726 = !DILocation(line: 216, column: 20, scope: !3723)
!3727 = !DILocation(line: 39, column: 17, scope: !3599, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 218, column: 10, scope: !3723)
!3729 = !DILocation(line: 41, column: 13, scope: !3599, inlinedAt: !3728)
!3730 = !DILocation(line: 41, column: 9, scope: !3599, inlinedAt: !3728)
!3731 = !DILocation(line: 42, column: 8, scope: !3610, inlinedAt: !3728)
!3732 = !DILocation(line: 42, column: 15, scope: !3610, inlinedAt: !3728)
!3733 = !DILocation(line: 42, column: 10, scope: !3610, inlinedAt: !3728)
!3734 = !DILocation(line: 43, column: 5, scope: !3610, inlinedAt: !3728)
!3735 = !DILocation(line: 218, column: 3, scope: !3723)
!3736 = distinct !DISubprogram(name: "x2realloc", scope: !3600, file: !3600, line: 74, type: !3737, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!24, !24, !83}
!3739 = !{!3740, !3741}
!3740 = !DILocalVariable(name: "p", arg: 1, scope: !3736, file: !3600, line: 74, type: !24)
!3741 = !DILocalVariable(name: "pn", arg: 2, scope: !3736, file: !3600, line: 74, type: !83)
!3742 = !DILocation(line: 74, column: 18, scope: !3736)
!3743 = !DILocation(line: 74, column: 29, scope: !3736)
!3744 = !DILocation(line: 174, column: 19, scope: !290, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 76, column: 10, scope: !3736)
!3746 = !DILocation(line: 174, column: 30, scope: !290, inlinedAt: !3745)
!3747 = !DILocation(line: 174, column: 41, scope: !290, inlinedAt: !3745)
!3748 = !DILocation(line: 176, column: 14, scope: !290, inlinedAt: !3745)
!3749 = !DILocation(line: 176, column: 10, scope: !290, inlinedAt: !3745)
!3750 = !DILocation(line: 178, column: 9, scope: !3682, inlinedAt: !3745)
!3751 = !DILocation(line: 178, column: 7, scope: !290, inlinedAt: !3745)
!3752 = !DILocation(line: 180, column: 13, scope: !3685, inlinedAt: !3745)
!3753 = !DILocation(line: 180, column: 11, scope: !3686, inlinedAt: !3745)
!3754 = !DILocation(line: 191, column: 11, scope: !3695, inlinedAt: !3745)
!3755 = !DILocation(line: 191, column: 11, scope: !3686, inlinedAt: !3745)
!3756 = !DILocation(line: 206, column: 7, scope: !290, inlinedAt: !3745)
!3757 = !DILocation(line: 51, column: 17, scope: !3639, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 207, column: 10, scope: !290, inlinedAt: !3745)
!3759 = !DILocation(line: 51, column: 27, scope: !3639, inlinedAt: !3758)
!3760 = !DILocation(line: 53, column: 10, scope: !3648, inlinedAt: !3758)
!3761 = !DILocation(line: 192, column: 9, scope: !3695, inlinedAt: !3745)
!3762 = !DILocation(line: 201, column: 11, scope: !3705, inlinedAt: !3745)
!3763 = !DILocation(line: 200, column: 11, scope: !3706, inlinedAt: !3745)
!3764 = !DILocation(line: 202, column: 9, scope: !3705, inlinedAt: !3745)
!3765 = !DILocation(line: 203, column: 14, scope: !3706, inlinedAt: !3745)
!3766 = !DILocation(line: 203, column: 18, scope: !3706, inlinedAt: !3745)
!3767 = !DILocation(line: 203, column: 9, scope: !3706, inlinedAt: !3745)
!3768 = !DILocation(line: 53, column: 8, scope: !3648, inlinedAt: !3758)
!3769 = !DILocation(line: 57, column: 7, scope: !3652, inlinedAt: !3758)
!3770 = !DILocation(line: 58, column: 7, scope: !3652, inlinedAt: !3758)
!3771 = !DILocation(line: 61, column: 7, scope: !3639, inlinedAt: !3758)
!3772 = !DILocation(line: 62, column: 8, scope: !3656, inlinedAt: !3758)
!3773 = !DILocation(line: 62, column: 13, scope: !3656, inlinedAt: !3758)
!3774 = !DILocation(line: 62, column: 10, scope: !3656, inlinedAt: !3758)
!3775 = !DILocation(line: 63, column: 5, scope: !3656, inlinedAt: !3758)
!3776 = !DILocation(line: 0, scope: !3639, inlinedAt: !3758)
!3777 = !DILocation(line: 76, column: 3, scope: !3736)
!3778 = distinct !DISubprogram(name: "xzalloc", scope: !3600, file: !3600, line: 84, type: !3601, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3779)
!3779 = !{!3780}
!3780 = !DILocalVariable(name: "s", arg: 1, scope: !3778, file: !3600, line: 84, type: !84)
!3781 = !DILocation(line: 84, column: 17, scope: !3778)
!3782 = !DILocation(line: 39, column: 17, scope: !3599, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 86, column: 18, scope: !3778)
!3784 = !DILocation(line: 41, column: 13, scope: !3599, inlinedAt: !3783)
!3785 = !DILocation(line: 41, column: 9, scope: !3599, inlinedAt: !3783)
!3786 = !DILocation(line: 42, column: 8, scope: !3610, inlinedAt: !3783)
!3787 = !DILocation(line: 42, column: 15, scope: !3610, inlinedAt: !3783)
!3788 = !DILocation(line: 42, column: 10, scope: !3610, inlinedAt: !3783)
!3789 = !DILocation(line: 43, column: 5, scope: !3610, inlinedAt: !3783)
!3790 = !DILocation(line: 86, column: 10, scope: !3778)
!3791 = !DILocation(line: 86, column: 3, scope: !3778)
!3792 = distinct !DISubprogram(name: "xcalloc", scope: !3600, file: !3600, line: 93, type: !3586, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3793)
!3793 = !{!3794, !3795, !3796}
!3794 = !DILocalVariable(name: "n", arg: 1, scope: !3792, file: !3600, line: 93, type: !84)
!3795 = !DILocalVariable(name: "s", arg: 2, scope: !3792, file: !3600, line: 93, type: !84)
!3796 = !DILocalVariable(name: "p", scope: !3792, file: !3600, line: 95, type: !24)
!3797 = !DILocation(line: 93, column: 17, scope: !3792)
!3798 = !DILocation(line: 93, column: 27, scope: !3792)
!3799 = !DILocation(line: 100, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3792, file: !3600, line: 100, column: 7)
!3801 = !DILocation(line: 101, column: 7, scope: !3800)
!3802 = !DILocation(line: 101, column: 18, scope: !3800)
!3803 = !DILocation(line: 95, column: 9, scope: !3792)
!3804 = !DILocation(line: 101, column: 16, scope: !3800)
!3805 = !DILocation(line: 100, column: 7, scope: !3792)
!3806 = !DILocation(line: 102, column: 5, scope: !3800)
!3807 = !DILocation(line: 103, column: 3, scope: !3792)
!3808 = distinct !DISubprogram(name: "xmemdup", scope: !3600, file: !3600, line: 111, type: !3809, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3813)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!24, !3811, !84}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "p", arg: 1, scope: !3808, file: !3600, line: 111, type: !3811)
!3815 = !DILocalVariable(name: "s", arg: 2, scope: !3808, file: !3600, line: 111, type: !84)
!3816 = !DILocation(line: 111, column: 22, scope: !3808)
!3817 = !DILocation(line: 111, column: 32, scope: !3808)
!3818 = !DILocation(line: 39, column: 17, scope: !3599, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 113, column: 18, scope: !3808)
!3820 = !DILocation(line: 41, column: 13, scope: !3599, inlinedAt: !3819)
!3821 = !DILocation(line: 41, column: 9, scope: !3599, inlinedAt: !3819)
!3822 = !DILocation(line: 42, column: 8, scope: !3610, inlinedAt: !3819)
!3823 = !DILocation(line: 42, column: 15, scope: !3610, inlinedAt: !3819)
!3824 = !DILocation(line: 42, column: 10, scope: !3610, inlinedAt: !3819)
!3825 = !DILocation(line: 43, column: 5, scope: !3610, inlinedAt: !3819)
!3826 = !DILocation(line: 113, column: 10, scope: !3808)
!3827 = !DILocation(line: 113, column: 3, scope: !3808)
!3828 = distinct !DISubprogram(name: "xstrdup", scope: !3600, file: !3600, line: 119, type: !2900, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3829)
!3829 = !{!3830}
!3830 = !DILocalVariable(name: "string", arg: 1, scope: !3828, file: !3600, line: 119, type: !42)
!3831 = !DILocation(line: 119, column: 22, scope: !3828)
!3832 = !DILocation(line: 121, column: 27, scope: !3828)
!3833 = !DILocation(line: 121, column: 43, scope: !3828)
!3834 = !DILocation(line: 111, column: 22, scope: !3808, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 121, column: 10, scope: !3828)
!3836 = !DILocation(line: 111, column: 32, scope: !3808, inlinedAt: !3835)
!3837 = !DILocation(line: 39, column: 17, scope: !3599, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 113, column: 18, scope: !3808, inlinedAt: !3835)
!3839 = !DILocation(line: 41, column: 13, scope: !3599, inlinedAt: !3838)
!3840 = !DILocation(line: 41, column: 9, scope: !3599, inlinedAt: !3838)
!3841 = !DILocation(line: 42, column: 8, scope: !3610, inlinedAt: !3838)
!3842 = !DILocation(line: 42, column: 15, scope: !3610, inlinedAt: !3838)
!3843 = !DILocation(line: 42, column: 10, scope: !3610, inlinedAt: !3838)
!3844 = !DILocation(line: 43, column: 5, scope: !3610, inlinedAt: !3838)
!3845 = !DILocation(line: 113, column: 10, scope: !3808, inlinedAt: !3835)
!3846 = !DILocation(line: 121, column: 3, scope: !3828)
!3847 = distinct !DISubprogram(name: "xalloc_die", scope: !3848, file: !3848, line: 32, type: !752, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !297, retainedNodes: !189)
!3848 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3849 = !DILocation(line: 34, column: 10, scope: !3847)
!3850 = !DILocation(line: 34, column: 33, scope: !3847)
!3851 = !DILocation(line: 34, column: 3, scope: !3847)
!3852 = !DILocation(line: 40, column: 3, scope: !3847)
!3853 = distinct !DISubprogram(name: "xstrndup", scope: !3854, file: !3854, line: 30, type: !2911, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !299, retainedNodes: !3855)
!3854 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3855 = !{!3856, !3857, !3858}
!3856 = !DILocalVariable(name: "string", arg: 1, scope: !3853, file: !3854, line: 30, type: !42)
!3857 = !DILocalVariable(name: "n", arg: 2, scope: !3853, file: !3854, line: 30, type: !84)
!3858 = !DILocalVariable(name: "s", scope: !3853, file: !3854, line: 32, type: !22)
!3859 = !DILocation(line: 30, column: 23, scope: !3853)
!3860 = !DILocation(line: 30, column: 38, scope: !3853)
!3861 = !DILocation(line: 32, column: 13, scope: !3853)
!3862 = !DILocation(line: 32, column: 9, scope: !3853)
!3863 = !DILocation(line: 33, column: 9, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3853, file: !3854, line: 33, column: 7)
!3865 = !DILocation(line: 33, column: 7, scope: !3853)
!3866 = !DILocation(line: 34, column: 5, scope: !3864)
!3867 = !DILocation(line: 35, column: 3, scope: !3853)
!3868 = distinct !DISubprogram(name: "rpl_calloc", scope: !3869, file: !3869, line: 42, type: !3586, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !301, retainedNodes: !3870)
!3869 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3870 = !{!3871, !3872, !3873, !3874}
!3871 = !DILocalVariable(name: "n", arg: 1, scope: !3868, file: !3869, line: 42, type: !84)
!3872 = !DILocalVariable(name: "s", arg: 2, scope: !3868, file: !3869, line: 42, type: !84)
!3873 = !DILocalVariable(name: "result", scope: !3868, file: !3869, line: 44, type: !24)
!3874 = !DILocalVariable(name: "bytes", scope: !3875, file: !3869, line: 56, type: !84)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3869, line: 53, column: 5)
!3876 = distinct !DILexicalBlock(scope: !3868, file: !3869, line: 47, column: 7)
!3877 = !DILocation(line: 42, column: 20, scope: !3868)
!3878 = !DILocation(line: 42, column: 30, scope: !3868)
!3879 = !DILocation(line: 47, column: 9, scope: !3876)
!3880 = !DILocation(line: 47, column: 19, scope: !3876)
!3881 = !DILocation(line: 47, column: 14, scope: !3876)
!3882 = !DILocation(line: 56, column: 24, scope: !3875)
!3883 = !DILocation(line: 56, column: 14, scope: !3875)
!3884 = !DILocation(line: 57, column: 17, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3875, file: !3869, line: 57, column: 11)
!3886 = !DILocation(line: 57, column: 21, scope: !3885)
!3887 = !DILocation(line: 57, column: 11, scope: !3875)
!3888 = !DILocation(line: 59, column: 11, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3885, file: !3869, line: 58, column: 9)
!3890 = !DILocation(line: 59, column: 17, scope: !3889)
!3891 = !DILocation(line: 65, column: 12, scope: !3868)
!3892 = !DILocation(line: 44, column: 9, scope: !3868)
!3893 = !DILocation(line: 72, column: 3, scope: !3868)
!3894 = !DILocation(line: 0, scope: !3889)
!3895 = !DILocation(line: 73, column: 1, scope: !3868)
!3896 = distinct !DISubprogram(name: "rpl_fclose", scope: !3897, file: !3897, line: 58, type: !3898, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !303, retainedNodes: !3934)
!3897 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!31, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3902, file: !106, line: 51, baseType: !31, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3902, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3902, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3902, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3902, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3902, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3902, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3902, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3902, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3902, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3902, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3902, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3902, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3902, file: !106, line: 70, baseType: !3918, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3902, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3902, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3902, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3902, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3902, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3902, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3902, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3902, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3902, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3902, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3902, file: !106, line: 93, baseType: !3918, size: 64, offset: 1344)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3902, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3902, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3902, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3902, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!3934 = !{!3935, !3936, !3937, !3938}
!3935 = !DILocalVariable(name: "fp", arg: 1, scope: !3896, file: !3897, line: 58, type: !3900)
!3936 = !DILocalVariable(name: "saved_errno", scope: !3896, file: !3897, line: 60, type: !31)
!3937 = !DILocalVariable(name: "fd", scope: !3896, file: !3897, line: 61, type: !31)
!3938 = !DILocalVariable(name: "result", scope: !3896, file: !3897, line: 62, type: !31)
!3939 = !DILocation(line: 58, column: 19, scope: !3896)
!3940 = !DILocation(line: 60, column: 7, scope: !3896)
!3941 = !DILocation(line: 62, column: 7, scope: !3896)
!3942 = !DILocation(line: 65, column: 8, scope: !3896)
!3943 = !DILocation(line: 61, column: 7, scope: !3896)
!3944 = !DILocation(line: 66, column: 10, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3896, file: !3897, line: 66, column: 7)
!3946 = !DILocation(line: 66, column: 7, scope: !3896)
!3947 = !DILocation(line: 67, column: 12, scope: !3945)
!3948 = !DILocation(line: 67, column: 5, scope: !3945)
!3949 = !DILocation(line: 72, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3896, file: !3897, line: 72, column: 7)
!3951 = !DILocation(line: 72, column: 23, scope: !3950)
!3952 = !DILocation(line: 72, column: 33, scope: !3950)
!3953 = !DILocation(line: 72, column: 26, scope: !3950)
!3954 = !DILocation(line: 72, column: 59, scope: !3950)
!3955 = !DILocation(line: 73, column: 7, scope: !3950)
!3956 = !DILocation(line: 73, column: 10, scope: !3950)
!3957 = !DILocation(line: 72, column: 7, scope: !3896)
!3958 = !DILocation(line: 100, column: 12, scope: !3896)
!3959 = !DILocation(line: 105, column: 7, scope: !3896)
!3960 = !DILocation(line: 74, column: 19, scope: !3950)
!3961 = !DILocation(line: 105, column: 19, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3896, file: !3897, line: 105, column: 7)
!3963 = !DILocation(line: 107, column: 13, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3962, file: !3897, line: 106, column: 5)
!3965 = !DILocation(line: 109, column: 5, scope: !3964)
!3966 = !DILocation(line: 0, scope: !3896)
!3967 = !DILocation(line: 112, column: 1, scope: !3896)
!3968 = distinct !DISubprogram(name: "rpl_fflush", scope: !3969, file: !3969, line: 129, type: !3970, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4006)
!3969 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!31, !3972}
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3974)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3974, file: !106, line: 51, baseType: !31, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3974, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3974, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3974, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3974, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3974, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3974, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3974, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3974, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3974, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3974, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3974, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3974, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3974, file: !106, line: 70, baseType: !3990, size: 64, offset: 832)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3974, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3974, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3974, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3974, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3974, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3974, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3974, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3974, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3974, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3974, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3974, file: !106, line: 93, baseType: !3990, size: 64, offset: 1344)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3974, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3974, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3974, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3974, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "stream", arg: 1, scope: !3968, file: !3969, line: 129, type: !3972)
!4008 = !DILocation(line: 129, column: 19, scope: !3968)
!4009 = !DILocation(line: 150, column: 14, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3968, file: !3969, line: 150, column: 7)
!4011 = !DILocation(line: 150, column: 22, scope: !4010)
!4012 = !DILocation(line: 150, column: 27, scope: !4010)
!4013 = !DILocation(line: 150, column: 7, scope: !3968)
!4014 = !DILocation(line: 151, column: 12, scope: !4010)
!4015 = !DILocation(line: 151, column: 5, scope: !4010)
!4016 = !DILocalVariable(name: "fp", arg: 1, scope: !4017, file: !3969, line: 41, type: !3972)
!4017 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3969, file: !3969, line: 41, type: !4018, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !3972}
!4020 = !{!4016}
!4021 = !DILocation(line: 41, column: 48, scope: !4017, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 156, column: 3, scope: !3968)
!4023 = !DILocation(line: 43, column: 11, scope: !4024, inlinedAt: !4022)
!4024 = distinct !DILexicalBlock(scope: !4017, file: !3969, line: 43, column: 7)
!4025 = !DILocation(line: 43, column: 18, scope: !4024, inlinedAt: !4022)
!4026 = !DILocation(line: 43, column: 7, scope: !4017, inlinedAt: !4022)
!4027 = !DILocation(line: 45, column: 5, scope: !4024, inlinedAt: !4022)
!4028 = !DILocation(line: 158, column: 10, scope: !3968)
!4029 = !DILocation(line: 158, column: 3, scope: !3968)
!4030 = !DILocation(line: 0, scope: !3968)
!4031 = !DILocation(line: 232, column: 1, scope: !3968)
!4032 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4033, file: !4033, line: 28, type: !4034, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !307, retainedNodes: !4070)
!4033 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!31, !4036, !1564, !31}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !4038)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4038, file: !106, line: 51, baseType: !31, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4038, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4038, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4038, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4038, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4038, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4038, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4038, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4038, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4038, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4038, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4038, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4038, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4038, file: !106, line: 70, baseType: !4054, size: 64, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4038, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4038, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4038, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4038, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4038, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4038, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4038, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4038, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4038, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4038, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4038, file: !106, line: 93, baseType: !4054, size: 64, offset: 1344)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4038, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4038, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4038, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4038, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!4070 = !{!4071, !4072, !4073, !4074}
!4071 = !DILocalVariable(name: "fp", arg: 1, scope: !4032, file: !4033, line: 28, type: !4036)
!4072 = !DILocalVariable(name: "offset", arg: 2, scope: !4032, file: !4033, line: 28, type: !1564)
!4073 = !DILocalVariable(name: "whence", arg: 3, scope: !4032, file: !4033, line: 28, type: !31)
!4074 = !DILocalVariable(name: "pos", scope: !4075, file: !4033, line: 117, type: !1564)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !4033, line: 113, column: 5)
!4076 = distinct !DILexicalBlock(scope: !4032, file: !4033, line: 52, column: 7)
!4077 = !DILocation(line: 28, column: 15, scope: !4032)
!4078 = !DILocation(line: 28, column: 25, scope: !4032)
!4079 = !DILocation(line: 28, column: 37, scope: !4032)
!4080 = !DILocation(line: 52, column: 11, scope: !4076)
!4081 = !DILocation(line: 52, column: 31, scope: !4076)
!4082 = !DILocation(line: 52, column: 24, scope: !4076)
!4083 = !DILocation(line: 53, column: 7, scope: !4076)
!4084 = !DILocation(line: 53, column: 14, scope: !4076)
!4085 = !DILocation(line: 53, column: 35, scope: !4076)
!4086 = !{!960, !745, i64 32}
!4087 = !DILocation(line: 53, column: 28, scope: !4076)
!4088 = !DILocation(line: 54, column: 7, scope: !4076)
!4089 = !DILocation(line: 54, column: 14, scope: !4076)
!4090 = !{!960, !745, i64 72}
!4091 = !DILocation(line: 54, column: 28, scope: !4076)
!4092 = !DILocation(line: 52, column: 7, scope: !4032)
!4093 = !DILocation(line: 117, column: 26, scope: !4075)
!4094 = !DILocation(line: 117, column: 19, scope: !4075)
!4095 = !DILocation(line: 117, column: 13, scope: !4075)
!4096 = !DILocation(line: 118, column: 15, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4075, file: !4033, line: 118, column: 11)
!4098 = !DILocation(line: 118, column: 11, scope: !4075)
!4099 = !DILocation(line: 129, column: 11, scope: !4075)
!4100 = !DILocation(line: 129, column: 18, scope: !4075)
!4101 = !DILocation(line: 130, column: 11, scope: !4075)
!4102 = !DILocation(line: 130, column: 19, scope: !4075)
!4103 = !{!960, !926, i64 144}
!4104 = !DILocation(line: 161, column: 7, scope: !4075)
!4105 = !DILocation(line: 163, column: 10, scope: !4032)
!4106 = !DILocation(line: 163, column: 3, scope: !4032)
!4107 = !DILocation(line: 0, scope: !4032)
!4108 = !DILocation(line: 164, column: 1, scope: !4032)
!4109 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4110, file: !4110, line: 385, type: !4111, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !309, retainedNodes: !4125)
!4110 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!84, !4113, !42, !84, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1861, line: 6, baseType: !4116)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1863, line: 21, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1863, line: 13, size: 64, elements: !4118)
!4118 = !{!4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4117, file: !1863, line: 15, baseType: !31, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4117, file: !1863, line: 20, baseType: !4121, size: 32, offset: 32)
!4121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4117, file: !1863, line: 16, size: 32, elements: !4122)
!4122 = !{!4123, !4124}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4121, file: !1863, line: 18, baseType: !7, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4121, file: !1863, line: 19, baseType: !1872, size: 32)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4126 = !DILocalVariable(name: "pwc", arg: 1, scope: !4109, file: !4110, line: 385, type: !4113)
!4127 = !DILocalVariable(name: "s", arg: 2, scope: !4109, file: !4110, line: 385, type: !42)
!4128 = !DILocalVariable(name: "n", arg: 3, scope: !4109, file: !4110, line: 385, type: !84)
!4129 = !DILocalVariable(name: "ps", arg: 4, scope: !4109, file: !4110, line: 385, type: !4114)
!4130 = !DILocalVariable(name: "ret", scope: !4109, file: !4110, line: 387, type: !84)
!4131 = !DILocalVariable(name: "wc", scope: !4109, file: !4110, line: 388, type: !1877)
!4132 = !DILocalVariable(name: "uc", scope: !4133, file: !4110, line: 449, type: !34)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !4110, line: 448, column: 5)
!4134 = distinct !DILexicalBlock(scope: !4109, file: !4110, line: 447, column: 7)
!4135 = !DILocation(line: 385, column: 23, scope: !4109)
!4136 = !DILocation(line: 385, column: 40, scope: !4109)
!4137 = !DILocation(line: 385, column: 50, scope: !4109)
!4138 = !DILocation(line: 385, column: 64, scope: !4109)
!4139 = !DILocation(line: 388, column: 3, scope: !4109)
!4140 = !DILocation(line: 404, column: 9, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4109, file: !4110, line: 404, column: 7)
!4142 = !DILocation(line: 404, column: 7, scope: !4109)
!4143 = !DILocation(line: 439, column: 9, scope: !4109)
!4144 = !DILocation(line: 387, column: 10, scope: !4109)
!4145 = !DILocation(line: 447, column: 19, scope: !4134)
!4146 = !DILocation(line: 447, column: 31, scope: !4134)
!4147 = !DILocation(line: 447, column: 26, scope: !4134)
!4148 = !DILocation(line: 447, column: 41, scope: !4134)
!4149 = !DILocation(line: 447, column: 7, scope: !4109)
!4150 = !DILocation(line: 449, column: 26, scope: !4133)
!4151 = !DILocation(line: 449, column: 21, scope: !4133)
!4152 = !DILocation(line: 450, column: 14, scope: !4133)
!4153 = !DILocation(line: 450, column: 12, scope: !4133)
!4154 = !DILocation(line: 0, scope: !4133)
!4155 = !DILocation(line: 456, column: 1, scope: !4109)
!4156 = distinct !DISubprogram(name: "close_stream", scope: !4157, file: !4157, line: 56, type: !4158, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !312, retainedNodes: !4194)
!4157 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!31, !4160}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !4162)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4162, file: !106, line: 51, baseType: !31, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4162, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4162, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4162, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4162, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4162, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4162, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4162, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4162, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4162, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4162, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4162, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4162, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4162, file: !106, line: 70, baseType: !4178, size: 64, offset: 832)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4162, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4162, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4162, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4162, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4162, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4162, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4162, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4162, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4162, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4162, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4162, file: !106, line: 93, baseType: !4178, size: 64, offset: 1344)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4162, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4162, file: !106, line: 95, baseType: !84, size: 64, offset: 1472)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4162, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4162, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!4194 = !{!4195, !4196, !4198, !4199}
!4195 = !DILocalVariable(name: "stream", arg: 1, scope: !4156, file: !4157, line: 56, type: !4160)
!4196 = !DILocalVariable(name: "some_pending", scope: !4156, file: !4157, line: 58, type: !4197)
!4197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!4198 = !DILocalVariable(name: "prev_fail", scope: !4156, file: !4157, line: 59, type: !4197)
!4199 = !DILocalVariable(name: "fclose_fail", scope: !4156, file: !4157, line: 60, type: !4197)
!4200 = !DILocation(line: 56, column: 21, scope: !4156)
!4201 = !DILocation(line: 58, column: 30, scope: !4156)
!4202 = !DILocalVariable(name: "__stream", arg: 1, scope: !4203, file: !952, line: 135, type: !4160)
!4203 = distinct !DISubprogram(name: "ferror_unlocked", scope: !952, file: !952, line: 135, type: !4158, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !312, retainedNodes: !4204)
!4204 = !{!4202}
!4205 = !DILocation(line: 135, column: 1, scope: !4203, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 59, column: 27, scope: !4156)
!4207 = !DILocation(line: 137, column: 10, scope: !4203, inlinedAt: !4206)
!4208 = !DILocation(line: 59, column: 43, scope: !4156)
!4209 = !DILocation(line: 60, column: 29, scope: !4156)
!4210 = !DILocation(line: 60, column: 45, scope: !4156)
!4211 = !DILocation(line: 70, column: 17, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4156, file: !4157, line: 70, column: 7)
!4213 = !DILocation(line: 58, column: 50, scope: !4156)
!4214 = !DILocation(line: 70, column: 33, scope: !4212)
!4215 = !DILocation(line: 70, column: 53, scope: !4212)
!4216 = !DILocation(line: 70, column: 59, scope: !4212)
!4217 = !DILocation(line: 70, column: 7, scope: !4156)
!4218 = !DILocation(line: 72, column: 11, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4212, file: !4157, line: 71, column: 5)
!4220 = !DILocation(line: 73, column: 9, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4219, file: !4157, line: 72, column: 11)
!4222 = !DILocation(line: 73, column: 15, scope: !4221)
!4223 = !DILocation(line: 0, scope: !4156)
!4224 = !DILocation(line: 78, column: 1, scope: !4156)
!4225 = distinct !DISubprogram(name: "hard_locale", scope: !4226, file: !4226, line: 38, type: !4227, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !4229)
!4226 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!175, !31}
!4229 = !{!4230, !4231, !4232}
!4230 = !DILocalVariable(name: "category", arg: 1, scope: !4225, file: !4226, line: 38, type: !31)
!4231 = !DILocalVariable(name: "hard", scope: !4225, file: !4226, line: 40, type: !175)
!4232 = !DILocalVariable(name: "p", scope: !4225, file: !4226, line: 41, type: !42)
!4233 = !DILocation(line: 38, column: 18, scope: !4225)
!4234 = !DILocation(line: 40, column: 8, scope: !4225)
!4235 = !DILocation(line: 41, column: 19, scope: !4225)
!4236 = !DILocation(line: 41, column: 15, scope: !4225)
!4237 = !DILocation(line: 43, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4225, file: !4226, line: 43, column: 7)
!4239 = !DILocation(line: 43, column: 7, scope: !4225)
!4240 = !DILocation(line: 47, column: 15, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !4226, line: 47, column: 15)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !4226, line: 46, column: 9)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !4226, line: 45, column: 11)
!4244 = distinct !DILexicalBlock(scope: !4238, file: !4226, line: 44, column: 5)
!4245 = !DILocation(line: 47, column: 31, scope: !4241)
!4246 = !DILocation(line: 47, column: 36, scope: !4241)
!4247 = !DILocation(line: 47, column: 39, scope: !4241)
!4248 = !DILocation(line: 47, column: 59, scope: !4241)
!4249 = !DILocation(line: 47, column: 15, scope: !4242)
!4250 = !DILocation(line: 48, column: 13, scope: !4241)
!4251 = !DILocation(line: 71, column: 3, scope: !4225)
!4252 = distinct !DISubprogram(name: "locale_charset", scope: !4253, file: !4253, line: 687, type: !4254, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !316, retainedNodes: !4256)
!4253 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!42}
!4256 = !{!4257}
!4257 = !DILocalVariable(name: "codeset", scope: !4252, file: !4253, line: 689, type: !42)
!4258 = !DILocation(line: 696, column: 13, scope: !4252)
!4259 = !DILocation(line: 689, column: 15, scope: !4252)
!4260 = !DILocation(line: 754, column: 15, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4252, file: !4253, line: 754, column: 7)
!4262 = !DILocation(line: 754, column: 7, scope: !4252)
!4263 = !DILocation(line: 907, column: 13, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !4253, line: 907, column: 13)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !4253, line: 897, column: 7)
!4266 = distinct !DILexicalBlock(scope: !4252, file: !4253, line: 856, column: 3)
!4267 = !DILocation(line: 907, column: 24, scope: !4264)
!4268 = !DILocation(line: 907, column: 13, scope: !4265)
!4269 = !DILocation(line: 995, column: 3, scope: !4252)
