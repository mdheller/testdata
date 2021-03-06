; ModuleID = 'coreutils-8.30/src/fmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.Word = type { i8*, i32, i32, i8, i32, i64, %struct.Word* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: %s [-WIDTH] [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"Reformat each paragraph in the FILE(s), writing to standard output.\0AThe option -WIDTH is an abbreviated form of --width=DIGITS.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [278 x i8] c"  -c, --crown-margin        preserve indentation of first two lines\0A  -p, --prefix=STRING       reformat only lines beginning with STRING,\0A                              reattaching the prefix to reformatted lines\0A  -s, --split-only          split long lines, but do not refill\0A\00", align 1
@.str.4 = private unnamed_addr constant [286 x i8] c"  -t, --tagged-paragraph    indentation of first line different from second\0A  -u, --uniform-spacing     one space between words, two after sentences\0A  -w, --width=WIDTH         maximum line width (default of 75 columns)\0A  -g, --goal=WIDTH          goal width (default of 93% of width)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@uniform = internal unnamed_addr global i1 false, align 1, !dbg !0
@split = internal unnamed_addr global i1 false, align 1, !dbg !137
@tagged = internal unnamed_addr global i1 false, align 1, !dbg !138
@crown = internal unnamed_addr global i1 false, align 1, !dbg !139
@max_width = internal unnamed_addr global i32 0, align 4, !dbg !67
@prefix = internal unnamed_addr global i8* null, align 8, !dbg !63
@prefix_full_length = internal unnamed_addr global i32 0, align 4, !dbg !69
@prefix_lead_space = internal unnamed_addr global i32 0, align 4, !dbg !71
@prefix_length = internal unnamed_addr global i32 0, align 4, !dbg !73
@.str.11 = private unnamed_addr constant [21 x i8] c"0123456789cstuw:p:g:\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !77
@.str.12 = private unnamed_addr constant [94 x i8] c"invalid option -- %c; -WIDTH is recognized only when it is the first\0Aoption; use -w N instead\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Ross Paterson\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@goal_width = internal unnamed_addr global i32 0, align 4, !dbg !75
@optind = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@tabs = internal unnamed_addr global i1 false, align 1, !dbg !140
@other_indent = internal unnamed_addr global i32 0, align 4, !dbg !93
@next_char = internal unnamed_addr global i32 0, align 4, !dbg !99
@last_line_length = internal unnamed_addr global i32 0, align 4, !dbg !101
@next_prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !97
@in_column = internal unnamed_addr global i32 0, align 4, !dbg !95
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !103
@prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !105
@first_indent = internal unnamed_addr global i32 0, align 4, !dbg !107
@parabuf = internal global [5000 x i8] zeroinitializer, align 16, !dbg !109
@wptr = internal unnamed_addr global i8* null, align 8, !dbg !114
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 16, !dbg !116
@word_limit = internal unnamed_addr global %struct.Word* null, align 8, !dbg !135
@.str.46 = private unnamed_addr constant [18 x i8] c"word < word_limit\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"src/fmt.c\00", align 1
@__PRETTY_FUNCTION__.get_paragraph = private unnamed_addr constant [28 x i8] c"_Bool get_paragraph(FILE *)\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"(['`\22\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c")]'\22\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"crown-margin\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"split-only\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"tagged-paragraph\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"uniform-spacing\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"goal\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), align 8, !dbg !141
@.str.50 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !147
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !152
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !155
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !162
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !169
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !184
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !189
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !201
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !208
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !215
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !203
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !217
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.92 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.93 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.94 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.95 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.96 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.97 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.98 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.99 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.100 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.101 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.102 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.103 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.106 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.107 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.108 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.109 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.111 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !223
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.129 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.130 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !687 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !692, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i32 %0, metadata !691, metadata !DIExpression()), !dbg !715
  %3 = icmp eq i32 %0, 0, !dbg !716
  br i1 %3, label %9, label %4, !dbg !717

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !718, !tbaa !720
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !718
  %7 = load i8*, i8** @program_name, align 8, !dbg !718, !tbaa !720
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !718
  br label %69, !dbg !718

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !724
  %11 = load i8*, i8** @program_name, align 8, !dbg !724, !tbaa !720
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !724
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !725
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !720
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !725
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !726
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !720
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !726
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !731
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !720
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #12, !dbg !731
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !734
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !720
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !734
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !735
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !720
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !735
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !736
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !720
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !736
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !737
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !720
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !737
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !738
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #12, !dbg !738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %34, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !711
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !739
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !700, metadata !DIExpression()) #12, !dbg !740
  br label %36, !dbg !741

; <label>:36:                                     ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !700, metadata !DIExpression()) #12, !dbg !740
  %39 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %37) #10, !dbg !741
  %40 = icmp eq i32 %39, 0, !dbg !741
  br i1 %40, label %46, label %41, !dbg !742

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !743
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !700, metadata !DIExpression()) #12, !dbg !740
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !744
  %44 = load i8*, i8** %43, align 8, !dbg !744, !tbaa !745
  %45 = icmp eq i8* %44, null, !dbg !747
  br i1 %45, label %46, label %36, !dbg !748, !llvm.loop !749

; <label>:46:                                     ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !700, metadata !DIExpression()) #12, !dbg !740
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !700, metadata !DIExpression()) #12, !dbg !740
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !752
  %49 = load i8*, i8** %48, align 8, !dbg !752, !tbaa !754
  %50 = icmp eq i8* %49, null, !dbg !755
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %49, !dbg !756
  call void @llvm.dbg.value(metadata i8* %51, metadata !699, metadata !DIExpression()) #12, !dbg !757
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !758
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !758
  %54 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !759
  call void @llvm.dbg.value(metadata i8* %54, metadata !707, metadata !DIExpression()) #12, !dbg !760
  %55 = icmp eq i8* %54, null, !dbg !761
  br i1 %55, label %62, label %56, !dbg !763

; <label>:56:                                     ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #10, !dbg !764
  %58 = icmp eq i32 %57, 0, !dbg !764
  br i1 %58, label %62, label %59, !dbg !765

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !766
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !766
  br label %62, !dbg !768

; <label>:62:                                     ; preds = %46, %56, %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !769
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !769
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !770
  %66 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), !dbg !770
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !770
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %51, i8* %67) #12, !dbg !770
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #12, !dbg !771
  br label %69

; <label>:69:                                     ; preds = %62, %4
  tail call void @exit(i32 %0) #15, !dbg !772
  unreachable, !dbg !772
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !773 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !778, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8** %1, metadata !779, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8 1, metadata !781, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i8* null, metadata !782, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* null, metadata !783, metadata !DIExpression()), !dbg !851
  %3 = load i8*, i8** %1, align 8, !dbg !852, !tbaa !720
  tail call void @set_program_name(i8* %3) #12, !dbg !853
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !854
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !855
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !856
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !857
  store i1 false, i1* @uniform, align 1
  store i1 false, i1* @split, align 1
  store i1 false, i1* @tagged, align 1
  store i1 false, i1* @crown, align 1
  store i32 75, i32* @max_width, align 4, !dbg !858, !tbaa !859
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @prefix, align 8, !dbg !861, !tbaa !720
  store i32 0, i32* @prefix_full_length, align 4, !dbg !862, !tbaa !859
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !863, !tbaa !859
  store i32 0, i32* @prefix_length, align 4, !dbg !864, !tbaa !859
  %8 = icmp sgt i32 %0, 1, !dbg !865
  br i1 %8, label %9, label %25, !dbg !867

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !868
  %11 = load i8*, i8** %10, align 8, !dbg !868, !tbaa !720
  %12 = load i8, i8* %11, align 1, !dbg !868, !tbaa !869
  %13 = icmp eq i8 %12, 45, !dbg !870
  br i1 %13, label %14, label %25, !dbg !871

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !872
  %16 = load i8, i8* %15, align 1, !dbg !872, !tbaa !869
  %17 = sext i8 %16 to i32, !dbg !872
  %18 = add nsw i32 %17, -48, !dbg !872
  %19 = icmp ult i32 %18, 10, !dbg !872
  br i1 %19, label %20, label %25, !dbg !873

; <label>:20:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %15, metadata !782, metadata !DIExpression()), !dbg !850
  %21 = bitcast i8** %1 to i64*, !dbg !874
  %22 = load i64, i64* %21, align 8, !dbg !874, !tbaa !720
  %23 = bitcast i8** %10 to i64*, !dbg !876
  store i64 %22, i64* %23, align 8, !dbg !876, !tbaa !720
  call void @llvm.dbg.value(metadata i8** %10, metadata !779, metadata !DIExpression()), !dbg !848
  %24 = add nsw i32 %0, -1, !dbg !877
  call void @llvm.dbg.value(metadata i32 %24, metadata !778, metadata !DIExpression()), !dbg !847
  br label %25, !dbg !878

; <label>:25:                                     ; preds = %20, %14, %9, %2
  %26 = phi i8** [ %10, %20 ], [ %1, %14 ], [ %1, %9 ], [ %1, %2 ]
  %27 = phi i8* [ %15, %20 ], [ null, %14 ], [ null, %9 ], [ null, %2 ], !dbg !879
  %28 = phi i32 [ %24, %20 ], [ %0, %14 ], [ %0, %9 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !778, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8* %27, metadata !782, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8** %26, metadata !779, metadata !DIExpression()), !dbg !848
  br label %29, !dbg !880

; <label>:29:                                     ; preds = %46, %25
  %30 = phi i8* [ %47, %46 ], [ %27, %25 ]
  %31 = phi i8* [ %33, %46 ], [ null, %25 ]
  br label %32, !dbg !881

; <label>:32:                                     ; preds = %29, %48
  %33 = phi i8* [ %31, %29 ], [ %49, %48 ]
  br label %34, !dbg !881

; <label>:34:                                     ; preds = %81, %32
  call void @llvm.dbg.value(metadata i8* %33, metadata !783, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i8* %30, metadata !782, metadata !DIExpression()), !dbg !850
  %35 = tail call i32 @getopt_long(i32 %28, i8** %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !881
  call void @llvm.dbg.value(metadata i32 %35, metadata !780, metadata !DIExpression()), !dbg !882
  switch i32 %35, label %36 [
    i32 -1, label %86
    i32 99, label %42
    i32 115, label %43
    i32 116, label %44
    i32 117, label %45
    i32 119, label %46
    i32 103, label %48
    i32 112, label %50
    i32 -130, label %82
    i32 -131, label %83
  ], !dbg !880

; <label>:36:                                     ; preds = %34
  %37 = add i32 %35, -48, !dbg !883
  %38 = icmp ult i32 %37, 10, !dbg !883
  br i1 %38, label %39, label %41, !dbg !886

; <label>:39:                                     ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !887
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i32 %35) #12, !dbg !888
  br label %41, !dbg !888

; <label>:41:                                     ; preds = %39, %36
  tail call void @usage(i32 1) #16, !dbg !889
  unreachable, !dbg !889

; <label>:42:                                     ; preds = %34
  store i1 true, i1* @crown, align 1
  br label %81, !dbg !890

; <label>:43:                                     ; preds = %34
  store i1 true, i1* @split, align 1
  br label %81, !dbg !891

; <label>:44:                                     ; preds = %34
  store i1 true, i1* @tagged, align 1
  br label %81, !dbg !892

; <label>:45:                                     ; preds = %34
  store i1 true, i1* @uniform, align 1
  br label %81, !dbg !893

; <label>:46:                                     ; preds = %34
  %47 = load i8*, i8** @optarg, align 8, !dbg !894, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %47, metadata !782, metadata !DIExpression()), !dbg !850
  br label %29, !dbg !895, !llvm.loop !896

; <label>:48:                                     ; preds = %34
  %49 = load i8*, i8** @optarg, align 8, !dbg !898, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %49, metadata !783, metadata !DIExpression()), !dbg !851
  br label %32, !dbg !899, !llvm.loop !896

; <label>:50:                                     ; preds = %34
  %51 = load i8*, i8** @optarg, align 8, !dbg !900, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %51, metadata !901, metadata !DIExpression()) #12, !dbg !907
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !909, !tbaa !859
  call void @llvm.dbg.value(metadata i8* %51, metadata !901, metadata !DIExpression()) #12, !dbg !907
  %52 = load i8, i8* %51, align 1, !dbg !910, !tbaa !869
  %53 = icmp eq i8 %52, 32, !dbg !911
  br i1 %53, label %54, label %62, !dbg !912

; <label>:54:                                     ; preds = %50, %54
  %55 = phi i32 [ %57, %54 ], [ 0, %50 ], !dbg !907
  %56 = phi i8* [ %58, %54 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8* %56, metadata !901, metadata !DIExpression()) #12, !dbg !907
  %57 = add nuw nsw i32 %55, 1, !dbg !913
  %58 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !915
  call void @llvm.dbg.value(metadata i8* %58, metadata !901, metadata !DIExpression()) #12, !dbg !907
  %59 = load i8, i8* %58, align 1, !dbg !910, !tbaa !869
  %60 = icmp eq i8 %59, 32, !dbg !911
  br i1 %60, label %54, label %61, !dbg !912, !llvm.loop !916

; <label>:61:                                     ; preds = %54
  store i32 %57, i32* @prefix_lead_space, align 4, !dbg !913, !tbaa !859
  br label %62, !dbg !912

; <label>:62:                                     ; preds = %61, %50
  %63 = phi i8* [ %58, %61 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8* %63, metadata !901, metadata !DIExpression()) #12, !dbg !907
  store i8* %63, i8** @prefix, align 8, !dbg !919, !tbaa !720
  %64 = tail call i64 @strlen(i8* nonnull %63) #10, !dbg !920
  %65 = trunc i64 %64 to i32, !dbg !920
  store i32 %65, i32* @prefix_full_length, align 4, !dbg !921, !tbaa !859
  %66 = shl i64 %64, 32, !dbg !922
  %67 = ashr exact i64 %66, 32, !dbg !922
  %68 = getelementptr inbounds i8, i8* %63, i64 %67, !dbg !922
  call void @llvm.dbg.value(metadata i8* %68, metadata !906, metadata !DIExpression()) #12, !dbg !923
  br label %69, !dbg !924

; <label>:69:                                     ; preds = %72, %62
  %70 = phi i8* [ %68, %62 ], [ %73, %72 ], !dbg !925
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  %71 = icmp ugt i8* %70, %63, !dbg !926
  br i1 %71, label %72, label %76, !dbg !927

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds i8, i8* %70, i64 -1, !dbg !928
  %74 = load i8, i8* %73, align 1, !dbg !928, !tbaa !869
  %75 = icmp eq i8 %74, 32, !dbg !929
  br i1 %75, label %69, label %76, !dbg !924, !llvm.loop !930

; <label>:76:                                     ; preds = %69, %72
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  call void @llvm.dbg.value(metadata i8* %70, metadata !906, metadata !DIExpression()) #12, !dbg !923
  store i8 0, i8* %70, align 1, !dbg !933, !tbaa !869
  %77 = ptrtoint i8* %70 to i64, !dbg !934
  %78 = ptrtoint i8* %63 to i64, !dbg !934
  %79 = sub i64 %77, %78, !dbg !934
  %80 = trunc i64 %79 to i32, !dbg !935
  store i32 %80, i32* @prefix_length, align 4, !dbg !936, !tbaa !859
  br label %81, !dbg !937

; <label>:81:                                     ; preds = %76, %45, %44, %43, %42
  br label %34, !dbg !851, !llvm.loop !896

; <label>:82:                                     ; preds = %34
  tail call void @usage(i32 0) #16, !dbg !938
  unreachable, !dbg !938

; <label>:83:                                     ; preds = %34
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939, !tbaa !720
  %85 = load i8*, i8** @Version, align 8, !dbg !939, !tbaa !720
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* null) #12, !dbg !939
  tail call void @exit(i32 0) #15, !dbg !939
  unreachable, !dbg !939

; <label>:86:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i8* %30, metadata !782, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %33, metadata !783, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i8* %30, metadata !782, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %33, metadata !783, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i8* %30, metadata !782, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %33, metadata !783, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i8* %30, metadata !782, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8* %33, metadata !783, metadata !DIExpression()), !dbg !851
  %87 = icmp eq i8* %30, null, !dbg !940
  br i1 %87, label %88, label %90, !dbg !942

; <label>:88:                                     ; preds = %86
  %89 = load i32, i32* @max_width, align 4, !dbg !943, !tbaa !859
  br label %94, !dbg !942

; <label>:90:                                     ; preds = %86
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !946
  %92 = tail call i64 @xdectoumax(i8* nonnull %30, i64 0, i64 2500, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %91, i32 0) #12, !dbg !948
  %93 = trunc i64 %92 to i32, !dbg !948
  store i32 %93, i32* @max_width, align 4, !dbg !949, !tbaa !859
  br label %94, !dbg !950

; <label>:94:                                     ; preds = %88, %90
  %95 = phi i32 [ %89, %88 ], [ %93, %90 ], !dbg !943
  %96 = icmp eq i8* %33, null, !dbg !951
  br i1 %96, label %104, label %97, !dbg !952

; <label>:97:                                     ; preds = %94
  %98 = sext i32 %95 to i64, !dbg !953
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !954
  %100 = tail call i64 @xdectoumax(i8* nonnull %33, i64 0, i64 %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %99, i32 0) #12, !dbg !955
  %101 = trunc i64 %100 to i32, !dbg !955
  store i32 %101, i32* @goal_width, align 4, !dbg !956, !tbaa !859
  br i1 %87, label %102, label %107, !dbg !957

; <label>:102:                                    ; preds = %97
  %103 = add nsw i32 %101, 10, !dbg !958
  store i32 %103, i32* @max_width, align 4, !dbg !960, !tbaa !859
  br label %107, !dbg !961

; <label>:104:                                    ; preds = %94
  %105 = mul nsw i32 %95, 187, !dbg !962
  %106 = sdiv i32 %105, 200, !dbg !964
  store i32 %106, i32* @goal_width, align 4, !dbg !965, !tbaa !859
  br label %107

; <label>:107:                                    ; preds = %97, %102, %104
  %108 = load i32, i32* @optind, align 4, !dbg !966, !tbaa !859
  %109 = icmp eq i32 %108, %28, !dbg !967
  br i1 %109, label %112, label %110, !dbg !968

; <label>:110:                                    ; preds = %107
  call void @llvm.dbg.value(metadata i8 1, metadata !781, metadata !DIExpression()), !dbg !849
  %111 = icmp slt i32 %108, %28, !dbg !969
  br i1 %111, label %114, label %144, !dbg !970

; <label>:112:                                    ; preds = %107
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !971, !tbaa !720
  tail call fastcc void @fmt(%struct._IO_FILE* %113), !dbg !972
  br label %144, !dbg !972

; <label>:114:                                    ; preds = %110, %139
  %115 = phi i32 [ %142, %139 ], [ %108, %110 ]
  %116 = phi i8 [ %140, %139 ], [ 1, %110 ]
  call void @llvm.dbg.value(metadata i8 %116, metadata !781, metadata !DIExpression()), !dbg !849
  %117 = sext i32 %115 to i64, !dbg !973
  %118 = getelementptr inbounds i8*, i8** %26, i64 %117, !dbg !973
  %119 = load i8*, i8** %118, align 8, !dbg !973, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %119, metadata !784, metadata !DIExpression()), !dbg !974
  %120 = tail call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !975
  %121 = icmp eq i32 %120, 0, !dbg !975
  br i1 %121, label %122, label %124, !dbg !976

; <label>:122:                                    ; preds = %114
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !977, !tbaa !720
  tail call fastcc void @fmt(%struct._IO_FILE* %123), !dbg !978
  br label %139, !dbg !978

; <label>:124:                                    ; preds = %114
  %125 = tail call %struct._IO_FILE* @fopen(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !979
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %125, metadata !790, metadata !DIExpression()), !dbg !980
  %126 = icmp eq %struct._IO_FILE* %125, null, !dbg !981
  br i1 %126, label %134, label %127, !dbg !983

; <label>:127:                                    ; preds = %124
  tail call fastcc void @fmt(%struct._IO_FILE* nonnull %125), !dbg !984
  %128 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %125) #12, !dbg !986
  %129 = icmp eq i32 %128, -1, !dbg !988
  br i1 %129, label %130, label %139, !dbg !989

; <label>:130:                                    ; preds = %127
  %131 = tail call i32* @__errno_location() #17, !dbg !990
  %132 = load i32, i32* %131, align 4, !dbg !990, !tbaa !859
  %133 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %119) #12, !dbg !992
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %133) #12, !dbg !993
  call void @llvm.dbg.value(metadata i8 0, metadata !781, metadata !DIExpression()), !dbg !849
  br label %139, !dbg !994

; <label>:134:                                    ; preds = %124
  %135 = tail call i32* @__errno_location() #17, !dbg !995
  %136 = load i32, i32* %135, align 4, !dbg !995, !tbaa !859
  %137 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !997
  %138 = tail call i8* @quotearg_style(i32 4, i8* %119) #12, !dbg !998
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %136, i8* %137, i8* %138) #12, !dbg !999
  call void @llvm.dbg.value(metadata i8 0, metadata !781, metadata !DIExpression()), !dbg !849
  br label %139

; <label>:139:                                    ; preds = %134, %130, %127, %122
  %140 = phi i8 [ %116, %122 ], [ 0, %130 ], [ %116, %127 ], [ 0, %134 ], !dbg !1000
  %141 = load i32, i32* @optind, align 4, !dbg !1001, !tbaa !859
  %142 = add nsw i32 %141, 1, !dbg !1001
  store i32 %142, i32* @optind, align 4, !dbg !1001, !tbaa !859
  call void @llvm.dbg.value(metadata i8 %140, metadata !781, metadata !DIExpression()), !dbg !849
  %143 = icmp slt i32 %142, %28, !dbg !969
  br i1 %143, label %114, label %144, !dbg !970, !llvm.loop !1002

; <label>:144:                                    ; preds = %139, %110, %112
  %145 = phi i8 [ 1, %112 ], [ 1, %110 ], [ %140, %139 ], !dbg !849
  call void @llvm.dbg.value(metadata i8 %145, metadata !781, metadata !DIExpression()), !dbg !849
  %146 = and i8 %145, 1, !dbg !1004
  %147 = xor i8 %146, 1, !dbg !1004
  %148 = zext i8 %147 to i32, !dbg !1004
  ret i32 %148, !dbg !1005
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

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt(%struct._IO_FILE*) unnamed_addr #7 !dbg !1006 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1010, metadata !DIExpression()), !dbg !1011
  tail call void @fadvise(%struct._IO_FILE* %0, i32 2) #12, !dbg !1012
  store i1 false, i1* @tabs, align 1
  store i32 0, i32* @other_indent, align 4, !dbg !1013, !tbaa !859
  %2 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1014
  store i32 %2, i32* @next_char, align 4, !dbg !1015, !tbaa !859
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %5, !dbg !1016

; <label>:5:                                      ; preds = %335, %1
  %6 = phi i32 [ %336, %335 ], [ %2, %1 ], !dbg !1017
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1022, metadata !DIExpression()) #12, !dbg !1025
  store i32 0, i32* @last_line_length, align 4, !dbg !1026, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %6, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  br label %7, !dbg !1028

; <label>:7:                                      ; preds = %208, %5
  %8 = phi i32 [ %6, %5 ], [ %209, %208 ], !dbg !1029
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  switch i32 %8, label %9 [
    i32 -1, label %18
    i32 10, label %18
  ], !dbg !1031

; <label>:9:                                      ; preds = %7
  %10 = load i32, i32* @next_prefix_indent, align 4, !dbg !1032, !tbaa !859
  %11 = load i32, i32* @prefix_lead_space, align 4, !dbg !1033, !tbaa !859
  %12 = icmp slt i32 %10, %11, !dbg !1034
  br i1 %12, label %20, label %13, !dbg !1035

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* @in_column, align 4, !dbg !1036, !tbaa !859
  %15 = load i32, i32* @prefix_full_length, align 4, !dbg !1037, !tbaa !859
  %16 = add nsw i32 %15, %10, !dbg !1038
  %17 = icmp slt i32 %14, %16, !dbg !1039
  br i1 %17, label %18, label %210, !dbg !1028

; <label>:18:                                     ; preds = %13, %7, %7
  %19 = load i32, i32* @next_prefix_indent, align 4, !dbg !1040, !tbaa !859
  br label %20, !dbg !1050

; <label>:20:                                     ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %10, %9 ], !dbg !1040
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1046, metadata !DIExpression()) #12, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %8, metadata !1047, metadata !DIExpression()) #12, !dbg !1052
  store i32 0, i32* @out_column, align 4, !dbg !1050, !tbaa !859
  %22 = load i32, i32* @in_column, align 4, !dbg !1053, !tbaa !859
  %23 = icmp sgt i32 %22, %21, !dbg !1054
  br i1 %23, label %25, label %24, !dbg !1055

; <label>:24:                                     ; preds = %20
  switch i32 %8, label %25 [
    i32 -1, label %169
    i32 10, label %169
  ], !dbg !1056

; <label>:25:                                     ; preds = %24, %20
  call void @llvm.dbg.value(metadata i32 %21, metadata !1057, metadata !DIExpression()) #12, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %21, metadata !1060, metadata !DIExpression()) #12, !dbg !1065
  %26 = load i1, i1* @tabs, align 1
  br i1 %26, label %27, label %50, !dbg !1066

; <label>:27:                                     ; preds = %25
  %28 = sdiv i32 %21, 8, !dbg !1067
  %29 = shl nsw i32 %28, 3, !dbg !1070
  call void @llvm.dbg.value(metadata i32 %29, metadata !1061, metadata !DIExpression()) #12, !dbg !1071
  %30 = icmp sgt i32 %21, 7, !dbg !1072
  br i1 %30, label %31, label %50, !dbg !1074

; <label>:31:                                     ; preds = %27, %44
  %32 = phi i32 [ %48, %44 ], [ 0, %27 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1075, metadata !DIExpression()) #12, !dbg !1081
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1084, !tbaa !720
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !1084
  %35 = load i8*, i8** %34, align 8, !dbg !1084, !tbaa !1085
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !1084
  %37 = load i8*, i8** %36, align 8, !dbg !1084, !tbaa !1089
  %38 = icmp ult i8* %35, %37, !dbg !1084
  br i1 %38, label %42, label %39, !dbg !1084, !prof !1090

; <label>:39:                                     ; preds = %31
  %40 = tail call i32 @__overflow(%struct._IO_FILE* %33, i32 9) #12, !dbg !1084
  %41 = load i32, i32* @out_column, align 4, !dbg !1091, !tbaa !859
  br label %44, !dbg !1084

; <label>:42:                                     ; preds = %31
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1084
  store i8* %43, i8** %34, align 8, !dbg !1084, !tbaa !1085
  store i8 9, i8* %35, align 1, !dbg !1084, !tbaa !869
  br label %44, !dbg !1084

; <label>:44:                                     ; preds = %42, %39
  %45 = phi i32 [ %41, %39 ], [ %32, %42 ], !dbg !1091
  %46 = sdiv i32 %45, 8, !dbg !1092
  %47 = shl nsw i32 %46, 3, !dbg !1093
  %48 = add i32 %47, 8, !dbg !1093
  store i32 %48, i32* @out_column, align 4, !dbg !1094, !tbaa !859
  %49 = icmp slt i32 %48, %29, !dbg !1095
  br i1 %49, label %31, label %50, !dbg !1096

; <label>:50:                                     ; preds = %44, %27, %25
  %51 = phi i32 [ 0, %27 ], [ 0, %25 ], [ %48, %44 ], !dbg !1097
  %52 = icmp slt i32 %51, %21, !dbg !1098
  br i1 %52, label %53, label %70, !dbg !1099

; <label>:53:                                     ; preds = %50, %66
  %54 = phi i32 [ %68, %66 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1075, metadata !DIExpression()) #12, !dbg !1100
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1103, !tbaa !720
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %55, i64 0, i32 5, !dbg !1103
  %57 = load i8*, i8** %56, align 8, !dbg !1103, !tbaa !1085
  %58 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %55, i64 0, i32 6, !dbg !1103
  %59 = load i8*, i8** %58, align 8, !dbg !1103, !tbaa !1089
  %60 = icmp ult i8* %57, %59, !dbg !1103
  br i1 %60, label %64, label %61, !dbg !1103, !prof !1090

; <label>:61:                                     ; preds = %53
  %62 = tail call i32 @__overflow(%struct._IO_FILE* %55, i32 32) #12, !dbg !1103
  %63 = load i32, i32* @out_column, align 4, !dbg !1104, !tbaa !859
  br label %66, !dbg !1103

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1103
  store i8* %65, i8** %56, align 8, !dbg !1103, !tbaa !1085
  store i8 32, i8* %57, align 1, !dbg !1103, !tbaa !869
  br label %66, !dbg !1103

; <label>:66:                                     ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %54, %64 ], !dbg !1104
  %68 = add nsw i32 %67, 1, !dbg !1104
  store i32 %68, i32* @out_column, align 4, !dbg !1104, !tbaa !859
  %69 = icmp slt i32 %68, %21, !dbg !1098
  br i1 %69, label %53, label %70, !dbg !1099, !llvm.loop !1105

; <label>:70:                                     ; preds = %66, %50
  %71 = phi i32 [ %51, %50 ], [ %68, %66 ], !dbg !1108
  %72 = load i32, i32* @in_column, align 4, !dbg !1111, !tbaa !859
  %73 = icmp eq i32 %71, %72, !dbg !1112
  br i1 %73, label %102, label %74, !dbg !1113

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** @prefix, align 8, !dbg !1114, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %75, metadata !1048, metadata !DIExpression()) #12, !dbg !1115
  br label %76, !dbg !1116

; <label>:76:                                     ; preds = %97, %74
  %77 = phi i32 [ %98, %97 ], [ %72, %74 ]
  %78 = phi i32 [ %100, %97 ], [ %71, %74 ]
  %79 = phi i8* [ %83, %97 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i8* %79, metadata !1048, metadata !DIExpression()) #12, !dbg !1115
  %80 = load i8, i8* %79, align 1, !dbg !1116, !tbaa !869
  %81 = icmp eq i8 %80, 0, !dbg !1113
  br i1 %81, label %102, label %82, !dbg !1117

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1118
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1119, !tbaa !720
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 5, !dbg !1119
  %86 = load i8*, i8** %85, align 8, !dbg !1119, !tbaa !1085
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 6, !dbg !1119
  %88 = load i8*, i8** %87, align 8, !dbg !1119, !tbaa !1089
  %89 = icmp ult i8* %86, %88, !dbg !1119
  br i1 %89, label %95, label %90, !dbg !1119, !prof !1090

; <label>:90:                                     ; preds = %82
  %91 = zext i8 %80 to i32, !dbg !1116
  %92 = tail call i32 @__overflow(%struct._IO_FILE* %84, i32 %91) #12, !dbg !1119
  %93 = load i32, i32* @out_column, align 4, !dbg !1121, !tbaa !859
  %94 = load i32, i32* @in_column, align 4, !dbg !1111, !tbaa !859
  br label %97, !dbg !1119

; <label>:95:                                     ; preds = %82
  %96 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1119
  store i8* %96, i8** %85, align 8, !dbg !1119, !tbaa !1085
  store i8 %80, i8* %86, align 1, !dbg !1119, !tbaa !869
  br label %97, !dbg !1119

; <label>:97:                                     ; preds = %95, %90
  %98 = phi i32 [ %94, %90 ], [ %77, %95 ], !dbg !1111
  %99 = phi i32 [ %93, %90 ], [ %78, %95 ], !dbg !1121
  %100 = add nsw i32 %99, 1, !dbg !1121
  store i32 %100, i32* @out_column, align 4, !dbg !1121, !tbaa !859
  call void @llvm.dbg.value(metadata i8* %83, metadata !1048, metadata !DIExpression()) #12, !dbg !1115
  %101 = icmp eq i32 %100, %98, !dbg !1112
  br i1 %101, label %102, label %76, !dbg !1113, !llvm.loop !1122

; <label>:102:                                    ; preds = %97, %76, %70
  %103 = phi i32 [ %71, %70 ], [ %78, %76 ], [ %98, %97 ]
  %104 = phi i32 [ %71, %70 ], [ %77, %76 ], [ %98, %97 ], !dbg !1111
  switch i32 %8, label %105 [
    i32 -1, label %153
    i32 10, label %169
  ], !dbg !1125

; <label>:105:                                    ; preds = %102
  call void @llvm.dbg.value(metadata i32 undef, metadata !1060, metadata !DIExpression()) #12, !dbg !1127
  %106 = load i1, i1* @tabs, align 1
  br i1 %106, label %107, label %133, !dbg !1129

; <label>:107:                                    ; preds = %105
  %108 = sdiv i32 %104, 8, !dbg !1130
  %109 = shl nsw i32 %108, 3, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %109, metadata !1061, metadata !DIExpression()) #12, !dbg !1132
  %110 = add nsw i32 %103, 1, !dbg !1133
  %111 = icmp slt i32 %110, %109, !dbg !1134
  %112 = icmp slt i32 %103, %109, !dbg !1135
  %113 = and i1 %111, %112, !dbg !1136
  br i1 %113, label %114, label %133, !dbg !1136

; <label>:114:                                    ; preds = %107, %127
  %115 = phi i32 [ %131, %127 ], [ %103, %107 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1075, metadata !DIExpression()) #12, !dbg !1137
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !720
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5, !dbg !1139
  %118 = load i8*, i8** %117, align 8, !dbg !1139, !tbaa !1085
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6, !dbg !1139
  %120 = load i8*, i8** %119, align 8, !dbg !1139, !tbaa !1089
  %121 = icmp ult i8* %118, %120, !dbg !1139
  br i1 %121, label %125, label %122, !dbg !1139, !prof !1090

; <label>:122:                                    ; preds = %114
  %123 = tail call i32 @__overflow(%struct._IO_FILE* %116, i32 9) #12, !dbg !1139
  %124 = load i32, i32* @out_column, align 4, !dbg !1140, !tbaa !859
  br label %127, !dbg !1139

; <label>:125:                                    ; preds = %114
  %126 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1139
  store i8* %126, i8** %117, align 8, !dbg !1139, !tbaa !1085
  store i8 9, i8* %118, align 1, !dbg !1139, !tbaa !869
  br label %127, !dbg !1139

; <label>:127:                                    ; preds = %125, %122
  %128 = phi i32 [ %124, %122 ], [ %115, %125 ], !dbg !1140
  %129 = sdiv i32 %128, 8, !dbg !1141
  %130 = shl nsw i32 %129, 3, !dbg !1142
  %131 = add i32 %130, 8, !dbg !1142
  store i32 %131, i32* @out_column, align 4, !dbg !1143, !tbaa !859
  %132 = icmp slt i32 %131, %109, !dbg !1135
  br i1 %132, label %114, label %133, !dbg !1144

; <label>:133:                                    ; preds = %127, %107, %105
  %134 = phi i32 [ %103, %107 ], [ %103, %105 ], [ %131, %127 ]
  %135 = icmp slt i32 %134, %104, !dbg !1145
  br i1 %135, label %136, label %169, !dbg !1146

; <label>:136:                                    ; preds = %133, %149
  %137 = phi i32 [ %151, %149 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1075, metadata !DIExpression()) #12, !dbg !1147
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1149, !tbaa !720
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1149
  %140 = load i8*, i8** %139, align 8, !dbg !1149, !tbaa !1085
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1149
  %142 = load i8*, i8** %141, align 8, !dbg !1149, !tbaa !1089
  %143 = icmp ult i8* %140, %142, !dbg !1149
  br i1 %143, label %147, label %144, !dbg !1149, !prof !1090

; <label>:144:                                    ; preds = %136
  %145 = tail call i32 @__overflow(%struct._IO_FILE* %138, i32 32) #12, !dbg !1149
  %146 = load i32, i32* @out_column, align 4, !dbg !1150, !tbaa !859
  br label %149, !dbg !1149

; <label>:147:                                    ; preds = %136
  %148 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1149
  store i8* %148, i8** %139, align 8, !dbg !1149, !tbaa !1085
  store i8 32, i8* %140, align 1, !dbg !1149, !tbaa !869
  br label %149, !dbg !1149

; <label>:149:                                    ; preds = %147, %144
  %150 = phi i32 [ %146, %144 ], [ %137, %147 ], !dbg !1150
  %151 = add nsw i32 %150, 1, !dbg !1150
  store i32 %151, i32* @out_column, align 4, !dbg !1150, !tbaa !859
  %152 = icmp slt i32 %151, %104, !dbg !1145
  br i1 %152, label %136, label %169, !dbg !1146, !llvm.loop !1105

; <label>:153:                                    ; preds = %102
  %154 = load i32, i32* @next_prefix_indent, align 4, !dbg !1151, !tbaa !859
  %155 = load i32, i32* @prefix_length, align 4, !dbg !1153, !tbaa !859
  %156 = add nsw i32 %155, %154, !dbg !1154
  %157 = icmp slt i32 %104, %156, !dbg !1155
  br i1 %157, label %169, label %158, !dbg !1156

; <label>:158:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i32 10, metadata !1075, metadata !DIExpression()) #12, !dbg !1157
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1159, !tbaa !720
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 5, !dbg !1159
  %161 = load i8*, i8** %160, align 8, !dbg !1159, !tbaa !1085
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 6, !dbg !1159
  %163 = load i8*, i8** %162, align 8, !dbg !1159, !tbaa !1089
  %164 = icmp ult i8* %161, %163, !dbg !1159
  br i1 %164, label %167, label %165, !dbg !1159, !prof !1090

; <label>:165:                                    ; preds = %158
  %166 = tail call i32 @__overflow(%struct._IO_FILE* %159, i32 10) #12, !dbg !1159
  br label %169, !dbg !1159

; <label>:167:                                    ; preds = %158
  %168 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !1159
  store i8* %168, i8** %160, align 8, !dbg !1159, !tbaa !1085
  store i8 10, i8* %161, align 1, !dbg !1159, !tbaa !869
  br label %169, !dbg !1159

; <label>:169:                                    ; preds = %149, %167, %165, %153, %133, %102, %24, %24
  br label %170, !dbg !1160

; <label>:170:                                    ; preds = %195, %169
  %171 = phi i32 [ %8, %169 ], [ %196, %195 ]
  call void @llvm.dbg.value(metadata i32 %171, metadata !1047, metadata !DIExpression()) #12, !dbg !1052
  switch i32 %171, label %172 [
    i32 -1, label %337
    i32 10, label %197
  ], !dbg !1160

; <label>:172:                                    ; preds = %170
  call void @llvm.dbg.value(metadata i32 %171, metadata !1075, metadata !DIExpression()) #12, !dbg !1161
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1164, !tbaa !720
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 5, !dbg !1164
  %175 = load i8*, i8** %174, align 8, !dbg !1164, !tbaa !1085
  %176 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 6, !dbg !1164
  %177 = load i8*, i8** %176, align 8, !dbg !1164, !tbaa !1089
  %178 = icmp ult i8* %175, %177, !dbg !1164
  br i1 %178, label %182, label %179, !dbg !1164, !prof !1090

; <label>:179:                                    ; preds = %172
  %180 = and i32 %171, 255, !dbg !1164
  %181 = tail call i32 @__overflow(%struct._IO_FILE* %173, i32 %180) #12, !dbg !1164
  br label %185, !dbg !1164

; <label>:182:                                    ; preds = %172
  %183 = trunc i32 %171 to i8, !dbg !1164
  %184 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !1164
  store i8* %184, i8** %174, align 8, !dbg !1164, !tbaa !1085
  store i8 %183, i8* %175, align 1, !dbg !1164, !tbaa !869
  br label %185, !dbg !1164

; <label>:185:                                    ; preds = %182, %179
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1165, metadata !DIExpression()) #12, !dbg !1170
  %186 = load i8*, i8** %3, align 8, !dbg !1172, !tbaa !1173
  %187 = load i8*, i8** %4, align 8, !dbg !1172, !tbaa !1174
  %188 = icmp ult i8* %186, %187, !dbg !1172
  br i1 %188, label %191, label %189, !dbg !1172, !prof !1090

; <label>:189:                                    ; preds = %185
  %190 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1172
  br label %195, !dbg !1172

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1172
  store i8* %192, i8** %3, align 8, !dbg !1172, !tbaa !1173
  %193 = load i8, i8* %186, align 1, !dbg !1172, !tbaa !869
  %194 = zext i8 %193 to i32, !dbg !1172
  br label %195, !dbg !1172

; <label>:195:                                    ; preds = %191, %189
  %196 = phi i32 [ %190, %189 ], [ %194, %191 ]
  br label %170, !dbg !1052, !llvm.loop !1175

; <label>:197:                                    ; preds = %170
  call void @llvm.dbg.value(metadata i32 10, metadata !1075, metadata !DIExpression()) #12, !dbg !1178
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1180, !tbaa !720
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 5, !dbg !1180
  %200 = load i8*, i8** %199, align 8, !dbg !1180, !tbaa !1085
  %201 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 6, !dbg !1180
  %202 = load i8*, i8** %201, align 8, !dbg !1180, !tbaa !1089
  %203 = icmp ult i8* %200, %202, !dbg !1180
  br i1 %203, label %206, label %204, !dbg !1180, !prof !1090

; <label>:204:                                    ; preds = %197
  %205 = tail call i32 @__overflow(%struct._IO_FILE* %198, i32 10) #12, !dbg !1180
  br label %208, !dbg !1180

; <label>:206:                                    ; preds = %197
  %207 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1180
  store i8* %207, i8** %199, align 8, !dbg !1180, !tbaa !1085
  store i8 10, i8* %200, align 1, !dbg !1180, !tbaa !869
  br label %208, !dbg !1180

; <label>:208:                                    ; preds = %206, %204
  %209 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0) #12, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %209, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  br label %7, !dbg !1028, !llvm.loop !1182

; <label>:210:                                    ; preds = %13
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  store i32 %10, i32* @prefix_indent, align 4, !dbg !1185, !tbaa !859
  store i32 %14, i32* @first_indent, align 4, !dbg !1186, !tbaa !859
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1187, !tbaa !720
  store %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), %struct.Word** @word_limit, align 8, !dbg !1188, !tbaa !720
  %211 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %8) #12, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %211, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %211, metadata !1190, metadata !DIExpression()) #12, !dbg !1195
  %212 = load i32, i32* @next_prefix_indent, align 4, !dbg !1197, !tbaa !859
  %213 = load i32, i32* @prefix_indent, align 4, !dbg !1198, !tbaa !859
  %214 = icmp eq i32 %212, %213, !dbg !1199
  br i1 %214, label %215, label %224, !dbg !1200

; <label>:215:                                    ; preds = %210
  %216 = load i32, i32* @in_column, align 4, !dbg !1201, !tbaa !859
  %217 = load i32, i32* @prefix_full_length, align 4, !dbg !1202, !tbaa !859
  %218 = add nsw i32 %217, %212, !dbg !1203
  %219 = icmp sge i32 %216, %218, !dbg !1204
  %220 = icmp ne i32 %211, 10, !dbg !1205
  %221 = and i1 %220, %219, !dbg !1206
  %222 = icmp ne i32 %211, -1, !dbg !1207
  %223 = and i1 %222, %221, !dbg !1206
  br label %224, !dbg !1206

; <label>:224:                                    ; preds = %215, %210
  %225 = phi i1 [ %223, %215 ], [ false, %210 ]
  call void @llvm.dbg.value(metadata i1 %225, metadata !1208, metadata !DIExpression()) #12, !dbg !1213
  %226 = load i1, i1* @split, align 1
  br i1 %226, label %245, label %227, !dbg !1215

; <label>:227:                                    ; preds = %224
  %228 = load i1, i1* @crown, align 1
  br i1 %228, label %247, label %229, !dbg !1216

; <label>:229:                                    ; preds = %227
  %230 = load i1, i1* @tagged, align 1
  br i1 %230, label %231, label %271, !dbg !1218

; <label>:231:                                    ; preds = %229
  br i1 %225, label %234, label %232, !dbg !1220

; <label>:232:                                    ; preds = %231
  %233 = load i32, i32* @first_indent, align 4, !dbg !1224, !tbaa !859
  br label %238, !dbg !1220

; <label>:234:                                    ; preds = %231
  %235 = load i32, i32* @in_column, align 4, !dbg !1226, !tbaa !859
  %236 = load i32, i32* @first_indent, align 4, !dbg !1227, !tbaa !859
  %237 = icmp eq i32 %235, %236, !dbg !1228
  br i1 %237, label %238, label %273, !dbg !1229

; <label>:238:                                    ; preds = %234, %232
  %239 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %240 = load i32, i32* @other_indent, align 4, !dbg !1230, !tbaa !859
  %241 = icmp eq i32 %240, %239, !dbg !1231
  br i1 %241, label %242, label %276, !dbg !1232

; <label>:242:                                    ; preds = %238
  %243 = icmp eq i32 %239, 0, !dbg !1233
  %244 = select i1 %243, i32 3, i32 0, !dbg !1234
  br label %273, !dbg !1235

; <label>:245:                                    ; preds = %224
  %246 = load i32, i32* @first_indent, align 4, !dbg !1236, !tbaa !859
  store i32 %246, i32* @other_indent, align 4, !dbg !1237, !tbaa !859
  br label %317

; <label>:247:                                    ; preds = %227
  %248 = load i32, i32* @in_column, align 4, !dbg !1238
  %249 = load i32, i32* @first_indent, align 4, !dbg !1240
  %250 = select i1 %225, i32 %248, i32 %249, !dbg !1241
  store i32 %250, i32* @other_indent, align 4, !dbg !1242, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %211, metadata !1190, metadata !DIExpression()) #12, !dbg !1243
  br i1 %214, label %251, label %317, !dbg !1249

; <label>:251:                                    ; preds = %247
  %252 = load i32, i32* @prefix_full_length, align 4, !dbg !1250, !tbaa !859
  %253 = add nsw i32 %252, %212, !dbg !1251
  %254 = icmp slt i32 %248, %253, !dbg !1252
  br i1 %254, label %317, label %255, !dbg !1253

; <label>:255:                                    ; preds = %251
  switch i32 %211, label %256 [
    i32 -1, label %317
    i32 10, label %317
  ], !dbg !1253

; <label>:256:                                    ; preds = %255, %268
  %257 = phi i32 [ %258, %268 ], [ %211, %255 ], !dbg !1254
  call void @llvm.dbg.value(metadata i32 %257, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  %258 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %257) #12, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %258, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %258, metadata !1190, metadata !DIExpression()) #12, !dbg !1258
  %259 = load i32, i32* @next_prefix_indent, align 4, !dbg !1260, !tbaa !859
  %260 = load i32, i32* @prefix_indent, align 4, !dbg !1261, !tbaa !859
  %261 = icmp eq i32 %259, %260, !dbg !1262
  br i1 %261, label %262, label %317, !dbg !1263

; <label>:262:                                    ; preds = %256
  %263 = load i32, i32* @in_column, align 4, !dbg !1264, !tbaa !859
  %264 = load i32, i32* @prefix_full_length, align 4, !dbg !1265, !tbaa !859
  %265 = add nsw i32 %264, %259, !dbg !1266
  %266 = icmp slt i32 %263, %265, !dbg !1267
  br i1 %266, label %317, label %267, !dbg !1268

; <label>:267:                                    ; preds = %262
  switch i32 %258, label %268 [
    i32 -1, label %317
    i32 10, label %317
  ], !dbg !1268

; <label>:268:                                    ; preds = %267
  %269 = load i32, i32* @other_indent, align 4, !dbg !1269, !tbaa !859
  %270 = icmp eq i32 %263, %269, !dbg !1270
  br i1 %270, label %256, label %317, !dbg !1271, !llvm.loop !1272

; <label>:271:                                    ; preds = %229
  %272 = load i32, i32* @first_indent, align 4, !dbg !1275, !tbaa !859
  store i32 %272, i32* @other_indent, align 4, !dbg !1277, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %211, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %211, metadata !1190, metadata !DIExpression()) #12, !dbg !1278
  br i1 %214, label %301, label %317, !dbg !1282

; <label>:273:                                    ; preds = %234, %242
  %274 = phi i32 [ %244, %242 ], [ %235, %234 ]
  %275 = phi i32 [ %239, %242 ], [ %236, %234 ]
  store i32 %274, i32* @other_indent, align 4, !dbg !1283, !tbaa !859
  br label %276, !dbg !1284

; <label>:276:                                    ; preds = %273, %238
  %277 = phi i32 [ %239, %238 ], [ %275, %273 ]
  call void @llvm.dbg.value(metadata i32 %211, metadata !1190, metadata !DIExpression()) #12, !dbg !1288
  br i1 %214, label %278, label %317, !dbg !1284

; <label>:278:                                    ; preds = %276
  %279 = load i32, i32* @in_column, align 4, !dbg !1289, !tbaa !859
  %280 = load i32, i32* @prefix_full_length, align 4, !dbg !1290, !tbaa !859
  %281 = add nsw i32 %280, %212, !dbg !1291
  %282 = icmp slt i32 %279, %281, !dbg !1292
  br i1 %282, label %317, label %283, !dbg !1293

; <label>:283:                                    ; preds = %278
  switch i32 %211, label %284 [
    i32 -1, label %317
    i32 10, label %317
  ], !dbg !1293

; <label>:284:                                    ; preds = %283
  %285 = icmp eq i32 %279, %277, !dbg !1294
  br i1 %285, label %317, label %286, !dbg !1295

; <label>:286:                                    ; preds = %284, %298
  %287 = phi i32 [ %288, %298 ], [ %211, %284 ], !dbg !1296
  call void @llvm.dbg.value(metadata i32 %287, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  %288 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %287) #12, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %288, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %288, metadata !1190, metadata !DIExpression()) #12, !dbg !1300
  %289 = load i32, i32* @next_prefix_indent, align 4, !dbg !1302, !tbaa !859
  %290 = load i32, i32* @prefix_indent, align 4, !dbg !1303, !tbaa !859
  %291 = icmp eq i32 %289, %290, !dbg !1304
  br i1 %291, label %292, label %317, !dbg !1305

; <label>:292:                                    ; preds = %286
  %293 = load i32, i32* @in_column, align 4, !dbg !1306, !tbaa !859
  %294 = load i32, i32* @prefix_full_length, align 4, !dbg !1307, !tbaa !859
  %295 = add nsw i32 %294, %289, !dbg !1308
  %296 = icmp slt i32 %293, %295, !dbg !1309
  br i1 %296, label %317, label %297, !dbg !1310

; <label>:297:                                    ; preds = %292
  switch i32 %288, label %298 [
    i32 -1, label %317
    i32 10, label %317
  ], !dbg !1310

; <label>:298:                                    ; preds = %297
  %299 = load i32, i32* @other_indent, align 4, !dbg !1311, !tbaa !859
  %300 = icmp eq i32 %293, %299, !dbg !1312
  br i1 %300, label %286, label %317, !dbg !1313, !llvm.loop !1314

; <label>:301:                                    ; preds = %271, %312
  %302 = phi i32 [ %314, %312 ], [ %212, %271 ]
  %303 = phi i32 [ %313, %312 ], [ %211, %271 ]
  call void @llvm.dbg.value(metadata i32 %303, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  %304 = load i32, i32* @in_column, align 4, !dbg !1317, !tbaa !859
  %305 = load i32, i32* @prefix_full_length, align 4, !dbg !1318, !tbaa !859
  %306 = add nsw i32 %305, %302, !dbg !1319
  %307 = icmp slt i32 %304, %306, !dbg !1320
  br i1 %307, label %317, label %308, !dbg !1321

; <label>:308:                                    ; preds = %301
  switch i32 %303, label %309 [
    i32 -1, label %317
    i32 10, label %317
  ], !dbg !1321

; <label>:309:                                    ; preds = %308
  %310 = load i32, i32* @other_indent, align 4, !dbg !1322, !tbaa !859
  %311 = icmp eq i32 %304, %310, !dbg !1323
  br i1 %311, label %312, label %317, !dbg !1324

; <label>:312:                                    ; preds = %309
  %313 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %303) #12, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %313, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %313, metadata !1190, metadata !DIExpression()) #12, !dbg !1278
  %314 = load i32, i32* @next_prefix_indent, align 4, !dbg !1326, !tbaa !859
  %315 = load i32, i32* @prefix_indent, align 4, !dbg !1327, !tbaa !859
  %316 = icmp eq i32 %314, %315, !dbg !1328
  br i1 %316, label %301, label %317, !dbg !1282, !llvm.loop !1329

; <label>:317:                                    ; preds = %312, %309, %308, %308, %301, %298, %297, %297, %292, %286, %268, %267, %267, %262, %256, %284, %283, %283, %278, %276, %271, %255, %255, %251, %247, %245
  %318 = phi i32 [ %211, %245 ], [ %211, %255 ], [ %211, %284 ], [ %211, %283 ], [ %211, %247 ], [ %211, %276 ], [ %211, %251 ], [ %211, %255 ], [ %211, %278 ], [ %211, %283 ], [ %211, %271 ], [ %258, %256 ], [ %258, %262 ], [ %258, %267 ], [ %258, %267 ], [ %258, %268 ], [ %288, %286 ], [ %288, %292 ], [ %288, %297 ], [ %288, %297 ], [ %288, %298 ], [ %303, %301 ], [ %303, %308 ], [ %303, %308 ], [ %313, %312 ], [ %303, %309 ], !dbg !1283
  call void @llvm.dbg.value(metadata i32 %318, metadata !1023, metadata !DIExpression()) #12, !dbg !1027
  %319 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1332, !tbaa !720
  %320 = icmp ugt %struct.Word* %319, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1332
  br i1 %320, label %322, label %321, !dbg !1335

; <label>:321:                                    ; preds = %317
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 606, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.get_paragraph, i64 0, i64 0)) #15, !dbg !1332
  unreachable, !dbg !1332

; <label>:322:                                    ; preds = %317
  %323 = getelementptr inbounds %struct.Word, %struct.Word* %319, i64 -1, i32 3, !dbg !1336
  %324 = load i8, i8* %323, align 8, !dbg !1337
  %325 = or i8 %324, 10, !dbg !1338
  store i8 %325, i8* %323, align 8, !dbg !1338
  store i32 %318, i32* @next_char, align 4, !dbg !1339, !tbaa !859
  tail call fastcc void @fmt_paragraph(), !dbg !1342
  call void @llvm.dbg.value(metadata %struct.Word* %319, metadata !1344, metadata !DIExpression()) #12, !dbg !1350
  %326 = load i32, i32* @first_indent, align 4, !dbg !1352, !tbaa !859
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %326) #12, !dbg !1353
  call void @llvm.dbg.value(metadata %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), metadata !1349, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1354
  %327 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1355, !tbaa !1358
  call void @llvm.dbg.value(metadata %struct.Word* %327, metadata !1349, metadata !DIExpression()) #12, !dbg !1354
  %328 = icmp eq %struct.Word* %327, %319, !dbg !1360
  br i1 %328, label %335, label %329, !dbg !1361

; <label>:329:                                    ; preds = %322, %329
  %330 = phi %struct.Word* [ %333, %329 ], [ %327, %322 ]
  %331 = load i32, i32* @other_indent, align 4, !dbg !1362, !tbaa !859
  tail call fastcc void @put_line(%struct.Word* %330, i32 %331) #12, !dbg !1363
  %332 = getelementptr inbounds %struct.Word, %struct.Word* %330, i64 0, i32 6, !dbg !1364
  call void @llvm.dbg.value(metadata %struct.Word** %332, metadata !1349, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1354
  %333 = load %struct.Word*, %struct.Word** %332, align 8, !dbg !1355, !tbaa !1358
  call void @llvm.dbg.value(metadata %struct.Word* %333, metadata !1349, metadata !DIExpression()) #12, !dbg !1354
  %334 = icmp eq %struct.Word* %333, %319, !dbg !1360
  br i1 %334, label %335, label %329, !dbg !1361, !llvm.loop !1365

; <label>:335:                                    ; preds = %329, %322
  %336 = load i32, i32* @next_char, align 4, !dbg !1017, !tbaa !859
  br label %5, !dbg !1016, !llvm.loop !1368

; <label>:337:                                    ; preds = %170
  store i32 -1, i32* @next_char, align 4, !dbg !1339, !tbaa !859
  ret void, !dbg !1370
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_prefix(%struct._IO_FILE*) unnamed_addr #7 !dbg !1371 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1373, metadata !DIExpression()), !dbg !1382
  store i32 0, i32* @in_column, align 4, !dbg !1383, !tbaa !859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1165, metadata !DIExpression()) #12, !dbg !1384
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1386
  %3 = load i8*, i8** %2, align 8, !dbg !1386, !tbaa !1173
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1386
  %5 = load i8*, i8** %4, align 8, !dbg !1386, !tbaa !1174
  %6 = icmp ult i8* %3, %5, !dbg !1386
  br i1 %6, label %9, label %7, !dbg !1386, !prof !1090

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1386
  br label %13, !dbg !1386

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1386
  store i8* %10, i8** %2, align 8, !dbg !1386, !tbaa !1173
  %11 = load i8, i8* %3, align 1, !dbg !1386, !tbaa !869
  %12 = zext i8 %11 to i32, !dbg !1386
  br label %13, !dbg !1386

; <label>:13:                                     ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1387

; <label>:15:                                     ; preds = %36, %13
  %16 = phi i32 [ %14, %13 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1387

; <label>:17:                                     ; preds = %15
  %18 = load i32, i32* @in_column, align 4, !dbg !1395, !tbaa !859
  %19 = add nsw i32 %18, 1, !dbg !1395
  br label %25, !dbg !1397

; <label>:20:                                     ; preds = %15
  store i1 true, i1* @tabs, align 1
  %21 = load i32, i32* @in_column, align 4, !dbg !1398, !tbaa !859
  %22 = sdiv i32 %21, 8, !dbg !1401
  %23 = shl nsw i32 %22, 3, !dbg !1402
  %24 = add i32 %23, 8, !dbg !1402
  br label %25

; <label>:25:                                     ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ]
  store i32 %26, i32* @in_column, align 4, !dbg !1403, !tbaa !859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1165, metadata !DIExpression()) #12, !dbg !1404
  %27 = load i8*, i8** %2, align 8, !dbg !1406, !tbaa !1173
  %28 = load i8*, i8** %4, align 8, !dbg !1406, !tbaa !1174
  %29 = icmp ult i8* %27, %28, !dbg !1406
  br i1 %29, label %32, label %30, !dbg !1406, !prof !1090

; <label>:30:                                     ; preds = %25
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1406
  br label %36, !dbg !1406

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1406
  store i8* %33, i8** %2, align 8, !dbg !1406, !tbaa !1173
  %34 = load i8, i8* %27, align 1, !dbg !1406, !tbaa !869
  %35 = zext i8 %34 to i32, !dbg !1406
  br label %36, !dbg !1406

; <label>:36:                                     ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  br label %15, !dbg !1394, !llvm.loop !1407

; <label>:38:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1392, metadata !DIExpression()) #12, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %16, metadata !1374, metadata !DIExpression()), !dbg !1410
  %39 = load i32, i32* @prefix_length, align 4, !dbg !1411, !tbaa !859
  %40 = icmp eq i32 %39, 0, !dbg !1412
  br i1 %40, label %41, label %46, !dbg !1413

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* @prefix_lead_space, align 4, !dbg !1414, !tbaa !859
  %43 = load i32, i32* @in_column, align 4, !dbg !1415, !tbaa !859
  %44 = icmp slt i32 %42, %43, !dbg !1416
  %45 = select i1 %44, i32 %42, i32 %43, !dbg !1414
  store i32 %45, i32* @next_prefix_indent, align 4, !dbg !1417, !tbaa !859
  br label %99, !dbg !1418

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* @in_column, align 4, !dbg !1419, !tbaa !859
  store i32 %47, i32* @next_prefix_indent, align 4, !dbg !1420, !tbaa !859
  %48 = load i8*, i8** @prefix, align 8, !dbg !1421, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %48, metadata !1375, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i32 %16, metadata !1374, metadata !DIExpression()), !dbg !1410
  %49 = load i8, i8* %48, align 1, !dbg !1423, !tbaa !869
  %50 = icmp eq i8 %49, 0, !dbg !1424
  br i1 %50, label %74, label %51, !dbg !1425

; <label>:51:                                     ; preds = %46, %69
  %52 = phi i8 [ %72, %69 ], [ %49, %46 ]
  %53 = phi i8* [ %71, %69 ], [ %48, %46 ]
  %54 = phi i32 [ %70, %69 ], [ %16, %46 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1375, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i32 %54, metadata !1374, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8 %52, metadata !1378, metadata !DIExpression()), !dbg !1426
  %55 = zext i8 %52 to i32, !dbg !1427
  %56 = icmp eq i32 %54, %55, !dbg !1429
  br i1 %56, label %57, label %99, !dbg !1430

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* @in_column, align 4, !dbg !1431, !tbaa !859
  %59 = add nsw i32 %58, 1, !dbg !1431
  store i32 %59, i32* @in_column, align 4, !dbg !1431, !tbaa !859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1165, metadata !DIExpression()) #12, !dbg !1432
  %60 = load i8*, i8** %2, align 8, !dbg !1434, !tbaa !1173
  %61 = load i8*, i8** %4, align 8, !dbg !1434, !tbaa !1174
  %62 = icmp ult i8* %60, %61, !dbg !1434
  br i1 %62, label %65, label %63, !dbg !1434, !prof !1090

; <label>:63:                                     ; preds = %57
  %64 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1434
  br label %69, !dbg !1434

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1434
  store i8* %66, i8** %2, align 8, !dbg !1434, !tbaa !1173
  %67 = load i8, i8* %60, align 1, !dbg !1434, !tbaa !869
  %68 = zext i8 %67 to i32, !dbg !1434
  br label %69, !dbg !1434

; <label>:69:                                     ; preds = %63, %65
  %70 = phi i32 [ %68, %65 ], [ %64, %63 ]
  %71 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1435
  call void @llvm.dbg.value(metadata i8* %71, metadata !1375, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i32 %70, metadata !1374, metadata !DIExpression()), !dbg !1410
  %72 = load i8, i8* %71, align 1, !dbg !1423, !tbaa !869
  %73 = icmp eq i8 %72, 0, !dbg !1424
  br i1 %73, label %74, label %51, !dbg !1425, !llvm.loop !1436

; <label>:74:                                     ; preds = %69, %46
  %75 = phi i32 [ %16, %46 ], [ %70, %69 ]
  br label %76, !dbg !1438

; <label>:76:                                     ; preds = %97, %74
  %77 = phi i32 [ %75, %74 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i32 %77, metadata !1392, metadata !DIExpression()) #12, !dbg !1440
  switch i32 %77, label %99 [
    i32 32, label %78
    i32 9, label %81
  ], !dbg !1438

; <label>:78:                                     ; preds = %76
  %79 = load i32, i32* @in_column, align 4, !dbg !1441, !tbaa !859
  %80 = add nsw i32 %79, 1, !dbg !1441
  br label %86, !dbg !1442

; <label>:81:                                     ; preds = %76
  store i1 true, i1* @tabs, align 1
  %82 = load i32, i32* @in_column, align 4, !dbg !1443, !tbaa !859
  %83 = sdiv i32 %82, 8, !dbg !1444
  %84 = shl nsw i32 %83, 3, !dbg !1445
  %85 = add i32 %84, 8, !dbg !1445
  br label %86

; <label>:86:                                     ; preds = %81, %78
  %87 = phi i32 [ %85, %81 ], [ %80, %78 ]
  store i32 %87, i32* @in_column, align 4, !dbg !1446, !tbaa !859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1165, metadata !DIExpression()) #12, !dbg !1447
  %88 = load i8*, i8** %2, align 8, !dbg !1449, !tbaa !1173
  %89 = load i8*, i8** %4, align 8, !dbg !1449, !tbaa !1174
  %90 = icmp ult i8* %88, %89, !dbg !1449
  br i1 %90, label %93, label %91, !dbg !1449, !prof !1090

; <label>:91:                                     ; preds = %86
  %92 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1449
  br label %97, !dbg !1449

; <label>:93:                                     ; preds = %86
  %94 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1449
  store i8* %94, i8** %2, align 8, !dbg !1449, !tbaa !1173
  %95 = load i8, i8* %88, align 1, !dbg !1449, !tbaa !869
  %96 = zext i8 %95 to i32, !dbg !1449
  br label %97, !dbg !1449

; <label>:97:                                     ; preds = %93, %91
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ]
  br label %76, !dbg !1440, !llvm.loop !1407

; <label>:99:                                     ; preds = %51, %76, %41
  %100 = phi i32 [ %16, %41 ], [ %77, %76 ], [ %54, %51 ], !dbg !1450
  ret i32 %100, !dbg !1451
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_line(%struct._IO_FILE*, i32) unnamed_addr #7 !dbg !1452 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1454, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 %1, metadata !1455, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), metadata !1457, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), metadata !1458, metadata !DIExpression()), !dbg !1462
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i64*, i64** bitcast (%struct.Word** @word_limit to i64**), align 8, !dbg !1463, !tbaa !720
  br label %6, !dbg !1465

; <label>:6:                                      ; preds = %204, %2
  %7 = phi i64* [ %5, %2 ], [ %207, %204 ], !dbg !1463
  %8 = phi i32 [ %1, %2 ], [ %128, %204 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !1455, metadata !DIExpression()), !dbg !1460
  %9 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1466, !tbaa !720
  store i64 %9, i64* %7, align 8, !dbg !1467, !tbaa !1468
  %10 = inttoptr i64 %9 to i8*
  br label %13, !dbg !1469

; <label>:11:                                     ; preds = %59
  %12 = load i8*, i8** @wptr, align 8, !dbg !1470, !tbaa !720
  br label %13, !dbg !1470

; <label>:13:                                     ; preds = %11, %6
  %14 = phi i8* [ %12, %11 ], [ %10, %6 ]
  %15 = phi i32 [ %60, %11 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !1455, metadata !DIExpression()), !dbg !1460
  %16 = icmp eq i8* %14, getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), !dbg !1473
  br i1 %16, label %17, label %43, !dbg !1474

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i1 true, metadata !1208, metadata !DIExpression()), !dbg !1475
  %18 = load i1, i1* @split, align 1
  br i1 %18, label %19, label %21, !dbg !1478

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* @first_indent, align 4, !dbg !1479, !tbaa !859
  br label %39, !dbg !1480

; <label>:21:                                     ; preds = %17
  %22 = load i1, i1* @crown, align 1
  br i1 %22, label %23, label %25, !dbg !1481

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* @in_column, align 4, !dbg !1482
  br label %39, !dbg !1483

; <label>:25:                                     ; preds = %21
  %26 = load i1, i1* @tagged, align 1
  br i1 %26, label %27, label %37, !dbg !1484

; <label>:27:                                     ; preds = %25
  %28 = load i32, i32* @in_column, align 4, !dbg !1485, !tbaa !859
  %29 = load i32, i32* @first_indent, align 4, !dbg !1486, !tbaa !859
  %30 = icmp eq i32 %28, %29, !dbg !1487
  br i1 %30, label %31, label %39, !dbg !1488

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* @other_indent, align 4, !dbg !1489, !tbaa !859
  %33 = icmp eq i32 %32, %28, !dbg !1490
  br i1 %33, label %34, label %41, !dbg !1491

; <label>:34:                                     ; preds = %31
  %35 = icmp eq i32 %28, 0, !dbg !1492
  %36 = select i1 %35, i32 3, i32 0, !dbg !1493
  br label %39, !dbg !1494

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* @first_indent, align 4, !dbg !1495, !tbaa !859
  br label %39

; <label>:39:                                     ; preds = %27, %37, %34, %23, %19
  %40 = phi i32 [ %20, %19 ], [ %24, %23 ], [ %36, %34 ], [ %38, %37 ], [ %28, %27 ]
  store i32 %40, i32* @other_indent, align 4, !dbg !1496, !tbaa !859
  br label %41, !dbg !1497

; <label>:41:                                     ; preds = %39, %31
  tail call fastcc void @flush_paragraph(), !dbg !1497
  %42 = load i8*, i8** @wptr, align 8, !dbg !1498, !tbaa !720
  br label %43, !dbg !1499

; <label>:43:                                     ; preds = %41, %13
  %44 = phi i8* [ %42, %41 ], [ %14, %13 ], !dbg !1498
  %45 = trunc i32 %15 to i8, !dbg !1500
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1498
  store i8* %46, i8** @wptr, align 8, !dbg !1498, !tbaa !720
  store i8 %45, i8* %44, align 1, !dbg !1501, !tbaa !869
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1165, metadata !DIExpression()) #12, !dbg !1502
  %47 = load i8*, i8** %3, align 8, !dbg !1504, !tbaa !1173
  %48 = load i8*, i8** %4, align 8, !dbg !1504, !tbaa !1174
  %49 = icmp ult i8* %47, %48, !dbg !1504
  br i1 %49, label %50, label %54, !dbg !1504, !prof !1090

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1504
  store i8* %51, i8** %3, align 8, !dbg !1504, !tbaa !1173
  %52 = load i8, i8* %47, align 1, !dbg !1504, !tbaa !869
  %53 = zext i8 %52 to i32, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %55, metadata !1455, metadata !DIExpression()), !dbg !1460
  br label %59, !dbg !1505

; <label>:54:                                     ; preds = %43
  %55 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %55, metadata !1455, metadata !DIExpression()), !dbg !1460
  %56 = icmp eq i32 %55, -1, !dbg !1506
  br i1 %56, label %57, label %59, !dbg !1505

; <label>:57:                                     ; preds = %54
  %58 = tail call i16** @__ctype_b_loc() #17, !dbg !1507
  br label %68, !dbg !1505

; <label>:59:                                     ; preds = %50, %54
  %60 = phi i32 [ %53, %50 ], [ %55, %54 ]
  %61 = tail call i16** @__ctype_b_loc() #17, !dbg !1515
  %62 = load i16*, i16** %61, align 8, !dbg !1515, !tbaa !720
  %63 = sext i32 %60 to i64, !dbg !1515
  %64 = getelementptr inbounds i16, i16* %62, i64 %63, !dbg !1515
  %65 = load i16, i16* %64, align 2, !dbg !1515, !tbaa !1516
  %66 = and i16 %65, 8192, !dbg !1515
  %67 = icmp eq i16 %66, 0, !dbg !1517
  br i1 %67, label %11, label %68, !dbg !1518, !llvm.loop !1519

; <label>:68:                                     ; preds = %59, %57
  %69 = phi i16** [ %58, %57 ], [ %61, %59 ], !dbg !1507
  %70 = phi i32 [ -1, %57 ], [ %60, %59 ]
  %71 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1521, !tbaa !720
  %72 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1522, !tbaa !720
  %73 = bitcast %struct.Word* %72 to i64*, !dbg !1523
  %74 = load i64, i64* %73, align 8, !dbg !1523, !tbaa !1468
  %75 = sub i64 %71, %74, !dbg !1524
  %76 = trunc i64 %75 to i32, !dbg !1521
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 1, !dbg !1525
  store i32 %76, i32* %77, align 8, !dbg !1526, !tbaa !1527
  %78 = load i32, i32* @in_column, align 4, !dbg !1528, !tbaa !859
  %79 = add nsw i32 %78, %76, !dbg !1528
  store i32 %79, i32* @in_column, align 4, !dbg !1528, !tbaa !859
  call void @llvm.dbg.value(metadata %struct.Word* %72, metadata !1510, metadata !DIExpression()) #12, !dbg !1529
  %80 = inttoptr i64 %74 to i8*, !dbg !1530
  call void @llvm.dbg.value(metadata i8* %80, metadata !1511, metadata !DIExpression()) #12, !dbg !1531
  %81 = shl i64 %75, 32, !dbg !1532
  %82 = add i64 %81, -4294967296, !dbg !1532
  %83 = ashr exact i64 %82, 32, !dbg !1532
  %84 = getelementptr inbounds i8, i8* %80, i64 %83, !dbg !1532
  call void @llvm.dbg.value(metadata i8* %84, metadata !1512, metadata !DIExpression()) #12, !dbg !1533
  %85 = load i8, i8* %84, align 1, !dbg !1534, !tbaa !869
  call void @llvm.dbg.value(metadata i8 %85, metadata !1513, metadata !DIExpression()) #12, !dbg !1535
  %86 = load i8, i8* %80, align 1, !dbg !1536, !tbaa !869
  %87 = sext i8 %86 to i32, !dbg !1536
  %88 = tail call i8* @memchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %87, i64 6) #12, !dbg !1536
  %89 = icmp ne i8* %88, null, !dbg !1536
  %90 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 3, !dbg !1537
  %91 = zext i1 %89 to i8, !dbg !1538
  %92 = load i8, i8* %90, align 8, !dbg !1538
  %93 = and i8 %92, -2, !dbg !1538
  %94 = or i8 %93, %91, !dbg !1538
  store i8 %94, i8* %90, align 8, !dbg !1538
  %95 = load i16*, i16** %69, align 8, !dbg !1507, !tbaa !720
  %96 = zext i8 %85 to i64, !dbg !1507
  %97 = getelementptr inbounds i16, i16* %95, i64 %96, !dbg !1507
  %98 = load i16, i16* %97, align 2, !dbg !1507, !tbaa !1516
  %99 = trunc i16 %98 to i8, !dbg !1539
  %100 = and i8 %99, 4, !dbg !1539
  %101 = and i8 %94, -5, !dbg !1539
  %102 = or i8 %100, %101, !dbg !1539
  store i8 %102, i8* %90, align 8, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %84, metadata !1512, metadata !DIExpression()) #12, !dbg !1533
  %103 = icmp sgt i32 %76, 1, !dbg !1540
  br i1 %103, label %104, label %113, !dbg !1541

; <label>:104:                                    ; preds = %68, %110
  %105 = phi i8* [ %111, %110 ], [ %84, %68 ]
  call void @llvm.dbg.value(metadata i8* %105, metadata !1512, metadata !DIExpression()) #12, !dbg !1533
  %106 = load i8, i8* %105, align 1, !dbg !1542, !tbaa !869
  %107 = sext i8 %106 to i32, !dbg !1542
  %108 = tail call i8* @memchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %107, i64 5) #12, !dbg !1542
  %109 = icmp eq i8* %108, null, !dbg !1542
  br i1 %109, label %113, label %110, !dbg !1543

; <label>:110:                                    ; preds = %104
  %111 = getelementptr inbounds i8, i8* %105, i64 -1, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %111, metadata !1512, metadata !DIExpression()) #12, !dbg !1533
  %112 = icmp ugt i8* %111, %80, !dbg !1540
  br i1 %112, label %104, label %113, !dbg !1541, !llvm.loop !1545

; <label>:113:                                    ; preds = %104, %110, %68
  %114 = phi i8* [ %84, %68 ], [ %111, %110 ], [ %105, %104 ], !dbg !1548
  call void @llvm.dbg.value(metadata i8* %114, metadata !1512, metadata !DIExpression()) #12, !dbg !1533
  call void @llvm.dbg.value(metadata i8* %114, metadata !1512, metadata !DIExpression()) #12, !dbg !1533
  %115 = load i8, i8* %114, align 1, !dbg !1549, !tbaa !869
  %116 = sext i8 %115 to i64, !dbg !1549
  %117 = and i64 %116, 4294967295, !dbg !1549
  %118 = icmp ult i64 %117, 64, !dbg !1549
  %119 = shl i64 1, %117, !dbg !1549
  %120 = and i64 %119, -9223301659520663551, !dbg !1549
  %121 = icmp ne i64 %120, 0, !dbg !1549
  %122 = and i1 %118, %121, !dbg !1549
  %123 = zext i1 %122 to i8, !dbg !1550
  %124 = shl nuw nsw i8 %123, 1, !dbg !1550
  %125 = and i8 %102, -3, !dbg !1550
  %126 = or i8 %124, %125, !dbg !1550
  store i8 %126, i8* %90, align 8, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %79, metadata !1456, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1391, metadata !DIExpression()) #12, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %55, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  br label %127, !dbg !1555

; <label>:127:                                    ; preds = %148, %113
  %128 = phi i32 [ %70, %113 ], [ %149, %148 ]
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  switch i32 %128, label %150 [
    i32 32, label %129
    i32 9, label %132
  ], !dbg !1556

; <label>:129:                                    ; preds = %127
  %130 = load i32, i32* @in_column, align 4, !dbg !1557, !tbaa !859
  %131 = add nsw i32 %130, 1, !dbg !1557
  br label %137, !dbg !1558

; <label>:132:                                    ; preds = %127
  store i1 true, i1* @tabs, align 1
  %133 = load i32, i32* @in_column, align 4, !dbg !1559, !tbaa !859
  %134 = sdiv i32 %133, 8, !dbg !1560
  %135 = shl nsw i32 %134, 3, !dbg !1561
  %136 = add i32 %135, 8, !dbg !1561
  br label %137

; <label>:137:                                    ; preds = %132, %129
  %138 = phi i32 [ %136, %132 ], [ %131, %129 ]
  store i32 %138, i32* @in_column, align 4, !dbg !1562, !tbaa !859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1165, metadata !DIExpression()) #12, !dbg !1563
  %139 = load i8*, i8** %3, align 8, !dbg !1565, !tbaa !1173
  %140 = load i8*, i8** %4, align 8, !dbg !1565, !tbaa !1174
  %141 = icmp ult i8* %139, %140, !dbg !1565
  br i1 %141, label %144, label %142, !dbg !1565, !prof !1090

; <label>:142:                                    ; preds = %137
  %143 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1565
  br label %148, !dbg !1565

; <label>:144:                                    ; preds = %137
  %145 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1565
  store i8* %145, i8** %3, align 8, !dbg !1565, !tbaa !1173
  %146 = load i8, i8* %139, align 1, !dbg !1565, !tbaa !869
  %147 = zext i8 %146 to i32, !dbg !1565
  br label %148, !dbg !1565

; <label>:148:                                    ; preds = %144, %142
  %149 = phi i32 [ %143, %142 ], [ %147, %144 ]
  br label %127, !dbg !1554, !llvm.loop !1407

; <label>:150:                                    ; preds = %127
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1392, metadata !DIExpression()) #12, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %128, metadata !1455, metadata !DIExpression()), !dbg !1460
  %151 = load i32, i32* @in_column, align 4, !dbg !1566, !tbaa !859
  %152 = sub nsw i32 %151, %79, !dbg !1567
  %153 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1568, !tbaa !720
  %154 = getelementptr inbounds %struct.Word, %struct.Word* %153, i64 0, i32 2, !dbg !1569
  store i32 %152, i32* %154, align 4, !dbg !1570, !tbaa !1571
  %155 = icmp eq i32 %128, -1, !dbg !1572
  %156 = getelementptr inbounds %struct.Word, %struct.Word* %153, i64 0, i32 3
  %157 = load i8, i8* %156, align 8, !dbg !1573
  br i1 %155, label %165, label %158, !dbg !1574

; <label>:158:                                    ; preds = %150
  %159 = and i8 %157, 2, !dbg !1575
  %160 = icmp eq i8 %159, 0, !dbg !1576
  br i1 %160, label %167, label %161, !dbg !1577

; <label>:161:                                    ; preds = %158
  %162 = icmp eq i32 %128, 10, !dbg !1578
  br i1 %162, label %165, label %163, !dbg !1579

; <label>:163:                                    ; preds = %161
  %164 = icmp sgt i32 %152, 1, !dbg !1580
  br label %167, !dbg !1579

; <label>:165:                                    ; preds = %150, %161
  %166 = or i8 %157, 8, !dbg !1581
  store i8 %166, i8* %156, align 8, !dbg !1581
  br label %176, !dbg !1582

; <label>:167:                                    ; preds = %158, %163
  %168 = phi i1 [ false, %158 ], [ %164, %163 ]
  %169 = zext i1 %168 to i8, !dbg !1581
  %170 = shl nuw nsw i8 %169, 3, !dbg !1581
  %171 = and i8 %157, -9, !dbg !1581
  %172 = or i8 %171, %170, !dbg !1581
  store i8 %172, i8* %156, align 8, !dbg !1581
  %173 = icmp eq i32 %128, 10, !dbg !1582
  br i1 %173, label %176, label %174, !dbg !1582

; <label>:174:                                    ; preds = %167
  %175 = load i1, i1* @uniform, align 1
  br i1 %175, label %176, label %181, !dbg !1584

; <label>:176:                                    ; preds = %167, %165, %174
  %177 = phi i8 [ %166, %165 ], [ %172, %167 ], [ %172, %174 ]
  %178 = and i8 %177, 8, !dbg !1585
  %179 = icmp eq i8 %178, 0, !dbg !1586
  %180 = select i1 %179, i32 1, i32 2, !dbg !1586
  store i32 %180, i32* %154, align 4, !dbg !1587, !tbaa !1571
  br label %181, !dbg !1588

; <label>:181:                                    ; preds = %176, %174
  %182 = icmp eq %struct.Word* %153, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), !dbg !1589
  br i1 %182, label %183, label %204, !dbg !1591

; <label>:183:                                    ; preds = %181
  call void @llvm.dbg.value(metadata i1 true, metadata !1208, metadata !DIExpression()), !dbg !1592
  %184 = load i1, i1* @split, align 1
  br i1 %184, label %185, label %187, !dbg !1595

; <label>:185:                                    ; preds = %183
  %186 = load i32, i32* @first_indent, align 4, !dbg !1596, !tbaa !859
  br label %200, !dbg !1597

; <label>:187:                                    ; preds = %183
  %188 = load i1, i1* @crown, align 1
  br i1 %188, label %200, label %189, !dbg !1598

; <label>:189:                                    ; preds = %187
  %190 = load i1, i1* @tagged, align 1
  %191 = load i32, i32* @first_indent, align 4, !dbg !1599, !tbaa !859
  br i1 %190, label %192, label %200, !dbg !1600

; <label>:192:                                    ; preds = %189
  %193 = icmp eq i32 %151, %191, !dbg !1601
  br i1 %193, label %194, label %200, !dbg !1602

; <label>:194:                                    ; preds = %192
  %195 = load i32, i32* @other_indent, align 4, !dbg !1603, !tbaa !859
  %196 = icmp eq i32 %195, %151, !dbg !1604
  br i1 %196, label %197, label %202, !dbg !1605

; <label>:197:                                    ; preds = %194
  %198 = icmp eq i32 %151, 0, !dbg !1606
  %199 = select i1 %198, i32 3, i32 0, !dbg !1607
  br label %200, !dbg !1608

; <label>:200:                                    ; preds = %189, %192, %187, %197, %185
  %201 = phi i32 [ %186, %185 ], [ %199, %197 ], [ %151, %187 ], [ %151, %192 ], [ %191, %189 ]
  store i32 %201, i32* @other_indent, align 4, !dbg !1599, !tbaa !859
  br label %202, !dbg !1609

; <label>:202:                                    ; preds = %200, %194
  tail call fastcc void @flush_paragraph(), !dbg !1609
  %203 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1610, !tbaa !720
  br label %204, !dbg !1611

; <label>:204:                                    ; preds = %202, %181
  %205 = phi %struct.Word* [ %203, %202 ], [ %153, %181 ], !dbg !1610
  %206 = getelementptr inbounds %struct.Word, %struct.Word* %205, i64 1, !dbg !1610
  store %struct.Word* %206, %struct.Word** @word_limit, align 8, !dbg !1610, !tbaa !720
  %207 = bitcast %struct.Word* %206 to i64*, !dbg !1612
  switch i32 %128, label %6 [
    i32 -1, label %208
    i32 10, label %208
  ], !dbg !1612

; <label>:208:                                    ; preds = %204, %204
  %209 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1613
  ret i32 %209, !dbg !1614
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #7 !dbg !1615 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1623, !tbaa !720
  %2 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 5, !dbg !1624
  store i64 0, i64* %2, align 8, !dbg !1625, !tbaa !1626
  %3 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 1, !dbg !1627
  %4 = load i32, i32* %3, align 8, !dbg !1627, !tbaa !1527
  call void @llvm.dbg.value(metadata i32 %4, metadata !1622, metadata !DIExpression()), !dbg !1628
  %5 = load i32, i32* @max_width, align 4, !dbg !1629, !tbaa !859
  store i32 %5, i32* %3, align 8, !dbg !1630, !tbaa !1527
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !1617, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1631
  %6 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 -1, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.Word* %6, metadata !1617, metadata !DIExpression()), !dbg !1631
  %7 = icmp ult %struct.Word* %6, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1635
  br i1 %7, label %124, label %8, !dbg !1636

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* @first_indent, align 4
  %10 = load i32, i32* @other_indent, align 4
  %11 = load i32, i32* @last_line_length, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = load i32, i32* @goal_width, align 4
  br label %14, !dbg !1636

; <label>:14:                                     ; preds = %8, %118
  %15 = phi %struct.Word* [ %6, %8 ], [ %122, %118 ]
  %16 = phi %struct.Word* [ %1, %8 ], [ %15, %118 ]
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1621, metadata !DIExpression()), !dbg !1637
  %17 = icmp eq %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1638
  %18 = select i1 %17, i32 %9, i32 %10, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %18, metadata !1619, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !1618, metadata !DIExpression()), !dbg !1642
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 1, !dbg !1643
  %20 = load i32, i32* %19, align 8, !dbg !1643, !tbaa !1527
  %21 = add nsw i32 %18, %20, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %21, metadata !1619, metadata !DIExpression()), !dbg !1641
  %22 = and i1 %17, %12
  %23 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 6
  %24 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 4
  br label %25, !dbg !1645

; <label>:25:                                     ; preds = %66, %14
  %26 = phi %struct.Word* [ %15, %14 ], [ %29, %66 ], !dbg !1646
  %27 = phi i32 [ %21, %14 ], [ %72, %66 ], !dbg !1646
  %28 = phi i64 [ 9223372036854775807, %14 ], [ %65, %66 ], !dbg !1648
  call void @llvm.dbg.value(metadata i64 %28, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 %27, metadata !1619, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata %struct.Word* %26, metadata !1618, metadata !DIExpression()), !dbg !1642
  %29 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, !dbg !1651
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !1618, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !1652, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %27, metadata !1657, metadata !DIExpression()), !dbg !1662
  %30 = icmp eq %struct.Word* %1, %29, !dbg !1663
  br i1 %30, label %48, label %31, !dbg !1665

; <label>:31:                                     ; preds = %25
  %32 = sub nsw i32 %13, %27, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %32, metadata !1658, metadata !DIExpression()), !dbg !1667
  %33 = mul nsw i32 %32, 10, !dbg !1668
  %34 = sext i32 %33 to i64, !dbg !1668
  %35 = mul nsw i64 %34, %34, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %35, metadata !1659, metadata !DIExpression()), !dbg !1669
  %36 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 6, !dbg !1670
  %37 = load %struct.Word*, %struct.Word** %36, align 8, !dbg !1670, !tbaa !1358
  %38 = icmp eq %struct.Word* %37, %1, !dbg !1672
  br i1 %38, label %48, label %39, !dbg !1673

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 4, !dbg !1674
  %41 = load i32, i32* %40, align 4, !dbg !1674, !tbaa !1676
  %42 = sub nsw i32 %27, %41, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %42, metadata !1658, metadata !DIExpression()), !dbg !1667
  %43 = mul nsw i32 %42, 10, !dbg !1678
  %44 = sext i32 %43 to i64, !dbg !1678
  %45 = mul nsw i64 %44, %44, !dbg !1678
  %46 = lshr exact i64 %45, 1, !dbg !1678
  %47 = add nuw nsw i64 %46, %35, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %47, metadata !1659, metadata !DIExpression()), !dbg !1669
  br label %48, !dbg !1680

; <label>:48:                                     ; preds = %25, %31, %39
  %49 = phi i64 [ 0, %25 ], [ %47, %39 ], [ %35, %31 ], !dbg !1681
  %50 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 5, !dbg !1682
  %51 = load i64, i64* %50, align 8, !dbg !1682, !tbaa !1626
  %52 = add nsw i64 %51, %49, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %52, metadata !1620, metadata !DIExpression()), !dbg !1684
  br i1 %22, label %53, label %60, !dbg !1685

; <label>:53:                                     ; preds = %48
  %54 = sub nsw i32 %27, %11, !dbg !1687
  %55 = mul nsw i32 %54, 10, !dbg !1687
  %56 = sext i32 %55 to i64, !dbg !1687
  %57 = mul nsw i64 %56, %56, !dbg !1687
  %58 = lshr exact i64 %57, 1, !dbg !1687
  %59 = add nsw i64 %58, %52, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %59, metadata !1620, metadata !DIExpression()), !dbg !1684
  br label %60, !dbg !1689

; <label>:60:                                     ; preds = %53, %48
  %61 = phi i64 [ %59, %53 ], [ %52, %48 ], !dbg !1646
  call void @llvm.dbg.value(metadata i64 %61, metadata !1620, metadata !DIExpression()), !dbg !1684
  %62 = icmp slt i64 %61, %28, !dbg !1690
  br i1 %62, label %63, label %64, !dbg !1691

; <label>:63:                                     ; preds = %60
  call void @llvm.dbg.value(metadata i64 %61, metadata !1621, metadata !DIExpression()), !dbg !1637
  store %struct.Word* %29, %struct.Word** %23, align 8, !dbg !1692, !tbaa !1358
  store i32 %27, i32* %24, align 4, !dbg !1693, !tbaa !1676
  br label %64, !dbg !1694

; <label>:64:                                     ; preds = %63, %60
  %65 = phi i64 [ %61, %63 ], [ %28, %60 ], !dbg !1695
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  br i1 %30, label %74, label %66, !dbg !1696

; <label>:66:                                     ; preds = %64
  %67 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 0, i32 2, !dbg !1697
  %68 = load i32, i32* %67, align 4, !dbg !1697, !tbaa !1571
  %69 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 1, !dbg !1698
  %70 = load i32, i32* %69, align 8, !dbg !1698, !tbaa !1527
  %71 = add i32 %68, %27, !dbg !1699
  %72 = add i32 %71, %70, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %72, metadata !1619, metadata !DIExpression()), !dbg !1641
  %73 = icmp slt i32 %72, %5, !dbg !1701
  br i1 %73, label %25, label %74, !dbg !1702, !llvm.loop !1703

; <label>:74:                                     ; preds = %64, %66
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i64 %65, metadata !1621, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !1705, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 4900, metadata !1710, metadata !DIExpression()), !dbg !1713
  %75 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1714
  br i1 %75, label %76, label %102, !dbg !1716

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 3, !dbg !1717
  %78 = load i8, i8* %77, align 8, !dbg !1717
  %79 = and i8 %78, 2, !dbg !1717
  %80 = icmp eq i8 %79, 0, !dbg !1720
  br i1 %80, label %85, label %81, !dbg !1721

; <label>:81:                                     ; preds = %76
  %82 = and i8 %78, 8, !dbg !1722
  %83 = icmp eq i8 %82, 0, !dbg !1725
  %84 = select i1 %83, i64 364900, i64 2400
  br label %102

; <label>:85:                                     ; preds = %76
  %86 = and i8 %78, 4, !dbg !1726
  %87 = icmp eq i8 %86, 0, !dbg !1728
  br i1 %87, label %88, label %102, !dbg !1729

; <label>:88:                                     ; preds = %85
  %89 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 1), !dbg !1730
  br i1 %89, label %90, label %102, !dbg !1732

; <label>:90:                                     ; preds = %88
  %91 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -3, i32 3, !dbg !1733
  %92 = load i8, i8* %91, align 8, !dbg !1733
  %93 = and i8 %92, 8, !dbg !1733
  %94 = icmp eq i8 %93, 0, !dbg !1734
  br i1 %94, label %102, label %95, !dbg !1735

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 1, !dbg !1736
  %97 = load i32, i32* %96, align 8, !dbg !1736, !tbaa !1527
  %98 = add nsw i32 %97, 2, !dbg !1736
  %99 = sext i32 %98 to i64, !dbg !1736
  %100 = sdiv i64 40000, %99, !dbg !1736
  %101 = add nsw i64 %100, 4900, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %101, metadata !1710, metadata !DIExpression()), !dbg !1713
  br label %102, !dbg !1738

; <label>:102:                                    ; preds = %95, %90, %88, %85, %81, %74
  %103 = phi i64 [ %101, %95 ], [ 4900, %90 ], [ 4900, %88 ], [ 4900, %74 ], [ %84, %81 ], [ 3300, %85 ], !dbg !1739
  call void @llvm.dbg.value(metadata i64 %103, metadata !1710, metadata !DIExpression()), !dbg !1713
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 3, !dbg !1740
  %105 = load i8, i8* %104, align 8, !dbg !1740
  %106 = and i8 %105, 1, !dbg !1740
  %107 = icmp eq i8 %106, 0, !dbg !1742
  br i1 %107, label %110, label %108, !dbg !1743

; <label>:108:                                    ; preds = %102
  %109 = add nsw i64 %103, -1600, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %109, metadata !1710, metadata !DIExpression()), !dbg !1713
  br label %118, !dbg !1745

; <label>:110:                                    ; preds = %102
  %111 = and i8 %105, 8, !dbg !1746
  %112 = icmp eq i8 %111, 0, !dbg !1748
  br i1 %112, label %118, label %113, !dbg !1749

; <label>:113:                                    ; preds = %110
  %114 = add nsw i32 %20, 2, !dbg !1750
  %115 = sext i32 %114 to i64, !dbg !1750
  %116 = sdiv i64 22500, %115, !dbg !1750
  %117 = add nsw i64 %116, %103, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %117, metadata !1710, metadata !DIExpression()), !dbg !1713
  br label %118, !dbg !1752

; <label>:118:                                    ; preds = %108, %110, %113
  %119 = phi i64 [ %109, %108 ], [ %117, %113 ], [ %103, %110 ], !dbg !1753
  call void @llvm.dbg.value(metadata i64 %119, metadata !1710, metadata !DIExpression()), !dbg !1713
  %120 = add nsw i64 %119, %65, !dbg !1754
  %121 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 5, !dbg !1755
  store i64 %120, i64* %121, align 8, !dbg !1756, !tbaa !1626
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !1617, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1631
  %122 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 -1, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.Word* %122, metadata !1617, metadata !DIExpression()), !dbg !1631
  %123 = icmp ult %struct.Word* %122, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1635
  br i1 %123, label %124, label %14, !dbg !1636, !llvm.loop !1757

; <label>:124:                                    ; preds = %118, %0
  store i32 %4, i32* %3, align 8, !dbg !1759, !tbaa !1527
  ret void, !dbg !1760
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @put_line(%struct.Word* readonly, i32) unnamed_addr #7 !dbg !1761 {
  call void @llvm.dbg.value(metadata %struct.Word* %0, metadata !1765, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %1, metadata !1766, metadata !DIExpression()), !dbg !1769
  store i32 0, i32* @out_column, align 4, !dbg !1770, !tbaa !859
  %3 = load i32, i32* @prefix_indent, align 4, !dbg !1771, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %3, metadata !1057, metadata !DIExpression()) #12, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %3, metadata !1060, metadata !DIExpression()) #12, !dbg !1774
  %4 = load i1, i1* @tabs, align 1
  br i1 %4, label %5, label %28, !dbg !1775

; <label>:5:                                      ; preds = %2
  %6 = sdiv i32 %3, 8, !dbg !1776
  %7 = shl nsw i32 %6, 3, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %7, metadata !1061, metadata !DIExpression()) #12, !dbg !1778
  %8 = icmp sgt i32 %3, 7, !dbg !1779
  br i1 %8, label %9, label %28, !dbg !1780

; <label>:9:                                      ; preds = %5, %22
  %10 = phi i32 [ %26, %22 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1075, metadata !DIExpression()) #12, !dbg !1781
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1783, !tbaa !720
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 5, !dbg !1783
  %13 = load i8*, i8** %12, align 8, !dbg !1783, !tbaa !1085
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 6, !dbg !1783
  %15 = load i8*, i8** %14, align 8, !dbg !1783, !tbaa !1089
  %16 = icmp ult i8* %13, %15, !dbg !1783
  br i1 %16, label %20, label %17, !dbg !1783, !prof !1090

; <label>:17:                                     ; preds = %9
  %18 = tail call i32 @__overflow(%struct._IO_FILE* %11, i32 9) #12, !dbg !1783
  %19 = load i32, i32* @out_column, align 4, !dbg !1784, !tbaa !859
  br label %22, !dbg !1783

; <label>:20:                                     ; preds = %9
  %21 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1783
  store i8* %21, i8** %12, align 8, !dbg !1783, !tbaa !1085
  store i8 9, i8* %13, align 1, !dbg !1783, !tbaa !869
  br label %22, !dbg !1783

; <label>:22:                                     ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %10, %20 ], !dbg !1784
  %24 = sdiv i32 %23, 8, !dbg !1785
  %25 = shl nsw i32 %24, 3, !dbg !1786
  %26 = add i32 %25, 8, !dbg !1786
  store i32 %26, i32* @out_column, align 4, !dbg !1787, !tbaa !859
  %27 = icmp slt i32 %26, %7, !dbg !1788
  br i1 %27, label %9, label %28, !dbg !1789

; <label>:28:                                     ; preds = %22, %5, %2
  %29 = phi i32 [ 0, %5 ], [ 0, %2 ], [ %26, %22 ], !dbg !1790
  %30 = icmp slt i32 %29, %3, !dbg !1791
  br i1 %30, label %31, label %48, !dbg !1792

; <label>:31:                                     ; preds = %28, %44
  %32 = phi i32 [ %46, %44 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1075, metadata !DIExpression()) #12, !dbg !1793
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1795, !tbaa !720
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !1795
  %35 = load i8*, i8** %34, align 8, !dbg !1795, !tbaa !1085
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !1795
  %37 = load i8*, i8** %36, align 8, !dbg !1795, !tbaa !1089
  %38 = icmp ult i8* %35, %37, !dbg !1795
  br i1 %38, label %42, label %39, !dbg !1795, !prof !1090

; <label>:39:                                     ; preds = %31
  %40 = tail call i32 @__overflow(%struct._IO_FILE* %33, i32 32) #12, !dbg !1795
  %41 = load i32, i32* @out_column, align 4, !dbg !1796, !tbaa !859
  br label %44, !dbg !1795

; <label>:42:                                     ; preds = %31
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1795
  store i8* %43, i8** %34, align 8, !dbg !1795, !tbaa !1085
  store i8 32, i8* %35, align 1, !dbg !1795, !tbaa !869
  br label %44, !dbg !1795

; <label>:44:                                     ; preds = %39, %42
  %45 = phi i32 [ %41, %39 ], [ %32, %42 ], !dbg !1796
  %46 = add nsw i32 %45, 1, !dbg !1796
  store i32 %46, i32* @out_column, align 4, !dbg !1796, !tbaa !859
  %47 = icmp slt i32 %46, %3, !dbg !1791
  br i1 %47, label %31, label %48, !dbg !1792, !llvm.loop !1105

; <label>:48:                                     ; preds = %44, %28
  %49 = load i8*, i8** @prefix, align 8, !dbg !1797, !tbaa !720
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1797, !tbaa !720
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !1797
  %52 = load i32, i32* @prefix_length, align 4, !dbg !1798, !tbaa !859
  %53 = load i32, i32* @out_column, align 4, !dbg !1799, !tbaa !859
  %54 = add nsw i32 %53, %52, !dbg !1799
  store i32 %54, i32* @out_column, align 4, !dbg !1799, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %1, metadata !1060, metadata !DIExpression()) #12, !dbg !1800
  %55 = load i1, i1* @tabs, align 1
  br i1 %55, label %56, label %82, !dbg !1802

; <label>:56:                                     ; preds = %48
  %57 = sdiv i32 %1, 8, !dbg !1803
  %58 = shl nsw i32 %57, 3, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %58, metadata !1061, metadata !DIExpression()) #12, !dbg !1805
  %59 = add nsw i32 %54, 1, !dbg !1806
  %60 = icmp slt i32 %59, %58, !dbg !1807
  %61 = icmp slt i32 %54, %58, !dbg !1808
  %62 = and i1 %61, %60, !dbg !1809
  br i1 %62, label %63, label %82, !dbg !1809

; <label>:63:                                     ; preds = %56, %76
  %64 = phi i32 [ %80, %76 ], [ %54, %56 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1075, metadata !DIExpression()) #12, !dbg !1810
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1812, !tbaa !720
  %66 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 5, !dbg !1812
  %67 = load i8*, i8** %66, align 8, !dbg !1812, !tbaa !1085
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 6, !dbg !1812
  %69 = load i8*, i8** %68, align 8, !dbg !1812, !tbaa !1089
  %70 = icmp ult i8* %67, %69, !dbg !1812
  br i1 %70, label %74, label %71, !dbg !1812, !prof !1090

; <label>:71:                                     ; preds = %63
  %72 = tail call i32 @__overflow(%struct._IO_FILE* %65, i32 9) #12, !dbg !1812
  %73 = load i32, i32* @out_column, align 4, !dbg !1813, !tbaa !859
  br label %76, !dbg !1812

; <label>:74:                                     ; preds = %63
  %75 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1812
  store i8* %75, i8** %66, align 8, !dbg !1812, !tbaa !1085
  store i8 9, i8* %67, align 1, !dbg !1812, !tbaa !869
  br label %76, !dbg !1812

; <label>:76:                                     ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %64, %74 ], !dbg !1813
  %78 = sdiv i32 %77, 8, !dbg !1814
  %79 = shl nsw i32 %78, 3, !dbg !1815
  %80 = add i32 %79, 8, !dbg !1815
  store i32 %80, i32* @out_column, align 4, !dbg !1816, !tbaa !859
  %81 = icmp slt i32 %80, %58, !dbg !1808
  br i1 %81, label %63, label %82, !dbg !1817

; <label>:82:                                     ; preds = %76, %56, %48
  %83 = phi i32 [ %54, %56 ], [ %54, %48 ], [ %80, %76 ], !dbg !1818
  %84 = icmp slt i32 %83, %1, !dbg !1819
  br i1 %84, label %85, label %102, !dbg !1820

; <label>:85:                                     ; preds = %82, %98
  %86 = phi i32 [ %100, %98 ], [ %83, %82 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1075, metadata !DIExpression()) #12, !dbg !1821
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1823, !tbaa !720
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 5, !dbg !1823
  %89 = load i8*, i8** %88, align 8, !dbg !1823, !tbaa !1085
  %90 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 6, !dbg !1823
  %91 = load i8*, i8** %90, align 8, !dbg !1823, !tbaa !1089
  %92 = icmp ult i8* %89, %91, !dbg !1823
  br i1 %92, label %96, label %93, !dbg !1823, !prof !1090

; <label>:93:                                     ; preds = %85
  %94 = tail call i32 @__overflow(%struct._IO_FILE* %87, i32 32) #12, !dbg !1823
  %95 = load i32, i32* @out_column, align 4, !dbg !1824, !tbaa !859
  br label %98, !dbg !1823

; <label>:96:                                     ; preds = %85
  %97 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1823
  store i8* %97, i8** %88, align 8, !dbg !1823, !tbaa !1085
  store i8 32, i8* %89, align 1, !dbg !1823, !tbaa !869
  br label %98, !dbg !1823

; <label>:98:                                     ; preds = %93, %96
  %99 = phi i32 [ %95, %93 ], [ %86, %96 ], !dbg !1824
  %100 = add nsw i32 %99, 1, !dbg !1824
  store i32 %100, i32* @out_column, align 4, !dbg !1824, !tbaa !859
  %101 = icmp slt i32 %100, %1, !dbg !1819
  br i1 %101, label %85, label %102, !dbg !1820, !llvm.loop !1105

; <label>:102:                                    ; preds = %98, %82
  %103 = phi i32 [ %83, %82 ], [ %100, %98 ]
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %0, i64 0, i32 6, !dbg !1825
  %105 = load %struct.Word*, %struct.Word** %104, align 8, !dbg !1825, !tbaa !1358
  %106 = getelementptr inbounds %struct.Word, %struct.Word* %105, i64 -1, !dbg !1826
  call void @llvm.dbg.value(metadata %struct.Word* %106, metadata !1767, metadata !DIExpression()), !dbg !1827
  br label %107, !dbg !1828

; <label>:107:                                    ; preds = %194, %102
  %108 = phi i32 [ %103, %102 ], [ %195, %194 ]
  %109 = phi %struct.Word* [ %0, %102 ], [ %196, %194 ]
  call void @llvm.dbg.value(metadata %struct.Word* %109, metadata !1765, metadata !DIExpression()), !dbg !1768
  %110 = icmp eq %struct.Word* %109, %106, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.Word* %109, metadata !1832, metadata !DIExpression()) #12, !dbg !1837
  %111 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 0, i32 1, !dbg !1839
  %112 = load i32, i32* %111, align 8, !dbg !1839, !tbaa !1527
  call void @llvm.dbg.value(metadata i32 %112, metadata !1836, metadata !DIExpression()) #12, !dbg !1841
  %113 = icmp eq i32 %112, 0, !dbg !1842
  br i1 %113, label %139, label %114, !dbg !1844

; <label>:114:                                    ; preds = %107
  %115 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 0, i32 0, !dbg !1845
  %116 = load i8*, i8** %115, align 8, !dbg !1845, !tbaa !1468
  call void @llvm.dbg.value(metadata i8* %116, metadata !1835, metadata !DIExpression()) #12, !dbg !1846
  call void @llvm.dbg.value(metadata i8* %116, metadata !1835, metadata !DIExpression()) #12, !dbg !1846
  br label %117, !dbg !1847

; <label>:117:                                    ; preds = %133, %114
  %118 = phi i32 [ %134, %133 ], [ %112, %114 ]
  %119 = phi i8* [ %120, %133 ], [ %116, %114 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !1836, metadata !DIExpression()) #12, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %119, metadata !1835, metadata !DIExpression()) #12, !dbg !1846
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1847
  %121 = load i8, i8* %119, align 1, !dbg !1847, !tbaa !869
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1848, !tbaa !720
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 5, !dbg !1848
  %124 = load i8*, i8** %123, align 8, !dbg !1848, !tbaa !1085
  %125 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 6, !dbg !1848
  %126 = load i8*, i8** %125, align 8, !dbg !1848, !tbaa !1089
  %127 = icmp ult i8* %124, %126, !dbg !1848
  br i1 %127, label %131, label %128, !dbg !1848, !prof !1090

; <label>:128:                                    ; preds = %117
  %129 = zext i8 %121 to i32, !dbg !1847
  %130 = tail call i32 @__overflow(%struct._IO_FILE* %122, i32 %129) #12, !dbg !1848
  br label %133, !dbg !1848

; <label>:131:                                    ; preds = %117
  %132 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !1848
  store i8* %132, i8** %123, align 8, !dbg !1848, !tbaa !1085
  store i8 %121, i8* %124, align 1, !dbg !1848, !tbaa !869
  br label %133, !dbg !1848

; <label>:133:                                    ; preds = %131, %128
  %134 = add nsw i32 %118, -1, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %134, metadata !1836, metadata !DIExpression()) #12, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %120, metadata !1835, metadata !DIExpression()) #12, !dbg !1846
  %135 = icmp eq i32 %134, 0, !dbg !1842
  br i1 %135, label %136, label %117, !dbg !1844, !llvm.loop !1851

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %111, align 8, !dbg !1854, !tbaa !1527
  %138 = load i32, i32* @out_column, align 4, !dbg !1855, !tbaa !859
  br label %139, !dbg !1854

; <label>:139:                                    ; preds = %107, %136
  %140 = phi i32 [ %138, %136 ], [ %108, %107 ], !dbg !1855
  %141 = phi i32 [ %137, %136 ], [ 0, %107 ], !dbg !1854
  %142 = add nsw i32 %140, %141, !dbg !1855
  store i32 %142, i32* @out_column, align 4, !dbg !1855, !tbaa !859
  br i1 %110, label %197, label %143, !dbg !1856

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 0, i32 2, !dbg !1857
  %145 = load i32, i32* %144, align 4, !dbg !1857, !tbaa !1571
  call void @llvm.dbg.value(metadata i32 %145, metadata !1057, metadata !DIExpression()) #12, !dbg !1859
  %146 = add nsw i32 %145, %142, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %146, metadata !1060, metadata !DIExpression()) #12, !dbg !1862
  %147 = load i1, i1* @tabs, align 1
  br i1 %147, label %148, label %174, !dbg !1863

; <label>:148:                                    ; preds = %143
  %149 = sdiv i32 %146, 8, !dbg !1864
  %150 = shl nsw i32 %149, 3, !dbg !1865
  call void @llvm.dbg.value(metadata i32 %150, metadata !1061, metadata !DIExpression()) #12, !dbg !1866
  %151 = add nsw i32 %142, 1, !dbg !1867
  %152 = icmp slt i32 %151, %150, !dbg !1868
  %153 = icmp slt i32 %142, %150, !dbg !1869
  %154 = and i1 %152, %153, !dbg !1870
  br i1 %154, label %155, label %174, !dbg !1870

; <label>:155:                                    ; preds = %148, %168
  %156 = phi i32 [ %172, %168 ], [ %142, %148 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1075, metadata !DIExpression()) #12, !dbg !1871
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1873, !tbaa !720
  %158 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %157, i64 0, i32 5, !dbg !1873
  %159 = load i8*, i8** %158, align 8, !dbg !1873, !tbaa !1085
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %157, i64 0, i32 6, !dbg !1873
  %161 = load i8*, i8** %160, align 8, !dbg !1873, !tbaa !1089
  %162 = icmp ult i8* %159, %161, !dbg !1873
  br i1 %162, label %166, label %163, !dbg !1873, !prof !1090

; <label>:163:                                    ; preds = %155
  %164 = tail call i32 @__overflow(%struct._IO_FILE* %157, i32 9) #12, !dbg !1873
  %165 = load i32, i32* @out_column, align 4, !dbg !1874, !tbaa !859
  br label %168, !dbg !1873

; <label>:166:                                    ; preds = %155
  %167 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !1873
  store i8* %167, i8** %158, align 8, !dbg !1873, !tbaa !1085
  store i8 9, i8* %159, align 1, !dbg !1873, !tbaa !869
  br label %168, !dbg !1873

; <label>:168:                                    ; preds = %166, %163
  %169 = phi i32 [ %165, %163 ], [ %156, %166 ], !dbg !1874
  %170 = sdiv i32 %169, 8, !dbg !1875
  %171 = shl nsw i32 %170, 3, !dbg !1876
  %172 = add i32 %171, 8, !dbg !1876
  store i32 %172, i32* @out_column, align 4, !dbg !1877, !tbaa !859
  %173 = icmp slt i32 %172, %150, !dbg !1869
  br i1 %173, label %155, label %174, !dbg !1878

; <label>:174:                                    ; preds = %168, %148, %143
  %175 = phi i32 [ %142, %148 ], [ %142, %143 ], [ %172, %168 ]
  %176 = icmp slt i32 %175, %146, !dbg !1879
  br i1 %176, label %177, label %194, !dbg !1880

; <label>:177:                                    ; preds = %174, %190
  %178 = phi i32 [ %192, %190 ], [ %175, %174 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1075, metadata !DIExpression()) #12, !dbg !1881
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1883, !tbaa !720
  %180 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 5, !dbg !1883
  %181 = load i8*, i8** %180, align 8, !dbg !1883, !tbaa !1085
  %182 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 6, !dbg !1883
  %183 = load i8*, i8** %182, align 8, !dbg !1883, !tbaa !1089
  %184 = icmp ult i8* %181, %183, !dbg !1883
  br i1 %184, label %188, label %185, !dbg !1883, !prof !1090

; <label>:185:                                    ; preds = %177
  %186 = tail call i32 @__overflow(%struct._IO_FILE* %179, i32 32) #12, !dbg !1883
  %187 = load i32, i32* @out_column, align 4, !dbg !1884, !tbaa !859
  br label %190, !dbg !1883

; <label>:188:                                    ; preds = %177
  %189 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !1883
  store i8* %189, i8** %180, align 8, !dbg !1883, !tbaa !1085
  store i8 32, i8* %181, align 1, !dbg !1883, !tbaa !869
  br label %190, !dbg !1883

; <label>:190:                                    ; preds = %185, %188
  %191 = phi i32 [ %187, %185 ], [ %178, %188 ], !dbg !1884
  %192 = add nsw i32 %191, 1, !dbg !1884
  store i32 %192, i32* @out_column, align 4, !dbg !1884, !tbaa !859
  %193 = icmp slt i32 %192, %146, !dbg !1879
  br i1 %193, label %177, label %194, !dbg !1880, !llvm.loop !1105

; <label>:194:                                    ; preds = %190, %174
  %195 = phi i32 [ %175, %174 ], [ %192, %190 ]
  %196 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 1, !dbg !1885
  call void @llvm.dbg.value(metadata %struct.Word* %196, metadata !1765, metadata !DIExpression()), !dbg !1768
  br label %107, !dbg !1886, !llvm.loop !1887

; <label>:197:                                    ; preds = %139
  store i32 %142, i32* @last_line_length, align 4, !dbg !1889, !tbaa !859
  call void @llvm.dbg.value(metadata i32 10, metadata !1075, metadata !DIExpression()) #12, !dbg !1890
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1892, !tbaa !720
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 5, !dbg !1892
  %200 = load i8*, i8** %199, align 8, !dbg !1892, !tbaa !1085
  %201 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 6, !dbg !1892
  %202 = load i8*, i8** %201, align 8, !dbg !1892, !tbaa !1089
  %203 = icmp ult i8* %200, %202, !dbg !1892
  br i1 %203, label %206, label %204, !dbg !1892, !prof !1090

; <label>:204:                                    ; preds = %197
  %205 = tail call i32 @__overflow(%struct._IO_FILE* %198, i32 10) #12, !dbg !1892
  br label %208, !dbg !1892

; <label>:206:                                    ; preds = %197
  %207 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1892
  store i8* %207, i8** %199, align 8, !dbg !1892, !tbaa !1085
  store i8 10, i8* %200, align 1, !dbg !1892, !tbaa !869
  br label %208, !dbg !1892

; <label>:208:                                    ; preds = %204, %206
  ret void, !dbg !1893
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #7 !dbg !1894 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1900, !tbaa !720
  %2 = icmp eq %struct.Word* %1, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1902
  br i1 %2, label %3, label %8, !dbg !1903

; <label>:3:                                      ; preds = %0
  %4 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1904, !tbaa !720
  %5 = sub i64 %4, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !1904
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1904, !tbaa !720
  %7 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i64 1, i64 %5, %struct._IO_FILE* %6), !dbg !1904
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1906, !tbaa !720
  br label %76, !dbg !1907

; <label>:8:                                      ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !1908
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !1896, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1899, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), metadata !1897, metadata !DIExpression(DW_OP_deref)), !dbg !1911
  %9 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1912, !tbaa !1358
  call void @llvm.dbg.value(metadata %struct.Word* %9, metadata !1897, metadata !DIExpression()), !dbg !1911
  %10 = icmp eq %struct.Word* %9, %1, !dbg !1915
  br i1 %10, label %31, label %11, !dbg !1916

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.Word, %struct.Word* %9, i64 0, i32 5
  %13 = load i64, i64* %12, align 8, !dbg !1917, !tbaa !1626
  br label %14, !dbg !1917

; <label>:14:                                     ; preds = %11, %14
  %15 = phi i64 [ %22, %14 ], [ %13, %11 ], !dbg !1917
  %16 = phi %struct.Word* [ %20, %14 ], [ %9, %11 ]
  %17 = phi i64 [ %29, %14 ], [ 9223372036854775807, %11 ]
  %18 = phi %struct.Word* [ %25, %14 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !1899, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata %struct.Word* %18, metadata !1896, metadata !DIExpression()), !dbg !1909
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 0, i32 6, !dbg !1920
  %20 = load %struct.Word*, %struct.Word** %19, align 8, !dbg !1920, !tbaa !1358
  %21 = getelementptr inbounds %struct.Word, %struct.Word* %20, i64 0, i32 5, !dbg !1921
  %22 = load i64, i64* %21, align 8, !dbg !1921, !tbaa !1626
  %23 = sub nsw i64 %15, %22, !dbg !1922
  %24 = icmp slt i64 %23, %17, !dbg !1923
  %25 = select i1 %24, %struct.Word* %16, %struct.Word* %18, !dbg !1924
  %26 = select i1 %24, i64 %23, i64 %17, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %26, metadata !1899, metadata !DIExpression()), !dbg !1910
  %27 = icmp slt i64 %26, 9223372036854775799, !dbg !1925
  %28 = add nsw i64 %26, 9, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %28, metadata !1899, metadata !DIExpression()), !dbg !1910
  %29 = select i1 %27, i64 %28, i64 %26, !dbg !1928
  call void @llvm.dbg.value(metadata %struct.Word** %19, metadata !1897, metadata !DIExpression(DW_OP_deref)), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %29, metadata !1899, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata %struct.Word* %25, metadata !1896, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.Word* %20, metadata !1897, metadata !DIExpression()), !dbg !1911
  %30 = icmp eq %struct.Word* %20, %1, !dbg !1915
  br i1 %30, label %31, label %14, !dbg !1916, !llvm.loop !1929

; <label>:31:                                     ; preds = %14, %8
  %32 = phi %struct.Word* [ %1, %8 ], [ %25, %14 ], !dbg !1931
  call void @llvm.dbg.value(metadata %struct.Word* %32, metadata !1896, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1344, metadata !DIExpression()) #12, !dbg !1933
  %33 = load i32, i32* @first_indent, align 4, !dbg !1935, !tbaa !859
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %33) #12, !dbg !1936
  call void @llvm.dbg.value(metadata %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), metadata !1349, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1937
  %34 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1938, !tbaa !1358
  call void @llvm.dbg.value(metadata %struct.Word* %34, metadata !1349, metadata !DIExpression()) #12, !dbg !1937
  %35 = icmp eq %struct.Word* %34, %32, !dbg !1939
  br i1 %35, label %42, label %36, !dbg !1940

; <label>:36:                                     ; preds = %31, %36
  %37 = phi %struct.Word* [ %40, %36 ], [ %34, %31 ]
  %38 = load i32, i32* @other_indent, align 4, !dbg !1941, !tbaa !859
  tail call fastcc void @put_line(%struct.Word* %37, i32 %38) #12, !dbg !1942
  %39 = getelementptr inbounds %struct.Word, %struct.Word* %37, i64 0, i32 6, !dbg !1943
  call void @llvm.dbg.value(metadata %struct.Word** %39, metadata !1349, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1937
  %40 = load %struct.Word*, %struct.Word** %39, align 8, !dbg !1938, !tbaa !1358
  call void @llvm.dbg.value(metadata %struct.Word* %40, metadata !1349, metadata !DIExpression()) #12, !dbg !1937
  %41 = icmp eq %struct.Word* %40, %32, !dbg !1939
  br i1 %41, label %42, label %36, !dbg !1940, !llvm.loop !1365

; <label>:42:                                     ; preds = %36, %31
  %43 = getelementptr inbounds %struct.Word, %struct.Word* %32, i64 0, i32 0, !dbg !1944
  %44 = load i8*, i8** %43, align 8, !dbg !1944, !tbaa !1468
  %45 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1945, !tbaa !720
  %46 = ptrtoint i8* %44 to i64, !dbg !1946
  %47 = sub i64 %45, %46, !dbg !1946
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8* align 1 %44, i64 %47, i1 false), !dbg !1947
  %48 = bitcast %struct.Word* %32 to i64*, !dbg !1948
  %49 = load i64, i64* %48, align 8, !dbg !1948, !tbaa !1468
  %50 = sub i64 %49, sext (i32 ptrtoint ([5000 x i8]* @parabuf to i32) to i64), !dbg !1949
  %51 = inttoptr i64 %45 to i8*, !dbg !1950
  %52 = shl i64 %50, 32, !dbg !1950
  %53 = ashr exact i64 %52, 32, !dbg !1950
  %54 = sub nsw i64 0, %53, !dbg !1950
  %55 = getelementptr inbounds i8, i8* %51, i64 %54, !dbg !1950
  store i8* %55, i8** @wptr, align 8, !dbg !1950, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1897, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata %struct.Word* %32, metadata !1897, metadata !DIExpression()), !dbg !1911
  %56 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1951, !tbaa !720
  %57 = icmp ugt %struct.Word* %32, %56, !dbg !1954
  br i1 %57, label %66, label %58, !dbg !1955

; <label>:58:                                     ; preds = %42, %58
  %59 = phi %struct.Word* [ %63, %58 ], [ %32, %42 ]
  call void @llvm.dbg.value(metadata %struct.Word* %59, metadata !1897, metadata !DIExpression()), !dbg !1911
  %60 = getelementptr inbounds %struct.Word, %struct.Word* %59, i64 0, i32 0, !dbg !1956
  %61 = load i8*, i8** %60, align 8, !dbg !1957, !tbaa !1468
  %62 = getelementptr inbounds i8, i8* %61, i64 %54, !dbg !1957
  store i8* %62, i8** %60, align 8, !dbg !1957, !tbaa !1468
  %63 = getelementptr inbounds %struct.Word, %struct.Word* %59, i64 1, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.Word* %63, metadata !1897, metadata !DIExpression()), !dbg !1911
  %64 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1951, !tbaa !720
  %65 = icmp ugt %struct.Word* %63, %64, !dbg !1954
  br i1 %65, label %66, label %58, !dbg !1955, !llvm.loop !1959

; <label>:66:                                     ; preds = %58, %42
  %67 = phi %struct.Word* [ %56, %42 ], [ %64, %58 ], !dbg !1951
  %68 = bitcast %struct.Word* %32 to i8*, !dbg !1961
  %69 = ptrtoint %struct.Word* %67 to i64, !dbg !1962
  %70 = ptrtoint %struct.Word* %32 to i64, !dbg !1962
  %71 = sub i64 40, %70, !dbg !1962
  %72 = add i64 %71, %69, !dbg !1963
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 16 bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), i8* align 8 %68, i64 %72, i1 false), !dbg !1961
  %73 = sub i64 %70, ptrtoint ([1000 x %struct.Word]* @unused_word_type to i64), !dbg !1964
  %74 = sdiv i64 %73, -40, !dbg !1965
  %75 = getelementptr inbounds %struct.Word, %struct.Word* %67, i64 %74, !dbg !1965
  store %struct.Word* %75, %struct.Word** @word_limit, align 8, !dbg !1965, !tbaa !720
  br label %76, !dbg !1966

; <label>:76:                                     ; preds = %66, %3
  ret void, !dbg !1966
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1969, metadata !DIExpression()), !dbg !1970
  store i8* %0, i8** @file_name, align 8, !dbg !1971, !tbaa !720
  ret void, !dbg !1972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1973 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1975, metadata !DIExpression()), !dbg !1976
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1977, !tbaa !1978
  ret void, !dbg !1980
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1981 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1986, !tbaa !720
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1987
  %3 = icmp eq i32 %2, 0, !dbg !1988
  br i1 %3, label %22, label %4, !dbg !1989

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1990, !tbaa !1978, !range !1991
  %6 = icmp eq i8 %5, 0, !dbg !1990
  br i1 %6, label %11, label %7, !dbg !1992

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1993
  %9 = load i32, i32* %8, align 4, !dbg !1993, !tbaa !859
  %10 = icmp eq i32 %9, 32, !dbg !1994
  br i1 %10, label %22, label %11, !dbg !1995

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #12, !dbg !1996
  call void @llvm.dbg.value(metadata i8* %12, metadata !1983, metadata !DIExpression()), !dbg !1997
  %13 = load i8*, i8** @file_name, align 8, !dbg !1998, !tbaa !720
  %14 = icmp eq i8* %13, null, !dbg !1998
  %15 = tail call i32* @__errno_location() #17, !dbg !2000
  %16 = load i32, i32* %15, align 4, !dbg !2000, !tbaa !859
  br i1 %14, label %19, label %17, !dbg !2001

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !2002
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !2003
  br label %20, !dbg !2003

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #12, !dbg !2004
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2005, !tbaa !859
  tail call void @_exit(i32 %21) #15, !dbg !2006
  unreachable, !dbg !2006

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2007, !tbaa !720
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !2009
  %25 = icmp eq i32 %24, 0, !dbg !2010
  br i1 %25, label %28, label %26, !dbg !2011

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2012, !tbaa !859
  tail call void @_exit(i32 %27) #15, !dbg !2013
  unreachable, !dbg !2013

; <label>:28:                                     ; preds = %22
  ret void, !dbg !2014
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !2015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2023, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %1, metadata !2024, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i64 %2, metadata !2025, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %3, metadata !2026, metadata !DIExpression()), !dbg !2032
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %5, metadata !2027, metadata !DIExpression()), !dbg !2033
  ret void, !dbg !2034
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !2035 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2073, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i32 %1, metadata !2074, metadata !DIExpression()), !dbg !2076
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2077
  br i1 %3, label %7, label %4, !dbg !2079

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %5, metadata !2023, metadata !DIExpression()) #12, !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, metadata !2024, metadata !DIExpression()) #12, !dbg !2083
  call void @llvm.dbg.value(metadata i64 0, metadata !2025, metadata !DIExpression()) #12, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %1, metadata !2026, metadata !DIExpression()) #12, !dbg !2085
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !2086
  call void @llvm.dbg.value(metadata i32 %6, metadata !2027, metadata !DIExpression()) #12, !dbg !2086
  br label %7, !dbg !2087

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2088
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2089 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2091, metadata !DIExpression()), !dbg !2094
  %2 = icmp eq i8* %0, null, !dbg !2095
  br i1 %2, label %3, label %6, !dbg !2097

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2098, !tbaa !720
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2100
  tail call void @abort() #15, !dbg !2101
  unreachable, !dbg !2101

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #10, !dbg !2102
  call void @llvm.dbg.value(metadata i8* %7, metadata !2092, metadata !DIExpression()), !dbg !2103
  %8 = icmp eq i8* %7, null, !dbg !2104
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2105
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2106
  call void @llvm.dbg.value(metadata i8* %10, metadata !2093, metadata !DIExpression()), !dbg !2107
  %11 = ptrtoint i8* %10 to i64, !dbg !2108
  %12 = ptrtoint i8* %0 to i64, !dbg !2108
  %13 = sub i64 %11, %12, !dbg !2108
  %14 = icmp sgt i64 %13, 6, !dbg !2110
  br i1 %14, label %15, label %24, !dbg !2111

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2112
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #10, !dbg !2113
  %18 = icmp eq i32 %17, 0, !dbg !2114
  br i1 %18, label %19, label %24, !dbg !2115

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2091, metadata !DIExpression()), !dbg !2094
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #10, !dbg !2116
  %21 = icmp eq i32 %20, 0, !dbg !2119
  br i1 %21, label %22, label %24, !dbg !2120

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2121
  call void @llvm.dbg.value(metadata i8* %23, metadata !2091, metadata !DIExpression()), !dbg !2094
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2123, !tbaa !720
  br label %24, !dbg !2124

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2091, metadata !DIExpression()), !dbg !2094
  store i8* %25, i8** @program_name, align 8, !dbg !2125, !tbaa !720
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2126, !tbaa !720
  ret void, !dbg !2127
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2128 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2133, metadata !DIExpression()), !dbg !2136
  %2 = tail call i32* @__errno_location() #17, !dbg !2137
  %3 = load i32, i32* %2, align 4, !dbg !2137, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %3, metadata !2134, metadata !DIExpression()), !dbg !2138
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2139
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2139
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2139
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !2140
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2135, metadata !DIExpression()), !dbg !2141
  store i32 %3, i32* %2, align 4, !dbg !2142, !tbaa !859
  ret %struct.quoting_options* %8, !dbg !2143
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !2144 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2150, metadata !DIExpression()), !dbg !2151
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2152
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2152
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2153
  %5 = load i32, i32* %4, align 8, !dbg !2153, !tbaa !2154
  ret i32 %5, !dbg !2156
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2157 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1, metadata !2162, metadata !DIExpression()), !dbg !2164
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2165
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2165
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2166
  store i32 %1, i32* %5, align 8, !dbg !2167, !tbaa !2154
  ret void, !dbg !2168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2169 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2173, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %1, metadata !2174, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %2, metadata !2175, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %1, metadata !2176, metadata !DIExpression()), !dbg !2184
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2185
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2185
  %6 = lshr i8 %1, 5, !dbg !2186
  %7 = zext i8 %6 to i64, !dbg !2186
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2187
  call void @llvm.dbg.value(metadata i32* %8, metadata !2177, metadata !DIExpression()), !dbg !2188
  %9 = and i8 %1, 31, !dbg !2189
  %10 = zext i8 %9 to i32, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %10, metadata !2179, metadata !DIExpression()), !dbg !2190
  %11 = load i32, i32* %8, align 4, !dbg !2191, !tbaa !859
  %12 = lshr i32 %11, %10, !dbg !2192
  %13 = and i32 %12, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %13, metadata !2180, metadata !DIExpression()), !dbg !2194
  %14 = and i32 %2, 1, !dbg !2195
  %15 = xor i32 %13, %14, !dbg !2196
  %16 = shl i32 %15, %10, !dbg !2197
  %17 = xor i32 %16, %11, !dbg !2198
  store i32 %17, i32* %8, align 4, !dbg !2198, !tbaa !859
  ret i32 %13, !dbg !2199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2208
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2209
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2211
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2204, metadata !DIExpression()), !dbg !2207
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2212
  %6 = load i32, i32* %5, align 4, !dbg !2212, !tbaa !2213
  call void @llvm.dbg.value(metadata i32 %6, metadata !2206, metadata !DIExpression()), !dbg !2214
  store i32 %1, i32* %5, align 4, !dbg !2215, !tbaa !2213
  ret i32 %6, !dbg !2216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2217 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2221, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %1, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %2, metadata !2223, metadata !DIExpression()), !dbg !2226
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2227
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2229
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2221, metadata !DIExpression()), !dbg !2224
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2230
  store i32 10, i32* %6, align 8, !dbg !2231, !tbaa !2154
  %7 = icmp ne i8* %1, null, !dbg !2232
  %8 = icmp ne i8* %2, null, !dbg !2234
  %9 = and i1 %7, %8, !dbg !2235
  br i1 %9, label %11, label %10, !dbg !2235

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2236
  unreachable, !dbg !2236

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2237
  store i8* %1, i8** %12, align 8, !dbg !2238, !tbaa !2239
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2240
  store i8* %2, i8** %13, align 8, !dbg !2241, !tbaa !2242
  ret void, !dbg !2243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2248, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i64 %1, metadata !2249, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8* %2, metadata !2250, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i64 %3, metadata !2251, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2252, metadata !DIExpression()), !dbg !2260
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2261
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2253, metadata !DIExpression()), !dbg !2262
  %8 = tail call i32* @__errno_location() #17, !dbg !2263
  %9 = load i32, i32* %8, align 4, !dbg !2263, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %9, metadata !2254, metadata !DIExpression()), !dbg !2264
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2265
  %11 = load i32, i32* %10, align 8, !dbg !2265, !tbaa !2154
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2266
  %13 = load i32, i32* %12, align 4, !dbg !2266, !tbaa !2213
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2267
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2268
  %16 = load i8*, i8** %15, align 8, !dbg !2268, !tbaa !2239
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2269
  %18 = load i8*, i8** %17, align 8, !dbg !2269, !tbaa !2242
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %19, metadata !2255, metadata !DIExpression()), !dbg !2271
  store i32 %9, i32* %8, align 4, !dbg !2272, !tbaa !859
  ret i64 %19, !dbg !2273
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2274 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2280, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i64 %1, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %2, metadata !2282, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %3, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %4, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %5, metadata !2285, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32* %6, metadata !2286, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8* %7, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %8, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 0, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 0, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* null, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 0, metadata !2293, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2357
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !2358
  %14 = icmp eq i64 %13, 1, !dbg !2359
  %15 = lshr i32 %5, 1, !dbg !2360
  %16 = trunc i32 %15 to i8, !dbg !2360
  %17 = and i8 %16, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i8 %17, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2299, metadata !DIExpression()), !dbg !2363
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2364

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2354
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2355
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2356
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2357
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2365
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2361
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2362
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2363
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %39, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %38, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %37, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %36, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i64 %35, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %34, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %33, metadata !2293, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %32, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %31, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 0, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8* %30, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %29, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %28, metadata !2284, metadata !DIExpression()), !dbg !2348
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
  ], !dbg !2367

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8 1, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %36, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 5, metadata !2284, metadata !DIExpression()), !dbg !2348
  br label %93, !dbg !2368

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 5, metadata !2284, metadata !DIExpression()), !dbg !2348
  %43 = and i8 %36, 1, !dbg !2369
  %44 = icmp eq i8 %43, 0, !dbg !2369
  br i1 %44, label %45, label %93, !dbg !2368

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2371
  br i1 %46, label %93, label %47, !dbg !2374

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2371, !tbaa !869
  br label %93, !dbg !2371

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %28), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %49, metadata !2287, metadata !DIExpression()), !dbg !2351
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %28), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %50, metadata !2288, metadata !DIExpression()), !dbg !2352
  br label %51, !dbg !2380

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %52, metadata !2287, metadata !DIExpression()), !dbg !2351
  %54 = and i8 %36, 1, !dbg !2381
  %55 = icmp eq i8 %54, 0, !dbg !2381
  br i1 %55, label %56, label %71, !dbg !2383

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 0, metadata !2290, metadata !DIExpression()), !dbg !2353
  %57 = load i8, i8* %52, align 1, !dbg !2384, !tbaa !869
  %58 = icmp eq i8 %57, 0, !dbg !2387
  br i1 %58, label %71, label %59, !dbg !2387

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %62, metadata !2290, metadata !DIExpression()), !dbg !2353
  %63 = icmp ult i64 %62, %40, !dbg !2388
  br i1 %63, label %64, label %66, !dbg !2391

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2388
  store i8 %60, i8* %65, align 1, !dbg !2388, !tbaa !869
  br label %66, !dbg !2388

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2391
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2392
  call void @llvm.dbg.value(metadata i8* %68, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %67, metadata !2290, metadata !DIExpression()), !dbg !2353
  %69 = load i8, i8* %68, align 1, !dbg !2384, !tbaa !869
  %70 = icmp eq i8 %69, 0, !dbg !2387
  br i1 %70, label %71, label %59, !dbg !2387, !llvm.loop !2393

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2353
  call void @llvm.dbg.value(metadata i64 %72, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 1, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %53, metadata !2292, metadata !DIExpression()), !dbg !2355
  %73 = call i64 @strlen(i8* %53) #10, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %73, metadata !2293, metadata !DIExpression()), !dbg !2356
  br label %93, !dbg !2396

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2294, metadata !DIExpression()), !dbg !2357
  br label %75, !dbg !2397

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2365
  call void @llvm.dbg.value(metadata i8 %76, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 1, metadata !2296, metadata !DIExpression()), !dbg !2360
  br label %77, !dbg !2398

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2357
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2365
  call void @llvm.dbg.value(metadata i8 %79, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %78, metadata !2294, metadata !DIExpression()), !dbg !2357
  %80 = and i8 %79, 1, !dbg !2399
  %81 = icmp eq i8 %80, 0, !dbg !2399
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2401
  br label %83, !dbg !2401

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2402
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2360
  call void @llvm.dbg.value(metadata i8 %85, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %84, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 2, metadata !2284, metadata !DIExpression()), !dbg !2348
  %86 = and i8 %85, 1, !dbg !2403
  %87 = icmp eq i8 %86, 0, !dbg !2403
  br i1 %87, label %88, label %93, !dbg !2405

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2406
  br i1 %89, label %93, label %90, !dbg !2409

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2406, !tbaa !869
  br label %93, !dbg !2406

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2296, metadata !DIExpression()), !dbg !2360
  br label %93, !dbg !2410

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2411
  unreachable, !dbg !2411

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2353
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], !dbg !2365
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2365
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2365
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %101, metadata !2296, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %99, metadata !2293, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %97, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %94, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i64 0, metadata !2289, metadata !DIExpression()), !dbg !2413
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
  br label %121, !dbg !2414

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2415
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2353
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2354
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2361
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2362
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2363
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %125, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %122, metadata !2289, metadata !DIExpression()), !dbg !2413
  %130 = icmp eq i64 %125, -1, !dbg !2416
  br i1 %130, label %131, label %135, !dbg !2417

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2418
  %133 = load i8, i8* %132, align 1, !dbg !2418, !tbaa !869
  %134 = icmp eq i8 %133, 0, !dbg !2419
  br i1 %134, label %617, label %137, !dbg !2420

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2421
  br i1 %136, label %617, label %137, !dbg !2420

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2424
  br i1 %107, label %138, label %153, !dbg !2425

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2427
  %140 = and i1 %108, %130, !dbg !2428
  br i1 %140, label %141, label %143, !dbg !2428

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #10, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %142, metadata !2283, metadata !DIExpression()), !dbg !2347
  br label %143, !dbg !2430

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2283, metadata !DIExpression()), !dbg !2347
  %145 = icmp ugt i64 %139, %144, !dbg !2431
  br i1 %145, label %153, label %146, !dbg !2432

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2433
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #10, !dbg !2434
  %149 = icmp ne i32 %148, 0, !dbg !2435
  %150 = or i1 %149, %110, !dbg !2436
  %151 = xor i1 %149, true, !dbg !2436
  %152 = zext i1 %151 to i8, !dbg !2436
  br i1 %150, label %153, label %661, !dbg !2436

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2437
  call void @llvm.dbg.value(metadata i8 %155, metadata !2305, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %154, metadata !2283, metadata !DIExpression()), !dbg !2347
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2438
  %157 = load i8, i8* %156, align 1, !dbg !2438, !tbaa !869
  call void @llvm.dbg.value(metadata i8 %157, metadata !2300, metadata !DIExpression()), !dbg !2439
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
  ], !dbg !2440

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2441

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2442

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2423
  %161 = and i8 %126, 1, !dbg !2446
  %162 = icmp eq i8 %161, 0, !dbg !2446
  %163 = and i1 %114, %162, !dbg !2446
  br i1 %163, label %164, label %180, !dbg !2446

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2448
  br i1 %165, label %166, label %168, !dbg !2452

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2448
  store i8 39, i8* %167, align 1, !dbg !2448, !tbaa !869
  br label %168, !dbg !2448

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %169, metadata !2290, metadata !DIExpression()), !dbg !2353
  %170 = icmp ult i64 %169, %129, !dbg !2453
  br i1 %170, label %171, label %173, !dbg !2456

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2453
  store i8 36, i8* %172, align 1, !dbg !2453, !tbaa !869
  br label %173, !dbg !2453

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %174, metadata !2290, metadata !DIExpression()), !dbg !2353
  %175 = icmp ult i64 %174, %129, !dbg !2457
  br i1 %175, label %176, label %178, !dbg !2460

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2457
  store i8 39, i8* %177, align 1, !dbg !2457, !tbaa !869
  br label %178, !dbg !2457

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %179, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2361
  br label %180, !dbg !2461

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2412
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %182, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %181, metadata !2290, metadata !DIExpression()), !dbg !2353
  %183 = icmp ult i64 %181, %129, !dbg !2462
  br i1 %183, label %184, label %186, !dbg !2465

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2462
  store i8 92, i8* %185, align 1, !dbg !2462, !tbaa !869
  br label %186, !dbg !2462

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %187, metadata !2290, metadata !DIExpression()), !dbg !2353
  br i1 %104, label %188, label %478, !dbg !2466

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2468
  %190 = icmp ult i64 %189, %154, !dbg !2469
  br i1 %190, label %191, label %467, !dbg !2470

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2471
  %193 = load i8, i8* %192, align 1, !dbg !2471, !tbaa !869
  %194 = add i8 %193, -48, !dbg !2472
  %195 = icmp ult i8 %194, 10, !dbg !2472
  br i1 %195, label %196, label %467, !dbg !2472

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2473
  br i1 %197, label %198, label %200, !dbg !2477

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2473
  store i8 48, i8* %199, align 1, !dbg !2473, !tbaa !869
  br label %200, !dbg !2473

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %201, metadata !2290, metadata !DIExpression()), !dbg !2353
  %202 = icmp ult i64 %201, %129, !dbg !2478
  br i1 %202, label %203, label %205, !dbg !2481

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2478
  store i8 48, i8* %204, align 1, !dbg !2478, !tbaa !869
  br label %205, !dbg !2478

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %206, metadata !2290, metadata !DIExpression()), !dbg !2353
  br label %467, !dbg !2482

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2483

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2484

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2485

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2487

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2489
  %213 = icmp ult i64 %212, %154, !dbg !2490
  br i1 %213, label %214, label %467, !dbg !2491

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2492
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2493
  %217 = load i8, i8* %216, align 1, !dbg !2493, !tbaa !869
  %218 = icmp eq i8 %217, 63, !dbg !2494
  br i1 %218, label %219, label %467, !dbg !2495

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2496
  %221 = load i8, i8* %220, align 1, !dbg !2496, !tbaa !869
  %222 = sext i8 %221 to i32, !dbg !2496
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
  ], !dbg !2497

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2498

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2300, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %212, metadata !2289, metadata !DIExpression()), !dbg !2413
  %225 = icmp ult i64 %123, %129, !dbg !2500
  br i1 %225, label %226, label %228, !dbg !2503

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2500
  store i8 63, i8* %227, align 1, !dbg !2500, !tbaa !869
  br label %228, !dbg !2500

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %229, metadata !2290, metadata !DIExpression()), !dbg !2353
  %230 = icmp ult i64 %229, %129, !dbg !2504
  br i1 %230, label %231, label %233, !dbg !2507

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2504
  store i8 34, i8* %232, align 1, !dbg !2504, !tbaa !869
  br label %233, !dbg !2504

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %234, metadata !2290, metadata !DIExpression()), !dbg !2353
  %235 = icmp ult i64 %234, %129, !dbg !2508
  br i1 %235, label %236, label %238, !dbg !2511

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2508
  store i8 34, i8* %237, align 1, !dbg !2508, !tbaa !869
  br label %238, !dbg !2508

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %239, metadata !2290, metadata !DIExpression()), !dbg !2353
  %240 = icmp ult i64 %239, %129, !dbg !2512
  br i1 %240, label %241, label %243, !dbg !2515

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2512
  store i8 63, i8* %242, align 1, !dbg !2512, !tbaa !869
  br label %243, !dbg !2512

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %244, metadata !2290, metadata !DIExpression()), !dbg !2353
  br label %467, !dbg !2516

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2304, metadata !DIExpression()), !dbg !2517
  br label %255, !dbg !2518

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2304, metadata !DIExpression()), !dbg !2517
  br label %255, !dbg !2519

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2304, metadata !DIExpression()), !dbg !2517
  br label %253, !dbg !2520

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2304, metadata !DIExpression()), !dbg !2517
  br label %253, !dbg !2521

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2304, metadata !DIExpression()), !dbg !2517
  br label %255, !dbg !2522

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2304, metadata !DIExpression()), !dbg !2517
  br i1 %114, label %251, label %252, !dbg !2523

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2524

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2527

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2529
  call void @llvm.dbg.value(metadata i8 %254, metadata !2304, metadata !DIExpression()), !dbg !2517
  br i1 %113, label %255, label %661, !dbg !2530

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2529
  call void @llvm.dbg.value(metadata i8 %256, metadata !2304, metadata !DIExpression()), !dbg !2517
  br i1 %103, label %524, label %478, !dbg !2532

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2533
  br i1 %258, label %259, label %264, !dbg !2535

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2536, !tbaa !869
  %261 = icmp ne i8 %260, 0, !dbg !2537
  %262 = icmp ne i64 %122, 0, !dbg !2538
  %263 = or i1 %262, %261, !dbg !2540
  br i1 %263, label %467, label %270, !dbg !2540

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2541
  %266 = icmp ne i64 %122, 0, !dbg !2538
  %267 = or i1 %266, %265, !dbg !2535
  br i1 %267, label %467, label %270, !dbg !2535

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2538
  br i1 %269, label %270, label %467, !dbg !2542

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2307, metadata !DIExpression()), !dbg !2424
  br label %271, !dbg !2543

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2529
  call void @llvm.dbg.value(metadata i8 %272, metadata !2307, metadata !DIExpression()), !dbg !2424
  br i1 %113, label %467, label %661, !dbg !2544

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2307, metadata !DIExpression()), !dbg !2424
  br i1 %114, label %274, label %467, !dbg !2546

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2547

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2550
  %277 = icmp ne i64 %124, 0, !dbg !2552
  %278 = or i1 %277, %276, !dbg !2553
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2553
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %280, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %279, metadata !2291, metadata !DIExpression()), !dbg !2354
  %281 = icmp ult i64 %123, %280, !dbg !2554
  br i1 %281, label %282, label %284, !dbg !2557

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2554
  store i8 39, i8* %283, align 1, !dbg !2554, !tbaa !869
  br label %284, !dbg !2554

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %285, metadata !2290, metadata !DIExpression()), !dbg !2353
  %286 = icmp ult i64 %285, %280, !dbg !2558
  br i1 %286, label %287, label %289, !dbg !2561

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2558
  store i8 92, i8* %288, align 1, !dbg !2558, !tbaa !869
  br label %289, !dbg !2558

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %290, metadata !2290, metadata !DIExpression()), !dbg !2353
  %291 = icmp ult i64 %290, %280, !dbg !2562
  br i1 %291, label %292, label %294, !dbg !2565

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2562
  store i8 39, i8* %293, align 1, !dbg !2562, !tbaa !869
  br label %294, !dbg !2562

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %295, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2361
  br label %467, !dbg !2566

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2567

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2308, metadata !DIExpression()), !dbg !2568
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2569
  %299 = load i16*, i16** %298, align 8, !dbg !2569, !tbaa !720
  %300 = zext i8 %157 to i64, !dbg !2569
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2569
  %302 = load i16, i16* %301, align 2, !dbg !2569, !tbaa !1516
  %303 = lshr i16 %302, 14, !dbg !2571
  %304 = trunc i16 %303 to i8, !dbg !2571
  %305 = and i8 %304, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i8 %305, metadata !2311, metadata !DIExpression()), !dbg !2572
  br label %359, !dbg !2573

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2574
  store i64 0, i64* %10, align 8, !dbg !2575
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 1, metadata !2311, metadata !DIExpression()), !dbg !2572
  %307 = icmp eq i64 %154, -1, !dbg !2576
  br i1 %307, label %308, label %310, !dbg !2578

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #10, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %309, metadata !2283, metadata !DIExpression()), !dbg !2347
  br label %310, !dbg !2580

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2581
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  br label %312, !dbg !2582

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2583
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2584
  call void @llvm.dbg.value(metadata i8 %314, metadata !2311, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2585
  %315 = add i64 %313, %122, !dbg !2586
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2587
  %317 = sub i64 %311, %315, !dbg !2588
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2312, metadata !DIExpression(DW_OP_deref)), !dbg !2589
  call void @llvm.dbg.value(metadata i32* %12, metadata !2330, metadata !DIExpression(DW_OP_deref)), !dbg !2590
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %318, metadata !2333, metadata !DIExpression()), !dbg !2592
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2593

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  %320 = icmp ugt i64 %311, %315, !dbg !2594
  br i1 %320, label %321, label %344, !dbg !2596

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2308, metadata !DIExpression()), !dbg !2568
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2597
  %325 = load i8, i8* %324, align 1, !dbg !2597, !tbaa !869
  %326 = icmp eq i8 %325, 0, !dbg !2596
  br i1 %326, label %344, label %327, !dbg !2598

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %328, metadata !2308, metadata !DIExpression()), !dbg !2568
  %329 = add i64 %328, %122, !dbg !2600
  %330 = icmp ult i64 %329, %311, !dbg !2594
  br i1 %330, label %321, label %344, !dbg !2596, !llvm.loop !2601

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2602
  %333 = and i1 %116, %332, !dbg !2605
  call void @llvm.dbg.value(metadata i64 1, metadata !2334, metadata !DIExpression()), !dbg !2606
  br i1 %333, label %334, label %347, !dbg !2605

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2334, metadata !DIExpression()), !dbg !2606
  %336 = add i64 %335, %315, !dbg !2607
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2608
  %338 = load i8, i8* %337, align 1, !dbg !2608, !tbaa !869
  %339 = sext i8 %338 to i32, !dbg !2608
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2609

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %341, metadata !2334, metadata !DIExpression()), !dbg !2606
  %342 = icmp ult i64 %341, %318, !dbg !2602
  br i1 %342, label %334, label %347, !dbg !2611, !llvm.loop !2612

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 %314, metadata !2311, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %313, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 %314, metadata !2311, metadata !DIExpression()), !dbg !2572
  br label %344, !dbg !2614

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2311, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %352, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2614
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2615, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %348, metadata !2330, metadata !DIExpression()), !dbg !2590
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2617
  %350 = icmp eq i32 %349, 0, !dbg !2617
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2618
  call void @llvm.dbg.value(metadata i8 %351, metadata !2311, metadata !DIExpression()), !dbg !2572
  %352 = add i64 %318, %313, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %352, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 %351, metadata !2311, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %352, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2312, metadata !DIExpression(DW_OP_deref)), !dbg !2589
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #10, !dbg !2620
  %354 = icmp eq i32 %353, 0, !dbg !2621
  br i1 %354, label %312, label %355, !dbg !2622, !llvm.loop !2623

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2625
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 2, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 2, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 2, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 2, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 2, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %94, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %94, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %94, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %94, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %94, metadata !2284, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %100, metadata !2294, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %311, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %351, metadata !2311, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %352, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2614
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2625
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2626
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2627
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2627
  call void @llvm.dbg.value(metadata i8 %362, metadata !2311, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %361, metadata !2308, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %360, metadata !2283, metadata !DIExpression()), !dbg !2347
  %363 = and i8 %362, 1, !dbg !2628
  %364 = icmp ne i8 %363, 0, !dbg !2628
  call void @llvm.dbg.value(metadata i8 %363, metadata !2307, metadata !DIExpression()), !dbg !2424
  %365 = icmp ult i64 %361, 2, !dbg !2629
  %366 = or i1 %364, %115, !dbg !2630
  %367 = and i1 %365, %366, !dbg !2631
  br i1 %367, label %467, label %368, !dbg !2631

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %369, metadata !2341, metadata !DIExpression()), !dbg !2633
  br label %370, !dbg !2634

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2635
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2639
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2361
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2635
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2641
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2423
  call void @llvm.dbg.value(metadata i8 %376, metadata !2306, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 %375, metadata !2305, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 %374, metadata !2300, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %373, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %372, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %371, metadata !2289, metadata !DIExpression()), !dbg !2413
  br i1 %366, label %423, label %377, !dbg !2645

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2646

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2423
  %379 = and i8 %373, 1, !dbg !2649
  %380 = icmp eq i8 %379, 0, !dbg !2649
  %381 = and i1 %114, %380, !dbg !2649
  br i1 %381, label %382, label %398, !dbg !2649

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2651
  br i1 %383, label %384, label %386, !dbg !2655

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2651
  store i8 39, i8* %385, align 1, !dbg !2651, !tbaa !869
  br label %386, !dbg !2651

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %387, metadata !2290, metadata !DIExpression()), !dbg !2353
  %388 = icmp ult i64 %387, %129, !dbg !2656
  br i1 %388, label %389, label %391, !dbg !2659

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2656
  store i8 36, i8* %390, align 1, !dbg !2656, !tbaa !869
  br label %391, !dbg !2656

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %392, metadata !2290, metadata !DIExpression()), !dbg !2353
  %393 = icmp ult i64 %392, %129, !dbg !2660
  br i1 %393, label %394, label %396, !dbg !2663

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2660
  store i8 39, i8* %395, align 1, !dbg !2660, !tbaa !869
  br label %396, !dbg !2660

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %397, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2361
  br label %398, !dbg !2664

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2412
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %400, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %399, metadata !2290, metadata !DIExpression()), !dbg !2353
  %401 = icmp ult i64 %399, %129, !dbg !2665
  br i1 %401, label %402, label %404, !dbg !2668

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2665
  store i8 92, i8* %403, align 1, !dbg !2665, !tbaa !869
  br label %404, !dbg !2665

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %405, metadata !2290, metadata !DIExpression()), !dbg !2353
  %406 = icmp ult i64 %405, %129, !dbg !2669
  br i1 %406, label %407, label %411, !dbg !2672

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2669
  %409 = or i8 %408, 48, !dbg !2669
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2669
  store i8 %409, i8* %410, align 1, !dbg !2669, !tbaa !869
  br label %411, !dbg !2669

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %412, metadata !2290, metadata !DIExpression()), !dbg !2353
  %413 = icmp ult i64 %412, %129, !dbg !2673
  br i1 %413, label %414, label %419, !dbg !2676

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2673
  %416 = and i8 %415, 7, !dbg !2673
  %417 = or i8 %416, 48, !dbg !2673
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2673
  store i8 %417, i8* %418, align 1, !dbg !2673, !tbaa !869
  br label %419, !dbg !2673

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %420, metadata !2290, metadata !DIExpression()), !dbg !2353
  %421 = and i8 %374, 7, !dbg !2677
  %422 = or i8 %421, 48, !dbg !2678
  call void @llvm.dbg.value(metadata i8 %422, metadata !2300, metadata !DIExpression()), !dbg !2439
  br label %432, !dbg !2679

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2680
  %425 = icmp eq i8 %424, 0, !dbg !2680
  br i1 %425, label %432, label %426, !dbg !2681

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2682
  br i1 %427, label %428, label %430, !dbg !2685

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2682
  store i8 92, i8* %429, align 1, !dbg !2682, !tbaa !869
  br label %430, !dbg !2682

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %431, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2422
  br label %432, !dbg !2686

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2687
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2361
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2688
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2689
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %437, metadata !2306, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 %436, metadata !2305, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 %435, metadata !2300, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %434, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %433, metadata !2290, metadata !DIExpression()), !dbg !2353
  %438 = add i64 %371, 1, !dbg !2692
  %439 = icmp ugt i64 %369, %438, !dbg !2694
  br i1 %439, label %440, label %562, !dbg !2695

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2696
  %442 = icmp ne i8 %441, 0, !dbg !2696
  %443 = and i8 %437, 1, !dbg !2696
  %444 = icmp eq i8 %443, 0, !dbg !2696
  %445 = and i1 %442, %444, !dbg !2696
  br i1 %445, label %446, label %457, !dbg !2696

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2699
  br i1 %447, label %448, label %450, !dbg !2703

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2699
  store i8 39, i8* %449, align 1, !dbg !2699, !tbaa !869
  br label %450, !dbg !2699

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %451, metadata !2290, metadata !DIExpression()), !dbg !2353
  %452 = icmp ult i64 %451, %129, !dbg !2704
  br i1 %452, label %453, label %455, !dbg !2707

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2704
  store i8 39, i8* %454, align 1, !dbg !2704, !tbaa !869
  br label %455, !dbg !2704

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2707
  call void @llvm.dbg.value(metadata i64 %456, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2361
  br label %457, !dbg !2708

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2709
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %459, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %458, metadata !2290, metadata !DIExpression()), !dbg !2353
  %460 = icmp ult i64 %458, %129, !dbg !2710
  br i1 %460, label %461, label %463, !dbg !2712

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2710
  store i8 %435, i8* %462, align 1, !dbg !2710, !tbaa !869
  br label %463, !dbg !2710

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %464, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %438, metadata !2289, metadata !DIExpression()), !dbg !2413
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2713
  %466 = load i8, i8* %465, align 1, !dbg !2713, !tbaa !869
  call void @llvm.dbg.value(metadata i8 %466, metadata !2300, metadata !DIExpression()), !dbg !2439
  br label %370, !dbg !2714, !llvm.loop !2715

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2718
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2412
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2354
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2719
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2412
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2412
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2437
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2437
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2437
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %476, metadata !2307, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 %475, metadata !2306, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 %155, metadata !2305, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 %474, metadata !2300, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %473, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %472, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %471, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %470, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %469, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %468, metadata !2289, metadata !DIExpression()), !dbg !2413
  br i1 %105, label %489, label %478, !dbg !2720

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
  br i1 %112, label %490, label %512, !dbg !2722

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2723

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
  %501 = lshr i8 %494, 5, !dbg !2724
  %502 = zext i8 %501 to i64, !dbg !2724
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2725
  %504 = load i32, i32* %503, align 4, !dbg !2725, !tbaa !859
  %505 = and i8 %494, 31, !dbg !2726
  %506 = zext i8 %505 to i32, !dbg !2726
  %507 = shl i32 1, %506, !dbg !2727
  %508 = and i32 %504, %507, !dbg !2727
  %509 = icmp eq i32 %508, 0, !dbg !2727
  %510 = icmp eq i8 %155, 0, !dbg !2728
  %511 = and i1 %510, %509, !dbg !2729
  br i1 %511, label %562, label %524, !dbg !2729

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
  %523 = icmp eq i8 %155, 0, !dbg !2728
  br i1 %523, label %562, label %524, !dbg !2730

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2731
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2412
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2354
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2719
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2361
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2362
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2732
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2437
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %532, metadata !2307, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 %531, metadata !2300, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %530, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %529, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %528, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %527, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %526, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %525, metadata !2289, metadata !DIExpression()), !dbg !2413
  br i1 %110, label %534, label %661, !dbg !2735

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2423
  %535 = and i8 %529, 1, !dbg !2737
  %536 = icmp eq i8 %535, 0, !dbg !2737
  %537 = and i1 %114, %536, !dbg !2737
  br i1 %537, label %538, label %554, !dbg !2737

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2739
  br i1 %539, label %540, label %542, !dbg !2743

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2739
  store i8 39, i8* %541, align 1, !dbg !2739, !tbaa !869
  br label %542, !dbg !2739

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %543, metadata !2290, metadata !DIExpression()), !dbg !2353
  %544 = icmp ult i64 %543, %533, !dbg !2744
  br i1 %544, label %545, label %547, !dbg !2747

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2744
  store i8 36, i8* %546, align 1, !dbg !2744, !tbaa !869
  br label %547, !dbg !2744

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %548, metadata !2290, metadata !DIExpression()), !dbg !2353
  %549 = icmp ult i64 %548, %533, !dbg !2748
  br i1 %549, label %550, label %552, !dbg !2751

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2748
  store i8 39, i8* %551, align 1, !dbg !2748, !tbaa !869
  br label %552, !dbg !2748

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %553, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2361
  br label %554, !dbg !2752

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2709
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %556, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %555, metadata !2290, metadata !DIExpression()), !dbg !2353
  %557 = icmp ult i64 %555, %533, !dbg !2753
  br i1 %557, label %558, label %560, !dbg !2756

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2753
  store i8 92, i8* %559, align 1, !dbg !2753, !tbaa !869
  br label %560, !dbg !2753

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %561, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %572, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %571, metadata !2307, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 %570, metadata !2306, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 %569, metadata !2300, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %568, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %567, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %566, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %565, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %564, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %563, metadata !2289, metadata !DIExpression()), !dbg !2413
  br label %589, !dbg !2757

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2731
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2412
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2354
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2719
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2361
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2362
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2760
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2437
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2437
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %571, metadata !2307, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 %570, metadata !2306, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 %569, metadata !2300, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %568, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %567, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %566, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %565, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %564, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %563, metadata !2289, metadata !DIExpression()), !dbg !2413
  %573 = and i8 %567, 1, !dbg !2757
  %574 = icmp ne i8 %573, 0, !dbg !2757
  %575 = and i8 %570, 1, !dbg !2757
  %576 = icmp eq i8 %575, 0, !dbg !2757
  %577 = and i1 %574, %576, !dbg !2757
  br i1 %577, label %578, label %589, !dbg !2757

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2761
  br i1 %579, label %580, label %582, !dbg !2765

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2761
  store i8 39, i8* %581, align 1, !dbg !2761, !tbaa !869
  br label %582, !dbg !2761

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %583, metadata !2290, metadata !DIExpression()), !dbg !2353
  %584 = icmp ult i64 %583, %572, !dbg !2766
  br i1 %584, label %585, label %587, !dbg !2769

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2766
  store i8 39, i8* %586, align 1, !dbg !2766, !tbaa !869
  br label %587, !dbg !2766

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %588, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2361
  br label %589, !dbg !2770

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2709
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %598, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %597, metadata !2290, metadata !DIExpression()), !dbg !2353
  %599 = icmp ult i64 %597, %590, !dbg !2771
  br i1 %599, label %600, label %602, !dbg !2774

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2771
  store i8 %592, i8* %601, align 1, !dbg !2771, !tbaa !869
  br label %602, !dbg !2771

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %603, metadata !2290, metadata !DIExpression()), !dbg !2353
  %604 = and i8 %591, 1, !dbg !2775
  %605 = icmp eq i8 %604, 0, !dbg !2775
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2777
  call void @llvm.dbg.value(metadata i8 %606, metadata !2299, metadata !DIExpression()), !dbg !2363
  br label %607, !dbg !2778

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2731
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2412
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2354
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2719
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2361
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2412
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2363
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %614, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %613, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %612, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %611, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %610, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %609, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %608, metadata !2289, metadata !DIExpression()), !dbg !2413
  %616 = add i64 %608, 1, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %616, metadata !2289, metadata !DIExpression()), !dbg !2413
  br label %121, !dbg !2780, !llvm.loop !2781

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %618, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %618, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %125, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %125, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %126, metadata !2297, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %127, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 %128, metadata !2299, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  %619 = icmp eq i64 %123, 0, !dbg !2783
  %620 = and i1 %114, %619, !dbg !2785
  %621 = xor i1 %620, true, !dbg !2785
  %622 = or i1 %110, %621, !dbg !2785
  br i1 %622, label %623, label %661, !dbg !2785

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2786
  %625 = xor i1 %624, true, !dbg !2786
  %626 = and i8 %127, 1, !dbg !2788
  %627 = icmp eq i8 %626, 0, !dbg !2788
  %628 = or i1 %627, %625, !dbg !2786
  br i1 %628, label %638, label %629, !dbg !2786

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2789
  %631 = icmp eq i8 %630, 0, !dbg !2789
  br i1 %631, label %634, label %632, !dbg !2792

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %618, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %618, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %618, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %618, metadata !2283, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %95, metadata !2287, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %96, metadata !2288, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %124, metadata !2291, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %125, metadata !2283, metadata !DIExpression()), !dbg !2347
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2793
  br label %671, !dbg !2794

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2795
  %636 = icmp ne i64 %124, 0, !dbg !2797
  %637 = and i1 %636, %635, !dbg !2798
  br i1 %637, label %27, label %638, !dbg !2798

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %129, metadata !2281, metadata !DIExpression()), !dbg !2345
  %639 = icmp ne i8* %98, null, !dbg !2799
  %640 = and i1 %639, %110, !dbg !2801
  br i1 %640, label %641, label %656, !dbg !2801

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %123, metadata !2290, metadata !DIExpression()), !dbg !2353
  %642 = load i8, i8* %98, align 1, !dbg !2802, !tbaa !869
  %643 = icmp eq i8 %642, 0, !dbg !2805
  br i1 %643, label %656, label %644, !dbg !2805

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %647, metadata !2290, metadata !DIExpression()), !dbg !2353
  %648 = icmp ult i64 %647, %129, !dbg !2806
  br i1 %648, label %649, label %651, !dbg !2809

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2806
  store i8 %645, i8* %650, align 1, !dbg !2806, !tbaa !869
  br label %651, !dbg !2806

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2809
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %653, metadata !2292, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %652, metadata !2290, metadata !DIExpression()), !dbg !2353
  %654 = load i8, i8* %653, align 1, !dbg !2802, !tbaa !869
  %655 = icmp eq i8 %654, 0, !dbg !2805
  br i1 %655, label %656, label %644, !dbg !2805, !llvm.loop !2811

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2353
  call void @llvm.dbg.value(metadata i64 %657, metadata !2290, metadata !DIExpression()), !dbg !2353
  %658 = icmp ult i64 %657, %129, !dbg !2813
  br i1 %658, label %659, label %671, !dbg !2815

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2816
  store i8 0, i8* %660, align 1, !dbg !2817, !tbaa !869
  br label %671, !dbg !2816

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2281, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %663, metadata !2283, metadata !DIExpression()), !dbg !2347
  %665 = icmp ne i32 %662, 2, !dbg !2818
  %666 = icmp eq i8 %102, 0, !dbg !2820
  %667 = or i1 %665, %666, !dbg !2821
  call void @llvm.dbg.value(metadata i32 4, metadata !2284, metadata !DIExpression()), !dbg !2348
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %668, metadata !2284, metadata !DIExpression()), !dbg !2348
  %669 = and i32 %5, -3, !dbg !2822
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2823
  br label %671, !dbg !2824

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2825
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()), !dbg !2835
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %3, metadata !2832, metadata !DIExpression()), !dbg !2837
  %4 = icmp eq i8* %3, %0, !dbg !2838
  br i1 %4, label %5, label %71, !dbg !2840

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %6, metadata !2833, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %6, metadata !2843, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* null, metadata !2849, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 85, metadata !2850, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 84, metadata !2851, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 70, metadata !2852, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 45, metadata !2853, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 56, metadata !2854, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2871
  %7 = load i8, i8* %6, align 1, !dbg !2872, !tbaa !869
  %8 = and i8 %7, -33, !dbg !2872
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2872

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2874, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* null, metadata !2879, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 84, metadata !2880, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 70, metadata !2881, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 45, metadata !2882, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 56, metadata !2883, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8 0, metadata !2885, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i8 0, metadata !2887, metadata !DIExpression()), !dbg !2900
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2901
  %11 = load i8, i8* %10, align 1, !dbg !2901, !tbaa !869
  %12 = and i8 %11, -33, !dbg !2901
  %13 = icmp eq i8 %12, 84, !dbg !2901
  br i1 %13, label %14, label %68, !dbg !2901

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2903, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* null, metadata !2908, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 70, metadata !2909, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8 45, metadata !2910, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 56, metadata !2911, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 0, metadata !2914, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !2927
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2928
  %16 = load i8, i8* %15, align 1, !dbg !2928, !tbaa !869
  %17 = and i8 %16, -33, !dbg !2928
  %18 = icmp eq i8 %17, 70, !dbg !2928
  br i1 %18, label %19, label %68, !dbg !2928

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2930, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* null, metadata !2935, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 45, metadata !2936, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 56, metadata !2937, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 0, metadata !2938, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 0, metadata !2939, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8 0, metadata !2941, metadata !DIExpression()), !dbg !2952
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2953
  %21 = load i8, i8* %20, align 1, !dbg !2953, !tbaa !869
  %22 = icmp eq i8 %21, 45, !dbg !2953
  br i1 %22, label %23, label %68, !dbg !2955

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2956, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* null, metadata !2961, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 56, metadata !2962, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 0, metadata !2963, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 0, metadata !2964, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 0, metadata !2966, metadata !DIExpression()), !dbg !2976
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2977
  %25 = load i8, i8* %24, align 1, !dbg !2977, !tbaa !869
  %26 = icmp eq i8 %25, 56, !dbg !2977
  br i1 %26, label %27, label %68, !dbg !2979

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2980, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* null, metadata !2985, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 0, metadata !2986, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 0, metadata !2987, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 0, metadata !2988, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !2998
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2999
  %29 = load i8, i8* %28, align 1, !dbg !2999, !tbaa !869
  %30 = icmp eq i8 %29, 0, !dbg !2999
  br i1 %30, label %31, label %68, !dbg !3001

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3002, !tbaa !869
  %33 = icmp eq i8 %32, 96, !dbg !3003
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !3002
  br label %71, !dbg !3004

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2874, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* null, metadata !2879, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 66, metadata !2880, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 49, metadata !2881, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8 56, metadata !2882, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8 48, metadata !2883, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8 51, metadata !2884, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8 48, metadata !2885, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8 0, metadata !2887, metadata !DIExpression()), !dbg !3017
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3018
  %37 = load i8, i8* %36, align 1, !dbg !3018, !tbaa !869
  %38 = and i8 %37, -33, !dbg !3018
  %39 = icmp eq i8 %38, 66, !dbg !3018
  br i1 %39, label %40, label %68, !dbg !3018

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2903, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* null, metadata !2908, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 49, metadata !2909, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 56, metadata !2910, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 48, metadata !2911, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 51, metadata !2912, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8 48, metadata !2913, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8 0, metadata !2914, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !3028
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3029
  %42 = load i8, i8* %41, align 1, !dbg !3029, !tbaa !869
  %43 = icmp eq i8 %42, 49, !dbg !3029
  br i1 %43, label %44, label %68, !dbg !3030

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2930, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8* null, metadata !2935, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 56, metadata !2936, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8 48, metadata !2937, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i8 51, metadata !2938, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 48, metadata !2939, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !2941, metadata !DIExpression()), !dbg !3039
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3040
  %46 = load i8, i8* %45, align 1, !dbg !3040, !tbaa !869
  %47 = icmp eq i8 %46, 56, !dbg !3040
  br i1 %47, label %48, label %68, !dbg !3041

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2956, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* null, metadata !2961, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8 48, metadata !2962, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 51, metadata !2963, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8 48, metadata !2964, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 0, metadata !2966, metadata !DIExpression()), !dbg !3049
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3050
  %50 = load i8, i8* %49, align 1, !dbg !3050, !tbaa !869
  %51 = icmp eq i8 %50, 48, !dbg !3050
  br i1 %51, label %52, label %68, !dbg !3051

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2980, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8* null, metadata !2985, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8 51, metadata !2986, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 48, metadata !2987, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8 0, metadata !2988, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3058
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3059
  %54 = load i8, i8* %53, align 1, !dbg !3059, !tbaa !869
  %55 = icmp eq i8 %54, 51, !dbg !3059
  br i1 %55, label %56, label %68, !dbg !3060

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3061, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* null, metadata !3066, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8 48, metadata !3067, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8 0, metadata !3068, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8 0, metadata !3069, metadata !DIExpression()), !dbg !3077
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3078
  %58 = load i8, i8* %57, align 1, !dbg !3078, !tbaa !869
  %59 = icmp eq i8 %58, 48, !dbg !3078
  br i1 %59, label %60, label %68, !dbg !3080

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3081, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i8* null, metadata !3086, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 0, metadata !3087, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8 0, metadata !3088, metadata !DIExpression()), !dbg !3095
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3096
  %62 = load i8, i8* %61, align 1, !dbg !3096, !tbaa !869
  %63 = icmp eq i8 %62, 0, !dbg !3096
  br i1 %63, label %64, label %68, !dbg !3098

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3099, !tbaa !869
  %66 = icmp eq i8 %65, 96, !dbg !3100
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !3099
  br label %71, !dbg !3101

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3102
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !3103
  br label %71, !dbg !3104

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3105
  ret i8* %72, !dbg !3106
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3111, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3113, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #12, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()) #12, !dbg !3132
  call void @llvm.dbg.value(metadata i64* null, metadata !3123, metadata !DIExpression()) #12, !dbg !3133
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3124, metadata !DIExpression()) #12, !dbg !3134
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3135
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3125, metadata !DIExpression()) #12, !dbg !3136
  %6 = tail call i32* @__errno_location() #17, !dbg !3137
  %7 = load i32, i32* %6, align 4, !dbg !3137, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %7, metadata !3126, metadata !DIExpression()) #12, !dbg !3138
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3139
  %9 = load i32, i32* %8, align 4, !dbg !3139, !tbaa !2213
  %10 = or i32 %9, 1, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %10, metadata !3127, metadata !DIExpression()) #12, !dbg !3141
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3142
  %12 = load i32, i32* %11, align 8, !dbg !3142, !tbaa !2154
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3143
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3144
  %15 = load i8*, i8** %14, align 8, !dbg !3144, !tbaa !2239
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3145
  %17 = load i8*, i8** %16, align 8, !dbg !3145, !tbaa !2242
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !3146
  %19 = add i64 %18, 1, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %19, metadata !3128, metadata !DIExpression()) #12, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %19, metadata !3149, metadata !DIExpression()) #12, !dbg !3154
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %20, metadata !3129, metadata !DIExpression()) #12, !dbg !3157
  %21 = load i32, i32* %11, align 8, !dbg !3158, !tbaa !2154
  %22 = load i8*, i8** %14, align 8, !dbg !3159, !tbaa !2239
  %23 = load i8*, i8** %16, align 8, !dbg !3160, !tbaa !2242
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !3161
  store i32 %7, i32* %6, align 4, !dbg !3162, !tbaa !859
  ret i8* %20, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64* %2, metadata !3123, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3124, metadata !DIExpression()), !dbg !3167
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3168
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3125, metadata !DIExpression()), !dbg !3169
  %7 = tail call i32* @__errno_location() #17, !dbg !3170
  %8 = load i32, i32* %7, align 4, !dbg !3170, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %8, metadata !3126, metadata !DIExpression()), !dbg !3171
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3172
  %10 = load i32, i32* %9, align 4, !dbg !3172, !tbaa !2213
  %11 = icmp ne i64* %2, null, !dbg !3173
  %12 = xor i1 %11, true, !dbg !3173
  %13 = zext i1 %12 to i32, !dbg !3173
  %14 = or i32 %10, %13, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %14, metadata !3127, metadata !DIExpression()), !dbg !3175
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3176
  %16 = load i32, i32* %15, align 8, !dbg !3176, !tbaa !2154
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3177
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3178
  %19 = load i8*, i8** %18, align 8, !dbg !3178, !tbaa !2239
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3179
  %21 = load i8*, i8** %20, align 8, !dbg !3179, !tbaa !2242
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3180
  %23 = add i64 %22, 1, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %23, metadata !3128, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %23, metadata !3149, metadata !DIExpression()) #12, !dbg !3183
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %24, metadata !3129, metadata !DIExpression()), !dbg !3186
  %25 = load i32, i32* %15, align 8, !dbg !3187, !tbaa !2154
  %26 = load i8*, i8** %18, align 8, !dbg !3188, !tbaa !2239
  %27 = load i8*, i8** %20, align 8, !dbg !3189, !tbaa !2242
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3190
  store i32 %8, i32* %7, align 4, !dbg !3191, !tbaa !859
  br i1 %11, label %29, label %30, !dbg !3192

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3193, !tbaa !3195
  br label %30, !dbg !3196

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3198 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3202, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3200, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 1, metadata !3201, metadata !DIExpression()), !dbg !3204
  %2 = load i32, i32* @nslots, align 4, !dbg !3205, !tbaa !859
  %3 = icmp sgt i32 %2, 1, !dbg !3208
  br i1 %3, label %4, label %12, !dbg !3209

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3201, metadata !DIExpression()), !dbg !3204
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3210
  %7 = load i8*, i8** %6, align 8, !dbg !3210, !tbaa !3211
  tail call void @free(i8* %7) #12, !dbg !3213
  %8 = add nuw nsw i64 %5, 1, !dbg !3214
  call void @llvm.dbg.value(metadata i32 undef, metadata !3201, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3204
  %9 = load i32, i32* @nslots, align 4, !dbg !3205, !tbaa !859
  %10 = sext i32 %9 to i64, !dbg !3208
  %11 = icmp slt i64 %8, %10, !dbg !3208
  br i1 %11, label %4, label %12, !dbg !3209, !llvm.loop !3215

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3217
  %14 = load i8*, i8** %13, align 8, !dbg !3217, !tbaa !3211
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3219
  br i1 %15, label %17, label %16, !dbg !3220

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !3221
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3223, !tbaa !3224
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3225, !tbaa !3211
  br label %17, !dbg !3226

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3227
  br i1 %18, label %21, label %19, !dbg !3229

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3230
  tail call void @free(i8* %20) #12, !dbg !3232
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3233, !tbaa !720
  br label %21, !dbg !3234

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3235, !tbaa !859
  ret void, !dbg !3236
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8* %1, metadata !3242, metadata !DIExpression()), !dbg !3244
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3245
  ret i8* %3, !dbg !3246
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3251, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8* %1, metadata !3252, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %2, metadata !3253, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3254, metadata !DIExpression()), !dbg !3269
  %5 = tail call i32* @__errno_location() #17, !dbg !3270
  %6 = load i32, i32* %5, align 4, !dbg !3270, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %6, metadata !3255, metadata !DIExpression()), !dbg !3271
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3272, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3256, metadata !DIExpression()), !dbg !3273
  %8 = icmp slt i32 %0, 0, !dbg !3274
  br i1 %8, label %9, label %10, !dbg !3276

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3277
  unreachable, !dbg !3277

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3278, !tbaa !859
  %12 = icmp sgt i32 %11, %0, !dbg !3279
  br i1 %12, label %34, label %13, !dbg !3280

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3281
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3260, metadata !DIExpression()), !dbg !3282
  %15 = icmp eq i32 %0, 2147483647, !dbg !3283
  br i1 %15, label %16, label %17, !dbg !3285

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3286
  unreachable, !dbg !3286

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3287
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3287
  %20 = add nsw i32 %0, 1, !dbg !3288
  %21 = sext i32 %20 to i64, !dbg !3289
  %22 = shl nsw i64 %21, 4, !dbg !3290
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !3291
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3291
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3256, metadata !DIExpression()), !dbg !3273
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3292, !tbaa !720
  br i1 %14, label %25, label %26, !dbg !3293

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3294, !tbaa.struct !3296
  br label %26, !dbg !3297

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3298, !tbaa !859
  %28 = sext i32 %27 to i64, !dbg !3299
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3299
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3300
  %31 = sub nsw i32 %20, %27, !dbg !3301
  %32 = sext i32 %31 to i64, !dbg !3302
  %33 = shl nsw i64 %32, 4, !dbg !3303
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3300
  store i32 %20, i32* @nslots, align 4, !dbg !3304, !tbaa !859
  br label %34, !dbg !3305

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3306
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3256, metadata !DIExpression()), !dbg !3273
  %36 = sext i32 %0 to i64, !dbg !3307
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3308
  %38 = load i64, i64* %37, align 8, !dbg !3308, !tbaa !3224
  call void @llvm.dbg.value(metadata i64 %38, metadata !3261, metadata !DIExpression()), !dbg !3309
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3310
  %40 = load i8*, i8** %39, align 8, !dbg !3310, !tbaa !3211
  call void @llvm.dbg.value(metadata i8* %40, metadata !3263, metadata !DIExpression()), !dbg !3311
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3312
  %42 = load i32, i32* %41, align 4, !dbg !3312, !tbaa !2213
  %43 = or i32 %42, 1, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %43, metadata !3264, metadata !DIExpression()), !dbg !3314
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3315
  %45 = load i32, i32* %44, align 8, !dbg !3315, !tbaa !2154
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3316
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3317
  %48 = load i8*, i8** %47, align 8, !dbg !3317, !tbaa !2239
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3318
  %50 = load i8*, i8** %49, align 8, !dbg !3318, !tbaa !2242
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %51, metadata !3265, metadata !DIExpression()), !dbg !3320
  %52 = icmp ugt i64 %38, %51, !dbg !3321
  br i1 %52, label %63, label %53, !dbg !3323

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %54, metadata !3261, metadata !DIExpression()), !dbg !3309
  store i64 %54, i64* %37, align 8, !dbg !3326, !tbaa !3224
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3327
  br i1 %55, label %57, label %56, !dbg !3329

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !3330
  br label %57, !dbg !3330

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3149, metadata !DIExpression()) #12, !dbg !3331
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %58, metadata !3263, metadata !DIExpression()), !dbg !3311
  store i8* %58, i8** %39, align 8, !dbg !3334, !tbaa !3211
  %59 = load i32, i32* %44, align 8, !dbg !3335, !tbaa !2154
  %60 = load i8*, i8** %47, align 8, !dbg !3336, !tbaa !2239
  %61 = load i8*, i8** %49, align 8, !dbg !3337, !tbaa !2242
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3338
  br label %63, !dbg !3339

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3340
  call void @llvm.dbg.value(metadata i8* %64, metadata !3263, metadata !DIExpression()), !dbg !3311
  store i32 %6, i32* %5, align 4, !dbg !3341, !tbaa !859
  ret i8* %64, !dbg !3342
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %1, metadata !3348, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %2, metadata !3349, metadata !DIExpression()), !dbg !3352
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3353
  ret i8* %4, !dbg !3354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3355 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 0, metadata !3241, metadata !DIExpression()) #12, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %0, metadata !3242, metadata !DIExpression()) #12, !dbg !3363
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3364
  ret i8* %2, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3366 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3370, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %1, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()) #12, !dbg !3374
  call void @llvm.dbg.value(metadata i8* %0, metadata !3348, metadata !DIExpression()) #12, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3349, metadata !DIExpression()) #12, !dbg !3377
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3378
  ret i8* %3, !dbg !3379
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3380 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %1, metadata !3385, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8* %2, metadata !3386, metadata !DIExpression()), !dbg !3390
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3391
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3391
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3387, metadata !DIExpression(DW_OP_deref)), !dbg !3392
  call void @llvm.dbg.value(metadata i32 %1, metadata !3393, metadata !DIExpression()) #12, !dbg !3399
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3401, !alias.scope !3402
  %6 = icmp eq i32 %1, 10, !dbg !3405
  br i1 %6, label %7, label %8, !dbg !3407

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3408, !noalias !3402
  unreachable, !dbg !3408

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3409
  store i32 %1, i32* %9, align 8, !dbg !3410, !tbaa !2154, !alias.scope !3402
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3387, metadata !DIExpression(DW_OP_deref)), !dbg !3392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3401
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3412
  ret i8* %10, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3414 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3418, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i32 %1, metadata !3419, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %2, metadata !3420, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %3, metadata !3421, metadata !DIExpression()), !dbg !3426
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3427
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3422, metadata !DIExpression(DW_OP_deref)), !dbg !3428
  call void @llvm.dbg.value(metadata i32 %1, metadata !3393, metadata !DIExpression()) #12, !dbg !3429
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !3431, !alias.scope !3432
  %7 = icmp eq i32 %1, 10, !dbg !3435
  br i1 %7, label %8, label %9, !dbg !3436

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3437, !noalias !3432
  unreachable, !dbg !3437

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3438
  store i32 %1, i32* %10, align 8, !dbg !3439, !tbaa !2154, !alias.scope !3432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3422, metadata !DIExpression(DW_OP_deref)), !dbg !3428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3431
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3441
  ret i8* %11, !dbg !3442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3443 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8* %1, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 0, metadata !3384, metadata !DIExpression()) #12, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()) #12, !dbg !3453
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()) #12, !dbg !3454
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3455
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3387, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()) #12, !dbg !3457
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !3459, !alias.scope !3460
  %5 = icmp eq i32 %0, 10, !dbg !3463
  br i1 %5, label %6, label %7, !dbg !3464

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3465, !noalias !3460
  unreachable, !dbg !3465

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3466
  store i32 %0, i32* %8, align 8, !dbg !3467, !tbaa !2154, !alias.scope !3460
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3387, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3398, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3459
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3468
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3469
  ret i8* %9, !dbg !3470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3471 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3475, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %1, metadata !3476, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %2, metadata !3477, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #12, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %0, metadata !3419, metadata !DIExpression()) #12, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()) #12, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !3421, metadata !DIExpression()) #12, !dbg !3485
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3486
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3422, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()) #12, !dbg !3488
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3490, !alias.scope !3491
  %6 = icmp eq i32 %0, 10, !dbg !3494
  br i1 %6, label %7, label %8, !dbg !3495

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3496, !noalias !3491
  unreachable, !dbg !3496

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3497
  store i32 %0, i32* %9, align 8, !dbg !3498, !tbaa !2154, !alias.scope !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3422, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3487
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3398, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3490
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !3499
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3500
  ret i8* %10, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3502 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3506, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 %1, metadata !3507, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i8 %2, metadata !3508, metadata !DIExpression()), !dbg !3512
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3513
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3514, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3509, metadata !DIExpression(DW_OP_deref)), !dbg !3516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2173, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8 %2, metadata !2174, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 1, metadata !2175, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8 %2, metadata !2176, metadata !DIExpression()), !dbg !3521
  %6 = lshr i8 %2, 5, !dbg !3522
  %7 = zext i8 %6 to i64, !dbg !3522
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3523
  call void @llvm.dbg.value(metadata i32* %8, metadata !2177, metadata !DIExpression()), !dbg !3524
  %9 = and i8 %2, 31, !dbg !3525
  %10 = zext i8 %9 to i32, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %10, metadata !2179, metadata !DIExpression()), !dbg !3526
  %11 = load i32, i32* %8, align 4, !dbg !3527, !tbaa !859
  %12 = lshr i32 %11, %10, !dbg !3528
  %13 = and i32 %12, 1, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %13, metadata !2180, metadata !DIExpression()), !dbg !3530
  %14 = xor i32 %13, 1, !dbg !3531
  %15 = shl i32 %14, %10, !dbg !3532
  %16 = xor i32 %15, %11, !dbg !3533
  store i32 %16, i32* %8, align 4, !dbg !3533, !tbaa !859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3509, metadata !DIExpression(DW_OP_deref)), !dbg !3516
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3534
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3535
  ret i8* %17, !dbg !3536
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3537 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3541, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8 %1, metadata !3542, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %0, metadata !3506, metadata !DIExpression()) #12, !dbg !3545
  call void @llvm.dbg.value(metadata i64 -1, metadata !3507, metadata !DIExpression()) #12, !dbg !3547
  call void @llvm.dbg.value(metadata i8 %1, metadata !3508, metadata !DIExpression()) #12, !dbg !3548
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3549
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3550, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3509, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2173, metadata !DIExpression()) #12, !dbg !3552
  call void @llvm.dbg.value(metadata i8 %1, metadata !2174, metadata !DIExpression()) #12, !dbg !3554
  call void @llvm.dbg.value(metadata i32 1, metadata !2175, metadata !DIExpression()) #12, !dbg !3555
  call void @llvm.dbg.value(metadata i8 %1, metadata !2176, metadata !DIExpression()) #12, !dbg !3556
  %5 = lshr i8 %1, 5, !dbg !3557
  %6 = zext i8 %5 to i64, !dbg !3557
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3558
  call void @llvm.dbg.value(metadata i32* %7, metadata !2177, metadata !DIExpression()) #12, !dbg !3559
  %8 = and i8 %1, 31, !dbg !3560
  %9 = zext i8 %8 to i32, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %9, metadata !2179, metadata !DIExpression()) #12, !dbg !3561
  %10 = load i32, i32* %7, align 4, !dbg !3562, !tbaa !859
  %11 = lshr i32 %10, %9, !dbg !3563
  %12 = and i32 %11, 1, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %12, metadata !2180, metadata !DIExpression()) #12, !dbg !3565
  %13 = xor i32 %12, 1, !dbg !3566
  %14 = shl i32 %13, %9, !dbg !3567
  %15 = xor i32 %14, %10, !dbg !3568
  store i32 %15, i32* %7, align 4, !dbg !3568, !tbaa !859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3509, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3551
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3569
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3570
  ret i8* %16, !dbg !3571
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3572 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %0, metadata !3541, metadata !DIExpression()) #12, !dbg !3576
  call void @llvm.dbg.value(metadata i8 58, metadata !3542, metadata !DIExpression()) #12, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %0, metadata !3506, metadata !DIExpression()) #12, !dbg !3579
  call void @llvm.dbg.value(metadata i64 -1, metadata !3507, metadata !DIExpression()) #12, !dbg !3581
  call void @llvm.dbg.value(metadata i8 58, metadata !3508, metadata !DIExpression()) #12, !dbg !3582
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3583
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3584, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3509, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2173, metadata !DIExpression()) #12, !dbg !3586
  call void @llvm.dbg.value(metadata i8 58, metadata !2174, metadata !DIExpression()) #12, !dbg !3588
  call void @llvm.dbg.value(metadata i32 1, metadata !2175, metadata !DIExpression()) #12, !dbg !3589
  call void @llvm.dbg.value(metadata i8 58, metadata !2176, metadata !DIExpression()) #12, !dbg !3590
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3591
  call void @llvm.dbg.value(metadata i32* %4, metadata !2177, metadata !DIExpression()) #12, !dbg !3592
  call void @llvm.dbg.value(metadata i32 26, metadata !2179, metadata !DIExpression()) #12, !dbg !3593
  %5 = load i32, i32* %4, align 4, !dbg !3594, !tbaa !859
  %6 = or i32 %5, 67108864, !dbg !3595
  store i32 %6, i32* %4, align 4, !dbg !3595, !tbaa !859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3509, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3585
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3596
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3597
  ret i8* %7, !dbg !3598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3599 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3601, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %1, metadata !3602, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8* %0, metadata !3506, metadata !DIExpression()) #12, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3507, metadata !DIExpression()) #12, !dbg !3607
  call void @llvm.dbg.value(metadata i8 58, metadata !3508, metadata !DIExpression()) #12, !dbg !3608
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3609
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3610, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3509, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3611
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2173, metadata !DIExpression()) #12, !dbg !3612
  call void @llvm.dbg.value(metadata i8 58, metadata !2174, metadata !DIExpression()) #12, !dbg !3614
  call void @llvm.dbg.value(metadata i32 1, metadata !2175, metadata !DIExpression()) #12, !dbg !3615
  call void @llvm.dbg.value(metadata i8 58, metadata !2176, metadata !DIExpression()) #12, !dbg !3616
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3617
  call void @llvm.dbg.value(metadata i32* %5, metadata !2177, metadata !DIExpression()) #12, !dbg !3618
  call void @llvm.dbg.value(metadata i32 26, metadata !2179, metadata !DIExpression()) #12, !dbg !3619
  %6 = load i32, i32* %5, align 4, !dbg !3620, !tbaa !859
  %7 = or i32 %6, 67108864, !dbg !3621
  store i32 %7, i32* %5, align 4, !dbg !3621, !tbaa !859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3509, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3611
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3622
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3623
  ret i8* %8, !dbg !3624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3625 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3398, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3631
  call void @llvm.dbg.value(metadata i32 %0, metadata !3627, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 %1, metadata !3628, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %2, metadata !3629, metadata !DIExpression()), !dbg !3635
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3636
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3636
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3637
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3637
  call void @llvm.dbg.value(metadata i32 %1, metadata !3393, metadata !DIExpression()) #12, !dbg !3638
  call void @llvm.dbg.value(metadata i32 0, metadata !3398, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3631
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3631, !alias.scope !3639
  %8 = icmp eq i32 %1, 10, !dbg !3642
  br i1 %8, label %9, label %10, !dbg !3643

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3644, !noalias !3639
  unreachable, !dbg !3644

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3398, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3631
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3637
  store i32 %1, i32* %11, align 8, !dbg !3637
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3637
  %13 = bitcast i32* %12 to i8*, !dbg !3637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3637
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3637
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3630, metadata !DIExpression(DW_OP_deref)), !dbg !3645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2173, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8 58, metadata !2174, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 1, metadata !2175, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8 58, metadata !2176, metadata !DIExpression()), !dbg !3650
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3651
  call void @llvm.dbg.value(metadata i32* %14, metadata !2177, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 26, metadata !2179, metadata !DIExpression()), !dbg !3653
  %15 = load i32, i32* %14, align 4, !dbg !3654, !tbaa !859
  %16 = or i32 %15, 67108864, !dbg !3655
  store i32 %16, i32* %14, align 4, !dbg !3655, !tbaa !859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3630, metadata !DIExpression(DW_OP_deref)), !dbg !3645
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3656
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3657
  ret i8* %17, !dbg !3658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3659 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3663, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %1, metadata !3664, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8* %2, metadata !3665, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %3, metadata !3666, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()) #12, !dbg !3681
  call void @llvm.dbg.value(metadata i8* %1, metadata !3676, metadata !DIExpression()) #12, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %2, metadata !3677, metadata !DIExpression()) #12, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %3, metadata !3678, metadata !DIExpression()) #12, !dbg !3685
  call void @llvm.dbg.value(metadata i64 -1, metadata !3679, metadata !DIExpression()) #12, !dbg !3686
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3687
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3688, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3680, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2221, metadata !DIExpression()) #12, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %1, metadata !2222, metadata !DIExpression()) #12, !dbg !3692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2223, metadata !DIExpression()) #12, !dbg !3693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2221, metadata !DIExpression()) #12, !dbg !3690
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3694
  store i32 10, i32* %7, align 8, !dbg !3695, !tbaa !2154
  %8 = icmp ne i8* %1, null, !dbg !3696
  %9 = icmp ne i8* %2, null, !dbg !3697
  %10 = and i1 %8, %9, !dbg !3698
  br i1 %10, label %12, label %11, !dbg !3698

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3699
  unreachable, !dbg !3699

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3700
  store i8* %1, i8** %13, align 8, !dbg !3701, !tbaa !2239
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3702
  store i8* %2, i8** %14, align 8, !dbg !3703, !tbaa !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3680, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3689
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3704
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3705
  ret i8* %15, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3672 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %1, metadata !3676, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i8* %2, metadata !3677, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i8* %3, metadata !3678, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %4, metadata !3679, metadata !DIExpression()), !dbg !3711
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3713, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3680, metadata !DIExpression(DW_OP_deref)), !dbg !3714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2221, metadata !DIExpression()) #12, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %1, metadata !2222, metadata !DIExpression()) #12, !dbg !3717
  call void @llvm.dbg.value(metadata i8* %2, metadata !2223, metadata !DIExpression()) #12, !dbg !3718
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2221, metadata !DIExpression()) #12, !dbg !3715
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3719
  store i32 10, i32* %8, align 8, !dbg !3720, !tbaa !2154
  %9 = icmp ne i8* %1, null, !dbg !3721
  %10 = icmp ne i8* %2, null, !dbg !3722
  %11 = and i1 %9, %10, !dbg !3723
  br i1 %11, label %13, label %12, !dbg !3723

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3724
  unreachable, !dbg !3724

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3725
  store i8* %1, i8** %14, align 8, !dbg !3726, !tbaa !2239
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3727
  store i8* %2, i8** %15, align 8, !dbg !3728, !tbaa !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3680, metadata !DIExpression(DW_OP_deref)), !dbg !3714
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3729
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3730
  ret i8* %16, !dbg !3731
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3732 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8* %1, metadata !3737, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %2, metadata !3738, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 0, metadata !3663, metadata !DIExpression()) #12, !dbg !3742
  call void @llvm.dbg.value(metadata i8* %0, metadata !3664, metadata !DIExpression()) #12, !dbg !3744
  call void @llvm.dbg.value(metadata i8* %1, metadata !3665, metadata !DIExpression()) #12, !dbg !3745
  call void @llvm.dbg.value(metadata i8* %2, metadata !3666, metadata !DIExpression()) #12, !dbg !3746
  call void @llvm.dbg.value(metadata i32 0, metadata !3671, metadata !DIExpression()) #12, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %0, metadata !3676, metadata !DIExpression()) #12, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3677, metadata !DIExpression()) #12, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %2, metadata !3678, metadata !DIExpression()) #12, !dbg !3751
  call void @llvm.dbg.value(metadata i64 -1, metadata !3679, metadata !DIExpression()) #12, !dbg !3752
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3753
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3754, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3680, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3755
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2221, metadata !DIExpression()) #12, !dbg !3756
  call void @llvm.dbg.value(metadata i8* %0, metadata !2222, metadata !DIExpression()) #12, !dbg !3758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2223, metadata !DIExpression()) #12, !dbg !3759
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2221, metadata !DIExpression()) #12, !dbg !3756
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3760
  store i32 10, i32* %6, align 8, !dbg !3761, !tbaa !2154
  %7 = icmp ne i8* %0, null, !dbg !3762
  %8 = icmp ne i8* %1, null, !dbg !3763
  %9 = and i1 %7, %8, !dbg !3764
  br i1 %9, label %11, label %10, !dbg !3764

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3765
  unreachable, !dbg !3765

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3766
  store i8* %0, i8** %12, align 8, !dbg !3767, !tbaa !2239
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3768
  store i8* %1, i8** %13, align 8, !dbg !3769, !tbaa !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3680, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3755
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3770
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3771
  ret i8* %14, !dbg !3772
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3773 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %1, metadata !3778, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %2, metadata !3779, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %3, metadata !3780, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3671, metadata !DIExpression()) #12, !dbg !3785
  call void @llvm.dbg.value(metadata i8* %0, metadata !3676, metadata !DIExpression()) #12, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %1, metadata !3677, metadata !DIExpression()) #12, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %2, metadata !3678, metadata !DIExpression()) #12, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %3, metadata !3679, metadata !DIExpression()) #12, !dbg !3790
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3791
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3792, !tbaa.struct !3515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3680, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3793
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2221, metadata !DIExpression()) #12, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %0, metadata !2222, metadata !DIExpression()) #12, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %1, metadata !2223, metadata !DIExpression()) #12, !dbg !3797
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2221, metadata !DIExpression()) #12, !dbg !3794
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3798
  store i32 10, i32* %7, align 8, !dbg !3799, !tbaa !2154
  %8 = icmp ne i8* %0, null, !dbg !3800
  %9 = icmp ne i8* %1, null, !dbg !3801
  %10 = and i1 %8, %9, !dbg !3802
  br i1 %10, label %12, label %11, !dbg !3802

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3803
  unreachable, !dbg !3803

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3804
  store i8* %0, i8** %13, align 8, !dbg !3805, !tbaa !2239
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3806
  store i8* %1, i8** %14, align 8, !dbg !3807, !tbaa !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3680, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3793
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3809
  ret i8* %15, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3811 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3815, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %2, metadata !3817, metadata !DIExpression()), !dbg !3820
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3821
  ret i8* %4, !dbg !3822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3827, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %1, metadata !3828, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()) #12, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()) #12, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %1, metadata !3817, metadata !DIExpression()) #12, !dbg !3834
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3835
  ret i8* %3, !dbg !3836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3837 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3841, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i8* %1, metadata !3842, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %0, metadata !3815, metadata !DIExpression()) #12, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()) #12, !dbg !3847
  call void @llvm.dbg.value(metadata i64 -1, metadata !3817, metadata !DIExpression()) #12, !dbg !3848
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3849
  ret i8* %3, !dbg !3850
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3855, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 0, metadata !3841, metadata !DIExpression()) #12, !dbg !3857
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()) #12, !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()) #12, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()) #12, !dbg !3862
  call void @llvm.dbg.value(metadata i64 -1, metadata !3817, metadata !DIExpression()) #12, !dbg !3863
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3864
  ret i8* %2, !dbg !3865
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3866 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3905, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8* %1, metadata !3906, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8* %2, metadata !3907, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i8* %3, metadata !3908, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8** %4, metadata !3909, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 %5, metadata !3910, metadata !DIExpression()), !dbg !3916
  %7 = icmp eq i8* %1, null, !dbg !3917
  br i1 %7, label %10, label %8, !dbg !3919

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3920
  br label %12, !dbg !3920

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.91, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3921
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.92, i64 0, i64 0), i32 5) #12, !dbg !3922
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3922
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.93, i64 0, i64 0), i32 5) #12, !dbg !3923
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3923
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
  ], !dbg !3924

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3925
  unreachable, !dbg !3925

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.94, i64 0, i64 0), i32 5) #12, !dbg !3927
  %20 = load i8*, i8** %4, align 8, !dbg !3927, !tbaa !720
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3927
  br label %146, !dbg !3928

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.95, i64 0, i64 0), i32 5) #12, !dbg !3929
  %24 = load i8*, i8** %4, align 8, !dbg !3929, !tbaa !720
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3929
  %26 = load i8*, i8** %25, align 8, !dbg !3929, !tbaa !720
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3929
  br label %146, !dbg !3930

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.96, i64 0, i64 0), i32 5) #12, !dbg !3931
  %30 = load i8*, i8** %4, align 8, !dbg !3931, !tbaa !720
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3931
  %32 = load i8*, i8** %31, align 8, !dbg !3931, !tbaa !720
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3931
  %34 = load i8*, i8** %33, align 8, !dbg !3931, !tbaa !720
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3931
  br label %146, !dbg !3932

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.97, i64 0, i64 0), i32 5) #12, !dbg !3933
  %38 = load i8*, i8** %4, align 8, !dbg !3933, !tbaa !720
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3933
  %40 = load i8*, i8** %39, align 8, !dbg !3933, !tbaa !720
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3933
  %42 = load i8*, i8** %41, align 8, !dbg !3933, !tbaa !720
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3933
  %44 = load i8*, i8** %43, align 8, !dbg !3933, !tbaa !720
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3933
  br label %146, !dbg !3934

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.98, i64 0, i64 0), i32 5) #12, !dbg !3935
  %48 = load i8*, i8** %4, align 8, !dbg !3935, !tbaa !720
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3935
  %50 = load i8*, i8** %49, align 8, !dbg !3935, !tbaa !720
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3935
  %52 = load i8*, i8** %51, align 8, !dbg !3935, !tbaa !720
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3935
  %54 = load i8*, i8** %53, align 8, !dbg !3935, !tbaa !720
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3935
  %56 = load i8*, i8** %55, align 8, !dbg !3935, !tbaa !720
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3935
  br label %146, !dbg !3936

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.99, i64 0, i64 0), i32 5) #12, !dbg !3937
  %60 = load i8*, i8** %4, align 8, !dbg !3937, !tbaa !720
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3937
  %62 = load i8*, i8** %61, align 8, !dbg !3937, !tbaa !720
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3937
  %64 = load i8*, i8** %63, align 8, !dbg !3937, !tbaa !720
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3937
  %66 = load i8*, i8** %65, align 8, !dbg !3937, !tbaa !720
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3937
  %68 = load i8*, i8** %67, align 8, !dbg !3937, !tbaa !720
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3937
  %70 = load i8*, i8** %69, align 8, !dbg !3937, !tbaa !720
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3937
  br label %146, !dbg !3938

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.100, i64 0, i64 0), i32 5) #12, !dbg !3939
  %74 = load i8*, i8** %4, align 8, !dbg !3939, !tbaa !720
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3939
  %76 = load i8*, i8** %75, align 8, !dbg !3939, !tbaa !720
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3939
  %78 = load i8*, i8** %77, align 8, !dbg !3939, !tbaa !720
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3939
  %80 = load i8*, i8** %79, align 8, !dbg !3939, !tbaa !720
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3939
  %82 = load i8*, i8** %81, align 8, !dbg !3939, !tbaa !720
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3939
  %84 = load i8*, i8** %83, align 8, !dbg !3939, !tbaa !720
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3939
  %86 = load i8*, i8** %85, align 8, !dbg !3939, !tbaa !720
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3939
  br label %146, !dbg !3940

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.101, i64 0, i64 0), i32 5) #12, !dbg !3941
  %90 = load i8*, i8** %4, align 8, !dbg !3941, !tbaa !720
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3941
  %92 = load i8*, i8** %91, align 8, !dbg !3941, !tbaa !720
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3941
  %94 = load i8*, i8** %93, align 8, !dbg !3941, !tbaa !720
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3941
  %96 = load i8*, i8** %95, align 8, !dbg !3941, !tbaa !720
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3941
  %98 = load i8*, i8** %97, align 8, !dbg !3941, !tbaa !720
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3941
  %100 = load i8*, i8** %99, align 8, !dbg !3941, !tbaa !720
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3941
  %102 = load i8*, i8** %101, align 8, !dbg !3941, !tbaa !720
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3941
  %104 = load i8*, i8** %103, align 8, !dbg !3941, !tbaa !720
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3941
  br label %146, !dbg !3942

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.102, i64 0, i64 0), i32 5) #12, !dbg !3943
  %108 = load i8*, i8** %4, align 8, !dbg !3943, !tbaa !720
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3943
  %110 = load i8*, i8** %109, align 8, !dbg !3943, !tbaa !720
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3943
  %112 = load i8*, i8** %111, align 8, !dbg !3943, !tbaa !720
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3943
  %114 = load i8*, i8** %113, align 8, !dbg !3943, !tbaa !720
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3943
  %116 = load i8*, i8** %115, align 8, !dbg !3943, !tbaa !720
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3943
  %118 = load i8*, i8** %117, align 8, !dbg !3943, !tbaa !720
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3943
  %120 = load i8*, i8** %119, align 8, !dbg !3943, !tbaa !720
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3943
  %122 = load i8*, i8** %121, align 8, !dbg !3943, !tbaa !720
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3943
  %124 = load i8*, i8** %123, align 8, !dbg !3943, !tbaa !720
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3943
  br label %146, !dbg !3944

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.103, i64 0, i64 0), i32 5) #12, !dbg !3945
  %128 = load i8*, i8** %4, align 8, !dbg !3945, !tbaa !720
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3945
  %130 = load i8*, i8** %129, align 8, !dbg !3945, !tbaa !720
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3945
  %132 = load i8*, i8** %131, align 8, !dbg !3945, !tbaa !720
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3945
  %134 = load i8*, i8** %133, align 8, !dbg !3945, !tbaa !720
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3945
  %136 = load i8*, i8** %135, align 8, !dbg !3945, !tbaa !720
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3945
  %138 = load i8*, i8** %137, align 8, !dbg !3945, !tbaa !720
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3945
  %140 = load i8*, i8** %139, align 8, !dbg !3945, !tbaa !720
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3945
  %142 = load i8*, i8** %141, align 8, !dbg !3945, !tbaa !720
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3945
  %144 = load i8*, i8** %143, align 8, !dbg !3945, !tbaa !720
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3945
  br label %146, !dbg !3946

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3947
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3948 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3952, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8* %1, metadata !3953, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i8* %2, metadata !3954, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8* %3, metadata !3955, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i8** %4, metadata !3956, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 0, metadata !3957, metadata !DIExpression()), !dbg !3963
  br label %6, !dbg !3964

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3966
  call void @llvm.dbg.value(metadata i64 %7, metadata !3957, metadata !DIExpression()), !dbg !3963
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3968
  %9 = load i8*, i8** %8, align 8, !dbg !3968, !tbaa !720
  %10 = icmp eq i8* %9, null, !dbg !3969
  %11 = add i64 %7, 1, !dbg !3970
  call void @llvm.dbg.value(metadata i64 %11, metadata !3957, metadata !DIExpression()), !dbg !3963
  br i1 %10, label %12, label %6, !dbg !3969, !llvm.loop !3971

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3957, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %7, metadata !3957, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %7, metadata !3957, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %7, metadata !3957, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %7, metadata !3957, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %7, metadata !3957, metadata !DIExpression()), !dbg !3963
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3973
  ret void, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3975 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3986, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %1, metadata !3987, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i8* %2, metadata !3988, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i8* %3, metadata !3989, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3990, metadata !DIExpression()), !dbg !3998
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3999
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3999
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3992, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 0, metadata !3991, metadata !DIExpression()), !dbg !4001
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3991, metadata !DIExpression()), !dbg !4001
  %11 = load i32, i32* %8, align 8, !dbg !4002
  %12 = icmp ult i32 %11, 41, !dbg !4002
  br i1 %12, label %13, label %18, !dbg !4002

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4002
  %15 = sext i32 %11 to i64, !dbg !4002
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4002
  %17 = add i32 %11, 8, !dbg !4002
  store i32 %17, i32* %8, align 8, !dbg !4002
  br label %21, !dbg !4002

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4002
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4002
  store i8* %20, i8** %10, align 8, !dbg !4002
  br label %21, !dbg !4002

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4002
  %25 = load i8*, i8** %24, align 8, !dbg !4002
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4005
  store i8* %25, i8** %26, align 16, !dbg !4006, !tbaa !720
  %27 = icmp eq i8* %25, null, !dbg !4007
  br i1 %27, label %30, label %28, !dbg !4008

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 1, metadata !3991, metadata !DIExpression()), !dbg !4001
  %29 = icmp ult i32 %22, 41, !dbg !4002
  br i1 %29, label %35, label %32, !dbg !4002

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4009
  call void @llvm.dbg.value(metadata i64 %31, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %31, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4010
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4011
  ret void, !dbg !4011

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4002
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4002
  store i8* %34, i8** %10, align 8, !dbg !4002
  br label %40, !dbg !4002

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4002
  %37 = sext i32 %22 to i64, !dbg !4002
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4002
  %39 = add i32 %22, 8, !dbg !4002
  store i32 %39, i32* %8, align 8, !dbg !4002
  br label %40, !dbg !4002

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4002
  %44 = load i8*, i8** %43, align 8, !dbg !4002
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4005
  store i8* %44, i8** %45, align 8, !dbg !4006, !tbaa !720
  %46 = icmp eq i8* %44, null, !dbg !4007
  br i1 %46, label %30, label %47, !dbg !4008

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 2, metadata !3991, metadata !DIExpression()), !dbg !4001
  %48 = icmp ult i32 %41, 41, !dbg !4002
  br i1 %48, label %52, label %49, !dbg !4002

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4002
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4002
  store i8* %51, i8** %10, align 8, !dbg !4002
  br label %57, !dbg !4002

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4002
  %54 = sext i32 %41 to i64, !dbg !4002
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4002
  %56 = add i32 %41, 8, !dbg !4002
  store i32 %56, i32* %8, align 8, !dbg !4002
  br label %57, !dbg !4002

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4002
  %61 = load i8*, i8** %60, align 8, !dbg !4002
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4005
  store i8* %61, i8** %62, align 16, !dbg !4006, !tbaa !720
  %63 = icmp eq i8* %61, null, !dbg !4007
  br i1 %63, label %30, label %64, !dbg !4008

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 3, metadata !3991, metadata !DIExpression()), !dbg !4001
  %65 = icmp ult i32 %58, 41, !dbg !4002
  br i1 %65, label %69, label %66, !dbg !4002

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4002
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4002
  store i8* %68, i8** %10, align 8, !dbg !4002
  br label %74, !dbg !4002

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4002
  %71 = sext i32 %58 to i64, !dbg !4002
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4002
  %73 = add i32 %58, 8, !dbg !4002
  store i32 %73, i32* %8, align 8, !dbg !4002
  br label %74, !dbg !4002

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4002
  %78 = load i8*, i8** %77, align 8, !dbg !4002
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4005
  store i8* %78, i8** %79, align 8, !dbg !4006, !tbaa !720
  %80 = icmp eq i8* %78, null, !dbg !4007
  br i1 %80, label %30, label %81, !dbg !4008

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 4, metadata !3991, metadata !DIExpression()), !dbg !4001
  %82 = icmp ult i32 %75, 41, !dbg !4002
  br i1 %82, label %86, label %83, !dbg !4002

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4002
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4002
  store i8* %85, i8** %10, align 8, !dbg !4002
  br label %91, !dbg !4002

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4002
  %88 = sext i32 %75 to i64, !dbg !4002
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4002
  %90 = add i32 %75, 8, !dbg !4002
  store i32 %90, i32* %8, align 8, !dbg !4002
  br label %91, !dbg !4002

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4002
  %95 = load i8*, i8** %94, align 8, !dbg !4002
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4005
  store i8* %95, i8** %96, align 16, !dbg !4006, !tbaa !720
  %97 = icmp eq i8* %95, null, !dbg !4007
  br i1 %97, label %30, label %98, !dbg !4008

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 5, metadata !3991, metadata !DIExpression()), !dbg !4001
  %99 = icmp ult i32 %92, 41, !dbg !4002
  br i1 %99, label %103, label %100, !dbg !4002

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4002
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4002
  store i8* %102, i8** %10, align 8, !dbg !4002
  br label %108, !dbg !4002

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4002
  %105 = sext i32 %92 to i64, !dbg !4002
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4002
  %107 = add i32 %92, 8, !dbg !4002
  store i32 %107, i32* %8, align 8, !dbg !4002
  br label %108, !dbg !4002

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4002
  %111 = load i8*, i8** %110, align 8, !dbg !4002
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4005
  store i8* %111, i8** %112, align 8, !dbg !4006, !tbaa !720
  %113 = icmp eq i8* %111, null, !dbg !4007
  br i1 %113, label %30, label %114, !dbg !4008

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 6, metadata !3991, metadata !DIExpression()), !dbg !4001
  %115 = load i8*, i8** %10, align 8, !dbg !4002
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4002
  store i8* %116, i8** %10, align 8, !dbg !4002
  %117 = bitcast i8* %115 to i8**, !dbg !4002
  %118 = load i8*, i8** %117, align 8, !dbg !4002
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4005
  store i8* %118, i8** %119, align 16, !dbg !4006, !tbaa !720
  %120 = icmp eq i8* %118, null, !dbg !4007
  br i1 %120, label %30, label %121, !dbg !4008

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 7, metadata !3991, metadata !DIExpression()), !dbg !4001
  %122 = load i8*, i8** %10, align 8, !dbg !4002
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4002
  store i8* %123, i8** %10, align 8, !dbg !4002
  %124 = bitcast i8* %122 to i8**, !dbg !4002
  %125 = load i8*, i8** %124, align 8, !dbg !4002
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4005
  store i8* %125, i8** %126, align 8, !dbg !4006, !tbaa !720
  %127 = icmp eq i8* %125, null, !dbg !4007
  br i1 %127, label %30, label %128, !dbg !4008

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 8, metadata !3991, metadata !DIExpression()), !dbg !4001
  %129 = load i8*, i8** %10, align 8, !dbg !4002
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4002
  store i8* %130, i8** %10, align 8, !dbg !4002
  %131 = bitcast i8* %129 to i8**, !dbg !4002
  %132 = load i8*, i8** %131, align 8, !dbg !4002
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4005
  store i8* %132, i8** %133, align 16, !dbg !4006, !tbaa !720
  %134 = icmp eq i8* %132, null, !dbg !4007
  br i1 %134, label %30, label %135, !dbg !4008

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3991, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 9, metadata !3991, metadata !DIExpression()), !dbg !4001
  %136 = load i8*, i8** %10, align 8, !dbg !4002
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4002
  store i8* %137, i8** %10, align 8, !dbg !4002
  %138 = bitcast i8* %136 to i8**, !dbg !4002
  %139 = load i8*, i8** %138, align 8, !dbg !4002
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4005
  store i8* %139, i8** %140, align 8, !dbg !4006, !tbaa !720
  %141 = icmp eq i8* %139, null, !dbg !4007
  %142 = select i1 %141, i64 9, i64 10, !dbg !4008
  br label %30, !dbg !4008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4012 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4016, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8* %1, metadata !4017, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %2, metadata !4018, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i8* %3, metadata !4019, metadata !DIExpression()), !dbg !4029
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4030
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4030
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4020, metadata !DIExpression()), !dbg !4031
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4032
  call void @llvm.va_start(i8* nonnull %6), !dbg !4032
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4033
  call void @llvm.va_end(i8* nonnull %6), !dbg !4034
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4035
  ret void, !dbg !4035
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4036 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.106, i64 0, i64 0), i32 5) #12, !dbg !4037
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.107, i64 0, i64 0)) #12, !dbg !4037
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.108, i64 0, i64 0), i32 5) #12, !dbg !4038
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.109, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.110, i64 0, i64 0)) #12, !dbg !4038
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.111, i64 0, i64 0), i32 5) #12, !dbg !4039
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4039, !tbaa !720
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4039
  ret void, !dbg !4040
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !4041 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4045, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4048
  %3 = udiv i64 9223372036854775807, %1, !dbg !4049
  %4 = icmp ult i64 %3, %0, !dbg !4049
  br i1 %4, label %5, label %6, !dbg !4051

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4052
  unreachable, !dbg !4052

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4053
  call void @llvm.dbg.value(metadata i64 %7, metadata !4054, metadata !DIExpression()) #12, !dbg !4061
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !4063
  call void @llvm.dbg.value(metadata i8* %8, metadata !4060, metadata !DIExpression()) #12, !dbg !4064
  %9 = icmp eq i8* %8, null, !dbg !4065
  %10 = icmp ne i64 %7, 0, !dbg !4067
  %11 = and i1 %10, %9, !dbg !4068
  br i1 %11, label %12, label %13, !dbg !4068

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4069
  unreachable, !dbg !4069

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4070
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4054, metadata !DIExpression()), !dbg !4071
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4072
  call void @llvm.dbg.value(metadata i8* %2, metadata !4060, metadata !DIExpression()), !dbg !4073
  %3 = icmp eq i8* %2, null, !dbg !4074
  %4 = icmp ne i64 %0, 0, !dbg !4075
  %5 = and i1 %4, %3, !dbg !4076
  br i1 %5, label %6, label %7, !dbg !4076

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4077
  unreachable, !dbg !4077

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4078
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !4079 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4083, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64 %1, metadata !4084, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 %2, metadata !4085, metadata !DIExpression()), !dbg !4088
  %4 = udiv i64 9223372036854775807, %2, !dbg !4089
  %5 = icmp ult i64 %4, %1, !dbg !4089
  br i1 %5, label %6, label %7, !dbg !4091

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4092
  unreachable, !dbg !4092

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4093
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()) #12, !dbg !4100
  call void @llvm.dbg.value(metadata i64 %8, metadata !4099, metadata !DIExpression()) #12, !dbg !4102
  %9 = icmp eq i64 %8, 0, !dbg !4103
  %10 = icmp ne i8* %0, null, !dbg !4105
  %11 = and i1 %10, %9, !dbg !4106
  br i1 %11, label %12, label %13, !dbg !4106

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !4107
  br label %19, !dbg !4109

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !4110
  call void @llvm.dbg.value(metadata i8* %14, metadata !4094, metadata !DIExpression()) #12, !dbg !4100
  %15 = icmp eq i8* %14, null, !dbg !4111
  %16 = icmp ne i64 %8, 0, !dbg !4113
  %17 = and i1 %16, %15, !dbg !4114
  br i1 %17, label %18, label %19, !dbg !4114

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4115
  unreachable, !dbg !4115

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4116
  ret i8* %20, !dbg !4117
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4095 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %1, metadata !4099, metadata !DIExpression()), !dbg !4119
  %3 = icmp eq i64 %1, 0, !dbg !4120
  %4 = icmp ne i8* %0, null, !dbg !4121
  %5 = and i1 %4, %3, !dbg !4122
  br i1 %5, label %6, label %7, !dbg !4122

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !4123
  br label %13, !dbg !4124

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !4125
  call void @llvm.dbg.value(metadata i8* %8, metadata !4094, metadata !DIExpression()), !dbg !4118
  %9 = icmp eq i8* %8, null, !dbg !4126
  %10 = icmp ne i64 %1, 0, !dbg !4127
  %11 = and i1 %10, %9, !dbg !4128
  br i1 %11, label %12, label %13, !dbg !4128

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4129
  unreachable, !dbg !4129

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4130
  ret i8* %14, !dbg !4131
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !248 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !253, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64* %1, metadata !254, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %2, metadata !255, metadata !DIExpression()), !dbg !4134
  %4 = load i64, i64* %1, align 8, !dbg !4135, !tbaa !3195
  call void @llvm.dbg.value(metadata i64 %4, metadata !256, metadata !DIExpression()), !dbg !4136
  %5 = icmp eq i8* %0, null, !dbg !4137
  br i1 %5, label %6, label %20, !dbg !4139

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4140
  br i1 %7, label %8, label %13, !dbg !4143

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %9, metadata !256, metadata !DIExpression()), !dbg !4136
  %10 = icmp ugt i64 %2, 128, !dbg !4146
  %11 = zext i1 %10 to i64, !dbg !4146
  %12 = add nuw nsw i64 %9, %11, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %12, metadata !256, metadata !DIExpression()), !dbg !4136
  br label %13, !dbg !4148

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4149
  call void @llvm.dbg.value(metadata i64 %14, metadata !256, metadata !DIExpression()), !dbg !4136
  %15 = udiv i64 9223372036854775807, %2, !dbg !4150
  %16 = icmp ult i64 %15, %14, !dbg !4150
  br i1 %16, label %19, label %17, !dbg !4152

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !256, metadata !DIExpression()), !dbg !4136
  store i64 %14, i64* %1, align 8, !dbg !4153, !tbaa !3195
  %18 = mul i64 %14, %2, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()) #12, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %28, metadata !4099, metadata !DIExpression()) #12, !dbg !4157
  br label %31, !dbg !4158

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4159
  unreachable, !dbg !4159

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4160
  %22 = icmp ugt i64 %21, %4, !dbg !4163
  br i1 %22, label %24, label %23, !dbg !4164

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4165
  unreachable, !dbg !4165

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4166
  %26 = add i64 %4, 1, !dbg !4167
  %27 = add i64 %26, %25, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %27, metadata !256, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 %27, metadata !256, metadata !DIExpression()), !dbg !4136
  store i64 %27, i64* %1, align 8, !dbg !4153, !tbaa !3195
  %28 = mul i64 %27, %2, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()) #12, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %28, metadata !4099, metadata !DIExpression()) #12, !dbg !4157
  %29 = icmp eq i64 %28, 0, !dbg !4169
  br i1 %29, label %30, label %31, !dbg !4158

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !4170
  br label %38, !dbg !4171

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %33, metadata !4094, metadata !DIExpression()) #12, !dbg !4155
  %34 = icmp eq i8* %33, null, !dbg !4173
  %35 = icmp ne i64 %32, 0, !dbg !4174
  %36 = and i1 %35, %34, !dbg !4175
  br i1 %36, label %37, label %38, !dbg !4175

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4176
  unreachable, !dbg !4176

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4177
  ret i8* %39, !dbg !4178
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !4179 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %0, metadata !4054, metadata !DIExpression()) #12, !dbg !4183
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4185
  call void @llvm.dbg.value(metadata i8* %2, metadata !4060, metadata !DIExpression()) #12, !dbg !4186
  %3 = icmp eq i8* %2, null, !dbg !4187
  %4 = icmp ne i64 %0, 0, !dbg !4188
  %5 = and i1 %4, %3, !dbg !4189
  br i1 %5, label %6, label %7, !dbg !4189

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4190
  unreachable, !dbg !4190

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4191
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4196, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i64* %1, metadata !4197, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i8* %0, metadata !253, metadata !DIExpression()) #12, !dbg !4200
  call void @llvm.dbg.value(metadata i64* %1, metadata !254, metadata !DIExpression()) #12, !dbg !4202
  call void @llvm.dbg.value(metadata i64 1, metadata !255, metadata !DIExpression()) #12, !dbg !4203
  %3 = load i64, i64* %1, align 8, !dbg !4204, !tbaa !3195
  call void @llvm.dbg.value(metadata i64 %3, metadata !256, metadata !DIExpression()) #12, !dbg !4205
  %4 = icmp eq i8* %0, null, !dbg !4206
  br i1 %4, label %5, label %12, !dbg !4207

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4208
  br i1 %6, label %9, label %7, !dbg !4209

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !256, metadata !DIExpression()) #12, !dbg !4205
  %8 = icmp slt i64 %3, 0, !dbg !4210
  br i1 %8, label %11, label %9, !dbg !4211

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !256, metadata !DIExpression()) #12, !dbg !4205
  store i64 %10, i64* %1, align 8, !dbg !4212, !tbaa !3195
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()) #12, !dbg !4213
  call void @llvm.dbg.value(metadata i64 %18, metadata !4099, metadata !DIExpression()) #12, !dbg !4215
  br label %21, !dbg !4216

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4217
  unreachable, !dbg !4217

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4218
  br i1 %13, label %15, label %14, !dbg !4219

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4220
  unreachable, !dbg !4220

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4221
  %17 = add i64 %3, 1, !dbg !4222
  %18 = add i64 %17, %16, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %18, metadata !256, metadata !DIExpression()) #12, !dbg !4205
  call void @llvm.dbg.value(metadata i64 %18, metadata !256, metadata !DIExpression()) #12, !dbg !4205
  store i64 %18, i64* %1, align 8, !dbg !4212, !tbaa !3195
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()) #12, !dbg !4213
  call void @llvm.dbg.value(metadata i64 %18, metadata !4099, metadata !DIExpression()) #12, !dbg !4215
  %19 = icmp eq i64 %18, 0, !dbg !4224
  br i1 %19, label %20, label %21, !dbg !4216

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !4225
  br label %28, !dbg !4226

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !4227
  call void @llvm.dbg.value(metadata i8* %23, metadata !4094, metadata !DIExpression()) #12, !dbg !4213
  %24 = icmp eq i8* %23, null, !dbg !4228
  %25 = icmp ne i64 %22, 0, !dbg !4229
  %26 = and i1 %25, %24, !dbg !4230
  br i1 %26, label %27, label %28, !dbg !4230

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4231
  unreachable, !dbg !4231

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4232
  ret i8* %29, !dbg !4233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4234 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4236, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %0, metadata !4054, metadata !DIExpression()) #12, !dbg !4238
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %2, metadata !4060, metadata !DIExpression()) #12, !dbg !4241
  %3 = icmp eq i8* %2, null, !dbg !4242
  %4 = icmp ne i64 %0, 0, !dbg !4243
  %5 = and i1 %4, %3, !dbg !4244
  br i1 %5, label %6, label %7, !dbg !4244

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4245
  unreachable, !dbg !4245

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4246
  ret i8* %2, !dbg !4247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4248 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4250, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 %1, metadata !4251, metadata !DIExpression()), !dbg !4254
  %3 = udiv i64 9223372036854775807, %1, !dbg !4255
  %4 = icmp ult i64 %3, %0, !dbg !4255
  br i1 %4, label %8, label %5, !dbg !4257

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %6, metadata !4252, metadata !DIExpression()), !dbg !4259
  %7 = icmp eq i8* %6, null, !dbg !4260
  br i1 %7, label %8, label %9, !dbg !4261

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4262
  unreachable, !dbg !4262

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4264 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %1, metadata !4271, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4054, metadata !DIExpression()) #12, !dbg !4274
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !4276
  call void @llvm.dbg.value(metadata i8* %3, metadata !4060, metadata !DIExpression()) #12, !dbg !4277
  %4 = icmp eq i8* %3, null, !dbg !4278
  %5 = icmp ne i64 %1, 0, !dbg !4279
  %6 = and i1 %5, %4, !dbg !4280
  br i1 %6, label %7, label %8, !dbg !4280

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4281
  unreachable, !dbg !4281

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4282
  ret i8* %3, !dbg !4283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4286, metadata !DIExpression()), !dbg !4287
  %2 = tail call i64 @strlen(i8* %0) #10, !dbg !4288
  %3 = add i64 %2, 1, !dbg !4289
  call void @llvm.dbg.value(metadata i8* %0, metadata !4270, metadata !DIExpression()) #12, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %3, metadata !4271, metadata !DIExpression()) #12, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %3, metadata !4054, metadata !DIExpression()) #12, !dbg !4293
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !4295
  call void @llvm.dbg.value(metadata i8* %4, metadata !4060, metadata !DIExpression()) #12, !dbg !4296
  %5 = icmp eq i8* %4, null, !dbg !4297
  %6 = icmp ne i64 %3, 0, !dbg !4298
  %7 = and i1 %6, %5, !dbg !4299
  br i1 %7, label %8, label %9, !dbg !4299

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4300
  unreachable, !dbg !4300

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !4301
  ret i8* %4, !dbg !4302
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4303 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4305, !tbaa !859
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #12, !dbg !4306
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #12, !dbg !4307
  tail call void @abort() #15, !dbg !4308
  unreachable, !dbg !4308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4309 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4317, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata i32 %1, metadata !4318, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %2, metadata !4319, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 %3, metadata !4320, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8* %4, metadata !4321, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i8* %5, metadata !4322, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 %6, metadata !4323, metadata !DIExpression()), !dbg !4333
  %9 = bitcast i64* %8 to i8*, !dbg !4334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #12, !dbg !4334
  call void @llvm.dbg.value(metadata i64* %8, metadata !4326, metadata !DIExpression(DW_OP_deref)), !dbg !4335
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #12, !dbg !4336
  call void @llvm.dbg.value(metadata i32 %10, metadata !4324, metadata !DIExpression()), !dbg !4337
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4338

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !4339
  br label %27, !dbg !4338

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4342, !tbaa !3195
  call void @llvm.dbg.value(metadata i64 %14, metadata !4326, metadata !DIExpression()), !dbg !4335
  %15 = icmp ult i64 %14, %2, !dbg !4346
  %16 = icmp ugt i64 %14, %3, !dbg !4347
  %17 = or i1 %15, %16, !dbg !4348
  br i1 %17, label %18, label %36, !dbg !4348

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4324, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i64 %14, metadata !4326, metadata !DIExpression()), !dbg !4335
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4349
  %20 = tail call i32* @__errno_location() #17, !dbg !4352
  br i1 %19, label %21, label %22, !dbg !4353

; <label>:21:                                     ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4354, !tbaa !859
  br label %27, !dbg !4355

; <label>:22:                                     ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4356, !tbaa !859
  br label %27

; <label>:23:                                     ; preds = %7
  %24 = tail call i32* @__errno_location() #17, !dbg !4357
  store i32 75, i32* %24, align 4, !dbg !4359, !tbaa !859
  br label %27, !dbg !4357

; <label>:25:                                     ; preds = %7
  %26 = tail call i32* @__errno_location() #17, !dbg !4360
  store i32 0, i32* %26, align 4, !dbg !4362, !tbaa !859
  br label %27, !dbg !4360

; <label>:27:                                     ; preds = %11, %21, %22, %23, %25
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %24, %23 ], [ %26, %25 ], !dbg !4339
  %29 = icmp eq i32 %6, 0, !dbg !4363
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4363
  %31 = load i32, i32* %28, align 4, !dbg !4339, !tbaa !859
  %32 = icmp eq i32 %31, 22, !dbg !4364
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4339
  %34 = call i8* @quote(i8* %0) #12, !dbg !4365
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* %5, i8* %34) #12, !dbg !4366
  %35 = load i64, i64* %8, align 8, !dbg !4367, !tbaa !3195
  br label %36, !dbg !4368

; <label>:36:                                     ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4367
  call void @llvm.dbg.value(metadata i64 %37, metadata !4326, metadata !DIExpression()), !dbg !4335
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12, !dbg !4369
  ret i64 %37, !dbg !4370
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4375, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %1, metadata !4376, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %2, metadata !4377, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i8* %3, metadata !4378, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i8* %4, metadata !4379, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 %5, metadata !4380, metadata !DIExpression()), !dbg !4386
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4387
  ret i64 %7, !dbg !4388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !4389 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4395, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i8** %1, metadata !4396, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i32 %2, metadata !4397, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64* %3, metadata !4398, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i8* %4, metadata !4399, metadata !DIExpression()), !dbg !4417
  %7 = bitcast i8** %6 to i8*, !dbg !4418
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4418
  call void @llvm.dbg.value(metadata i32 0, metadata !4403, metadata !DIExpression()), !dbg !4419
  %8 = icmp ult i32 %2, 37, !dbg !4420
  br i1 %8, label %10, label %9, !dbg !4420

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.129, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.130, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !4420
  unreachable, !dbg !4420

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4423
  call void @llvm.dbg.value(metadata i8** %25, metadata !4401, metadata !DIExpression()), !dbg !4424
  %12 = tail call i32* @__errno_location() #17, !dbg !4425
  store i32 0, i32* %12, align 4, !dbg !4426, !tbaa !859
  call void @llvm.dbg.value(metadata i8* %0, metadata !4404, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i8* %0, metadata !4407, metadata !DIExpression(DW_OP_deref)), !dbg !4428
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4429
  %14 = load i16*, i16** %13, align 8, !tbaa !720
  br label %15, !dbg !4430

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4431
  %17 = load i8, i8* %16, align 1, !dbg !4431, !tbaa !869
  call void @llvm.dbg.value(metadata i8 %17, metadata !4407, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i8* %16, metadata !4404, metadata !DIExpression()), !dbg !4427
  %18 = zext i8 %17 to i64, !dbg !4429
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4429
  %20 = load i16, i16* %19, align 2, !dbg !4429, !tbaa !1516
  %21 = and i16 %20, 8192, !dbg !4429
  %22 = icmp eq i16 %21, 0, !dbg !4430
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4432
  call void @llvm.dbg.value(metadata i8* %23, metadata !4404, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i8* %23, metadata !4407, metadata !DIExpression(DW_OP_deref)), !dbg !4428
  br i1 %22, label %24, label %15, !dbg !4430, !llvm.loop !4433

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4423
  %26 = icmp eq i8 %17, 45, !dbg !4435
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4437, metadata !DIExpression()) #12, !dbg !4447
  call void @llvm.dbg.value(metadata i8** %25, metadata !4445, metadata !DIExpression()) #12, !dbg !4447
  call void @llvm.dbg.value(metadata i32 %2, metadata !4446, metadata !DIExpression()) #12, !dbg !4447
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #12, !dbg !4449
  call void @llvm.dbg.value(metadata i64 %28, metadata !4402, metadata !DIExpression()), !dbg !4450
  %29 = load i8*, i8** %25, align 8, !dbg !4451, !tbaa !720
  %30 = icmp eq i8* %29, %0, !dbg !4453
  br i1 %30, label %31, label %40, !dbg !4454

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4455
  br i1 %32, label %265, label %33, !dbg !4458

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4459, !tbaa !869
  %35 = icmp eq i8 %34, 0, !dbg !4459
  br i1 %35, label %265, label %36, !dbg !4460

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4459
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !4461
  %39 = icmp eq i8* %38, null, !dbg !4461
  br i1 %39, label %265, label %47, !dbg !4462

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4463, !tbaa !859
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4465

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4403, metadata !DIExpression()), !dbg !4419
  br label %43, !dbg !4466

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4468
  call void @llvm.dbg.value(metadata i32 %44, metadata !4403, metadata !DIExpression()), !dbg !4419
  %45 = icmp eq i8* %4, null, !dbg !4469
  br i1 %45, label %46, label %47, !dbg !4471

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4402, metadata !DIExpression()), !dbg !4450
  store i64 %28, i64* %3, align 8, !dbg !4472, !tbaa !3195
  br label %265, !dbg !4474

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4475, !tbaa !869
  %51 = sext i8 %50 to i32, !dbg !4475
  %52 = icmp eq i8 %50, 0, !dbg !4476
  br i1 %52, label %262, label %53, !dbg !4477

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4408, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 1, metadata !4411, metadata !DIExpression()), !dbg !4479
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #10, !dbg !4480
  %55 = icmp eq i8* %54, null, !dbg !4480
  br i1 %55, label %56, label %58, !dbg !4482

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4402, metadata !DIExpression()), !dbg !4450
  store i64 %49, i64* %3, align 8, !dbg !4483, !tbaa !3195
  %57 = or i32 %48, 2, !dbg !4485
  br label %265, !dbg !4486

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
  ], !dbg !4487

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !4488
  %61 = icmp eq i8* %60, null, !dbg !4488
  br i1 %61, label %72, label %62, !dbg !4491

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4492
  %64 = load i8, i8* %63, align 1, !dbg !4492, !tbaa !869
  %65 = sext i8 %64 to i32, !dbg !4492
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4493

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4494
  %68 = load i8, i8* %67, align 1, !dbg !4494, !tbaa !869
  %69 = icmp eq i8 %68, 66, !dbg !4497
  %70 = select i1 %69, i64 3, i64 1, !dbg !4498
  br label %72, !dbg !4498

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4408, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 2, metadata !4411, metadata !DIExpression()), !dbg !4479
  br label %72, !dbg !4499

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
  ], !dbg !4500

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4501, metadata !DIExpression()), !dbg !4507
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4510
  %77 = shl i64 %49, 9, !dbg !4512
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4513
  %79 = zext i1 %76 to i32, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %79, metadata !4412, metadata !DIExpression()), !dbg !4514
  br label %253, !dbg !4515

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4501, metadata !DIExpression()), !dbg !4516
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4518
  %82 = shl i64 %49, 10, !dbg !4519
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4520
  %84 = zext i1 %81 to i32, !dbg !4520
  call void @llvm.dbg.value(metadata i32 %84, metadata !4412, metadata !DIExpression()), !dbg !4514
  br label %253, !dbg !4521

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !4522, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4532
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 6, metadata !4522, metadata !DIExpression()), !dbg !4530
  %87 = icmp ult i64 %86, %49, !dbg !4533
  %88 = mul i64 %49, %73, !dbg !4535
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4536
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4530
  %90 = icmp ult i64 %86, %89, !dbg !4533
  %91 = mul i64 %89, %73, !dbg !4535
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4536
  %93 = or i1 %87, %90, !dbg !4537
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4530
  %94 = icmp ult i64 %86, %92, !dbg !4533
  %95 = mul i64 %92, %73, !dbg !4535
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4536
  %97 = or i1 %93, %94, !dbg !4537
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4530
  %98 = icmp ult i64 %86, %96, !dbg !4533
  %99 = mul i64 %96, %73, !dbg !4535
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4536
  %101 = or i1 %97, %98, !dbg !4537
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4530
  %102 = icmp ult i64 %86, %100, !dbg !4533
  %103 = mul i64 %100, %73, !dbg !4535
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4536
  %105 = or i1 %101, %102, !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4530
  %106 = icmp ult i64 %86, %104, !dbg !4533
  %107 = mul i64 %104, %73, !dbg !4535
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4536
  %109 = or i1 %105, %106, !dbg !4537
  %110 = zext i1 %109 to i32, !dbg !4537
  call void @llvm.dbg.value(metadata i32 %110, metadata !4529, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4530
  br label %253, !dbg !4538

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4541
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4539
  %113 = icmp ult i64 %112, %49, !dbg !4542
  %114 = mul i64 %49, %73, !dbg !4544
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4545
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4539
  %116 = icmp ult i64 %112, %115, !dbg !4542
  %117 = mul i64 %115, %73, !dbg !4544
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4545
  %119 = or i1 %113, %116, !dbg !4546
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4539
  %120 = icmp ult i64 %112, %118, !dbg !4542
  %121 = mul i64 %118, %73, !dbg !4544
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4545
  %123 = or i1 %119, %120, !dbg !4546
  %124 = zext i1 %123 to i32, !dbg !4546
  call void @llvm.dbg.value(metadata i32 %124, metadata !4529, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4539
  br label %253, !dbg !4538

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4549
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 undef, metadata !4522, metadata !DIExpression()), !dbg !4547
  %127 = icmp ult i64 %126, %49, !dbg !4550
  %128 = mul i64 %49, %73, !dbg !4552
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4553
  %130 = zext i1 %127 to i32, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %130, metadata !4529, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 undef, metadata !4522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4547
  br label %253, !dbg !4538

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4556
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4554
  %133 = icmp ult i64 %132, %49, !dbg !4557
  %134 = mul i64 %49, %73, !dbg !4559
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4560
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4554
  %136 = icmp ult i64 %132, %135, !dbg !4557
  %137 = mul i64 %135, %73, !dbg !4559
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4560
  %139 = or i1 %133, %136, !dbg !4561
  %140 = zext i1 %139 to i32, !dbg !4561
  call void @llvm.dbg.value(metadata i32 %140, metadata !4529, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4554
  br label %253, !dbg !4538

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4564
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4562
  %143 = icmp ult i64 %142, %49, !dbg !4565
  %144 = mul i64 %49, %73, !dbg !4567
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4568
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4562
  %146 = icmp ult i64 %142, %145, !dbg !4565
  %147 = mul i64 %145, %73, !dbg !4567
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4568
  %149 = or i1 %143, %146, !dbg !4569
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4562
  %150 = icmp ult i64 %142, %148, !dbg !4565
  %151 = mul i64 %148, %73, !dbg !4567
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4568
  %153 = or i1 %149, %150, !dbg !4569
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4562
  %154 = icmp ult i64 %142, %152, !dbg !4565
  %155 = mul i64 %152, %73, !dbg !4567
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4568
  %157 = or i1 %153, %154, !dbg !4569
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4562
  %158 = icmp ult i64 %142, %156, !dbg !4565
  %159 = mul i64 %156, %73, !dbg !4567
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4568
  %161 = or i1 %157, %158, !dbg !4569
  %162 = zext i1 %161 to i32, !dbg !4569
  call void @llvm.dbg.value(metadata i32 %162, metadata !4529, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4562
  br label %253, !dbg !4538

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4572
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4570
  %165 = icmp ult i64 %164, %49, !dbg !4573
  %166 = mul i64 %49, %73, !dbg !4575
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4576
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4570
  %168 = icmp ult i64 %164, %167, !dbg !4573
  %169 = mul i64 %167, %73, !dbg !4575
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4576
  %171 = or i1 %165, %168, !dbg !4577
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4570
  %172 = icmp ult i64 %164, %170, !dbg !4573
  %173 = mul i64 %170, %73, !dbg !4575
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4576
  %175 = or i1 %171, %172, !dbg !4577
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4570
  %176 = icmp ult i64 %164, %174, !dbg !4573
  %177 = mul i64 %174, %73, !dbg !4575
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4576
  %179 = or i1 %175, %176, !dbg !4577
  %180 = zext i1 %179 to i32, !dbg !4577
  call void @llvm.dbg.value(metadata i32 %180, metadata !4529, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4570
  br label %253, !dbg !4538

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4501, metadata !DIExpression()), !dbg !4578
  %182 = icmp slt i64 %49, 0, !dbg !4580
  %183 = shl i64 %49, 1, !dbg !4581
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4582
  %185 = lshr i64 %49, 63, !dbg !4582
  %186 = trunc i64 %185 to i32, !dbg !4582
  call void @llvm.dbg.value(metadata i32 %186, metadata !4412, metadata !DIExpression()), !dbg !4514
  br label %253, !dbg !4583

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4586
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 8, metadata !4522, metadata !DIExpression()), !dbg !4584
  %189 = icmp ult i64 %188, %49, !dbg !4587
  %190 = mul i64 %49, %73, !dbg !4589
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4590
  call void @llvm.dbg.value(metadata i32 7, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 7, metadata !4522, metadata !DIExpression()), !dbg !4584
  %192 = icmp ult i64 %188, %191, !dbg !4587
  %193 = mul i64 %191, %73, !dbg !4589
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4590
  %195 = or i1 %189, %192, !dbg !4591
  call void @llvm.dbg.value(metadata i32 6, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 6, metadata !4522, metadata !DIExpression()), !dbg !4584
  %196 = icmp ult i64 %188, %194, !dbg !4587
  %197 = mul i64 %194, %73, !dbg !4589
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4590
  %199 = or i1 %195, %196, !dbg !4591
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4584
  %200 = icmp ult i64 %188, %198, !dbg !4587
  %201 = mul i64 %198, %73, !dbg !4589
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4590
  %203 = or i1 %199, %200, !dbg !4591
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4584
  %204 = icmp ult i64 %188, %202, !dbg !4587
  %205 = mul i64 %202, %73, !dbg !4589
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4590
  %207 = or i1 %203, %204, !dbg !4591
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4584
  %208 = icmp ult i64 %188, %206, !dbg !4587
  %209 = mul i64 %206, %73, !dbg !4589
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4590
  %211 = or i1 %207, %208, !dbg !4591
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4584
  %212 = icmp ult i64 %188, %210, !dbg !4587
  %213 = mul i64 %210, %73, !dbg !4589
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4590
  %215 = or i1 %211, %212, !dbg !4591
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4584
  %216 = icmp ult i64 %188, %214, !dbg !4587
  %217 = mul i64 %214, %73, !dbg !4589
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4590
  %219 = or i1 %215, %216, !dbg !4591
  %220 = zext i1 %219 to i32, !dbg !4591
  call void @llvm.dbg.value(metadata i32 %220, metadata !4529, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4584
  br label %253, !dbg !4538

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !4522, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4594
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4529, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i32 7, metadata !4522, metadata !DIExpression()), !dbg !4592
  %223 = icmp ult i64 %222, %49, !dbg !4595
  %224 = mul i64 %49, %73, !dbg !4597
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4598
  call void @llvm.dbg.value(metadata i32 6, metadata !4522, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 6, metadata !4522, metadata !DIExpression()), !dbg !4592
  %226 = icmp ult i64 %222, %225, !dbg !4595
  %227 = mul i64 %225, %73, !dbg !4597
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4598
  %229 = or i1 %223, %226, !dbg !4599
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 5, metadata !4522, metadata !DIExpression()), !dbg !4592
  %230 = icmp ult i64 %222, %228, !dbg !4595
  %231 = mul i64 %228, %73, !dbg !4597
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4598
  %233 = or i1 %229, %230, !dbg !4599
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 4, metadata !4522, metadata !DIExpression()), !dbg !4592
  %234 = icmp ult i64 %222, %232, !dbg !4595
  %235 = mul i64 %232, %73, !dbg !4597
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4598
  %237 = or i1 %233, %234, !dbg !4599
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 3, metadata !4522, metadata !DIExpression()), !dbg !4592
  %238 = icmp ult i64 %222, %236, !dbg !4595
  %239 = mul i64 %236, %73, !dbg !4597
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4598
  %241 = or i1 %237, %238, !dbg !4599
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 2, metadata !4522, metadata !DIExpression()), !dbg !4592
  %242 = icmp ult i64 %222, %240, !dbg !4595
  %243 = mul i64 %240, %73, !dbg !4597
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4598
  %245 = or i1 %241, %242, !dbg !4599
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 1, metadata !4522, metadata !DIExpression()), !dbg !4592
  %246 = icmp ult i64 %222, %244, !dbg !4595
  %247 = mul i64 %244, %73, !dbg !4597
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4598
  %249 = or i1 %245, %246, !dbg !4599
  %250 = zext i1 %249 to i32, !dbg !4599
  call void @llvm.dbg.value(metadata i32 %250, metadata !4529, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4592
  br label %253, !dbg !4538

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4402, metadata !DIExpression()), !dbg !4450
  store i64 %49, i64* %3, align 8, !dbg !4600, !tbaa !3195
  %252 = or i32 %48, 2, !dbg !4601
  br label %265, !dbg !4602

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4603
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4604
  call void @llvm.dbg.value(metadata i32 %255, metadata !4412, metadata !DIExpression()), !dbg !4514
  %256 = or i32 %255, %48, !dbg !4538
  call void @llvm.dbg.value(metadata i32 %256, metadata !4403, metadata !DIExpression()), !dbg !4419
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4605
  store i8* %257, i8** %25, align 8, !dbg !4605, !tbaa !720
  %258 = load i8, i8* %257, align 1, !dbg !4606, !tbaa !869
  %259 = icmp eq i8 %258, 0, !dbg !4606
  %260 = or i32 %256, 2, !dbg !4608
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4609
  call void @llvm.dbg.value(metadata i32 %261, metadata !4403, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i32 %261, metadata !4403, metadata !DIExpression()), !dbg !4419
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4610
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !4419
  call void @llvm.dbg.value(metadata i32 %264, metadata !4403, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %263, metadata !4402, metadata !DIExpression()), !dbg !4450
  store i64 %263, i64* %3, align 8, !dbg !4611, !tbaa !3195
  br label %265, !dbg !4612

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4613
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4614
  ret i32 %266, !dbg !4614
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4615 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4618, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %1, metadata !4619, metadata !DIExpression()), !dbg !4625
  %3 = icmp eq i64 %0, 0, !dbg !4626
  %4 = icmp eq i64 %1, 0, !dbg !4627
  %5 = or i1 %3, %4, !dbg !4628
  br i1 %5, label %12, label %6, !dbg !4628

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4629
  call void @llvm.dbg.value(metadata i64 %7, metadata !4621, metadata !DIExpression()), !dbg !4630
  %8 = udiv i64 %7, %1, !dbg !4631
  %9 = icmp eq i64 %8, %0, !dbg !4633
  br i1 %9, label %12, label %10, !dbg !4634

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4635
  store i32 12, i32* %11, align 4, !dbg !4637, !tbaa !859
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4618, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %13, metadata !4619, metadata !DIExpression()), !dbg !4625
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %15, metadata !4620, metadata !DIExpression()), !dbg !4639
  br label %16, !dbg !4640

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4641
  ret i8* %17, !dbg !4642
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4643 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4682, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i32 0, metadata !4683, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i32 0, metadata !4685, metadata !DIExpression()), !dbg !4688
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4689
  call void @llvm.dbg.value(metadata i32 %2, metadata !4684, metadata !DIExpression()), !dbg !4690
  %3 = icmp slt i32 %2, 0, !dbg !4691
  br i1 %3, label %4, label %6, !dbg !4693

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4694
  br label %24, !dbg !4695

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4696
  %8 = icmp eq i32 %7, 0, !dbg !4696
  br i1 %8, label %13, label %9, !dbg !4698

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4699
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4700
  %12 = icmp eq i64 %11, -1, !dbg !4701
  br i1 %12, label %16, label %13, !dbg !4702

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4703
  %15 = icmp eq i32 %14, 0, !dbg !4703
  br i1 %15, label %16, label %18, !dbg !4704

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4683, metadata !DIExpression()), !dbg !4687
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4705
  call void @llvm.dbg.value(metadata i32 %21, metadata !4685, metadata !DIExpression()), !dbg !4688
  br label %24, !dbg !4706

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4707
  %20 = load i32, i32* %19, align 4, !dbg !4707, !tbaa !859
  call void @llvm.dbg.value(metadata i32 %20, metadata !4683, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i32 %20, metadata !4683, metadata !DIExpression()), !dbg !4687
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4705
  call void @llvm.dbg.value(metadata i32 %21, metadata !4685, metadata !DIExpression()), !dbg !4688
  %22 = icmp eq i32 %20, 0, !dbg !4708
  br i1 %22, label %24, label %23, !dbg !4706

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4710, !tbaa !859
  call void @llvm.dbg.value(metadata i32 -1, metadata !4685, metadata !DIExpression()), !dbg !4688
  br label %24, !dbg !4712

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4713
  ret i32 %25, !dbg !4714
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4715 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4754, metadata !DIExpression()), !dbg !4755
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4756
  br i1 %2, label %6, label %3, !dbg !4758

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4759
  %5 = icmp eq i32 %4, 0, !dbg !4759
  br i1 %5, label %6, label %8, !dbg !4760

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4761
  br label %17, !dbg !4762

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4763, metadata !DIExpression()) #12, !dbg !4768
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4770
  %10 = load i32, i32* %9, align 8, !dbg !4770, !tbaa !4772
  %11 = and i32 %10, 256, !dbg !4773
  %12 = icmp eq i32 %11, 0, !dbg !4773
  br i1 %12, label %15, label %13, !dbg !4774

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4775
  br label %15, !dbg !4775

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4776
  br label %17, !dbg !4777

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4778
  ret i32 %18, !dbg !4779
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4780 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4819, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %1, metadata !4820, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 %2, metadata !4821, metadata !DIExpression()), !dbg !4827
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4828
  %5 = load i8*, i8** %4, align 8, !dbg !4828, !tbaa !1174
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4829
  %7 = load i8*, i8** %6, align 8, !dbg !4829, !tbaa !1173
  %8 = icmp eq i8* %5, %7, !dbg !4830
  br i1 %8, label %9, label %28, !dbg !4831

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4832
  %11 = load i8*, i8** %10, align 8, !dbg !4832, !tbaa !1085
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4833
  %13 = load i8*, i8** %12, align 8, !dbg !4833, !tbaa !4834
  %14 = icmp eq i8* %11, %13, !dbg !4835
  br i1 %14, label %15, label %28, !dbg !4836

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4837
  %17 = load i8*, i8** %16, align 8, !dbg !4837, !tbaa !4838
  %18 = icmp eq i8* %17, null, !dbg !4839
  br i1 %18, label %19, label %28, !dbg !4840

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4841
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %21, metadata !4822, metadata !DIExpression()), !dbg !4843
  %22 = icmp eq i64 %21, -1, !dbg !4844
  br i1 %22, label %30, label %23, !dbg !4846

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4847
  %25 = load i32, i32* %24, align 8, !dbg !4848, !tbaa !4772
  %26 = and i32 %25, -17, !dbg !4848
  store i32 %26, i32* %24, align 8, !dbg !4848, !tbaa !4772
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4849
  store i64 %21, i64* %27, align 8, !dbg !4850, !tbaa !4851
  br label %30, !dbg !4852

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4853
  br label %30, !dbg !4854

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4855
  ret i32 %31, !dbg !4856
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4857 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4874, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i8* %1, metadata !4875, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i64 %2, metadata !4876, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4877, metadata !DIExpression()), !dbg !4886
  %6 = bitcast i32* %5 to i8*, !dbg !4887
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4887
  %7 = icmp eq i32* %0, null, !dbg !4888
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4890
  call void @llvm.dbg.value(metadata i32* %8, metadata !4874, metadata !DIExpression()), !dbg !4883
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4891
  call void @llvm.dbg.value(metadata i64 %9, metadata !4878, metadata !DIExpression()), !dbg !4892
  %10 = icmp ugt i64 %9, -3, !dbg !4893
  %11 = icmp ne i64 %2, 0, !dbg !4894
  %12 = and i1 %11, %10, !dbg !4895
  br i1 %12, label %13, label %18, !dbg !4895

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4896
  br i1 %14, label %18, label %15, !dbg !4897

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4898, !tbaa !869
  call void @llvm.dbg.value(metadata i8 %16, metadata !4880, metadata !DIExpression()), !dbg !4899
  %17 = zext i8 %16 to i32, !dbg !4900
  store i32 %17, i32* %8, align 4, !dbg !4901, !tbaa !859
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4902
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4903
  ret i64 %19, !dbg !4903
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4904 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4943, metadata !DIExpression()), !dbg !4948
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4949
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4950, metadata !DIExpression()), !dbg !4953
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4955
  %4 = load i32, i32* %3, align 8, !dbg !4955, !tbaa !4772
  %5 = and i32 %4, 32, !dbg !4955
  %6 = icmp eq i32 %5, 0, !dbg !4956
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4957
  %8 = icmp ne i32 %7, 0, !dbg !4958
  br i1 %6, label %9, label %19, !dbg !4959

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4961
  %11 = xor i1 %8, true, !dbg !4962
  %12 = or i1 %10, %11, !dbg !4962
  %13 = sext i1 %8 to i32, !dbg !4962
  br i1 %12, label %22, label %14, !dbg !4962

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4963
  %16 = load i32, i32* %15, align 4, !dbg !4963, !tbaa !859
  %17 = icmp ne i32 %16, 9, !dbg !4964
  %18 = sext i1 %17 to i32, !dbg !4965
  br label %22, !dbg !4965

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4966

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4968
  store i32 0, i32* %21, align 4, !dbg !4970, !tbaa !859
  br label %22, !dbg !4968

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4971
  ret i32 %23, !dbg !4972
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4973 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4976, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i8 1, metadata !4977, metadata !DIExpression()), !dbg !4980
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4981
  call void @llvm.dbg.value(metadata i8* %2, metadata !4978, metadata !DIExpression()), !dbg !4982
  %3 = icmp eq i8* %2, null, !dbg !4983
  br i1 %3, label %11, label %4, !dbg !4985

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0)) #10, !dbg !4986
  %6 = icmp eq i32 %5, 0, !dbg !4991
  br i1 %6, label %10, label %7, !dbg !4992

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.146, i64 0, i64 0)) #10, !dbg !4993
  %9 = icmp eq i32 %8, 0, !dbg !4994
  br i1 %9, label %10, label %11, !dbg !4995

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4977, metadata !DIExpression()), !dbg !4980
  br label %11, !dbg !4996

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4997
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4998 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !5004
  call void @llvm.dbg.value(metadata i8* %1, metadata !5003, metadata !DIExpression()), !dbg !5005
  %2 = icmp eq i8* %1, null, !dbg !5006
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.149, i64 0, i64 0), i8* %1, !dbg !5008
  call void @llvm.dbg.value(metadata i8* %3, metadata !5003, metadata !DIExpression()), !dbg !5005
  %4 = load i8, i8* %3, align 1, !dbg !5009, !tbaa !869
  %5 = icmp eq i8 %4, 0, !dbg !5013
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0), i8* %3, !dbg !5014
  call void @llvm.dbg.value(metadata i8* %6, metadata !5003, metadata !DIExpression()), !dbg !5005
  ret i8* %6, !dbg !5015
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !143, !149, !157, !232, !164, !171, !235, !225, !243, !260, !262, !273, !277, !279, !281, !283, !285, !288, !290, !292}
!llvm.ident = !{!681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681}
!llvm.module.flags = !{!682, !683, !684, !685, !686}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "uniform", scope: !2, file: !3, line: 183, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !54)
!3 = !DIFile(filename: "src/fmt.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 46, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!32 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!36 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!37 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!38 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!39 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!40 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!44 = !{!7, !45, !47, !48, !49, !50, !51, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "COST", file: !3, line: 64, baseType: !53)
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !{!55, !58, !60, !62, !63, !67, !69, !71, !73, !75, !77, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !114, !116, !135}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "crown", scope: !2, file: !3, line: 174, type: !57, isLocal: true, isDefinition: true)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "tagged", scope: !2, file: !3, line: 177, type: !57, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "split", scope: !2, file: !3, line: 180, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 186, type: !65, isLocal: true, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "max_width", scope: !2, file: !3, line: 190, type: !50, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "prefix_full_length", scope: !2, file: !3, line: 195, type: !50, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "prefix_lead_space", scope: !2, file: !3, line: 198, type: !50, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "prefix_length", scope: !2, file: !3, line: 201, type: !50, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "goal_width", scope: !2, file: !3, line: 204, type: !50, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 302, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2560, elements: !89)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !82, line: 50, size: 256, elements: !83)
!82 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!83 = !{!84, !85, !86, !88}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !82, line: 52, baseType: !65, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !81, file: !82, line: 55, baseType: !50, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !81, file: !82, line: 56, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !82, line: 57, baseType: !50, size: 32, offset: 192)
!89 = !{!90}
!90 = !DISubrange(count: 10)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "tabs", scope: !2, file: !3, line: 232, type: !57, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "other_indent", scope: !2, file: !3, line: 241, type: !50, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "in_column", scope: !2, file: !3, line: 209, type: !50, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "next_prefix_indent", scope: !2, file: !3, line: 255, type: !50, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "next_char", scope: !2, file: !3, line: 251, type: !50, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "last_line_length", scope: !2, file: !3, line: 260, type: !50, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "out_column", scope: !2, file: !3, line: 212, type: !50, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "prefix_indent", scope: !2, file: !3, line: 235, type: !50, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "first_indent", scope: !2, file: !3, line: 238, type: !50, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "parabuf", scope: !2, file: !3, line: 216, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 40000, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 5000)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "wptr", scope: !2, file: !3, line: 219, type: !45, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "unused_word_type", scope: !2, file: !3, line: 223, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 320000, elements: !133)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !3, line: 129, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Word", file: !3, line: 131, size: 320, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !120, file: !3, line: 136, baseType: !65, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !120, file: !3, line: 137, baseType: !50, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !120, file: !3, line: 138, baseType: !50, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "paren", scope: !120, file: !3, line: 139, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !120, file: !3, line: 140, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !120, file: !3, line: 141, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !120, file: !3, line: 142, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !120, file: !3, line: 146, baseType: !50, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "best_cost", scope: !120, file: !3, line: 147, baseType: !52, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_break", scope: !120, file: !3, line: 148, baseType: !132, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!133 = !{!134}
!134 = !DISubrange(count: 1000)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "word_limit", scope: !2, file: !3, line: 228, type: !132, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!138 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!139 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!140 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "Version", scope: !143, file: !144, line: 2, type: !65, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, globals: !146)
!144 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!145 = !{}
!146 = !{!141}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "file_name", scope: !149, file: !154, line: 46, type: !65, isLocal: true, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, globals: !151)
!150 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!151 = !{!147, !152}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !149, file: !154, line: 56, type: !57, isLocal: true, isDefinition: true)
!154 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "exit_failure", scope: !157, file: !160, line: 24, type: !161, isLocal: false, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, globals: !159)
!158 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!159 = !{!155}
!160 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "program_name", scope: !164, file: !168, line: 33, type: !65, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !166, globals: !167)
!165 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!166 = !{!47, !45}
!167 = !{!162}
!168 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !171, file: !186, line: 85, type: !219, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !179, globals: !183)
!172 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!173 = !{!5, !174, !29}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!179 = !{!50, !51, !180, !45}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 62, baseType: !182)
!181 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!182 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!183 = !{!169, !184, !189, !201, !203, !208, !215, !217}
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !171, file: !186, line: 101, type: !187, isLocal: false, isDefinition: true)
!186 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 320, elements: !89)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !171, file: !186, line: 1052, type: !191, isLocal: false, isDefinition: true)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !186, line: 65, size: 448, elements: !192)
!192 = !{!193, !194, !195, !199, !200}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !191, file: !186, line: 68, baseType: !5, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !186, line: 71, baseType: !50, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !191, file: !186, line: 75, baseType: !196, size: 256, offset: 64)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 8)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !191, file: !186, line: 78, baseType: !65, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !191, file: !186, line: 81, baseType: !65, size: 64, offset: 384)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !171, file: !186, line: 116, type: !191, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "slot0", scope: !171, file: !186, line: 842, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 256)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "slotvec", scope: !171, file: !186, line: 845, type: !210, isLocal: true, isDefinition: true)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !186, line: 834, size: 128, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !211, file: !186, line: 836, baseType: !180, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !211, file: !186, line: 837, baseType: !45, size: 64, offset: 64)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "nslots", scope: !171, file: !186, line: 843, type: !50, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "slotvec0", scope: !171, file: !186, line: 844, type: !211, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 704, elements: !221)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!221 = !{!222}
!222 = !DISubrange(count: 11)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !225, file: !228, line: 26, type: !229, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, globals: !227)
!226 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!227 = !{!223}
!228 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 376, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 47)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !234)
!233 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!234 = !{!20}
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !242)
!236 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!237 = !{!238}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 41, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!240 = !{!241}
!241 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!242 = !{!47}
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !245, retainedTypes: !259)
!244 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!245 = !{!246}
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !248, file: !247, line: 186, baseType: !7, size: 32, elements: !257)
!247 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!248 = distinct !DISubprogram(name: "x2nrealloc", scope: !247, file: !247, line: 174, type: !249, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !252)
!249 = !DISubroutineType(types: !250)
!250 = !{!47, !47, !251, !180}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!252 = !{!253, !254, !255, !256}
!253 = !DILocalVariable(name: "p", arg: 1, scope: !248, file: !247, line: 174, type: !47)
!254 = !DILocalVariable(name: "pn", arg: 2, scope: !248, file: !247, line: 174, type: !251)
!255 = !DILocalVariable(name: "s", arg: 3, scope: !248, file: !247, line: 174, type: !180)
!256 = !DILocalVariable(name: "n", scope: !248, file: !247, line: 176, type: !180)
!257 = !{!258}
!258 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!259 = !{!180, !45, !47}
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145)
!261 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !264)
!263 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!264 = !{!265}
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !266, line: 26, baseType: !7, size: 32, elements: !267)
!266 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!267 = !{!268, !269, !270, !271, !272}
!268 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!269 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!270 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!271 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!272 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !276)
!274 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!275 = !{!265, !29}
!276 = !{!50, !51}
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !242)
!278 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145)
!280 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !242)
!282 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !242)
!284 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !287)
!286 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!287 = !{!180}
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145)
!289 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145)
!291 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !294, retainedTypes: !242)
!293 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!294 = !{!295}
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !296, line: 41, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!298 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!299 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!300 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!301 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!302 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!303 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!304 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!305 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!306 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!307 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!308 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!309 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!310 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!311 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!336 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!337 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!338 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!339 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!340 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!341 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!342 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!343 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!344 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!345 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!346 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!347 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!406 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!493 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!566 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!567 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!568 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!569 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!570 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!571 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!572 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!573 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!574 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!575 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!576 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!577 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!578 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!579 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!580 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!582 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!583 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!584 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!585 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!586 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!587 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!613 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!614 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!615 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!616 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!617 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!622 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!623 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!624 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!625 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!681 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!682 = !{i32 2, !"Dwarf Version", i32 4}
!683 = !{i32 2, !"Debug Info Version", i32 3}
!684 = !{i32 1, !"wchar_size", i32 4}
!685 = !{i32 7, !"PIC Level", i32 2}
!686 = !{i32 7, !"PIE Level", i32 2}
!687 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 263, type: !688, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !50}
!690 = !{!691}
!691 = !DILocalVariable(name: "status", arg: 1, scope: !687, file: !3, line: 263, type: !50)
!692 = !DILocalVariable(name: "infomap", scope: !693, file: !694, line: 632, type: !708)
!693 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !694, file: !694, line: 630, type: !695, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!694 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!695 = !DISubroutineType(types: !696)
!696 = !{null, !65}
!697 = !{!698, !692, !699, !700, !707}
!698 = !DILocalVariable(name: "program", arg: 1, scope: !693, file: !694, line: 630, type: !65)
!699 = !DILocalVariable(name: "node", scope: !693, file: !694, line: 642, type: !65)
!700 = !DILocalVariable(name: "map_prog", scope: !693, file: !694, line: 643, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !693, file: !694, line: 632, size: 128, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !703, file: !694, line: 632, baseType: !65, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !694, line: 632, baseType: !65, size: 64, offset: 64)
!707 = !DILocalVariable(name: "lc_messages", scope: !693, file: !694, line: 655, type: !65)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 896, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 7)
!711 = !DILocation(line: 632, column: 67, scope: !693, inlinedAt: !712)
!712 = distinct !DILocation(line: 295, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 268, column: 5)
!714 = distinct !DILexicalBlock(scope: !687, file: !3, line: 265, column: 7)
!715 = !DILocation(line: 263, column: 12, scope: !687)
!716 = !DILocation(line: 265, column: 14, scope: !714)
!717 = !DILocation(line: 265, column: 7, scope: !687)
!718 = !DILocation(line: 266, column: 5, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 266, column: 5)
!720 = !{!721, !721, i64 0}
!721 = !{!"any pointer", !722, i64 0}
!722 = !{!"omnipotent char", !723, i64 0}
!723 = !{!"Simple C/C++ TBAA"}
!724 = !DILocation(line: 269, column: 7, scope: !713)
!725 = !DILocation(line: 270, column: 7, scope: !713)
!726 = !DILocation(line: 580, column: 3, scope: !727, inlinedAt: !730)
!727 = distinct !DISubprogram(name: "emit_stdin_note", scope: !694, file: !694, line: 578, type: !728, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !145)
!728 = !DISubroutineType(types: !729)
!729 = !{null}
!730 = distinct !DILocation(line: 275, column: 7, scope: !713)
!731 = !DILocation(line: 587, column: 3, scope: !732, inlinedAt: !733)
!732 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !694, file: !694, line: 585, type: !728, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !145)
!733 = distinct !DILocation(line: 276, column: 7, scope: !713)
!734 = !DILocation(line: 278, column: 7, scope: !713)
!735 = !DILocation(line: 287, column: 7, scope: !713)
!736 = !DILocation(line: 293, column: 7, scope: !713)
!737 = !DILocation(line: 294, column: 7, scope: !713)
!738 = !DILocation(line: 632, column: 3, scope: !693, inlinedAt: !712)
!739 = !DILocation(line: 643, column: 36, scope: !693, inlinedAt: !712)
!740 = !DILocation(line: 643, column: 25, scope: !693, inlinedAt: !712)
!741 = !DILocation(line: 645, column: 33, scope: !693, inlinedAt: !712)
!742 = !DILocation(line: 645, column: 3, scope: !693, inlinedAt: !712)
!743 = !DILocation(line: 646, column: 13, scope: !693, inlinedAt: !712)
!744 = !DILocation(line: 645, column: 20, scope: !693, inlinedAt: !712)
!745 = !{!746, !721, i64 0}
!746 = !{!"infomap", !721, i64 0, !721, i64 8}
!747 = !DILocation(line: 645, column: 10, scope: !693, inlinedAt: !712)
!748 = !DILocation(line: 645, column: 28, scope: !693, inlinedAt: !712)
!749 = distinct !{!749, !750, !751}
!750 = !DILocation(line: 645, column: 3, scope: !693)
!751 = !DILocation(line: 646, column: 13, scope: !693)
!752 = !DILocation(line: 648, column: 17, scope: !753, inlinedAt: !712)
!753 = distinct !DILexicalBlock(scope: !693, file: !694, line: 648, column: 7)
!754 = !{!746, !721, i64 8}
!755 = !DILocation(line: 648, column: 7, scope: !753, inlinedAt: !712)
!756 = !DILocation(line: 648, column: 7, scope: !693, inlinedAt: !712)
!757 = !DILocation(line: 642, column: 15, scope: !693, inlinedAt: !712)
!758 = !DILocation(line: 651, column: 3, scope: !693, inlinedAt: !712)
!759 = !DILocation(line: 655, column: 29, scope: !693, inlinedAt: !712)
!760 = !DILocation(line: 655, column: 15, scope: !693, inlinedAt: !712)
!761 = !DILocation(line: 656, column: 7, scope: !762, inlinedAt: !712)
!762 = distinct !DILexicalBlock(scope: !693, file: !694, line: 656, column: 7)
!763 = !DILocation(line: 656, column: 19, scope: !762, inlinedAt: !712)
!764 = !DILocation(line: 656, column: 22, scope: !762, inlinedAt: !712)
!765 = !DILocation(line: 656, column: 7, scope: !693, inlinedAt: !712)
!766 = !DILocation(line: 662, column: 7, scope: !767, inlinedAt: !712)
!767 = distinct !DILexicalBlock(scope: !762, file: !694, line: 657, column: 5)
!768 = !DILocation(line: 664, column: 5, scope: !767, inlinedAt: !712)
!769 = !DILocation(line: 665, column: 3, scope: !693, inlinedAt: !712)
!770 = !DILocation(line: 667, column: 3, scope: !693, inlinedAt: !712)
!771 = !DILocation(line: 669, column: 1, scope: !693, inlinedAt: !712)
!772 = !DILocation(line: 297, column: 3, scope: !687)
!773 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 317, type: !774, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !777)
!774 = !DISubroutineType(types: !775)
!775 = !{!50, !50, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !790}
!778 = !DILocalVariable(name: "argc", arg: 1, scope: !773, file: !3, line: 317, type: !50)
!779 = !DILocalVariable(name: "argv", arg: 2, scope: !773, file: !3, line: 317, type: !776)
!780 = !DILocalVariable(name: "optchar", scope: !773, file: !3, line: 319, type: !50)
!781 = !DILocalVariable(name: "ok", scope: !773, file: !3, line: 320, type: !57)
!782 = !DILocalVariable(name: "max_width_option", scope: !773, file: !3, line: 321, type: !65)
!783 = !DILocalVariable(name: "goal_width_option", scope: !773, file: !3, line: 322, type: !65)
!784 = !DILocalVariable(name: "file", scope: !785, file: !3, line: 421, type: !45)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 420, column: 9)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 419, column: 7)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 419, column: 7)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 418, column: 5)
!789 = distinct !DILexicalBlock(scope: !773, file: !3, line: 415, column: 7)
!790 = !DILocalVariable(name: "in_stream", scope: !791, file: !3, line: 426, type: !793)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 425, column: 13)
!792 = distinct !DILexicalBlock(scope: !785, file: !3, line: 422, column: 15)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !795, line: 7, baseType: !796)
!795 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !797, line: 49, size: 1728, elements: !798)
!797 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !814, !816, !817, !818, !821, !822, !824, !828, !831, !833, !836, !839, !840, !841, !842, !843}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !796, file: !797, line: 51, baseType: !50, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !796, file: !797, line: 54, baseType: !45, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !796, file: !797, line: 55, baseType: !45, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !796, file: !797, line: 56, baseType: !45, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !796, file: !797, line: 57, baseType: !45, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !796, file: !797, line: 58, baseType: !45, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !796, file: !797, line: 59, baseType: !45, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !796, file: !797, line: 60, baseType: !45, size: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !796, file: !797, line: 61, baseType: !45, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !796, file: !797, line: 64, baseType: !45, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !796, file: !797, line: 65, baseType: !45, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !796, file: !797, line: 66, baseType: !45, size: 64, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !796, file: !797, line: 68, baseType: !812, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !797, line: 36, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !796, file: !797, line: 70, baseType: !815, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !796, file: !797, line: 72, baseType: !50, size: 32, offset: 896)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !796, file: !797, line: 73, baseType: !50, size: 32, offset: 928)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !796, file: !797, line: 74, baseType: !819, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !820, line: 150, baseType: !53)
!820 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !796, file: !797, line: 77, baseType: !51, size: 16, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !796, file: !797, line: 78, baseType: !823, size: 8, offset: 1040)
!823 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !796, file: !797, line: 79, baseType: !825, size: 8, offset: 1048)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 1)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !796, file: !797, line: 81, baseType: !829, size: 64, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !797, line: 43, baseType: null)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !796, file: !797, line: 89, baseType: !832, size: 64, offset: 1152)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !820, line: 151, baseType: !53)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !796, file: !797, line: 91, baseType: !834, size: 64, offset: 1216)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !797, line: 37, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !796, file: !797, line: 92, baseType: !837, size: 64, offset: 1280)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !797, line: 38, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !796, file: !797, line: 93, baseType: !815, size: 64, offset: 1344)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !796, file: !797, line: 94, baseType: !47, size: 64, offset: 1408)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !796, file: !797, line: 95, baseType: !180, size: 64, offset: 1472)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !796, file: !797, line: 96, baseType: !50, size: 32, offset: 1536)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !796, file: !797, line: 98, baseType: !844, size: 160, offset: 1568)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 20)
!847 = !DILocation(line: 317, column: 11, scope: !773)
!848 = !DILocation(line: 317, column: 24, scope: !773)
!849 = !DILocation(line: 320, column: 8, scope: !773)
!850 = !DILocation(line: 321, column: 15, scope: !773)
!851 = !DILocation(line: 322, column: 15, scope: !773)
!852 = !DILocation(line: 325, column: 21, scope: !773)
!853 = !DILocation(line: 325, column: 3, scope: !773)
!854 = !DILocation(line: 326, column: 3, scope: !773)
!855 = !DILocation(line: 327, column: 3, scope: !773)
!856 = !DILocation(line: 328, column: 3, scope: !773)
!857 = !DILocation(line: 330, column: 3, scope: !773)
!858 = !DILocation(line: 333, column: 13, scope: !773)
!859 = !{!860, !860, i64 0}
!860 = !{!"int", !722, i64 0}
!861 = !DILocation(line: 334, column: 10, scope: !773)
!862 = !DILocation(line: 335, column: 58, scope: !773)
!863 = !DILocation(line: 335, column: 37, scope: !773)
!864 = !DILocation(line: 335, column: 17, scope: !773)
!865 = !DILocation(line: 337, column: 12, scope: !866)
!866 = distinct !DILexicalBlock(scope: !773, file: !3, line: 337, column: 7)
!867 = !DILocation(line: 337, column: 16, scope: !866)
!868 = !DILocation(line: 337, column: 19, scope: !866)
!869 = !{!722, !722, i64 0}
!870 = !DILocation(line: 337, column: 30, scope: !866)
!871 = !DILocation(line: 337, column: 37, scope: !866)
!872 = !DILocation(line: 337, column: 40, scope: !866)
!873 = !DILocation(line: 337, column: 7, scope: !773)
!874 = !DILocation(line: 343, column: 17, scope: !875)
!875 = distinct !DILexicalBlock(scope: !866, file: !3, line: 338, column: 5)
!876 = !DILocation(line: 343, column: 15, scope: !875)
!877 = !DILocation(line: 345, column: 11, scope: !875)
!878 = !DILocation(line: 346, column: 5, scope: !875)
!879 = !DILocation(line: 0, scope: !773)
!880 = !DILocation(line: 348, column: 3, scope: !773)
!881 = !DILocation(line: 348, column: 21, scope: !773)
!882 = !DILocation(line: 319, column: 7, scope: !773)
!883 = !DILocation(line: 354, column: 13, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 354, column: 13)
!885 = distinct !DILexicalBlock(scope: !773, file: !3, line: 352, column: 7)
!886 = !DILocation(line: 354, column: 13, scope: !885)
!887 = !DILocation(line: 355, column: 24, scope: !884)
!888 = !DILocation(line: 355, column: 11, scope: !884)
!889 = !DILocation(line: 358, column: 9, scope: !885)
!890 = !DILocation(line: 362, column: 9, scope: !885)
!891 = !DILocation(line: 366, column: 9, scope: !885)
!892 = !DILocation(line: 370, column: 9, scope: !885)
!893 = !DILocation(line: 374, column: 9, scope: !885)
!894 = !DILocation(line: 377, column: 28, scope: !885)
!895 = !DILocation(line: 378, column: 9, scope: !885)
!896 = distinct !{!896, !880, !897}
!897 = !DILocation(line: 392, column: 7, scope: !773)
!898 = !DILocation(line: 381, column: 29, scope: !885)
!899 = !DILocation(line: 382, column: 9, scope: !885)
!900 = !DILocation(line: 385, column: 21, scope: !885)
!901 = !DILocalVariable(name: "p", arg: 1, scope: !902, file: !3, line: 454, type: !45)
!902 = distinct !DISubprogram(name: "set_prefix", scope: !3, file: !3, line: 454, type: !903, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !45}
!905 = !{!901, !906}
!906 = !DILocalVariable(name: "s", scope: !902, file: !3, line: 456, type: !45)
!907 = !DILocation(line: 454, column: 19, scope: !902, inlinedAt: !908)
!908 = distinct !DILocation(line: 385, column: 9, scope: !885)
!909 = !DILocation(line: 458, column: 21, scope: !902, inlinedAt: !908)
!910 = !DILocation(line: 459, column: 10, scope: !902, inlinedAt: !908)
!911 = !DILocation(line: 459, column: 13, scope: !902, inlinedAt: !908)
!912 = !DILocation(line: 459, column: 3, scope: !902, inlinedAt: !908)
!913 = !DILocation(line: 461, column: 24, scope: !914, inlinedAt: !908)
!914 = distinct !DILexicalBlock(scope: !902, file: !3, line: 460, column: 5)
!915 = !DILocation(line: 462, column: 8, scope: !914, inlinedAt: !908)
!916 = distinct !{!916, !917, !918}
!917 = !DILocation(line: 459, column: 3, scope: !902)
!918 = !DILocation(line: 463, column: 5, scope: !902)
!919 = !DILocation(line: 464, column: 10, scope: !902, inlinedAt: !908)
!920 = !DILocation(line: 465, column: 24, scope: !902, inlinedAt: !908)
!921 = !DILocation(line: 465, column: 22, scope: !902, inlinedAt: !908)
!922 = !DILocation(line: 466, column: 9, scope: !902, inlinedAt: !908)
!923 = !DILocation(line: 456, column: 9, scope: !902, inlinedAt: !908)
!924 = !DILocation(line: 467, column: 3, scope: !902, inlinedAt: !908)
!925 = !DILocation(line: 0, scope: !902, inlinedAt: !908)
!926 = !DILocation(line: 467, column: 12, scope: !902, inlinedAt: !908)
!927 = !DILocation(line: 467, column: 16, scope: !902, inlinedAt: !908)
!928 = !DILocation(line: 467, column: 19, scope: !902, inlinedAt: !908)
!929 = !DILocation(line: 467, column: 25, scope: !902, inlinedAt: !908)
!930 = distinct !{!930, !931, !932}
!931 = !DILocation(line: 467, column: 3, scope: !902)
!932 = !DILocation(line: 468, column: 6, scope: !902)
!933 = !DILocation(line: 469, column: 6, scope: !902, inlinedAt: !908)
!934 = !DILocation(line: 470, column: 21, scope: !902, inlinedAt: !908)
!935 = !DILocation(line: 470, column: 19, scope: !902, inlinedAt: !908)
!936 = !DILocation(line: 470, column: 17, scope: !902, inlinedAt: !908)
!937 = !DILocation(line: 386, column: 9, scope: !885)
!938 = !DILocation(line: 388, column: 7, scope: !885)
!939 = !DILocation(line: 390, column: 7, scope: !885)
!940 = !DILocation(line: 394, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !773, file: !3, line: 394, column: 7)
!942 = !DILocation(line: 394, column: 7, scope: !773)
!943 = !DILocation(line: 0, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 403, column: 5)
!945 = distinct !DILexicalBlock(scope: !773, file: !3, line: 402, column: 7)
!946 = !DILocation(line: 399, column: 31, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 395, column: 5)
!948 = !DILocation(line: 398, column: 19, scope: !947)
!949 = !DILocation(line: 398, column: 17, scope: !947)
!950 = !DILocation(line: 400, column: 5, scope: !947)
!951 = !DILocation(line: 402, column: 7, scope: !945)
!952 = !DILocation(line: 402, column: 7, scope: !773)
!953 = !DILocation(line: 405, column: 54, scope: !944)
!954 = !DILocation(line: 406, column: 32, scope: !944)
!955 = !DILocation(line: 405, column: 20, scope: !944)
!956 = !DILocation(line: 405, column: 18, scope: !944)
!957 = !DILocation(line: 407, column: 11, scope: !944)
!958 = !DILocation(line: 408, column: 32, scope: !959)
!959 = distinct !DILexicalBlock(scope: !944, file: !3, line: 407, column: 11)
!960 = !DILocation(line: 408, column: 19, scope: !959)
!961 = !DILocation(line: 408, column: 9, scope: !959)
!962 = !DILocation(line: 412, column: 30, scope: !963)
!963 = distinct !DILexicalBlock(scope: !945, file: !3, line: 411, column: 5)
!964 = !DILocation(line: 412, column: 57, scope: !963)
!965 = !DILocation(line: 412, column: 18, scope: !963)
!966 = !DILocation(line: 415, column: 7, scope: !789)
!967 = !DILocation(line: 415, column: 14, scope: !789)
!968 = !DILocation(line: 415, column: 7, scope: !773)
!969 = !DILocation(line: 419, column: 21, scope: !786)
!970 = !DILocation(line: 419, column: 7, scope: !787)
!971 = !DILocation(line: 416, column: 10, scope: !789)
!972 = !DILocation(line: 416, column: 5, scope: !789)
!973 = !DILocation(line: 421, column: 24, scope: !785)
!974 = !DILocation(line: 421, column: 17, scope: !785)
!975 = !DILocation(line: 422, column: 15, scope: !792)
!976 = !DILocation(line: 422, column: 15, scope: !785)
!977 = !DILocation(line: 423, column: 18, scope: !792)
!978 = !DILocation(line: 423, column: 13, scope: !792)
!979 = !DILocation(line: 427, column: 27, scope: !791)
!980 = !DILocation(line: 426, column: 21, scope: !791)
!981 = !DILocation(line: 428, column: 29, scope: !982)
!982 = distinct !DILexicalBlock(scope: !791, file: !3, line: 428, column: 19)
!983 = !DILocation(line: 428, column: 19, scope: !791)
!984 = !DILocation(line: 430, column: 19, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !3, line: 429, column: 17)
!986 = !DILocation(line: 431, column: 23, scope: !987)
!987 = distinct !DILexicalBlock(scope: !985, file: !3, line: 431, column: 23)
!988 = !DILocation(line: 431, column: 42, scope: !987)
!989 = !DILocation(line: 431, column: 23, scope: !985)
!990 = !DILocation(line: 433, column: 33, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 432, column: 21)
!992 = !DILocation(line: 433, column: 46, scope: !991)
!993 = !DILocation(line: 433, column: 23, scope: !991)
!994 = !DILocation(line: 435, column: 21, scope: !991)
!995 = !DILocation(line: 439, column: 29, scope: !996)
!996 = distinct !DILexicalBlock(scope: !982, file: !3, line: 438, column: 17)
!997 = !DILocation(line: 439, column: 36, scope: !996)
!998 = !DILocation(line: 440, column: 26, scope: !996)
!999 = !DILocation(line: 439, column: 19, scope: !996)
!1000 = !DILocation(line: 0, scope: !991)
!1001 = !DILocation(line: 419, column: 35, scope: !786)
!1002 = distinct !{!1002, !970, !1003}
!1003 = !DILocation(line: 444, column: 9, scope: !787)
!1004 = !DILocation(line: 447, column: 10, scope: !773)
!1005 = !DILocation(line: 448, column: 1, scope: !773)
!1006 = distinct !DISubprogram(name: "fmt", scope: !3, file: !3, line: 476, type: !1007, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !793}
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "f", arg: 1, scope: !1006, file: !3, line: 476, type: !793)
!1011 = !DILocation(line: 476, column: 12, scope: !1006)
!1012 = !DILocation(line: 478, column: 3, scope: !1006)
!1013 = !DILocation(line: 480, column: 16, scope: !1006)
!1014 = !DILocation(line: 481, column: 15, scope: !1006)
!1015 = !DILocation(line: 481, column: 13, scope: !1006)
!1016 = !DILocation(line: 482, column: 3, scope: !1006)
!1017 = !DILocation(line: 543, column: 7, scope: !1018, inlinedAt: !1024)
!1018 = distinct !DISubprogram(name: "get_paragraph", scope: !3, file: !3, line: 538, type: !1019, isLocal: true, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!57, !793}
!1021 = !{!1022, !1023}
!1022 = !DILocalVariable(name: "f", arg: 1, scope: !1018, file: !3, line: 538, type: !793)
!1023 = !DILocalVariable(name: "c", scope: !1018, file: !3, line: 540, type: !50)
!1024 = distinct !DILocation(line: 482, column: 10, scope: !1006)
!1025 = !DILocation(line: 538, column: 22, scope: !1018, inlinedAt: !1024)
!1026 = !DILocation(line: 542, column: 20, scope: !1018, inlinedAt: !1024)
!1027 = !DILocation(line: 540, column: 7, scope: !1018, inlinedAt: !1024)
!1028 = !DILocation(line: 547, column: 3, scope: !1018, inlinedAt: !1024)
!1029 = !DILocation(line: 0, scope: !1030, inlinedAt: !1024)
!1030 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 550, column: 5)
!1031 = !DILocation(line: 547, column: 20, scope: !1018, inlinedAt: !1024)
!1032 = !DILocation(line: 548, column: 13, scope: !1018, inlinedAt: !1024)
!1033 = !DILocation(line: 548, column: 34, scope: !1018, inlinedAt: !1024)
!1034 = !DILocation(line: 548, column: 32, scope: !1018, inlinedAt: !1024)
!1035 = !DILocation(line: 549, column: 10, scope: !1018, inlinedAt: !1024)
!1036 = !DILocation(line: 549, column: 13, scope: !1018, inlinedAt: !1024)
!1037 = !DILocation(line: 549, column: 46, scope: !1018, inlinedAt: !1024)
!1038 = !DILocation(line: 549, column: 44, scope: !1018, inlinedAt: !1024)
!1039 = !DILocation(line: 549, column: 23, scope: !1018, inlinedAt: !1024)
!1040 = !DILocation(line: 624, column: 19, scope: !1041, inlinedAt: !1049)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 624, column: 7)
!1042 = distinct !DISubprogram(name: "copy_rest", scope: !3, file: !3, line: 619, type: !1043, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!50, !793, !50}
!1045 = !{!1046, !1047, !1048}
!1046 = !DILocalVariable(name: "f", arg: 1, scope: !1042, file: !3, line: 619, type: !793)
!1047 = !DILocalVariable(name: "c", arg: 2, scope: !1042, file: !3, line: 619, type: !50)
!1048 = !DILocalVariable(name: "s", scope: !1042, file: !3, line: 621, type: !65)
!1049 = distinct !DILocation(line: 551, column: 11, scope: !1030, inlinedAt: !1024)
!1050 = !DILocation(line: 623, column: 14, scope: !1042, inlinedAt: !1049)
!1051 = !DILocation(line: 619, column: 18, scope: !1042, inlinedAt: !1049)
!1052 = !DILocation(line: 619, column: 25, scope: !1042, inlinedAt: !1049)
!1053 = !DILocation(line: 624, column: 7, scope: !1041, inlinedAt: !1049)
!1054 = !DILocation(line: 624, column: 17, scope: !1041, inlinedAt: !1049)
!1055 = !DILocation(line: 624, column: 38, scope: !1041, inlinedAt: !1049)
!1056 = !DILocation(line: 624, column: 52, scope: !1041, inlinedAt: !1049)
!1057 = !DILocalVariable(name: "space", arg: 1, scope: !1058, file: !3, line: 1009, type: !50)
!1058 = distinct !DISubprogram(name: "put_space", scope: !3, file: !3, line: 1009, type: !688, isLocal: true, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1059)
!1059 = !{!1057, !1060, !1061}
!1060 = !DILocalVariable(name: "space_target", scope: !1058, file: !3, line: 1011, type: !50)
!1061 = !DILocalVariable(name: "tab_target", scope: !1058, file: !3, line: 1011, type: !50)
!1062 = !DILocation(line: 1009, column: 16, scope: !1058, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 626, column: 7, scope: !1064, inlinedAt: !1049)
!1064 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 625, column: 5)
!1065 = !DILocation(line: 1011, column: 7, scope: !1058, inlinedAt: !1063)
!1066 = !DILocation(line: 1014, column: 7, scope: !1058, inlinedAt: !1063)
!1067 = !DILocation(line: 1016, column: 33, scope: !1068, inlinedAt: !1063)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 1015, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 1014, column: 7)
!1070 = !DILocation(line: 1016, column: 44, scope: !1068, inlinedAt: !1063)
!1071 = !DILocation(line: 1011, column: 21, scope: !1058, inlinedAt: !1063)
!1072 = !DILocation(line: 1017, column: 26, scope: !1073, inlinedAt: !1063)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 1017, column: 11)
!1074 = !DILocation(line: 1017, column: 11, scope: !1068, inlinedAt: !1063)
!1075 = !DILocalVariable(name: "__c", arg: 1, scope: !1076, file: !1077, line: 108, type: !50)
!1076 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1077, file: !1077, line: 108, type: !1078, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1080)
!1077 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!50, !50}
!1080 = !{!1075}
!1081 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 1020, column: 13, scope: !1083, inlinedAt: !1063)
!1083 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 1019, column: 11)
!1084 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1082)
!1085 = !{!1086, !721, i64 40}
!1086 = !{!"_IO_FILE", !860, i64 0, !721, i64 8, !721, i64 16, !721, i64 24, !721, i64 32, !721, i64 40, !721, i64 48, !721, i64 56, !721, i64 64, !721, i64 72, !721, i64 80, !721, i64 88, !721, i64 96, !721, i64 104, !860, i64 112, !860, i64 116, !1087, i64 120, !1088, i64 128, !722, i64 130, !722, i64 131, !721, i64 136, !1087, i64 144, !721, i64 152, !721, i64 160, !721, i64 168, !721, i64 176, !1087, i64 184, !860, i64 192, !722, i64 196}
!1087 = !{!"long", !722, i64 0}
!1088 = !{!"short", !722, i64 0}
!1089 = !{!1086, !721, i64 48}
!1090 = !{!"branch_weights", i32 2000, i32 1}
!1091 = !DILocation(line: 1021, column: 27, scope: !1083, inlinedAt: !1063)
!1092 = !DILocation(line: 1021, column: 38, scope: !1083, inlinedAt: !1063)
!1093 = !DILocation(line: 1021, column: 54, scope: !1083, inlinedAt: !1063)
!1094 = !DILocation(line: 1021, column: 24, scope: !1083, inlinedAt: !1063)
!1095 = !DILocation(line: 1018, column: 27, scope: !1073, inlinedAt: !1063)
!1096 = !DILocation(line: 1018, column: 9, scope: !1073, inlinedAt: !1063)
!1097 = !DILocation(line: 1024, column: 10, scope: !1058, inlinedAt: !1063)
!1098 = !DILocation(line: 1024, column: 21, scope: !1058, inlinedAt: !1063)
!1099 = !DILocation(line: 1024, column: 3, scope: !1058, inlinedAt: !1063)
!1100 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 1026, column: 7, scope: !1102, inlinedAt: !1063)
!1102 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 1025, column: 5)
!1103 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1101)
!1104 = !DILocation(line: 1027, column: 17, scope: !1102, inlinedAt: !1063)
!1105 = distinct !{!1105, !1106, !1107}
!1106 = !DILocation(line: 1024, column: 3, scope: !1058)
!1107 = !DILocation(line: 1028, column: 5, scope: !1058)
!1108 = !DILocation(line: 627, column: 24, scope: !1109, inlinedAt: !1049)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 627, column: 7)
!1110 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 627, column: 7)
!1111 = !DILocation(line: 627, column: 38, scope: !1109, inlinedAt: !1049)
!1112 = !DILocation(line: 627, column: 35, scope: !1109, inlinedAt: !1049)
!1113 = !DILocation(line: 627, column: 48, scope: !1109, inlinedAt: !1049)
!1114 = !DILocation(line: 627, column: 16, scope: !1110, inlinedAt: !1049)
!1115 = !DILocation(line: 621, column: 15, scope: !1042, inlinedAt: !1049)
!1116 = !DILocation(line: 627, column: 51, scope: !1109, inlinedAt: !1049)
!1117 = !DILocation(line: 627, column: 7, scope: !1110, inlinedAt: !1049)
!1118 = !DILocation(line: 628, column: 9, scope: !1109, inlinedAt: !1049)
!1119 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 628, column: 9, scope: !1109, inlinedAt: !1049)
!1121 = !DILocation(line: 627, column: 65, scope: !1109, inlinedAt: !1049)
!1122 = distinct !{!1122, !1123, !1124}
!1123 = !DILocation(line: 627, column: 7, scope: !1110)
!1124 = !DILocation(line: 628, column: 9, scope: !1110)
!1125 = !DILocation(line: 629, column: 20, scope: !1126, inlinedAt: !1049)
!1126 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 629, column: 11)
!1127 = !DILocation(line: 1011, column: 7, scope: !1058, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 630, column: 9, scope: !1126, inlinedAt: !1049)
!1129 = !DILocation(line: 1014, column: 7, scope: !1058, inlinedAt: !1128)
!1130 = !DILocation(line: 1016, column: 33, scope: !1068, inlinedAt: !1128)
!1131 = !DILocation(line: 1016, column: 44, scope: !1068, inlinedAt: !1128)
!1132 = !DILocation(line: 1011, column: 21, scope: !1058, inlinedAt: !1128)
!1133 = !DILocation(line: 1017, column: 22, scope: !1073, inlinedAt: !1128)
!1134 = !DILocation(line: 1017, column: 26, scope: !1073, inlinedAt: !1128)
!1135 = !DILocation(line: 1018, column: 27, scope: !1073, inlinedAt: !1128)
!1136 = !DILocation(line: 1017, column: 11, scope: !1068, inlinedAt: !1128)
!1137 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 1020, column: 13, scope: !1083, inlinedAt: !1128)
!1139 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1138)
!1140 = !DILocation(line: 1021, column: 27, scope: !1083, inlinedAt: !1128)
!1141 = !DILocation(line: 1021, column: 38, scope: !1083, inlinedAt: !1128)
!1142 = !DILocation(line: 1021, column: 54, scope: !1083, inlinedAt: !1128)
!1143 = !DILocation(line: 1021, column: 24, scope: !1083, inlinedAt: !1128)
!1144 = !DILocation(line: 1018, column: 9, scope: !1073, inlinedAt: !1128)
!1145 = !DILocation(line: 1024, column: 21, scope: !1058, inlinedAt: !1128)
!1146 = !DILocation(line: 1024, column: 3, scope: !1058, inlinedAt: !1128)
!1147 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 1026, column: 7, scope: !1102, inlinedAt: !1128)
!1149 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1148)
!1150 = !DILocation(line: 1027, column: 17, scope: !1102, inlinedAt: !1128)
!1151 = !DILocation(line: 631, column: 36, scope: !1152, inlinedAt: !1049)
!1152 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 631, column: 11)
!1153 = !DILocation(line: 631, column: 57, scope: !1152, inlinedAt: !1049)
!1154 = !DILocation(line: 631, column: 55, scope: !1152, inlinedAt: !1049)
!1155 = !DILocation(line: 631, column: 33, scope: !1152, inlinedAt: !1049)
!1156 = !DILocation(line: 631, column: 11, scope: !1064, inlinedAt: !1049)
!1157 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 632, column: 9, scope: !1152, inlinedAt: !1049)
!1159 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1158)
!1160 = !DILocation(line: 634, column: 3, scope: !1042, inlinedAt: !1049)
!1161 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 636, column: 7, scope: !1163, inlinedAt: !1049)
!1163 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 635, column: 5)
!1164 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1162)
!1165 = !DILocalVariable(name: "__fp", arg: 1, scope: !1166, file: !1077, line: 66, type: !793)
!1166 = distinct !DISubprogram(name: "getc_unlocked", scope: !1077, file: !1077, line: 66, type: !1167, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!50, !793}
!1169 = !{!1165}
!1170 = !DILocation(line: 66, column: 22, scope: !1166, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 637, column: 11, scope: !1163, inlinedAt: !1049)
!1172 = !DILocation(line: 68, column: 10, scope: !1166, inlinedAt: !1171)
!1173 = !{!1086, !721, i64 8}
!1174 = !{!1086, !721, i64 16}
!1175 = distinct !{!1175, !1176, !1177}
!1176 = !DILocation(line: 634, column: 3, scope: !1042)
!1177 = !DILocation(line: 638, column: 5, scope: !1042)
!1178 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 557, column: 7, scope: !1030, inlinedAt: !1024)
!1180 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1179)
!1181 = !DILocation(line: 558, column: 11, scope: !1030, inlinedAt: !1024)
!1182 = distinct !{!1182, !1183, !1184}
!1183 = !DILocation(line: 547, column: 3, scope: !1018)
!1184 = !DILocation(line: 559, column: 5, scope: !1018)
!1185 = !DILocation(line: 563, column: 17, scope: !1018, inlinedAt: !1024)
!1186 = !DILocation(line: 564, column: 16, scope: !1018, inlinedAt: !1024)
!1187 = !DILocation(line: 565, column: 8, scope: !1018, inlinedAt: !1024)
!1188 = !DILocation(line: 566, column: 14, scope: !1018, inlinedAt: !1024)
!1189 = !DILocation(line: 567, column: 7, scope: !1018, inlinedAt: !1024)
!1190 = !DILocalVariable(name: "c", arg: 1, scope: !1191, file: !3, line: 647, type: !50)
!1191 = distinct !DISubprogram(name: "same_para", scope: !3, file: !3, line: 647, type: !1192, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!57, !50}
!1194 = !{!1190}
!1195 = !DILocation(line: 647, column: 16, scope: !1191, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 568, column: 21, scope: !1018, inlinedAt: !1024)
!1197 = !DILocation(line: 649, column: 11, scope: !1191, inlinedAt: !1196)
!1198 = !DILocation(line: 649, column: 33, scope: !1191, inlinedAt: !1196)
!1199 = !DILocation(line: 649, column: 30, scope: !1191, inlinedAt: !1196)
!1200 = !DILocation(line: 650, column: 11, scope: !1191, inlinedAt: !1196)
!1201 = !DILocation(line: 650, column: 14, scope: !1191, inlinedAt: !1196)
!1202 = !DILocation(line: 650, column: 48, scope: !1191, inlinedAt: !1196)
!1203 = !DILocation(line: 650, column: 46, scope: !1191, inlinedAt: !1196)
!1204 = !DILocation(line: 650, column: 24, scope: !1191, inlinedAt: !1196)
!1205 = !DILocation(line: 651, column: 16, scope: !1191, inlinedAt: !1196)
!1206 = !DILocation(line: 651, column: 11, scope: !1191, inlinedAt: !1196)
!1207 = !DILocation(line: 651, column: 29, scope: !1191, inlinedAt: !1196)
!1208 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1209, file: !3, line: 493, type: !57)
!1209 = distinct !DISubprogram(name: "set_other_indent", scope: !3, file: !3, line: 493, type: !1210, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !57}
!1212 = !{!1208}
!1213 = !DILocation(line: 493, column: 24, scope: !1209, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 568, column: 3, scope: !1018, inlinedAt: !1024)
!1215 = !DILocation(line: 495, column: 7, scope: !1209, inlinedAt: !1214)
!1216 = !DILocation(line: 497, column: 12, scope: !1217, inlinedAt: !1214)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 495, column: 7)
!1218 = !DILocation(line: 501, column: 12, scope: !1219, inlinedAt: !1214)
!1219 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 497, column: 12)
!1220 = !DILocation(line: 503, column: 26, scope: !1221, inlinedAt: !1214)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 503, column: 11)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 502, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 501, column: 12)
!1224 = !DILocation(line: 513, column: 32, scope: !1225, inlinedAt: !1214)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 513, column: 16)
!1226 = !DILocation(line: 503, column: 29, scope: !1221, inlinedAt: !1214)
!1227 = !DILocation(line: 503, column: 42, scope: !1221, inlinedAt: !1214)
!1228 = !DILocation(line: 503, column: 39, scope: !1221, inlinedAt: !1214)
!1229 = !DILocation(line: 503, column: 11, scope: !1222, inlinedAt: !1214)
!1230 = !DILocation(line: 513, column: 16, scope: !1225, inlinedAt: !1214)
!1231 = !DILocation(line: 513, column: 29, scope: !1225, inlinedAt: !1214)
!1232 = !DILocation(line: 513, column: 16, scope: !1221, inlinedAt: !1214)
!1233 = !DILocation(line: 514, column: 37, scope: !1225, inlinedAt: !1214)
!1234 = !DILocation(line: 514, column: 24, scope: !1225, inlinedAt: !1214)
!1235 = !DILocation(line: 514, column: 9, scope: !1225, inlinedAt: !1214)
!1236 = !DILocation(line: 496, column: 20, scope: !1217, inlinedAt: !1214)
!1237 = !DILocation(line: 496, column: 18, scope: !1217, inlinedAt: !1214)
!1238 = !DILocation(line: 499, column: 40, scope: !1239, inlinedAt: !1214)
!1239 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 498, column: 5)
!1240 = !DILocation(line: 499, column: 52, scope: !1239, inlinedAt: !1214)
!1241 = !DILocation(line: 499, column: 23, scope: !1239, inlinedAt: !1214)
!1242 = !DILocation(line: 499, column: 20, scope: !1239, inlinedAt: !1214)
!1243 = !DILocation(line: 647, column: 16, scope: !1191, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 578, column: 11, scope: !1245, inlinedAt: !1024)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 578, column: 11)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 577, column: 5)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 576, column: 12)
!1248 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 572, column: 7)
!1249 = !DILocation(line: 650, column: 11, scope: !1191, inlinedAt: !1244)
!1250 = !DILocation(line: 650, column: 48, scope: !1191, inlinedAt: !1244)
!1251 = !DILocation(line: 650, column: 46, scope: !1191, inlinedAt: !1244)
!1252 = !DILocation(line: 650, column: 24, scope: !1191, inlinedAt: !1244)
!1253 = !DILocation(line: 578, column: 11, scope: !1246, inlinedAt: !1024)
!1254 = !DILocation(line: 0, scope: !1255, inlinedAt: !1024)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 581, column: 13)
!1256 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 579, column: 9)
!1257 = !DILocation(line: 582, column: 19, scope: !1255, inlinedAt: !1024)
!1258 = !DILocation(line: 647, column: 16, scope: !1191, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 584, column: 18, scope: !1256, inlinedAt: !1024)
!1260 = !DILocation(line: 649, column: 11, scope: !1191, inlinedAt: !1259)
!1261 = !DILocation(line: 649, column: 33, scope: !1191, inlinedAt: !1259)
!1262 = !DILocation(line: 649, column: 30, scope: !1191, inlinedAt: !1259)
!1263 = !DILocation(line: 650, column: 11, scope: !1191, inlinedAt: !1259)
!1264 = !DILocation(line: 650, column: 14, scope: !1191, inlinedAt: !1259)
!1265 = !DILocation(line: 650, column: 48, scope: !1191, inlinedAt: !1259)
!1266 = !DILocation(line: 650, column: 46, scope: !1191, inlinedAt: !1259)
!1267 = !DILocation(line: 650, column: 24, scope: !1191, inlinedAt: !1259)
!1268 = !DILocation(line: 584, column: 32, scope: !1256, inlinedAt: !1024)
!1269 = !DILocation(line: 584, column: 48, scope: !1256, inlinedAt: !1024)
!1270 = !DILocation(line: 584, column: 45, scope: !1256, inlinedAt: !1024)
!1271 = !DILocation(line: 583, column: 13, scope: !1255, inlinedAt: !1024)
!1272 = distinct !{!1272, !1273, !1274}
!1273 = !DILocation(line: 580, column: 11, scope: !1256)
!1274 = !DILocation(line: 584, column: 60, scope: !1256)
!1275 = !DILocation(line: 518, column: 22, scope: !1276, inlinedAt: !1214)
!1276 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 517, column: 5)
!1277 = !DILocation(line: 518, column: 20, scope: !1276, inlinedAt: !1214)
!1278 = !DILocation(line: 647, column: 16, scope: !1191, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 600, column: 14, scope: !1280, inlinedAt: !1024)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 599, column: 5)
!1281 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 587, column: 12)
!1282 = !DILocation(line: 650, column: 11, scope: !1191, inlinedAt: !1279)
!1283 = !DILocation(line: 0, scope: !1018, inlinedAt: !1024)
!1284 = !DILocation(line: 650, column: 11, scope: !1191, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 589, column: 11, scope: !1286, inlinedAt: !1024)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 589, column: 11)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 588, column: 5)
!1288 = !DILocation(line: 647, column: 16, scope: !1191, inlinedAt: !1285)
!1289 = !DILocation(line: 650, column: 14, scope: !1191, inlinedAt: !1285)
!1290 = !DILocation(line: 650, column: 48, scope: !1191, inlinedAt: !1285)
!1291 = !DILocation(line: 650, column: 46, scope: !1191, inlinedAt: !1285)
!1292 = !DILocation(line: 650, column: 24, scope: !1191, inlinedAt: !1285)
!1293 = !DILocation(line: 589, column: 25, scope: !1286, inlinedAt: !1024)
!1294 = !DILocation(line: 589, column: 38, scope: !1286, inlinedAt: !1024)
!1295 = !DILocation(line: 589, column: 11, scope: !1287, inlinedAt: !1024)
!1296 = !DILocation(line: 0, scope: !1297, inlinedAt: !1024)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 592, column: 13)
!1298 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 590, column: 9)
!1299 = !DILocation(line: 593, column: 19, scope: !1297, inlinedAt: !1024)
!1300 = !DILocation(line: 647, column: 16, scope: !1191, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 595, column: 18, scope: !1298, inlinedAt: !1024)
!1302 = !DILocation(line: 649, column: 11, scope: !1191, inlinedAt: !1301)
!1303 = !DILocation(line: 649, column: 33, scope: !1191, inlinedAt: !1301)
!1304 = !DILocation(line: 649, column: 30, scope: !1191, inlinedAt: !1301)
!1305 = !DILocation(line: 650, column: 11, scope: !1191, inlinedAt: !1301)
!1306 = !DILocation(line: 650, column: 14, scope: !1191, inlinedAt: !1301)
!1307 = !DILocation(line: 650, column: 48, scope: !1191, inlinedAt: !1301)
!1308 = !DILocation(line: 650, column: 46, scope: !1191, inlinedAt: !1301)
!1309 = !DILocation(line: 650, column: 24, scope: !1191, inlinedAt: !1301)
!1310 = !DILocation(line: 595, column: 32, scope: !1298, inlinedAt: !1024)
!1311 = !DILocation(line: 595, column: 48, scope: !1298, inlinedAt: !1024)
!1312 = !DILocation(line: 595, column: 45, scope: !1298, inlinedAt: !1024)
!1313 = !DILocation(line: 594, column: 13, scope: !1297, inlinedAt: !1024)
!1314 = distinct !{!1314, !1315, !1316}
!1315 = !DILocation(line: 591, column: 11, scope: !1298)
!1316 = !DILocation(line: 595, column: 60, scope: !1298)
!1317 = !DILocation(line: 650, column: 14, scope: !1191, inlinedAt: !1279)
!1318 = !DILocation(line: 650, column: 48, scope: !1191, inlinedAt: !1279)
!1319 = !DILocation(line: 650, column: 46, scope: !1191, inlinedAt: !1279)
!1320 = !DILocation(line: 650, column: 24, scope: !1191, inlinedAt: !1279)
!1321 = !DILocation(line: 600, column: 28, scope: !1280, inlinedAt: !1024)
!1322 = !DILocation(line: 600, column: 44, scope: !1280, inlinedAt: !1024)
!1323 = !DILocation(line: 600, column: 41, scope: !1280, inlinedAt: !1024)
!1324 = !DILocation(line: 600, column: 7, scope: !1280, inlinedAt: !1024)
!1325 = !DILocation(line: 601, column: 13, scope: !1280, inlinedAt: !1024)
!1326 = !DILocation(line: 649, column: 11, scope: !1191, inlinedAt: !1279)
!1327 = !DILocation(line: 649, column: 33, scope: !1191, inlinedAt: !1279)
!1328 = !DILocation(line: 649, column: 30, scope: !1191, inlinedAt: !1279)
!1329 = distinct !{!1329, !1330, !1331}
!1330 = !DILocation(line: 600, column: 7, scope: !1280)
!1331 = !DILocation(line: 601, column: 27, scope: !1280)
!1332 = !DILocation(line: 606, column: 3, scope: !1333, inlinedAt: !1024)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 606, column: 3)
!1334 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 606, column: 3)
!1335 = !DILocation(line: 606, column: 3, scope: !1334, inlinedAt: !1024)
!1336 = !DILocation(line: 608, column: 48, scope: !1018, inlinedAt: !1024)
!1337 = !DILocation(line: 608, column: 54, scope: !1018, inlinedAt: !1024)
!1338 = !DILocation(line: 608, column: 28, scope: !1018, inlinedAt: !1024)
!1339 = !DILocation(line: 0, scope: !1340, inlinedAt: !1024)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 553, column: 9)
!1341 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 552, column: 11)
!1342 = !DILocation(line: 484, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 483, column: 5)
!1344 = !DILocalVariable(name: "finish", arg: 1, scope: !1345, file: !3, line: 958, type: !132)
!1345 = distinct !DISubprogram(name: "put_paragraph", scope: !3, file: !3, line: 958, type: !1346, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1348)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !132}
!1348 = !{!1344, !1349}
!1349 = !DILocalVariable(name: "w", scope: !1345, file: !3, line: 960, type: !132)
!1350 = !DILocation(line: 958, column: 22, scope: !1345, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 485, column: 7, scope: !1343)
!1352 = !DILocation(line: 962, column: 19, scope: !1345, inlinedAt: !1351)
!1353 = !DILocation(line: 962, column: 3, scope: !1345, inlinedAt: !1351)
!1354 = !DILocation(line: 960, column: 9, scope: !1345, inlinedAt: !1351)
!1355 = !DILocation(line: 0, scope: !1356, inlinedAt: !1351)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 963, column: 3)
!1357 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 963, column: 3)
!1358 = !{!1359, !721, i64 32}
!1359 = !{!"Word", !721, i64 0, !860, i64 8, !860, i64 12, !860, i64 16, !860, i64 16, !860, i64 16, !860, i64 16, !860, i64 20, !1087, i64 24, !721, i64 32}
!1360 = !DILocation(line: 963, column: 32, scope: !1356, inlinedAt: !1351)
!1361 = !DILocation(line: 963, column: 3, scope: !1357, inlinedAt: !1351)
!1362 = !DILocation(line: 964, column: 18, scope: !1356, inlinedAt: !1351)
!1363 = !DILocation(line: 964, column: 5, scope: !1356, inlinedAt: !1351)
!1364 = !DILocation(line: 963, column: 50, scope: !1356, inlinedAt: !1351)
!1365 = distinct !{!1365, !1366, !1367}
!1366 = !DILocation(line: 963, column: 3, scope: !1357)
!1367 = !DILocation(line: 964, column: 30, scope: !1357)
!1368 = distinct !{!1368, !1016, !1369}
!1369 = !DILocation(line: 486, column: 5, scope: !1006)
!1370 = !DILocation(line: 487, column: 1, scope: !1006)
!1371 = distinct !DISubprogram(name: "get_prefix", scope: !3, file: !3, line: 717, type: !1167, isLocal: true, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1372)
!1372 = !{!1373, !1374, !1375, !1378}
!1373 = !DILocalVariable(name: "f", arg: 1, scope: !1371, file: !3, line: 717, type: !793)
!1374 = !DILocalVariable(name: "c", scope: !1371, file: !3, line: 719, type: !50)
!1375 = !DILocalVariable(name: "p", scope: !1376, file: !3, line: 728, type: !65)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 727, column: 5)
!1377 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 723, column: 7)
!1378 = !DILocalVariable(name: "pc", scope: !1379, file: !3, line: 732, type: !49)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 731, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 730, column: 7)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 730, column: 7)
!1382 = !DILocation(line: 717, column: 19, scope: !1371)
!1383 = !DILocation(line: 721, column: 13, scope: !1371)
!1384 = !DILocation(line: 66, column: 22, scope: !1166, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 722, column: 21, scope: !1371)
!1386 = !DILocation(line: 68, column: 10, scope: !1166, inlinedAt: !1385)
!1387 = !DILocation(line: 751, column: 11, scope: !1388, inlinedAt: !1393)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 750, column: 5)
!1389 = distinct !DISubprogram(name: "get_space", scope: !3, file: !3, line: 747, type: !1043, isLocal: true, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1390)
!1390 = !{!1391, !1392}
!1391 = !DILocalVariable(name: "f", arg: 1, scope: !1389, file: !3, line: 747, type: !793)
!1392 = !DILocalVariable(name: "c", arg: 2, scope: !1389, file: !3, line: 747, type: !50)
!1393 = distinct !DILocation(line: 722, column: 7, scope: !1371)
!1394 = !DILocation(line: 747, column: 25, scope: !1389, inlinedAt: !1393)
!1395 = !DILocation(line: 752, column: 18, scope: !1396, inlinedAt: !1393)
!1396 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 751, column: 11)
!1397 = !DILocation(line: 752, column: 9, scope: !1396, inlinedAt: !1393)
!1398 = !DILocation(line: 756, column: 24, scope: !1399, inlinedAt: !1393)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 754, column: 9)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 753, column: 16)
!1401 = !DILocation(line: 756, column: 34, scope: !1399, inlinedAt: !1393)
!1402 = !DILocation(line: 756, column: 50, scope: !1399, inlinedAt: !1393)
!1403 = !DILocation(line: 0, scope: !1396, inlinedAt: !1393)
!1404 = !DILocation(line: 66, column: 22, scope: !1166, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 760, column: 11, scope: !1388, inlinedAt: !1393)
!1406 = !DILocation(line: 68, column: 10, scope: !1166, inlinedAt: !1405)
!1407 = distinct !{!1407, !1408, !1409}
!1408 = !DILocation(line: 749, column: 3, scope: !1389)
!1409 = !DILocation(line: 761, column: 5, scope: !1389)
!1410 = !DILocation(line: 719, column: 7, scope: !1371)
!1411 = !DILocation(line: 723, column: 7, scope: !1377)
!1412 = !DILocation(line: 723, column: 21, scope: !1377)
!1413 = !DILocation(line: 723, column: 7, scope: !1371)
!1414 = !DILocation(line: 724, column: 26, scope: !1377)
!1415 = !DILocation(line: 724, column: 46, scope: !1377)
!1416 = !DILocation(line: 724, column: 44, scope: !1377)
!1417 = !DILocation(line: 724, column: 24, scope: !1377)
!1418 = !DILocation(line: 724, column: 5, scope: !1377)
!1419 = !DILocation(line: 729, column: 28, scope: !1376)
!1420 = !DILocation(line: 729, column: 26, scope: !1376)
!1421 = !DILocation(line: 730, column: 16, scope: !1381)
!1422 = !DILocation(line: 728, column: 19, scope: !1376)
!1423 = !DILocation(line: 730, column: 24, scope: !1380)
!1424 = !DILocation(line: 730, column: 27, scope: !1380)
!1425 = !DILocation(line: 730, column: 7, scope: !1381)
!1426 = !DILocation(line: 732, column: 25, scope: !1379)
!1427 = !DILocation(line: 733, column: 20, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 733, column: 15)
!1429 = !DILocation(line: 733, column: 17, scope: !1428)
!1430 = !DILocation(line: 733, column: 15, scope: !1379)
!1431 = !DILocation(line: 735, column: 20, scope: !1379)
!1432 = !DILocation(line: 66, column: 22, scope: !1166, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 736, column: 15, scope: !1379)
!1434 = !DILocation(line: 68, column: 10, scope: !1166, inlinedAt: !1433)
!1435 = !DILocation(line: 730, column: 37, scope: !1380)
!1436 = distinct !{!1436, !1425, !1437}
!1437 = !DILocation(line: 737, column: 9, scope: !1381)
!1438 = !DILocation(line: 751, column: 11, scope: !1388, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 738, column: 11, scope: !1376)
!1440 = !DILocation(line: 747, column: 25, scope: !1389, inlinedAt: !1439)
!1441 = !DILocation(line: 752, column: 18, scope: !1396, inlinedAt: !1439)
!1442 = !DILocation(line: 752, column: 9, scope: !1396, inlinedAt: !1439)
!1443 = !DILocation(line: 756, column: 24, scope: !1399, inlinedAt: !1439)
!1444 = !DILocation(line: 756, column: 34, scope: !1399, inlinedAt: !1439)
!1445 = !DILocation(line: 756, column: 50, scope: !1399, inlinedAt: !1439)
!1446 = !DILocation(line: 0, scope: !1396, inlinedAt: !1439)
!1447 = !DILocation(line: 66, column: 22, scope: !1166, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 760, column: 11, scope: !1388, inlinedAt: !1439)
!1449 = !DILocation(line: 68, column: 10, scope: !1166, inlinedAt: !1448)
!1450 = !DILocation(line: 0, scope: !1428)
!1451 = !DILocation(line: 741, column: 1, scope: !1371)
!1452 = distinct !DISubprogram(name: "get_line", scope: !3, file: !3, line: 663, type: !1043, isLocal: true, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458}
!1454 = !DILocalVariable(name: "f", arg: 1, scope: !1452, file: !3, line: 663, type: !793)
!1455 = !DILocalVariable(name: "c", arg: 2, scope: !1452, file: !3, line: 663, type: !50)
!1456 = !DILocalVariable(name: "start", scope: !1452, file: !3, line: 665, type: !50)
!1457 = !DILocalVariable(name: "end_of_parabuf", scope: !1452, file: !3, line: 666, type: !45)
!1458 = !DILocalVariable(name: "end_of_word", scope: !1452, file: !3, line: 667, type: !132)
!1459 = !DILocation(line: 663, column: 17, scope: !1452)
!1460 = !DILocation(line: 663, column: 24, scope: !1452)
!1461 = !DILocation(line: 666, column: 9, scope: !1452)
!1462 = !DILocation(line: 667, column: 9, scope: !1452)
!1463 = !DILocation(line: 677, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 673, column: 5)
!1465 = !DILocation(line: 672, column: 3, scope: !1452)
!1466 = !DILocation(line: 677, column: 26, scope: !1464)
!1467 = !DILocation(line: 677, column: 24, scope: !1464)
!1468 = !{!1359, !721, i64 0}
!1469 = !DILocation(line: 678, column: 7, scope: !1464)
!1470 = !DILocation(line: 680, column: 15, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 680, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 679, column: 9)
!1473 = !DILocation(line: 680, column: 20, scope: !1471)
!1474 = !DILocation(line: 680, column: 15, scope: !1472)
!1475 = !DILocation(line: 493, column: 24, scope: !1209, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 682, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 681, column: 13)
!1478 = !DILocation(line: 495, column: 7, scope: !1209, inlinedAt: !1476)
!1479 = !DILocation(line: 496, column: 20, scope: !1217, inlinedAt: !1476)
!1480 = !DILocation(line: 496, column: 5, scope: !1217, inlinedAt: !1476)
!1481 = !DILocation(line: 497, column: 12, scope: !1217, inlinedAt: !1476)
!1482 = !DILocation(line: 499, column: 40, scope: !1239, inlinedAt: !1476)
!1483 = !DILocation(line: 500, column: 5, scope: !1239, inlinedAt: !1476)
!1484 = !DILocation(line: 501, column: 12, scope: !1219, inlinedAt: !1476)
!1485 = !DILocation(line: 503, column: 29, scope: !1221, inlinedAt: !1476)
!1486 = !DILocation(line: 503, column: 42, scope: !1221, inlinedAt: !1476)
!1487 = !DILocation(line: 503, column: 39, scope: !1221, inlinedAt: !1476)
!1488 = !DILocation(line: 503, column: 11, scope: !1222, inlinedAt: !1476)
!1489 = !DILocation(line: 513, column: 16, scope: !1225, inlinedAt: !1476)
!1490 = !DILocation(line: 513, column: 29, scope: !1225, inlinedAt: !1476)
!1491 = !DILocation(line: 513, column: 16, scope: !1221, inlinedAt: !1476)
!1492 = !DILocation(line: 514, column: 37, scope: !1225, inlinedAt: !1476)
!1493 = !DILocation(line: 514, column: 24, scope: !1225, inlinedAt: !1476)
!1494 = !DILocation(line: 514, column: 9, scope: !1225, inlinedAt: !1476)
!1495 = !DILocation(line: 518, column: 22, scope: !1276, inlinedAt: !1476)
!1496 = !DILocation(line: 0, scope: !1477)
!1497 = !DILocation(line: 683, column: 15, scope: !1477)
!1498 = !DILocation(line: 685, column: 16, scope: !1472)
!1499 = !DILocation(line: 684, column: 13, scope: !1477)
!1500 = !DILocation(line: 685, column: 21, scope: !1472)
!1501 = !DILocation(line: 685, column: 19, scope: !1472)
!1502 = !DILocation(line: 66, column: 22, scope: !1166, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 686, column: 15, scope: !1472)
!1504 = !DILocation(line: 68, column: 10, scope: !1166, inlinedAt: !1503)
!1505 = !DILocation(line: 688, column: 23, scope: !1464)
!1506 = !DILocation(line: 688, column: 16, scope: !1464)
!1507 = !DILocation(line: 774, column: 17, scope: !1508, inlinedAt: !1514)
!1508 = distinct !DISubprogram(name: "check_punctuation", scope: !3, file: !3, line: 767, type: !1346, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1509)
!1509 = !{!1510, !1511, !1512, !1513}
!1510 = !DILocalVariable(name: "w", arg: 1, scope: !1508, file: !3, line: 767, type: !132)
!1511 = !DILocalVariable(name: "start", scope: !1508, file: !3, line: 769, type: !65)
!1512 = !DILocalVariable(name: "finish", scope: !1508, file: !3, line: 770, type: !65)
!1513 = !DILocalVariable(name: "fin", scope: !1508, file: !3, line: 771, type: !49)
!1514 = distinct !DILocation(line: 690, column: 7, scope: !1464)
!1515 = !DILocation(line: 688, column: 27, scope: !1464)
!1516 = !{!1088, !1088, i64 0}
!1517 = !DILocation(line: 688, column: 26, scope: !1464)
!1518 = !DILocation(line: 687, column: 9, scope: !1472)
!1519 = distinct !{!1519, !1469, !1520}
!1520 = !DILocation(line: 688, column: 38, scope: !1464)
!1521 = !DILocation(line: 689, column: 41, scope: !1464)
!1522 = !DILocation(line: 689, column: 48, scope: !1464)
!1523 = !DILocation(line: 689, column: 60, scope: !1464)
!1524 = !DILocation(line: 689, column: 46, scope: !1464)
!1525 = !DILocation(line: 689, column: 32, scope: !1464)
!1526 = !DILocation(line: 689, column: 39, scope: !1464)
!1527 = !{!1359, !860, i64 8}
!1528 = !DILocation(line: 689, column: 17, scope: !1464)
!1529 = !DILocation(line: 767, column: 26, scope: !1508, inlinedAt: !1514)
!1530 = !DILocation(line: 769, column: 26, scope: !1508, inlinedAt: !1514)
!1531 = !DILocation(line: 769, column: 15, scope: !1508, inlinedAt: !1514)
!1532 = !DILocation(line: 770, column: 30, scope: !1508, inlinedAt: !1514)
!1533 = !DILocation(line: 770, column: 15, scope: !1508, inlinedAt: !1514)
!1534 = !DILocation(line: 771, column: 23, scope: !1508, inlinedAt: !1514)
!1535 = !DILocation(line: 771, column: 17, scope: !1508, inlinedAt: !1514)
!1536 = !DILocation(line: 773, column: 14, scope: !1508, inlinedAt: !1514)
!1537 = !DILocation(line: 773, column: 6, scope: !1508, inlinedAt: !1514)
!1538 = !DILocation(line: 773, column: 12, scope: !1508, inlinedAt: !1514)
!1539 = !DILocation(line: 774, column: 12, scope: !1508, inlinedAt: !1514)
!1540 = !DILocation(line: 775, column: 16, scope: !1508, inlinedAt: !1514)
!1541 = !DILocation(line: 775, column: 25, scope: !1508, inlinedAt: !1514)
!1542 = !DILocation(line: 775, column: 28, scope: !1508, inlinedAt: !1514)
!1543 = !DILocation(line: 775, column: 3, scope: !1508, inlinedAt: !1514)
!1544 = !DILocation(line: 776, column: 11, scope: !1508, inlinedAt: !1514)
!1545 = distinct !{!1545, !1546, !1547}
!1546 = !DILocation(line: 775, column: 3, scope: !1508)
!1547 = !DILocation(line: 776, column: 11, scope: !1508)
!1548 = !DILocation(line: 0, scope: !1508, inlinedAt: !1514)
!1549 = !DILocation(line: 777, column: 15, scope: !1508, inlinedAt: !1514)
!1550 = !DILocation(line: 777, column: 13, scope: !1508, inlinedAt: !1514)
!1551 = !DILocation(line: 665, column: 7, scope: !1452)
!1552 = !DILocation(line: 747, column: 18, scope: !1389, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 695, column: 11, scope: !1464)
!1554 = !DILocation(line: 747, column: 25, scope: !1389, inlinedAt: !1553)
!1555 = !DILocation(line: 749, column: 3, scope: !1389, inlinedAt: !1553)
!1556 = !DILocation(line: 751, column: 11, scope: !1388, inlinedAt: !1553)
!1557 = !DILocation(line: 752, column: 18, scope: !1396, inlinedAt: !1553)
!1558 = !DILocation(line: 752, column: 9, scope: !1396, inlinedAt: !1553)
!1559 = !DILocation(line: 756, column: 24, scope: !1399, inlinedAt: !1553)
!1560 = !DILocation(line: 756, column: 34, scope: !1399, inlinedAt: !1553)
!1561 = !DILocation(line: 756, column: 50, scope: !1399, inlinedAt: !1553)
!1562 = !DILocation(line: 0, scope: !1396, inlinedAt: !1553)
!1563 = !DILocation(line: 66, column: 22, scope: !1166, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 760, column: 11, scope: !1388, inlinedAt: !1553)
!1565 = !DILocation(line: 68, column: 10, scope: !1166, inlinedAt: !1564)
!1566 = !DILocation(line: 696, column: 27, scope: !1464)
!1567 = !DILocation(line: 696, column: 37, scope: !1464)
!1568 = !DILocation(line: 696, column: 7, scope: !1464)
!1569 = !DILocation(line: 696, column: 19, scope: !1464)
!1570 = !DILocation(line: 696, column: 25, scope: !1464)
!1571 = !{!1359, !860, i64 12}
!1572 = !DILocation(line: 697, column: 30, scope: !1464)
!1573 = !DILocation(line: 0, scope: !1464)
!1574 = !DILocation(line: 698, column: 28, scope: !1464)
!1575 = !DILocation(line: 698, column: 44, scope: !1464)
!1576 = !DILocation(line: 698, column: 32, scope: !1464)
!1577 = !DILocation(line: 699, column: 32, scope: !1464)
!1578 = !DILocation(line: 699, column: 38, scope: !1464)
!1579 = !DILocation(line: 699, column: 46, scope: !1464)
!1580 = !DILocation(line: 699, column: 67, scope: !1464)
!1581 = !DILocation(line: 697, column: 25, scope: !1464)
!1582 = !DILocation(line: 700, column: 21, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 700, column: 11)
!1584 = !DILocation(line: 700, column: 11, scope: !1464)
!1585 = !DILocation(line: 701, column: 41, scope: !1583)
!1586 = !DILocation(line: 701, column: 29, scope: !1583)
!1587 = !DILocation(line: 701, column: 27, scope: !1583)
!1588 = !DILocation(line: 701, column: 9, scope: !1583)
!1589 = !DILocation(line: 702, column: 22, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 702, column: 11)
!1591 = !DILocation(line: 702, column: 11, scope: !1464)
!1592 = !DILocation(line: 493, column: 24, scope: !1209, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 704, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 703, column: 9)
!1595 = !DILocation(line: 495, column: 7, scope: !1209, inlinedAt: !1593)
!1596 = !DILocation(line: 496, column: 20, scope: !1217, inlinedAt: !1593)
!1597 = !DILocation(line: 496, column: 5, scope: !1217, inlinedAt: !1593)
!1598 = !DILocation(line: 497, column: 12, scope: !1217, inlinedAt: !1593)
!1599 = !DILocation(line: 0, scope: !1594)
!1600 = !DILocation(line: 501, column: 12, scope: !1219, inlinedAt: !1593)
!1601 = !DILocation(line: 503, column: 39, scope: !1221, inlinedAt: !1593)
!1602 = !DILocation(line: 503, column: 11, scope: !1222, inlinedAt: !1593)
!1603 = !DILocation(line: 513, column: 16, scope: !1225, inlinedAt: !1593)
!1604 = !DILocation(line: 513, column: 29, scope: !1225, inlinedAt: !1593)
!1605 = !DILocation(line: 513, column: 16, scope: !1221, inlinedAt: !1593)
!1606 = !DILocation(line: 514, column: 37, scope: !1225, inlinedAt: !1593)
!1607 = !DILocation(line: 514, column: 24, scope: !1225, inlinedAt: !1593)
!1608 = !DILocation(line: 514, column: 9, scope: !1225, inlinedAt: !1593)
!1609 = !DILocation(line: 705, column: 11, scope: !1594)
!1610 = !DILocation(line: 707, column: 17, scope: !1464)
!1611 = !DILocation(line: 706, column: 9, scope: !1594)
!1612 = !DILocation(line: 708, column: 5, scope: !1464)
!1613 = !DILocation(line: 710, column: 10, scope: !1452)
!1614 = !DILocation(line: 710, column: 3, scope: !1452)
!1615 = distinct !DISubprogram(name: "fmt_paragraph", scope: !3, file: !3, line: 848, type: !728, isLocal: true, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622}
!1617 = !DILocalVariable(name: "start", scope: !1615, file: !3, line: 850, type: !132)
!1618 = !DILocalVariable(name: "w", scope: !1615, file: !3, line: 850, type: !132)
!1619 = !DILocalVariable(name: "len", scope: !1615, file: !3, line: 851, type: !50)
!1620 = !DILocalVariable(name: "wcost", scope: !1615, file: !3, line: 852, type: !52)
!1621 = !DILocalVariable(name: "best", scope: !1615, file: !3, line: 852, type: !52)
!1622 = !DILocalVariable(name: "saved_length", scope: !1615, file: !3, line: 853, type: !50)
!1623 = !DILocation(line: 855, column: 3, scope: !1615)
!1624 = !DILocation(line: 855, column: 15, scope: !1615)
!1625 = !DILocation(line: 855, column: 25, scope: !1615)
!1626 = !{!1359, !1087, i64 24}
!1627 = !DILocation(line: 856, column: 30, scope: !1615)
!1628 = !DILocation(line: 853, column: 7, scope: !1615)
!1629 = !DILocation(line: 857, column: 24, scope: !1615)
!1630 = !DILocation(line: 857, column: 22, scope: !1615)
!1631 = !DILocation(line: 850, column: 9, scope: !1615)
!1632 = !DILocation(line: 0, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 859, column: 3)
!1634 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 859, column: 3)
!1635 = !DILocation(line: 859, column: 38, scope: !1633)
!1636 = !DILocation(line: 859, column: 3, scope: !1634)
!1637 = !DILocation(line: 852, column: 15, scope: !1615)
!1638 = !DILocation(line: 862, column: 19, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 860, column: 5)
!1640 = !DILocation(line: 862, column: 13, scope: !1639)
!1641 = !DILocation(line: 851, column: 7, scope: !1615)
!1642 = !DILocation(line: 850, column: 17, scope: !1615)
!1643 = !DILocation(line: 867, column: 17, scope: !1639)
!1644 = !DILocation(line: 867, column: 11, scope: !1639)
!1645 = !DILocation(line: 868, column: 7, scope: !1639)
!1646 = !DILocation(line: 0, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 869, column: 9)
!1648 = !DILocation(line: 0, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 878, column: 13)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 877, column: 15)
!1651 = !DILocation(line: 870, column: 12, scope: !1647)
!1652 = !DILocalVariable(name: "next", arg: 1, scope: !1653, file: !3, line: 937, type: !132)
!1653 = distinct !DISubprogram(name: "line_cost", scope: !3, file: !3, line: 937, type: !1654, isLocal: true, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!52, !132, !50}
!1656 = !{!1652, !1657, !1658, !1659}
!1657 = !DILocalVariable(name: "len", arg: 2, scope: !1653, file: !3, line: 937, type: !50)
!1658 = !DILocalVariable(name: "n", scope: !1653, file: !3, line: 939, type: !50)
!1659 = !DILocalVariable(name: "cost", scope: !1653, file: !3, line: 940, type: !52)
!1660 = !DILocation(line: 937, column: 18, scope: !1653, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 874, column: 19, scope: !1647)
!1662 = !DILocation(line: 937, column: 28, scope: !1653, inlinedAt: !1661)
!1663 = !DILocation(line: 942, column: 12, scope: !1664, inlinedAt: !1661)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 942, column: 7)
!1665 = !DILocation(line: 942, column: 7, scope: !1653, inlinedAt: !1661)
!1666 = !DILocation(line: 944, column: 18, scope: !1653, inlinedAt: !1661)
!1667 = !DILocation(line: 939, column: 7, scope: !1653, inlinedAt: !1661)
!1668 = !DILocation(line: 945, column: 10, scope: !1653, inlinedAt: !1661)
!1669 = !DILocation(line: 940, column: 8, scope: !1653, inlinedAt: !1661)
!1670 = !DILocation(line: 946, column: 13, scope: !1671, inlinedAt: !1661)
!1671 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 946, column: 7)
!1672 = !DILocation(line: 946, column: 24, scope: !1671, inlinedAt: !1661)
!1673 = !DILocation(line: 946, column: 7, scope: !1653, inlinedAt: !1661)
!1674 = !DILocation(line: 948, column: 23, scope: !1675, inlinedAt: !1661)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 947, column: 5)
!1676 = !{!1359, !860, i64 20}
!1677 = !DILocation(line: 948, column: 15, scope: !1675, inlinedAt: !1661)
!1678 = !DILocation(line: 949, column: 15, scope: !1675, inlinedAt: !1661)
!1679 = !DILocation(line: 949, column: 12, scope: !1675, inlinedAt: !1661)
!1680 = !DILocation(line: 950, column: 5, scope: !1675, inlinedAt: !1661)
!1681 = !DILocation(line: 0, scope: !1653, inlinedAt: !1661)
!1682 = !DILocation(line: 874, column: 43, scope: !1647)
!1683 = !DILocation(line: 874, column: 38, scope: !1647)
!1684 = !DILocation(line: 852, column: 8, scope: !1615)
!1685 = !DILocation(line: 875, column: 29, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 875, column: 15)
!1687 = !DILocation(line: 876, column: 22, scope: !1686)
!1688 = !DILocation(line: 876, column: 19, scope: !1686)
!1689 = !DILocation(line: 876, column: 13, scope: !1686)
!1690 = !DILocation(line: 877, column: 21, scope: !1650)
!1691 = !DILocation(line: 877, column: 15, scope: !1647)
!1692 = !DILocation(line: 880, column: 33, scope: !1649)
!1693 = !DILocation(line: 881, column: 34, scope: !1649)
!1694 = !DILocation(line: 882, column: 13, scope: !1649)
!1695 = !DILocation(line: 0, scope: !1639)
!1696 = !DILocation(line: 888, column: 15, scope: !1647)
!1697 = !DILocation(line: 891, column: 27, scope: !1647)
!1698 = !DILocation(line: 891, column: 38, scope: !1647)
!1699 = !DILocation(line: 891, column: 33, scope: !1647)
!1700 = !DILocation(line: 891, column: 15, scope: !1647)
!1701 = !DILocation(line: 893, column: 18, scope: !1639)
!1702 = !DILocation(line: 892, column: 9, scope: !1647)
!1703 = distinct !{!1703, !1645, !1704}
!1704 = !DILocation(line: 893, column: 29, scope: !1639)
!1705 = !DILocalVariable(name: "this", arg: 1, scope: !1706, file: !3, line: 904, type: !132)
!1706 = distinct !DISubprogram(name: "base_cost", scope: !3, file: !3, line: 904, type: !1707, isLocal: true, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!52, !132}
!1709 = !{!1705, !1710}
!1710 = !DILocalVariable(name: "cost", scope: !1706, file: !3, line: 906, type: !52)
!1711 = !DILocation(line: 904, column: 18, scope: !1706, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 894, column: 33, scope: !1639)
!1713 = !DILocation(line: 906, column: 8, scope: !1706, inlinedAt: !1712)
!1714 = !DILocation(line: 910, column: 12, scope: !1715, inlinedAt: !1712)
!1715 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 910, column: 7)
!1716 = !DILocation(line: 910, column: 7, scope: !1706, inlinedAt: !1712)
!1717 = !DILocation(line: 912, column: 23, scope: !1718, inlinedAt: !1712)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 912, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 911, column: 5)
!1720 = !DILocation(line: 912, column: 11, scope: !1718, inlinedAt: !1712)
!1721 = !DILocation(line: 912, column: 11, scope: !1719, inlinedAt: !1712)
!1722 = !DILocation(line: 914, column: 27, scope: !1723, inlinedAt: !1712)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 914, column: 15)
!1724 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 913, column: 9)
!1725 = !DILocation(line: 914, column: 15, scope: !1723, inlinedAt: !1712)
!1726 = !DILocation(line: 919, column: 28, scope: !1727, inlinedAt: !1712)
!1727 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 919, column: 16)
!1728 = !DILocation(line: 919, column: 16, scope: !1727, inlinedAt: !1712)
!1729 = !DILocation(line: 919, column: 16, scope: !1718, inlinedAt: !1712)
!1730 = !DILocation(line: 921, column: 21, scope: !1731, inlinedAt: !1712)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 921, column: 16)
!1732 = !DILocation(line: 921, column: 32, scope: !1731, inlinedAt: !1712)
!1733 = !DILocation(line: 921, column: 47, scope: !1731, inlinedAt: !1712)
!1734 = !DILocation(line: 921, column: 35, scope: !1731, inlinedAt: !1712)
!1735 = !DILocation(line: 921, column: 16, scope: !1727, inlinedAt: !1712)
!1736 = !DILocation(line: 922, column: 17, scope: !1731, inlinedAt: !1712)
!1737 = !DILocation(line: 922, column: 14, scope: !1731, inlinedAt: !1712)
!1738 = !DILocation(line: 922, column: 9, scope: !1731, inlinedAt: !1712)
!1739 = !DILocation(line: 0, scope: !1706, inlinedAt: !1712)
!1740 = !DILocation(line: 925, column: 13, scope: !1741, inlinedAt: !1712)
!1741 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 925, column: 7)
!1742 = !DILocation(line: 925, column: 7, scope: !1741, inlinedAt: !1712)
!1743 = !DILocation(line: 925, column: 7, scope: !1706, inlinedAt: !1712)
!1744 = !DILocation(line: 926, column: 10, scope: !1741, inlinedAt: !1712)
!1745 = !DILocation(line: 926, column: 5, scope: !1741, inlinedAt: !1712)
!1746 = !DILocation(line: 927, column: 18, scope: !1747, inlinedAt: !1712)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 927, column: 12)
!1748 = !DILocation(line: 927, column: 12, scope: !1747, inlinedAt: !1712)
!1749 = !DILocation(line: 927, column: 12, scope: !1741, inlinedAt: !1712)
!1750 = !DILocation(line: 928, column: 13, scope: !1747, inlinedAt: !1712)
!1751 = !DILocation(line: 928, column: 10, scope: !1747, inlinedAt: !1712)
!1752 = !DILocation(line: 928, column: 5, scope: !1747, inlinedAt: !1712)
!1753 = !DILocation(line: 0, scope: !1723, inlinedAt: !1712)
!1754 = !DILocation(line: 894, column: 31, scope: !1639)
!1755 = !DILocation(line: 894, column: 14, scope: !1639)
!1756 = !DILocation(line: 894, column: 24, scope: !1639)
!1757 = distinct !{!1757, !1636, !1758}
!1758 = !DILocation(line: 895, column: 5, scope: !1634)
!1759 = !DILocation(line: 897, column: 22, scope: !1615)
!1760 = !DILocation(line: 898, column: 1, scope: !1615)
!1761 = distinct !DISubprogram(name: "put_line", scope: !3, file: !3, line: 971, type: !1762, isLocal: true, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !132, !50}
!1764 = !{!1765, !1766, !1767}
!1765 = !DILocalVariable(name: "w", arg: 1, scope: !1761, file: !3, line: 971, type: !132)
!1766 = !DILocalVariable(name: "indent", arg: 2, scope: !1761, file: !3, line: 971, type: !50)
!1767 = !DILocalVariable(name: "endline", scope: !1761, file: !3, line: 973, type: !132)
!1768 = !DILocation(line: 971, column: 17, scope: !1761)
!1769 = !DILocation(line: 971, column: 24, scope: !1761)
!1770 = !DILocation(line: 975, column: 14, scope: !1761)
!1771 = !DILocation(line: 976, column: 14, scope: !1761)
!1772 = !DILocation(line: 1009, column: 16, scope: !1058, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 976, column: 3, scope: !1761)
!1774 = !DILocation(line: 1011, column: 7, scope: !1058, inlinedAt: !1773)
!1775 = !DILocation(line: 1014, column: 7, scope: !1058, inlinedAt: !1773)
!1776 = !DILocation(line: 1016, column: 33, scope: !1068, inlinedAt: !1773)
!1777 = !DILocation(line: 1016, column: 44, scope: !1068, inlinedAt: !1773)
!1778 = !DILocation(line: 1011, column: 21, scope: !1058, inlinedAt: !1773)
!1779 = !DILocation(line: 1017, column: 26, scope: !1073, inlinedAt: !1773)
!1780 = !DILocation(line: 1017, column: 11, scope: !1068, inlinedAt: !1773)
!1781 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 1020, column: 13, scope: !1083, inlinedAt: !1773)
!1783 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1782)
!1784 = !DILocation(line: 1021, column: 27, scope: !1083, inlinedAt: !1773)
!1785 = !DILocation(line: 1021, column: 38, scope: !1083, inlinedAt: !1773)
!1786 = !DILocation(line: 1021, column: 54, scope: !1083, inlinedAt: !1773)
!1787 = !DILocation(line: 1021, column: 24, scope: !1083, inlinedAt: !1773)
!1788 = !DILocation(line: 1018, column: 27, scope: !1073, inlinedAt: !1773)
!1789 = !DILocation(line: 1018, column: 9, scope: !1073, inlinedAt: !1773)
!1790 = !DILocation(line: 1024, column: 10, scope: !1058, inlinedAt: !1773)
!1791 = !DILocation(line: 1024, column: 21, scope: !1058, inlinedAt: !1773)
!1792 = !DILocation(line: 1024, column: 3, scope: !1058, inlinedAt: !1773)
!1793 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 1026, column: 7, scope: !1102, inlinedAt: !1773)
!1795 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1794)
!1796 = !DILocation(line: 1027, column: 17, scope: !1102, inlinedAt: !1773)
!1797 = !DILocation(line: 977, column: 3, scope: !1761)
!1798 = !DILocation(line: 978, column: 17, scope: !1761)
!1799 = !DILocation(line: 978, column: 14, scope: !1761)
!1800 = !DILocation(line: 1011, column: 7, scope: !1058, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 979, column: 3, scope: !1761)
!1802 = !DILocation(line: 1014, column: 7, scope: !1058, inlinedAt: !1801)
!1803 = !DILocation(line: 1016, column: 33, scope: !1068, inlinedAt: !1801)
!1804 = !DILocation(line: 1016, column: 44, scope: !1068, inlinedAt: !1801)
!1805 = !DILocation(line: 1011, column: 21, scope: !1058, inlinedAt: !1801)
!1806 = !DILocation(line: 1017, column: 22, scope: !1073, inlinedAt: !1801)
!1807 = !DILocation(line: 1017, column: 26, scope: !1073, inlinedAt: !1801)
!1808 = !DILocation(line: 1018, column: 27, scope: !1073, inlinedAt: !1801)
!1809 = !DILocation(line: 1017, column: 11, scope: !1068, inlinedAt: !1801)
!1810 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 1020, column: 13, scope: !1083, inlinedAt: !1801)
!1812 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1811)
!1813 = !DILocation(line: 1021, column: 27, scope: !1083, inlinedAt: !1801)
!1814 = !DILocation(line: 1021, column: 38, scope: !1083, inlinedAt: !1801)
!1815 = !DILocation(line: 1021, column: 54, scope: !1083, inlinedAt: !1801)
!1816 = !DILocation(line: 1021, column: 24, scope: !1083, inlinedAt: !1801)
!1817 = !DILocation(line: 1018, column: 9, scope: !1073, inlinedAt: !1801)
!1818 = !DILocation(line: 1024, column: 10, scope: !1058, inlinedAt: !1801)
!1819 = !DILocation(line: 1024, column: 21, scope: !1058, inlinedAt: !1801)
!1820 = !DILocation(line: 1024, column: 3, scope: !1058, inlinedAt: !1801)
!1821 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 1026, column: 7, scope: !1102, inlinedAt: !1801)
!1823 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1822)
!1824 = !DILocation(line: 1027, column: 17, scope: !1102, inlinedAt: !1801)
!1825 = !DILocation(line: 981, column: 16, scope: !1761)
!1826 = !DILocation(line: 981, column: 27, scope: !1761)
!1827 = !DILocation(line: 973, column: 9, scope: !1761)
!1828 = !DILocation(line: 982, column: 3, scope: !1761)
!1829 = !DILocation(line: 982, column: 12, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 982, column: 3)
!1831 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 982, column: 3)
!1832 = !DILocalVariable(name: "w", arg: 1, scope: !1833, file: !3, line: 995, type: !132)
!1833 = distinct !DISubprogram(name: "put_word", scope: !3, file: !3, line: 995, type: !1346, isLocal: true, isDefinition: true, scopeLine: 996, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1834)
!1834 = !{!1832, !1835, !1836}
!1835 = !DILocalVariable(name: "s", scope: !1833, file: !3, line: 997, type: !65)
!1836 = !DILocalVariable(name: "n", scope: !1833, file: !3, line: 998, type: !50)
!1837 = !DILocation(line: 995, column: 17, scope: !1833, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 0, scope: !1761)
!1839 = !DILocation(line: 1001, column: 15, scope: !1840, inlinedAt: !1838)
!1840 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1001, column: 3)
!1841 = !DILocation(line: 998, column: 7, scope: !1833, inlinedAt: !1838)
!1842 = !DILocation(line: 1001, column: 25, scope: !1843, inlinedAt: !1838)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 1001, column: 3)
!1844 = !DILocation(line: 1001, column: 3, scope: !1840, inlinedAt: !1838)
!1845 = !DILocation(line: 1000, column: 10, scope: !1833, inlinedAt: !1838)
!1846 = !DILocation(line: 997, column: 15, scope: !1833, inlinedAt: !1838)
!1847 = !DILocation(line: 1002, column: 5, scope: !1843, inlinedAt: !1838)
!1848 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 1002, column: 5, scope: !1843, inlinedAt: !1838)
!1850 = !DILocation(line: 1001, column: 32, scope: !1843, inlinedAt: !1838)
!1851 = distinct !{!1851, !1852, !1853}
!1852 = !DILocation(line: 1001, column: 3, scope: !1840)
!1853 = !DILocation(line: 1002, column: 5, scope: !1840)
!1854 = !DILocation(line: 1003, column: 20, scope: !1833, inlinedAt: !1838)
!1855 = !DILocation(line: 1003, column: 14, scope: !1833, inlinedAt: !1838)
!1856 = !DILocation(line: 982, column: 3, scope: !1831)
!1857 = !DILocation(line: 985, column: 21, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 983, column: 5)
!1859 = !DILocation(line: 1009, column: 16, scope: !1058, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 985, column: 7, scope: !1858)
!1861 = !DILocation(line: 1013, column: 29, scope: !1058, inlinedAt: !1860)
!1862 = !DILocation(line: 1011, column: 7, scope: !1058, inlinedAt: !1860)
!1863 = !DILocation(line: 1014, column: 7, scope: !1058, inlinedAt: !1860)
!1864 = !DILocation(line: 1016, column: 33, scope: !1068, inlinedAt: !1860)
!1865 = !DILocation(line: 1016, column: 44, scope: !1068, inlinedAt: !1860)
!1866 = !DILocation(line: 1011, column: 21, scope: !1058, inlinedAt: !1860)
!1867 = !DILocation(line: 1017, column: 22, scope: !1073, inlinedAt: !1860)
!1868 = !DILocation(line: 1017, column: 26, scope: !1073, inlinedAt: !1860)
!1869 = !DILocation(line: 1018, column: 27, scope: !1073, inlinedAt: !1860)
!1870 = !DILocation(line: 1017, column: 11, scope: !1068, inlinedAt: !1860)
!1871 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 1020, column: 13, scope: !1083, inlinedAt: !1860)
!1873 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1872)
!1874 = !DILocation(line: 1021, column: 27, scope: !1083, inlinedAt: !1860)
!1875 = !DILocation(line: 1021, column: 38, scope: !1083, inlinedAt: !1860)
!1876 = !DILocation(line: 1021, column: 54, scope: !1083, inlinedAt: !1860)
!1877 = !DILocation(line: 1021, column: 24, scope: !1083, inlinedAt: !1860)
!1878 = !DILocation(line: 1018, column: 9, scope: !1073, inlinedAt: !1860)
!1879 = !DILocation(line: 1024, column: 21, scope: !1058, inlinedAt: !1860)
!1880 = !DILocation(line: 1024, column: 3, scope: !1058, inlinedAt: !1860)
!1881 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 1026, column: 7, scope: !1102, inlinedAt: !1860)
!1883 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1882)
!1884 = !DILocation(line: 1027, column: 17, scope: !1102, inlinedAt: !1860)
!1885 = !DILocation(line: 982, column: 25, scope: !1830)
!1886 = !DILocation(line: 982, column: 3, scope: !1830)
!1887 = distinct !{!1887, !1856, !1888}
!1888 = !DILocation(line: 986, column: 5, scope: !1831)
!1889 = !DILocation(line: 988, column: 20, scope: !1761)
!1890 = !DILocation(line: 108, column: 23, scope: !1076, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 989, column: 3, scope: !1761)
!1892 = !DILocation(line: 110, column: 10, scope: !1076, inlinedAt: !1891)
!1893 = !DILocation(line: 990, column: 1, scope: !1761)
!1894 = distinct !DISubprogram(name: "flush_paragraph", scope: !3, file: !3, line: 784, type: !728, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1895)
!1895 = !{!1896, !1897, !1898, !1899}
!1896 = !DILocalVariable(name: "split_point", scope: !1894, file: !3, line: 786, type: !132)
!1897 = !DILocalVariable(name: "w", scope: !1894, file: !3, line: 787, type: !132)
!1898 = !DILocalVariable(name: "shift", scope: !1894, file: !3, line: 788, type: !50)
!1899 = !DILocalVariable(name: "best_break", scope: !1894, file: !3, line: 789, type: !52)
!1900 = !DILocation(line: 793, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 793, column: 7)
!1902 = !DILocation(line: 793, column: 18, scope: !1901)
!1903 = !DILocation(line: 793, column: 7, scope: !1894)
!1904 = !DILocation(line: 795, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 794, column: 5)
!1906 = !DILocation(line: 796, column: 12, scope: !1905)
!1907 = !DILocation(line: 797, column: 7, scope: !1905)
!1908 = !DILocation(line: 806, column: 3, scope: !1894)
!1909 = !DILocation(line: 786, column: 9, scope: !1894)
!1910 = !DILocation(line: 789, column: 8, scope: !1894)
!1911 = !DILocation(line: 787, column: 9, scope: !1894)
!1912 = !DILocation(line: 0, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 812, column: 3)
!1914 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 812, column: 3)
!1915 = !DILocation(line: 812, column: 32, scope: !1913)
!1916 = !DILocation(line: 812, column: 3, scope: !1914)
!1917 = !DILocation(line: 814, column: 14, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 814, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 813, column: 5)
!1920 = !DILocation(line: 814, column: 29, scope: !1918)
!1921 = !DILocation(line: 814, column: 41, scope: !1918)
!1922 = !DILocation(line: 814, column: 24, scope: !1918)
!1923 = !DILocation(line: 814, column: 51, scope: !1918)
!1924 = !DILocation(line: 814, column: 11, scope: !1919)
!1925 = !DILocation(line: 819, column: 22, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 819, column: 11)
!1927 = !DILocation(line: 820, column: 20, scope: !1926)
!1928 = !DILocation(line: 819, column: 11, scope: !1919)
!1929 = distinct !{!1929, !1916, !1930}
!1930 = !DILocation(line: 821, column: 5, scope: !1914)
!1931 = !DILocation(line: 0, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 815, column: 9)
!1933 = !DILocation(line: 958, column: 22, scope: !1345, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 822, column: 3, scope: !1894)
!1935 = !DILocation(line: 962, column: 19, scope: !1345, inlinedAt: !1934)
!1936 = !DILocation(line: 962, column: 3, scope: !1345, inlinedAt: !1934)
!1937 = !DILocation(line: 960, column: 9, scope: !1345, inlinedAt: !1934)
!1938 = !DILocation(line: 0, scope: !1356, inlinedAt: !1934)
!1939 = !DILocation(line: 963, column: 32, scope: !1356, inlinedAt: !1934)
!1940 = !DILocation(line: 963, column: 3, scope: !1357, inlinedAt: !1934)
!1941 = !DILocation(line: 964, column: 18, scope: !1356, inlinedAt: !1934)
!1942 = !DILocation(line: 964, column: 5, scope: !1356, inlinedAt: !1934)
!1943 = !DILocation(line: 963, column: 50, scope: !1356, inlinedAt: !1934)
!1944 = !DILocation(line: 827, column: 34, scope: !1894)
!1945 = !DILocation(line: 827, column: 40, scope: !1894)
!1946 = !DILocation(line: 827, column: 45, scope: !1894)
!1947 = !DILocation(line: 827, column: 3, scope: !1894)
!1948 = !DILocation(line: 828, column: 24, scope: !1894)
!1949 = !DILocation(line: 828, column: 11, scope: !1894)
!1950 = !DILocation(line: 829, column: 8, scope: !1894)
!1951 = !DILocation(line: 833, column: 30, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 833, column: 3)
!1953 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 833, column: 3)
!1954 = !DILocation(line: 833, column: 27, scope: !1952)
!1955 = !DILocation(line: 833, column: 3, scope: !1953)
!1956 = !DILocation(line: 834, column: 8, scope: !1952)
!1957 = !DILocation(line: 834, column: 13, scope: !1952)
!1958 = !DILocation(line: 833, column: 43, scope: !1952)
!1959 = distinct !{!1959, !1955, !1960}
!1960 = !DILocation(line: 834, column: 16, scope: !1953)
!1961 = !DILocation(line: 839, column: 3, scope: !1894)
!1962 = !DILocation(line: 839, column: 43, scope: !1894)
!1963 = !DILocation(line: 839, column: 62, scope: !1894)
!1964 = !DILocation(line: 840, column: 29, scope: !1894)
!1965 = !DILocation(line: 840, column: 14, scope: !1894)
!1966 = !DILocation(line: 841, column: 1, scope: !1894)
!1967 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !154, file: !154, line: 51, type: !695, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !149, retainedNodes: !1968)
!1968 = !{!1969}
!1969 = !DILocalVariable(name: "file", arg: 1, scope: !1967, file: !154, line: 51, type: !65)
!1970 = !DILocation(line: 51, column: 41, scope: !1967)
!1971 = !DILocation(line: 53, column: 13, scope: !1967)
!1972 = !DILocation(line: 54, column: 1, scope: !1967)
!1973 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !154, file: !154, line: 88, type: !1210, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !149, retainedNodes: !1974)
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "ignore", arg: 1, scope: !1973, file: !154, line: 88, type: !57)
!1976 = !DILocation(line: 88, column: 37, scope: !1973)
!1977 = !DILocation(line: 90, column: 16, scope: !1973)
!1978 = !{!1979, !1979, i64 0}
!1979 = !{!"_Bool", !722, i64 0}
!1980 = !DILocation(line: 91, column: 1, scope: !1973)
!1981 = distinct !DISubprogram(name: "close_stdout", scope: !154, file: !154, line: 117, type: !728, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !149, retainedNodes: !1982)
!1982 = !{!1983}
!1983 = !DILocalVariable(name: "write_error", scope: !1984, file: !154, line: 122, type: !65)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !154, line: 121, column: 5)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !154, line: 119, column: 7)
!1986 = !DILocation(line: 119, column: 21, scope: !1985)
!1987 = !DILocation(line: 119, column: 7, scope: !1985)
!1988 = !DILocation(line: 119, column: 29, scope: !1985)
!1989 = !DILocation(line: 120, column: 7, scope: !1985)
!1990 = !DILocation(line: 120, column: 12, scope: !1985)
!1991 = !{i8 0, i8 2}
!1992 = !DILocation(line: 120, column: 25, scope: !1985)
!1993 = !DILocation(line: 120, column: 28, scope: !1985)
!1994 = !DILocation(line: 120, column: 34, scope: !1985)
!1995 = !DILocation(line: 119, column: 7, scope: !1981)
!1996 = !DILocation(line: 122, column: 33, scope: !1984)
!1997 = !DILocation(line: 122, column: 19, scope: !1984)
!1998 = !DILocation(line: 123, column: 11, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1984, file: !154, line: 123, column: 11)
!2000 = !DILocation(line: 0, scope: !1999)
!2001 = !DILocation(line: 123, column: 11, scope: !1984)
!2002 = !DILocation(line: 124, column: 36, scope: !1999)
!2003 = !DILocation(line: 124, column: 9, scope: !1999)
!2004 = !DILocation(line: 127, column: 9, scope: !1999)
!2005 = !DILocation(line: 129, column: 14, scope: !1984)
!2006 = !DILocation(line: 129, column: 7, scope: !1984)
!2007 = !DILocation(line: 134, column: 42, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1981, file: !154, line: 134, column: 7)
!2009 = !DILocation(line: 134, column: 28, scope: !2008)
!2010 = !DILocation(line: 134, column: 50, scope: !2008)
!2011 = !DILocation(line: 134, column: 7, scope: !1981)
!2012 = !DILocation(line: 135, column: 12, scope: !2008)
!2013 = !DILocation(line: 135, column: 5, scope: !2008)
!2014 = !DILocation(line: 136, column: 1, scope: !1981)
!2015 = distinct !DISubprogram(name: "fdadvise", scope: !2016, file: !2016, line: 31, type: !2017, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !232, retainedNodes: !2022)
!2016 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !50, !2019, !2019, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2020, line: 63, baseType: !819)
!2020 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!2022 = !{!2023, !2024, !2025, !2026, !2027}
!2023 = !DILocalVariable(name: "fd", arg: 1, scope: !2015, file: !2016, line: 31, type: !50)
!2024 = !DILocalVariable(name: "offset", arg: 2, scope: !2015, file: !2016, line: 31, type: !2019)
!2025 = !DILocalVariable(name: "len", arg: 3, scope: !2015, file: !2016, line: 31, type: !2019)
!2026 = !DILocalVariable(name: "advice", arg: 4, scope: !2015, file: !2016, line: 31, type: !2021)
!2027 = !DILocalVariable(name: "__x", scope: !2028, file: !2016, line: 34, type: !50)
!2028 = distinct !DILexicalBlock(scope: !2015, file: !2016, line: 34, column: 3)
!2029 = !DILocation(line: 31, column: 15, scope: !2015)
!2030 = !DILocation(line: 31, column: 25, scope: !2015)
!2031 = !DILocation(line: 31, column: 39, scope: !2015)
!2032 = !DILocation(line: 31, column: 54, scope: !2015)
!2033 = !DILocation(line: 34, column: 3, scope: !2028)
!2034 = !DILocation(line: 36, column: 1, scope: !2015)
!2035 = distinct !DISubprogram(name: "fadvise", scope: !2016, file: !2016, line: 39, type: !2036, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !232, retainedNodes: !2072)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !2038, !2021}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !795, line: 7, baseType: !2040)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !797, line: 49, size: 1728, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2040, file: !797, line: 51, baseType: !50, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2040, file: !797, line: 54, baseType: !45, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2040, file: !797, line: 55, baseType: !45, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2040, file: !797, line: 56, baseType: !45, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2040, file: !797, line: 57, baseType: !45, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2040, file: !797, line: 58, baseType: !45, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2040, file: !797, line: 59, baseType: !45, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2040, file: !797, line: 60, baseType: !45, size: 64, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2040, file: !797, line: 61, baseType: !45, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2040, file: !797, line: 64, baseType: !45, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2040, file: !797, line: 65, baseType: !45, size: 64, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2040, file: !797, line: 66, baseType: !45, size: 64, offset: 704)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2040, file: !797, line: 68, baseType: !812, size: 64, offset: 768)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2040, file: !797, line: 70, baseType: !2056, size: 64, offset: 832)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2040, file: !797, line: 72, baseType: !50, size: 32, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2040, file: !797, line: 73, baseType: !50, size: 32, offset: 928)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2040, file: !797, line: 74, baseType: !819, size: 64, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2040, file: !797, line: 77, baseType: !51, size: 16, offset: 1024)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2040, file: !797, line: 78, baseType: !823, size: 8, offset: 1040)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2040, file: !797, line: 79, baseType: !825, size: 8, offset: 1048)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2040, file: !797, line: 81, baseType: !829, size: 64, offset: 1088)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2040, file: !797, line: 89, baseType: !832, size: 64, offset: 1152)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2040, file: !797, line: 91, baseType: !834, size: 64, offset: 1216)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2040, file: !797, line: 92, baseType: !837, size: 64, offset: 1280)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2040, file: !797, line: 93, baseType: !2056, size: 64, offset: 1344)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2040, file: !797, line: 94, baseType: !47, size: 64, offset: 1408)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2040, file: !797, line: 95, baseType: !180, size: 64, offset: 1472)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2040, file: !797, line: 96, baseType: !50, size: 32, offset: 1536)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2040, file: !797, line: 98, baseType: !844, size: 160, offset: 1568)
!2072 = !{!2073, !2074}
!2073 = !DILocalVariable(name: "fp", arg: 1, scope: !2035, file: !2016, line: 39, type: !2038)
!2074 = !DILocalVariable(name: "advice", arg: 2, scope: !2035, file: !2016, line: 39, type: !2021)
!2075 = !DILocation(line: 39, column: 16, scope: !2035)
!2076 = !DILocation(line: 39, column: 30, scope: !2035)
!2077 = !DILocation(line: 41, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2035, file: !2016, line: 41, column: 7)
!2079 = !DILocation(line: 41, column: 7, scope: !2035)
!2080 = !DILocation(line: 42, column: 15, scope: !2078)
!2081 = !DILocation(line: 31, column: 15, scope: !2015, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 42, column: 5, scope: !2078)
!2083 = !DILocation(line: 31, column: 25, scope: !2015, inlinedAt: !2082)
!2084 = !DILocation(line: 31, column: 39, scope: !2015, inlinedAt: !2082)
!2085 = !DILocation(line: 31, column: 54, scope: !2015, inlinedAt: !2082)
!2086 = !DILocation(line: 34, column: 3, scope: !2028, inlinedAt: !2082)
!2087 = !DILocation(line: 42, column: 5, scope: !2078)
!2088 = !DILocation(line: 43, column: 1, scope: !2035)
!2089 = distinct !DISubprogram(name: "set_program_name", scope: !168, file: !168, line: 39, type: !695, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "argv0", arg: 1, scope: !2089, file: !168, line: 39, type: !65)
!2092 = !DILocalVariable(name: "slash", scope: !2089, file: !168, line: 46, type: !65)
!2093 = !DILocalVariable(name: "base", scope: !2089, file: !168, line: 47, type: !65)
!2094 = !DILocation(line: 39, column: 31, scope: !2089)
!2095 = !DILocation(line: 51, column: 13, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2089, file: !168, line: 51, column: 7)
!2097 = !DILocation(line: 51, column: 7, scope: !2089)
!2098 = !DILocation(line: 55, column: 14, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !168, line: 52, column: 5)
!2100 = !DILocation(line: 54, column: 7, scope: !2099)
!2101 = !DILocation(line: 56, column: 7, scope: !2099)
!2102 = !DILocation(line: 59, column: 11, scope: !2089)
!2103 = !DILocation(line: 46, column: 15, scope: !2089)
!2104 = !DILocation(line: 60, column: 17, scope: !2089)
!2105 = !DILocation(line: 60, column: 33, scope: !2089)
!2106 = !DILocation(line: 60, column: 11, scope: !2089)
!2107 = !DILocation(line: 47, column: 15, scope: !2089)
!2108 = !DILocation(line: 61, column: 12, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2089, file: !168, line: 61, column: 7)
!2110 = !DILocation(line: 61, column: 20, scope: !2109)
!2111 = !DILocation(line: 61, column: 25, scope: !2109)
!2112 = !DILocation(line: 61, column: 42, scope: !2109)
!2113 = !DILocation(line: 61, column: 28, scope: !2109)
!2114 = !DILocation(line: 61, column: 61, scope: !2109)
!2115 = !DILocation(line: 61, column: 7, scope: !2089)
!2116 = !DILocation(line: 64, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !168, line: 64, column: 11)
!2118 = distinct !DILexicalBlock(scope: !2109, file: !168, line: 62, column: 5)
!2119 = !DILocation(line: 64, column: 36, scope: !2117)
!2120 = !DILocation(line: 64, column: 11, scope: !2118)
!2121 = !DILocation(line: 66, column: 24, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !168, line: 65, column: 9)
!2123 = !DILocation(line: 70, column: 41, scope: !2122)
!2124 = !DILocation(line: 72, column: 9, scope: !2122)
!2125 = !DILocation(line: 84, column: 16, scope: !2089)
!2126 = !DILocation(line: 90, column: 27, scope: !2089)
!2127 = !DILocation(line: 92, column: 1, scope: !2089)
!2128 = distinct !DISubprogram(name: "clone_quoting_options", scope: !186, file: !186, line: 122, type: !2129, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2132)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2131, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "o", arg: 1, scope: !2128, file: !186, line: 122, type: !2131)
!2134 = !DILocalVariable(name: "e", scope: !2128, file: !186, line: 124, type: !50)
!2135 = !DILocalVariable(name: "p", scope: !2128, file: !186, line: 125, type: !2131)
!2136 = !DILocation(line: 122, column: 48, scope: !2128)
!2137 = !DILocation(line: 124, column: 11, scope: !2128)
!2138 = !DILocation(line: 124, column: 7, scope: !2128)
!2139 = !DILocation(line: 125, column: 40, scope: !2128)
!2140 = !DILocation(line: 125, column: 31, scope: !2128)
!2141 = !DILocation(line: 125, column: 27, scope: !2128)
!2142 = !DILocation(line: 127, column: 9, scope: !2128)
!2143 = !DILocation(line: 128, column: 3, scope: !2128)
!2144 = distinct !DISubprogram(name: "get_quoting_style", scope: !186, file: !186, line: 133, type: !2145, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2149)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!5, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!2149 = !{!2150}
!2150 = !DILocalVariable(name: "o", arg: 1, scope: !2144, file: !186, line: 133, type: !2147)
!2151 = !DILocation(line: 133, column: 50, scope: !2144)
!2152 = !DILocation(line: 135, column: 11, scope: !2144)
!2153 = !DILocation(line: 135, column: 46, scope: !2144)
!2154 = !{!2155, !722, i64 0}
!2155 = !{!"quoting_options", !722, i64 0, !860, i64 4, !722, i64 8, !721, i64 40, !721, i64 48}
!2156 = !DILocation(line: 135, column: 3, scope: !2144)
!2157 = distinct !DISubprogram(name: "set_quoting_style", scope: !186, file: !186, line: 141, type: !2158, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !2131, !5}
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "o", arg: 1, scope: !2157, file: !186, line: 141, type: !2131)
!2162 = !DILocalVariable(name: "s", arg: 2, scope: !2157, file: !186, line: 141, type: !5)
!2163 = !DILocation(line: 141, column: 44, scope: !2157)
!2164 = !DILocation(line: 141, column: 66, scope: !2157)
!2165 = !DILocation(line: 143, column: 4, scope: !2157)
!2166 = !DILocation(line: 143, column: 39, scope: !2157)
!2167 = !DILocation(line: 143, column: 45, scope: !2157)
!2168 = !DILocation(line: 144, column: 1, scope: !2157)
!2169 = distinct !DISubprogram(name: "set_char_quoting", scope: !186, file: !186, line: 152, type: !2170, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!50, !2131, !46, !50}
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2179, !2180}
!2173 = !DILocalVariable(name: "o", arg: 1, scope: !2169, file: !186, line: 152, type: !2131)
!2174 = !DILocalVariable(name: "c", arg: 2, scope: !2169, file: !186, line: 152, type: !46)
!2175 = !DILocalVariable(name: "i", arg: 3, scope: !2169, file: !186, line: 152, type: !50)
!2176 = !DILocalVariable(name: "uc", scope: !2169, file: !186, line: 154, type: !49)
!2177 = !DILocalVariable(name: "p", scope: !2169, file: !186, line: 155, type: !2178)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2179 = !DILocalVariable(name: "shift", scope: !2169, file: !186, line: 157, type: !50)
!2180 = !DILocalVariable(name: "r", scope: !2169, file: !186, line: 158, type: !50)
!2181 = !DILocation(line: 152, column: 43, scope: !2169)
!2182 = !DILocation(line: 152, column: 51, scope: !2169)
!2183 = !DILocation(line: 152, column: 58, scope: !2169)
!2184 = !DILocation(line: 154, column: 17, scope: !2169)
!2185 = !DILocation(line: 156, column: 6, scope: !2169)
!2186 = !DILocation(line: 156, column: 62, scope: !2169)
!2187 = !DILocation(line: 156, column: 57, scope: !2169)
!2188 = !DILocation(line: 155, column: 17, scope: !2169)
!2189 = !DILocation(line: 157, column: 15, scope: !2169)
!2190 = !DILocation(line: 157, column: 7, scope: !2169)
!2191 = !DILocation(line: 158, column: 12, scope: !2169)
!2192 = !DILocation(line: 158, column: 15, scope: !2169)
!2193 = !DILocation(line: 158, column: 25, scope: !2169)
!2194 = !DILocation(line: 158, column: 7, scope: !2169)
!2195 = !DILocation(line: 159, column: 13, scope: !2169)
!2196 = !DILocation(line: 159, column: 18, scope: !2169)
!2197 = !DILocation(line: 159, column: 23, scope: !2169)
!2198 = !DILocation(line: 159, column: 6, scope: !2169)
!2199 = !DILocation(line: 160, column: 3, scope: !2169)
!2200 = distinct !DISubprogram(name: "set_quoting_flags", scope: !186, file: !186, line: 168, type: !2201, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!50, !2131, !50}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "o", arg: 1, scope: !2200, file: !186, line: 168, type: !2131)
!2205 = !DILocalVariable(name: "i", arg: 2, scope: !2200, file: !186, line: 168, type: !50)
!2206 = !DILocalVariable(name: "r", scope: !2200, file: !186, line: 170, type: !50)
!2207 = !DILocation(line: 168, column: 44, scope: !2200)
!2208 = !DILocation(line: 168, column: 51, scope: !2200)
!2209 = !DILocation(line: 171, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2200, file: !186, line: 171, column: 7)
!2211 = !DILocation(line: 171, column: 7, scope: !2200)
!2212 = !DILocation(line: 173, column: 10, scope: !2200)
!2213 = !{!2155, !860, i64 4}
!2214 = !DILocation(line: 170, column: 7, scope: !2200)
!2215 = !DILocation(line: 174, column: 12, scope: !2200)
!2216 = !DILocation(line: 175, column: 3, scope: !2200)
!2217 = distinct !DISubprogram(name: "set_custom_quoting", scope: !186, file: !186, line: 179, type: !2218, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2131, !65, !65}
!2220 = !{!2221, !2222, !2223}
!2221 = !DILocalVariable(name: "o", arg: 1, scope: !2217, file: !186, line: 179, type: !2131)
!2222 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2217, file: !186, line: 180, type: !65)
!2223 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2217, file: !186, line: 180, type: !65)
!2224 = !DILocation(line: 179, column: 45, scope: !2217)
!2225 = !DILocation(line: 180, column: 33, scope: !2217)
!2226 = !DILocation(line: 180, column: 57, scope: !2217)
!2227 = !DILocation(line: 182, column: 8, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2217, file: !186, line: 182, column: 7)
!2229 = !DILocation(line: 182, column: 7, scope: !2217)
!2230 = !DILocation(line: 184, column: 6, scope: !2217)
!2231 = !DILocation(line: 184, column: 12, scope: !2217)
!2232 = !DILocation(line: 185, column: 8, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2217, file: !186, line: 185, column: 7)
!2234 = !DILocation(line: 185, column: 23, scope: !2233)
!2235 = !DILocation(line: 185, column: 19, scope: !2233)
!2236 = !DILocation(line: 186, column: 5, scope: !2233)
!2237 = !DILocation(line: 187, column: 6, scope: !2217)
!2238 = !DILocation(line: 187, column: 17, scope: !2217)
!2239 = !{!2155, !721, i64 40}
!2240 = !DILocation(line: 188, column: 6, scope: !2217)
!2241 = !DILocation(line: 188, column: 18, scope: !2217)
!2242 = !{!2155, !721, i64 48}
!2243 = !DILocation(line: 189, column: 1, scope: !2217)
!2244 = distinct !DISubprogram(name: "quotearg_buffer", scope: !186, file: !186, line: 784, type: !2245, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!180, !45, !180, !65, !180, !2147}
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2248 = !DILocalVariable(name: "buffer", arg: 1, scope: !2244, file: !186, line: 784, type: !45)
!2249 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2244, file: !186, line: 784, type: !180)
!2250 = !DILocalVariable(name: "arg", arg: 3, scope: !2244, file: !186, line: 785, type: !65)
!2251 = !DILocalVariable(name: "argsize", arg: 4, scope: !2244, file: !186, line: 785, type: !180)
!2252 = !DILocalVariable(name: "o", arg: 5, scope: !2244, file: !186, line: 786, type: !2147)
!2253 = !DILocalVariable(name: "p", scope: !2244, file: !186, line: 788, type: !2147)
!2254 = !DILocalVariable(name: "e", scope: !2244, file: !186, line: 789, type: !50)
!2255 = !DILocalVariable(name: "r", scope: !2244, file: !186, line: 790, type: !180)
!2256 = !DILocation(line: 784, column: 24, scope: !2244)
!2257 = !DILocation(line: 784, column: 39, scope: !2244)
!2258 = !DILocation(line: 785, column: 30, scope: !2244)
!2259 = !DILocation(line: 785, column: 42, scope: !2244)
!2260 = !DILocation(line: 786, column: 48, scope: !2244)
!2261 = !DILocation(line: 788, column: 37, scope: !2244)
!2262 = !DILocation(line: 788, column: 33, scope: !2244)
!2263 = !DILocation(line: 789, column: 11, scope: !2244)
!2264 = !DILocation(line: 789, column: 7, scope: !2244)
!2265 = !DILocation(line: 791, column: 43, scope: !2244)
!2266 = !DILocation(line: 791, column: 53, scope: !2244)
!2267 = !DILocation(line: 791, column: 60, scope: !2244)
!2268 = !DILocation(line: 792, column: 43, scope: !2244)
!2269 = !DILocation(line: 792, column: 58, scope: !2244)
!2270 = !DILocation(line: 790, column: 14, scope: !2244)
!2271 = !DILocation(line: 790, column: 10, scope: !2244)
!2272 = !DILocation(line: 793, column: 9, scope: !2244)
!2273 = !DILocation(line: 794, column: 3, scope: !2244)
!2274 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !186, file: !186, line: 256, type: !2275, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2279)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!180, !45, !180, !65, !180, !5, !50, !2277, !65, !65}
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2304, !2305, !2306, !2307, !2308, !2311, !2312, !2330, !2333, !2334, !2341}
!2280 = !DILocalVariable(name: "buffer", arg: 1, scope: !2274, file: !186, line: 256, type: !45)
!2281 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2274, file: !186, line: 256, type: !180)
!2282 = !DILocalVariable(name: "arg", arg: 3, scope: !2274, file: !186, line: 257, type: !65)
!2283 = !DILocalVariable(name: "argsize", arg: 4, scope: !2274, file: !186, line: 257, type: !180)
!2284 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2274, file: !186, line: 258, type: !5)
!2285 = !DILocalVariable(name: "flags", arg: 6, scope: !2274, file: !186, line: 258, type: !50)
!2286 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2274, file: !186, line: 259, type: !2277)
!2287 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2274, file: !186, line: 260, type: !65)
!2288 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2274, file: !186, line: 261, type: !65)
!2289 = !DILocalVariable(name: "i", scope: !2274, file: !186, line: 263, type: !180)
!2290 = !DILocalVariable(name: "len", scope: !2274, file: !186, line: 264, type: !180)
!2291 = !DILocalVariable(name: "orig_buffersize", scope: !2274, file: !186, line: 265, type: !180)
!2292 = !DILocalVariable(name: "quote_string", scope: !2274, file: !186, line: 266, type: !65)
!2293 = !DILocalVariable(name: "quote_string_len", scope: !2274, file: !186, line: 267, type: !180)
!2294 = !DILocalVariable(name: "backslash_escapes", scope: !2274, file: !186, line: 268, type: !57)
!2295 = !DILocalVariable(name: "unibyte_locale", scope: !2274, file: !186, line: 269, type: !57)
!2296 = !DILocalVariable(name: "elide_outer_quotes", scope: !2274, file: !186, line: 270, type: !57)
!2297 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2274, file: !186, line: 271, type: !57)
!2298 = !DILocalVariable(name: "encountered_single_quote", scope: !2274, file: !186, line: 272, type: !57)
!2299 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2274, file: !186, line: 273, type: !57)
!2300 = !DILocalVariable(name: "c", scope: !2301, file: !186, line: 402, type: !49)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !186, line: 401, column: 5)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !186, line: 400, column: 3)
!2303 = distinct !DILexicalBlock(scope: !2274, file: !186, line: 400, column: 3)
!2304 = !DILocalVariable(name: "esc", scope: !2301, file: !186, line: 403, type: !49)
!2305 = !DILocalVariable(name: "is_right_quote", scope: !2301, file: !186, line: 404, type: !57)
!2306 = !DILocalVariable(name: "escaping", scope: !2301, file: !186, line: 405, type: !57)
!2307 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2301, file: !186, line: 406, type: !57)
!2308 = !DILocalVariable(name: "m", scope: !2309, file: !186, line: 610, type: !180)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 608, column: 11)
!2310 = distinct !DILexicalBlock(scope: !2301, file: !186, line: 426, column: 9)
!2311 = !DILocalVariable(name: "printable", scope: !2309, file: !186, line: 612, type: !57)
!2312 = !DILocalVariable(name: "mbstate", scope: !2313, file: !186, line: 621, type: !2315)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !186, line: 620, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !186, line: 614, column: 17)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2316, line: 6, baseType: !2317)
!2316 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2318, line: 21, baseType: !2319)
!2318 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2318, line: 13, size: 64, elements: !2320)
!2320 = !{!2321, !2322}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2319, file: !2318, line: 15, baseType: !50, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2319, file: !2318, line: 20, baseType: !2323, size: 32, offset: 32)
!2323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2319, file: !2318, line: 16, size: 32, elements: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2323, file: !2318, line: 18, baseType: !7, size: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2323, file: !2318, line: 19, baseType: !2327, size: 32)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !2328)
!2328 = !{!2329}
!2329 = !DISubrange(count: 4)
!2330 = !DILocalVariable(name: "w", scope: !2331, file: !186, line: 631, type: !2332)
!2331 = distinct !DILexicalBlock(scope: !2313, file: !186, line: 630, column: 19)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !181, line: 90, baseType: !50)
!2333 = !DILocalVariable(name: "bytes", scope: !2331, file: !186, line: 632, type: !180)
!2334 = !DILocalVariable(name: "j", scope: !2335, file: !186, line: 657, type: !180)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !186, line: 656, column: 27)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !186, line: 654, column: 29)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !186, line: 649, column: 23)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !186, line: 641, column: 30)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !186, line: 636, column: 30)
!2340 = distinct !DILexicalBlock(scope: !2331, file: !186, line: 634, column: 25)
!2341 = !DILocalVariable(name: "ilim", scope: !2342, file: !186, line: 684, type: !180)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !186, line: 681, column: 15)
!2343 = distinct !DILexicalBlock(scope: !2309, file: !186, line: 680, column: 17)
!2344 = !DILocation(line: 256, column: 33, scope: !2274)
!2345 = !DILocation(line: 256, column: 48, scope: !2274)
!2346 = !DILocation(line: 257, column: 39, scope: !2274)
!2347 = !DILocation(line: 257, column: 51, scope: !2274)
!2348 = !DILocation(line: 258, column: 46, scope: !2274)
!2349 = !DILocation(line: 258, column: 65, scope: !2274)
!2350 = !DILocation(line: 259, column: 47, scope: !2274)
!2351 = !DILocation(line: 260, column: 39, scope: !2274)
!2352 = !DILocation(line: 261, column: 39, scope: !2274)
!2353 = !DILocation(line: 264, column: 10, scope: !2274)
!2354 = !DILocation(line: 265, column: 10, scope: !2274)
!2355 = !DILocation(line: 266, column: 15, scope: !2274)
!2356 = !DILocation(line: 267, column: 10, scope: !2274)
!2357 = !DILocation(line: 268, column: 8, scope: !2274)
!2358 = !DILocation(line: 269, column: 25, scope: !2274)
!2359 = !DILocation(line: 269, column: 36, scope: !2274)
!2360 = !DILocation(line: 270, column: 8, scope: !2274)
!2361 = !DILocation(line: 271, column: 8, scope: !2274)
!2362 = !DILocation(line: 272, column: 8, scope: !2274)
!2363 = !DILocation(line: 273, column: 8, scope: !2274)
!2364 = !DILocation(line: 273, column: 3, scope: !2274)
!2365 = !DILocation(line: 0, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2274, file: !186, line: 317, column: 5)
!2367 = !DILocation(line: 316, column: 3, scope: !2274)
!2368 = !DILocation(line: 323, column: 11, scope: !2366)
!2369 = !DILocation(line: 323, column: 12, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !186, line: 323, column: 11)
!2371 = !DILocation(line: 324, column: 9, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !186, line: 324, column: 9)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !186, line: 324, column: 9)
!2374 = !DILocation(line: 324, column: 9, scope: !2373)
!2375 = !DILocation(line: 362, column: 26, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !186, line: 340, column: 11)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !186, line: 339, column: 13)
!2378 = distinct !DILexicalBlock(scope: !2366, file: !186, line: 338, column: 7)
!2379 = !DILocation(line: 363, column: 27, scope: !2376)
!2380 = !DILocation(line: 364, column: 11, scope: !2376)
!2381 = !DILocation(line: 365, column: 14, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !186, line: 365, column: 13)
!2383 = !DILocation(line: 365, column: 13, scope: !2378)
!2384 = !DILocation(line: 366, column: 43, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !186, line: 366, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !186, line: 366, column: 11)
!2387 = !DILocation(line: 366, column: 11, scope: !2386)
!2388 = !DILocation(line: 367, column: 13, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !186, line: 367, column: 13)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !186, line: 367, column: 13)
!2391 = !DILocation(line: 367, column: 13, scope: !2390)
!2392 = !DILocation(line: 366, column: 70, scope: !2385)
!2393 = distinct !{!2393, !2387, !2394}
!2394 = !DILocation(line: 367, column: 13, scope: !2386)
!2395 = !DILocation(line: 370, column: 28, scope: !2378)
!2396 = !DILocation(line: 372, column: 7, scope: !2366)
!2397 = !DILocation(line: 376, column: 7, scope: !2366)
!2398 = !DILocation(line: 379, column: 7, scope: !2366)
!2399 = !DILocation(line: 381, column: 12, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2366, file: !186, line: 381, column: 11)
!2401 = !DILocation(line: 381, column: 11, scope: !2366)
!2402 = !DILocation(line: 0, scope: !2400)
!2403 = !DILocation(line: 386, column: 12, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2366, file: !186, line: 386, column: 11)
!2405 = !DILocation(line: 386, column: 11, scope: !2366)
!2406 = !DILocation(line: 387, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !186, line: 387, column: 9)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !186, line: 387, column: 9)
!2409 = !DILocation(line: 387, column: 9, scope: !2408)
!2410 = !DILocation(line: 394, column: 7, scope: !2366)
!2411 = !DILocation(line: 397, column: 7, scope: !2366)
!2412 = !DILocation(line: 0, scope: !2274)
!2413 = !DILocation(line: 263, column: 10, scope: !2274)
!2414 = !DILocation(line: 400, column: 8, scope: !2303)
!2415 = !DILocation(line: 0, scope: !2302)
!2416 = !DILocation(line: 400, column: 27, scope: !2302)
!2417 = !DILocation(line: 400, column: 19, scope: !2302)
!2418 = !DILocation(line: 400, column: 41, scope: !2302)
!2419 = !DILocation(line: 400, column: 48, scope: !2302)
!2420 = !DILocation(line: 400, column: 3, scope: !2303)
!2421 = !DILocation(line: 400, column: 60, scope: !2302)
!2422 = !DILocation(line: 404, column: 12, scope: !2301)
!2423 = !DILocation(line: 405, column: 12, scope: !2301)
!2424 = !DILocation(line: 406, column: 12, scope: !2301)
!2425 = !DILocation(line: 409, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2301, file: !186, line: 408, column: 11)
!2427 = !DILocation(line: 411, column: 17, scope: !2426)
!2428 = !DILocation(line: 412, column: 39, scope: !2426)
!2429 = !DILocation(line: 416, column: 32, scope: !2426)
!2430 = !DILocation(line: 412, column: 19, scope: !2426)
!2431 = !DILocation(line: 412, column: 15, scope: !2426)
!2432 = !DILocation(line: 417, column: 11, scope: !2426)
!2433 = !DILocation(line: 417, column: 26, scope: !2426)
!2434 = !DILocation(line: 417, column: 14, scope: !2426)
!2435 = !DILocation(line: 417, column: 63, scope: !2426)
!2436 = !DILocation(line: 408, column: 11, scope: !2301)
!2437 = !DILocation(line: 0, scope: !2301)
!2438 = !DILocation(line: 424, column: 11, scope: !2301)
!2439 = !DILocation(line: 402, column: 21, scope: !2301)
!2440 = !DILocation(line: 425, column: 7, scope: !2301)
!2441 = !DILocation(line: 428, column: 15, scope: !2310)
!2442 = !DILocation(line: 430, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !186, line: 430, column: 15)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !186, line: 429, column: 13)
!2445 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 428, column: 15)
!2446 = !DILocation(line: 430, column: 15, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !186, line: 430, column: 15)
!2448 = !DILocation(line: 430, column: 15, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !186, line: 430, column: 15)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !186, line: 430, column: 15)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !186, line: 430, column: 15)
!2452 = !DILocation(line: 430, column: 15, scope: !2450)
!2453 = !DILocation(line: 430, column: 15, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !186, line: 430, column: 15)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !186, line: 430, column: 15)
!2456 = !DILocation(line: 430, column: 15, scope: !2455)
!2457 = !DILocation(line: 430, column: 15, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !186, line: 430, column: 15)
!2459 = distinct !DILexicalBlock(scope: !2451, file: !186, line: 430, column: 15)
!2460 = !DILocation(line: 430, column: 15, scope: !2459)
!2461 = !DILocation(line: 430, column: 15, scope: !2451)
!2462 = !DILocation(line: 430, column: 15, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !186, line: 430, column: 15)
!2464 = distinct !DILexicalBlock(scope: !2443, file: !186, line: 430, column: 15)
!2465 = !DILocation(line: 430, column: 15, scope: !2464)
!2466 = !DILocation(line: 438, column: 19, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2444, file: !186, line: 437, column: 19)
!2468 = !DILocation(line: 438, column: 24, scope: !2467)
!2469 = !DILocation(line: 438, column: 28, scope: !2467)
!2470 = !DILocation(line: 438, column: 38, scope: !2467)
!2471 = !DILocation(line: 438, column: 48, scope: !2467)
!2472 = !DILocation(line: 438, column: 59, scope: !2467)
!2473 = !DILocation(line: 440, column: 19, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !186, line: 440, column: 19)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !186, line: 440, column: 19)
!2476 = distinct !DILexicalBlock(scope: !2467, file: !186, line: 439, column: 17)
!2477 = !DILocation(line: 440, column: 19, scope: !2475)
!2478 = !DILocation(line: 441, column: 19, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !186, line: 441, column: 19)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !186, line: 441, column: 19)
!2481 = !DILocation(line: 441, column: 19, scope: !2480)
!2482 = !DILocation(line: 442, column: 17, scope: !2476)
!2483 = !DILocation(line: 449, column: 20, scope: !2445)
!2484 = !DILocation(line: 454, column: 11, scope: !2310)
!2485 = !DILocation(line: 457, column: 19, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 455, column: 13)
!2487 = !DILocation(line: 463, column: 19, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2486, file: !186, line: 462, column: 19)
!2489 = !DILocation(line: 463, column: 24, scope: !2488)
!2490 = !DILocation(line: 463, column: 28, scope: !2488)
!2491 = !DILocation(line: 463, column: 38, scope: !2488)
!2492 = !DILocation(line: 463, column: 47, scope: !2488)
!2493 = !DILocation(line: 463, column: 41, scope: !2488)
!2494 = !DILocation(line: 463, column: 52, scope: !2488)
!2495 = !DILocation(line: 462, column: 19, scope: !2486)
!2496 = !DILocation(line: 464, column: 25, scope: !2488)
!2497 = !DILocation(line: 464, column: 17, scope: !2488)
!2498 = !DILocation(line: 471, column: 25, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2488, file: !186, line: 465, column: 19)
!2500 = !DILocation(line: 475, column: 21, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !186, line: 475, column: 21)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !186, line: 475, column: 21)
!2503 = !DILocation(line: 475, column: 21, scope: !2502)
!2504 = !DILocation(line: 476, column: 21, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !186, line: 476, column: 21)
!2506 = distinct !DILexicalBlock(scope: !2499, file: !186, line: 476, column: 21)
!2507 = !DILocation(line: 476, column: 21, scope: !2506)
!2508 = !DILocation(line: 477, column: 21, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !186, line: 477, column: 21)
!2510 = distinct !DILexicalBlock(scope: !2499, file: !186, line: 477, column: 21)
!2511 = !DILocation(line: 477, column: 21, scope: !2510)
!2512 = !DILocation(line: 478, column: 21, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !186, line: 478, column: 21)
!2514 = distinct !DILexicalBlock(scope: !2499, file: !186, line: 478, column: 21)
!2515 = !DILocation(line: 478, column: 21, scope: !2514)
!2516 = !DILocation(line: 479, column: 21, scope: !2499)
!2517 = !DILocation(line: 403, column: 21, scope: !2301)
!2518 = !DILocation(line: 492, column: 31, scope: !2310)
!2519 = !DILocation(line: 493, column: 31, scope: !2310)
!2520 = !DILocation(line: 495, column: 31, scope: !2310)
!2521 = !DILocation(line: 496, column: 31, scope: !2310)
!2522 = !DILocation(line: 497, column: 31, scope: !2310)
!2523 = !DILocation(line: 500, column: 15, scope: !2310)
!2524 = !DILocation(line: 502, column: 19, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !186, line: 501, column: 13)
!2526 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 500, column: 15)
!2527 = !DILocation(line: 509, column: 33, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 509, column: 15)
!2529 = !DILocation(line: 0, scope: !2310)
!2530 = !DILocation(line: 514, column: 15, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 513, column: 15)
!2532 = !DILocation(line: 518, column: 15, scope: !2310)
!2533 = !DILocation(line: 526, column: 26, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 526, column: 15)
!2535 = !DILocation(line: 526, column: 15, scope: !2310)
!2536 = !DILocation(line: 526, column: 40, scope: !2534)
!2537 = !DILocation(line: 526, column: 47, scope: !2534)
!2538 = !DILocation(line: 530, column: 17, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 530, column: 15)
!2540 = !DILocation(line: 526, column: 18, scope: !2534)
!2541 = !DILocation(line: 526, column: 65, scope: !2534)
!2542 = !DILocation(line: 530, column: 15, scope: !2310)
!2543 = !DILocation(line: 535, column: 11, scope: !2310)
!2544 = !DILocation(line: 549, column: 15, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 548, column: 15)
!2546 = !DILocation(line: 556, column: 15, scope: !2310)
!2547 = !DILocation(line: 558, column: 19, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !186, line: 557, column: 13)
!2549 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 556, column: 15)
!2550 = !DILocation(line: 561, column: 19, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !186, line: 561, column: 19)
!2552 = !DILocation(line: 561, column: 35, scope: !2551)
!2553 = !DILocation(line: 561, column: 30, scope: !2551)
!2554 = !DILocation(line: 570, column: 15, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !186, line: 570, column: 15)
!2556 = distinct !DILexicalBlock(scope: !2548, file: !186, line: 570, column: 15)
!2557 = !DILocation(line: 570, column: 15, scope: !2556)
!2558 = !DILocation(line: 571, column: 15, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !186, line: 571, column: 15)
!2560 = distinct !DILexicalBlock(scope: !2548, file: !186, line: 571, column: 15)
!2561 = !DILocation(line: 571, column: 15, scope: !2560)
!2562 = !DILocation(line: 572, column: 15, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !186, line: 572, column: 15)
!2564 = distinct !DILexicalBlock(scope: !2548, file: !186, line: 572, column: 15)
!2565 = !DILocation(line: 572, column: 15, scope: !2564)
!2566 = !DILocation(line: 574, column: 13, scope: !2548)
!2567 = !DILocation(line: 614, column: 17, scope: !2309)
!2568 = !DILocation(line: 610, column: 20, scope: !2309)
!2569 = !DILocation(line: 617, column: 29, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2314, file: !186, line: 615, column: 15)
!2571 = !DILocation(line: 617, column: 27, scope: !2570)
!2572 = !DILocation(line: 612, column: 18, scope: !2309)
!2573 = !DILocation(line: 618, column: 15, scope: !2570)
!2574 = !DILocation(line: 621, column: 17, scope: !2313)
!2575 = !DILocation(line: 622, column: 17, scope: !2313)
!2576 = !DILocation(line: 626, column: 29, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2313, file: !186, line: 626, column: 21)
!2578 = !DILocation(line: 626, column: 21, scope: !2313)
!2579 = !DILocation(line: 627, column: 29, scope: !2577)
!2580 = !DILocation(line: 627, column: 19, scope: !2577)
!2581 = !DILocation(line: 0, scope: !2426)
!2582 = !DILocation(line: 629, column: 17, scope: !2313)
!2583 = !DILocation(line: 624, column: 19, scope: !2313)
!2584 = !DILocation(line: 625, column: 27, scope: !2313)
!2585 = !DILocation(line: 631, column: 21, scope: !2331)
!2586 = !DILocation(line: 632, column: 56, scope: !2331)
!2587 = !DILocation(line: 632, column: 50, scope: !2331)
!2588 = !DILocation(line: 633, column: 53, scope: !2331)
!2589 = !DILocation(line: 621, column: 27, scope: !2313)
!2590 = !DILocation(line: 631, column: 29, scope: !2331)
!2591 = !DILocation(line: 632, column: 36, scope: !2331)
!2592 = !DILocation(line: 632, column: 28, scope: !2331)
!2593 = !DILocation(line: 634, column: 25, scope: !2331)
!2594 = !DILocation(line: 644, column: 38, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2338, file: !186, line: 642, column: 23)
!2596 = !DILocation(line: 644, column: 48, scope: !2595)
!2597 = !DILocation(line: 644, column: 51, scope: !2595)
!2598 = !DILocation(line: 644, column: 25, scope: !2595)
!2599 = !DILocation(line: 645, column: 28, scope: !2595)
!2600 = !DILocation(line: 644, column: 34, scope: !2595)
!2601 = distinct !{!2601, !2598, !2599}
!2602 = !DILocation(line: 658, column: 43, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !186, line: 658, column: 29)
!2604 = distinct !DILexicalBlock(scope: !2335, file: !186, line: 658, column: 29)
!2605 = !DILocation(line: 655, column: 29, scope: !2336)
!2606 = !DILocation(line: 657, column: 36, scope: !2335)
!2607 = !DILocation(line: 659, column: 49, scope: !2603)
!2608 = !DILocation(line: 659, column: 39, scope: !2603)
!2609 = !DILocation(line: 659, column: 31, scope: !2603)
!2610 = !DILocation(line: 658, column: 53, scope: !2603)
!2611 = !DILocation(line: 658, column: 29, scope: !2604)
!2612 = distinct !{!2612, !2611, !2613}
!2613 = !DILocation(line: 667, column: 33, scope: !2604)
!2614 = !DILocation(line: 674, column: 19, scope: !2313)
!2615 = !DILocation(line: 670, column: 41, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2337, file: !186, line: 670, column: 29)
!2617 = !DILocation(line: 670, column: 31, scope: !2616)
!2618 = !DILocation(line: 670, column: 29, scope: !2337)
!2619 = !DILocation(line: 672, column: 27, scope: !2337)
!2620 = !DILocation(line: 675, column: 26, scope: !2313)
!2621 = !DILocation(line: 675, column: 24, scope: !2313)
!2622 = !DILocation(line: 674, column: 19, scope: !2331)
!2623 = distinct !{!2623, !2582, !2624}
!2624 = !DILocation(line: 675, column: 44, scope: !2313)
!2625 = !DILocation(line: 676, column: 15, scope: !2314)
!2626 = !DILocation(line: 0, scope: !2577)
!2627 = !DILocation(line: 0, scope: !2313)
!2628 = !DILocation(line: 678, column: 40, scope: !2309)
!2629 = !DILocation(line: 680, column: 19, scope: !2343)
!2630 = !DILocation(line: 680, column: 45, scope: !2343)
!2631 = !DILocation(line: 680, column: 23, scope: !2343)
!2632 = !DILocation(line: 684, column: 33, scope: !2342)
!2633 = !DILocation(line: 684, column: 24, scope: !2342)
!2634 = !DILocation(line: 686, column: 17, scope: !2342)
!2635 = !DILocation(line: 0, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !186, line: 687, column: 19)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !186, line: 686, column: 17)
!2638 = distinct !DILexicalBlock(scope: !2342, file: !186, line: 686, column: 17)
!2639 = !DILocation(line: 0, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !186, line: 703, column: 21)
!2641 = !DILocation(line: 0, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !186, line: 696, column: 23)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !186, line: 695, column: 30)
!2644 = distinct !DILexicalBlock(scope: !2636, file: !186, line: 688, column: 25)
!2645 = !DILocation(line: 688, column: 43, scope: !2644)
!2646 = !DILocation(line: 690, column: 25, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !186, line: 690, column: 25)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !186, line: 689, column: 23)
!2649 = !DILocation(line: 690, column: 25, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !186, line: 690, column: 25)
!2651 = !DILocation(line: 690, column: 25, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !186, line: 690, column: 25)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !186, line: 690, column: 25)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !186, line: 690, column: 25)
!2655 = !DILocation(line: 690, column: 25, scope: !2653)
!2656 = !DILocation(line: 690, column: 25, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !186, line: 690, column: 25)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !186, line: 690, column: 25)
!2659 = !DILocation(line: 690, column: 25, scope: !2658)
!2660 = !DILocation(line: 690, column: 25, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !186, line: 690, column: 25)
!2662 = distinct !DILexicalBlock(scope: !2654, file: !186, line: 690, column: 25)
!2663 = !DILocation(line: 690, column: 25, scope: !2662)
!2664 = !DILocation(line: 690, column: 25, scope: !2654)
!2665 = !DILocation(line: 690, column: 25, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !186, line: 690, column: 25)
!2667 = distinct !DILexicalBlock(scope: !2647, file: !186, line: 690, column: 25)
!2668 = !DILocation(line: 690, column: 25, scope: !2667)
!2669 = !DILocation(line: 691, column: 25, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !186, line: 691, column: 25)
!2671 = distinct !DILexicalBlock(scope: !2648, file: !186, line: 691, column: 25)
!2672 = !DILocation(line: 691, column: 25, scope: !2671)
!2673 = !DILocation(line: 692, column: 25, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !186, line: 692, column: 25)
!2675 = distinct !DILexicalBlock(scope: !2648, file: !186, line: 692, column: 25)
!2676 = !DILocation(line: 692, column: 25, scope: !2675)
!2677 = !DILocation(line: 693, column: 38, scope: !2648)
!2678 = !DILocation(line: 693, column: 33, scope: !2648)
!2679 = !DILocation(line: 694, column: 23, scope: !2648)
!2680 = !DILocation(line: 695, column: 30, scope: !2643)
!2681 = !DILocation(line: 695, column: 30, scope: !2644)
!2682 = !DILocation(line: 697, column: 25, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !186, line: 697, column: 25)
!2684 = distinct !DILexicalBlock(scope: !2642, file: !186, line: 697, column: 25)
!2685 = !DILocation(line: 697, column: 25, scope: !2684)
!2686 = !DILocation(line: 699, column: 23, scope: !2642)
!2687 = !DILocation(line: 0, scope: !2675)
!2688 = !DILocation(line: 0, scope: !2648)
!2689 = !DILocation(line: 0, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2426, file: !186, line: 418, column: 9)
!2691 = !DILocation(line: 0, scope: !2647)
!2692 = !DILocation(line: 700, column: 35, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2636, file: !186, line: 700, column: 25)
!2694 = !DILocation(line: 700, column: 30, scope: !2693)
!2695 = !DILocation(line: 700, column: 25, scope: !2636)
!2696 = !DILocation(line: 702, column: 21, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !186, line: 702, column: 21)
!2698 = distinct !DILexicalBlock(scope: !2636, file: !186, line: 702, column: 21)
!2699 = !DILocation(line: 702, column: 21, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !186, line: 702, column: 21)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !186, line: 702, column: 21)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !186, line: 702, column: 21)
!2703 = !DILocation(line: 702, column: 21, scope: !2701)
!2704 = !DILocation(line: 702, column: 21, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !186, line: 702, column: 21)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !186, line: 702, column: 21)
!2707 = !DILocation(line: 702, column: 21, scope: !2706)
!2708 = !DILocation(line: 702, column: 21, scope: !2702)
!2709 = !DILocation(line: 0, scope: !2684)
!2710 = !DILocation(line: 703, column: 21, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2640, file: !186, line: 703, column: 21)
!2712 = !DILocation(line: 703, column: 21, scope: !2640)
!2713 = !DILocation(line: 704, column: 25, scope: !2636)
!2714 = !DILocation(line: 686, column: 17, scope: !2637)
!2715 = distinct !{!2715, !2716, !2717}
!2716 = !DILocation(line: 686, column: 17, scope: !2638)
!2717 = !DILocation(line: 705, column: 19, scope: !2638)
!2718 = !DILocation(line: 0, scope: !2303)
!2719 = !DILocation(line: 416, column: 30, scope: !2426)
!2720 = !DILocation(line: 712, column: 34, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2301, file: !186, line: 712, column: 11)
!2722 = !DILocation(line: 714, column: 14, scope: !2721)
!2723 = !DILocation(line: 715, column: 14, scope: !2721)
!2724 = !DILocation(line: 715, column: 35, scope: !2721)
!2725 = !DILocation(line: 715, column: 17, scope: !2721)
!2726 = !DILocation(line: 715, column: 47, scope: !2721)
!2727 = !DILocation(line: 715, column: 65, scope: !2721)
!2728 = !DILocation(line: 716, column: 15, scope: !2721)
!2729 = !DILocation(line: 716, column: 11, scope: !2721)
!2730 = !DILocation(line: 712, column: 11, scope: !2301)
!2731 = !DILocation(line: 400, column: 10, scope: !2303)
!2732 = !DILocation(line: 0, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !186, line: 519, column: 13)
!2734 = distinct !DILexicalBlock(scope: !2310, file: !186, line: 518, column: 15)
!2735 = !DILocation(line: 720, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2301, file: !186, line: 720, column: 7)
!2737 = !DILocation(line: 720, column: 7, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2736, file: !186, line: 720, column: 7)
!2739 = !DILocation(line: 720, column: 7, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !186, line: 720, column: 7)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !186, line: 720, column: 7)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !186, line: 720, column: 7)
!2743 = !DILocation(line: 720, column: 7, scope: !2741)
!2744 = !DILocation(line: 720, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !186, line: 720, column: 7)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !186, line: 720, column: 7)
!2747 = !DILocation(line: 720, column: 7, scope: !2746)
!2748 = !DILocation(line: 720, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !186, line: 720, column: 7)
!2750 = distinct !DILexicalBlock(scope: !2742, file: !186, line: 720, column: 7)
!2751 = !DILocation(line: 720, column: 7, scope: !2750)
!2752 = !DILocation(line: 720, column: 7, scope: !2742)
!2753 = !DILocation(line: 720, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !186, line: 720, column: 7)
!2755 = distinct !DILexicalBlock(scope: !2736, file: !186, line: 720, column: 7)
!2756 = !DILocation(line: 720, column: 7, scope: !2755)
!2757 = !DILocation(line: 723, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !186, line: 723, column: 7)
!2759 = distinct !DILexicalBlock(scope: !2301, file: !186, line: 723, column: 7)
!2760 = !DILocation(line: 424, column: 9, scope: !2301)
!2761 = !DILocation(line: 723, column: 7, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !186, line: 723, column: 7)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !186, line: 723, column: 7)
!2764 = distinct !DILexicalBlock(scope: !2758, file: !186, line: 723, column: 7)
!2765 = !DILocation(line: 723, column: 7, scope: !2763)
!2766 = !DILocation(line: 723, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !186, line: 723, column: 7)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !186, line: 723, column: 7)
!2769 = !DILocation(line: 723, column: 7, scope: !2768)
!2770 = !DILocation(line: 723, column: 7, scope: !2764)
!2771 = !DILocation(line: 724, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !186, line: 724, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2301, file: !186, line: 724, column: 7)
!2774 = !DILocation(line: 724, column: 7, scope: !2773)
!2775 = !DILocation(line: 726, column: 13, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2301, file: !186, line: 726, column: 11)
!2777 = !DILocation(line: 726, column: 11, scope: !2301)
!2778 = !DILocation(line: 728, column: 5, scope: !2302)
!2779 = !DILocation(line: 400, column: 75, scope: !2302)
!2780 = !DILocation(line: 400, column: 3, scope: !2302)
!2781 = distinct !{!2781, !2420, !2782}
!2782 = !DILocation(line: 728, column: 5, scope: !2303)
!2783 = !DILocation(line: 730, column: 11, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2274, file: !186, line: 730, column: 7)
!2785 = !DILocation(line: 730, column: 16, scope: !2784)
!2786 = !DILocation(line: 738, column: 51, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2274, file: !186, line: 738, column: 7)
!2788 = !DILocation(line: 739, column: 10, scope: !2787)
!2789 = !DILocation(line: 741, column: 11, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !186, line: 741, column: 11)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !186, line: 740, column: 5)
!2792 = !DILocation(line: 741, column: 11, scope: !2791)
!2793 = !DILocation(line: 742, column: 16, scope: !2790)
!2794 = !DILocation(line: 742, column: 9, scope: !2790)
!2795 = !DILocation(line: 746, column: 18, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2790, file: !186, line: 746, column: 16)
!2797 = !DILocation(line: 746, column: 32, scope: !2796)
!2798 = !DILocation(line: 746, column: 29, scope: !2796)
!2799 = !DILocation(line: 755, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2274, file: !186, line: 755, column: 7)
!2801 = !DILocation(line: 755, column: 20, scope: !2800)
!2802 = !DILocation(line: 756, column: 12, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !186, line: 756, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !186, line: 756, column: 5)
!2805 = !DILocation(line: 756, column: 5, scope: !2804)
!2806 = !DILocation(line: 757, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !186, line: 757, column: 7)
!2808 = distinct !DILexicalBlock(scope: !2803, file: !186, line: 757, column: 7)
!2809 = !DILocation(line: 757, column: 7, scope: !2808)
!2810 = !DILocation(line: 756, column: 39, scope: !2803)
!2811 = distinct !{!2811, !2805, !2812}
!2812 = !DILocation(line: 757, column: 7, scope: !2804)
!2813 = !DILocation(line: 759, column: 11, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2274, file: !186, line: 759, column: 7)
!2815 = !DILocation(line: 759, column: 7, scope: !2274)
!2816 = !DILocation(line: 760, column: 5, scope: !2814)
!2817 = !DILocation(line: 760, column: 17, scope: !2814)
!2818 = !DILocation(line: 766, column: 21, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2274, file: !186, line: 766, column: 7)
!2820 = !DILocation(line: 766, column: 54, scope: !2819)
!2821 = !DILocation(line: 766, column: 51, scope: !2819)
!2822 = !DILocation(line: 770, column: 42, scope: !2274)
!2823 = !DILocation(line: 768, column: 10, scope: !2274)
!2824 = !DILocation(line: 768, column: 3, scope: !2274)
!2825 = !DILocation(line: 772, column: 1, scope: !2274)
!2826 = distinct !DISubprogram(name: "gettext_quote", scope: !186, file: !186, line: 207, type: !2827, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!65, !65, !5}
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "msgid", arg: 1, scope: !2826, file: !186, line: 207, type: !65)
!2831 = !DILocalVariable(name: "s", arg: 2, scope: !2826, file: !186, line: 207, type: !5)
!2832 = !DILocalVariable(name: "translation", scope: !2826, file: !186, line: 209, type: !65)
!2833 = !DILocalVariable(name: "locale_code", scope: !2826, file: !186, line: 210, type: !65)
!2834 = !DILocation(line: 207, column: 28, scope: !2826)
!2835 = !DILocation(line: 207, column: 54, scope: !2826)
!2836 = !DILocation(line: 209, column: 29, scope: !2826)
!2837 = !DILocation(line: 209, column: 15, scope: !2826)
!2838 = !DILocation(line: 212, column: 19, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2826, file: !186, line: 212, column: 7)
!2840 = !DILocation(line: 212, column: 7, scope: !2826)
!2841 = !DILocation(line: 233, column: 17, scope: !2826)
!2842 = !DILocation(line: 210, column: 15, scope: !2826)
!2843 = !DILocalVariable(name: "s1", arg: 1, scope: !2844, file: !2845, line: 160, type: !65)
!2844 = distinct !DISubprogram(name: "strcaseeq0", scope: !2845, file: !2845, line: 160, type: !2846, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2848)
!2845 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!50, !65, !65, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!2848 = !{!2843, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2849 = !DILocalVariable(name: "s2", arg: 2, scope: !2844, file: !2845, line: 160, type: !65)
!2850 = !DILocalVariable(name: "s20", arg: 3, scope: !2844, file: !2845, line: 160, type: !46)
!2851 = !DILocalVariable(name: "s21", arg: 4, scope: !2844, file: !2845, line: 160, type: !46)
!2852 = !DILocalVariable(name: "s22", arg: 5, scope: !2844, file: !2845, line: 160, type: !46)
!2853 = !DILocalVariable(name: "s23", arg: 6, scope: !2844, file: !2845, line: 160, type: !46)
!2854 = !DILocalVariable(name: "s24", arg: 7, scope: !2844, file: !2845, line: 160, type: !46)
!2855 = !DILocalVariable(name: "s25", arg: 8, scope: !2844, file: !2845, line: 160, type: !46)
!2856 = !DILocalVariable(name: "s26", arg: 9, scope: !2844, file: !2845, line: 160, type: !46)
!2857 = !DILocalVariable(name: "s27", arg: 10, scope: !2844, file: !2845, line: 160, type: !46)
!2858 = !DILocalVariable(name: "s28", arg: 11, scope: !2844, file: !2845, line: 160, type: !46)
!2859 = !DILocation(line: 160, column: 25, scope: !2844, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 234, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2826, file: !186, line: 234, column: 7)
!2862 = !DILocation(line: 160, column: 41, scope: !2844, inlinedAt: !2860)
!2863 = !DILocation(line: 160, column: 50, scope: !2844, inlinedAt: !2860)
!2864 = !DILocation(line: 160, column: 60, scope: !2844, inlinedAt: !2860)
!2865 = !DILocation(line: 160, column: 70, scope: !2844, inlinedAt: !2860)
!2866 = !DILocation(line: 160, column: 80, scope: !2844, inlinedAt: !2860)
!2867 = !DILocation(line: 160, column: 90, scope: !2844, inlinedAt: !2860)
!2868 = !DILocation(line: 160, column: 100, scope: !2844, inlinedAt: !2860)
!2869 = !DILocation(line: 160, column: 110, scope: !2844, inlinedAt: !2860)
!2870 = !DILocation(line: 160, column: 120, scope: !2844, inlinedAt: !2860)
!2871 = !DILocation(line: 160, column: 130, scope: !2844, inlinedAt: !2860)
!2872 = !DILocation(line: 162, column: 7, scope: !2873, inlinedAt: !2860)
!2873 = distinct !DILexicalBlock(scope: !2844, file: !2845, line: 162, column: 7)
!2874 = !DILocalVariable(name: "s1", arg: 1, scope: !2875, file: !2845, line: 146, type: !65)
!2875 = distinct !DISubprogram(name: "strcaseeq1", scope: !2845, file: !2845, line: 146, type: !2876, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!50, !65, !65, !46, !46, !46, !46, !46, !46, !46, !46}
!2878 = !{!2874, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887}
!2879 = !DILocalVariable(name: "s2", arg: 2, scope: !2875, file: !2845, line: 146, type: !65)
!2880 = !DILocalVariable(name: "s21", arg: 3, scope: !2875, file: !2845, line: 146, type: !46)
!2881 = !DILocalVariable(name: "s22", arg: 4, scope: !2875, file: !2845, line: 146, type: !46)
!2882 = !DILocalVariable(name: "s23", arg: 5, scope: !2875, file: !2845, line: 146, type: !46)
!2883 = !DILocalVariable(name: "s24", arg: 6, scope: !2875, file: !2845, line: 146, type: !46)
!2884 = !DILocalVariable(name: "s25", arg: 7, scope: !2875, file: !2845, line: 146, type: !46)
!2885 = !DILocalVariable(name: "s26", arg: 8, scope: !2875, file: !2845, line: 146, type: !46)
!2886 = !DILocalVariable(name: "s27", arg: 9, scope: !2875, file: !2845, line: 146, type: !46)
!2887 = !DILocalVariable(name: "s28", arg: 10, scope: !2875, file: !2845, line: 146, type: !46)
!2888 = !DILocation(line: 146, column: 25, scope: !2875, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 167, column: 16, scope: !2890, inlinedAt: !2860)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !2845, line: 164, column: 11)
!2891 = distinct !DILexicalBlock(scope: !2873, file: !2845, line: 163, column: 5)
!2892 = !DILocation(line: 146, column: 41, scope: !2875, inlinedAt: !2889)
!2893 = !DILocation(line: 146, column: 50, scope: !2875, inlinedAt: !2889)
!2894 = !DILocation(line: 146, column: 60, scope: !2875, inlinedAt: !2889)
!2895 = !DILocation(line: 146, column: 70, scope: !2875, inlinedAt: !2889)
!2896 = !DILocation(line: 146, column: 80, scope: !2875, inlinedAt: !2889)
!2897 = !DILocation(line: 146, column: 90, scope: !2875, inlinedAt: !2889)
!2898 = !DILocation(line: 146, column: 100, scope: !2875, inlinedAt: !2889)
!2899 = !DILocation(line: 146, column: 110, scope: !2875, inlinedAt: !2889)
!2900 = !DILocation(line: 146, column: 120, scope: !2875, inlinedAt: !2889)
!2901 = !DILocation(line: 148, column: 7, scope: !2902, inlinedAt: !2889)
!2902 = distinct !DILexicalBlock(scope: !2875, file: !2845, line: 148, column: 7)
!2903 = !DILocalVariable(name: "s1", arg: 1, scope: !2904, file: !2845, line: 132, type: !65)
!2904 = distinct !DISubprogram(name: "strcaseeq2", scope: !2845, file: !2845, line: 132, type: !2905, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!50, !65, !65, !46, !46, !46, !46, !46, !46, !46}
!2907 = !{!2903, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915}
!2908 = !DILocalVariable(name: "s2", arg: 2, scope: !2904, file: !2845, line: 132, type: !65)
!2909 = !DILocalVariable(name: "s22", arg: 3, scope: !2904, file: !2845, line: 132, type: !46)
!2910 = !DILocalVariable(name: "s23", arg: 4, scope: !2904, file: !2845, line: 132, type: !46)
!2911 = !DILocalVariable(name: "s24", arg: 5, scope: !2904, file: !2845, line: 132, type: !46)
!2912 = !DILocalVariable(name: "s25", arg: 6, scope: !2904, file: !2845, line: 132, type: !46)
!2913 = !DILocalVariable(name: "s26", arg: 7, scope: !2904, file: !2845, line: 132, type: !46)
!2914 = !DILocalVariable(name: "s27", arg: 8, scope: !2904, file: !2845, line: 132, type: !46)
!2915 = !DILocalVariable(name: "s28", arg: 9, scope: !2904, file: !2845, line: 132, type: !46)
!2916 = !DILocation(line: 132, column: 25, scope: !2904, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 153, column: 16, scope: !2918, inlinedAt: !2889)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !2845, line: 150, column: 11)
!2919 = distinct !DILexicalBlock(scope: !2902, file: !2845, line: 149, column: 5)
!2920 = !DILocation(line: 132, column: 41, scope: !2904, inlinedAt: !2917)
!2921 = !DILocation(line: 132, column: 50, scope: !2904, inlinedAt: !2917)
!2922 = !DILocation(line: 132, column: 60, scope: !2904, inlinedAt: !2917)
!2923 = !DILocation(line: 132, column: 70, scope: !2904, inlinedAt: !2917)
!2924 = !DILocation(line: 132, column: 80, scope: !2904, inlinedAt: !2917)
!2925 = !DILocation(line: 132, column: 90, scope: !2904, inlinedAt: !2917)
!2926 = !DILocation(line: 132, column: 100, scope: !2904, inlinedAt: !2917)
!2927 = !DILocation(line: 132, column: 110, scope: !2904, inlinedAt: !2917)
!2928 = !DILocation(line: 134, column: 7, scope: !2929, inlinedAt: !2917)
!2929 = distinct !DILexicalBlock(scope: !2904, file: !2845, line: 134, column: 7)
!2930 = !DILocalVariable(name: "s1", arg: 1, scope: !2931, file: !2845, line: 118, type: !65)
!2931 = distinct !DISubprogram(name: "strcaseeq3", scope: !2845, file: !2845, line: 118, type: !2932, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!50, !65, !65, !46, !46, !46, !46, !46, !46}
!2934 = !{!2930, !2935, !2936, !2937, !2938, !2939, !2940, !2941}
!2935 = !DILocalVariable(name: "s2", arg: 2, scope: !2931, file: !2845, line: 118, type: !65)
!2936 = !DILocalVariable(name: "s23", arg: 3, scope: !2931, file: !2845, line: 118, type: !46)
!2937 = !DILocalVariable(name: "s24", arg: 4, scope: !2931, file: !2845, line: 118, type: !46)
!2938 = !DILocalVariable(name: "s25", arg: 5, scope: !2931, file: !2845, line: 118, type: !46)
!2939 = !DILocalVariable(name: "s26", arg: 6, scope: !2931, file: !2845, line: 118, type: !46)
!2940 = !DILocalVariable(name: "s27", arg: 7, scope: !2931, file: !2845, line: 118, type: !46)
!2941 = !DILocalVariable(name: "s28", arg: 8, scope: !2931, file: !2845, line: 118, type: !46)
!2942 = !DILocation(line: 118, column: 25, scope: !2931, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 139, column: 16, scope: !2944, inlinedAt: !2917)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !2845, line: 136, column: 11)
!2945 = distinct !DILexicalBlock(scope: !2929, file: !2845, line: 135, column: 5)
!2946 = !DILocation(line: 118, column: 41, scope: !2931, inlinedAt: !2943)
!2947 = !DILocation(line: 118, column: 50, scope: !2931, inlinedAt: !2943)
!2948 = !DILocation(line: 118, column: 60, scope: !2931, inlinedAt: !2943)
!2949 = !DILocation(line: 118, column: 70, scope: !2931, inlinedAt: !2943)
!2950 = !DILocation(line: 118, column: 80, scope: !2931, inlinedAt: !2943)
!2951 = !DILocation(line: 118, column: 90, scope: !2931, inlinedAt: !2943)
!2952 = !DILocation(line: 118, column: 100, scope: !2931, inlinedAt: !2943)
!2953 = !DILocation(line: 120, column: 7, scope: !2954, inlinedAt: !2943)
!2954 = distinct !DILexicalBlock(scope: !2931, file: !2845, line: 120, column: 7)
!2955 = !DILocation(line: 120, column: 7, scope: !2931, inlinedAt: !2943)
!2956 = !DILocalVariable(name: "s1", arg: 1, scope: !2957, file: !2845, line: 104, type: !65)
!2957 = distinct !DISubprogram(name: "strcaseeq4", scope: !2845, file: !2845, line: 104, type: !2958, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!50, !65, !65, !46, !46, !46, !46, !46}
!2960 = !{!2956, !2961, !2962, !2963, !2964, !2965, !2966}
!2961 = !DILocalVariable(name: "s2", arg: 2, scope: !2957, file: !2845, line: 104, type: !65)
!2962 = !DILocalVariable(name: "s24", arg: 3, scope: !2957, file: !2845, line: 104, type: !46)
!2963 = !DILocalVariable(name: "s25", arg: 4, scope: !2957, file: !2845, line: 104, type: !46)
!2964 = !DILocalVariable(name: "s26", arg: 5, scope: !2957, file: !2845, line: 104, type: !46)
!2965 = !DILocalVariable(name: "s27", arg: 6, scope: !2957, file: !2845, line: 104, type: !46)
!2966 = !DILocalVariable(name: "s28", arg: 7, scope: !2957, file: !2845, line: 104, type: !46)
!2967 = !DILocation(line: 104, column: 25, scope: !2957, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 125, column: 16, scope: !2969, inlinedAt: !2943)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !2845, line: 122, column: 11)
!2970 = distinct !DILexicalBlock(scope: !2954, file: !2845, line: 121, column: 5)
!2971 = !DILocation(line: 104, column: 41, scope: !2957, inlinedAt: !2968)
!2972 = !DILocation(line: 104, column: 50, scope: !2957, inlinedAt: !2968)
!2973 = !DILocation(line: 104, column: 60, scope: !2957, inlinedAt: !2968)
!2974 = !DILocation(line: 104, column: 70, scope: !2957, inlinedAt: !2968)
!2975 = !DILocation(line: 104, column: 80, scope: !2957, inlinedAt: !2968)
!2976 = !DILocation(line: 104, column: 90, scope: !2957, inlinedAt: !2968)
!2977 = !DILocation(line: 106, column: 7, scope: !2978, inlinedAt: !2968)
!2978 = distinct !DILexicalBlock(scope: !2957, file: !2845, line: 106, column: 7)
!2979 = !DILocation(line: 106, column: 7, scope: !2957, inlinedAt: !2968)
!2980 = !DILocalVariable(name: "s1", arg: 1, scope: !2981, file: !2845, line: 90, type: !65)
!2981 = distinct !DISubprogram(name: "strcaseeq5", scope: !2845, file: !2845, line: 90, type: !2982, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!50, !65, !65, !46, !46, !46, !46}
!2984 = !{!2980, !2985, !2986, !2987, !2988, !2989}
!2985 = !DILocalVariable(name: "s2", arg: 2, scope: !2981, file: !2845, line: 90, type: !65)
!2986 = !DILocalVariable(name: "s25", arg: 3, scope: !2981, file: !2845, line: 90, type: !46)
!2987 = !DILocalVariable(name: "s26", arg: 4, scope: !2981, file: !2845, line: 90, type: !46)
!2988 = !DILocalVariable(name: "s27", arg: 5, scope: !2981, file: !2845, line: 90, type: !46)
!2989 = !DILocalVariable(name: "s28", arg: 6, scope: !2981, file: !2845, line: 90, type: !46)
!2990 = !DILocation(line: 90, column: 25, scope: !2981, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 111, column: 16, scope: !2992, inlinedAt: !2968)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !2845, line: 108, column: 11)
!2993 = distinct !DILexicalBlock(scope: !2978, file: !2845, line: 107, column: 5)
!2994 = !DILocation(line: 90, column: 41, scope: !2981, inlinedAt: !2991)
!2995 = !DILocation(line: 90, column: 50, scope: !2981, inlinedAt: !2991)
!2996 = !DILocation(line: 90, column: 60, scope: !2981, inlinedAt: !2991)
!2997 = !DILocation(line: 90, column: 70, scope: !2981, inlinedAt: !2991)
!2998 = !DILocation(line: 90, column: 80, scope: !2981, inlinedAt: !2991)
!2999 = !DILocation(line: 92, column: 7, scope: !3000, inlinedAt: !2991)
!3000 = distinct !DILexicalBlock(scope: !2981, file: !2845, line: 92, column: 7)
!3001 = !DILocation(line: 92, column: 7, scope: !2981, inlinedAt: !2991)
!3002 = !DILocation(line: 235, column: 12, scope: !2861)
!3003 = !DILocation(line: 235, column: 21, scope: !2861)
!3004 = !DILocation(line: 235, column: 5, scope: !2861)
!3005 = !DILocation(line: 146, column: 25, scope: !2875, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 167, column: 16, scope: !2890, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 236, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2826, file: !186, line: 236, column: 7)
!3009 = !DILocation(line: 146, column: 41, scope: !2875, inlinedAt: !3006)
!3010 = !DILocation(line: 146, column: 50, scope: !2875, inlinedAt: !3006)
!3011 = !DILocation(line: 146, column: 60, scope: !2875, inlinedAt: !3006)
!3012 = !DILocation(line: 146, column: 70, scope: !2875, inlinedAt: !3006)
!3013 = !DILocation(line: 146, column: 80, scope: !2875, inlinedAt: !3006)
!3014 = !DILocation(line: 146, column: 90, scope: !2875, inlinedAt: !3006)
!3015 = !DILocation(line: 146, column: 100, scope: !2875, inlinedAt: !3006)
!3016 = !DILocation(line: 146, column: 110, scope: !2875, inlinedAt: !3006)
!3017 = !DILocation(line: 146, column: 120, scope: !2875, inlinedAt: !3006)
!3018 = !DILocation(line: 148, column: 7, scope: !2902, inlinedAt: !3006)
!3019 = !DILocation(line: 132, column: 25, scope: !2904, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 153, column: 16, scope: !2918, inlinedAt: !3006)
!3021 = !DILocation(line: 132, column: 41, scope: !2904, inlinedAt: !3020)
!3022 = !DILocation(line: 132, column: 50, scope: !2904, inlinedAt: !3020)
!3023 = !DILocation(line: 132, column: 60, scope: !2904, inlinedAt: !3020)
!3024 = !DILocation(line: 132, column: 70, scope: !2904, inlinedAt: !3020)
!3025 = !DILocation(line: 132, column: 80, scope: !2904, inlinedAt: !3020)
!3026 = !DILocation(line: 132, column: 90, scope: !2904, inlinedAt: !3020)
!3027 = !DILocation(line: 132, column: 100, scope: !2904, inlinedAt: !3020)
!3028 = !DILocation(line: 132, column: 110, scope: !2904, inlinedAt: !3020)
!3029 = !DILocation(line: 134, column: 7, scope: !2929, inlinedAt: !3020)
!3030 = !DILocation(line: 134, column: 7, scope: !2904, inlinedAt: !3020)
!3031 = !DILocation(line: 118, column: 25, scope: !2931, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 139, column: 16, scope: !2944, inlinedAt: !3020)
!3033 = !DILocation(line: 118, column: 41, scope: !2931, inlinedAt: !3032)
!3034 = !DILocation(line: 118, column: 50, scope: !2931, inlinedAt: !3032)
!3035 = !DILocation(line: 118, column: 60, scope: !2931, inlinedAt: !3032)
!3036 = !DILocation(line: 118, column: 70, scope: !2931, inlinedAt: !3032)
!3037 = !DILocation(line: 118, column: 80, scope: !2931, inlinedAt: !3032)
!3038 = !DILocation(line: 118, column: 90, scope: !2931, inlinedAt: !3032)
!3039 = !DILocation(line: 118, column: 100, scope: !2931, inlinedAt: !3032)
!3040 = !DILocation(line: 120, column: 7, scope: !2954, inlinedAt: !3032)
!3041 = !DILocation(line: 120, column: 7, scope: !2931, inlinedAt: !3032)
!3042 = !DILocation(line: 104, column: 25, scope: !2957, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 125, column: 16, scope: !2969, inlinedAt: !3032)
!3044 = !DILocation(line: 104, column: 41, scope: !2957, inlinedAt: !3043)
!3045 = !DILocation(line: 104, column: 50, scope: !2957, inlinedAt: !3043)
!3046 = !DILocation(line: 104, column: 60, scope: !2957, inlinedAt: !3043)
!3047 = !DILocation(line: 104, column: 70, scope: !2957, inlinedAt: !3043)
!3048 = !DILocation(line: 104, column: 80, scope: !2957, inlinedAt: !3043)
!3049 = !DILocation(line: 104, column: 90, scope: !2957, inlinedAt: !3043)
!3050 = !DILocation(line: 106, column: 7, scope: !2978, inlinedAt: !3043)
!3051 = !DILocation(line: 106, column: 7, scope: !2957, inlinedAt: !3043)
!3052 = !DILocation(line: 90, column: 25, scope: !2981, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 111, column: 16, scope: !2992, inlinedAt: !3043)
!3054 = !DILocation(line: 90, column: 41, scope: !2981, inlinedAt: !3053)
!3055 = !DILocation(line: 90, column: 50, scope: !2981, inlinedAt: !3053)
!3056 = !DILocation(line: 90, column: 60, scope: !2981, inlinedAt: !3053)
!3057 = !DILocation(line: 90, column: 70, scope: !2981, inlinedAt: !3053)
!3058 = !DILocation(line: 90, column: 80, scope: !2981, inlinedAt: !3053)
!3059 = !DILocation(line: 92, column: 7, scope: !3000, inlinedAt: !3053)
!3060 = !DILocation(line: 92, column: 7, scope: !2981, inlinedAt: !3053)
!3061 = !DILocalVariable(name: "s1", arg: 1, scope: !3062, file: !2845, line: 76, type: !65)
!3062 = distinct !DISubprogram(name: "strcaseeq6", scope: !2845, file: !2845, line: 76, type: !3063, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!50, !65, !65, !46, !46, !46}
!3065 = !{!3061, !3066, !3067, !3068, !3069}
!3066 = !DILocalVariable(name: "s2", arg: 2, scope: !3062, file: !2845, line: 76, type: !65)
!3067 = !DILocalVariable(name: "s26", arg: 3, scope: !3062, file: !2845, line: 76, type: !46)
!3068 = !DILocalVariable(name: "s27", arg: 4, scope: !3062, file: !2845, line: 76, type: !46)
!3069 = !DILocalVariable(name: "s28", arg: 5, scope: !3062, file: !2845, line: 76, type: !46)
!3070 = !DILocation(line: 76, column: 25, scope: !3062, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 97, column: 16, scope: !3072, inlinedAt: !3053)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !2845, line: 94, column: 11)
!3073 = distinct !DILexicalBlock(scope: !3000, file: !2845, line: 93, column: 5)
!3074 = !DILocation(line: 76, column: 41, scope: !3062, inlinedAt: !3071)
!3075 = !DILocation(line: 76, column: 50, scope: !3062, inlinedAt: !3071)
!3076 = !DILocation(line: 76, column: 60, scope: !3062, inlinedAt: !3071)
!3077 = !DILocation(line: 76, column: 70, scope: !3062, inlinedAt: !3071)
!3078 = !DILocation(line: 78, column: 7, scope: !3079, inlinedAt: !3071)
!3079 = distinct !DILexicalBlock(scope: !3062, file: !2845, line: 78, column: 7)
!3080 = !DILocation(line: 78, column: 7, scope: !3062, inlinedAt: !3071)
!3081 = !DILocalVariable(name: "s1", arg: 1, scope: !3082, file: !2845, line: 62, type: !65)
!3082 = distinct !DISubprogram(name: "strcaseeq7", scope: !2845, file: !2845, line: 62, type: !3083, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!50, !65, !65, !46, !46}
!3085 = !{!3081, !3086, !3087, !3088}
!3086 = !DILocalVariable(name: "s2", arg: 2, scope: !3082, file: !2845, line: 62, type: !65)
!3087 = !DILocalVariable(name: "s27", arg: 3, scope: !3082, file: !2845, line: 62, type: !46)
!3088 = !DILocalVariable(name: "s28", arg: 4, scope: !3082, file: !2845, line: 62, type: !46)
!3089 = !DILocation(line: 62, column: 25, scope: !3082, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 83, column: 16, scope: !3091, inlinedAt: !3071)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !2845, line: 80, column: 11)
!3092 = distinct !DILexicalBlock(scope: !3079, file: !2845, line: 79, column: 5)
!3093 = !DILocation(line: 62, column: 41, scope: !3082, inlinedAt: !3090)
!3094 = !DILocation(line: 62, column: 50, scope: !3082, inlinedAt: !3090)
!3095 = !DILocation(line: 62, column: 60, scope: !3082, inlinedAt: !3090)
!3096 = !DILocation(line: 64, column: 7, scope: !3097, inlinedAt: !3090)
!3097 = distinct !DILexicalBlock(scope: !3082, file: !2845, line: 64, column: 7)
!3098 = !DILocation(line: 236, column: 7, scope: !2826)
!3099 = !DILocation(line: 237, column: 12, scope: !3008)
!3100 = !DILocation(line: 237, column: 21, scope: !3008)
!3101 = !DILocation(line: 237, column: 5, scope: !3008)
!3102 = !DILocation(line: 239, column: 13, scope: !2826)
!3103 = !DILocation(line: 239, column: 11, scope: !2826)
!3104 = !DILocation(line: 239, column: 3, scope: !2826)
!3105 = !DILocation(line: 0, scope: !2826)
!3106 = !DILocation(line: 240, column: 1, scope: !2826)
!3107 = distinct !DISubprogram(name: "quotearg_alloc", scope: !186, file: !186, line: 799, type: !3108, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!45, !65, !180, !2147}
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "arg", arg: 1, scope: !3107, file: !186, line: 799, type: !65)
!3112 = !DILocalVariable(name: "argsize", arg: 2, scope: !3107, file: !186, line: 799, type: !180)
!3113 = !DILocalVariable(name: "o", arg: 3, scope: !3107, file: !186, line: 800, type: !2147)
!3114 = !DILocation(line: 799, column: 29, scope: !3107)
!3115 = !DILocation(line: 799, column: 41, scope: !3107)
!3116 = !DILocation(line: 800, column: 47, scope: !3107)
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !186, line: 812, type: !65)
!3118 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !186, file: !186, line: 812, type: !3119, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!45, !65, !180, !251, !2147}
!3121 = !{!3117, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129}
!3122 = !DILocalVariable(name: "argsize", arg: 2, scope: !3118, file: !186, line: 812, type: !180)
!3123 = !DILocalVariable(name: "size", arg: 3, scope: !3118, file: !186, line: 812, type: !251)
!3124 = !DILocalVariable(name: "o", arg: 4, scope: !3118, file: !186, line: 813, type: !2147)
!3125 = !DILocalVariable(name: "p", scope: !3118, file: !186, line: 815, type: !2147)
!3126 = !DILocalVariable(name: "e", scope: !3118, file: !186, line: 816, type: !50)
!3127 = !DILocalVariable(name: "flags", scope: !3118, file: !186, line: 818, type: !50)
!3128 = !DILocalVariable(name: "bufsize", scope: !3118, file: !186, line: 819, type: !180)
!3129 = !DILocalVariable(name: "buf", scope: !3118, file: !186, line: 823, type: !45)
!3130 = !DILocation(line: 812, column: 33, scope: !3118, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 802, column: 10, scope: !3107)
!3132 = !DILocation(line: 812, column: 45, scope: !3118, inlinedAt: !3131)
!3133 = !DILocation(line: 812, column: 62, scope: !3118, inlinedAt: !3131)
!3134 = !DILocation(line: 813, column: 51, scope: !3118, inlinedAt: !3131)
!3135 = !DILocation(line: 815, column: 37, scope: !3118, inlinedAt: !3131)
!3136 = !DILocation(line: 815, column: 33, scope: !3118, inlinedAt: !3131)
!3137 = !DILocation(line: 816, column: 11, scope: !3118, inlinedAt: !3131)
!3138 = !DILocation(line: 816, column: 7, scope: !3118, inlinedAt: !3131)
!3139 = !DILocation(line: 818, column: 18, scope: !3118, inlinedAt: !3131)
!3140 = !DILocation(line: 818, column: 24, scope: !3118, inlinedAt: !3131)
!3141 = !DILocation(line: 818, column: 7, scope: !3118, inlinedAt: !3131)
!3142 = !DILocation(line: 819, column: 69, scope: !3118, inlinedAt: !3131)
!3143 = !DILocation(line: 820, column: 53, scope: !3118, inlinedAt: !3131)
!3144 = !DILocation(line: 821, column: 49, scope: !3118, inlinedAt: !3131)
!3145 = !DILocation(line: 822, column: 49, scope: !3118, inlinedAt: !3131)
!3146 = !DILocation(line: 819, column: 20, scope: !3118, inlinedAt: !3131)
!3147 = !DILocation(line: 822, column: 62, scope: !3118, inlinedAt: !3131)
!3148 = !DILocation(line: 819, column: 10, scope: !3118, inlinedAt: !3131)
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3150, file: !247, line: 216, type: !180)
!3150 = distinct !DISubprogram(name: "xcharalloc", scope: !247, file: !247, line: 216, type: !3151, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!45, !180}
!3153 = !{!3149}
!3154 = !DILocation(line: 216, column: 20, scope: !3150, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 823, column: 15, scope: !3118, inlinedAt: !3131)
!3156 = !DILocation(line: 218, column: 10, scope: !3150, inlinedAt: !3155)
!3157 = !DILocation(line: 823, column: 9, scope: !3118, inlinedAt: !3131)
!3158 = !DILocation(line: 824, column: 60, scope: !3118, inlinedAt: !3131)
!3159 = !DILocation(line: 826, column: 32, scope: !3118, inlinedAt: !3131)
!3160 = !DILocation(line: 826, column: 47, scope: !3118, inlinedAt: !3131)
!3161 = !DILocation(line: 824, column: 3, scope: !3118, inlinedAt: !3131)
!3162 = !DILocation(line: 827, column: 9, scope: !3118, inlinedAt: !3131)
!3163 = !DILocation(line: 802, column: 3, scope: !3107)
!3164 = !DILocation(line: 812, column: 33, scope: !3118)
!3165 = !DILocation(line: 812, column: 45, scope: !3118)
!3166 = !DILocation(line: 812, column: 62, scope: !3118)
!3167 = !DILocation(line: 813, column: 51, scope: !3118)
!3168 = !DILocation(line: 815, column: 37, scope: !3118)
!3169 = !DILocation(line: 815, column: 33, scope: !3118)
!3170 = !DILocation(line: 816, column: 11, scope: !3118)
!3171 = !DILocation(line: 816, column: 7, scope: !3118)
!3172 = !DILocation(line: 818, column: 18, scope: !3118)
!3173 = !DILocation(line: 818, column: 27, scope: !3118)
!3174 = !DILocation(line: 818, column: 24, scope: !3118)
!3175 = !DILocation(line: 818, column: 7, scope: !3118)
!3176 = !DILocation(line: 819, column: 69, scope: !3118)
!3177 = !DILocation(line: 820, column: 53, scope: !3118)
!3178 = !DILocation(line: 821, column: 49, scope: !3118)
!3179 = !DILocation(line: 822, column: 49, scope: !3118)
!3180 = !DILocation(line: 819, column: 20, scope: !3118)
!3181 = !DILocation(line: 822, column: 62, scope: !3118)
!3182 = !DILocation(line: 819, column: 10, scope: !3118)
!3183 = !DILocation(line: 216, column: 20, scope: !3150, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 823, column: 15, scope: !3118)
!3185 = !DILocation(line: 218, column: 10, scope: !3150, inlinedAt: !3184)
!3186 = !DILocation(line: 823, column: 9, scope: !3118)
!3187 = !DILocation(line: 824, column: 60, scope: !3118)
!3188 = !DILocation(line: 826, column: 32, scope: !3118)
!3189 = !DILocation(line: 826, column: 47, scope: !3118)
!3190 = !DILocation(line: 824, column: 3, scope: !3118)
!3191 = !DILocation(line: 827, column: 9, scope: !3118)
!3192 = !DILocation(line: 828, column: 7, scope: !3118)
!3193 = !DILocation(line: 829, column: 11, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3118, file: !186, line: 828, column: 7)
!3195 = !{!1087, !1087, i64 0}
!3196 = !DILocation(line: 829, column: 5, scope: !3194)
!3197 = !DILocation(line: 830, column: 3, scope: !3118)
!3198 = distinct !DISubprogram(name: "quotearg_free", scope: !186, file: !186, line: 848, type: !728, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3199)
!3199 = !{!3200, !3201}
!3200 = !DILocalVariable(name: "sv", scope: !3198, file: !186, line: 850, type: !210)
!3201 = !DILocalVariable(name: "i", scope: !3198, file: !186, line: 851, type: !50)
!3202 = !DILocation(line: 850, column: 24, scope: !3198)
!3203 = !DILocation(line: 850, column: 19, scope: !3198)
!3204 = !DILocation(line: 851, column: 7, scope: !3198)
!3205 = !DILocation(line: 852, column: 19, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !186, line: 852, column: 3)
!3207 = distinct !DILexicalBlock(scope: !3198, file: !186, line: 852, column: 3)
!3208 = !DILocation(line: 852, column: 17, scope: !3206)
!3209 = !DILocation(line: 852, column: 3, scope: !3207)
!3210 = !DILocation(line: 853, column: 17, scope: !3206)
!3211 = !{!3212, !721, i64 8}
!3212 = !{!"slotvec", !1087, i64 0, !721, i64 8}
!3213 = !DILocation(line: 853, column: 5, scope: !3206)
!3214 = !DILocation(line: 852, column: 28, scope: !3206)
!3215 = distinct !{!3215, !3209, !3216}
!3216 = !DILocation(line: 853, column: 20, scope: !3207)
!3217 = !DILocation(line: 854, column: 13, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3198, file: !186, line: 854, column: 7)
!3219 = !DILocation(line: 854, column: 17, scope: !3218)
!3220 = !DILocation(line: 854, column: 7, scope: !3198)
!3221 = !DILocation(line: 856, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !186, line: 855, column: 5)
!3223 = !DILocation(line: 857, column: 21, scope: !3222)
!3224 = !{!3212, !1087, i64 0}
!3225 = !DILocation(line: 858, column: 20, scope: !3222)
!3226 = !DILocation(line: 859, column: 5, scope: !3222)
!3227 = !DILocation(line: 860, column: 10, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3198, file: !186, line: 860, column: 7)
!3229 = !DILocation(line: 860, column: 7, scope: !3198)
!3230 = !DILocation(line: 862, column: 13, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !186, line: 861, column: 5)
!3232 = !DILocation(line: 862, column: 7, scope: !3231)
!3233 = !DILocation(line: 863, column: 15, scope: !3231)
!3234 = !DILocation(line: 864, column: 5, scope: !3231)
!3235 = !DILocation(line: 865, column: 10, scope: !3198)
!3236 = !DILocation(line: 866, column: 1, scope: !3198)
!3237 = distinct !DISubprogram(name: "quotearg_n", scope: !186, file: !186, line: 931, type: !3238, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!45, !50, !65}
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !186, line: 931, type: !50)
!3242 = !DILocalVariable(name: "arg", arg: 2, scope: !3237, file: !186, line: 931, type: !65)
!3243 = !DILocation(line: 931, column: 17, scope: !3237)
!3244 = !DILocation(line: 931, column: 32, scope: !3237)
!3245 = !DILocation(line: 933, column: 10, scope: !3237)
!3246 = !DILocation(line: 933, column: 3, scope: !3237)
!3247 = distinct !DISubprogram(name: "quotearg_n_options", scope: !186, file: !186, line: 877, type: !3248, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!45, !50, !65, !180, !2147}
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256, !3257, !3260, !3261, !3263, !3264, !3265}
!3251 = !DILocalVariable(name: "n", arg: 1, scope: !3247, file: !186, line: 877, type: !50)
!3252 = !DILocalVariable(name: "arg", arg: 2, scope: !3247, file: !186, line: 877, type: !65)
!3253 = !DILocalVariable(name: "argsize", arg: 3, scope: !3247, file: !186, line: 877, type: !180)
!3254 = !DILocalVariable(name: "options", arg: 4, scope: !3247, file: !186, line: 878, type: !2147)
!3255 = !DILocalVariable(name: "e", scope: !3247, file: !186, line: 880, type: !50)
!3256 = !DILocalVariable(name: "sv", scope: !3247, file: !186, line: 882, type: !210)
!3257 = !DILocalVariable(name: "preallocated", scope: !3258, file: !186, line: 889, type: !57)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !186, line: 888, column: 5)
!3259 = distinct !DILexicalBlock(scope: !3247, file: !186, line: 887, column: 7)
!3260 = !DILocalVariable(name: "nmax", scope: !3258, file: !186, line: 890, type: !50)
!3261 = !DILocalVariable(name: "size", scope: !3262, file: !186, line: 903, type: !180)
!3262 = distinct !DILexicalBlock(scope: !3247, file: !186, line: 902, column: 3)
!3263 = !DILocalVariable(name: "val", scope: !3262, file: !186, line: 904, type: !45)
!3264 = !DILocalVariable(name: "flags", scope: !3262, file: !186, line: 906, type: !50)
!3265 = !DILocalVariable(name: "qsize", scope: !3262, file: !186, line: 907, type: !180)
!3266 = !DILocation(line: 877, column: 25, scope: !3247)
!3267 = !DILocation(line: 877, column: 40, scope: !3247)
!3268 = !DILocation(line: 877, column: 52, scope: !3247)
!3269 = !DILocation(line: 878, column: 51, scope: !3247)
!3270 = !DILocation(line: 880, column: 11, scope: !3247)
!3271 = !DILocation(line: 880, column: 7, scope: !3247)
!3272 = !DILocation(line: 882, column: 24, scope: !3247)
!3273 = !DILocation(line: 882, column: 19, scope: !3247)
!3274 = !DILocation(line: 884, column: 9, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3247, file: !186, line: 884, column: 7)
!3276 = !DILocation(line: 884, column: 7, scope: !3247)
!3277 = !DILocation(line: 885, column: 5, scope: !3275)
!3278 = !DILocation(line: 887, column: 7, scope: !3259)
!3279 = !DILocation(line: 887, column: 14, scope: !3259)
!3280 = !DILocation(line: 887, column: 7, scope: !3247)
!3281 = !DILocation(line: 889, column: 31, scope: !3258)
!3282 = !DILocation(line: 890, column: 11, scope: !3258)
!3283 = !DILocation(line: 892, column: 16, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3258, file: !186, line: 892, column: 11)
!3285 = !DILocation(line: 892, column: 11, scope: !3258)
!3286 = !DILocation(line: 893, column: 9, scope: !3284)
!3287 = !DILocation(line: 895, column: 32, scope: !3258)
!3288 = !DILocation(line: 895, column: 61, scope: !3258)
!3289 = !DILocation(line: 895, column: 58, scope: !3258)
!3290 = !DILocation(line: 895, column: 66, scope: !3258)
!3291 = !DILocation(line: 895, column: 22, scope: !3258)
!3292 = !DILocation(line: 895, column: 15, scope: !3258)
!3293 = !DILocation(line: 896, column: 11, scope: !3258)
!3294 = !DILocation(line: 897, column: 15, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3258, file: !186, line: 896, column: 11)
!3296 = !{i64 0, i64 8, !3195, i64 8, i64 8, !720}
!3297 = !DILocation(line: 897, column: 9, scope: !3295)
!3298 = !DILocation(line: 898, column: 20, scope: !3258)
!3299 = !DILocation(line: 898, column: 18, scope: !3258)
!3300 = !DILocation(line: 898, column: 7, scope: !3258)
!3301 = !DILocation(line: 898, column: 38, scope: !3258)
!3302 = !DILocation(line: 898, column: 31, scope: !3258)
!3303 = !DILocation(line: 898, column: 48, scope: !3258)
!3304 = !DILocation(line: 899, column: 14, scope: !3258)
!3305 = !DILocation(line: 900, column: 5, scope: !3258)
!3306 = !DILocation(line: 0, scope: !3247)
!3307 = !DILocation(line: 903, column: 19, scope: !3262)
!3308 = !DILocation(line: 903, column: 25, scope: !3262)
!3309 = !DILocation(line: 903, column: 12, scope: !3262)
!3310 = !DILocation(line: 904, column: 23, scope: !3262)
!3311 = !DILocation(line: 904, column: 11, scope: !3262)
!3312 = !DILocation(line: 906, column: 26, scope: !3262)
!3313 = !DILocation(line: 906, column: 32, scope: !3262)
!3314 = !DILocation(line: 906, column: 9, scope: !3262)
!3315 = !DILocation(line: 908, column: 55, scope: !3262)
!3316 = !DILocation(line: 909, column: 46, scope: !3262)
!3317 = !DILocation(line: 910, column: 55, scope: !3262)
!3318 = !DILocation(line: 911, column: 55, scope: !3262)
!3319 = !DILocation(line: 907, column: 20, scope: !3262)
!3320 = !DILocation(line: 907, column: 12, scope: !3262)
!3321 = !DILocation(line: 913, column: 14, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3262, file: !186, line: 913, column: 9)
!3323 = !DILocation(line: 913, column: 9, scope: !3262)
!3324 = !DILocation(line: 915, column: 35, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !186, line: 914, column: 7)
!3326 = !DILocation(line: 915, column: 20, scope: !3325)
!3327 = !DILocation(line: 916, column: 17, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3325, file: !186, line: 916, column: 13)
!3329 = !DILocation(line: 916, column: 13, scope: !3325)
!3330 = !DILocation(line: 917, column: 11, scope: !3328)
!3331 = !DILocation(line: 216, column: 20, scope: !3150, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 918, column: 27, scope: !3325)
!3333 = !DILocation(line: 218, column: 10, scope: !3150, inlinedAt: !3332)
!3334 = !DILocation(line: 918, column: 19, scope: !3325)
!3335 = !DILocation(line: 919, column: 69, scope: !3325)
!3336 = !DILocation(line: 921, column: 44, scope: !3325)
!3337 = !DILocation(line: 922, column: 44, scope: !3325)
!3338 = !DILocation(line: 919, column: 9, scope: !3325)
!3339 = !DILocation(line: 923, column: 7, scope: !3325)
!3340 = !DILocation(line: 0, scope: !3262)
!3341 = !DILocation(line: 925, column: 11, scope: !3262)
!3342 = !DILocation(line: 926, column: 5, scope: !3262)
!3343 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !186, file: !186, line: 937, type: !3344, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!45, !50, !65, !180}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !186, line: 937, type: !50)
!3348 = !DILocalVariable(name: "arg", arg: 2, scope: !3343, file: !186, line: 937, type: !65)
!3349 = !DILocalVariable(name: "argsize", arg: 3, scope: !3343, file: !186, line: 937, type: !180)
!3350 = !DILocation(line: 937, column: 21, scope: !3343)
!3351 = !DILocation(line: 937, column: 36, scope: !3343)
!3352 = !DILocation(line: 937, column: 48, scope: !3343)
!3353 = !DILocation(line: 939, column: 10, scope: !3343)
!3354 = !DILocation(line: 939, column: 3, scope: !3343)
!3355 = distinct !DISubprogram(name: "quotearg", scope: !186, file: !186, line: 943, type: !3356, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!45, !65}
!3358 = !{!3359}
!3359 = !DILocalVariable(name: "arg", arg: 1, scope: !3355, file: !186, line: 943, type: !65)
!3360 = !DILocation(line: 943, column: 23, scope: !3355)
!3361 = !DILocation(line: 931, column: 17, scope: !3237, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 945, column: 10, scope: !3355)
!3363 = !DILocation(line: 931, column: 32, scope: !3237, inlinedAt: !3362)
!3364 = !DILocation(line: 933, column: 10, scope: !3237, inlinedAt: !3362)
!3365 = !DILocation(line: 945, column: 3, scope: !3355)
!3366 = distinct !DISubprogram(name: "quotearg_mem", scope: !186, file: !186, line: 949, type: !3367, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!45, !65, !180}
!3369 = !{!3370, !3371}
!3370 = !DILocalVariable(name: "arg", arg: 1, scope: !3366, file: !186, line: 949, type: !65)
!3371 = !DILocalVariable(name: "argsize", arg: 2, scope: !3366, file: !186, line: 949, type: !180)
!3372 = !DILocation(line: 949, column: 27, scope: !3366)
!3373 = !DILocation(line: 949, column: 39, scope: !3366)
!3374 = !DILocation(line: 937, column: 21, scope: !3343, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 951, column: 10, scope: !3366)
!3376 = !DILocation(line: 937, column: 36, scope: !3343, inlinedAt: !3375)
!3377 = !DILocation(line: 937, column: 48, scope: !3343, inlinedAt: !3375)
!3378 = !DILocation(line: 939, column: 10, scope: !3343, inlinedAt: !3375)
!3379 = !DILocation(line: 951, column: 3, scope: !3366)
!3380 = distinct !DISubprogram(name: "quotearg_n_style", scope: !186, file: !186, line: 955, type: !3381, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!45, !50, !5, !65}
!3383 = !{!3384, !3385, !3386, !3387}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3380, file: !186, line: 955, type: !50)
!3385 = !DILocalVariable(name: "s", arg: 2, scope: !3380, file: !186, line: 955, type: !5)
!3386 = !DILocalVariable(name: "arg", arg: 3, scope: !3380, file: !186, line: 955, type: !65)
!3387 = !DILocalVariable(name: "o", scope: !3380, file: !186, line: 957, type: !2148)
!3388 = !DILocation(line: 955, column: 23, scope: !3380)
!3389 = !DILocation(line: 955, column: 45, scope: !3380)
!3390 = !DILocation(line: 955, column: 60, scope: !3380)
!3391 = !DILocation(line: 957, column: 3, scope: !3380)
!3392 = !DILocation(line: 957, column: 32, scope: !3380)
!3393 = !DILocalVariable(name: "style", arg: 1, scope: !3394, file: !186, line: 193, type: !5)
!3394 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !186, file: !186, line: 193, type: !3395, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!191, !5}
!3397 = !{!3393, !3398}
!3398 = !DILocalVariable(name: "o", scope: !3394, file: !186, line: 195, type: !191)
!3399 = !DILocation(line: 193, column: 48, scope: !3394, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 957, column: 36, scope: !3380)
!3401 = !DILocation(line: 195, column: 26, scope: !3394, inlinedAt: !3400)
!3402 = !{!3403}
!3403 = distinct !{!3403, !3404, !"quoting_options_from_style: argument 0"}
!3404 = distinct !{!3404, !"quoting_options_from_style"}
!3405 = !DILocation(line: 196, column: 13, scope: !3406, inlinedAt: !3400)
!3406 = distinct !DILexicalBlock(scope: !3394, file: !186, line: 196, column: 7)
!3407 = !DILocation(line: 196, column: 7, scope: !3394, inlinedAt: !3400)
!3408 = !DILocation(line: 197, column: 5, scope: !3406, inlinedAt: !3400)
!3409 = !DILocation(line: 198, column: 5, scope: !3394, inlinedAt: !3400)
!3410 = !DILocation(line: 198, column: 11, scope: !3394, inlinedAt: !3400)
!3411 = !DILocation(line: 958, column: 10, scope: !3380)
!3412 = !DILocation(line: 959, column: 1, scope: !3380)
!3413 = !DILocation(line: 958, column: 3, scope: !3380)
!3414 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !186, file: !186, line: 962, type: !3415, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!45, !50, !5, !65, !180}
!3417 = !{!3418, !3419, !3420, !3421, !3422}
!3418 = !DILocalVariable(name: "n", arg: 1, scope: !3414, file: !186, line: 962, type: !50)
!3419 = !DILocalVariable(name: "s", arg: 2, scope: !3414, file: !186, line: 962, type: !5)
!3420 = !DILocalVariable(name: "arg", arg: 3, scope: !3414, file: !186, line: 963, type: !65)
!3421 = !DILocalVariable(name: "argsize", arg: 4, scope: !3414, file: !186, line: 963, type: !180)
!3422 = !DILocalVariable(name: "o", scope: !3414, file: !186, line: 965, type: !2148)
!3423 = !DILocation(line: 962, column: 27, scope: !3414)
!3424 = !DILocation(line: 962, column: 49, scope: !3414)
!3425 = !DILocation(line: 963, column: 35, scope: !3414)
!3426 = !DILocation(line: 963, column: 47, scope: !3414)
!3427 = !DILocation(line: 965, column: 3, scope: !3414)
!3428 = !DILocation(line: 965, column: 32, scope: !3414)
!3429 = !DILocation(line: 193, column: 48, scope: !3394, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 965, column: 36, scope: !3414)
!3431 = !DILocation(line: 195, column: 26, scope: !3394, inlinedAt: !3430)
!3432 = !{!3433}
!3433 = distinct !{!3433, !3434, !"quoting_options_from_style: argument 0"}
!3434 = distinct !{!3434, !"quoting_options_from_style"}
!3435 = !DILocation(line: 196, column: 13, scope: !3406, inlinedAt: !3430)
!3436 = !DILocation(line: 196, column: 7, scope: !3394, inlinedAt: !3430)
!3437 = !DILocation(line: 197, column: 5, scope: !3406, inlinedAt: !3430)
!3438 = !DILocation(line: 198, column: 5, scope: !3394, inlinedAt: !3430)
!3439 = !DILocation(line: 198, column: 11, scope: !3394, inlinedAt: !3430)
!3440 = !DILocation(line: 966, column: 10, scope: !3414)
!3441 = !DILocation(line: 967, column: 1, scope: !3414)
!3442 = !DILocation(line: 966, column: 3, scope: !3414)
!3443 = distinct !DISubprogram(name: "quotearg_style", scope: !186, file: !186, line: 970, type: !3444, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!45, !5, !65}
!3446 = !{!3447, !3448}
!3447 = !DILocalVariable(name: "s", arg: 1, scope: !3443, file: !186, line: 970, type: !5)
!3448 = !DILocalVariable(name: "arg", arg: 2, scope: !3443, file: !186, line: 970, type: !65)
!3449 = !DILocation(line: 970, column: 36, scope: !3443)
!3450 = !DILocation(line: 970, column: 51, scope: !3443)
!3451 = !DILocation(line: 955, column: 23, scope: !3380, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 972, column: 10, scope: !3443)
!3453 = !DILocation(line: 955, column: 45, scope: !3380, inlinedAt: !3452)
!3454 = !DILocation(line: 955, column: 60, scope: !3380, inlinedAt: !3452)
!3455 = !DILocation(line: 957, column: 3, scope: !3380, inlinedAt: !3452)
!3456 = !DILocation(line: 957, column: 32, scope: !3380, inlinedAt: !3452)
!3457 = !DILocation(line: 193, column: 48, scope: !3394, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 957, column: 36, scope: !3380, inlinedAt: !3452)
!3459 = !DILocation(line: 195, column: 26, scope: !3394, inlinedAt: !3458)
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"quoting_options_from_style: argument 0"}
!3462 = distinct !{!3462, !"quoting_options_from_style"}
!3463 = !DILocation(line: 196, column: 13, scope: !3406, inlinedAt: !3458)
!3464 = !DILocation(line: 196, column: 7, scope: !3394, inlinedAt: !3458)
!3465 = !DILocation(line: 197, column: 5, scope: !3406, inlinedAt: !3458)
!3466 = !DILocation(line: 198, column: 5, scope: !3394, inlinedAt: !3458)
!3467 = !DILocation(line: 198, column: 11, scope: !3394, inlinedAt: !3458)
!3468 = !DILocation(line: 958, column: 10, scope: !3380, inlinedAt: !3452)
!3469 = !DILocation(line: 959, column: 1, scope: !3380, inlinedAt: !3452)
!3470 = !DILocation(line: 972, column: 3, scope: !3443)
!3471 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !186, file: !186, line: 976, type: !3472, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!45, !5, !65, !180}
!3474 = !{!3475, !3476, !3477}
!3475 = !DILocalVariable(name: "s", arg: 1, scope: !3471, file: !186, line: 976, type: !5)
!3476 = !DILocalVariable(name: "arg", arg: 2, scope: !3471, file: !186, line: 976, type: !65)
!3477 = !DILocalVariable(name: "argsize", arg: 3, scope: !3471, file: !186, line: 976, type: !180)
!3478 = !DILocation(line: 976, column: 40, scope: !3471)
!3479 = !DILocation(line: 976, column: 55, scope: !3471)
!3480 = !DILocation(line: 976, column: 67, scope: !3471)
!3481 = !DILocation(line: 962, column: 27, scope: !3414, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 978, column: 10, scope: !3471)
!3483 = !DILocation(line: 962, column: 49, scope: !3414, inlinedAt: !3482)
!3484 = !DILocation(line: 963, column: 35, scope: !3414, inlinedAt: !3482)
!3485 = !DILocation(line: 963, column: 47, scope: !3414, inlinedAt: !3482)
!3486 = !DILocation(line: 965, column: 3, scope: !3414, inlinedAt: !3482)
!3487 = !DILocation(line: 965, column: 32, scope: !3414, inlinedAt: !3482)
!3488 = !DILocation(line: 193, column: 48, scope: !3394, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 965, column: 36, scope: !3414, inlinedAt: !3482)
!3490 = !DILocation(line: 195, column: 26, scope: !3394, inlinedAt: !3489)
!3491 = !{!3492}
!3492 = distinct !{!3492, !3493, !"quoting_options_from_style: argument 0"}
!3493 = distinct !{!3493, !"quoting_options_from_style"}
!3494 = !DILocation(line: 196, column: 13, scope: !3406, inlinedAt: !3489)
!3495 = !DILocation(line: 196, column: 7, scope: !3394, inlinedAt: !3489)
!3496 = !DILocation(line: 197, column: 5, scope: !3406, inlinedAt: !3489)
!3497 = !DILocation(line: 198, column: 5, scope: !3394, inlinedAt: !3489)
!3498 = !DILocation(line: 198, column: 11, scope: !3394, inlinedAt: !3489)
!3499 = !DILocation(line: 966, column: 10, scope: !3414, inlinedAt: !3482)
!3500 = !DILocation(line: 967, column: 1, scope: !3414, inlinedAt: !3482)
!3501 = !DILocation(line: 978, column: 3, scope: !3471)
!3502 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !186, file: !186, line: 982, type: !3503, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!45, !65, !180, !46}
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DILocalVariable(name: "arg", arg: 1, scope: !3502, file: !186, line: 982, type: !65)
!3507 = !DILocalVariable(name: "argsize", arg: 2, scope: !3502, file: !186, line: 982, type: !180)
!3508 = !DILocalVariable(name: "ch", arg: 3, scope: !3502, file: !186, line: 982, type: !46)
!3509 = !DILocalVariable(name: "options", scope: !3502, file: !186, line: 984, type: !191)
!3510 = !DILocation(line: 982, column: 32, scope: !3502)
!3511 = !DILocation(line: 982, column: 44, scope: !3502)
!3512 = !DILocation(line: 982, column: 58, scope: !3502)
!3513 = !DILocation(line: 984, column: 3, scope: !3502)
!3514 = !DILocation(line: 985, column: 13, scope: !3502)
!3515 = !{i64 0, i64 4, !869, i64 4, i64 4, !859, i64 8, i64 32, !869, i64 40, i64 8, !720, i64 48, i64 8, !720}
!3516 = !DILocation(line: 984, column: 26, scope: !3502)
!3517 = !DILocation(line: 152, column: 43, scope: !2169, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 986, column: 3, scope: !3502)
!3519 = !DILocation(line: 152, column: 51, scope: !2169, inlinedAt: !3518)
!3520 = !DILocation(line: 152, column: 58, scope: !2169, inlinedAt: !3518)
!3521 = !DILocation(line: 154, column: 17, scope: !2169, inlinedAt: !3518)
!3522 = !DILocation(line: 156, column: 62, scope: !2169, inlinedAt: !3518)
!3523 = !DILocation(line: 156, column: 57, scope: !2169, inlinedAt: !3518)
!3524 = !DILocation(line: 155, column: 17, scope: !2169, inlinedAt: !3518)
!3525 = !DILocation(line: 157, column: 15, scope: !2169, inlinedAt: !3518)
!3526 = !DILocation(line: 157, column: 7, scope: !2169, inlinedAt: !3518)
!3527 = !DILocation(line: 158, column: 12, scope: !2169, inlinedAt: !3518)
!3528 = !DILocation(line: 158, column: 15, scope: !2169, inlinedAt: !3518)
!3529 = !DILocation(line: 158, column: 25, scope: !2169, inlinedAt: !3518)
!3530 = !DILocation(line: 158, column: 7, scope: !2169, inlinedAt: !3518)
!3531 = !DILocation(line: 159, column: 18, scope: !2169, inlinedAt: !3518)
!3532 = !DILocation(line: 159, column: 23, scope: !2169, inlinedAt: !3518)
!3533 = !DILocation(line: 159, column: 6, scope: !2169, inlinedAt: !3518)
!3534 = !DILocation(line: 987, column: 10, scope: !3502)
!3535 = !DILocation(line: 988, column: 1, scope: !3502)
!3536 = !DILocation(line: 987, column: 3, scope: !3502)
!3537 = distinct !DISubprogram(name: "quotearg_char", scope: !186, file: !186, line: 991, type: !3538, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!45, !65, !46}
!3540 = !{!3541, !3542}
!3541 = !DILocalVariable(name: "arg", arg: 1, scope: !3537, file: !186, line: 991, type: !65)
!3542 = !DILocalVariable(name: "ch", arg: 2, scope: !3537, file: !186, line: 991, type: !46)
!3543 = !DILocation(line: 991, column: 28, scope: !3537)
!3544 = !DILocation(line: 991, column: 38, scope: !3537)
!3545 = !DILocation(line: 982, column: 32, scope: !3502, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 993, column: 10, scope: !3537)
!3547 = !DILocation(line: 982, column: 44, scope: !3502, inlinedAt: !3546)
!3548 = !DILocation(line: 982, column: 58, scope: !3502, inlinedAt: !3546)
!3549 = !DILocation(line: 984, column: 3, scope: !3502, inlinedAt: !3546)
!3550 = !DILocation(line: 985, column: 13, scope: !3502, inlinedAt: !3546)
!3551 = !DILocation(line: 984, column: 26, scope: !3502, inlinedAt: !3546)
!3552 = !DILocation(line: 152, column: 43, scope: !2169, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 986, column: 3, scope: !3502, inlinedAt: !3546)
!3554 = !DILocation(line: 152, column: 51, scope: !2169, inlinedAt: !3553)
!3555 = !DILocation(line: 152, column: 58, scope: !2169, inlinedAt: !3553)
!3556 = !DILocation(line: 154, column: 17, scope: !2169, inlinedAt: !3553)
!3557 = !DILocation(line: 156, column: 62, scope: !2169, inlinedAt: !3553)
!3558 = !DILocation(line: 156, column: 57, scope: !2169, inlinedAt: !3553)
!3559 = !DILocation(line: 155, column: 17, scope: !2169, inlinedAt: !3553)
!3560 = !DILocation(line: 157, column: 15, scope: !2169, inlinedAt: !3553)
!3561 = !DILocation(line: 157, column: 7, scope: !2169, inlinedAt: !3553)
!3562 = !DILocation(line: 158, column: 12, scope: !2169, inlinedAt: !3553)
!3563 = !DILocation(line: 158, column: 15, scope: !2169, inlinedAt: !3553)
!3564 = !DILocation(line: 158, column: 25, scope: !2169, inlinedAt: !3553)
!3565 = !DILocation(line: 158, column: 7, scope: !2169, inlinedAt: !3553)
!3566 = !DILocation(line: 159, column: 18, scope: !2169, inlinedAt: !3553)
!3567 = !DILocation(line: 159, column: 23, scope: !2169, inlinedAt: !3553)
!3568 = !DILocation(line: 159, column: 6, scope: !2169, inlinedAt: !3553)
!3569 = !DILocation(line: 987, column: 10, scope: !3502, inlinedAt: !3546)
!3570 = !DILocation(line: 988, column: 1, scope: !3502, inlinedAt: !3546)
!3571 = !DILocation(line: 993, column: 3, scope: !3537)
!3572 = distinct !DISubprogram(name: "quotearg_colon", scope: !186, file: !186, line: 997, type: !3356, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3573)
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "arg", arg: 1, scope: !3572, file: !186, line: 997, type: !65)
!3575 = !DILocation(line: 997, column: 29, scope: !3572)
!3576 = !DILocation(line: 991, column: 28, scope: !3537, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 999, column: 10, scope: !3572)
!3578 = !DILocation(line: 991, column: 38, scope: !3537, inlinedAt: !3577)
!3579 = !DILocation(line: 982, column: 32, scope: !3502, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 993, column: 10, scope: !3537, inlinedAt: !3577)
!3581 = !DILocation(line: 982, column: 44, scope: !3502, inlinedAt: !3580)
!3582 = !DILocation(line: 982, column: 58, scope: !3502, inlinedAt: !3580)
!3583 = !DILocation(line: 984, column: 3, scope: !3502, inlinedAt: !3580)
!3584 = !DILocation(line: 985, column: 13, scope: !3502, inlinedAt: !3580)
!3585 = !DILocation(line: 984, column: 26, scope: !3502, inlinedAt: !3580)
!3586 = !DILocation(line: 152, column: 43, scope: !2169, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 986, column: 3, scope: !3502, inlinedAt: !3580)
!3588 = !DILocation(line: 152, column: 51, scope: !2169, inlinedAt: !3587)
!3589 = !DILocation(line: 152, column: 58, scope: !2169, inlinedAt: !3587)
!3590 = !DILocation(line: 154, column: 17, scope: !2169, inlinedAt: !3587)
!3591 = !DILocation(line: 156, column: 57, scope: !2169, inlinedAt: !3587)
!3592 = !DILocation(line: 155, column: 17, scope: !2169, inlinedAt: !3587)
!3593 = !DILocation(line: 157, column: 7, scope: !2169, inlinedAt: !3587)
!3594 = !DILocation(line: 158, column: 12, scope: !2169, inlinedAt: !3587)
!3595 = !DILocation(line: 159, column: 6, scope: !2169, inlinedAt: !3587)
!3596 = !DILocation(line: 987, column: 10, scope: !3502, inlinedAt: !3580)
!3597 = !DILocation(line: 988, column: 1, scope: !3502, inlinedAt: !3580)
!3598 = !DILocation(line: 999, column: 3, scope: !3572)
!3599 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !186, file: !186, line: 1003, type: !3367, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3600)
!3600 = !{!3601, !3602}
!3601 = !DILocalVariable(name: "arg", arg: 1, scope: !3599, file: !186, line: 1003, type: !65)
!3602 = !DILocalVariable(name: "argsize", arg: 2, scope: !3599, file: !186, line: 1003, type: !180)
!3603 = !DILocation(line: 1003, column: 33, scope: !3599)
!3604 = !DILocation(line: 1003, column: 45, scope: !3599)
!3605 = !DILocation(line: 982, column: 32, scope: !3502, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 1005, column: 10, scope: !3599)
!3607 = !DILocation(line: 982, column: 44, scope: !3502, inlinedAt: !3606)
!3608 = !DILocation(line: 982, column: 58, scope: !3502, inlinedAt: !3606)
!3609 = !DILocation(line: 984, column: 3, scope: !3502, inlinedAt: !3606)
!3610 = !DILocation(line: 985, column: 13, scope: !3502, inlinedAt: !3606)
!3611 = !DILocation(line: 984, column: 26, scope: !3502, inlinedAt: !3606)
!3612 = !DILocation(line: 152, column: 43, scope: !2169, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 986, column: 3, scope: !3502, inlinedAt: !3606)
!3614 = !DILocation(line: 152, column: 51, scope: !2169, inlinedAt: !3613)
!3615 = !DILocation(line: 152, column: 58, scope: !2169, inlinedAt: !3613)
!3616 = !DILocation(line: 154, column: 17, scope: !2169, inlinedAt: !3613)
!3617 = !DILocation(line: 156, column: 57, scope: !2169, inlinedAt: !3613)
!3618 = !DILocation(line: 155, column: 17, scope: !2169, inlinedAt: !3613)
!3619 = !DILocation(line: 157, column: 7, scope: !2169, inlinedAt: !3613)
!3620 = !DILocation(line: 158, column: 12, scope: !2169, inlinedAt: !3613)
!3621 = !DILocation(line: 159, column: 6, scope: !2169, inlinedAt: !3613)
!3622 = !DILocation(line: 987, column: 10, scope: !3502, inlinedAt: !3606)
!3623 = !DILocation(line: 988, column: 1, scope: !3502, inlinedAt: !3606)
!3624 = !DILocation(line: 1005, column: 3, scope: !3599)
!3625 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !186, file: !186, line: 1009, type: !3381, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3626)
!3626 = !{!3627, !3628, !3629, !3630}
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3625, file: !186, line: 1009, type: !50)
!3628 = !DILocalVariable(name: "s", arg: 2, scope: !3625, file: !186, line: 1009, type: !5)
!3629 = !DILocalVariable(name: "arg", arg: 3, scope: !3625, file: !186, line: 1009, type: !65)
!3630 = !DILocalVariable(name: "options", scope: !3625, file: !186, line: 1011, type: !191)
!3631 = !DILocation(line: 195, column: 26, scope: !3394, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1012, column: 13, scope: !3625)
!3633 = !DILocation(line: 1009, column: 29, scope: !3625)
!3634 = !DILocation(line: 1009, column: 51, scope: !3625)
!3635 = !DILocation(line: 1009, column: 66, scope: !3625)
!3636 = !DILocation(line: 1011, column: 3, scope: !3625)
!3637 = !DILocation(line: 1012, column: 13, scope: !3625)
!3638 = !DILocation(line: 193, column: 48, scope: !3394, inlinedAt: !3632)
!3639 = !{!3640}
!3640 = distinct !{!3640, !3641, !"quoting_options_from_style: argument 0"}
!3641 = distinct !{!3641, !"quoting_options_from_style"}
!3642 = !DILocation(line: 196, column: 13, scope: !3406, inlinedAt: !3632)
!3643 = !DILocation(line: 196, column: 7, scope: !3394, inlinedAt: !3632)
!3644 = !DILocation(line: 197, column: 5, scope: !3406, inlinedAt: !3632)
!3645 = !DILocation(line: 1011, column: 26, scope: !3625)
!3646 = !DILocation(line: 152, column: 43, scope: !2169, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 1013, column: 3, scope: !3625)
!3648 = !DILocation(line: 152, column: 51, scope: !2169, inlinedAt: !3647)
!3649 = !DILocation(line: 152, column: 58, scope: !2169, inlinedAt: !3647)
!3650 = !DILocation(line: 154, column: 17, scope: !2169, inlinedAt: !3647)
!3651 = !DILocation(line: 156, column: 57, scope: !2169, inlinedAt: !3647)
!3652 = !DILocation(line: 155, column: 17, scope: !2169, inlinedAt: !3647)
!3653 = !DILocation(line: 157, column: 7, scope: !2169, inlinedAt: !3647)
!3654 = !DILocation(line: 158, column: 12, scope: !2169, inlinedAt: !3647)
!3655 = !DILocation(line: 159, column: 6, scope: !2169, inlinedAt: !3647)
!3656 = !DILocation(line: 1014, column: 10, scope: !3625)
!3657 = !DILocation(line: 1015, column: 1, scope: !3625)
!3658 = !DILocation(line: 1014, column: 3, scope: !3625)
!3659 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !186, file: !186, line: 1018, type: !3660, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!45, !50, !65, !65, !65}
!3662 = !{!3663, !3664, !3665, !3666}
!3663 = !DILocalVariable(name: "n", arg: 1, scope: !3659, file: !186, line: 1018, type: !50)
!3664 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3659, file: !186, line: 1018, type: !65)
!3665 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3659, file: !186, line: 1019, type: !65)
!3666 = !DILocalVariable(name: "arg", arg: 4, scope: !3659, file: !186, line: 1019, type: !65)
!3667 = !DILocation(line: 1018, column: 24, scope: !3659)
!3668 = !DILocation(line: 1018, column: 39, scope: !3659)
!3669 = !DILocation(line: 1019, column: 32, scope: !3659)
!3670 = !DILocation(line: 1019, column: 57, scope: !3659)
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3672, file: !186, line: 1026, type: !50)
!3672 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !186, file: !186, line: 1026, type: !3673, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3675)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!45, !50, !65, !65, !65, !180}
!3675 = !{!3671, !3676, !3677, !3678, !3679, !3680}
!3676 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3672, file: !186, line: 1026, type: !65)
!3677 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3672, file: !186, line: 1027, type: !65)
!3678 = !DILocalVariable(name: "arg", arg: 4, scope: !3672, file: !186, line: 1028, type: !65)
!3679 = !DILocalVariable(name: "argsize", arg: 5, scope: !3672, file: !186, line: 1028, type: !180)
!3680 = !DILocalVariable(name: "o", scope: !3672, file: !186, line: 1030, type: !191)
!3681 = !DILocation(line: 1026, column: 28, scope: !3672, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1021, column: 10, scope: !3659)
!3683 = !DILocation(line: 1026, column: 43, scope: !3672, inlinedAt: !3682)
!3684 = !DILocation(line: 1027, column: 36, scope: !3672, inlinedAt: !3682)
!3685 = !DILocation(line: 1028, column: 36, scope: !3672, inlinedAt: !3682)
!3686 = !DILocation(line: 1028, column: 48, scope: !3672, inlinedAt: !3682)
!3687 = !DILocation(line: 1030, column: 3, scope: !3672, inlinedAt: !3682)
!3688 = !DILocation(line: 1030, column: 30, scope: !3672, inlinedAt: !3682)
!3689 = !DILocation(line: 1030, column: 26, scope: !3672, inlinedAt: !3682)
!3690 = !DILocation(line: 179, column: 45, scope: !2217, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 1031, column: 3, scope: !3672, inlinedAt: !3682)
!3692 = !DILocation(line: 180, column: 33, scope: !2217, inlinedAt: !3691)
!3693 = !DILocation(line: 180, column: 57, scope: !2217, inlinedAt: !3691)
!3694 = !DILocation(line: 184, column: 6, scope: !2217, inlinedAt: !3691)
!3695 = !DILocation(line: 184, column: 12, scope: !2217, inlinedAt: !3691)
!3696 = !DILocation(line: 185, column: 8, scope: !2233, inlinedAt: !3691)
!3697 = !DILocation(line: 185, column: 23, scope: !2233, inlinedAt: !3691)
!3698 = !DILocation(line: 185, column: 19, scope: !2233, inlinedAt: !3691)
!3699 = !DILocation(line: 186, column: 5, scope: !2233, inlinedAt: !3691)
!3700 = !DILocation(line: 187, column: 6, scope: !2217, inlinedAt: !3691)
!3701 = !DILocation(line: 187, column: 17, scope: !2217, inlinedAt: !3691)
!3702 = !DILocation(line: 188, column: 6, scope: !2217, inlinedAt: !3691)
!3703 = !DILocation(line: 188, column: 18, scope: !2217, inlinedAt: !3691)
!3704 = !DILocation(line: 1032, column: 10, scope: !3672, inlinedAt: !3682)
!3705 = !DILocation(line: 1033, column: 1, scope: !3672, inlinedAt: !3682)
!3706 = !DILocation(line: 1021, column: 3, scope: !3659)
!3707 = !DILocation(line: 1026, column: 28, scope: !3672)
!3708 = !DILocation(line: 1026, column: 43, scope: !3672)
!3709 = !DILocation(line: 1027, column: 36, scope: !3672)
!3710 = !DILocation(line: 1028, column: 36, scope: !3672)
!3711 = !DILocation(line: 1028, column: 48, scope: !3672)
!3712 = !DILocation(line: 1030, column: 3, scope: !3672)
!3713 = !DILocation(line: 1030, column: 30, scope: !3672)
!3714 = !DILocation(line: 1030, column: 26, scope: !3672)
!3715 = !DILocation(line: 179, column: 45, scope: !2217, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 1031, column: 3, scope: !3672)
!3717 = !DILocation(line: 180, column: 33, scope: !2217, inlinedAt: !3716)
!3718 = !DILocation(line: 180, column: 57, scope: !2217, inlinedAt: !3716)
!3719 = !DILocation(line: 184, column: 6, scope: !2217, inlinedAt: !3716)
!3720 = !DILocation(line: 184, column: 12, scope: !2217, inlinedAt: !3716)
!3721 = !DILocation(line: 185, column: 8, scope: !2233, inlinedAt: !3716)
!3722 = !DILocation(line: 185, column: 23, scope: !2233, inlinedAt: !3716)
!3723 = !DILocation(line: 185, column: 19, scope: !2233, inlinedAt: !3716)
!3724 = !DILocation(line: 186, column: 5, scope: !2233, inlinedAt: !3716)
!3725 = !DILocation(line: 187, column: 6, scope: !2217, inlinedAt: !3716)
!3726 = !DILocation(line: 187, column: 17, scope: !2217, inlinedAt: !3716)
!3727 = !DILocation(line: 188, column: 6, scope: !2217, inlinedAt: !3716)
!3728 = !DILocation(line: 188, column: 18, scope: !2217, inlinedAt: !3716)
!3729 = !DILocation(line: 1032, column: 10, scope: !3672)
!3730 = !DILocation(line: 1033, column: 1, scope: !3672)
!3731 = !DILocation(line: 1032, column: 3, scope: !3672)
!3732 = distinct !DISubprogram(name: "quotearg_custom", scope: !186, file: !186, line: 1036, type: !3733, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!45, !65, !65, !65}
!3735 = !{!3736, !3737, !3738}
!3736 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3732, file: !186, line: 1036, type: !65)
!3737 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3732, file: !186, line: 1036, type: !65)
!3738 = !DILocalVariable(name: "arg", arg: 3, scope: !3732, file: !186, line: 1037, type: !65)
!3739 = !DILocation(line: 1036, column: 30, scope: !3732)
!3740 = !DILocation(line: 1036, column: 54, scope: !3732)
!3741 = !DILocation(line: 1037, column: 30, scope: !3732)
!3742 = !DILocation(line: 1018, column: 24, scope: !3659, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 1039, column: 10, scope: !3732)
!3744 = !DILocation(line: 1018, column: 39, scope: !3659, inlinedAt: !3743)
!3745 = !DILocation(line: 1019, column: 32, scope: !3659, inlinedAt: !3743)
!3746 = !DILocation(line: 1019, column: 57, scope: !3659, inlinedAt: !3743)
!3747 = !DILocation(line: 1026, column: 28, scope: !3672, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1021, column: 10, scope: !3659, inlinedAt: !3743)
!3749 = !DILocation(line: 1026, column: 43, scope: !3672, inlinedAt: !3748)
!3750 = !DILocation(line: 1027, column: 36, scope: !3672, inlinedAt: !3748)
!3751 = !DILocation(line: 1028, column: 36, scope: !3672, inlinedAt: !3748)
!3752 = !DILocation(line: 1028, column: 48, scope: !3672, inlinedAt: !3748)
!3753 = !DILocation(line: 1030, column: 3, scope: !3672, inlinedAt: !3748)
!3754 = !DILocation(line: 1030, column: 30, scope: !3672, inlinedAt: !3748)
!3755 = !DILocation(line: 1030, column: 26, scope: !3672, inlinedAt: !3748)
!3756 = !DILocation(line: 179, column: 45, scope: !2217, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 1031, column: 3, scope: !3672, inlinedAt: !3748)
!3758 = !DILocation(line: 180, column: 33, scope: !2217, inlinedAt: !3757)
!3759 = !DILocation(line: 180, column: 57, scope: !2217, inlinedAt: !3757)
!3760 = !DILocation(line: 184, column: 6, scope: !2217, inlinedAt: !3757)
!3761 = !DILocation(line: 184, column: 12, scope: !2217, inlinedAt: !3757)
!3762 = !DILocation(line: 185, column: 8, scope: !2233, inlinedAt: !3757)
!3763 = !DILocation(line: 185, column: 23, scope: !2233, inlinedAt: !3757)
!3764 = !DILocation(line: 185, column: 19, scope: !2233, inlinedAt: !3757)
!3765 = !DILocation(line: 186, column: 5, scope: !2233, inlinedAt: !3757)
!3766 = !DILocation(line: 187, column: 6, scope: !2217, inlinedAt: !3757)
!3767 = !DILocation(line: 187, column: 17, scope: !2217, inlinedAt: !3757)
!3768 = !DILocation(line: 188, column: 6, scope: !2217, inlinedAt: !3757)
!3769 = !DILocation(line: 188, column: 18, scope: !2217, inlinedAt: !3757)
!3770 = !DILocation(line: 1032, column: 10, scope: !3672, inlinedAt: !3748)
!3771 = !DILocation(line: 1033, column: 1, scope: !3672, inlinedAt: !3748)
!3772 = !DILocation(line: 1039, column: 3, scope: !3732)
!3773 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !186, file: !186, line: 1043, type: !3774, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!45, !65, !65, !65, !180}
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3773, file: !186, line: 1043, type: !65)
!3778 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3773, file: !186, line: 1043, type: !65)
!3779 = !DILocalVariable(name: "arg", arg: 3, scope: !3773, file: !186, line: 1044, type: !65)
!3780 = !DILocalVariable(name: "argsize", arg: 4, scope: !3773, file: !186, line: 1044, type: !180)
!3781 = !DILocation(line: 1043, column: 34, scope: !3773)
!3782 = !DILocation(line: 1043, column: 58, scope: !3773)
!3783 = !DILocation(line: 1044, column: 34, scope: !3773)
!3784 = !DILocation(line: 1044, column: 46, scope: !3773)
!3785 = !DILocation(line: 1026, column: 28, scope: !3672, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1046, column: 10, scope: !3773)
!3787 = !DILocation(line: 1026, column: 43, scope: !3672, inlinedAt: !3786)
!3788 = !DILocation(line: 1027, column: 36, scope: !3672, inlinedAt: !3786)
!3789 = !DILocation(line: 1028, column: 36, scope: !3672, inlinedAt: !3786)
!3790 = !DILocation(line: 1028, column: 48, scope: !3672, inlinedAt: !3786)
!3791 = !DILocation(line: 1030, column: 3, scope: !3672, inlinedAt: !3786)
!3792 = !DILocation(line: 1030, column: 30, scope: !3672, inlinedAt: !3786)
!3793 = !DILocation(line: 1030, column: 26, scope: !3672, inlinedAt: !3786)
!3794 = !DILocation(line: 179, column: 45, scope: !2217, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 1031, column: 3, scope: !3672, inlinedAt: !3786)
!3796 = !DILocation(line: 180, column: 33, scope: !2217, inlinedAt: !3795)
!3797 = !DILocation(line: 180, column: 57, scope: !2217, inlinedAt: !3795)
!3798 = !DILocation(line: 184, column: 6, scope: !2217, inlinedAt: !3795)
!3799 = !DILocation(line: 184, column: 12, scope: !2217, inlinedAt: !3795)
!3800 = !DILocation(line: 185, column: 8, scope: !2233, inlinedAt: !3795)
!3801 = !DILocation(line: 185, column: 23, scope: !2233, inlinedAt: !3795)
!3802 = !DILocation(line: 185, column: 19, scope: !2233, inlinedAt: !3795)
!3803 = !DILocation(line: 186, column: 5, scope: !2233, inlinedAt: !3795)
!3804 = !DILocation(line: 187, column: 6, scope: !2217, inlinedAt: !3795)
!3805 = !DILocation(line: 187, column: 17, scope: !2217, inlinedAt: !3795)
!3806 = !DILocation(line: 188, column: 6, scope: !2217, inlinedAt: !3795)
!3807 = !DILocation(line: 188, column: 18, scope: !2217, inlinedAt: !3795)
!3808 = !DILocation(line: 1032, column: 10, scope: !3672, inlinedAt: !3786)
!3809 = !DILocation(line: 1033, column: 1, scope: !3672, inlinedAt: !3786)
!3810 = !DILocation(line: 1046, column: 3, scope: !3773)
!3811 = distinct !DISubprogram(name: "quote_n_mem", scope: !186, file: !186, line: 1061, type: !3812, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!65, !50, !65, !180}
!3814 = !{!3815, !3816, !3817}
!3815 = !DILocalVariable(name: "n", arg: 1, scope: !3811, file: !186, line: 1061, type: !50)
!3816 = !DILocalVariable(name: "arg", arg: 2, scope: !3811, file: !186, line: 1061, type: !65)
!3817 = !DILocalVariable(name: "argsize", arg: 3, scope: !3811, file: !186, line: 1061, type: !180)
!3818 = !DILocation(line: 1061, column: 18, scope: !3811)
!3819 = !DILocation(line: 1061, column: 33, scope: !3811)
!3820 = !DILocation(line: 1061, column: 45, scope: !3811)
!3821 = !DILocation(line: 1063, column: 10, scope: !3811)
!3822 = !DILocation(line: 1063, column: 3, scope: !3811)
!3823 = distinct !DISubprogram(name: "quote_mem", scope: !186, file: !186, line: 1067, type: !3824, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!65, !65, !180}
!3826 = !{!3827, !3828}
!3827 = !DILocalVariable(name: "arg", arg: 1, scope: !3823, file: !186, line: 1067, type: !65)
!3828 = !DILocalVariable(name: "argsize", arg: 2, scope: !3823, file: !186, line: 1067, type: !180)
!3829 = !DILocation(line: 1067, column: 24, scope: !3823)
!3830 = !DILocation(line: 1067, column: 36, scope: !3823)
!3831 = !DILocation(line: 1061, column: 18, scope: !3811, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 1069, column: 10, scope: !3823)
!3833 = !DILocation(line: 1061, column: 33, scope: !3811, inlinedAt: !3832)
!3834 = !DILocation(line: 1061, column: 45, scope: !3811, inlinedAt: !3832)
!3835 = !DILocation(line: 1063, column: 10, scope: !3811, inlinedAt: !3832)
!3836 = !DILocation(line: 1069, column: 3, scope: !3823)
!3837 = distinct !DISubprogram(name: "quote_n", scope: !186, file: !186, line: 1073, type: !3838, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3840)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!65, !50, !65}
!3840 = !{!3841, !3842}
!3841 = !DILocalVariable(name: "n", arg: 1, scope: !3837, file: !186, line: 1073, type: !50)
!3842 = !DILocalVariable(name: "arg", arg: 2, scope: !3837, file: !186, line: 1073, type: !65)
!3843 = !DILocation(line: 1073, column: 14, scope: !3837)
!3844 = !DILocation(line: 1073, column: 29, scope: !3837)
!3845 = !DILocation(line: 1061, column: 18, scope: !3811, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 1075, column: 10, scope: !3837)
!3847 = !DILocation(line: 1061, column: 33, scope: !3811, inlinedAt: !3846)
!3848 = !DILocation(line: 1061, column: 45, scope: !3811, inlinedAt: !3846)
!3849 = !DILocation(line: 1063, column: 10, scope: !3811, inlinedAt: !3846)
!3850 = !DILocation(line: 1075, column: 3, scope: !3837)
!3851 = distinct !DISubprogram(name: "quote", scope: !186, file: !186, line: 1079, type: !3852, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!65, !65}
!3854 = !{!3855}
!3855 = !DILocalVariable(name: "arg", arg: 1, scope: !3851, file: !186, line: 1079, type: !65)
!3856 = !DILocation(line: 1079, column: 20, scope: !3851)
!3857 = !DILocation(line: 1073, column: 14, scope: !3837, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 1081, column: 10, scope: !3851)
!3859 = !DILocation(line: 1073, column: 29, scope: !3837, inlinedAt: !3858)
!3860 = !DILocation(line: 1061, column: 18, scope: !3811, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 1075, column: 10, scope: !3837, inlinedAt: !3858)
!3862 = !DILocation(line: 1061, column: 33, scope: !3811, inlinedAt: !3861)
!3863 = !DILocation(line: 1061, column: 45, scope: !3811, inlinedAt: !3861)
!3864 = !DILocation(line: 1063, column: 10, scope: !3811, inlinedAt: !3861)
!3865 = !DILocation(line: 1081, column: 3, scope: !3851)
!3866 = distinct !DISubprogram(name: "version_etc_arn", scope: !239, file: !239, line: 62, type: !3867, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !3904)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{null, !3869, !65, !65, !65, !3903, !180}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !795, line: 7, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !797, line: 49, size: 1728, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3871, file: !797, line: 51, baseType: !50, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3871, file: !797, line: 54, baseType: !45, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3871, file: !797, line: 55, baseType: !45, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3871, file: !797, line: 56, baseType: !45, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3871, file: !797, line: 57, baseType: !45, size: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3871, file: !797, line: 58, baseType: !45, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3871, file: !797, line: 59, baseType: !45, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3871, file: !797, line: 60, baseType: !45, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3871, file: !797, line: 61, baseType: !45, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3871, file: !797, line: 64, baseType: !45, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3871, file: !797, line: 65, baseType: !45, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3871, file: !797, line: 66, baseType: !45, size: 64, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3871, file: !797, line: 68, baseType: !812, size: 64, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3871, file: !797, line: 70, baseType: !3887, size: 64, offset: 832)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3871, file: !797, line: 72, baseType: !50, size: 32, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3871, file: !797, line: 73, baseType: !50, size: 32, offset: 928)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3871, file: !797, line: 74, baseType: !819, size: 64, offset: 960)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3871, file: !797, line: 77, baseType: !51, size: 16, offset: 1024)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3871, file: !797, line: 78, baseType: !823, size: 8, offset: 1040)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3871, file: !797, line: 79, baseType: !825, size: 8, offset: 1048)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3871, file: !797, line: 81, baseType: !829, size: 64, offset: 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3871, file: !797, line: 89, baseType: !832, size: 64, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3871, file: !797, line: 91, baseType: !834, size: 64, offset: 1216)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3871, file: !797, line: 92, baseType: !837, size: 64, offset: 1280)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3871, file: !797, line: 93, baseType: !3887, size: 64, offset: 1344)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3871, file: !797, line: 94, baseType: !47, size: 64, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3871, file: !797, line: 95, baseType: !180, size: 64, offset: 1472)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3871, file: !797, line: 96, baseType: !50, size: 32, offset: 1536)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3871, file: !797, line: 98, baseType: !844, size: 160, offset: 1568)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910}
!3905 = !DILocalVariable(name: "stream", arg: 1, scope: !3866, file: !239, line: 62, type: !3869)
!3906 = !DILocalVariable(name: "command_name", arg: 2, scope: !3866, file: !239, line: 63, type: !65)
!3907 = !DILocalVariable(name: "package", arg: 3, scope: !3866, file: !239, line: 63, type: !65)
!3908 = !DILocalVariable(name: "version", arg: 4, scope: !3866, file: !239, line: 64, type: !65)
!3909 = !DILocalVariable(name: "authors", arg: 5, scope: !3866, file: !239, line: 65, type: !3903)
!3910 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3866, file: !239, line: 65, type: !180)
!3911 = !DILocation(line: 62, column: 24, scope: !3866)
!3912 = !DILocation(line: 63, column: 30, scope: !3866)
!3913 = !DILocation(line: 63, column: 56, scope: !3866)
!3914 = !DILocation(line: 64, column: 30, scope: !3866)
!3915 = !DILocation(line: 65, column: 39, scope: !3866)
!3916 = !DILocation(line: 65, column: 55, scope: !3866)
!3917 = !DILocation(line: 67, column: 7, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3866, file: !239, line: 67, column: 7)
!3919 = !DILocation(line: 67, column: 7, scope: !3866)
!3920 = !DILocation(line: 68, column: 5, scope: !3918)
!3921 = !DILocation(line: 70, column: 5, scope: !3918)
!3922 = !DILocation(line: 84, column: 3, scope: !3866)
!3923 = !DILocation(line: 86, column: 3, scope: !3866)
!3924 = !DILocation(line: 95, column: 3, scope: !3866)
!3925 = !DILocation(line: 99, column: 7, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3866, file: !239, line: 96, column: 5)
!3927 = !DILocation(line: 102, column: 7, scope: !3926)
!3928 = !DILocation(line: 103, column: 7, scope: !3926)
!3929 = !DILocation(line: 106, column: 7, scope: !3926)
!3930 = !DILocation(line: 107, column: 7, scope: !3926)
!3931 = !DILocation(line: 110, column: 7, scope: !3926)
!3932 = !DILocation(line: 112, column: 7, scope: !3926)
!3933 = !DILocation(line: 117, column: 7, scope: !3926)
!3934 = !DILocation(line: 119, column: 7, scope: !3926)
!3935 = !DILocation(line: 124, column: 7, scope: !3926)
!3936 = !DILocation(line: 126, column: 7, scope: !3926)
!3937 = !DILocation(line: 131, column: 7, scope: !3926)
!3938 = !DILocation(line: 134, column: 7, scope: !3926)
!3939 = !DILocation(line: 139, column: 7, scope: !3926)
!3940 = !DILocation(line: 142, column: 7, scope: !3926)
!3941 = !DILocation(line: 147, column: 7, scope: !3926)
!3942 = !DILocation(line: 151, column: 7, scope: !3926)
!3943 = !DILocation(line: 156, column: 7, scope: !3926)
!3944 = !DILocation(line: 160, column: 7, scope: !3926)
!3945 = !DILocation(line: 167, column: 7, scope: !3926)
!3946 = !DILocation(line: 171, column: 7, scope: !3926)
!3947 = !DILocation(line: 173, column: 1, scope: !3866)
!3948 = distinct !DISubprogram(name: "version_etc_ar", scope: !239, file: !239, line: 180, type: !3949, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3869, !65, !65, !65, !3903}
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957}
!3952 = !DILocalVariable(name: "stream", arg: 1, scope: !3948, file: !239, line: 180, type: !3869)
!3953 = !DILocalVariable(name: "command_name", arg: 2, scope: !3948, file: !239, line: 181, type: !65)
!3954 = !DILocalVariable(name: "package", arg: 3, scope: !3948, file: !239, line: 181, type: !65)
!3955 = !DILocalVariable(name: "version", arg: 4, scope: !3948, file: !239, line: 182, type: !65)
!3956 = !DILocalVariable(name: "authors", arg: 5, scope: !3948, file: !239, line: 182, type: !3903)
!3957 = !DILocalVariable(name: "n_authors", scope: !3948, file: !239, line: 184, type: !180)
!3958 = !DILocation(line: 180, column: 23, scope: !3948)
!3959 = !DILocation(line: 181, column: 29, scope: !3948)
!3960 = !DILocation(line: 181, column: 55, scope: !3948)
!3961 = !DILocation(line: 182, column: 29, scope: !3948)
!3962 = !DILocation(line: 182, column: 59, scope: !3948)
!3963 = !DILocation(line: 184, column: 10, scope: !3948)
!3964 = !DILocation(line: 186, column: 8, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3948, file: !239, line: 186, column: 3)
!3966 = !DILocation(line: 0, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3965, file: !239, line: 186, column: 3)
!3968 = !DILocation(line: 186, column: 23, scope: !3967)
!3969 = !DILocation(line: 186, column: 3, scope: !3965)
!3970 = !DILocation(line: 186, column: 52, scope: !3967)
!3971 = distinct !{!3971, !3969, !3972}
!3972 = !DILocation(line: 187, column: 5, scope: !3965)
!3973 = !DILocation(line: 188, column: 3, scope: !3948)
!3974 = !DILocation(line: 189, column: 1, scope: !3948)
!3975 = distinct !DISubprogram(name: "version_etc_va", scope: !239, file: !239, line: 196, type: !3976, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !3985)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !3869, !65, !65, !65, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !236, line: 189, size: 192, elements: !3980)
!3980 = !{!3981, !3982, !3983, !3984}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3979, file: !236, line: 189, baseType: !7, size: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3979, file: !236, line: 189, baseType: !7, size: 32, offset: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3979, file: !236, line: 189, baseType: !47, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3979, file: !236, line: 189, baseType: !47, size: 64, offset: 128)
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3986 = !DILocalVariable(name: "stream", arg: 1, scope: !3975, file: !239, line: 196, type: !3869)
!3987 = !DILocalVariable(name: "command_name", arg: 2, scope: !3975, file: !239, line: 197, type: !65)
!3988 = !DILocalVariable(name: "package", arg: 3, scope: !3975, file: !239, line: 197, type: !65)
!3989 = !DILocalVariable(name: "version", arg: 4, scope: !3975, file: !239, line: 198, type: !65)
!3990 = !DILocalVariable(name: "authors", arg: 5, scope: !3975, file: !239, line: 198, type: !3978)
!3991 = !DILocalVariable(name: "n_authors", scope: !3975, file: !239, line: 200, type: !180)
!3992 = !DILocalVariable(name: "authtab", scope: !3975, file: !239, line: 201, type: !3993)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 640, elements: !89)
!3994 = !DILocation(line: 196, column: 23, scope: !3975)
!3995 = !DILocation(line: 197, column: 29, scope: !3975)
!3996 = !DILocation(line: 197, column: 55, scope: !3975)
!3997 = !DILocation(line: 198, column: 29, scope: !3975)
!3998 = !DILocation(line: 198, column: 46, scope: !3975)
!3999 = !DILocation(line: 201, column: 3, scope: !3975)
!4000 = !DILocation(line: 201, column: 15, scope: !3975)
!4001 = !DILocation(line: 200, column: 10, scope: !3975)
!4002 = !DILocation(line: 205, column: 35, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !239, line: 203, column: 3)
!4004 = distinct !DILexicalBlock(scope: !3975, file: !239, line: 203, column: 3)
!4005 = !DILocation(line: 205, column: 14, scope: !4003)
!4006 = !DILocation(line: 205, column: 33, scope: !4003)
!4007 = !DILocation(line: 205, column: 67, scope: !4003)
!4008 = !DILocation(line: 203, column: 3, scope: !4004)
!4009 = !DILocation(line: 0, scope: !4003)
!4010 = !DILocation(line: 208, column: 3, scope: !3975)
!4011 = !DILocation(line: 210, column: 1, scope: !3975)
!4012 = distinct !DISubprogram(name: "version_etc", scope: !239, file: !239, line: 227, type: !4013, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !4015)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !3869, !65, !65, !65, null}
!4015 = !{!4016, !4017, !4018, !4019, !4020}
!4016 = !DILocalVariable(name: "stream", arg: 1, scope: !4012, file: !239, line: 227, type: !3869)
!4017 = !DILocalVariable(name: "command_name", arg: 2, scope: !4012, file: !239, line: 228, type: !65)
!4018 = !DILocalVariable(name: "package", arg: 3, scope: !4012, file: !239, line: 228, type: !65)
!4019 = !DILocalVariable(name: "version", arg: 4, scope: !4012, file: !239, line: 229, type: !65)
!4020 = !DILocalVariable(name: "authors", scope: !4012, file: !239, line: 231, type: !4021)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2020, line: 52, baseType: !4022)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4023, line: 48, baseType: !4024)
!4023 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !236, line: 231, baseType: !4025)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3979, size: 192, elements: !826)
!4026 = !DILocation(line: 227, column: 20, scope: !4012)
!4027 = !DILocation(line: 228, column: 26, scope: !4012)
!4028 = !DILocation(line: 228, column: 52, scope: !4012)
!4029 = !DILocation(line: 229, column: 26, scope: !4012)
!4030 = !DILocation(line: 231, column: 3, scope: !4012)
!4031 = !DILocation(line: 231, column: 11, scope: !4012)
!4032 = !DILocation(line: 233, column: 3, scope: !4012)
!4033 = !DILocation(line: 234, column: 3, scope: !4012)
!4034 = !DILocation(line: 235, column: 3, scope: !4012)
!4035 = !DILocation(line: 236, column: 1, scope: !4012)
!4036 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !239, file: !239, line: 239, type: !728, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !145)
!4037 = !DILocation(line: 245, column: 3, scope: !4036)
!4038 = !DILocation(line: 251, column: 3, scope: !4036)
!4039 = !DILocation(line: 256, column: 3, scope: !4036)
!4040 = !DILocation(line: 258, column: 1, scope: !4036)
!4041 = distinct !DISubprogram(name: "xnmalloc", scope: !247, file: !247, line: 99, type: !4042, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!47, !180, !180}
!4044 = !{!4045, !4046}
!4045 = !DILocalVariable(name: "n", arg: 1, scope: !4041, file: !247, line: 99, type: !180)
!4046 = !DILocalVariable(name: "s", arg: 2, scope: !4041, file: !247, line: 99, type: !180)
!4047 = !DILocation(line: 99, column: 18, scope: !4041)
!4048 = !DILocation(line: 99, column: 28, scope: !4041)
!4049 = !DILocation(line: 101, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4041, file: !247, line: 101, column: 7)
!4051 = !DILocation(line: 101, column: 7, scope: !4041)
!4052 = !DILocation(line: 102, column: 5, scope: !4050)
!4053 = !DILocation(line: 103, column: 21, scope: !4041)
!4054 = !DILocalVariable(name: "n", arg: 1, scope: !4055, file: !4056, line: 39, type: !180)
!4055 = distinct !DISubprogram(name: "xmalloc", scope: !4056, file: !4056, line: 39, type: !4057, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4059)
!4056 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!47, !180}
!4059 = !{!4054, !4060}
!4060 = !DILocalVariable(name: "p", scope: !4055, file: !4056, line: 41, type: !47)
!4061 = !DILocation(line: 39, column: 17, scope: !4055, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 103, column: 10, scope: !4041)
!4063 = !DILocation(line: 41, column: 13, scope: !4055, inlinedAt: !4062)
!4064 = !DILocation(line: 41, column: 9, scope: !4055, inlinedAt: !4062)
!4065 = !DILocation(line: 42, column: 8, scope: !4066, inlinedAt: !4062)
!4066 = distinct !DILexicalBlock(scope: !4055, file: !4056, line: 42, column: 7)
!4067 = !DILocation(line: 42, column: 15, scope: !4066, inlinedAt: !4062)
!4068 = !DILocation(line: 42, column: 10, scope: !4066, inlinedAt: !4062)
!4069 = !DILocation(line: 43, column: 5, scope: !4066, inlinedAt: !4062)
!4070 = !DILocation(line: 103, column: 3, scope: !4041)
!4071 = !DILocation(line: 39, column: 17, scope: !4055)
!4072 = !DILocation(line: 41, column: 13, scope: !4055)
!4073 = !DILocation(line: 41, column: 9, scope: !4055)
!4074 = !DILocation(line: 42, column: 8, scope: !4066)
!4075 = !DILocation(line: 42, column: 15, scope: !4066)
!4076 = !DILocation(line: 42, column: 10, scope: !4066)
!4077 = !DILocation(line: 43, column: 5, scope: !4066)
!4078 = !DILocation(line: 44, column: 3, scope: !4055)
!4079 = distinct !DISubprogram(name: "xnrealloc", scope: !247, file: !247, line: 112, type: !4080, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!47, !47, !180, !180}
!4082 = !{!4083, !4084, !4085}
!4083 = !DILocalVariable(name: "p", arg: 1, scope: !4079, file: !247, line: 112, type: !47)
!4084 = !DILocalVariable(name: "n", arg: 2, scope: !4079, file: !247, line: 112, type: !180)
!4085 = !DILocalVariable(name: "s", arg: 3, scope: !4079, file: !247, line: 112, type: !180)
!4086 = !DILocation(line: 112, column: 18, scope: !4079)
!4087 = !DILocation(line: 112, column: 28, scope: !4079)
!4088 = !DILocation(line: 112, column: 38, scope: !4079)
!4089 = !DILocation(line: 114, column: 7, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4079, file: !247, line: 114, column: 7)
!4091 = !DILocation(line: 114, column: 7, scope: !4079)
!4092 = !DILocation(line: 115, column: 5, scope: !4090)
!4093 = !DILocation(line: 116, column: 25, scope: !4079)
!4094 = !DILocalVariable(name: "p", arg: 1, scope: !4095, file: !4056, line: 51, type: !47)
!4095 = distinct !DISubprogram(name: "xrealloc", scope: !4056, file: !4056, line: 51, type: !4096, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4098)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!47, !47, !180}
!4098 = !{!4094, !4099}
!4099 = !DILocalVariable(name: "n", arg: 2, scope: !4095, file: !4056, line: 51, type: !180)
!4100 = !DILocation(line: 51, column: 17, scope: !4095, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 116, column: 10, scope: !4079)
!4102 = !DILocation(line: 51, column: 27, scope: !4095, inlinedAt: !4101)
!4103 = !DILocation(line: 53, column: 8, scope: !4104, inlinedAt: !4101)
!4104 = distinct !DILexicalBlock(scope: !4095, file: !4056, line: 53, column: 7)
!4105 = !DILocation(line: 53, column: 13, scope: !4104, inlinedAt: !4101)
!4106 = !DILocation(line: 53, column: 10, scope: !4104, inlinedAt: !4101)
!4107 = !DILocation(line: 57, column: 7, scope: !4108, inlinedAt: !4101)
!4108 = distinct !DILexicalBlock(scope: !4104, file: !4056, line: 54, column: 5)
!4109 = !DILocation(line: 58, column: 7, scope: !4108, inlinedAt: !4101)
!4110 = !DILocation(line: 61, column: 7, scope: !4095, inlinedAt: !4101)
!4111 = !DILocation(line: 62, column: 8, scope: !4112, inlinedAt: !4101)
!4112 = distinct !DILexicalBlock(scope: !4095, file: !4056, line: 62, column: 7)
!4113 = !DILocation(line: 62, column: 13, scope: !4112, inlinedAt: !4101)
!4114 = !DILocation(line: 62, column: 10, scope: !4112, inlinedAt: !4101)
!4115 = !DILocation(line: 63, column: 5, scope: !4112, inlinedAt: !4101)
!4116 = !DILocation(line: 0, scope: !4095, inlinedAt: !4101)
!4117 = !DILocation(line: 116, column: 3, scope: !4079)
!4118 = !DILocation(line: 51, column: 17, scope: !4095)
!4119 = !DILocation(line: 51, column: 27, scope: !4095)
!4120 = !DILocation(line: 53, column: 8, scope: !4104)
!4121 = !DILocation(line: 53, column: 13, scope: !4104)
!4122 = !DILocation(line: 53, column: 10, scope: !4104)
!4123 = !DILocation(line: 57, column: 7, scope: !4108)
!4124 = !DILocation(line: 58, column: 7, scope: !4108)
!4125 = !DILocation(line: 61, column: 7, scope: !4095)
!4126 = !DILocation(line: 62, column: 8, scope: !4112)
!4127 = !DILocation(line: 62, column: 13, scope: !4112)
!4128 = !DILocation(line: 62, column: 10, scope: !4112)
!4129 = !DILocation(line: 63, column: 5, scope: !4112)
!4130 = !DILocation(line: 0, scope: !4095)
!4131 = !DILocation(line: 65, column: 1, scope: !4095)
!4132 = !DILocation(line: 174, column: 19, scope: !248)
!4133 = !DILocation(line: 174, column: 30, scope: !248)
!4134 = !DILocation(line: 174, column: 41, scope: !248)
!4135 = !DILocation(line: 176, column: 14, scope: !248)
!4136 = !DILocation(line: 176, column: 10, scope: !248)
!4137 = !DILocation(line: 178, column: 9, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !248, file: !247, line: 178, column: 7)
!4139 = !DILocation(line: 178, column: 7, scope: !248)
!4140 = !DILocation(line: 180, column: 13, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !247, line: 180, column: 11)
!4142 = distinct !DILexicalBlock(scope: !4138, file: !247, line: 179, column: 5)
!4143 = !DILocation(line: 180, column: 11, scope: !4142)
!4144 = !DILocation(line: 188, column: 30, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4141, file: !247, line: 181, column: 9)
!4146 = !DILocation(line: 189, column: 16, scope: !4145)
!4147 = !DILocation(line: 189, column: 13, scope: !4145)
!4148 = !DILocation(line: 190, column: 9, scope: !4145)
!4149 = !DILocation(line: 0, scope: !4145)
!4150 = !DILocation(line: 191, column: 11, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4142, file: !247, line: 191, column: 11)
!4152 = !DILocation(line: 191, column: 11, scope: !4142)
!4153 = !DILocation(line: 206, column: 7, scope: !248)
!4154 = !DILocation(line: 207, column: 25, scope: !248)
!4155 = !DILocation(line: 51, column: 17, scope: !4095, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 207, column: 10, scope: !248)
!4157 = !DILocation(line: 51, column: 27, scope: !4095, inlinedAt: !4156)
!4158 = !DILocation(line: 53, column: 10, scope: !4104, inlinedAt: !4156)
!4159 = !DILocation(line: 192, column: 9, scope: !4151)
!4160 = !DILocation(line: 200, column: 69, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !247, line: 200, column: 11)
!4162 = distinct !DILexicalBlock(scope: !4138, file: !247, line: 195, column: 5)
!4163 = !DILocation(line: 201, column: 11, scope: !4161)
!4164 = !DILocation(line: 200, column: 11, scope: !4162)
!4165 = !DILocation(line: 202, column: 9, scope: !4161)
!4166 = !DILocation(line: 203, column: 14, scope: !4162)
!4167 = !DILocation(line: 203, column: 18, scope: !4162)
!4168 = !DILocation(line: 203, column: 9, scope: !4162)
!4169 = !DILocation(line: 53, column: 8, scope: !4104, inlinedAt: !4156)
!4170 = !DILocation(line: 57, column: 7, scope: !4108, inlinedAt: !4156)
!4171 = !DILocation(line: 58, column: 7, scope: !4108, inlinedAt: !4156)
!4172 = !DILocation(line: 61, column: 7, scope: !4095, inlinedAt: !4156)
!4173 = !DILocation(line: 62, column: 8, scope: !4112, inlinedAt: !4156)
!4174 = !DILocation(line: 62, column: 13, scope: !4112, inlinedAt: !4156)
!4175 = !DILocation(line: 62, column: 10, scope: !4112, inlinedAt: !4156)
!4176 = !DILocation(line: 63, column: 5, scope: !4112, inlinedAt: !4156)
!4177 = !DILocation(line: 0, scope: !4095, inlinedAt: !4156)
!4178 = !DILocation(line: 207, column: 3, scope: !248)
!4179 = distinct !DISubprogram(name: "xcharalloc", scope: !247, file: !247, line: 216, type: !3151, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4180)
!4180 = !{!4181}
!4181 = !DILocalVariable(name: "n", arg: 1, scope: !4179, file: !247, line: 216, type: !180)
!4182 = !DILocation(line: 216, column: 20, scope: !4179)
!4183 = !DILocation(line: 39, column: 17, scope: !4055, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 218, column: 10, scope: !4179)
!4185 = !DILocation(line: 41, column: 13, scope: !4055, inlinedAt: !4184)
!4186 = !DILocation(line: 41, column: 9, scope: !4055, inlinedAt: !4184)
!4187 = !DILocation(line: 42, column: 8, scope: !4066, inlinedAt: !4184)
!4188 = !DILocation(line: 42, column: 15, scope: !4066, inlinedAt: !4184)
!4189 = !DILocation(line: 42, column: 10, scope: !4066, inlinedAt: !4184)
!4190 = !DILocation(line: 43, column: 5, scope: !4066, inlinedAt: !4184)
!4191 = !DILocation(line: 218, column: 3, scope: !4179)
!4192 = distinct !DISubprogram(name: "x2realloc", scope: !4056, file: !4056, line: 74, type: !4193, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4195)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!47, !47, !251}
!4195 = !{!4196, !4197}
!4196 = !DILocalVariable(name: "p", arg: 1, scope: !4192, file: !4056, line: 74, type: !47)
!4197 = !DILocalVariable(name: "pn", arg: 2, scope: !4192, file: !4056, line: 74, type: !251)
!4198 = !DILocation(line: 74, column: 18, scope: !4192)
!4199 = !DILocation(line: 74, column: 29, scope: !4192)
!4200 = !DILocation(line: 174, column: 19, scope: !248, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 76, column: 10, scope: !4192)
!4202 = !DILocation(line: 174, column: 30, scope: !248, inlinedAt: !4201)
!4203 = !DILocation(line: 174, column: 41, scope: !248, inlinedAt: !4201)
!4204 = !DILocation(line: 176, column: 14, scope: !248, inlinedAt: !4201)
!4205 = !DILocation(line: 176, column: 10, scope: !248, inlinedAt: !4201)
!4206 = !DILocation(line: 178, column: 9, scope: !4138, inlinedAt: !4201)
!4207 = !DILocation(line: 178, column: 7, scope: !248, inlinedAt: !4201)
!4208 = !DILocation(line: 180, column: 13, scope: !4141, inlinedAt: !4201)
!4209 = !DILocation(line: 180, column: 11, scope: !4142, inlinedAt: !4201)
!4210 = !DILocation(line: 191, column: 11, scope: !4151, inlinedAt: !4201)
!4211 = !DILocation(line: 191, column: 11, scope: !4142, inlinedAt: !4201)
!4212 = !DILocation(line: 206, column: 7, scope: !248, inlinedAt: !4201)
!4213 = !DILocation(line: 51, column: 17, scope: !4095, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 207, column: 10, scope: !248, inlinedAt: !4201)
!4215 = !DILocation(line: 51, column: 27, scope: !4095, inlinedAt: !4214)
!4216 = !DILocation(line: 53, column: 10, scope: !4104, inlinedAt: !4214)
!4217 = !DILocation(line: 192, column: 9, scope: !4151, inlinedAt: !4201)
!4218 = !DILocation(line: 201, column: 11, scope: !4161, inlinedAt: !4201)
!4219 = !DILocation(line: 200, column: 11, scope: !4162, inlinedAt: !4201)
!4220 = !DILocation(line: 202, column: 9, scope: !4161, inlinedAt: !4201)
!4221 = !DILocation(line: 203, column: 14, scope: !4162, inlinedAt: !4201)
!4222 = !DILocation(line: 203, column: 18, scope: !4162, inlinedAt: !4201)
!4223 = !DILocation(line: 203, column: 9, scope: !4162, inlinedAt: !4201)
!4224 = !DILocation(line: 53, column: 8, scope: !4104, inlinedAt: !4214)
!4225 = !DILocation(line: 57, column: 7, scope: !4108, inlinedAt: !4214)
!4226 = !DILocation(line: 58, column: 7, scope: !4108, inlinedAt: !4214)
!4227 = !DILocation(line: 61, column: 7, scope: !4095, inlinedAt: !4214)
!4228 = !DILocation(line: 62, column: 8, scope: !4112, inlinedAt: !4214)
!4229 = !DILocation(line: 62, column: 13, scope: !4112, inlinedAt: !4214)
!4230 = !DILocation(line: 62, column: 10, scope: !4112, inlinedAt: !4214)
!4231 = !DILocation(line: 63, column: 5, scope: !4112, inlinedAt: !4214)
!4232 = !DILocation(line: 0, scope: !4095, inlinedAt: !4214)
!4233 = !DILocation(line: 76, column: 3, scope: !4192)
!4234 = distinct !DISubprogram(name: "xzalloc", scope: !4056, file: !4056, line: 84, type: !4057, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4235)
!4235 = !{!4236}
!4236 = !DILocalVariable(name: "s", arg: 1, scope: !4234, file: !4056, line: 84, type: !180)
!4237 = !DILocation(line: 84, column: 17, scope: !4234)
!4238 = !DILocation(line: 39, column: 17, scope: !4055, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 86, column: 18, scope: !4234)
!4240 = !DILocation(line: 41, column: 13, scope: !4055, inlinedAt: !4239)
!4241 = !DILocation(line: 41, column: 9, scope: !4055, inlinedAt: !4239)
!4242 = !DILocation(line: 42, column: 8, scope: !4066, inlinedAt: !4239)
!4243 = !DILocation(line: 42, column: 15, scope: !4066, inlinedAt: !4239)
!4244 = !DILocation(line: 42, column: 10, scope: !4066, inlinedAt: !4239)
!4245 = !DILocation(line: 43, column: 5, scope: !4066, inlinedAt: !4239)
!4246 = !DILocation(line: 86, column: 10, scope: !4234)
!4247 = !DILocation(line: 86, column: 3, scope: !4234)
!4248 = distinct !DISubprogram(name: "xcalloc", scope: !4056, file: !4056, line: 93, type: !4042, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4249)
!4249 = !{!4250, !4251, !4252}
!4250 = !DILocalVariable(name: "n", arg: 1, scope: !4248, file: !4056, line: 93, type: !180)
!4251 = !DILocalVariable(name: "s", arg: 2, scope: !4248, file: !4056, line: 93, type: !180)
!4252 = !DILocalVariable(name: "p", scope: !4248, file: !4056, line: 95, type: !47)
!4253 = !DILocation(line: 93, column: 17, scope: !4248)
!4254 = !DILocation(line: 93, column: 27, scope: !4248)
!4255 = !DILocation(line: 100, column: 7, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4248, file: !4056, line: 100, column: 7)
!4257 = !DILocation(line: 101, column: 7, scope: !4256)
!4258 = !DILocation(line: 101, column: 18, scope: !4256)
!4259 = !DILocation(line: 95, column: 9, scope: !4248)
!4260 = !DILocation(line: 101, column: 16, scope: !4256)
!4261 = !DILocation(line: 100, column: 7, scope: !4248)
!4262 = !DILocation(line: 102, column: 5, scope: !4256)
!4263 = !DILocation(line: 103, column: 3, scope: !4248)
!4264 = distinct !DISubprogram(name: "xmemdup", scope: !4056, file: !4056, line: 111, type: !4265, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4269)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!47, !4267, !180}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "p", arg: 1, scope: !4264, file: !4056, line: 111, type: !4267)
!4271 = !DILocalVariable(name: "s", arg: 2, scope: !4264, file: !4056, line: 111, type: !180)
!4272 = !DILocation(line: 111, column: 22, scope: !4264)
!4273 = !DILocation(line: 111, column: 32, scope: !4264)
!4274 = !DILocation(line: 39, column: 17, scope: !4055, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 113, column: 18, scope: !4264)
!4276 = !DILocation(line: 41, column: 13, scope: !4055, inlinedAt: !4275)
!4277 = !DILocation(line: 41, column: 9, scope: !4055, inlinedAt: !4275)
!4278 = !DILocation(line: 42, column: 8, scope: !4066, inlinedAt: !4275)
!4279 = !DILocation(line: 42, column: 15, scope: !4066, inlinedAt: !4275)
!4280 = !DILocation(line: 42, column: 10, scope: !4066, inlinedAt: !4275)
!4281 = !DILocation(line: 43, column: 5, scope: !4066, inlinedAt: !4275)
!4282 = !DILocation(line: 113, column: 10, scope: !4264)
!4283 = !DILocation(line: 113, column: 3, scope: !4264)
!4284 = distinct !DISubprogram(name: "xstrdup", scope: !4056, file: !4056, line: 119, type: !3356, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !243, retainedNodes: !4285)
!4285 = !{!4286}
!4286 = !DILocalVariable(name: "string", arg: 1, scope: !4284, file: !4056, line: 119, type: !65)
!4287 = !DILocation(line: 119, column: 22, scope: !4284)
!4288 = !DILocation(line: 121, column: 27, scope: !4284)
!4289 = !DILocation(line: 121, column: 43, scope: !4284)
!4290 = !DILocation(line: 111, column: 22, scope: !4264, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 121, column: 10, scope: !4284)
!4292 = !DILocation(line: 111, column: 32, scope: !4264, inlinedAt: !4291)
!4293 = !DILocation(line: 39, column: 17, scope: !4055, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 113, column: 18, scope: !4264, inlinedAt: !4291)
!4295 = !DILocation(line: 41, column: 13, scope: !4055, inlinedAt: !4294)
!4296 = !DILocation(line: 41, column: 9, scope: !4055, inlinedAt: !4294)
!4297 = !DILocation(line: 42, column: 8, scope: !4066, inlinedAt: !4294)
!4298 = !DILocation(line: 42, column: 15, scope: !4066, inlinedAt: !4294)
!4299 = !DILocation(line: 42, column: 10, scope: !4066, inlinedAt: !4294)
!4300 = !DILocation(line: 43, column: 5, scope: !4066, inlinedAt: !4294)
!4301 = !DILocation(line: 113, column: 10, scope: !4264, inlinedAt: !4291)
!4302 = !DILocation(line: 121, column: 3, scope: !4284)
!4303 = distinct !DISubprogram(name: "xalloc_die", scope: !4304, file: !4304, line: 32, type: !728, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !260, retainedNodes: !145)
!4304 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4305 = !DILocation(line: 34, column: 10, scope: !4303)
!4306 = !DILocation(line: 34, column: 33, scope: !4303)
!4307 = !DILocation(line: 34, column: 3, scope: !4303)
!4308 = !DILocation(line: 40, column: 3, scope: !4303)
!4309 = distinct !DISubprogram(name: "xnumtoumax", scope: !4310, file: !4310, line: 36, type: !4311, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !4316)
!4310 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!4313, !65, !50, !4313, !4313, !65, !65, !50}
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !4314, line: 102, baseType: !4315)
!4314 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !820, line: 72, baseType: !182)
!4316 = !{!4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4326}
!4317 = !DILocalVariable(name: "n_str", arg: 1, scope: !4309, file: !4310, line: 36, type: !65)
!4318 = !DILocalVariable(name: "base", arg: 2, scope: !4309, file: !4310, line: 36, type: !50)
!4319 = !DILocalVariable(name: "min", arg: 3, scope: !4309, file: !4310, line: 36, type: !4313)
!4320 = !DILocalVariable(name: "max", arg: 4, scope: !4309, file: !4310, line: 36, type: !4313)
!4321 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4309, file: !4310, line: 37, type: !65)
!4322 = !DILocalVariable(name: "err", arg: 6, scope: !4309, file: !4310, line: 37, type: !65)
!4323 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4309, file: !4310, line: 37, type: !50)
!4324 = !DILocalVariable(name: "s_err", scope: !4309, file: !4310, line: 39, type: !4325)
!4325 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !266, line: 39, baseType: !265)
!4326 = !DILocalVariable(name: "tnum", scope: !4309, file: !4310, line: 41, type: !4313)
!4327 = !DILocation(line: 36, column: 26, scope: !4309)
!4328 = !DILocation(line: 36, column: 37, scope: !4309)
!4329 = !DILocation(line: 36, column: 57, scope: !4309)
!4330 = !DILocation(line: 36, column: 76, scope: !4309)
!4331 = !DILocation(line: 37, column: 26, scope: !4309)
!4332 = !DILocation(line: 37, column: 48, scope: !4309)
!4333 = !DILocation(line: 37, column: 57, scope: !4309)
!4334 = !DILocation(line: 41, column: 3, scope: !4309)
!4335 = !DILocation(line: 41, column: 17, scope: !4309)
!4336 = !DILocation(line: 42, column: 11, scope: !4309)
!4337 = !DILocation(line: 39, column: 16, scope: !4309)
!4338 = !DILocation(line: 44, column: 7, scope: !4309)
!4339 = !DILocation(line: 69, column: 50, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !4310, line: 67, column: 5)
!4341 = distinct !DILexicalBlock(scope: !4309, file: !4310, line: 66, column: 7)
!4342 = !DILocation(line: 46, column: 11, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !4310, line: 46, column: 11)
!4344 = distinct !DILexicalBlock(scope: !4345, file: !4310, line: 45, column: 5)
!4345 = distinct !DILexicalBlock(scope: !4309, file: !4310, line: 44, column: 7)
!4346 = !DILocation(line: 46, column: 16, scope: !4343)
!4347 = !DILocation(line: 46, column: 29, scope: !4343)
!4348 = !DILocation(line: 46, column: 22, scope: !4343)
!4349 = !DILocation(line: 51, column: 20, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !4310, line: 51, column: 15)
!4351 = distinct !DILexicalBlock(scope: !4343, file: !4310, line: 47, column: 9)
!4352 = !DILocation(line: 0, scope: !4350)
!4353 = !DILocation(line: 51, column: 15, scope: !4351)
!4354 = !DILocation(line: 52, column: 19, scope: !4350)
!4355 = !DILocation(line: 52, column: 13, scope: !4350)
!4356 = !DILocation(line: 58, column: 19, scope: !4350)
!4357 = !DILocation(line: 62, column: 5, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4345, file: !4310, line: 61, column: 12)
!4359 = !DILocation(line: 62, column: 11, scope: !4358)
!4360 = !DILocation(line: 64, column: 5, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4358, file: !4310, line: 63, column: 12)
!4362 = !DILocation(line: 64, column: 11, scope: !4361)
!4363 = !DILocation(line: 69, column: 14, scope: !4340)
!4364 = !DILocation(line: 69, column: 56, scope: !4340)
!4365 = !DILocation(line: 70, column: 29, scope: !4340)
!4366 = !DILocation(line: 69, column: 7, scope: !4340)
!4367 = !DILocation(line: 73, column: 10, scope: !4309)
!4368 = !DILocation(line: 71, column: 5, scope: !4340)
!4369 = !DILocation(line: 74, column: 1, scope: !4309)
!4370 = !DILocation(line: 73, column: 3, scope: !4309)
!4371 = distinct !DISubprogram(name: "xdectoumax", scope: !4310, file: !4310, line: 82, type: !4372, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!4313, !65, !4313, !4313, !65, !65, !50}
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380}
!4375 = !DILocalVariable(name: "n_str", arg: 1, scope: !4371, file: !4310, line: 82, type: !65)
!4376 = !DILocalVariable(name: "min", arg: 2, scope: !4371, file: !4310, line: 82, type: !4313)
!4377 = !DILocalVariable(name: "max", arg: 3, scope: !4371, file: !4310, line: 82, type: !4313)
!4378 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4371, file: !4310, line: 83, type: !65)
!4379 = !DILocalVariable(name: "err", arg: 5, scope: !4371, file: !4310, line: 83, type: !65)
!4380 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4371, file: !4310, line: 83, type: !50)
!4381 = !DILocation(line: 82, column: 26, scope: !4371)
!4382 = !DILocation(line: 82, column: 47, scope: !4371)
!4383 = !DILocation(line: 82, column: 66, scope: !4371)
!4384 = !DILocation(line: 83, column: 26, scope: !4371)
!4385 = !DILocation(line: 83, column: 48, scope: !4371)
!4386 = !DILocation(line: 83, column: 57, scope: !4371)
!4387 = !DILocation(line: 85, column: 10, scope: !4371)
!4388 = !DILocation(line: 85, column: 3, scope: !4371)
!4389 = distinct !DISubprogram(name: "xstrtoumax", scope: !4390, file: !4390, line: 88, type: !4391, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !273, retainedNodes: !4394)
!4390 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!4325, !65, !776, !50, !4393, !65}
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4407, !4408, !4411, !4412}
!4395 = !DILocalVariable(name: "s", arg: 1, scope: !4389, file: !4390, line: 88, type: !65)
!4396 = !DILocalVariable(name: "ptr", arg: 2, scope: !4389, file: !4390, line: 88, type: !776)
!4397 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4389, file: !4390, line: 88, type: !50)
!4398 = !DILocalVariable(name: "val", arg: 4, scope: !4389, file: !4390, line: 89, type: !4393)
!4399 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4389, file: !4390, line: 89, type: !65)
!4400 = !DILocalVariable(name: "t_ptr", scope: !4389, file: !4390, line: 91, type: !45)
!4401 = !DILocalVariable(name: "p", scope: !4389, file: !4390, line: 92, type: !776)
!4402 = !DILocalVariable(name: "tmp", scope: !4389, file: !4390, line: 93, type: !4313)
!4403 = !DILocalVariable(name: "err", scope: !4389, file: !4390, line: 94, type: !4325)
!4404 = !DILocalVariable(name: "q", scope: !4405, file: !4390, line: 104, type: !65)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !4390, line: 103, column: 5)
!4406 = distinct !DILexicalBlock(scope: !4389, file: !4390, line: 102, column: 7)
!4407 = !DILocalVariable(name: "ch", scope: !4405, file: !4390, line: 105, type: !49)
!4408 = !DILocalVariable(name: "base", scope: !4409, file: !4390, line: 141, type: !50)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !4390, line: 140, column: 5)
!4410 = distinct !DILexicalBlock(scope: !4389, file: !4390, line: 139, column: 7)
!4411 = !DILocalVariable(name: "suffixes", scope: !4409, file: !4390, line: 142, type: !50)
!4412 = !DILocalVariable(name: "overflow", scope: !4409, file: !4390, line: 143, type: !4325)
!4413 = !DILocation(line: 88, column: 24, scope: !4389)
!4414 = !DILocation(line: 88, column: 34, scope: !4389)
!4415 = !DILocation(line: 88, column: 43, scope: !4389)
!4416 = !DILocation(line: 89, column: 24, scope: !4389)
!4417 = !DILocation(line: 89, column: 41, scope: !4389)
!4418 = !DILocation(line: 91, column: 3, scope: !4389)
!4419 = !DILocation(line: 94, column: 16, scope: !4389)
!4420 = !DILocation(line: 96, column: 3, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !4390, line: 96, column: 3)
!4422 = distinct !DILexicalBlock(scope: !4389, file: !4390, line: 96, column: 3)
!4423 = !DILocation(line: 98, column: 8, scope: !4389)
!4424 = !DILocation(line: 92, column: 10, scope: !4389)
!4425 = !DILocation(line: 100, column: 3, scope: !4389)
!4426 = !DILocation(line: 100, column: 9, scope: !4389)
!4427 = !DILocation(line: 104, column: 19, scope: !4405)
!4428 = !DILocation(line: 105, column: 21, scope: !4405)
!4429 = !DILocation(line: 106, column: 14, scope: !4405)
!4430 = !DILocation(line: 106, column: 7, scope: !4405)
!4431 = !DILocation(line: 0, scope: !4405)
!4432 = !DILocation(line: 107, column: 15, scope: !4405)
!4433 = distinct !{!4433, !4430, !4434}
!4434 = !DILocation(line: 107, column: 17, scope: !4405)
!4435 = !DILocation(line: 108, column: 14, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4405, file: !4390, line: 108, column: 11)
!4437 = !DILocalVariable(name: "nptr", arg: 1, scope: !4438, file: !4439, line: 336, type: !4442)
!4438 = distinct !DISubprogram(name: "strtoumax", scope: !4439, file: !4439, line: 336, type: !4440, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !273, retainedNodes: !4444)
!4439 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!4313, !4442, !4443, !50}
!4442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!4443 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !776)
!4444 = !{!4437, !4445, !4446}
!4445 = !DILocalVariable(name: "endptr", arg: 2, scope: !4438, file: !4439, line: 336, type: !4443)
!4446 = !DILocalVariable(name: "base", arg: 3, scope: !4438, file: !4439, line: 336, type: !50)
!4447 = !DILocation(line: 336, column: 1, scope: !4438, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 112, column: 9, scope: !4389)
!4449 = !DILocation(line: 339, column: 10, scope: !4438, inlinedAt: !4448)
!4450 = !DILocation(line: 93, column: 14, scope: !4389)
!4451 = !DILocation(line: 114, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4389, file: !4390, line: 114, column: 7)
!4453 = !DILocation(line: 114, column: 10, scope: !4452)
!4454 = !DILocation(line: 114, column: 7, scope: !4389)
!4455 = !DILocation(line: 118, column: 11, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !4390, line: 118, column: 11)
!4457 = distinct !DILexicalBlock(scope: !4452, file: !4390, line: 115, column: 5)
!4458 = !DILocation(line: 118, column: 26, scope: !4456)
!4459 = !DILocation(line: 118, column: 29, scope: !4456)
!4460 = !DILocation(line: 118, column: 33, scope: !4456)
!4461 = !DILocation(line: 118, column: 36, scope: !4456)
!4462 = !DILocation(line: 118, column: 11, scope: !4457)
!4463 = !DILocation(line: 123, column: 12, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4452, file: !4390, line: 123, column: 12)
!4465 = !DILocation(line: 123, column: 12, scope: !4452)
!4466 = !DILocation(line: 128, column: 5, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !4390, line: 124, column: 5)
!4468 = !DILocation(line: 0, scope: !4389)
!4469 = !DILocation(line: 133, column: 8, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4389, file: !4390, line: 133, column: 7)
!4471 = !DILocation(line: 133, column: 7, scope: !4389)
!4472 = !DILocation(line: 135, column: 12, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4470, file: !4390, line: 134, column: 5)
!4474 = !DILocation(line: 136, column: 7, scope: !4473)
!4475 = !DILocation(line: 139, column: 7, scope: !4410)
!4476 = !DILocation(line: 139, column: 11, scope: !4410)
!4477 = !DILocation(line: 139, column: 7, scope: !4389)
!4478 = !DILocation(line: 141, column: 11, scope: !4409)
!4479 = !DILocation(line: 142, column: 11, scope: !4409)
!4480 = !DILocation(line: 145, column: 12, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4409, file: !4390, line: 145, column: 11)
!4482 = !DILocation(line: 145, column: 11, scope: !4409)
!4483 = !DILocation(line: 147, column: 16, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4481, file: !4390, line: 146, column: 9)
!4485 = !DILocation(line: 148, column: 22, scope: !4484)
!4486 = !DILocation(line: 148, column: 11, scope: !4484)
!4487 = !DILocation(line: 151, column: 7, scope: !4409)
!4488 = !DILocation(line: 163, column: 15, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !4390, line: 163, column: 15)
!4490 = distinct !DILexicalBlock(scope: !4409, file: !4390, line: 152, column: 9)
!4491 = !DILocation(line: 163, column: 15, scope: !4490)
!4492 = !DILocation(line: 164, column: 21, scope: !4489)
!4493 = !DILocation(line: 164, column: 13, scope: !4489)
!4494 = !DILocation(line: 167, column: 21, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !4390, line: 167, column: 21)
!4496 = distinct !DILexicalBlock(scope: !4489, file: !4390, line: 165, column: 15)
!4497 = !DILocation(line: 167, column: 29, scope: !4495)
!4498 = !DILocation(line: 167, column: 21, scope: !4496)
!4499 = !DILocation(line: 175, column: 17, scope: !4496)
!4500 = !DILocation(line: 179, column: 7, scope: !4409)
!4501 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4502, file: !4390, line: 60, type: !50)
!4502 = distinct !DISubprogram(name: "bkm_scale", scope: !4390, file: !4390, line: 60, type: !4503, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !273, retainedNodes: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!4325, !4393, !50}
!4505 = !{!4506, !4501}
!4506 = !DILocalVariable(name: "x", arg: 1, scope: !4502, file: !4390, line: 60, type: !4393)
!4507 = !DILocation(line: 60, column: 31, scope: !4502, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 182, column: 22, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4409, file: !4390, line: 180, column: 9)
!4510 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4508)
!4511 = distinct !DILexicalBlock(scope: !4502, file: !4390, line: 67, column: 7)
!4512 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4508)
!4513 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4508)
!4514 = !DILocation(line: 143, column: 20, scope: !4409)
!4515 = !DILocation(line: 183, column: 11, scope: !4509)
!4516 = !DILocation(line: 60, column: 31, scope: !4502, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 189, column: 22, scope: !4509)
!4518 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4517)
!4519 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4517)
!4520 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4517)
!4521 = !DILocation(line: 190, column: 11, scope: !4509)
!4522 = !DILocalVariable(name: "power", arg: 3, scope: !4523, file: !4390, line: 77, type: !50)
!4523 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4390, file: !4390, line: 77, type: !4524, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !273, retainedNodes: !4526)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!4325, !4393, !50, !50}
!4526 = !{!4527, !4528, !4522, !4529}
!4527 = !DILocalVariable(name: "x", arg: 1, scope: !4523, file: !4390, line: 77, type: !4393)
!4528 = !DILocalVariable(name: "base", arg: 2, scope: !4523, file: !4390, line: 77, type: !50)
!4529 = !DILocalVariable(name: "err", scope: !4523, file: !4390, line: 79, type: !4325)
!4530 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 197, column: 22, scope: !4509)
!4532 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4531)
!4533 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4531)
!4535 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4534)
!4536 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4534)
!4537 = !DILocation(line: 81, column: 9, scope: !4523, inlinedAt: !4531)
!4538 = !DILocation(line: 241, column: 11, scope: !4409)
!4539 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 202, column: 22, scope: !4509)
!4541 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4540)
!4542 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4540)
!4544 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4543)
!4545 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4543)
!4546 = !DILocation(line: 81, column: 9, scope: !4523, inlinedAt: !4540)
!4547 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 207, column: 22, scope: !4509)
!4549 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4548)
!4550 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4548)
!4552 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4551)
!4553 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4551)
!4554 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 212, column: 22, scope: !4509)
!4556 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4555)
!4557 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4555)
!4559 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4558)
!4560 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4558)
!4561 = !DILocation(line: 81, column: 9, scope: !4523, inlinedAt: !4555)
!4562 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 216, column: 22, scope: !4509)
!4564 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4563)
!4565 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4563)
!4567 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4566)
!4568 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4566)
!4569 = !DILocation(line: 81, column: 9, scope: !4523, inlinedAt: !4563)
!4570 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 221, column: 22, scope: !4509)
!4572 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4571)
!4573 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4571)
!4575 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4574)
!4576 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4574)
!4577 = !DILocation(line: 81, column: 9, scope: !4523, inlinedAt: !4571)
!4578 = !DILocation(line: 60, column: 31, scope: !4502, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 225, column: 22, scope: !4509)
!4580 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4579)
!4581 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4579)
!4582 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4579)
!4583 = !DILocation(line: 226, column: 11, scope: !4509)
!4584 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 229, column: 22, scope: !4509)
!4586 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4585)
!4587 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4585)
!4589 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4588)
!4590 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4588)
!4591 = !DILocation(line: 81, column: 9, scope: !4523, inlinedAt: !4585)
!4592 = !DILocation(line: 77, column: 50, scope: !4523, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 233, column: 22, scope: !4509)
!4594 = !DILocation(line: 79, column: 16, scope: !4523, inlinedAt: !4593)
!4595 = !DILocation(line: 67, column: 39, scope: !4511, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 81, column: 12, scope: !4523, inlinedAt: !4593)
!4597 = !DILocation(line: 72, column: 6, scope: !4502, inlinedAt: !4596)
!4598 = !DILocation(line: 67, column: 7, scope: !4502, inlinedAt: !4596)
!4599 = !DILocation(line: 81, column: 9, scope: !4523, inlinedAt: !4593)
!4600 = !DILocation(line: 237, column: 16, scope: !4509)
!4601 = !DILocation(line: 238, column: 22, scope: !4509)
!4602 = !DILocation(line: 238, column: 11, scope: !4509)
!4603 = !DILocation(line: 0, scope: !4456)
!4604 = !DILocation(line: 0, scope: !4509)
!4605 = !DILocation(line: 242, column: 10, scope: !4409)
!4606 = !DILocation(line: 243, column: 11, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4409, file: !4390, line: 243, column: 11)
!4608 = !DILocation(line: 244, column: 13, scope: !4607)
!4609 = !DILocation(line: 243, column: 11, scope: !4409)
!4610 = !DILocation(line: 119, column: 13, scope: !4456)
!4611 = !DILocation(line: 247, column: 8, scope: !4389)
!4612 = !DILocation(line: 248, column: 3, scope: !4389)
!4613 = !DILocation(line: 0, scope: !4436)
!4614 = !DILocation(line: 249, column: 1, scope: !4389)
!4615 = distinct !DISubprogram(name: "rpl_calloc", scope: !4616, file: !4616, line: 42, type: !4042, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !277, retainedNodes: !4617)
!4616 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4617 = !{!4618, !4619, !4620, !4621}
!4618 = !DILocalVariable(name: "n", arg: 1, scope: !4615, file: !4616, line: 42, type: !180)
!4619 = !DILocalVariable(name: "s", arg: 2, scope: !4615, file: !4616, line: 42, type: !180)
!4620 = !DILocalVariable(name: "result", scope: !4615, file: !4616, line: 44, type: !47)
!4621 = !DILocalVariable(name: "bytes", scope: !4622, file: !4616, line: 56, type: !180)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !4616, line: 53, column: 5)
!4623 = distinct !DILexicalBlock(scope: !4615, file: !4616, line: 47, column: 7)
!4624 = !DILocation(line: 42, column: 20, scope: !4615)
!4625 = !DILocation(line: 42, column: 30, scope: !4615)
!4626 = !DILocation(line: 47, column: 9, scope: !4623)
!4627 = !DILocation(line: 47, column: 19, scope: !4623)
!4628 = !DILocation(line: 47, column: 14, scope: !4623)
!4629 = !DILocation(line: 56, column: 24, scope: !4622)
!4630 = !DILocation(line: 56, column: 14, scope: !4622)
!4631 = !DILocation(line: 57, column: 17, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4622, file: !4616, line: 57, column: 11)
!4633 = !DILocation(line: 57, column: 21, scope: !4632)
!4634 = !DILocation(line: 57, column: 11, scope: !4622)
!4635 = !DILocation(line: 59, column: 11, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !4616, line: 58, column: 9)
!4637 = !DILocation(line: 59, column: 17, scope: !4636)
!4638 = !DILocation(line: 65, column: 12, scope: !4615)
!4639 = !DILocation(line: 44, column: 9, scope: !4615)
!4640 = !DILocation(line: 72, column: 3, scope: !4615)
!4641 = !DILocation(line: 0, scope: !4636)
!4642 = !DILocation(line: 73, column: 1, scope: !4615)
!4643 = distinct !DISubprogram(name: "rpl_fclose", scope: !4644, file: !4644, line: 58, type: !4645, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !4681)
!4644 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!50, !4647}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !795, line: 7, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !797, line: 49, size: 1728, elements: !4650)
!4650 = !{!4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4649, file: !797, line: 51, baseType: !50, size: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4649, file: !797, line: 54, baseType: !45, size: 64, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4649, file: !797, line: 55, baseType: !45, size: 64, offset: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4649, file: !797, line: 56, baseType: !45, size: 64, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4649, file: !797, line: 57, baseType: !45, size: 64, offset: 256)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4649, file: !797, line: 58, baseType: !45, size: 64, offset: 320)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4649, file: !797, line: 59, baseType: !45, size: 64, offset: 384)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4649, file: !797, line: 60, baseType: !45, size: 64, offset: 448)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4649, file: !797, line: 61, baseType: !45, size: 64, offset: 512)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4649, file: !797, line: 64, baseType: !45, size: 64, offset: 576)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4649, file: !797, line: 65, baseType: !45, size: 64, offset: 640)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4649, file: !797, line: 66, baseType: !45, size: 64, offset: 704)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4649, file: !797, line: 68, baseType: !812, size: 64, offset: 768)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4649, file: !797, line: 70, baseType: !4665, size: 64, offset: 832)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4649, file: !797, line: 72, baseType: !50, size: 32, offset: 896)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4649, file: !797, line: 73, baseType: !50, size: 32, offset: 928)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4649, file: !797, line: 74, baseType: !819, size: 64, offset: 960)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4649, file: !797, line: 77, baseType: !51, size: 16, offset: 1024)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4649, file: !797, line: 78, baseType: !823, size: 8, offset: 1040)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4649, file: !797, line: 79, baseType: !825, size: 8, offset: 1048)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4649, file: !797, line: 81, baseType: !829, size: 64, offset: 1088)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4649, file: !797, line: 89, baseType: !832, size: 64, offset: 1152)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4649, file: !797, line: 91, baseType: !834, size: 64, offset: 1216)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4649, file: !797, line: 92, baseType: !837, size: 64, offset: 1280)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4649, file: !797, line: 93, baseType: !4665, size: 64, offset: 1344)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4649, file: !797, line: 94, baseType: !47, size: 64, offset: 1408)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4649, file: !797, line: 95, baseType: !180, size: 64, offset: 1472)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4649, file: !797, line: 96, baseType: !50, size: 32, offset: 1536)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4649, file: !797, line: 98, baseType: !844, size: 160, offset: 1568)
!4681 = !{!4682, !4683, !4684, !4685}
!4682 = !DILocalVariable(name: "fp", arg: 1, scope: !4643, file: !4644, line: 58, type: !4647)
!4683 = !DILocalVariable(name: "saved_errno", scope: !4643, file: !4644, line: 60, type: !50)
!4684 = !DILocalVariable(name: "fd", scope: !4643, file: !4644, line: 61, type: !50)
!4685 = !DILocalVariable(name: "result", scope: !4643, file: !4644, line: 62, type: !50)
!4686 = !DILocation(line: 58, column: 19, scope: !4643)
!4687 = !DILocation(line: 60, column: 7, scope: !4643)
!4688 = !DILocation(line: 62, column: 7, scope: !4643)
!4689 = !DILocation(line: 65, column: 8, scope: !4643)
!4690 = !DILocation(line: 61, column: 7, scope: !4643)
!4691 = !DILocation(line: 66, column: 10, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 66, column: 7)
!4693 = !DILocation(line: 66, column: 7, scope: !4643)
!4694 = !DILocation(line: 67, column: 12, scope: !4692)
!4695 = !DILocation(line: 67, column: 5, scope: !4692)
!4696 = !DILocation(line: 72, column: 9, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 72, column: 7)
!4698 = !DILocation(line: 72, column: 23, scope: !4697)
!4699 = !DILocation(line: 72, column: 33, scope: !4697)
!4700 = !DILocation(line: 72, column: 26, scope: !4697)
!4701 = !DILocation(line: 72, column: 59, scope: !4697)
!4702 = !DILocation(line: 73, column: 7, scope: !4697)
!4703 = !DILocation(line: 73, column: 10, scope: !4697)
!4704 = !DILocation(line: 72, column: 7, scope: !4643)
!4705 = !DILocation(line: 100, column: 12, scope: !4643)
!4706 = !DILocation(line: 105, column: 7, scope: !4643)
!4707 = !DILocation(line: 74, column: 19, scope: !4697)
!4708 = !DILocation(line: 105, column: 19, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 105, column: 7)
!4710 = !DILocation(line: 107, column: 13, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4709, file: !4644, line: 106, column: 5)
!4712 = !DILocation(line: 109, column: 5, scope: !4711)
!4713 = !DILocation(line: 0, scope: !4643)
!4714 = !DILocation(line: 112, column: 1, scope: !4643)
!4715 = distinct !DISubprogram(name: "rpl_fflush", scope: !4716, file: !4716, line: 129, type: !4717, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !281, retainedNodes: !4753)
!4716 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!50, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !795, line: 7, baseType: !4721)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !797, line: 49, size: 1728, elements: !4722)
!4722 = !{!4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4721, file: !797, line: 51, baseType: !50, size: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4721, file: !797, line: 54, baseType: !45, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4721, file: !797, line: 55, baseType: !45, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4721, file: !797, line: 56, baseType: !45, size: 64, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4721, file: !797, line: 57, baseType: !45, size: 64, offset: 256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4721, file: !797, line: 58, baseType: !45, size: 64, offset: 320)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4721, file: !797, line: 59, baseType: !45, size: 64, offset: 384)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4721, file: !797, line: 60, baseType: !45, size: 64, offset: 448)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4721, file: !797, line: 61, baseType: !45, size: 64, offset: 512)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4721, file: !797, line: 64, baseType: !45, size: 64, offset: 576)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4721, file: !797, line: 65, baseType: !45, size: 64, offset: 640)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4721, file: !797, line: 66, baseType: !45, size: 64, offset: 704)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4721, file: !797, line: 68, baseType: !812, size: 64, offset: 768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4721, file: !797, line: 70, baseType: !4737, size: 64, offset: 832)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4721, file: !797, line: 72, baseType: !50, size: 32, offset: 896)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4721, file: !797, line: 73, baseType: !50, size: 32, offset: 928)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4721, file: !797, line: 74, baseType: !819, size: 64, offset: 960)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4721, file: !797, line: 77, baseType: !51, size: 16, offset: 1024)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4721, file: !797, line: 78, baseType: !823, size: 8, offset: 1040)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4721, file: !797, line: 79, baseType: !825, size: 8, offset: 1048)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4721, file: !797, line: 81, baseType: !829, size: 64, offset: 1088)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4721, file: !797, line: 89, baseType: !832, size: 64, offset: 1152)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4721, file: !797, line: 91, baseType: !834, size: 64, offset: 1216)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4721, file: !797, line: 92, baseType: !837, size: 64, offset: 1280)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4721, file: !797, line: 93, baseType: !4737, size: 64, offset: 1344)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4721, file: !797, line: 94, baseType: !47, size: 64, offset: 1408)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4721, file: !797, line: 95, baseType: !180, size: 64, offset: 1472)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4721, file: !797, line: 96, baseType: !50, size: 32, offset: 1536)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4721, file: !797, line: 98, baseType: !844, size: 160, offset: 1568)
!4753 = !{!4754}
!4754 = !DILocalVariable(name: "stream", arg: 1, scope: !4715, file: !4716, line: 129, type: !4719)
!4755 = !DILocation(line: 129, column: 19, scope: !4715)
!4756 = !DILocation(line: 150, column: 14, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4715, file: !4716, line: 150, column: 7)
!4758 = !DILocation(line: 150, column: 22, scope: !4757)
!4759 = !DILocation(line: 150, column: 27, scope: !4757)
!4760 = !DILocation(line: 150, column: 7, scope: !4715)
!4761 = !DILocation(line: 151, column: 12, scope: !4757)
!4762 = !DILocation(line: 151, column: 5, scope: !4757)
!4763 = !DILocalVariable(name: "fp", arg: 1, scope: !4764, file: !4716, line: 41, type: !4719)
!4764 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4716, file: !4716, line: 41, type: !4765, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !281, retainedNodes: !4767)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4719}
!4767 = !{!4763}
!4768 = !DILocation(line: 41, column: 48, scope: !4764, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 156, column: 3, scope: !4715)
!4770 = !DILocation(line: 43, column: 11, scope: !4771, inlinedAt: !4769)
!4771 = distinct !DILexicalBlock(scope: !4764, file: !4716, line: 43, column: 7)
!4772 = !{!1086, !860, i64 0}
!4773 = !DILocation(line: 43, column: 18, scope: !4771, inlinedAt: !4769)
!4774 = !DILocation(line: 43, column: 7, scope: !4764, inlinedAt: !4769)
!4775 = !DILocation(line: 45, column: 5, scope: !4771, inlinedAt: !4769)
!4776 = !DILocation(line: 158, column: 10, scope: !4715)
!4777 = !DILocation(line: 158, column: 3, scope: !4715)
!4778 = !DILocation(line: 0, scope: !4715)
!4779 = !DILocation(line: 232, column: 1, scope: !4715)
!4780 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4781, file: !4781, line: 28, type: !4782, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !4818)
!4781 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!50, !4784, !2019, !50}
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !795, line: 7, baseType: !4786)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !797, line: 49, size: 1728, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4786, file: !797, line: 51, baseType: !50, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4786, file: !797, line: 54, baseType: !45, size: 64, offset: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4786, file: !797, line: 55, baseType: !45, size: 64, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4786, file: !797, line: 56, baseType: !45, size: 64, offset: 192)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4786, file: !797, line: 57, baseType: !45, size: 64, offset: 256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4786, file: !797, line: 58, baseType: !45, size: 64, offset: 320)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4786, file: !797, line: 59, baseType: !45, size: 64, offset: 384)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4786, file: !797, line: 60, baseType: !45, size: 64, offset: 448)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4786, file: !797, line: 61, baseType: !45, size: 64, offset: 512)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4786, file: !797, line: 64, baseType: !45, size: 64, offset: 576)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4786, file: !797, line: 65, baseType: !45, size: 64, offset: 640)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4786, file: !797, line: 66, baseType: !45, size: 64, offset: 704)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4786, file: !797, line: 68, baseType: !812, size: 64, offset: 768)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4786, file: !797, line: 70, baseType: !4802, size: 64, offset: 832)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4786, file: !797, line: 72, baseType: !50, size: 32, offset: 896)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4786, file: !797, line: 73, baseType: !50, size: 32, offset: 928)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4786, file: !797, line: 74, baseType: !819, size: 64, offset: 960)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4786, file: !797, line: 77, baseType: !51, size: 16, offset: 1024)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4786, file: !797, line: 78, baseType: !823, size: 8, offset: 1040)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4786, file: !797, line: 79, baseType: !825, size: 8, offset: 1048)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4786, file: !797, line: 81, baseType: !829, size: 64, offset: 1088)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4786, file: !797, line: 89, baseType: !832, size: 64, offset: 1152)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4786, file: !797, line: 91, baseType: !834, size: 64, offset: 1216)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4786, file: !797, line: 92, baseType: !837, size: 64, offset: 1280)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4786, file: !797, line: 93, baseType: !4802, size: 64, offset: 1344)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4786, file: !797, line: 94, baseType: !47, size: 64, offset: 1408)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4786, file: !797, line: 95, baseType: !180, size: 64, offset: 1472)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4786, file: !797, line: 96, baseType: !50, size: 32, offset: 1536)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4786, file: !797, line: 98, baseType: !844, size: 160, offset: 1568)
!4818 = !{!4819, !4820, !4821, !4822}
!4819 = !DILocalVariable(name: "fp", arg: 1, scope: !4780, file: !4781, line: 28, type: !4784)
!4820 = !DILocalVariable(name: "offset", arg: 2, scope: !4780, file: !4781, line: 28, type: !2019)
!4821 = !DILocalVariable(name: "whence", arg: 3, scope: !4780, file: !4781, line: 28, type: !50)
!4822 = !DILocalVariable(name: "pos", scope: !4823, file: !4781, line: 117, type: !2019)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !4781, line: 113, column: 5)
!4824 = distinct !DILexicalBlock(scope: !4780, file: !4781, line: 52, column: 7)
!4825 = !DILocation(line: 28, column: 15, scope: !4780)
!4826 = !DILocation(line: 28, column: 25, scope: !4780)
!4827 = !DILocation(line: 28, column: 37, scope: !4780)
!4828 = !DILocation(line: 52, column: 11, scope: !4824)
!4829 = !DILocation(line: 52, column: 31, scope: !4824)
!4830 = !DILocation(line: 52, column: 24, scope: !4824)
!4831 = !DILocation(line: 53, column: 7, scope: !4824)
!4832 = !DILocation(line: 53, column: 14, scope: !4824)
!4833 = !DILocation(line: 53, column: 35, scope: !4824)
!4834 = !{!1086, !721, i64 32}
!4835 = !DILocation(line: 53, column: 28, scope: !4824)
!4836 = !DILocation(line: 54, column: 7, scope: !4824)
!4837 = !DILocation(line: 54, column: 14, scope: !4824)
!4838 = !{!1086, !721, i64 72}
!4839 = !DILocation(line: 54, column: 28, scope: !4824)
!4840 = !DILocation(line: 52, column: 7, scope: !4780)
!4841 = !DILocation(line: 117, column: 26, scope: !4823)
!4842 = !DILocation(line: 117, column: 19, scope: !4823)
!4843 = !DILocation(line: 117, column: 13, scope: !4823)
!4844 = !DILocation(line: 118, column: 15, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4823, file: !4781, line: 118, column: 11)
!4846 = !DILocation(line: 118, column: 11, scope: !4823)
!4847 = !DILocation(line: 129, column: 11, scope: !4823)
!4848 = !DILocation(line: 129, column: 18, scope: !4823)
!4849 = !DILocation(line: 130, column: 11, scope: !4823)
!4850 = !DILocation(line: 130, column: 19, scope: !4823)
!4851 = !{!1086, !1087, i64 144}
!4852 = !DILocation(line: 161, column: 7, scope: !4823)
!4853 = !DILocation(line: 163, column: 10, scope: !4780)
!4854 = !DILocation(line: 163, column: 3, scope: !4780)
!4855 = !DILocation(line: 0, scope: !4780)
!4856 = !DILocation(line: 164, column: 1, scope: !4780)
!4857 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4858, file: !4858, line: 385, type: !4859, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !285, retainedNodes: !4873)
!4858 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!180, !4861, !65, !180, !4862}
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2316, line: 6, baseType: !4864)
!4864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2318, line: 21, baseType: !4865)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2318, line: 13, size: 64, elements: !4866)
!4866 = !{!4867, !4868}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4865, file: !2318, line: 15, baseType: !50, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4865, file: !2318, line: 20, baseType: !4869, size: 32, offset: 32)
!4869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4865, file: !2318, line: 16, size: 32, elements: !4870)
!4870 = !{!4871, !4872}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4869, file: !2318, line: 18, baseType: !7, size: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4869, file: !2318, line: 19, baseType: !2327, size: 32)
!4873 = !{!4874, !4875, !4876, !4877, !4878, !4879, !4880}
!4874 = !DILocalVariable(name: "pwc", arg: 1, scope: !4857, file: !4858, line: 385, type: !4861)
!4875 = !DILocalVariable(name: "s", arg: 2, scope: !4857, file: !4858, line: 385, type: !65)
!4876 = !DILocalVariable(name: "n", arg: 3, scope: !4857, file: !4858, line: 385, type: !180)
!4877 = !DILocalVariable(name: "ps", arg: 4, scope: !4857, file: !4858, line: 385, type: !4862)
!4878 = !DILocalVariable(name: "ret", scope: !4857, file: !4858, line: 387, type: !180)
!4879 = !DILocalVariable(name: "wc", scope: !4857, file: !4858, line: 388, type: !2332)
!4880 = !DILocalVariable(name: "uc", scope: !4881, file: !4858, line: 449, type: !49)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !4858, line: 448, column: 5)
!4882 = distinct !DILexicalBlock(scope: !4857, file: !4858, line: 447, column: 7)
!4883 = !DILocation(line: 385, column: 23, scope: !4857)
!4884 = !DILocation(line: 385, column: 40, scope: !4857)
!4885 = !DILocation(line: 385, column: 50, scope: !4857)
!4886 = !DILocation(line: 385, column: 64, scope: !4857)
!4887 = !DILocation(line: 388, column: 3, scope: !4857)
!4888 = !DILocation(line: 404, column: 9, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4857, file: !4858, line: 404, column: 7)
!4890 = !DILocation(line: 404, column: 7, scope: !4857)
!4891 = !DILocation(line: 439, column: 9, scope: !4857)
!4892 = !DILocation(line: 387, column: 10, scope: !4857)
!4893 = !DILocation(line: 447, column: 19, scope: !4882)
!4894 = !DILocation(line: 447, column: 31, scope: !4882)
!4895 = !DILocation(line: 447, column: 26, scope: !4882)
!4896 = !DILocation(line: 447, column: 41, scope: !4882)
!4897 = !DILocation(line: 447, column: 7, scope: !4857)
!4898 = !DILocation(line: 449, column: 26, scope: !4881)
!4899 = !DILocation(line: 449, column: 21, scope: !4881)
!4900 = !DILocation(line: 450, column: 14, scope: !4881)
!4901 = !DILocation(line: 450, column: 12, scope: !4881)
!4902 = !DILocation(line: 0, scope: !4881)
!4903 = !DILocation(line: 456, column: 1, scope: !4857)
!4904 = distinct !DISubprogram(name: "close_stream", scope: !4905, file: !4905, line: 56, type: !4906, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4942)
!4905 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!50, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !795, line: 7, baseType: !4910)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !797, line: 49, size: 1728, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4910, file: !797, line: 51, baseType: !50, size: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4910, file: !797, line: 54, baseType: !45, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4910, file: !797, line: 55, baseType: !45, size: 64, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4910, file: !797, line: 56, baseType: !45, size: 64, offset: 192)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4910, file: !797, line: 57, baseType: !45, size: 64, offset: 256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4910, file: !797, line: 58, baseType: !45, size: 64, offset: 320)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4910, file: !797, line: 59, baseType: !45, size: 64, offset: 384)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4910, file: !797, line: 60, baseType: !45, size: 64, offset: 448)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4910, file: !797, line: 61, baseType: !45, size: 64, offset: 512)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4910, file: !797, line: 64, baseType: !45, size: 64, offset: 576)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4910, file: !797, line: 65, baseType: !45, size: 64, offset: 640)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4910, file: !797, line: 66, baseType: !45, size: 64, offset: 704)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4910, file: !797, line: 68, baseType: !812, size: 64, offset: 768)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4910, file: !797, line: 70, baseType: !4926, size: 64, offset: 832)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4910, file: !797, line: 72, baseType: !50, size: 32, offset: 896)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4910, file: !797, line: 73, baseType: !50, size: 32, offset: 928)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4910, file: !797, line: 74, baseType: !819, size: 64, offset: 960)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4910, file: !797, line: 77, baseType: !51, size: 16, offset: 1024)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4910, file: !797, line: 78, baseType: !823, size: 8, offset: 1040)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4910, file: !797, line: 79, baseType: !825, size: 8, offset: 1048)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4910, file: !797, line: 81, baseType: !829, size: 64, offset: 1088)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4910, file: !797, line: 89, baseType: !832, size: 64, offset: 1152)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4910, file: !797, line: 91, baseType: !834, size: 64, offset: 1216)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4910, file: !797, line: 92, baseType: !837, size: 64, offset: 1280)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4910, file: !797, line: 93, baseType: !4926, size: 64, offset: 1344)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4910, file: !797, line: 94, baseType: !47, size: 64, offset: 1408)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4910, file: !797, line: 95, baseType: !180, size: 64, offset: 1472)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4910, file: !797, line: 96, baseType: !50, size: 32, offset: 1536)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4910, file: !797, line: 98, baseType: !844, size: 160, offset: 1568)
!4942 = !{!4943, !4944, !4946, !4947}
!4943 = !DILocalVariable(name: "stream", arg: 1, scope: !4904, file: !4905, line: 56, type: !4908)
!4944 = !DILocalVariable(name: "some_pending", scope: !4904, file: !4905, line: 58, type: !4945)
!4945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4946 = !DILocalVariable(name: "prev_fail", scope: !4904, file: !4905, line: 59, type: !4945)
!4947 = !DILocalVariable(name: "fclose_fail", scope: !4904, file: !4905, line: 60, type: !4945)
!4948 = !DILocation(line: 56, column: 21, scope: !4904)
!4949 = !DILocation(line: 58, column: 30, scope: !4904)
!4950 = !DILocalVariable(name: "__stream", arg: 1, scope: !4951, file: !1077, line: 135, type: !4908)
!4951 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1077, file: !1077, line: 135, type: !4906, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4952)
!4952 = !{!4950}
!4953 = !DILocation(line: 135, column: 1, scope: !4951, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 59, column: 27, scope: !4904)
!4955 = !DILocation(line: 137, column: 10, scope: !4951, inlinedAt: !4954)
!4956 = !DILocation(line: 59, column: 43, scope: !4904)
!4957 = !DILocation(line: 60, column: 29, scope: !4904)
!4958 = !DILocation(line: 60, column: 45, scope: !4904)
!4959 = !DILocation(line: 70, column: 17, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4904, file: !4905, line: 70, column: 7)
!4961 = !DILocation(line: 58, column: 50, scope: !4904)
!4962 = !DILocation(line: 70, column: 33, scope: !4960)
!4963 = !DILocation(line: 70, column: 53, scope: !4960)
!4964 = !DILocation(line: 70, column: 59, scope: !4960)
!4965 = !DILocation(line: 70, column: 7, scope: !4904)
!4966 = !DILocation(line: 72, column: 11, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4960, file: !4905, line: 71, column: 5)
!4968 = !DILocation(line: 73, column: 9, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4967, file: !4905, line: 72, column: 11)
!4970 = !DILocation(line: 73, column: 15, scope: !4969)
!4971 = !DILocation(line: 0, scope: !4904)
!4972 = !DILocation(line: 78, column: 1, scope: !4904)
!4973 = distinct !DISubprogram(name: "hard_locale", scope: !4974, file: !4974, line: 38, type: !1192, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !290, retainedNodes: !4975)
!4974 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4975 = !{!4976, !4977, !4978}
!4976 = !DILocalVariable(name: "category", arg: 1, scope: !4973, file: !4974, line: 38, type: !50)
!4977 = !DILocalVariable(name: "hard", scope: !4973, file: !4974, line: 40, type: !57)
!4978 = !DILocalVariable(name: "p", scope: !4973, file: !4974, line: 41, type: !65)
!4979 = !DILocation(line: 38, column: 18, scope: !4973)
!4980 = !DILocation(line: 40, column: 8, scope: !4973)
!4981 = !DILocation(line: 41, column: 19, scope: !4973)
!4982 = !DILocation(line: 41, column: 15, scope: !4973)
!4983 = !DILocation(line: 43, column: 7, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4973, file: !4974, line: 43, column: 7)
!4985 = !DILocation(line: 43, column: 7, scope: !4973)
!4986 = !DILocation(line: 47, column: 15, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !4974, line: 47, column: 15)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !4974, line: 46, column: 9)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !4974, line: 45, column: 11)
!4990 = distinct !DILexicalBlock(scope: !4984, file: !4974, line: 44, column: 5)
!4991 = !DILocation(line: 47, column: 31, scope: !4987)
!4992 = !DILocation(line: 47, column: 36, scope: !4987)
!4993 = !DILocation(line: 47, column: 39, scope: !4987)
!4994 = !DILocation(line: 47, column: 59, scope: !4987)
!4995 = !DILocation(line: 47, column: 15, scope: !4988)
!4996 = !DILocation(line: 48, column: 13, scope: !4987)
!4997 = !DILocation(line: 71, column: 3, scope: !4973)
!4998 = distinct !DISubprogram(name: "locale_charset", scope: !4999, file: !4999, line: 687, type: !5000, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !5002)
!4999 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!65}
!5002 = !{!5003}
!5003 = !DILocalVariable(name: "codeset", scope: !4998, file: !4999, line: 689, type: !65)
!5004 = !DILocation(line: 696, column: 13, scope: !4998)
!5005 = !DILocation(line: 689, column: 15, scope: !4998)
!5006 = !DILocation(line: 754, column: 15, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 754, column: 7)
!5008 = !DILocation(line: 754, column: 7, scope: !4998)
!5009 = !DILocation(line: 907, column: 13, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !4999, line: 907, column: 13)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !4999, line: 897, column: 7)
!5012 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 856, column: 3)
!5013 = !DILocation(line: 907, column: 24, scope: !5010)
!5014 = !DILocation(line: 907, column: 13, scope: !5011)
!5015 = !DILocation(line: 995, column: 3, scope: !4998)
