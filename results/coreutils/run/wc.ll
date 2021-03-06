; ModuleID = 'coreutils-8.30/src/wc.bc'
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
%struct.Tokens = type { i64, i8**, i64*, %struct.obstack, %struct.obstack, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.argv_iterator = type { %struct._IO_FILE*, i64, i8*, i64, i8**, i8** }
%struct.fstatus = type { i32, %struct.stat }
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mbchar = type { i8*, i64, i8, i32, [24 x i8] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [184 x i8] c"Print newline, word, and byte counts for each FILE, and a total line if\0Amore than one FILE is specified.  A word is a non-zero-length sequence of\0Acharacters delimited by white space.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [301 x i8] c"\0AThe options below may be used to select which counts are printed, always in\0Athe following order: newline, word, character, byte, maximum line length.\0A  -c, --bytes            print the byte counts\0A  -m, --chars            print the character counts\0A  -l, --lines            print the newline counts\0A\00", align 1
@.str.4 = private unnamed_addr constant [301 x i8] c"      --files0-from=F    read input from the files specified by\0A                           NUL-terminated names in file F;\0A                           If F is - then read names from standard input\0A  -L, --max-line-length  print the maximum display width\0A  -w, --words            print the word counts\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@page_size = internal unnamed_addr global i64 0, align 8, !dbg !0
@print_bytes = internal unnamed_addr global i1 false, align 1, !dbg !318
@print_chars = internal unnamed_addr global i1 false, align 1, !dbg !319
@print_words = internal unnamed_addr global i1 false, align 1, !dbg !320
@print_lines = internal unnamed_addr global i1 false, align 1, !dbg !321
@print_linelength = internal unnamed_addr global i1 false, align 1, !dbg !322
@max_line_length = internal unnamed_addr global i64 0, align 8, !dbg !266
@total_bytes = internal unnamed_addr global i64 0, align 8, !dbg !264
@total_chars = internal unnamed_addr global i64 0, align 8, !dbg !262
@total_words = internal unnamed_addr global i64 0, align 8, !dbg !260
@total_lines = internal unnamed_addr global i64 0, align 8, !dbg !255
@.str.11 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1
@longopts = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !282
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@main.stdin_only = internal global [1 x i8*] zeroinitializer, align 8, !dbg !62
@number_width = internal unnamed_addr global i32 0, align 4, !dbg !278
@.str.22 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"!\22unexpected error code from argv_iter\22\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"src/wc.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s:%lu: %s\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !323
@.str.29 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1, !dbg !298
@.str.55 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"chars\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"max-line-length\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), align 8, !dbg !324
@.str.56 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !330
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !335
@.str.69 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.71 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !338
@is_basic_table = dso_local local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !345
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !356
@.str.86 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.87 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.88 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.92, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.98, i32 0, i32 0), i8* null], align 16, !dbg !363
@.str.89 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.90 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.91 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.92 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.93 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.94 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.95 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.96 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.97 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.98 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !375
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !382
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !392
@.str.11.99 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.100 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.101 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.102 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.103 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.104 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.105 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !399
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !406
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !394
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !408
@.str.120 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.121 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.123 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.124 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.125 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.126 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.127 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.128 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.129 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.130 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.131 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.132 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.133 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.136 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.137 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.138 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.139 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.140 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.141 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !414
@.str.1.152 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !423
@.str.1.164 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.177 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.181 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !1114 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1119, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i32 %0, metadata !1118, metadata !DIExpression()), !dbg !1142
  %3 = icmp eq i32 %0, 0, !dbg !1143
  br i1 %3, label %9, label %4, !dbg !1144

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1145, !tbaa !1147
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13, !dbg !1145
  %7 = load i8*, i8** @program_name, align 8, !dbg !1145, !tbaa !1147
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #13, !dbg !1145
  br label %66, !dbg !1145

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #13, !dbg !1151
  %11 = load i8*, i8** @program_name, align 8, !dbg !1151, !tbaa !1147
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #13, !dbg !1151
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.2, i64 0, i64 0), i32 5) #13, !dbg !1152
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1152, !tbaa !1147
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1152
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #13, !dbg !1153
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1153, !tbaa !1147
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #13, !dbg !1153
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.3, i64 0, i64 0), i32 5) #13, !dbg !1156
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1156, !tbaa !1147
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1156
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.4, i64 0, i64 0), i32 5) #13, !dbg !1157
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1157, !tbaa !1147
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1157
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #13, !dbg !1158
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1158, !tbaa !1147
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1158
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #13, !dbg !1159
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1159, !tbaa !1147
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1159
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1160
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #13, !dbg !1160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #13, !dbg !1138
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1161
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1127, metadata !DIExpression()) #13, !dbg !1162
  br label %33, !dbg !1163

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1127, metadata !DIExpression()) #13, !dbg !1162
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #15, !dbg !1163
  %37 = icmp eq i32 %36, 0, !dbg !1163
  br i1 %37, label %43, label %38, !dbg !1164

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1165
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1127, metadata !DIExpression()) #13, !dbg !1162
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1166
  %41 = load i8*, i8** %40, align 8, !dbg !1166, !tbaa !1167
  %42 = icmp eq i8* %41, null, !dbg !1169
  br i1 %42, label %43, label %33, !dbg !1170, !llvm.loop !1171

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1127, metadata !DIExpression()) #13, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1127, metadata !DIExpression()) #13, !dbg !1162
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1174
  %46 = load i8*, i8** %45, align 8, !dbg !1174, !tbaa !1176
  %47 = icmp eq i8* %46, null, !dbg !1177
  %48 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %48, metadata !1126, metadata !DIExpression()) #13, !dbg !1179
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #13, !dbg !1180
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0)) #13, !dbg !1180
  %51 = tail call i8* @setlocale(i32 5, i8* null) #13, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %51, metadata !1134, metadata !DIExpression()) #13, !dbg !1182
  %52 = icmp eq i8* %51, null, !dbg !1183
  br i1 %52, label %59, label %53, !dbg !1185

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #15, !dbg !1186
  %55 = icmp eq i32 %54, 0, !dbg !1186
  br i1 %55, label %59, label %56, !dbg !1187

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.42, i64 0, i64 0), i32 5) #13, !dbg !1188
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1188
  br label %59, !dbg !1190

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #13, !dbg !1191
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1191
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #13, !dbg !1192
  %63 = icmp eq i8* %48, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), !dbg !1192
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1192
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #13, !dbg !1192
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #13, !dbg !1193
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #16, !dbg !1194
  unreachable, !dbg !1194
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !64 {
  %3 = alloca %struct.Tokens, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !69, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8** %1, metadata !70, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* null, metadata !76, metadata !DIExpression()), !dbg !1197
  %6 = bitcast %struct.Tokens* %3 to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %6) #13, !dbg !1198
  %7 = load i8*, i8** %1, align 8, !dbg !1199, !tbaa !1147
  tail call void @set_program_name(i8* %7) #13, !dbg !1200
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #13, !dbg !1201
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #13, !dbg !1202
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #13, !dbg !1203
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13, !dbg !1204
  %12 = tail call i32 @getpagesize() #17, !dbg !1205
  %13 = sext i32 %12 to i64, !dbg !1205
  store i64 %13, i64* @page_size, align 8, !dbg !1206, !tbaa !1207
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1209, !tbaa !1147
  %15 = tail call i32 @setvbuf(%struct._IO_FILE* %14, i8* null, i32 1, i64 0) #13, !dbg !1210
  store i1 false, i1* @print_bytes, align 1
  store i1 false, i1* @print_chars, align 1
  store i1 false, i1* @print_words, align 1
  store i1 false, i1* @print_lines, align 1
  store i1 false, i1* @print_linelength, align 1
  store i64 0, i64* @max_line_length, align 8, !dbg !1211, !tbaa !1207
  store i64 0, i64* @total_bytes, align 8, !dbg !1212, !tbaa !1207
  store i64 0, i64* @total_chars, align 8, !dbg !1213, !tbaa !1207
  store i64 0, i64* @total_words, align 8, !dbg !1214, !tbaa !1207
  store i64 0, i64* @total_lines, align 8, !dbg !1215, !tbaa !1207
  br label %16, !dbg !1216

; <label>:16:                                     ; preds = %26, %2
  %17 = phi i8* [ %27, %26 ], [ null, %2 ]
  br label %18, !dbg !1217

; <label>:18:                                     ; preds = %25, %16
  call void @llvm.dbg.value(metadata i8* %17, metadata !76, metadata !DIExpression()), !dbg !1197
  %19 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #13, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %19, metadata !73, metadata !DIExpression()), !dbg !1218
  switch i32 %19, label %32 [
    i32 -1, label %33
    i32 99, label %20
    i32 109, label %21
    i32 108, label %22
    i32 119, label %23
    i32 76, label %24
    i32 128, label %26
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !1216

; <label>:20:                                     ; preds = %18
  store i1 true, i1* @print_bytes, align 1
  br label %25, !dbg !1219

; <label>:21:                                     ; preds = %18
  store i1 true, i1* @print_chars, align 1
  br label %25, !dbg !1221

; <label>:22:                                     ; preds = %18
  store i1 true, i1* @print_lines, align 1
  br label %25, !dbg !1222

; <label>:23:                                     ; preds = %18
  store i1 true, i1* @print_words, align 1
  br label %25, !dbg !1223

; <label>:24:                                     ; preds = %18
  store i1 true, i1* @print_linelength, align 1
  br label %25, !dbg !1224

; <label>:25:                                     ; preds = %24, %23, %22, %21, %20
  br label %18, !dbg !1197, !llvm.loop !1225

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** @optarg, align 8, !dbg !1227, !tbaa !1147
  call void @llvm.dbg.value(metadata i8* %27, metadata !76, metadata !DIExpression()), !dbg !1197
  br label %16, !dbg !1228, !llvm.loop !1225

; <label>:28:                                     ; preds = %18
  tail call void @usage(i32 0) #18, !dbg !1229
  unreachable, !dbg !1229

; <label>:29:                                     ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !1147
  %31 = load i8*, i8** @Version, align 8, !dbg !1230, !tbaa !1147
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #13, !dbg !1230
  tail call void @exit(i32 0) #16, !dbg !1230
  unreachable, !dbg !1230

; <label>:32:                                     ; preds = %18
  tail call void @usage(i32 1) #18, !dbg !1231
  unreachable, !dbg !1231

; <label>:33:                                     ; preds = %18
  call void @llvm.dbg.value(metadata i8* %17, metadata !76, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i8* %17, metadata !76, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i8* %17, metadata !76, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i8* %17, metadata !76, metadata !DIExpression()), !dbg !1197
  %34 = load i1, i1* @print_lines, align 1
  br i1 %34, label %44, label %35, !dbg !1232

; <label>:35:                                     ; preds = %33
  %36 = load i1, i1* @print_words, align 1
  br i1 %36, label %44, label %37, !dbg !1234

; <label>:37:                                     ; preds = %35
  %38 = load i1, i1* @print_chars, align 1
  br i1 %38, label %44, label %39, !dbg !1235

; <label>:39:                                     ; preds = %37
  %40 = load i1, i1* @print_bytes, align 1
  br i1 %40, label %44, label %41, !dbg !1236

; <label>:41:                                     ; preds = %39
  %42 = load i1, i1* @print_linelength, align 1
  br i1 %42, label %44, label %43, !dbg !1237

; <label>:43:                                     ; preds = %41
  store i1 true, i1* @print_bytes, align 1
  store i1 true, i1* @print_words, align 1
  store i1 true, i1* @print_lines, align 1
  br label %44, !dbg !1238

; <label>:44:                                     ; preds = %43, %41, %39, %37, %35, %33
  call void @llvm.dbg.value(metadata i8 0, metadata !182, metadata !DIExpression()), !dbg !1239
  %45 = icmp ne i8* %17, null, !dbg !1240
  %46 = load i32, i32* @optind, align 4, !dbg !1241, !tbaa !1243
  %47 = icmp slt i32 %46, %0, !dbg !1241
  br i1 %45, label %48, label %117, !dbg !1245

; <label>:48:                                     ; preds = %44
  br i1 %47, label %49, label %59, !dbg !1246

; <label>:49:                                     ; preds = %48
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #13, !dbg !1247
  %51 = load i32, i32* @optind, align 4, !dbg !1250, !tbaa !1243
  %52 = sext i32 %51 to i64, !dbg !1250
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52, !dbg !1250
  %54 = load i8*, i8** %53, align 8, !dbg !1250, !tbaa !1147
  %55 = tail call i8* @quotearg_style(i32 4, i8* %54) #13, !dbg !1250
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i8* %55) #13, !dbg !1251
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1252, !tbaa !1147
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 5) #13, !dbg !1252
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %56, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %57) #13, !dbg !1252
  tail call void @usage(i32 1) #18, !dbg !1253
  unreachable, !dbg !1253

; <label>:59:                                     ; preds = %48
  %60 = tail call i32 @strcmp(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1254
  %61 = icmp eq i32 %60, 0, !dbg !1254
  br i1 %61, label %62, label %64, !dbg !1256

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1257, !tbaa !1147
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !186, metadata !DIExpression()), !dbg !1258
  br label %72, !dbg !1259

; <label>:64:                                     ; preds = %59
  %65 = tail call %struct._IO_FILE* @fopen(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !1260
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %65, metadata !186, metadata !DIExpression()), !dbg !1258
  %66 = icmp eq %struct._IO_FILE* %65, null, !dbg !1262
  br i1 %66, label %67, label %72, !dbg !1264

; <label>:67:                                     ; preds = %64
  %68 = tail call i32* @__errno_location() #17, !dbg !1265
  %69 = load i32, i32* %68, align 4, !dbg !1265, !tbaa !1243
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 5) #13, !dbg !1265
  %71 = tail call i8* @quotearg_style(i32 4, i8* nonnull %17) #13, !dbg !1265
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %69, i8* %70, i8* %71) #13, !dbg !1265
  unreachable, !dbg !1265

; <label>:72:                                     ; preds = %64, %62
  %73 = phi %struct._IO_FILE* [ %63, %62 ], [ %65, %64 ], !dbg !1266
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %73, metadata !186, metadata !DIExpression()), !dbg !1258
  %74 = bitcast %struct.stat* %4 to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %74) #13, !dbg !1267
  %75 = tail call i32 @fileno(%struct._IO_FILE* %73) #13, !dbg !1268
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !241, metadata !DIExpression(DW_OP_deref)), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %75, metadata !1271, metadata !DIExpression()) #13, !dbg !1279
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1278, metadata !DIExpression()) #13, !dbg !1279
  %76 = call i32 @__fxstat(i32 1, i32 %75, %struct.stat* nonnull %4) #13, !dbg !1281
  %77 = icmp eq i32 %76, 0, !dbg !1282
  br i1 %77, label %78, label %110, !dbg !1283

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !1284
  %80 = load i32, i32* %79, align 8, !dbg !1284, !tbaa !1285
  %81 = and i32 %80, 61440, !dbg !1284
  %82 = icmp eq i32 %81, 32768, !dbg !1284
  br i1 %82, label %83, label %110, !dbg !1288

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !1289
  %85 = load i64, i64* %84, align 8, !dbg !1289, !tbaa !1290
  %86 = sitofp i64 %85 to double, !dbg !1291
  %87 = call double @physmem_available() #13, !dbg !1292
  %88 = fmul double %87, 5.000000e-01, !dbg !1292
  %89 = fcmp ogt double %88, 0x4164000000000000, !dbg !1292
  br i1 %89, label %93, label %90, !dbg !1292

; <label>:90:                                     ; preds = %83
  %91 = call double @physmem_available() #13, !dbg !1292
  %92 = fmul double %91, 5.000000e-01, !dbg !1292
  br label %93, !dbg !1292

; <label>:93:                                     ; preds = %83, %90
  %94 = phi double [ %92, %90 ], [ 0x4164000000000000, %83 ], !dbg !1292
  %95 = fcmp ult double %94, %86, !dbg !1293
  br i1 %95, label %110, label %96, !dbg !1294

; <label>:96:                                     ; preds = %93
  call void @llvm.dbg.value(metadata i8 1, metadata !182, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, metadata !122, metadata !DIExpression(DW_OP_deref)), !dbg !1295
  call void @readtokens0_init(%struct.Tokens* nonnull %3) #13, !dbg !1296
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, metadata !122, metadata !DIExpression(DW_OP_deref)), !dbg !1295
  %97 = call zeroext i1 @readtokens0(%struct._IO_FILE* %73, %struct.Tokens* nonnull %3) #13, !dbg !1298
  br i1 %97, label %98, label %101, !dbg !1300

; <label>:98:                                     ; preds = %96
  %99 = call i32 @rpl_fclose(%struct._IO_FILE* %73) #13, !dbg !1301
  %100 = icmp eq i32 %99, 0, !dbg !1302
  br i1 %100, label %104, label %101, !dbg !1303

; <label>:101:                                    ; preds = %98, %96
  %102 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 5) #13, !dbg !1304
  %103 = call i8* @quotearg_style(i32 4, i8* nonnull %17) #13, !dbg !1304
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %102, i8* %103) #13, !dbg !1304
  unreachable, !dbg !1304

; <label>:104:                                    ; preds = %98
  %105 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 1, !dbg !1305
  %106 = load i8**, i8*** %105, align 8, !dbg !1305, !tbaa !1306
  call void @llvm.dbg.value(metadata i8** %106, metadata !75, metadata !DIExpression()), !dbg !1309
  %107 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 0, !dbg !1310
  %108 = load i64, i64* %107, align 8, !dbg !1310, !tbaa !1311
  call void @llvm.dbg.value(metadata i64 %108, metadata !74, metadata !DIExpression()), !dbg !1312
  %109 = call %struct.argv_iterator* @argv_iter_init_argv(i8** %106) #13, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %109, metadata !183, metadata !DIExpression()), !dbg !1314
  br label %112, !dbg !1315

; <label>:110:                                    ; preds = %93, %78, %72
  call void @llvm.dbg.value(metadata i8** null, metadata !75, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !74, metadata !DIExpression()), !dbg !1312
  %111 = call %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* %73) #13, !dbg !1316
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %111, metadata !183, metadata !DIExpression()), !dbg !1314
  br label %112

; <label>:112:                                    ; preds = %110, %104
  %113 = phi i8** [ %106, %104 ], [ null, %110 ], !dbg !1318
  %114 = phi i64 [ %108, %104 ], [ 0, %110 ], !dbg !1318
  %115 = phi i1 [ true, %104 ], [ false, %110 ], !dbg !1319
  %116 = phi %struct.argv_iterator* [ %109, %104 ], [ %111, %110 ], !dbg !1318
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %116, metadata !183, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %114, metadata !74, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8** %113, metadata !75, metadata !DIExpression()), !dbg !1309
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %74) #13, !dbg !1320
  br label %125, !dbg !1321

; <label>:117:                                    ; preds = %44
  %118 = sext i32 %46 to i64, !dbg !1322
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118, !dbg !1322
  %120 = select i1 %47, i8** %119, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.stdin_only, i64 0, i64 0), !dbg !1323
  call void @llvm.dbg.value(metadata i8** %120, metadata !75, metadata !DIExpression()), !dbg !1309
  %121 = sub nsw i32 %0, %46, !dbg !1324
  %122 = select i1 %47, i32 %121, i32 1, !dbg !1325
  %123 = sext i32 %122 to i64, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %123, metadata !74, metadata !DIExpression()), !dbg !1312
  %124 = tail call %struct.argv_iterator* @argv_iter_init_argv(i8** %120) #13, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %124, metadata !183, metadata !DIExpression()), !dbg !1314
  br label %125

; <label>:125:                                    ; preds = %117, %112
  %126 = phi i8** [ %113, %112 ], [ %120, %117 ], !dbg !1241
  %127 = phi i64 [ %114, %112 ], [ %123, %117 ], !dbg !1241
  %128 = phi i1 [ %115, %112 ], [ false, %117 ], !dbg !1319
  %129 = phi %struct.argv_iterator* [ %116, %112 ], [ %124, %117 ], !dbg !1241
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %129, metadata !183, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %127, metadata !74, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8** %126, metadata !75, metadata !DIExpression()), !dbg !1309
  %130 = icmp eq %struct.argv_iterator* %129, null, !dbg !1327
  br i1 %130, label %131, label %132, !dbg !1329

; <label>:131:                                    ; preds = %125
  call void @xalloc_die() #16, !dbg !1330
  unreachable, !dbg !1330

; <label>:132:                                    ; preds = %125
  call void @llvm.dbg.value(metadata i64 %127, metadata !1331, metadata !DIExpression()) #13, !dbg !1344
  call void @llvm.dbg.value(metadata i8** %126, metadata !1338, metadata !DIExpression()) #13, !dbg !1346
  %133 = icmp eq i64 %127, 0, !dbg !1347
  %134 = select i1 %133, i64 1, i64 %127, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %134, metadata !1348, metadata !DIExpression()) #13, !dbg !1354
  call void @llvm.dbg.value(metadata i64 152, metadata !1353, metadata !DIExpression()) #13, !dbg !1356
  %135 = icmp ugt i64 %134, 60680079189834051, !dbg !1357
  br i1 %135, label %136, label %137, !dbg !1359

; <label>:136:                                    ; preds = %132
  call void @xalloc_die() #16, !dbg !1360
  unreachable, !dbg !1360

; <label>:137:                                    ; preds = %132
  %138 = mul i64 %134, 152, !dbg !1361
  %139 = call noalias i8* @xmalloc(i64 %138) #13, !dbg !1362
  %140 = bitcast i8* %139 to %struct.fstatus*, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.fstatus* %140, metadata !1339, metadata !DIExpression()) #13, !dbg !1364
  switch i64 %127, label %141 [
    i64 0, label %158
    i64 1, label %142
  ], !dbg !1365

; <label>:141:                                    ; preds = %142, %137
  br label %160, !dbg !1366

; <label>:142:                                    ; preds = %137
  %143 = load i1, i1* @print_lines, align 1
  %144 = zext i1 %143 to i32, !dbg !1368
  %145 = load i1, i1* @print_words, align 1
  %146 = zext i1 %145 to i32, !dbg !1369
  %147 = add nuw nsw i32 %146, %144, !dbg !1370
  %148 = load i1, i1* @print_chars, align 1
  %149 = zext i1 %148 to i32, !dbg !1371
  %150 = add nuw nsw i32 %147, %149, !dbg !1372
  %151 = load i1, i1* @print_bytes, align 1
  %152 = zext i1 %151 to i32, !dbg !1373
  %153 = add nuw nsw i32 %150, %152, !dbg !1374
  %154 = load i1, i1* @print_linelength, align 1
  %155 = zext i1 %154 to i32, !dbg !1375
  %156 = add nuw nsw i32 %153, %155, !dbg !1376
  %157 = icmp eq i32 %156, 1, !dbg !1377
  br i1 %157, label %158, label %141, !dbg !1378

; <label>:158:                                    ; preds = %142, %137
  %159 = bitcast i8* %139 to i32*, !dbg !1379
  store i32 1, i32* %159, align 8, !dbg !1380, !tbaa !1381
  br label %179, !dbg !1383

; <label>:160:                                    ; preds = %141, %174
  %161 = phi i64 [ %177, %174 ], [ 0, %141 ]
  call void @llvm.dbg.value(metadata i64 %161, metadata !1340, metadata !DIExpression()) #13, !dbg !1384
  %162 = getelementptr inbounds i8*, i8** %126, i64 %161, !dbg !1366
  %163 = load i8*, i8** %162, align 8, !dbg !1366, !tbaa !1147
  %164 = icmp eq i8* %163, null, !dbg !1366
  br i1 %164, label %168, label %165, !dbg !1385

; <label>:165:                                    ; preds = %160
  %166 = call i32 @strcmp(i8* nonnull %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1386
  %167 = icmp eq i32 %166, 0, !dbg !1386
  br i1 %167, label %168, label %171, !dbg !1387

; <label>:168:                                    ; preds = %165, %160
  %169 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %161, i32 1, !dbg !1388
  call void @llvm.dbg.value(metadata i32 0, metadata !1271, metadata !DIExpression()) #13, !dbg !1389
  call void @llvm.dbg.value(metadata %struct.stat* %169, metadata !1278, metadata !DIExpression()) #13, !dbg !1389
  %170 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull %169) #13, !dbg !1391
  br label %174, !dbg !1387

; <label>:171:                                    ; preds = %165
  %172 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %161, i32 1, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %163, metadata !1393, metadata !DIExpression()) #13, !dbg !1399
  call void @llvm.dbg.value(metadata %struct.stat* %172, metadata !1398, metadata !DIExpression()) #13, !dbg !1399
  %173 = call i32 @__xstat(i32 1, i8* nonnull %163, %struct.stat* nonnull %172) #13, !dbg !1401
  br label %174, !dbg !1387

; <label>:174:                                    ; preds = %171, %168
  %175 = phi i32 [ %170, %168 ], [ %173, %171 ], !dbg !1387
  %176 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %161, i32 0, !dbg !1402
  store i32 %175, i32* %176, align 8, !dbg !1403, !tbaa !1381
  %177 = add nuw i64 %161, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %177, metadata !1340, metadata !DIExpression()) #13, !dbg !1384
  %178 = icmp eq i64 %177, %127, !dbg !1405
  br i1 %178, label %179, label %160, !dbg !1406, !llvm.loop !1407

; <label>:179:                                    ; preds = %174, %158
  call void @llvm.dbg.value(metadata %struct.fstatus* %140, metadata !77, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %127, metadata !1411, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata %struct.fstatus* %140, metadata !1418, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i32 1, metadata !1419, metadata !DIExpression()), !dbg !1429
  br i1 %133, label %219, label %180, !dbg !1430

; <label>:180:                                    ; preds = %179
  %181 = bitcast i8* %139 to i32*, !dbg !1431
  %182 = load i32, i32* %181, align 8, !dbg !1431, !tbaa !1381
  %183 = icmp slt i32 %182, 1, !dbg !1432
  br i1 %183, label %186, label %219, !dbg !1433

; <label>:184:                                    ; preds = %201
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 1, metadata !1419, metadata !DIExpression()), !dbg !1429
  %185 = icmp ugt i64 %203, 9, !dbg !1436
  br i1 %185, label %209, label %215, !dbg !1439

; <label>:186:                                    ; preds = %180, %206
  %187 = phi i32 [ %208, %206 ], [ %182, %180 ], !dbg !1440
  %188 = phi i64 [ %204, %206 ], [ 0, %180 ]
  %189 = phi i64 [ %203, %206 ], [ 0, %180 ]
  %190 = phi i32 [ %202, %206 ], [ 1, %180 ]
  call void @llvm.dbg.value(metadata i64 %188, metadata !1424, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %189, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %190, metadata !1420, metadata !DIExpression()), !dbg !1434
  %191 = icmp eq i32 %187, 0, !dbg !1444
  br i1 %191, label %192, label %201, !dbg !1445

; <label>:192:                                    ; preds = %186
  %193 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %188, i32 1, i32 3, !dbg !1446
  %194 = load i32, i32* %193, align 8, !dbg !1446, !tbaa !1449
  %195 = and i32 %194, 61440, !dbg !1446
  %196 = icmp eq i32 %195, 32768, !dbg !1446
  br i1 %196, label %197, label %201, !dbg !1450

; <label>:197:                                    ; preds = %192
  %198 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %188, i32 1, i32 8, !dbg !1451
  %199 = load i64, i64* %198, align 8, !dbg !1451, !tbaa !1452
  %200 = add i64 %199, %189, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %200, metadata !1423, metadata !DIExpression()), !dbg !1435
  br label %201, !dbg !1454

; <label>:201:                                    ; preds = %197, %192, %186
  %202 = phi i32 [ %190, %186 ], [ %190, %197 ], [ 7, %192 ], !dbg !1455
  %203 = phi i64 [ %189, %186 ], [ %200, %197 ], [ %189, %192 ], !dbg !1456
  %204 = add nuw i64 %188, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %204, metadata !1424, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %202, metadata !1420, metadata !DIExpression()), !dbg !1434
  %205 = icmp eq i64 %204, %127, !dbg !1458
  br i1 %205, label %184, label %206, !dbg !1459, !llvm.loop !1460

; <label>:206:                                    ; preds = %201
  %207 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %204, i32 0
  %208 = load i32, i32* %207, align 8, !dbg !1440, !tbaa !1381
  br label %186, !dbg !1459

; <label>:209:                                    ; preds = %184, %209
  %210 = phi i64 [ %213, %209 ], [ %203, %184 ]
  %211 = phi i32 [ %212, %209 ], [ 1, %184 ]
  call void @llvm.dbg.value(metadata i64 %210, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %211, metadata !1419, metadata !DIExpression()), !dbg !1429
  %212 = add nuw nsw i32 %211, 1, !dbg !1463
  %213 = udiv i64 %210, 10, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %213, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %212, metadata !1419, metadata !DIExpression()), !dbg !1429
  %214 = icmp ugt i64 %210, 99, !dbg !1436
  br i1 %214, label %209, label %215, !dbg !1439, !llvm.loop !1465

; <label>:215:                                    ; preds = %209, %184
  %216 = phi i32 [ 1, %184 ], [ %212, %209 ], !dbg !1468
  call void @llvm.dbg.value(metadata i32 %216, metadata !1419, metadata !DIExpression()), !dbg !1429
  %217 = icmp slt i32 %216, %202, !dbg !1469
  %218 = select i1 %217, i32 %202, i32 %216, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %218, metadata !1419, metadata !DIExpression()), !dbg !1429
  br label %219, !dbg !1472

; <label>:219:                                    ; preds = %179, %180, %215
  %220 = phi i32 [ %218, %215 ], [ 1, %180 ], [ 1, %179 ], !dbg !1473
  call void @llvm.dbg.value(metadata i32 %220, metadata !1419, metadata !DIExpression()), !dbg !1429
  store i32 %220, i32* @number_width, align 4, !dbg !1474, !tbaa !1243
  call void @llvm.dbg.value(metadata i8 1, metadata !71, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32 0, metadata !242, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8 0, metadata !244, metadata !DIExpression()), !dbg !1477
  %221 = bitcast i32* %5 to i8*, !dbg !1478
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %221) #13, !dbg !1478
  call void @llvm.dbg.value(metadata i32* %5, metadata !247, metadata !DIExpression(DW_OP_deref)), !dbg !1479
  %222 = call i8* @argv_iter(%struct.argv_iterator* nonnull %129, i32* nonnull %5) #13, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %222, metadata !248, metadata !DIExpression()), !dbg !1481
  %223 = icmp eq i8* %222, null, !dbg !1482
  br i1 %223, label %227, label %224, !dbg !1484

; <label>:224:                                    ; preds = %219
  %225 = icmp eq i8* %17, null
  %226 = bitcast i8* %139 to i32*
  br label %237, !dbg !1484

; <label>:227:                                    ; preds = %291, %219
  %228 = phi i8 [ 1, %219 ], [ %289, %291 ], !dbg !1485
  call void @llvm.dbg.value(metadata i8 %228, metadata !71, metadata !DIExpression()), !dbg !1475
  %229 = load i32, i32* %5, align 4, !dbg !1487, !tbaa !1489
  call void @llvm.dbg.value(metadata i32 %229, metadata !247, metadata !DIExpression()), !dbg !1479
  switch i32 %229, label %236 [
    i32 2, label %295
    i32 4, label %230
    i32 3, label %235
  ], !dbg !1490

; <label>:230:                                    ; preds = %227
  %231 = tail call i32* @__errno_location() #17, !dbg !1491
  %232 = load i32, i32* %231, align 4, !dbg !1491, !tbaa !1243
  %233 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 5) #13, !dbg !1493
  %234 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %17) #13, !dbg !1494
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %232, i8* %233, i8* %234) #13, !dbg !1495
  call void @llvm.dbg.value(metadata i8 0, metadata !71, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i8 undef, metadata !71, metadata !DIExpression()), !dbg !1475
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %221) #13, !dbg !1496
  br label %306, !dbg !1497

; <label>:235:                                    ; preds = %227
  call void @xalloc_die() #16, !dbg !1499
  unreachable, !dbg !1499

; <label>:236:                                    ; preds = %227
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 810, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #16, !dbg !1500
  unreachable, !dbg !1500

; <label>:237:                                    ; preds = %224, %291
  %238 = phi i64 [ 0, %224 ], [ %292, %291 ]
  %239 = phi i8* [ %222, %224 ], [ %293, %291 ]
  %240 = phi i8 [ 1, %224 ], [ %289, %291 ]
  call void @llvm.dbg.value(metadata i8 %240, metadata !71, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i64 %238, metadata !242, metadata !DIExpression()), !dbg !1476
  br i1 %45, label %241, label %250, !dbg !1503

; <label>:241:                                    ; preds = %237
  %242 = call i32 @strcmp(i8* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1505
  %243 = icmp eq i32 %242, 0, !dbg !1505
  br i1 %243, label %244, label %250, !dbg !1506

; <label>:244:                                    ; preds = %241
  %245 = call i32 @strcmp(i8* nonnull %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1507
  %246 = icmp eq i32 %245, 0, !dbg !1507
  br i1 %246, label %247, label %250, !dbg !1508

; <label>:247:                                    ; preds = %244
  %248 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0), i32 5) #13, !dbg !1509
  %249 = call i8* @quotearg_style(i32 4, i8* nonnull %239) #13, !dbg !1511
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %248, i8* %249) #13, !dbg !1512
  call void @llvm.dbg.value(metadata i8 1, metadata !244, metadata !DIExpression()), !dbg !1477
  br label %250, !dbg !1513

; <label>:250:                                    ; preds = %247, %244, %241, %237
  %251 = phi i1 [ true, %247 ], [ false, %244 ], [ false, %241 ], [ false, %237 ], !dbg !1514
  %252 = load i8, i8* %239, align 1, !dbg !1515, !tbaa !1489
  %253 = icmp eq i8 %252, 0, !dbg !1515
  br i1 %253, label %254, label %261, !dbg !1516

; <label>:254:                                    ; preds = %250
  br i1 %225, label %255, label %257, !dbg !1517

; <label>:255:                                    ; preds = %254
  %256 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13, !dbg !1518
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %256) #13, !dbg !1519
  br label %288

; <label>:257:                                    ; preds = %254
  %258 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %129) #15, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %258, metadata !249, metadata !DIExpression()), !dbg !1521
  %259 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %17) #13, !dbg !1522
  %260 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 5) #13, !dbg !1523
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %259, i64 %258, i8* %260) #13, !dbg !1524
  br label %288

; <label>:261:                                    ; preds = %250
  br i1 %251, label %288, label %262, !dbg !1525

; <label>:262:                                    ; preds = %261
  %263 = select i1 %133, i64 0, i64 %238, !dbg !1526
  %264 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %140, i64 %263, !dbg !1526
  call void @llvm.dbg.value(metadata i8* %239, metadata !1527, metadata !DIExpression()) #13, !dbg !1539
  call void @llvm.dbg.value(metadata %struct.fstatus* %264, metadata !1532, metadata !DIExpression()) #13, !dbg !1541
  %265 = call i32 @strcmp(i8* nonnull %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !1542
  %266 = icmp eq i32 %265, 0, !dbg !1542
  br i1 %266, label %267, label %269, !dbg !1543

; <label>:267:                                    ; preds = %262
  store i1 true, i1* @have_read_stdin, align 1
  %268 = call fastcc zeroext i1 @wc(i32 0, i8* nonnull %239, %struct.fstatus* %264, i64 -1) #13, !dbg !1544
  br label %284, !dbg !1546

; <label>:269:                                    ; preds = %262
  %270 = call i32 (i8*, i32, ...) @open(i8* nonnull %239, i32 0) #13, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %270, metadata !1533, metadata !DIExpression()) #13, !dbg !1548
  %271 = icmp eq i32 %270, -1, !dbg !1549
  br i1 %271, label %272, label %276, !dbg !1550

; <label>:272:                                    ; preds = %269
  %273 = tail call i32* @__errno_location() #17, !dbg !1551
  %274 = load i32, i32* %273, align 4, !dbg !1551, !tbaa !1243
  %275 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %239) #13, !dbg !1553
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %275) #13, !dbg !1554
  br label %284, !dbg !1555

; <label>:276:                                    ; preds = %269
  %277 = call fastcc zeroext i1 @wc(i32 %270, i8* nonnull %239, %struct.fstatus* %264, i64 0) #13, !dbg !1556
  %278 = call i32 @close(i32 %270) #13, !dbg !1557
  %279 = icmp eq i32 %278, 0, !dbg !1559
  br i1 %279, label %284, label %280, !dbg !1560

; <label>:280:                                    ; preds = %276
  %281 = tail call i32* @__errno_location() #17, !dbg !1561
  %282 = load i32, i32* %281, align 4, !dbg !1561, !tbaa !1243
  %283 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %239) #13, !dbg !1563
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %283) #13, !dbg !1564
  br label %284, !dbg !1565

; <label>:284:                                    ; preds = %267, %272, %276, %280
  %285 = phi i1 [ %268, %267 ], [ false, %272 ], [ false, %280 ], [ %277, %276 ], !dbg !1566
  %286 = zext i1 %285 to i8, !dbg !1567
  %287 = and i8 %240, %286, !dbg !1568
  call void @llvm.dbg.value(metadata i8 %287, metadata !71, metadata !DIExpression()), !dbg !1475
  br label %288

; <label>:288:                                    ; preds = %261, %257, %255, %284
  %289 = phi i8 [ %287, %284 ], [ 0, %255 ], [ 0, %257 ], [ 0, %261 ], !dbg !1485
  br i1 %133, label %290, label %291, !dbg !1569

; <label>:290:                                    ; preds = %288
  store i32 1, i32* %226, align 8, !dbg !1570, !tbaa !1381
  br label %291, !dbg !1572

; <label>:291:                                    ; preds = %288, %290
  call void @llvm.dbg.value(metadata i8 undef, metadata !71, metadata !DIExpression()), !dbg !1475
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %221) #13, !dbg !1496
  %292 = add nuw i64 %238, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i8 %289, metadata !71, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32 undef, metadata !242, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1476
  call void @llvm.dbg.value(metadata i8 0, metadata !244, metadata !DIExpression()), !dbg !1477
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %221) #13, !dbg !1478
  call void @llvm.dbg.value(metadata i32* %5, metadata !247, metadata !DIExpression(DW_OP_deref)), !dbg !1479
  %293 = call i8* @argv_iter(%struct.argv_iterator* nonnull %129, i32* nonnull %5) #13, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %293, metadata !248, metadata !DIExpression()), !dbg !1481
  %294 = icmp eq i8* %293, null, !dbg !1482
  br i1 %294, label %227, label %237, !dbg !1484, !llvm.loop !1574

; <label>:295:                                    ; preds = %227
  call void @llvm.dbg.value(metadata i8 undef, metadata !71, metadata !DIExpression()), !dbg !1475
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %221) #13, !dbg !1496
  %296 = and i8 %228, 1, !dbg !1577
  %297 = icmp eq i8 %296, 0, !dbg !1577
  %298 = or i1 %45, %297, !dbg !1497
  br i1 %298, label %306, label %299, !dbg !1497

; <label>:299:                                    ; preds = %295
  %300 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %129) #15, !dbg !1578
  %301 = icmp eq i64 %300, 0, !dbg !1579
  br i1 %301, label %302, label %306, !dbg !1580

; <label>:302:                                    ; preds = %299
  call void @llvm.dbg.value(metadata i8* null, metadata !1527, metadata !DIExpression()) #13, !dbg !1581
  call void @llvm.dbg.value(metadata %struct.fstatus* %140, metadata !1532, metadata !DIExpression()) #13, !dbg !1583
  store i1 true, i1* @have_read_stdin, align 1
  %303 = call fastcc zeroext i1 @wc(i32 0, i8* null, %struct.fstatus* %140, i64 -1) #13, !dbg !1584
  %304 = zext i1 %303 to i8, !dbg !1585
  %305 = and i8 %228, %304, !dbg !1586
  call void @llvm.dbg.value(metadata i8 %305, metadata !71, metadata !DIExpression()), !dbg !1475
  br label %306, !dbg !1587

; <label>:306:                                    ; preds = %230, %295, %302, %299
  %307 = phi i8 [ %228, %295 ], [ %305, %302 ], [ %228, %299 ], [ 0, %230 ], !dbg !1485
  call void @llvm.dbg.value(metadata i8 %307, metadata !71, metadata !DIExpression()), !dbg !1475
  br i1 %128, label %308, label %309, !dbg !1588

; <label>:308:                                    ; preds = %306
  call void @llvm.dbg.value(metadata %struct.Tokens* %3, metadata !122, metadata !DIExpression(DW_OP_deref)), !dbg !1295
  call void @readtokens0_free(%struct.Tokens* nonnull %3) #13, !dbg !1589
  br label %309, !dbg !1589

; <label>:309:                                    ; preds = %308, %306
  %310 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %129) #15, !dbg !1591
  %311 = icmp ugt i64 %310, 1, !dbg !1593
  br i1 %311, label %312, label %319, !dbg !1594

; <label>:312:                                    ; preds = %309
  %313 = load i64, i64* @total_lines, align 8, !dbg !1595, !tbaa !1207
  %314 = load i64, i64* @total_words, align 8, !dbg !1596, !tbaa !1207
  %315 = load i64, i64* @total_chars, align 8, !dbg !1597, !tbaa !1207
  %316 = load i64, i64* @total_bytes, align 8, !dbg !1598, !tbaa !1207
  %317 = load i64, i64* @max_line_length, align 8, !dbg !1599, !tbaa !1207
  %318 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 5) #13, !dbg !1600
  call fastcc void @write_counts(i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i8* %318), !dbg !1601
  br label %319, !dbg !1601

; <label>:319:                                    ; preds = %312, %309
  call void @argv_iter_free(%struct.argv_iterator* nonnull %129) #13, !dbg !1602
  call void @free(i8* %139) #13, !dbg !1603
  %320 = load i1, i1* @have_read_stdin, align 1
  br i1 %320, label %321, label %327, !dbg !1604

; <label>:321:                                    ; preds = %319
  %322 = call i32 @close(i32 0) #13, !dbg !1606
  %323 = icmp eq i32 %322, 0, !dbg !1607
  br i1 %323, label %327, label %324, !dbg !1608

; <label>:324:                                    ; preds = %321
  %325 = tail call i32* @__errno_location() #17, !dbg !1609
  %326 = load i32, i32* %325, align 4, !dbg !1609, !tbaa !1243
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #13, !dbg !1609
  unreachable, !dbg !1609

; <label>:327:                                    ; preds = %319, %321
  %328 = and i8 %307, 1, !dbg !1610
  %329 = xor i8 %328, 1, !dbg !1610
  %330 = zext i8 %329 to i32, !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %6) #13, !dbg !1611
  ret i32 %330, !dbg !1611
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @wc(i32, i8*, %struct.fstatus*, i64) unnamed_addr #7 !dbg !1612 {
  %5 = alloca [16385 x i8], align 16
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to %struct.__mbstate_t*
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1618, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %1, metadata !1619, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata %struct.fstatus* %2, metadata !1620, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1698
  %9 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 0, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 16385, i8* nonnull %9) #13, !dbg !1699
  call void @llvm.dbg.declare(metadata [16385 x i8]* %5, metadata !1623, metadata !DIExpression()), !dbg !1700
  %10 = icmp eq i8* %1, null, !dbg !1701
  br i1 %10, label %11, label %13, !dbg !1701

; <label>:11:                                     ; preds = %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 5) #13, !dbg !1702
  br label %13, !dbg !1701

; <label>:13:                                     ; preds = %4, %11
  %14 = phi i8* [ %12, %11 ], [ %1, %4 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8* %14, metadata !1636, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 0, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 0, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1708
  %15 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !1709
  %16 = icmp ugt i64 %15, 1, !dbg !1711
  %17 = load i1, i1* @print_bytes, align 1
  %18 = load i1, i1* @print_chars, align 1
  %19 = xor i1 %16, true, !dbg !1712
  %20 = and i1 %18, %19, !dbg !1712
  %21 = or i1 %17, %20, !dbg !1712
  %22 = and i1 %16, %18, !dbg !1712
  %23 = load i1, i1* @print_words, align 1
  %24 = load i1, i1* @print_linelength, align 1
  %25 = or i1 %23, %24, !dbg !1713
  %26 = xor i1 %21, true, !dbg !1714
  %27 = or i1 %22, %26, !dbg !1714
  %28 = load i1, i1* @print_lines, align 1
  %29 = or i1 %28, %25, !dbg !1716
  %30 = or i1 %27, %29, !dbg !1714
  br i1 %30, label %31, label %33, !dbg !1714

; <label>:31:                                     ; preds = %13
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13, !dbg !1717
  %32 = load i1, i1* @print_lines, align 1
  br label %33, !dbg !1717

; <label>:33:                                     ; preds = %13, %31
  %34 = phi i1 [ false, %13 ], [ %32, %31 ]
  %35 = or i1 %25, %34, !dbg !1718
  %36 = or i1 %27, %35, !dbg !1719
  br i1 %36, label %98, label %37, !dbg !1719

; <label>:37:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1720
  %38 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 0, !dbg !1721
  %39 = load i32, i32* %38, align 8, !dbg !1721, !tbaa !1381
  %40 = icmp sgt i32 %39, 0, !dbg !1723
  br i1 %40, label %41, label %44, !dbg !1724

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %0, metadata !1271, metadata !DIExpression()) #13, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.stat* %42, metadata !1278, metadata !DIExpression()) #13, !dbg !1726
  %43 = tail call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %42) #13, !dbg !1728
  store i32 %43, i32* %38, align 8, !dbg !1729, !tbaa !1381
  br label %44, !dbg !1730

; <label>:44:                                     ; preds = %41, %37
  %45 = phi i32 [ %43, %41 ], [ %39, %37 ], !dbg !1731
  %46 = icmp eq i32 %45, 0, !dbg !1732
  br i1 %46, label %47, label %87, !dbg !1733

; <label>:47:                                     ; preds = %44
  call void @llvm.dbg.value(metadata %struct.fstatus* %2, metadata !1734, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1741
  %48 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 3, !dbg !1743
  %49 = load i32, i32* %48, align 8, !dbg !1743, !tbaa !1285
  %50 = trunc i32 %49 to i16, !dbg !1744
  %51 = and i16 %50, -4096, !dbg !1744
  switch i16 %51, label %87 [
    i16 -32768, label %52
    i16 -24576, label %52
  ], !dbg !1744

; <label>:52:                                     ; preds = %47, %47
  %53 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 8, !dbg !1745
  %54 = load i64, i64* %53, align 8, !dbg !1745, !tbaa !1452
  %55 = icmp sgt i64 %54, -1, !dbg !1746
  br i1 %55, label %56, label %87, !dbg !1747

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %54, metadata !1640, metadata !DIExpression()), !dbg !1748
  %57 = icmp slt i64 %3, 0, !dbg !1749
  br i1 %57, label %58, label %60, !dbg !1751

; <label>:58:                                     ; preds = %56
  %59 = tail call i64 @lseek(i32 %0, i64 0, i32 1) #13, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %59, metadata !1621, metadata !DIExpression()), !dbg !1697
  br label %60, !dbg !1753

; <label>:60:                                     ; preds = %58, %56
  %61 = phi i64 [ %59, %58 ], [ %3, %56 ]
  call void @llvm.dbg.value(metadata i64 %61, metadata !1621, metadata !DIExpression()), !dbg !1697
  %62 = load i64, i64* @page_size, align 8, !dbg !1754, !tbaa !1207
  %63 = urem i64 %54, %62, !dbg !1755
  %64 = icmp eq i64 %63, 0, !dbg !1755
  br i1 %64, label %65, label %83, !dbg !1756

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 9, !dbg !1757
  %67 = load i64, i64* %66, align 8, !dbg !1757, !tbaa !1758
  %68 = icmp sgt i64 %67, 0, !dbg !1757
  %69 = icmp ult i64 %67, 2305843009213693953, !dbg !1757
  %70 = and i1 %68, %69, !dbg !1757
  %71 = add i64 %67, 1, !dbg !1757
  %72 = select i1 %70, i64 %71, i64 513, !dbg !1757
  %73 = urem i64 %54, %72, !dbg !1759
  %74 = sub i64 %54, %73, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %74, metadata !1643, metadata !DIExpression()), !dbg !1761
  %75 = icmp sgt i64 %61, -1, !dbg !1762
  %76 = icmp sgt i64 %74, %61, !dbg !1764
  %77 = and i1 %75, %76, !dbg !1765
  br i1 %77, label %78, label %87, !dbg !1765

; <label>:78:                                     ; preds = %65
  %79 = tail call i64 @lseek(i32 %0, i64 %74, i32 1) #13, !dbg !1766
  %80 = icmp sgt i64 %79, -1, !dbg !1767
  %81 = sub nsw i64 %74, %61, !dbg !1768
  %82 = select i1 %80, i64 %81, i64 0, !dbg !1769
  br label %87, !dbg !1769

; <label>:83:                                     ; preds = %60
  %84 = icmp ult i64 %54, %61, !dbg !1770
  %85 = select i1 %84, i64 %61, i64 %54, !dbg !1770
  %86 = sub i64 %85, %61, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %86, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %86, metadata !1631, metadata !DIExpression()), !dbg !1705
  br label %436, !dbg !1772

; <label>:87:                                     ; preds = %44, %52, %78, %65, %47
  %88 = phi i64 [ 0, %47 ], [ %82, %78 ], [ 0, %65 ], [ 0, %52 ], [ 0, %44 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !1631, metadata !DIExpression()), !dbg !1705
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #13, !dbg !1773
  br label %89, !dbg !1776

; <label>:89:                                     ; preds = %96, %87
  %90 = phi i64 [ %88, %87 ], [ %97, %96 ], !dbg !1777
  call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1705
  %91 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %91, metadata !1627, metadata !DIExpression()), !dbg !1780
  switch i64 %91, label %96 [
    i64 0, label %436
    i64 -1, label %92
  ], !dbg !1776

; <label>:92:                                     ; preds = %89
  call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1705
  %93 = tail call i32* @__errno_location() #17, !dbg !1781
  %94 = load i32, i32* %93, align 4, !dbg !1781, !tbaa !1243
  %95 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1784
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %95) #13, !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1698
  br label %436, !dbg !1786

; <label>:96:                                     ; preds = %89
  %97 = add i64 %91, %90, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %97, metadata !1631, metadata !DIExpression()), !dbg !1705
  br label %89, !dbg !1776, !llvm.loop !1788

; <label>:98:                                     ; preds = %33
  %99 = or i1 %22, %25, !dbg !1790
  br i1 %99, label %194, label %100, !dbg !1790

; <label>:100:                                    ; preds = %98, %189
  %101 = phi i64 [ %110, %189 ], [ 0, %98 ], !dbg !1791
  %102 = phi i64 [ %190, %189 ], [ 0, %98 ], !dbg !1792
  %103 = phi i1 [ %193, %189 ], [ false, %98 ], !dbg !1793
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %101, metadata !1631, metadata !DIExpression()), !dbg !1705
  %104 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %104, metadata !1627, metadata !DIExpression()), !dbg !1780
  switch i64 %104, label %109 [
    i64 0, label %436
    i64 -1, label %105
  ], !dbg !1796

; <label>:105:                                    ; preds = %100
  call void @llvm.dbg.value(metadata i64 %101, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %101, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %101, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %101, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %101, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %101, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  %106 = tail call i32* @__errno_location() #17, !dbg !1797
  %107 = load i32, i32* %106, align 4, !dbg !1797, !tbaa !1243
  %108 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1800
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %108) #13, !dbg !1801
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1698
  br label %436, !dbg !1802

; <label>:109:                                    ; preds = %100
  %110 = add i64 %104, %101, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %110, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %9, metadata !1649, metadata !DIExpression()), !dbg !1804
  %111 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %104, !dbg !1805
  call void @llvm.dbg.value(metadata i8* %111, metadata !1651, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %102, metadata !1652, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8* %9, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %9, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %102, metadata !1628, metadata !DIExpression()), !dbg !1708
  br i1 %103, label %132, label %112, !dbg !1808

; <label>:112:                                    ; preds = %109
  %113 = add i64 %104, -1, !dbg !1809
  %114 = and i64 %104, 7, !dbg !1809
  %115 = icmp eq i64 %114, 0, !dbg !1809
  br i1 %115, label %127, label %116, !dbg !1809

; <label>:116:                                    ; preds = %112, %116
  %117 = phi i8* [ %120, %116 ], [ %9, %112 ]
  %118 = phi i64 [ %124, %116 ], [ %102, %112 ]
  %119 = phi i64 [ %125, %116 ], [ %114, %112 ]
  call void @llvm.dbg.value(metadata i8* %117, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %118, metadata !1628, metadata !DIExpression()), !dbg !1708
  %120 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !1809
  %121 = load i8, i8* %117, align 1, !dbg !1812, !tbaa !1489
  %122 = icmp eq i8 %121, 10, !dbg !1813
  %123 = zext i1 %122 to i64, !dbg !1812
  %124 = add i64 %118, %123, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %120, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %124, metadata !1628, metadata !DIExpression()), !dbg !1708
  %125 = add i64 %119, -1, !dbg !1815
  %126 = icmp eq i64 %125, 0, !dbg !1815
  br i1 %126, label %127, label %116, !dbg !1815, !llvm.loop !1816

; <label>:127:                                    ; preds = %116, %112
  %128 = phi i64 [ undef, %112 ], [ %124, %116 ]
  %129 = phi i8* [ %9, %112 ], [ %120, %116 ]
  %130 = phi i64 [ %102, %112 ], [ %124, %116 ]
  %131 = icmp ult i64 %113, 7, !dbg !1809
  br i1 %131, label %189, label %136, !dbg !1809

; <label>:132:                                    ; preds = %109
  %133 = ptrtoint i8* %111 to i64, !dbg !1818
  %134 = call i8* @memchr(i8* nonnull %9, i32 10, i64 %104) #15, !dbg !1820
  call void @llvm.dbg.value(metadata i8* %134, metadata !1649, metadata !DIExpression()), !dbg !1804
  %135 = icmp eq i8* %134, null, !dbg !1821
  br i1 %135, label %189, label %180, !dbg !1821

; <label>:136:                                    ; preds = %127, %136
  %137 = phi i8* [ %174, %136 ], [ %129, %127 ]
  %138 = phi i64 [ %178, %136 ], [ %130, %127 ]
  call void @llvm.dbg.value(metadata i8* %137, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %138, metadata !1628, metadata !DIExpression()), !dbg !1708
  %139 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !1809
  %140 = load i8, i8* %137, align 1, !dbg !1812, !tbaa !1489
  %141 = icmp eq i8 %140, 10, !dbg !1813
  %142 = zext i1 %141 to i64, !dbg !1812
  %143 = add i64 %138, %142, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %139, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %143, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %139, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %143, metadata !1628, metadata !DIExpression()), !dbg !1708
  %144 = getelementptr inbounds i8, i8* %137, i64 2, !dbg !1809
  %145 = load i8, i8* %139, align 1, !dbg !1812, !tbaa !1489
  %146 = icmp eq i8 %145, 10, !dbg !1813
  %147 = zext i1 %146 to i64, !dbg !1812
  %148 = add i64 %143, %147, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %144, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %148, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %144, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %148, metadata !1628, metadata !DIExpression()), !dbg !1708
  %149 = getelementptr inbounds i8, i8* %137, i64 3, !dbg !1809
  %150 = load i8, i8* %144, align 1, !dbg !1812, !tbaa !1489
  %151 = icmp eq i8 %150, 10, !dbg !1813
  %152 = zext i1 %151 to i64, !dbg !1812
  %153 = add i64 %148, %152, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %149, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %153, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %149, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %153, metadata !1628, metadata !DIExpression()), !dbg !1708
  %154 = getelementptr inbounds i8, i8* %137, i64 4, !dbg !1809
  %155 = load i8, i8* %149, align 1, !dbg !1812, !tbaa !1489
  %156 = icmp eq i8 %155, 10, !dbg !1813
  %157 = zext i1 %156 to i64, !dbg !1812
  %158 = add i64 %153, %157, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %154, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %158, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %154, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %158, metadata !1628, metadata !DIExpression()), !dbg !1708
  %159 = getelementptr inbounds i8, i8* %137, i64 5, !dbg !1809
  %160 = load i8, i8* %154, align 1, !dbg !1812, !tbaa !1489
  %161 = icmp eq i8 %160, 10, !dbg !1813
  %162 = zext i1 %161 to i64, !dbg !1812
  %163 = add i64 %158, %162, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %159, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %163, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %159, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %163, metadata !1628, metadata !DIExpression()), !dbg !1708
  %164 = getelementptr inbounds i8, i8* %137, i64 6, !dbg !1809
  %165 = load i8, i8* %159, align 1, !dbg !1812, !tbaa !1489
  %166 = icmp eq i8 %165, 10, !dbg !1813
  %167 = zext i1 %166 to i64, !dbg !1812
  %168 = add i64 %163, %167, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %164, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %168, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %164, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %168, metadata !1628, metadata !DIExpression()), !dbg !1708
  %169 = getelementptr inbounds i8, i8* %137, i64 7, !dbg !1809
  %170 = load i8, i8* %164, align 1, !dbg !1812, !tbaa !1489
  %171 = icmp eq i8 %170, 10, !dbg !1813
  %172 = zext i1 %171 to i64, !dbg !1812
  %173 = add i64 %168, %172, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %169, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %173, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %169, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %173, metadata !1628, metadata !DIExpression()), !dbg !1708
  %174 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !1809
  %175 = load i8, i8* %169, align 1, !dbg !1812, !tbaa !1489
  %176 = icmp eq i8 %175, 10, !dbg !1813
  %177 = zext i1 %176 to i64, !dbg !1812
  %178 = add i64 %173, %177, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %174, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %178, metadata !1628, metadata !DIExpression()), !dbg !1708
  %179 = icmp eq i8* %174, %111, !dbg !1822
  br i1 %179, label %189, label %136, !dbg !1815, !llvm.loop !1823

; <label>:180:                                    ; preds = %132, %180
  %181 = phi i8* [ %187, %180 ], [ %134, %132 ]
  %182 = phi i64 [ %184, %180 ], [ %102, %132 ]
  call void @llvm.dbg.value(metadata i64 %182, metadata !1628, metadata !DIExpression()), !dbg !1708
  %183 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !1825
  %184 = add i64 %182, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i8* %183, metadata !1649, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %184, metadata !1628, metadata !DIExpression()), !dbg !1708
  %185 = ptrtoint i8* %183 to i64, !dbg !1818
  %186 = sub i64 %133, %185, !dbg !1818
  %187 = call i8* @memchr(i8* nonnull %183, i32 10, i64 %186) #15, !dbg !1820
  call void @llvm.dbg.value(metadata i8* %187, metadata !1649, metadata !DIExpression()), !dbg !1804
  %188 = icmp eq i8* %187, null, !dbg !1821
  br i1 %188, label %189, label %180, !dbg !1821, !llvm.loop !1828

; <label>:189:                                    ; preds = %127, %136, %180, %132
  %190 = phi i64 [ %102, %132 ], [ %184, %180 ], [ %128, %127 ], [ %178, %136 ], !dbg !1792
  call void @llvm.dbg.value(metadata i64 %190, metadata !1628, metadata !DIExpression()), !dbg !1708
  %191 = sub i64 %190, %102, !dbg !1830
  %192 = udiv i64 %104, 15, !dbg !1831
  %193 = icmp ule i64 %191, %192, !dbg !1832
  br label %100, !dbg !1796, !llvm.loop !1833

; <label>:194:                                    ; preds = %98
  %195 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !1835
  %196 = icmp ugt i64 %195, 1, !dbg !1836
  br i1 %196, label %197, label %367, !dbg !1837

; <label>:197:                                    ; preds = %194
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1656, metadata !DIExpression()), !dbg !1839
  %198 = bitcast i64* %6 to i8*, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %198) #13, !dbg !1840
  store i64 0, i64* %6, align 8, !dbg !1841
  call void @llvm.dbg.value(metadata i8 0, metadata !1673, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 0, metadata !1674, metadata !DIExpression()), !dbg !1843
  %199 = bitcast i32* %8 to i8*
  br label %200, !dbg !1844

; <label>:200:                                    ; preds = %250, %197
  %201 = phi i64 [ 0, %197 ], [ %251, %250 ], !dbg !1845
  %202 = phi i64 [ 0, %197 ], [ %218, %250 ], !dbg !1846
  %203 = phi i64 [ 0, %197 ], [ %252, %250 ], !dbg !1847
  %204 = phi i64 [ 0, %197 ], [ %253, %250 ], !dbg !1848
  %205 = phi i64 [ 0, %197 ], [ %254, %250 ], !dbg !1792
  %206 = phi i8 [ 0, %197 ], [ %255, %250 ], !dbg !1838
  %207 = phi i64 [ 0, %197 ], [ %256, %250 ], !dbg !1839
  %208 = phi i8 [ 0, %197 ], [ %257, %250 ], !dbg !1842
  %209 = phi i64 [ 0, %197 ], [ %258, %250 ], !dbg !1843
  call void @llvm.dbg.value(metadata i64 %209, metadata !1674, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 %208, metadata !1673, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  %210 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %209, !dbg !1849
  %211 = sub i64 16384, %209, !dbg !1850
  %212 = call i64 @safe_read(i32 %0, i8* nonnull %210, i64 %211) #13, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %212, metadata !1627, metadata !DIExpression()), !dbg !1780
  switch i64 %212, label %217 [
    i64 0, label %358
    i64 -1, label %213
  ], !dbg !1844

; <label>:213:                                    ; preds = %200
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  %214 = tail call i32* @__errno_location() #17, !dbg !1852
  %215 = load i32, i32* %214, align 4, !dbg !1852, !tbaa !1243
  %216 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1855
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %216) #13, !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %218, metadata !1631, metadata !DIExpression()), !dbg !1705
  br label %358

; <label>:217:                                    ; preds = %200
  %218 = add i64 %212, %202, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %218, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %9, metadata !1675, metadata !DIExpression()), !dbg !1858
  %219 = add i64 %212, %209, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %219, metadata !1627, metadata !DIExpression()), !dbg !1780
  br label %220, !dbg !1860

; <label>:220:                                    ; preds = %341, %217
  %221 = phi i64 [ %201, %217 ], [ %342, %341 ], !dbg !1845
  %222 = phi i64 [ %203, %217 ], [ %343, %341 ], !dbg !1847
  %223 = phi i64 [ %204, %217 ], [ %344, %341 ], !dbg !1848
  %224 = phi i64 [ %205, %217 ], [ %345, %341 ], !dbg !1792
  %225 = phi i64 [ %219, %217 ], [ %346, %341 ], !dbg !1859
  %226 = phi i8 [ %206, %217 ], [ %347, %341 ], !dbg !1838
  %227 = phi i64 [ %207, %217 ], [ %348, %341 ], !dbg !1839
  %228 = phi i8 [ %208, %217 ], [ %349, %341 ], !dbg !1861
  %229 = phi i8* [ %9, %217 ], [ %350, %341 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8* %229, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %228, metadata !1673, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %227, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %226, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %224, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %223, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %222, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %221, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %199) #13, !dbg !1865
  call void @llvm.dbg.value(metadata i8 1, metadata !1682, metadata !DIExpression()), !dbg !1866
  %230 = and i8 %228, 1, !dbg !1867
  %231 = icmp eq i8 %230, 0, !dbg !1867
  br i1 %231, label %232, label %245, !dbg !1868

; <label>:232:                                    ; preds = %220
  %233 = load i8, i8* %229, align 1, !dbg !1869, !tbaa !1489
  call void @llvm.dbg.value(metadata i8 %233, metadata !1870, metadata !DIExpression()), !dbg !1876
  %234 = zext i8 %233 to i32, !dbg !1878
  %235 = lshr i32 %234, 5, !dbg !1879
  %236 = zext i32 %235 to i64, !dbg !1880
  %237 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %236, !dbg !1880
  %238 = load i32, i32* %237, align 4, !dbg !1880, !tbaa !1243
  %239 = and i32 %234, 31, !dbg !1881
  %240 = shl i32 1, %239, !dbg !1882
  %241 = and i32 %240, %238, !dbg !1882
  %242 = icmp eq i32 %241, 0, !dbg !1882
  br i1 %242, label %245, label %243, !dbg !1883

; <label>:243:                                    ; preds = %232
  call void @llvm.dbg.value(metadata i64 1, metadata !1681, metadata !DIExpression()), !dbg !1884
  %244 = sext i8 %233 to i32, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %244, metadata !1678, metadata !DIExpression()), !dbg !1887
  store i32 %244, i32* %8, align 4, !dbg !1888, !tbaa !1243
  call void @llvm.dbg.value(metadata i8 0, metadata !1682, metadata !DIExpression()), !dbg !1866
  br label %270, !dbg !1889

; <label>:245:                                    ; preds = %232, %220
  call void @llvm.dbg.value(metadata i8 1, metadata !1673, metadata !DIExpression()), !dbg !1842
  %246 = load i64, i64* %6, align 8, !dbg !1890
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %7, metadata !1657, metadata !DIExpression(DW_OP_deref)), !dbg !1841
  call void @llvm.dbg.value(metadata i32* %8, metadata !1678, metadata !DIExpression(DW_OP_deref)), !dbg !1887
  %247 = call i64 @rpl_mbrtowc(i32* nonnull %8, i8* %229, i64 %225, %struct.__mbstate_t* nonnull %7) #13, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %247, metadata !1681, metadata !DIExpression()), !dbg !1884
  switch i64 %247, label %262 [
    i64 -2, label %248
    i64 -1, label %259
  ], !dbg !1892

; <label>:248:                                    ; preds = %245
  call void @llvm.dbg.value(metadata i64 %221, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %222, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %223, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %224, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %226, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %227, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %229, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %221, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %222, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %223, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %224, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %226, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %227, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %229, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %221, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %222, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %223, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %224, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %226, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %227, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %229, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %221, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %222, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %223, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %224, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %226, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %227, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %229, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %221, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %222, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %223, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %224, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %226, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %227, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %229, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %221, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %222, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %223, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %224, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %226, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %227, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %229, metadata !1675, metadata !DIExpression()), !dbg !1858
  store i64 %246, i64* %6, align 8, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %350, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %349, metadata !1673, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %348, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %347, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %346, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %345, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %344, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %343, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %342, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %199) #13, !dbg !1896
  %249 = icmp eq i64 %225, 0, !dbg !1897
  br i1 %249, label %250, label %352, !dbg !1898

; <label>:250:                                    ; preds = %341, %248, %352
  %251 = phi i64 [ %221, %352 ], [ %221, %248 ], [ %342, %341 ]
  %252 = phi i64 [ %222, %352 ], [ %222, %248 ], [ %343, %341 ]
  %253 = phi i64 [ %223, %352 ], [ %223, %248 ], [ %344, %341 ]
  %254 = phi i64 [ %224, %352 ], [ %224, %248 ], [ %345, %341 ]
  %255 = phi i8 [ %226, %352 ], [ %226, %248 ], [ %347, %341 ]
  %256 = phi i64 [ %227, %352 ], [ %227, %248 ], [ %348, %341 ]
  %257 = phi i8 [ 1, %352 ], [ 1, %248 ], [ %349, %341 ]
  %258 = phi i64 [ %356, %352 ], [ 0, %248 ], [ 0, %341 ]
  br label %200, !dbg !1843

; <label>:259:                                    ; preds = %245
  %260 = getelementptr inbounds i8, i8* %229, i64 1, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %260, metadata !1675, metadata !DIExpression()), !dbg !1858
  %261 = add i64 %225, -1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %261, metadata !1627, metadata !DIExpression()), !dbg !1780
  br label %341, !dbg !1903

; <label>:262:                                    ; preds = %245
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %7, metadata !1657, metadata !DIExpression(DW_OP_deref)), !dbg !1841
  %263 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %7) #15, !dbg !1904
  %264 = icmp eq i32 %263, 0, !dbg !1904
  %265 = zext i1 %264 to i8, !dbg !1906
  call void @llvm.dbg.value(metadata i8 %265, metadata !1673, metadata !DIExpression()), !dbg !1842
  %266 = icmp eq i64 %247, 0, !dbg !1907
  br i1 %266, label %267, label %268, !dbg !1909

; <label>:267:                                    ; preds = %262
  call void @llvm.dbg.value(metadata i32 0, metadata !1678, metadata !DIExpression()), !dbg !1887
  store i32 0, i32* %8, align 4, !dbg !1910, !tbaa !1243
  call void @llvm.dbg.value(metadata i64 1, metadata !1681, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %273, metadata !1681, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 %272, metadata !1673, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %271, metadata !1678, metadata !DIExpression()), !dbg !1887
  br label %297, !dbg !1912

; <label>:268:                                    ; preds = %262
  %269 = load i32, i32* %8, align 4, !dbg !1913, !tbaa !1243
  br label %270, !dbg !1913

; <label>:270:                                    ; preds = %268, %243
  %271 = phi i32 [ %269, %268 ], [ %244, %243 ], !dbg !1913
  %272 = phi i8 [ %265, %268 ], [ %228, %243 ], !dbg !1914
  %273 = phi i64 [ %247, %268 ], [ 1, %243 ], !dbg !1915
  %274 = phi i1 [ true, %268 ], [ false, %243 ]
  call void @llvm.dbg.value(metadata i64 %273, metadata !1681, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 %272, metadata !1673, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %271, metadata !1678, metadata !DIExpression()), !dbg !1887
  switch i32 %271, label %296 [
    i32 10, label %275
    i32 13, label %277
    i32 12, label %277
    i32 9, label %281
    i32 32, label %285
    i32 11, label %287
  ], !dbg !1916

; <label>:275:                                    ; preds = %270
  %276 = add i64 %224, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %276, metadata !1628, metadata !DIExpression()), !dbg !1708
  br label %277, !dbg !1918

; <label>:277:                                    ; preds = %270, %270, %275
  %278 = phi i64 [ %224, %270 ], [ %224, %270 ], [ %276, %275 ], !dbg !1919
  call void @llvm.dbg.value(metadata i64 %278, metadata !1628, metadata !DIExpression()), !dbg !1708
  %279 = icmp ugt i64 %227, %221, !dbg !1920
  %280 = select i1 %279, i64 %227, i64 %221, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %280, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1656, metadata !DIExpression()), !dbg !1839
  br label %287, !dbg !1923

; <label>:281:                                    ; preds = %270
  %282 = and i64 %227, 7, !dbg !1924
  %283 = add i64 %227, 8, !dbg !1925
  %284 = sub i64 %283, %282, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %284, metadata !1656, metadata !DIExpression()), !dbg !1839
  br label %287, !dbg !1927

; <label>:285:                                    ; preds = %270
  %286 = add i64 %227, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %286, metadata !1656, metadata !DIExpression()), !dbg !1839
  br label %287, !dbg !1929

; <label>:287:                                    ; preds = %312, %326, %285, %270, %281, %277
  %288 = phi i64 [ %300, %312 ], [ %273, %326 ], [ %273, %270 ], [ %273, %285 ], [ %273, %281 ], [ %273, %277 ]
  %289 = phi i8 [ %299, %312 ], [ %272, %326 ], [ %272, %270 ], [ %272, %285 ], [ %272, %281 ], [ %272, %277 ]
  %290 = phi i64 [ %221, %312 ], [ %221, %326 ], [ %221, %270 ], [ %221, %285 ], [ %221, %281 ], [ %280, %277 ], !dbg !1930
  %291 = phi i64 [ %224, %312 ], [ %224, %326 ], [ %224, %270 ], [ %224, %285 ], [ %224, %281 ], [ %278, %277 ], !dbg !1792
  %292 = phi i64 [ %313, %312 ], [ %327, %326 ], [ %227, %270 ], [ %286, %285 ], [ %284, %281 ], [ 0, %277 ], !dbg !1919
  call void @llvm.dbg.value(metadata i64 %292, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %291, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %290, metadata !1632, metadata !DIExpression()), !dbg !1704
  %293 = and i8 %226, 1, !dbg !1931
  %294 = zext i8 %293 to i64, !dbg !1931
  %295 = add i64 %223, %294, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %295, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1838
  br label %330, !dbg !1933

; <label>:296:                                    ; preds = %270
  br i1 %274, label %297, label %317, !dbg !1912

; <label>:297:                                    ; preds = %267, %296
  %298 = phi i32 [ 0, %267 ], [ %271, %296 ]
  %299 = phi i8 [ %265, %267 ], [ %272, %296 ]
  %300 = phi i64 [ 1, %267 ], [ %273, %296 ]
  %301 = call i32 @iswprint(i32 %298) #13, !dbg !1934
  %302 = icmp eq i32 %301, 0, !dbg !1934
  br i1 %302, label %330, label %303, !dbg !1935

; <label>:303:                                    ; preds = %297
  %304 = load i1, i1* @print_linelength, align 1
  br i1 %304, label %305, label %312, !dbg !1936

; <label>:305:                                    ; preds = %303
  %306 = load i32, i32* %8, align 4, !dbg !1937, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %306, metadata !1678, metadata !DIExpression()), !dbg !1887
  %307 = call i32 @wcwidth(i32 %306) #13, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %307, metadata !1683, metadata !DIExpression()), !dbg !1939
  %308 = icmp sgt i32 %307, 0, !dbg !1940
  %309 = select i1 %308, i32 %307, i32 0, !dbg !1942
  %310 = zext i32 %309 to i64, !dbg !1942
  %311 = add i64 %227, %310, !dbg !1942
  br label %312, !dbg !1942

; <label>:312:                                    ; preds = %305, %303
  %313 = phi i64 [ %227, %303 ], [ %311, %305 ], !dbg !1914
  call void @llvm.dbg.value(metadata i64 %313, metadata !1656, metadata !DIExpression()), !dbg !1839
  %314 = load i32, i32* %8, align 4, !dbg !1943, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %314, metadata !1678, metadata !DIExpression()), !dbg !1887
  %315 = call i32 @iswspace(i32 %314) #13, !dbg !1945
  %316 = icmp eq i32 %315, 0, !dbg !1945
  br i1 %316, label %330, label %287, !dbg !1946

; <label>:317:                                    ; preds = %296
  %318 = tail call i16** @__ctype_b_loc() #17, !dbg !1947
  %319 = load i16*, i16** %318, align 8, !dbg !1947, !tbaa !1147
  %320 = load i8, i8* %229, align 1, !dbg !1947, !tbaa !1489
  %321 = zext i8 %320 to i64, !dbg !1947
  %322 = getelementptr inbounds i16, i16* %319, i64 %321, !dbg !1947
  %323 = load i16, i16* %322, align 2, !dbg !1947, !tbaa !1949
  %324 = and i16 %323, 16384, !dbg !1947
  %325 = icmp eq i16 %324, 0, !dbg !1947
  br i1 %325, label %330, label %326, !dbg !1951

; <label>:326:                                    ; preds = %317
  %327 = add i64 %227, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %327, metadata !1656, metadata !DIExpression()), !dbg !1839
  %328 = and i16 %323, 8192, !dbg !1954
  %329 = icmp eq i16 %328, 0, !dbg !1954
  br i1 %329, label %330, label %287, !dbg !1956

; <label>:330:                                    ; preds = %297, %326, %312, %317, %287
  %331 = phi i64 [ %288, %287 ], [ %273, %317 ], [ %300, %312 ], [ %273, %326 ], [ %300, %297 ]
  %332 = phi i8 [ %289, %287 ], [ %272, %317 ], [ %299, %312 ], [ %272, %326 ], [ %299, %297 ]
  %333 = phi i64 [ %290, %287 ], [ %221, %317 ], [ %221, %312 ], [ %221, %326 ], [ %221, %297 ], !dbg !1845
  %334 = phi i64 [ %295, %287 ], [ %223, %317 ], [ %223, %312 ], [ %223, %326 ], [ %223, %297 ], !dbg !1957
  %335 = phi i64 [ %291, %287 ], [ %224, %317 ], [ %224, %312 ], [ %224, %326 ], [ %224, %297 ], !dbg !1792
  %336 = phi i8 [ 0, %287 ], [ %226, %317 ], [ 1, %312 ], [ 1, %326 ], [ %226, %297 ], !dbg !1914
  %337 = phi i64 [ %292, %287 ], [ %227, %317 ], [ %313, %312 ], [ %327, %326 ], [ %227, %297 ], !dbg !1914
  call void @llvm.dbg.value(metadata i64 %337, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %336, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %335, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %334, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %333, metadata !1632, metadata !DIExpression()), !dbg !1704
  %338 = getelementptr inbounds i8, i8* %229, i64 %331, !dbg !1958
  call void @llvm.dbg.value(metadata i8* %338, metadata !1675, metadata !DIExpression()), !dbg !1858
  %339 = sub i64 %225, %331, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %339, metadata !1627, metadata !DIExpression()), !dbg !1780
  %340 = add i64 %222, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %340, metadata !1630, metadata !DIExpression()), !dbg !1706
  br label %341, !dbg !1896

; <label>:341:                                    ; preds = %330, %259
  %342 = phi i64 [ %221, %259 ], [ %333, %330 ], !dbg !1845
  %343 = phi i64 [ %222, %259 ], [ %340, %330 ], !dbg !1961
  %344 = phi i64 [ %223, %259 ], [ %334, %330 ], !dbg !1919
  %345 = phi i64 [ %224, %259 ], [ %335, %330 ], !dbg !1792
  %346 = phi i64 [ %261, %259 ], [ %339, %330 ], !dbg !1961
  %347 = phi i8 [ %226, %259 ], [ %336, %330 ], !dbg !1919
  %348 = phi i64 [ %227, %259 ], [ %337, %330 ], !dbg !1962
  %349 = phi i8 [ 1, %259 ], [ %332, %330 ], !dbg !1963
  %350 = phi i8* [ %260, %259 ], [ %338, %330 ], !dbg !1961
  call void @llvm.dbg.value(metadata i8* %350, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %349, metadata !1673, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %348, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %347, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %346, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %345, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %344, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %343, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %342, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %199) #13, !dbg !1896
  %351 = icmp eq i64 %346, 0, !dbg !1897
  br i1 %351, label %250, label %220, !llvm.loop !1964

; <label>:352:                                    ; preds = %248
  %353 = icmp eq i64 %225, 16384, !dbg !1966
  %354 = getelementptr inbounds i8, i8* %229, i64 1, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %354, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %225, metadata !1627, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1780
  %355 = sext i1 %353 to i64, !dbg !1972
  %356 = add i64 %225, %355, !dbg !1972
  %357 = select i1 %353, i8* %354, i8* %229, !dbg !1972
  call void @llvm.dbg.value(metadata i8* %357, metadata !1675, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %356, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 1 %357, i64 %356, i1 false), !dbg !1973
  br label %250, !dbg !1974

; <label>:358:                                    ; preds = %200, %213
  %359 = phi i8 [ 0, %213 ], [ 1, %200 ], !dbg !1957
  call void @llvm.dbg.value(metadata i64 %207, metadata !1656, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %206, metadata !1653, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %359, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %205, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %204, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %202, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %201, metadata !1632, metadata !DIExpression()), !dbg !1704
  %360 = icmp ugt i64 %207, %201, !dbg !1975
  %361 = select i1 %360, i64 %207, i64 %201, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %361, metadata !1632, metadata !DIExpression()), !dbg !1704
  %362 = and i8 %206, 1, !dbg !1978
  %363 = zext i8 %362 to i64, !dbg !1978
  %364 = add i64 %204, %363, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %364, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %198) #13, !dbg !1980
  br label %436, !dbg !1981

; <label>:365:                                    ; preds = %421
  call void @llvm.dbg.value(metadata i64 %422, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %423, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %425, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %426, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %422, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %423, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %425, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %426, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %422, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %423, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %425, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %426, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %422, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %423, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %425, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %426, metadata !1691, metadata !DIExpression()), !dbg !1983
  %366 = add i64 %374, %369, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %422, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %423, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %425, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %426, metadata !1691, metadata !DIExpression()), !dbg !1983
  br label %367, !dbg !1985

; <label>:367:                                    ; preds = %194, %365
  %368 = phi i64 [ %422, %365 ], [ 0, %194 ], !dbg !1845
  %369 = phi i64 [ %366, %365 ], [ 0, %194 ], !dbg !1846
  %370 = phi i64 [ %423, %365 ], [ 0, %194 ], !dbg !1848
  %371 = phi i64 [ %424, %365 ], [ 0, %194 ], !dbg !1792
  %372 = phi i8 [ %425, %365 ], [ 0, %194 ], !dbg !1982
  %373 = phi i64 [ %426, %365 ], [ 0, %194 ], !dbg !1983
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  %374 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #13, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %374, metadata !1627, metadata !DIExpression()), !dbg !1780
  switch i64 %374, label %379 [
    i64 0, label %429
    i64 -1, label %375
  ], !dbg !1986

; <label>:375:                                    ; preds = %367
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  %376 = tail call i32* @__errno_location() #17, !dbg !1987
  %377 = load i32, i32* %376, align 4, !dbg !1987, !tbaa !1243
  %378 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #13, !dbg !1990
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %377, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %378) #13, !dbg !1991
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %426, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 %425, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %423, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %366, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %422, metadata !1632, metadata !DIExpression()), !dbg !1704
  br label %429

; <label>:379:                                    ; preds = %367, %421
  %380 = phi i64 [ %422, %421 ], [ %368, %367 ], !dbg !1845
  %381 = phi i64 [ %423, %421 ], [ %370, %367 ], !dbg !1992
  %382 = phi i64 [ %424, %421 ], [ %371, %367 ], !dbg !1792
  %383 = phi i64 [ %427, %421 ], [ %374, %367 ], !dbg !1995
  %384 = phi i8 [ %425, %421 ], [ %372, %367 ], !dbg !1992
  %385 = phi i64 [ %426, %421 ], [ %373, %367 ], !dbg !1996
  %386 = phi i8* [ %387, %421 ], [ %9, %367 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8* %386, metadata !1692, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i64 %385, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 %384, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %383, metadata !1627, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %382, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %381, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %380, metadata !1632, metadata !DIExpression()), !dbg !1704
  %387 = getelementptr inbounds i8, i8* %386, i64 1, !dbg !2001
  call void @llvm.dbg.value(metadata i8* %387, metadata !1692, metadata !DIExpression()), !dbg !2000
  %388 = load i8, i8* %386, align 1, !dbg !2002, !tbaa !1489
  %389 = sext i8 %388 to i32, !dbg !2002
  switch i32 %389, label %409 [
    i32 10, label %390
    i32 13, label %392
    i32 12, label %392
    i32 9, label %396
    i32 32, label %400
    i32 11, label %402
  ], !dbg !2003

; <label>:390:                                    ; preds = %379
  %391 = add i64 %382, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %391, metadata !1628, metadata !DIExpression()), !dbg !1708
  br label %392, !dbg !2005

; <label>:392:                                    ; preds = %379, %379, %390
  %393 = phi i64 [ %382, %379 ], [ %382, %379 ], [ %391, %390 ], !dbg !1992
  call void @llvm.dbg.value(metadata i64 %393, metadata !1628, metadata !DIExpression()), !dbg !1708
  %394 = icmp ugt i64 %385, %380, !dbg !2006
  %395 = select i1 %394, i64 %385, i64 %380, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %395, metadata !1632, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1691, metadata !DIExpression()), !dbg !1983
  br label %402, !dbg !2009

; <label>:396:                                    ; preds = %379
  %397 = and i64 %385, 7, !dbg !2010
  %398 = add i64 %385, 8, !dbg !2011
  %399 = sub i64 %398, %397, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %399, metadata !1691, metadata !DIExpression()), !dbg !1983
  br label %402, !dbg !2013

; <label>:400:                                    ; preds = %379
  %401 = add i64 %385, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %401, metadata !1691, metadata !DIExpression()), !dbg !1983
  br label %402, !dbg !2015

; <label>:402:                                    ; preds = %417, %400, %379, %396, %392
  %403 = phi i64 [ %380, %417 ], [ %380, %379 ], [ %380, %400 ], [ %380, %396 ], [ %395, %392 ], !dbg !2016
  %404 = phi i64 [ %382, %417 ], [ %382, %379 ], [ %382, %400 ], [ %382, %396 ], [ %393, %392 ], !dbg !1792
  %405 = phi i64 [ %418, %417 ], [ %385, %379 ], [ %401, %400 ], [ %399, %396 ], [ 0, %392 ], !dbg !1992
  call void @llvm.dbg.value(metadata i64 %405, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %404, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %403, metadata !1632, metadata !DIExpression()), !dbg !1704
  %406 = and i8 %384, 1, !dbg !2017
  %407 = zext i8 %406 to i64, !dbg !2017
  %408 = add i64 %381, %407, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %408, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1982
  br label %421, !dbg !2019

; <label>:409:                                    ; preds = %379
  %410 = tail call i16** @__ctype_b_loc() #17, !dbg !2020
  %411 = load i16*, i16** %410, align 8, !dbg !2020, !tbaa !1147
  %412 = zext i8 %388 to i64, !dbg !2020
  %413 = getelementptr inbounds i16, i16* %411, i64 %412, !dbg !2020
  %414 = load i16, i16* %413, align 2, !dbg !2020, !tbaa !1949
  %415 = and i16 %414, 16384, !dbg !2020
  %416 = icmp eq i16 %415, 0, !dbg !2020
  br i1 %416, label %421, label %417, !dbg !2021

; <label>:417:                                    ; preds = %409
  %418 = add i64 %385, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %418, metadata !1691, metadata !DIExpression()), !dbg !1983
  %419 = and i16 %414, 8192, !dbg !2023
  %420 = icmp eq i16 %419, 0, !dbg !2023
  br i1 %420, label %421, label %402, !dbg !2025

; <label>:421:                                    ; preds = %417, %409, %402
  %422 = phi i64 [ %403, %402 ], [ %380, %409 ], [ %380, %417 ], !dbg !1845
  %423 = phi i64 [ %408, %402 ], [ %381, %409 ], [ %381, %417 ], !dbg !1957
  %424 = phi i64 [ %404, %402 ], [ %382, %409 ], [ %382, %417 ], !dbg !1792
  %425 = phi i8 [ 0, %402 ], [ %384, %409 ], [ 1, %417 ], !dbg !2026
  %426 = phi i64 [ %405, %402 ], [ %385, %409 ], [ %418, %417 ], !dbg !2026
  call void @llvm.dbg.value(metadata i64 %426, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 %425, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %423, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %422, metadata !1632, metadata !DIExpression()), !dbg !1704
  %427 = add i64 %383, -1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %427, metadata !1627, metadata !DIExpression()), !dbg !1780
  %428 = icmp eq i64 %427, 0, !dbg !2028
  br i1 %428, label %365, label %379, !dbg !2028, !llvm.loop !2029

; <label>:429:                                    ; preds = %367, %375
  %430 = phi i8 [ 0, %375 ], [ 1, %367 ], !dbg !1957
  call void @llvm.dbg.value(metadata i64 %373, metadata !1691, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 %372, metadata !1689, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 %430, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %371, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %370, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %369, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %368, metadata !1632, metadata !DIExpression()), !dbg !1704
  %431 = icmp ugt i64 %373, %368, !dbg !2032
  %432 = select i1 %431, i64 %373, i64 %368, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %432, metadata !1632, metadata !DIExpression()), !dbg !1704
  %433 = and i8 %372, 1, !dbg !2035
  %434 = zext i8 %433 to i64, !dbg !2035
  %435 = add i64 %370, %434, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %435, metadata !1629, metadata !DIExpression()), !dbg !1707
  br label %436

; <label>:436:                                    ; preds = %89, %100, %83, %105, %92, %429, %358
  %437 = phi i64 [ %361, %358 ], [ %432, %429 ], [ 0, %92 ], [ 0, %83 ], [ 0, %105 ], [ %104, %100 ], [ %91, %89 ], !dbg !1957
  %438 = phi i64 [ %202, %358 ], [ %369, %429 ], [ %90, %92 ], [ %86, %83 ], [ %101, %105 ], [ %101, %100 ], [ %90, %89 ], !dbg !1846
  %439 = phi i64 [ %203, %358 ], [ 0, %429 ], [ 0, %92 ], [ 0, %83 ], [ 0, %105 ], [ %104, %100 ], [ %91, %89 ], !dbg !1847
  %440 = phi i64 [ %364, %358 ], [ %435, %429 ], [ 0, %92 ], [ 0, %83 ], [ 0, %105 ], [ %104, %100 ], [ %91, %89 ], !dbg !1957
  %441 = phi i64 [ %205, %358 ], [ %371, %429 ], [ 0, %92 ], [ 0, %83 ], [ %102, %105 ], [ %102, %100 ], [ %91, %89 ], !dbg !1792
  %442 = phi i8 [ %359, %358 ], [ %430, %429 ], [ 0, %92 ], [ 1, %83 ], [ 0, %105 ], [ 1, %100 ], [ 1, %89 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8 %442, metadata !1622, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %441, metadata !1628, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %440, metadata !1629, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %439, metadata !1630, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %438, metadata !1631, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %437, metadata !1632, metadata !DIExpression()), !dbg !1704
  %443 = load i1, i1* @print_chars, align 1
  %444 = xor i1 %22, true, !dbg !2037
  %445 = and i1 %443, %444, !dbg !2037
  %446 = select i1 %445, i64 %438, i64 %439, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %446, metadata !1630, metadata !DIExpression()), !dbg !1706
  call fastcc void @write_counts(i64 %441, i64 %440, i64 %446, i64 %438, i64 %437, i8* %1), !dbg !2040
  %447 = load i64, i64* @total_lines, align 8, !dbg !2041, !tbaa !1207
  %448 = add i64 %447, %441, !dbg !2041
  store i64 %448, i64* @total_lines, align 8, !dbg !2041, !tbaa !1207
  %449 = load i64, i64* @total_words, align 8, !dbg !2042, !tbaa !1207
  %450 = add i64 %449, %440, !dbg !2042
  store i64 %450, i64* @total_words, align 8, !dbg !2042, !tbaa !1207
  %451 = load i64, i64* @total_chars, align 8, !dbg !2043, !tbaa !1207
  %452 = add i64 %451, %446, !dbg !2043
  store i64 %452, i64* @total_chars, align 8, !dbg !2043, !tbaa !1207
  %453 = load i64, i64* @total_bytes, align 8, !dbg !2044, !tbaa !1207
  %454 = add i64 %453, %438, !dbg !2044
  store i64 %454, i64* @total_bytes, align 8, !dbg !2044, !tbaa !1207
  %455 = load i64, i64* @max_line_length, align 8, !dbg !2045, !tbaa !1207
  %456 = icmp ugt i64 %437, %455, !dbg !2047
  br i1 %456, label %457, label %458, !dbg !2048

; <label>:457:                                    ; preds = %436
  store i64 %437, i64* @max_line_length, align 8, !dbg !2049, !tbaa !1207
  br label %458, !dbg !2050

; <label>:458:                                    ; preds = %457, %436
  %459 = and i8 %442, 1, !dbg !2051
  %460 = icmp ne i8 %459, 0, !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 16385, i8* nonnull %9) #13, !dbg !2052
  ret i1 %460, !dbg !2053
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_counts(i64, i64, i64, i64, i64, i8*) unnamed_addr #7 !dbg !300 {
  %7 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !304, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %1, metadata !305, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %2, metadata !306, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %3, metadata !307, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %4, metadata !308, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8* %5, metadata !309, metadata !DIExpression()), !dbg !2059
  %8 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !2060
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %8) #13, !dbg !2060
  call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !311, metadata !DIExpression()), !dbg !2061
  %9 = load i1, i1* @print_lines, align 1
  br i1 %9, label %10, label %14, !dbg !2062

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* @number_width, align 4, !dbg !2063, !tbaa !1243
  %12 = call i8* @umaxtostr(i64 %0, i8* nonnull %8) #13, !dbg !2063
  %13 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), i32 %11, i8* %12) #13, !dbg !2063
  br label %14, !dbg !2066

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %10 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), %6 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8* %15, metadata !310, metadata !DIExpression()), !dbg !2068
  %16 = load i1, i1* @print_words, align 1
  br i1 %16, label %17, label %21, !dbg !2069

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* @number_width, align 4, !dbg !2070, !tbaa !1243
  %19 = call i8* @umaxtostr(i64 %1, i8* nonnull %8) #13, !dbg !2070
  %20 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i32 %18, i8* %19) #13, !dbg !2070
  br label %21, !dbg !2073

; <label>:21:                                     ; preds = %17, %14
  %22 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %17 ], [ %15, %14 ], !dbg !2074
  call void @llvm.dbg.value(metadata i8* %22, metadata !310, metadata !DIExpression()), !dbg !2068
  %23 = load i1, i1* @print_chars, align 1
  br i1 %23, label %24, label %28, !dbg !2075

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* @number_width, align 4, !dbg !2076, !tbaa !1243
  %26 = call i8* @umaxtostr(i64 %2, i8* nonnull %8) #13, !dbg !2076
  %27 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i32 %25, i8* %26) #13, !dbg !2076
  br label %28, !dbg !2079

; <label>:28:                                     ; preds = %24, %21
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %24 ], [ %22, %21 ], !dbg !2080
  call void @llvm.dbg.value(metadata i8* %29, metadata !310, metadata !DIExpression()), !dbg !2068
  %30 = load i1, i1* @print_bytes, align 1
  br i1 %30, label %31, label %35, !dbg !2081

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* @number_width, align 4, !dbg !2082, !tbaa !1243
  %33 = call i8* @umaxtostr(i64 %3, i8* nonnull %8) #13, !dbg !2082
  %34 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i32 %32, i8* %33) #13, !dbg !2082
  br label %35, !dbg !2085

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %31 ], [ %29, %28 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8* %36, metadata !310, metadata !DIExpression()), !dbg !2068
  %37 = load i1, i1* @print_linelength, align 1
  br i1 %37, label %38, label %42, !dbg !2087

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @number_width, align 4, !dbg !2088, !tbaa !1243
  %40 = call i8* @umaxtostr(i64 %4, i8* nonnull %8) #13, !dbg !2088
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i32 %39, i8* %40) #13, !dbg !2088
  br label %42, !dbg !2091

; <label>:42:                                     ; preds = %38, %35
  %43 = icmp eq i8* %5, null, !dbg !2092
  br i1 %43, label %52, label %44, !dbg !2094

; <label>:44:                                     ; preds = %42
  %45 = call i8* @strchr(i8* nonnull %5, i32 10) #15, !dbg !2095
  %46 = icmp eq i8* %45, null, !dbg !2095
  br i1 %46, label %49, label %47, !dbg !2095

; <label>:47:                                     ; preds = %44
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %5) #13, !dbg !2095
  br label %49, !dbg !2095

; <label>:49:                                     ; preds = %44, %47
  %50 = phi i8* [ %48, %47 ], [ %5, %44 ], !dbg !2095
  %51 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %50) #13, !dbg !2095
  br label %52, !dbg !2095

; <label>:52:                                     ; preds = %42, %49
  call void @llvm.dbg.value(metadata i32 10, metadata !2096, metadata !DIExpression()) #13, !dbg !2102
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2104, !tbaa !1147
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5, !dbg !2104
  %55 = load i8*, i8** %54, align 8, !dbg !2104, !tbaa !2105
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6, !dbg !2104
  %57 = load i8*, i8** %56, align 8, !dbg !2104, !tbaa !2107
  %58 = icmp ult i8* %55, %57, !dbg !2104
  br i1 %58, label %61, label %59, !dbg !2104, !prof !2108

; <label>:59:                                     ; preds = %52
  %60 = call i32 @__overflow(%struct._IO_FILE* %53, i32 10) #13, !dbg !2104
  br label %63, !dbg !2104

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !2104
  store i8* %62, i8** %54, align 8, !dbg !2104, !tbaa !2105
  store i8 10, i8* %55, align 1, !dbg !2104, !tbaa !1489
  br label %63, !dbg !2104

; <label>:63:                                     ; preds = %59, %61
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %8) #13, !dbg !2109
  ret void, !dbg !2109
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswspace(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.argv_iterator* @argv_iter_init_argv(i8** nonnull) local_unnamed_addr #7 !dbg !2110 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2158, metadata !DIExpression()), !dbg !2160
  %2 = tail call noalias i8* @malloc(i64 48) #13, !dbg !2161
  %3 = icmp eq i8* %2, null, !dbg !2162
  br i1 %3, label %11, label %4, !dbg !2164

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2161
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, metadata !2159, metadata !DIExpression()), !dbg !2165
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2166
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !2167, !tbaa !2168
  %7 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2170
  %8 = bitcast i8* %7 to i8***, !dbg !2170
  store i8** %0, i8*** %8, align 8, !dbg !2171, !tbaa !2172
  %9 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2173
  %10 = bitcast i8* %9 to i8***, !dbg !2173
  store i8** %0, i8*** %10, align 8, !dbg !2174, !tbaa !2175
  br label %11, !dbg !2176

; <label>:11:                                     ; preds = %1, %4
  %12 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ], !dbg !2177
  ret %struct.argv_iterator* %12, !dbg !2178
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !2179 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2183, metadata !DIExpression()), !dbg !2185
  %2 = tail call noalias i8* @malloc(i64 48) #13, !dbg !2186
  %3 = icmp eq i8* %2, null, !dbg !2187
  br i1 %3, label %8, label %4, !dbg !2189

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, metadata !2184, metadata !DIExpression()), !dbg !2190
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2191
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8, !dbg !2192, !tbaa !2168
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2193
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %7, i8 0, i64 32, i1 false), !dbg !2194
  br label %8, !dbg !2195

; <label>:8:                                      ; preds = %1, %4
  %9 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ], !dbg !2196
  ret %struct.argv_iterator* %9, !dbg !2197
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @argv_iter(%struct.argv_iterator* nonnull, i32* nocapture nonnull) local_unnamed_addr #7 !dbg !2198 {
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, metadata !2203, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32* %1, metadata !2204, metadata !DIExpression()), !dbg !2211
  %3 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2212
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2212, !tbaa !2168
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !2213
  br i1 %5, label %21, label %6, !dbg !2214

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2215
  %8 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 3, !dbg !2216
  %9 = tail call i64 @getdelim(i8** nonnull %7, i64* nonnull %8, i32 0, %struct._IO_FILE* nonnull %4) #13, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %9, metadata !2205, metadata !DIExpression()), !dbg !2218
  %10 = icmp slt i64 %9, 0, !dbg !2219
  br i1 %10, label %11, label %16, !dbg !2221

; <label>:11:                                     ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2222, !tbaa !2168
  %13 = tail call i32 @feof(%struct._IO_FILE* %12) #13, !dbg !2224
  %14 = icmp eq i32 %13, 0, !dbg !2224
  %15 = select i1 %14, i32 4, i32 2, !dbg !2224
  store i32 %15, i32* %1, align 4, !dbg !2225, !tbaa !1489
  br label %31, !dbg !2226

; <label>:16:                                     ; preds = %6
  store i32 1, i32* %1, align 4, !dbg !2227, !tbaa !1489
  %17 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2228
  %18 = load i64, i64* %17, align 8, !dbg !2229, !tbaa !2230
  %19 = add i64 %18, 1, !dbg !2229
  store i64 %19, i64* %17, align 8, !dbg !2229, !tbaa !2230
  %20 = load i8*, i8** %7, align 8, !dbg !2231, !tbaa !2232
  br label %31, !dbg !2233

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2234
  %23 = load i8**, i8*** %22, align 8, !dbg !2234, !tbaa !2175
  %24 = load i8*, i8** %23, align 8, !dbg !2237, !tbaa !1147
  %25 = icmp eq i8* %24, null, !dbg !2238
  br i1 %25, label %26, label %27, !dbg !2239

; <label>:26:                                     ; preds = %21
  store i32 2, i32* %1, align 4, !dbg !2240, !tbaa !1489
  br label %31, !dbg !2242

; <label>:27:                                     ; preds = %21
  store i32 1, i32* %1, align 4, !dbg !2243, !tbaa !1489
  %28 = load i8**, i8*** %22, align 8, !dbg !2245, !tbaa !2175
  %29 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !2245
  store i8** %29, i8*** %22, align 8, !dbg !2245, !tbaa !2175
  %30 = load i8*, i8** %28, align 8, !dbg !2246, !tbaa !1147
  br label %31, !dbg !2247

; <label>:31:                                     ; preds = %11, %16, %27, %26
  %32 = phi i8* [ null, %26 ], [ %30, %27 ], [ null, %11 ], [ %20, %16 ], !dbg !2248
  ret i8* %32, !dbg !2249
}

declare i64 @getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @argv_iter_n_args(%struct.argv_iterator* nocapture nonnull readonly) local_unnamed_addr #9 !dbg !2250 {
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, metadata !2256, metadata !DIExpression()), !dbg !2257
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2258
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2258, !tbaa !2168
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2259
  br i1 %4, label %8, label %5, !dbg !2259

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2260
  %7 = load i64, i64* %6, align 8, !dbg !2260, !tbaa !2230
  br label %17, !dbg !2259

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2261
  %10 = bitcast i8*** %9 to i64*, !dbg !2261
  %11 = load i64, i64* %10, align 8, !dbg !2261, !tbaa !2175
  %12 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 4, !dbg !2262
  %13 = bitcast i8*** %12 to i64*, !dbg !2262
  %14 = load i64, i64* %13, align 8, !dbg !2262, !tbaa !2172
  %15 = sub i64 %11, %14, !dbg !2263
  %16 = ashr exact i64 %15, 3, !dbg !2263
  br label %17, !dbg !2259

; <label>:17:                                     ; preds = %8, %5
  %18 = phi i64 [ %7, %5 ], [ %16, %8 ], !dbg !2259
  ret i64 %18, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argv_iter_free(%struct.argv_iterator* nocapture nonnull) local_unnamed_addr #7 !dbg !2265 {
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, metadata !2269, metadata !DIExpression()), !dbg !2270
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2271
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2271, !tbaa !2168
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2273
  br i1 %4, label %8, label %5, !dbg !2274

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2275
  %7 = load i8*, i8** %6, align 8, !dbg !2275, !tbaa !2232
  tail call void @free(i8* %7) #13, !dbg !2276
  br label %8, !dbg !2276

; <label>:8:                                      ; preds = %1, %5
  %9 = bitcast %struct.argv_iterator* %0 to i8*, !dbg !2277
  tail call void @free(i8* nonnull %9) #13, !dbg !2278
  ret void, !dbg !2279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !2280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2282, metadata !DIExpression()), !dbg !2283
  store i8* %0, i8** @file_name, align 8, !dbg !2284, !tbaa !1147
  ret void, !dbg !2285
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !2286 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !2290, metadata !DIExpression()), !dbg !2291
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2292, !tbaa !2293
  ret void, !dbg !2295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !2296 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2301, !tbaa !1147
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13, !dbg !2302
  %3 = icmp eq i32 %2, 0, !dbg !2303
  br i1 %3, label %22, label %4, !dbg !2304

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2305, !tbaa !2293, !range !2306
  %6 = icmp eq i8 %5, 0, !dbg !2305
  br i1 %6, label %11, label %7, !dbg !2307

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !2308
  %9 = load i32, i32* %8, align 4, !dbg !2308, !tbaa !1243
  %10 = icmp eq i32 %9, 32, !dbg !2309
  br i1 %10, label %22, label %11, !dbg !2310

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i32 5) #13, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %12, metadata !2298, metadata !DIExpression()), !dbg !2312
  %13 = load i8*, i8** @file_name, align 8, !dbg !2313, !tbaa !1147
  %14 = icmp eq i8* %13, null, !dbg !2313
  %15 = tail call i32* @__errno_location() #17, !dbg !2315
  %16 = load i32, i32* %15, align 4, !dbg !2315, !tbaa !1243
  br i1 %14, label %19, label %17, !dbg !2316

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #13, !dbg !2317
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %18, i8* %12) #13, !dbg !2318
  br label %20, !dbg !2318

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.71, i64 0, i64 0), i8* %12) #13, !dbg !2319
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2320, !tbaa !1243
  tail call void @_exit(i32 %21) #16, !dbg !2321
  unreachable, !dbg !2321

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2322, !tbaa !1147
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #13, !dbg !2324
  %25 = icmp eq i32 %24, 0, !dbg !2325
  br i1 %25, label %28, label %26, !dbg !2326

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2327, !tbaa !1243
  tail call void @_exit(i32 %27) #16, !dbg !2328
  unreachable, !dbg !2328

; <label>:28:                                     ; preds = %22
  ret void, !dbg !2329
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !2330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2336, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %1, metadata !2337, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %2, metadata !2338, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 %3, metadata !2339, metadata !DIExpression()), !dbg !2345
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #13, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %5, metadata !2340, metadata !DIExpression()), !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !2348 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %1, metadata !2387, metadata !DIExpression()), !dbg !2389
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2390
  br i1 %3, label %7, label %4, !dbg !2392

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %5, metadata !2336, metadata !DIExpression()) #13, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2337, metadata !DIExpression()) #13, !dbg !2396
  call void @llvm.dbg.value(metadata i64 0, metadata !2338, metadata !DIExpression()) #13, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %1, metadata !2339, metadata !DIExpression()) #13, !dbg !2398
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #13, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %6, metadata !2340, metadata !DIExpression()) #13, !dbg !2399
  br label %7, !dbg !2400

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2401
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !2402 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()), !dbg !2411
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %3, metadata !2409, metadata !DIExpression()), !dbg !2413
  store i8 0, i8* %3, align 1, !dbg !2414, !tbaa !1489
  br label %4, !dbg !2415

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2416
  call void @llvm.dbg.value(metadata i8* %6, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %5, metadata !2407, metadata !DIExpression()), !dbg !2410
  %7 = urem i64 %5, 10, !dbg !2419
  %8 = trunc i64 %7 to i8, !dbg !2420
  %9 = or i8 %8, 48, !dbg !2420
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %10, metadata !2409, metadata !DIExpression()), !dbg !2413
  store i8 %9, i8* %10, align 1, !dbg !2422, !tbaa !1489
  %11 = udiv i64 %5, 10, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %11, metadata !2407, metadata !DIExpression()), !dbg !2410
  %12 = icmp ugt i64 %5, 9, !dbg !2424
  br i1 %12, label %4, label %13, !dbg !2425, !llvm.loop !2426

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2409, metadata !DIExpression()), !dbg !2413
  ret i8* %10, !dbg !2429
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local i32 @mb_width_aux(i32) local_unnamed_addr #11 !dbg !2430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2436, metadata !DIExpression()), !dbg !2438
  %2 = tail call i32 @wcwidth(i32 %0) #13, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %2, metadata !2437, metadata !DIExpression()), !dbg !2440
  %3 = icmp sgt i32 %2, -1, !dbg !2441
  br i1 %3, label %8, label %4, !dbg !2442

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #13, !dbg !2443
  %6 = icmp eq i32 %5, 0, !dbg !2443
  %7 = zext i1 %6 to i32, !dbg !2443
  br label %8, !dbg !2442

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ], !dbg !2442
  ret i32 %9, !dbg !2444
}

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local void @mb_copy(%struct.mbchar*, %struct.mbchar* readonly) local_unnamed_addr #11 !dbg !2445 {
  call void @llvm.dbg.value(metadata %struct.mbchar* %0, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata %struct.mbchar* %1, metadata !2464, metadata !DIExpression()), !dbg !2466
  %3 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 0, !dbg !2467
  %4 = load i8*, i8** %3, align 8, !dbg !2467, !tbaa !2469
  %5 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 4, i64 0, !dbg !2471
  %6 = icmp eq i8* %4, %5, !dbg !2472
  br i1 %6, label %7, label %11, !dbg !2473

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 4, i64 0, !dbg !2474
  %9 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2476
  %10 = load i64, i64* %9, align 8, !dbg !2476, !tbaa !2477
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %4, i64 %10, i1 false), !dbg !2478
  br label %13, !dbg !2479

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2480
  br label %13

; <label>:13:                                     ; preds = %11, %7
  %14 = phi i64* [ %12, %11 ], [ %9, %7 ], !dbg !2480
  %15 = phi i8* [ %4, %11 ], [ %8, %7 ]
  %16 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 0, !dbg !2481
  store i8* %15, i8** %16, align 8, !dbg !2482
  %17 = load i64, i64* %14, align 8, !dbg !2480, !tbaa !2477
  %18 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 1, !dbg !2483
  store i64 %17, i64* %18, align 8, !dbg !2484, !tbaa !2477
  %19 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 2, !dbg !2485
  %20 = load i8, i8* %19, align 8, !dbg !2485, !tbaa !2487, !range !2306
  %21 = icmp eq i8 %20, 0, !dbg !2485
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 2, !dbg !2488
  store i8 %20, i8* %22, align 8, !dbg !2489, !tbaa !2487
  br i1 %21, label %27, label %23, !dbg !2490

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 3, !dbg !2491
  %25 = load i32, i32* %24, align 4, !dbg !2491, !tbaa !2492
  %26 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 3, !dbg !2493
  store i32 %25, i32* %26, align 4, !dbg !2494, !tbaa !2492
  br label %27, !dbg !2495

; <label>:27:                                     ; preds = %13, %23
  ret void, !dbg !2496
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @is_basic(i8 signext) local_unnamed_addr #12 !dbg !2497 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2499, metadata !DIExpression()), !dbg !2500
  %2 = zext i8 %0 to i32, !dbg !2501
  %3 = lshr i32 %2, 5, !dbg !2502
  %4 = zext i32 %3 to i64, !dbg !2503
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @is_basic_table, i64 0, i64 %4, !dbg !2503
  %6 = load i32, i32* %5, align 4, !dbg !2503, !tbaa !1243
  %7 = and i32 %2, 31, !dbg !2504
  %8 = shl i32 1, %7, !dbg !2505
  %9 = and i32 %6, %8, !dbg !2505
  %10 = icmp ne i32 %9, 0, !dbg !2505
  ret i1 %10, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @physmem_total() local_unnamed_addr #7 !dbg !2507 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = tail call i64 @sysconf(i32 85) #13, !dbg !2543
  %3 = tail call i64 @sysconf(i32 30) #13, !dbg !2544
  %4 = or i64 %3, %2, !dbg !2545
  %5 = icmp sgt i64 %4, -1, !dbg !2545
  br i1 %5, label %21, label %6, !dbg !2545

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2547
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #13, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.sysinfo* %1, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2548
  %8 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13, !dbg !2549
  %9 = icmp eq i32 %8, 0, !dbg !2551
  br i1 %9, label %10, label %18, !dbg !2552

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2553
  %12 = load i64, i64* %11, align 8, !dbg !2553, !tbaa !2554
  %13 = uitofp i64 %12 to double, !dbg !2556
  %14 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2557
  %15 = load i32, i32* %14, align 8, !dbg !2557, !tbaa !2558
  %16 = uitofp i32 %15 to double, !dbg !2559
  %17 = fmul double %13, %16, !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #13, !dbg !2561
  br label %19

; <label>:18:                                     ; preds = %6
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #13, !dbg !2561
  br label %19

; <label>:19:                                     ; preds = %10, %18
  %20 = phi double [ 0x4190000000000000, %18 ], [ %17, %10 ]
  ret double %20

; <label>:21:                                     ; preds = %0
  %22 = sitofp i64 %3 to double, !dbg !2544
  call void @llvm.dbg.value(metadata double %22, metadata !2513, metadata !DIExpression()), !dbg !2562
  %23 = sitofp i64 %2 to double, !dbg !2543
  call void @llvm.dbg.value(metadata double %23, metadata !2511, metadata !DIExpression()), !dbg !2563
  %24 = fmul double %23, %22, !dbg !2564
  ret double %24, !dbg !2565
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sysinfo(%struct.sysinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @physmem_available() local_unnamed_addr #7 !dbg !2566 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = alloca %struct.sysinfo, align 8
  %3 = tail call i64 @sysconf(i32 86) #13, !dbg !2573
  %4 = tail call i64 @sysconf(i32 30) #13, !dbg !2574
  %5 = or i64 %4, %3, !dbg !2575
  %6 = icmp sgt i64 %5, -1, !dbg !2575
  br i1 %6, label %7, label %11, !dbg !2575

; <label>:7:                                      ; preds = %0
  %8 = sitofp i64 %4 to double, !dbg !2574
  call void @llvm.dbg.value(metadata double %8, metadata !2570, metadata !DIExpression()), !dbg !2577
  %9 = sitofp i64 %3 to double, !dbg !2573
  call void @llvm.dbg.value(metadata double %9, metadata !2568, metadata !DIExpression()), !dbg !2578
  %10 = fmul double %9, %8, !dbg !2579
  br label %52

; <label>:11:                                     ; preds = %0
  %12 = bitcast %struct.sysinfo* %2 to i8*, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %12) #13, !dbg !2580
  call void @llvm.dbg.value(metadata %struct.sysinfo* %2, metadata !2571, metadata !DIExpression(DW_OP_deref)), !dbg !2581
  %13 = call i32 @sysinfo(%struct.sysinfo* nonnull %2) #13, !dbg !2582
  %14 = icmp eq i32 %13, 0, !dbg !2584
  br i1 %14, label %15, label %27, !dbg !2585

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 3, !dbg !2586
  %17 = load i64, i64* %16, align 8, !dbg !2586, !tbaa !2587
  %18 = uitofp i64 %17 to double, !dbg !2588
  %19 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 5, !dbg !2589
  %20 = load i64, i64* %19, align 8, !dbg !2589, !tbaa !2590
  %21 = uitofp i64 %20 to double, !dbg !2591
  %22 = fadd double %18, %21, !dbg !2592
  %23 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 12, !dbg !2593
  %24 = load i32, i32* %23, align 8, !dbg !2593, !tbaa !2558
  %25 = uitofp i32 %24 to double, !dbg !2594
  %26 = fmul double %22, %25, !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %12) #13, !dbg !2596
  br label %52

; <label>:27:                                     ; preds = %11
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %12) #13, !dbg !2596
  %28 = call i64 @sysconf(i32 85) #13, !dbg !2597
  %29 = call i64 @sysconf(i32 30) #13, !dbg !2599
  %30 = or i64 %29, %28, !dbg !2600
  %31 = icmp sgt i64 %30, -1, !dbg !2600
  br i1 %31, label %45, label %32, !dbg !2600

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2601
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33) #13, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.sysinfo* %1, metadata !2514, metadata !DIExpression(DW_OP_deref)) #13, !dbg !2602
  %34 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #13, !dbg !2603
  %35 = icmp eq i32 %34, 0, !dbg !2604
  br i1 %35, label %36, label %44, !dbg !2605

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2606
  %38 = load i64, i64* %37, align 8, !dbg !2606, !tbaa !2554
  %39 = uitofp i64 %38 to double, !dbg !2607
  %40 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2608
  %41 = load i32, i32* %40, align 8, !dbg !2608, !tbaa !2558
  %42 = uitofp i32 %41 to double, !dbg !2609
  %43 = fmul double %39, %42, !dbg !2610
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #13, !dbg !2611
  br label %49

; <label>:44:                                     ; preds = %32
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #13, !dbg !2611
  br label %49

; <label>:45:                                     ; preds = %27
  %46 = sitofp i64 %29 to double, !dbg !2599
  call void @llvm.dbg.value(metadata double %46, metadata !2513, metadata !DIExpression()) #13, !dbg !2612
  %47 = sitofp i64 %28 to double, !dbg !2597
  call void @llvm.dbg.value(metadata double %47, metadata !2511, metadata !DIExpression()) #13, !dbg !2613
  %48 = fmul double %47, %46, !dbg !2614
  br label %49, !dbg !2615

; <label>:49:                                     ; preds = %36, %44, %45
  %50 = phi double [ %48, %45 ], [ 0x4190000000000000, %44 ], [ %43, %36 ]
  %51 = fmul double %50, 2.500000e-01, !dbg !2616
  br label %52, !dbg !2617

; <label>:52:                                     ; preds = %15, %7, %49
  %53 = phi double [ %51, %49 ], [ %26, %15 ], [ %10, %7 ], !dbg !2618
  ret double %53, !dbg !2619
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2620 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2622, metadata !DIExpression()), !dbg !2625
  %2 = icmp eq i8* %0, null, !dbg !2626
  br i1 %2, label %3, label %6, !dbg !2628

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2629, !tbaa !1147
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.86, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !2631
  tail call void @abort() #16, !dbg !2632
  unreachable, !dbg !2632

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %7, metadata !2623, metadata !DIExpression()), !dbg !2634
  %8 = icmp eq i8* %7, null, !dbg !2635
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2636
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %10, metadata !2624, metadata !DIExpression()), !dbg !2638
  %11 = ptrtoint i8* %10 to i64, !dbg !2639
  %12 = ptrtoint i8* %0 to i64, !dbg !2639
  %13 = sub i64 %11, %12, !dbg !2639
  %14 = icmp sgt i64 %13, 6, !dbg !2641
  br i1 %14, label %15, label %24, !dbg !2642

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2643
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.87, i64 0, i64 0), i64 7) #15, !dbg !2644
  %18 = icmp eq i32 %17, 0, !dbg !2645
  br i1 %18, label %19, label %24, !dbg !2646

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2622, metadata !DIExpression()), !dbg !2625
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i64 3) #15, !dbg !2647
  %21 = icmp eq i32 %20, 0, !dbg !2650
  br i1 %21, label %22, label %24, !dbg !2651

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %23, metadata !2622, metadata !DIExpression()), !dbg !2625
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2654, !tbaa !1147
  br label %24, !dbg !2655

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2622, metadata !DIExpression()), !dbg !2625
  store i8* %25, i8** @program_name, align 8, !dbg !2656, !tbaa !1147
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2657, !tbaa !1147
  ret void, !dbg !2658
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2659 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2664, metadata !DIExpression()), !dbg !2667
  %2 = tail call i32* @__errno_location() #17, !dbg !2668
  %3 = load i32, i32* %2, align 4, !dbg !2668, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %3, metadata !2665, metadata !DIExpression()), !dbg !2669
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2670
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2670
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2670
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13, !dbg !2671
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2671
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2666, metadata !DIExpression()), !dbg !2672
  store i32 %3, i32* %2, align 4, !dbg !2673, !tbaa !1243
  ret %struct.quoting_options* %8, !dbg !2674
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2675 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2681, metadata !DIExpression()), !dbg !2682
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2683
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2683
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2684
  %5 = load i32, i32* %4, align 8, !dbg !2684, !tbaa !2685
  ret i32 %5, !dbg !2687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2688 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %1, metadata !2693, metadata !DIExpression()), !dbg !2695
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2696
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2696
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2697
  store i32 %1, i32* %5, align 8, !dbg !2698, !tbaa !2685
  ret void, !dbg !2699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2700 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2704, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 %1, metadata !2705, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 %2, metadata !2706, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %1, metadata !2707, metadata !DIExpression()), !dbg !2715
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2716
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2716
  %6 = lshr i8 %1, 5, !dbg !2717
  %7 = zext i8 %6 to i64, !dbg !2717
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2718
  call void @llvm.dbg.value(metadata i32* %8, metadata !2708, metadata !DIExpression()), !dbg !2719
  %9 = and i8 %1, 31, !dbg !2720
  %10 = zext i8 %9 to i32, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %10, metadata !2710, metadata !DIExpression()), !dbg !2721
  %11 = load i32, i32* %8, align 4, !dbg !2722, !tbaa !1243
  %12 = lshr i32 %11, %10, !dbg !2723
  %13 = and i32 %12, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i32 %13, metadata !2711, metadata !DIExpression()), !dbg !2725
  %14 = and i32 %2, 1, !dbg !2726
  %15 = xor i32 %13, %14, !dbg !2727
  %16 = shl i32 %15, %10, !dbg !2728
  %17 = xor i32 %16, %11, !dbg !2729
  store i32 %17, i32* %8, align 4, !dbg !2729, !tbaa !1243
  ret i32 %13, !dbg !2730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2731 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2735, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 %1, metadata !2736, metadata !DIExpression()), !dbg !2739
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2740
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2735, metadata !DIExpression()), !dbg !2738
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2743
  %6 = load i32, i32* %5, align 4, !dbg !2743, !tbaa !2744
  call void @llvm.dbg.value(metadata i32 %6, metadata !2737, metadata !DIExpression()), !dbg !2745
  store i32 %1, i32* %5, align 4, !dbg !2746, !tbaa !2744
  ret i32 %6, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2748 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()), !dbg !2757
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2758
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2752, metadata !DIExpression()), !dbg !2755
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2761
  store i32 10, i32* %6, align 8, !dbg !2762, !tbaa !2685
  %7 = icmp ne i8* %1, null, !dbg !2763
  %8 = icmp ne i8* %2, null, !dbg !2765
  %9 = and i1 %7, %8, !dbg !2766
  br i1 %9, label %11, label %10, !dbg !2766

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !2767
  unreachable, !dbg !2767

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2768
  store i8* %1, i8** %12, align 8, !dbg !2769, !tbaa !2770
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2771
  store i8* %2, i8** %13, align 8, !dbg !2772, !tbaa !2773
  ret void, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2775 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 %3, metadata !2782, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2783, metadata !DIExpression()), !dbg !2791
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2792
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2784, metadata !DIExpression()), !dbg !2793
  %8 = tail call i32* @__errno_location() #17, !dbg !2794
  %9 = load i32, i32* %8, align 4, !dbg !2794, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %9, metadata !2785, metadata !DIExpression()), !dbg !2795
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2796
  %11 = load i32, i32* %10, align 8, !dbg !2796, !tbaa !2685
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2797
  %13 = load i32, i32* %12, align 4, !dbg !2797, !tbaa !2744
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2798
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2799
  %16 = load i8*, i8** %15, align 8, !dbg !2799, !tbaa !2770
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2800
  %18 = load i8*, i8** %17, align 8, !dbg !2800, !tbaa !2773
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %19, metadata !2786, metadata !DIExpression()), !dbg !2802
  store i32 %9, i32* %8, align 4, !dbg !2803, !tbaa !1243
  ret i64 %19, !dbg !2804
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2805 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %1, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %2, metadata !2812, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %3, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 %4, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %5, metadata !2815, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32* %6, metadata !2816, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8* %7, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %8, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 0, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 0, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* null, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 0, metadata !2823, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2881
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !2882
  %14 = icmp eq i64 %13, 1, !dbg !2883
  %15 = lshr i32 %5, 1, !dbg !2884
  %16 = trunc i32 %15 to i8, !dbg !2884
  %17 = and i8 %16, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i8 %17, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 1, metadata !2829, metadata !DIExpression()), !dbg !2887
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2888

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2878
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2879
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2880
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2881
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2889
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2885
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2886
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2887
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %39, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %38, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %37, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %36, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %35, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 %34, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %33, metadata !2823, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %32, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %31, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 0, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* %30, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %29, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 %28, metadata !2814, metadata !DIExpression()), !dbg !2872
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
  ], !dbg !2891

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 1, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %36, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 5, metadata !2814, metadata !DIExpression()), !dbg !2872
  br label %93, !dbg !2892

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 5, metadata !2814, metadata !DIExpression()), !dbg !2872
  %43 = and i8 %36, 1, !dbg !2893
  %44 = icmp eq i8 %43, 0, !dbg !2893
  br i1 %44, label %45, label %93, !dbg !2892

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2895
  br i1 %46, label %93, label %47, !dbg !2898

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2895, !tbaa !1489
  br label %93, !dbg !2895

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.99, i64 0, i64 0), i32 %28), !dbg !2899
  call void @llvm.dbg.value(metadata i8* %49, metadata !2817, metadata !DIExpression()), !dbg !2875
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), i32 %28), !dbg !2903
  call void @llvm.dbg.value(metadata i8* %50, metadata !2818, metadata !DIExpression()), !dbg !2876
  br label %51, !dbg !2904

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %52, metadata !2817, metadata !DIExpression()), !dbg !2875
  %54 = and i8 %36, 1, !dbg !2905
  %55 = icmp eq i8 %54, 0, !dbg !2905
  br i1 %55, label %56, label %71, !dbg !2907

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 0, metadata !2820, metadata !DIExpression()), !dbg !2877
  %57 = load i8, i8* %52, align 1, !dbg !2908, !tbaa !1489
  %58 = icmp eq i8 %57, 0, !dbg !2911
  br i1 %58, label %71, label %59, !dbg !2911

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %62, metadata !2820, metadata !DIExpression()), !dbg !2877
  %63 = icmp ult i64 %62, %40, !dbg !2912
  br i1 %63, label %64, label %66, !dbg !2915

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2912
  store i8 %60, i8* %65, align 1, !dbg !2912, !tbaa !1489
  br label %66, !dbg !2912

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2915
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %68, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %67, metadata !2820, metadata !DIExpression()), !dbg !2877
  %69 = load i8, i8* %68, align 1, !dbg !2908, !tbaa !1489
  %70 = icmp eq i8 %69, 0, !dbg !2911
  br i1 %70, label %71, label %59, !dbg !2911, !llvm.loop !2917

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2877
  call void @llvm.dbg.value(metadata i64 %72, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 1, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %53, metadata !2822, metadata !DIExpression()), !dbg !2879
  %73 = call i64 @strlen(i8* %53) #15, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %73, metadata !2823, metadata !DIExpression()), !dbg !2880
  br label %93, !dbg !2920

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2824, metadata !DIExpression()), !dbg !2881
  br label %75, !dbg !2921

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2889
  call void @llvm.dbg.value(metadata i8 %76, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 1, metadata !2826, metadata !DIExpression()), !dbg !2884
  br label %77, !dbg !2922

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2881
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2889
  call void @llvm.dbg.value(metadata i8 %79, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %78, metadata !2824, metadata !DIExpression()), !dbg !2881
  %80 = and i8 %79, 1, !dbg !2923
  %81 = icmp eq i8 %80, 0, !dbg !2923
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2925
  br label %83, !dbg !2925

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2926
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2884
  call void @llvm.dbg.value(metadata i8 %85, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %84, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 2, metadata !2814, metadata !DIExpression()), !dbg !2872
  %86 = and i8 %85, 1, !dbg !2927
  %87 = icmp eq i8 %86, 0, !dbg !2927
  br i1 %87, label %88, label %93, !dbg !2929

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2930
  br i1 %89, label %93, label %90, !dbg !2933

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2930, !tbaa !1489
  br label %93, !dbg !2930

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2826, metadata !DIExpression()), !dbg !2884
  br label %93, !dbg !2934

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !2935
  unreachable, !dbg !2935

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2877
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %41 ], !dbg !2889
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2889
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2889
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2936
  call void @llvm.dbg.value(metadata i8 %101, metadata !2826, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %99, metadata !2823, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %97, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 %94, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 0, metadata !2819, metadata !DIExpression()), !dbg !2937
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
  br label %121, !dbg !2938

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2939
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2877
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2878
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2885
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2886
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2887
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %125, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %122, metadata !2819, metadata !DIExpression()), !dbg !2937
  %130 = icmp eq i64 %125, -1, !dbg !2940
  br i1 %130, label %131, label %135, !dbg !2941

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2942
  %133 = load i8, i8* %132, align 1, !dbg !2942, !tbaa !1489
  %134 = icmp eq i8 %133, 0, !dbg !2943
  br i1 %134, label %617, label %137, !dbg !2944

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2945
  br i1 %136, label %617, label %137, !dbg !2944

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2835, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2836, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2837, metadata !DIExpression()), !dbg !2948
  br i1 %107, label %138, label %153, !dbg !2949

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2951
  %140 = and i1 %108, %130, !dbg !2952
  br i1 %140, label %141, label %143, !dbg !2952

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %142, metadata !2813, metadata !DIExpression()), !dbg !2871
  br label %143, !dbg !2954

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2813, metadata !DIExpression()), !dbg !2871
  %145 = icmp ugt i64 %139, %144, !dbg !2955
  br i1 %145, label %153, label %146, !dbg !2956

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2957
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !2958
  %149 = icmp ne i32 %148, 0, !dbg !2959
  %150 = or i1 %149, %110, !dbg !2960
  %151 = xor i1 %149, true, !dbg !2960
  %152 = zext i1 %151 to i8, !dbg !2960
  br i1 %150, label %153, label %661, !dbg !2960

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2961
  call void @llvm.dbg.value(metadata i8 %155, metadata !2835, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %154, metadata !2813, metadata !DIExpression()), !dbg !2871
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2962
  %157 = load i8, i8* %156, align 1, !dbg !2962, !tbaa !1489
  call void @llvm.dbg.value(metadata i8 %157, metadata !2830, metadata !DIExpression()), !dbg !2963
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
  ], !dbg !2964

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2965

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2966

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2836, metadata !DIExpression()), !dbg !2947
  %161 = and i8 %126, 1, !dbg !2970
  %162 = icmp eq i8 %161, 0, !dbg !2970
  %163 = and i1 %114, %162, !dbg !2970
  br i1 %163, label %164, label %180, !dbg !2970

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2972
  br i1 %165, label %166, label %168, !dbg !2976

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2972
  store i8 39, i8* %167, align 1, !dbg !2972, !tbaa !1489
  br label %168, !dbg !2972

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %169, metadata !2820, metadata !DIExpression()), !dbg !2877
  %170 = icmp ult i64 %169, %129, !dbg !2977
  br i1 %170, label %171, label %173, !dbg !2980

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2977
  store i8 36, i8* %172, align 1, !dbg !2977, !tbaa !1489
  br label %173, !dbg !2977

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %174, metadata !2820, metadata !DIExpression()), !dbg !2877
  %175 = icmp ult i64 %174, %129, !dbg !2981
  br i1 %175, label %176, label %178, !dbg !2984

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2981
  store i8 39, i8* %177, align 1, !dbg !2981, !tbaa !1489
  br label %178, !dbg !2981

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %179, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 1, metadata !2827, metadata !DIExpression()), !dbg !2885
  br label %180, !dbg !2985

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2936
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2936
  call void @llvm.dbg.value(metadata i8 %182, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %181, metadata !2820, metadata !DIExpression()), !dbg !2877
  %183 = icmp ult i64 %181, %129, !dbg !2986
  br i1 %183, label %184, label %186, !dbg !2989

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2986
  store i8 92, i8* %185, align 1, !dbg !2986, !tbaa !1489
  br label %186, !dbg !2986

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %187, metadata !2820, metadata !DIExpression()), !dbg !2877
  br i1 %104, label %188, label %478, !dbg !2990

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2992
  %190 = icmp ult i64 %189, %154, !dbg !2993
  br i1 %190, label %191, label %467, !dbg !2994

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2995
  %193 = load i8, i8* %192, align 1, !dbg !2995, !tbaa !1489
  %194 = add i8 %193, -48, !dbg !2996
  %195 = icmp ult i8 %194, 10, !dbg !2996
  br i1 %195, label %196, label %467, !dbg !2996

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2997
  br i1 %197, label %198, label %200, !dbg !3001

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2997
  store i8 48, i8* %199, align 1, !dbg !2997, !tbaa !1489
  br label %200, !dbg !2997

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %201, metadata !2820, metadata !DIExpression()), !dbg !2877
  %202 = icmp ult i64 %201, %129, !dbg !3002
  br i1 %202, label %203, label %205, !dbg !3005

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !3002
  store i8 48, i8* %204, align 1, !dbg !3002, !tbaa !1489
  br label %205, !dbg !3002

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %206, metadata !2820, metadata !DIExpression()), !dbg !2877
  br label %467, !dbg !3006

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !3007

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !3008

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !3009

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !3011

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !3013
  %213 = icmp ult i64 %212, %154, !dbg !3014
  br i1 %213, label %214, label %467, !dbg !3015

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !3016
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !3017
  %217 = load i8, i8* %216, align 1, !dbg !3017, !tbaa !1489
  %218 = icmp eq i8 %217, 63, !dbg !3018
  br i1 %218, label %219, label %467, !dbg !3019

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !3020
  %221 = load i8, i8* %220, align 1, !dbg !3020, !tbaa !1489
  %222 = sext i8 %221 to i32, !dbg !3020
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
  ], !dbg !3021

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !3022

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2830, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %212, metadata !2819, metadata !DIExpression()), !dbg !2937
  %225 = icmp ult i64 %123, %129, !dbg !3024
  br i1 %225, label %226, label %228, !dbg !3027

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3024
  store i8 63, i8* %227, align 1, !dbg !3024, !tbaa !1489
  br label %228, !dbg !3024

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %229, metadata !2820, metadata !DIExpression()), !dbg !2877
  %230 = icmp ult i64 %229, %129, !dbg !3028
  br i1 %230, label %231, label %233, !dbg !3031

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !3028
  store i8 34, i8* %232, align 1, !dbg !3028, !tbaa !1489
  br label %233, !dbg !3028

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %234, metadata !2820, metadata !DIExpression()), !dbg !2877
  %235 = icmp ult i64 %234, %129, !dbg !3032
  br i1 %235, label %236, label %238, !dbg !3035

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !3032
  store i8 34, i8* %237, align 1, !dbg !3032, !tbaa !1489
  br label %238, !dbg !3032

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %239, metadata !2820, metadata !DIExpression()), !dbg !2877
  %240 = icmp ult i64 %239, %129, !dbg !3036
  br i1 %240, label %241, label %243, !dbg !3039

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !3036
  store i8 63, i8* %242, align 1, !dbg !3036, !tbaa !1489
  br label %243, !dbg !3036

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %244, metadata !2820, metadata !DIExpression()), !dbg !2877
  br label %467, !dbg !3040

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2834, metadata !DIExpression()), !dbg !3041
  br label %255, !dbg !3042

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2834, metadata !DIExpression()), !dbg !3041
  br label %255, !dbg !3043

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2834, metadata !DIExpression()), !dbg !3041
  br label %253, !dbg !3044

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2834, metadata !DIExpression()), !dbg !3041
  br label %253, !dbg !3045

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2834, metadata !DIExpression()), !dbg !3041
  br label %255, !dbg !3046

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2834, metadata !DIExpression()), !dbg !3041
  br i1 %114, label %251, label %252, !dbg !3047

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !3048

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !3051

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !3053
  call void @llvm.dbg.value(metadata i8 %254, metadata !2834, metadata !DIExpression()), !dbg !3041
  br i1 %113, label %255, label %661, !dbg !3054

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !3053
  call void @llvm.dbg.value(metadata i8 %256, metadata !2834, metadata !DIExpression()), !dbg !3041
  br i1 %103, label %524, label %478, !dbg !3056

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !3057
  br i1 %258, label %259, label %264, !dbg !3059

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !3060, !tbaa !1489
  %261 = icmp ne i8 %260, 0, !dbg !3061
  %262 = icmp ne i64 %122, 0, !dbg !3062
  %263 = or i1 %262, %261, !dbg !3064
  br i1 %263, label %467, label %270, !dbg !3064

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !3065
  %266 = icmp ne i64 %122, 0, !dbg !3062
  %267 = or i1 %266, %265, !dbg !3059
  br i1 %267, label %467, label %270, !dbg !3059

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !3062
  br i1 %269, label %270, label %467, !dbg !3066

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2837, metadata !DIExpression()), !dbg !2948
  br label %271, !dbg !3067

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !3053
  call void @llvm.dbg.value(metadata i8 %272, metadata !2837, metadata !DIExpression()), !dbg !2948
  br i1 %113, label %467, label %661, !dbg !3068

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 1, metadata !2837, metadata !DIExpression()), !dbg !2948
  br i1 %114, label %274, label %467, !dbg !3070

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !3071

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !3074
  %277 = icmp ne i64 %124, 0, !dbg !3076
  %278 = or i1 %277, %276, !dbg !3077
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !3077
  %280 = select i1 %278, i64 %129, i64 0, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %280, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %279, metadata !2821, metadata !DIExpression()), !dbg !2878
  %281 = icmp ult i64 %123, %280, !dbg !3078
  br i1 %281, label %282, label %284, !dbg !3081

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3078
  store i8 39, i8* %283, align 1, !dbg !3078, !tbaa !1489
  br label %284, !dbg !3078

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %285, metadata !2820, metadata !DIExpression()), !dbg !2877
  %286 = icmp ult i64 %285, %280, !dbg !3082
  br i1 %286, label %287, label %289, !dbg !3085

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !3082
  store i8 92, i8* %288, align 1, !dbg !3082, !tbaa !1489
  br label %289, !dbg !3082

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %290, metadata !2820, metadata !DIExpression()), !dbg !2877
  %291 = icmp ult i64 %290, %280, !dbg !3086
  br i1 %291, label %292, label %294, !dbg !3089

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !3086
  store i8 39, i8* %293, align 1, !dbg !3086, !tbaa !1489
  br label %294, !dbg !3086

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %295, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2885
  br label %467, !dbg !3090

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !3091

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2838, metadata !DIExpression()), !dbg !3092
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !3093
  %299 = load i16*, i16** %298, align 8, !dbg !3093, !tbaa !1147
  %300 = zext i8 %157 to i64, !dbg !3093
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !3093
  %302 = load i16, i16* %301, align 2, !dbg !3093, !tbaa !1949
  %303 = lshr i16 %302, 14, !dbg !3095
  %304 = trunc i16 %303 to i8, !dbg !3095
  %305 = and i8 %304, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i8 %305, metadata !2841, metadata !DIExpression()), !dbg !3096
  br label %359, !dbg !3097

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #13, !dbg !3098
  store i64 0, i64* %10, align 8, !dbg !3099
  call void @llvm.dbg.value(metadata i64 0, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 1, metadata !2841, metadata !DIExpression()), !dbg !3096
  %307 = icmp eq i64 %154, -1, !dbg !3100
  br i1 %307, label %308, label %310, !dbg !3102

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %309, metadata !2813, metadata !DIExpression()), !dbg !2871
  br label %310, !dbg !3104

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !3105
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  br label %312, !dbg !3106

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !3107
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !3108
  call void @llvm.dbg.value(metadata i8 %314, metadata !2841, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #13, !dbg !3109
  %315 = add i64 %313, %122, !dbg !3110
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !3111
  %317 = sub i64 %311, %315, !dbg !3112
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2842, metadata !DIExpression(DW_OP_deref)), !dbg !3113
  call void @llvm.dbg.value(metadata i32* %12, metadata !2855, metadata !DIExpression(DW_OP_deref)), !dbg !3114
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #13, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %318, metadata !2857, metadata !DIExpression()), !dbg !3116
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !3117

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  %320 = icmp ugt i64 %311, %315, !dbg !3118
  br i1 %320, label %321, label %344, !dbg !3120

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2838, metadata !DIExpression()), !dbg !3092
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !3121
  %325 = load i8, i8* %324, align 1, !dbg !3121, !tbaa !1489
  %326 = icmp eq i8 %325, 0, !dbg !3120
  br i1 %326, label %344, label %327, !dbg !3122

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %328, metadata !2838, metadata !DIExpression()), !dbg !3092
  %329 = add i64 %328, %122, !dbg !3124
  %330 = icmp ult i64 %329, %311, !dbg !3118
  br i1 %330, label %321, label %344, !dbg !3120, !llvm.loop !3125

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !3126
  %333 = and i1 %116, %332, !dbg !3129
  call void @llvm.dbg.value(metadata i64 1, metadata !2858, metadata !DIExpression()), !dbg !3130
  br i1 %333, label %334, label %347, !dbg !3129

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2858, metadata !DIExpression()), !dbg !3130
  %336 = add i64 %335, %315, !dbg !3131
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !3132
  %338 = load i8, i8* %337, align 1, !dbg !3132, !tbaa !1489
  %339 = sext i8 %338 to i32, !dbg !3132
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !3133

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %341, metadata !2858, metadata !DIExpression()), !dbg !3130
  %342 = icmp ult i64 %341, %318, !dbg !3126
  br i1 %342, label %334, label %347, !dbg !3135, !llvm.loop !3136

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 %314, metadata !2841, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %313, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 %314, metadata !2841, metadata !DIExpression()), !dbg !3096
  br label %344, !dbg !3138

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2841, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %352, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #13, !dbg !3138
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !3139, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %348, metadata !2855, metadata !DIExpression()), !dbg !3114
  %349 = call i32 @iswprint(i32 %348) #13, !dbg !3141
  %350 = icmp eq i32 %349, 0, !dbg !3141
  %351 = select i1 %350, i8 0, i8 %314, !dbg !3142
  call void @llvm.dbg.value(metadata i8 %351, metadata !2841, metadata !DIExpression()), !dbg !3096
  %352 = add i64 %318, %313, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %352, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 %351, metadata !2841, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %352, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #13, !dbg !3138
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2842, metadata !DIExpression(DW_OP_deref)), !dbg !3113
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !3144
  %354 = icmp eq i32 %353, 0, !dbg !3145
  br i1 %354, label %312, label %355, !dbg !3146, !llvm.loop !3147

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #13, !dbg !3149
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 2, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 2, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 2, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 2, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 2, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 %94, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %94, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %94, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %94, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %94, metadata !2814, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %100, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %311, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 %351, metadata !2841, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %352, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #13, !dbg !3138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #13, !dbg !3149
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !3150
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !3151
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !3151
  call void @llvm.dbg.value(metadata i8 %362, metadata !2841, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %361, metadata !2838, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %360, metadata !2813, metadata !DIExpression()), !dbg !2871
  %363 = and i8 %362, 1, !dbg !3152
  %364 = icmp ne i8 %363, 0, !dbg !3152
  call void @llvm.dbg.value(metadata i8 %363, metadata !2837, metadata !DIExpression()), !dbg !2948
  %365 = icmp ult i64 %361, 2, !dbg !3153
  %366 = or i1 %364, %115, !dbg !3154
  %367 = and i1 %365, %366, !dbg !3155
  br i1 %367, label %467, label %368, !dbg !3155

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %369, metadata !2865, metadata !DIExpression()), !dbg !3157
  br label %370, !dbg !3158

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !3159
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !3163
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2885
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !3159
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !3165
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2947
  call void @llvm.dbg.value(metadata i8 %376, metadata !2836, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %375, metadata !2835, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 %374, metadata !2830, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %373, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %372, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %371, metadata !2819, metadata !DIExpression()), !dbg !2937
  br i1 %366, label %423, label %377, !dbg !3169

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !3170

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2836, metadata !DIExpression()), !dbg !2947
  %379 = and i8 %373, 1, !dbg !3173
  %380 = icmp eq i8 %379, 0, !dbg !3173
  %381 = and i1 %114, %380, !dbg !3173
  br i1 %381, label %382, label %398, !dbg !3173

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !3175
  br i1 %383, label %384, label %386, !dbg !3179

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3175
  store i8 39, i8* %385, align 1, !dbg !3175, !tbaa !1489
  br label %386, !dbg !3175

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %387, metadata !2820, metadata !DIExpression()), !dbg !2877
  %388 = icmp ult i64 %387, %129, !dbg !3180
  br i1 %388, label %389, label %391, !dbg !3183

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !3180
  store i8 36, i8* %390, align 1, !dbg !3180, !tbaa !1489
  br label %391, !dbg !3180

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %392, metadata !2820, metadata !DIExpression()), !dbg !2877
  %393 = icmp ult i64 %392, %129, !dbg !3184
  br i1 %393, label %394, label %396, !dbg !3187

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !3184
  store i8 39, i8* %395, align 1, !dbg !3184, !tbaa !1489
  br label %396, !dbg !3184

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %397, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 1, metadata !2827, metadata !DIExpression()), !dbg !2885
  br label %398, !dbg !3188

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2936
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2936
  call void @llvm.dbg.value(metadata i8 %400, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %399, metadata !2820, metadata !DIExpression()), !dbg !2877
  %401 = icmp ult i64 %399, %129, !dbg !3189
  br i1 %401, label %402, label %404, !dbg !3192

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !3189
  store i8 92, i8* %403, align 1, !dbg !3189, !tbaa !1489
  br label %404, !dbg !3189

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %405, metadata !2820, metadata !DIExpression()), !dbg !2877
  %406 = icmp ult i64 %405, %129, !dbg !3193
  br i1 %406, label %407, label %411, !dbg !3196

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !3193
  %409 = or i8 %408, 48, !dbg !3193
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !3193
  store i8 %409, i8* %410, align 1, !dbg !3193, !tbaa !1489
  br label %411, !dbg !3193

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %412, metadata !2820, metadata !DIExpression()), !dbg !2877
  %413 = icmp ult i64 %412, %129, !dbg !3197
  br i1 %413, label %414, label %419, !dbg !3200

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !3197
  %416 = and i8 %415, 7, !dbg !3197
  %417 = or i8 %416, 48, !dbg !3197
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !3197
  store i8 %417, i8* %418, align 1, !dbg !3197, !tbaa !1489
  br label %419, !dbg !3197

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %420, metadata !2820, metadata !DIExpression()), !dbg !2877
  %421 = and i8 %374, 7, !dbg !3201
  %422 = or i8 %421, 48, !dbg !3202
  call void @llvm.dbg.value(metadata i8 %422, metadata !2830, metadata !DIExpression()), !dbg !2963
  br label %432, !dbg !3203

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !3204
  %425 = icmp eq i8 %424, 0, !dbg !3204
  br i1 %425, label %432, label %426, !dbg !3205

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !3206
  br i1 %427, label %428, label %430, !dbg !3209

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3206
  store i8 92, i8* %429, align 1, !dbg !3206, !tbaa !1489
  br label %430, !dbg !3206

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %431, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2835, metadata !DIExpression()), !dbg !2946
  br label %432, !dbg !3210

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !3211
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2885
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !3212
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !3213
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %437, metadata !2836, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %436, metadata !2835, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 %435, metadata !2830, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %434, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %433, metadata !2820, metadata !DIExpression()), !dbg !2877
  %438 = add i64 %371, 1, !dbg !3216
  %439 = icmp ugt i64 %369, %438, !dbg !3218
  br i1 %439, label %440, label %562, !dbg !3219

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !3220
  %442 = icmp ne i8 %441, 0, !dbg !3220
  %443 = and i8 %437, 1, !dbg !3220
  %444 = icmp eq i8 %443, 0, !dbg !3220
  %445 = and i1 %442, %444, !dbg !3220
  br i1 %445, label %446, label %457, !dbg !3220

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !3223
  br i1 %447, label %448, label %450, !dbg !3227

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !3223
  store i8 39, i8* %449, align 1, !dbg !3223, !tbaa !1489
  br label %450, !dbg !3223

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %451, metadata !2820, metadata !DIExpression()), !dbg !2877
  %452 = icmp ult i64 %451, %129, !dbg !3228
  br i1 %452, label %453, label %455, !dbg !3231

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !3228
  store i8 39, i8* %454, align 1, !dbg !3228, !tbaa !1489
  br label %455, !dbg !3228

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %456, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2885
  br label %457, !dbg !3232

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !3233
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2936
  call void @llvm.dbg.value(metadata i8 %459, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %458, metadata !2820, metadata !DIExpression()), !dbg !2877
  %460 = icmp ult i64 %458, %129, !dbg !3234
  br i1 %460, label %461, label %463, !dbg !3236

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !3234
  store i8 %435, i8* %462, align 1, !dbg !3234, !tbaa !1489
  br label %463, !dbg !3234

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %464, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %438, metadata !2819, metadata !DIExpression()), !dbg !2937
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !3237
  %466 = load i8, i8* %465, align 1, !dbg !3237, !tbaa !1489
  call void @llvm.dbg.value(metadata i8 %466, metadata !2830, metadata !DIExpression()), !dbg !2963
  br label %370, !dbg !3238, !llvm.loop !3239

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !3242
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2936
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2878
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !3243
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2936
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2936
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2961
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2961
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2961
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %476, metadata !2837, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 %475, metadata !2836, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %155, metadata !2835, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 %474, metadata !2830, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %473, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %472, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %471, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %470, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %469, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %468, metadata !2819, metadata !DIExpression()), !dbg !2937
  br i1 %105, label %489, label %478, !dbg !3244

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
  br i1 %112, label %490, label %512, !dbg !3246

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !3247

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
  %501 = lshr i8 %494, 5, !dbg !3248
  %502 = zext i8 %501 to i64, !dbg !3248
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !3249
  %504 = load i32, i32* %503, align 4, !dbg !3249, !tbaa !1243
  %505 = and i8 %494, 31, !dbg !3250
  %506 = zext i8 %505 to i32, !dbg !3250
  %507 = shl i32 1, %506, !dbg !3251
  %508 = and i32 %504, %507, !dbg !3251
  %509 = icmp eq i32 %508, 0, !dbg !3251
  %510 = icmp eq i8 %155, 0, !dbg !3252
  %511 = and i1 %510, %509, !dbg !3253
  br i1 %511, label %562, label %524, !dbg !3253

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
  %523 = icmp eq i8 %155, 0, !dbg !3252
  br i1 %523, label %562, label %524, !dbg !3254

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !3255
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2936
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2878
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !3243
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2885
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2886
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !3256
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2961
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %532, metadata !2837, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 %531, metadata !2830, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %530, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %529, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %528, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %527, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %526, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %525, metadata !2819, metadata !DIExpression()), !dbg !2937
  br i1 %110, label %534, label %661, !dbg !3259

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2836, metadata !DIExpression()), !dbg !2947
  %535 = and i8 %529, 1, !dbg !3261
  %536 = icmp eq i8 %535, 0, !dbg !3261
  %537 = and i1 %114, %536, !dbg !3261
  br i1 %537, label %538, label %554, !dbg !3261

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !3263
  br i1 %539, label %540, label %542, !dbg !3267

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3263
  store i8 39, i8* %541, align 1, !dbg !3263, !tbaa !1489
  br label %542, !dbg !3263

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %543, metadata !2820, metadata !DIExpression()), !dbg !2877
  %544 = icmp ult i64 %543, %533, !dbg !3268
  br i1 %544, label %545, label %547, !dbg !3271

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !3268
  store i8 36, i8* %546, align 1, !dbg !3268, !tbaa !1489
  br label %547, !dbg !3268

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %548, metadata !2820, metadata !DIExpression()), !dbg !2877
  %549 = icmp ult i64 %548, %533, !dbg !3272
  br i1 %549, label %550, label %552, !dbg !3275

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3272
  store i8 39, i8* %551, align 1, !dbg !3272, !tbaa !1489
  br label %552, !dbg !3272

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %553, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 1, metadata !2827, metadata !DIExpression()), !dbg !2885
  br label %554, !dbg !3276

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !3233
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2936
  call void @llvm.dbg.value(metadata i8 %556, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %555, metadata !2820, metadata !DIExpression()), !dbg !2877
  %557 = icmp ult i64 %555, %533, !dbg !3277
  br i1 %557, label %558, label %560, !dbg !3280

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !3277
  store i8 92, i8* %559, align 1, !dbg !3277, !tbaa !1489
  br label %560, !dbg !3277

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !3280
  call void @llvm.dbg.value(metadata i64 %561, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %572, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %571, metadata !2837, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 %570, metadata !2836, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %569, metadata !2830, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %568, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %567, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %566, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %565, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %564, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %563, metadata !2819, metadata !DIExpression()), !dbg !2937
  br label %589, !dbg !3281

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !3255
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2936
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2878
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !3243
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2885
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2886
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !3284
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2961
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2961
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %571, metadata !2837, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 %570, metadata !2836, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %569, metadata !2830, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %568, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %567, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %566, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %565, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %564, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %563, metadata !2819, metadata !DIExpression()), !dbg !2937
  %573 = and i8 %567, 1, !dbg !3281
  %574 = icmp ne i8 %573, 0, !dbg !3281
  %575 = and i8 %570, 1, !dbg !3281
  %576 = icmp eq i8 %575, 0, !dbg !3281
  %577 = and i1 %574, %576, !dbg !3281
  br i1 %577, label %578, label %589, !dbg !3281

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !3285
  br i1 %579, label %580, label %582, !dbg !3289

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3285
  store i8 39, i8* %581, align 1, !dbg !3285, !tbaa !1489
  br label %582, !dbg !3285

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %583, metadata !2820, metadata !DIExpression()), !dbg !2877
  %584 = icmp ult i64 %583, %572, !dbg !3290
  br i1 %584, label %585, label %587, !dbg !3293

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !3290
  store i8 39, i8* %586, align 1, !dbg !3290, !tbaa !1489
  br label %587, !dbg !3290

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %588, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2885
  br label %589, !dbg !3294

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !3233
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2936
  call void @llvm.dbg.value(metadata i8 %598, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %597, metadata !2820, metadata !DIExpression()), !dbg !2877
  %599 = icmp ult i64 %597, %590, !dbg !3295
  br i1 %599, label %600, label %602, !dbg !3298

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !3295
  store i8 %592, i8* %601, align 1, !dbg !3295, !tbaa !1489
  br label %602, !dbg !3295

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %603, metadata !2820, metadata !DIExpression()), !dbg !2877
  %604 = and i8 %591, 1, !dbg !3299
  %605 = icmp eq i8 %604, 0, !dbg !3299
  %606 = select i1 %605, i8 0, i8 %128, !dbg !3301
  call void @llvm.dbg.value(metadata i8 %606, metadata !2829, metadata !DIExpression()), !dbg !2887
  br label %607, !dbg !3302

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !3255
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2936
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2878
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !3243
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2885
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2936
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2887
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %614, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %613, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %612, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %611, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %610, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %609, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %608, metadata !2819, metadata !DIExpression()), !dbg !2937
  %616 = add i64 %608, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %616, metadata !2819, metadata !DIExpression()), !dbg !2937
  br label %121, !dbg !3304, !llvm.loop !3305

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %618, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %618, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %125, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %125, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %126, metadata !2827, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %127, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %128, metadata !2829, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  %619 = icmp eq i64 %123, 0, !dbg !3307
  %620 = and i1 %114, %619, !dbg !3309
  %621 = xor i1 %620, true, !dbg !3309
  %622 = or i1 %110, %621, !dbg !3309
  br i1 %622, label %623, label %661, !dbg !3309

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !3310
  %625 = xor i1 %624, true, !dbg !3310
  %626 = and i8 %127, 1, !dbg !3312
  %627 = icmp eq i8 %626, 0, !dbg !3312
  %628 = or i1 %627, %625, !dbg !3310
  br i1 %628, label %638, label %629, !dbg !3310

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !3313
  %631 = icmp eq i8 %630, 0, !dbg !3313
  br i1 %631, label %634, label %632, !dbg !3316

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %618, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %618, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %618, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %618, metadata !2813, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %95, metadata !2817, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %96, metadata !2818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %124, metadata !2821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %125, metadata !2813, metadata !DIExpression()), !dbg !2871
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !3317
  br label %671, !dbg !3318

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !3319
  %636 = icmp ne i64 %124, 0, !dbg !3321
  %637 = and i1 %636, %635, !dbg !3322
  br i1 %637, label %27, label %638, !dbg !3322

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %129, metadata !2811, metadata !DIExpression()), !dbg !2869
  %639 = icmp ne i8* %98, null, !dbg !3323
  %640 = and i1 %639, %110, !dbg !3325
  br i1 %640, label %641, label %656, !dbg !3325

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %123, metadata !2820, metadata !DIExpression()), !dbg !2877
  %642 = load i8, i8* %98, align 1, !dbg !3326, !tbaa !1489
  %643 = icmp eq i8 %642, 0, !dbg !3329
  br i1 %643, label %656, label %644, !dbg !3329

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %647, metadata !2820, metadata !DIExpression()), !dbg !2877
  %648 = icmp ult i64 %647, %129, !dbg !3330
  br i1 %648, label %649, label %651, !dbg !3333

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !3330
  store i8 %645, i8* %650, align 1, !dbg !3330, !tbaa !1489
  br label %651, !dbg !3330

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !3333
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %653, metadata !2822, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %652, metadata !2820, metadata !DIExpression()), !dbg !2877
  %654 = load i8, i8* %653, align 1, !dbg !3326, !tbaa !1489
  %655 = icmp eq i8 %654, 0, !dbg !3329
  br i1 %655, label %656, label %644, !dbg !3329, !llvm.loop !3335

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2877
  call void @llvm.dbg.value(metadata i64 %657, metadata !2820, metadata !DIExpression()), !dbg !2877
  %658 = icmp ult i64 %657, %129, !dbg !3337
  br i1 %658, label %659, label %671, !dbg !3339

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !3340
  store i8 0, i8* %660, align 1, !dbg !3341, !tbaa !1489
  br label %671, !dbg !3340

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %663, metadata !2813, metadata !DIExpression()), !dbg !2871
  %665 = icmp ne i32 %662, 2, !dbg !3342
  %666 = icmp eq i8 %102, 0, !dbg !3344
  %667 = or i1 %665, %666, !dbg !3345
  call void @llvm.dbg.value(metadata i32 4, metadata !2814, metadata !DIExpression()), !dbg !2872
  %668 = select i1 %667, i32 %662, i32 4, !dbg !3345
  call void @llvm.dbg.value(metadata i32 %668, metadata !2814, metadata !DIExpression()), !dbg !2872
  %669 = and i32 %5, -3, !dbg !3346
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !3347
  br label %671, !dbg !3348

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 %1, metadata !3355, metadata !DIExpression()), !dbg !3359
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %3, metadata !3356, metadata !DIExpression()), !dbg !3361
  %4 = icmp eq i8* %3, %0, !dbg !3362
  br i1 %4, label %5, label %71, !dbg !3364

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #13, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %6, metadata !3357, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %6, metadata !3367, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* null, metadata !3373, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 85, metadata !3374, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8 84, metadata !3375, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i8 70, metadata !3376, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 45, metadata !3377, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8 56, metadata !3378, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8 0, metadata !3379, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8 0, metadata !3380, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8 0, metadata !3381, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8 0, metadata !3382, metadata !DIExpression()), !dbg !3395
  %7 = load i8, i8* %6, align 1, !dbg !3396, !tbaa !1489
  %8 = and i8 %7, -33, !dbg !3396
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3396

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3398, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* null, metadata !3403, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8 84, metadata !3404, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8 70, metadata !3405, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i8 45, metadata !3406, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i8 56, metadata !3407, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8 0, metadata !3408, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8 0, metadata !3409, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i8 0, metadata !3410, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8 0, metadata !3411, metadata !DIExpression()), !dbg !3424
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3425
  %11 = load i8, i8* %10, align 1, !dbg !3425, !tbaa !1489
  %12 = and i8 %11, -33, !dbg !3425
  %13 = icmp eq i8 %12, 84, !dbg !3425
  br i1 %13, label %14, label %68, !dbg !3425

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3427, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8* null, metadata !3432, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8 70, metadata !3433, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8 45, metadata !3434, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8 56, metadata !3435, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 0, metadata !3436, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i8 0, metadata !3437, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 0, metadata !3438, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8 0, metadata !3439, metadata !DIExpression()), !dbg !3451
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3452
  %16 = load i8, i8* %15, align 1, !dbg !3452, !tbaa !1489
  %17 = and i8 %16, -33, !dbg !3452
  %18 = icmp eq i8 %17, 70, !dbg !3452
  br i1 %18, label %19, label %68, !dbg !3452

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3454, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* null, metadata !3459, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 45, metadata !3460, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 56, metadata !3461, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 0, metadata !3462, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8 0, metadata !3463, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8 0, metadata !3464, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8 0, metadata !3465, metadata !DIExpression()), !dbg !3476
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3477
  %21 = load i8, i8* %20, align 1, !dbg !3477, !tbaa !1489
  %22 = icmp eq i8 %21, 45, !dbg !3477
  br i1 %22, label %23, label %68, !dbg !3479

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3480, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8* null, metadata !3485, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8 56, metadata !3486, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8 0, metadata !3487, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i8 0, metadata !3488, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i8 0, metadata !3489, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8 0, metadata !3490, metadata !DIExpression()), !dbg !3500
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3501
  %25 = load i8, i8* %24, align 1, !dbg !3501, !tbaa !1489
  %26 = icmp eq i8 %25, 56, !dbg !3501
  br i1 %26, label %27, label %68, !dbg !3503

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3504, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* null, metadata !3509, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8 0, metadata !3510, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8 0, metadata !3511, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8 0, metadata !3512, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8 0, metadata !3513, metadata !DIExpression()), !dbg !3522
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3523
  %29 = load i8, i8* %28, align 1, !dbg !3523, !tbaa !1489
  %30 = icmp eq i8 %29, 0, !dbg !3523
  br i1 %30, label %31, label %68, !dbg !3525

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3526, !tbaa !1489
  %33 = icmp eq i8 %32, 96, !dbg !3527
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.102, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.103, i64 0, i64 0), !dbg !3526
  br label %71, !dbg !3528

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3398, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i8* null, metadata !3403, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8 66, metadata !3404, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8 49, metadata !3405, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8 56, metadata !3406, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8 48, metadata !3407, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8 51, metadata !3408, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 48, metadata !3409, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8 0, metadata !3410, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8 0, metadata !3411, metadata !DIExpression()), !dbg !3541
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3542
  %37 = load i8, i8* %36, align 1, !dbg !3542, !tbaa !1489
  %38 = and i8 %37, -33, !dbg !3542
  %39 = icmp eq i8 %38, 66, !dbg !3542
  br i1 %39, label %40, label %68, !dbg !3542

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3427, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8* null, metadata !3432, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 49, metadata !3433, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8 56, metadata !3434, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 48, metadata !3435, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8 51, metadata !3436, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8 48, metadata !3437, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 0, metadata !3438, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i8 0, metadata !3439, metadata !DIExpression()), !dbg !3552
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3553
  %42 = load i8, i8* %41, align 1, !dbg !3553, !tbaa !1489
  %43 = icmp eq i8 %42, 49, !dbg !3553
  br i1 %43, label %44, label %68, !dbg !3554

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3454, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* null, metadata !3459, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8 56, metadata !3460, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8 48, metadata !3461, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8 51, metadata !3462, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8 48, metadata !3463, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8 0, metadata !3464, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8 0, metadata !3465, metadata !DIExpression()), !dbg !3563
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3564
  %46 = load i8, i8* %45, align 1, !dbg !3564, !tbaa !1489
  %47 = icmp eq i8 %46, 56, !dbg !3564
  br i1 %47, label %48, label %68, !dbg !3565

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3480, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* null, metadata !3485, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8 48, metadata !3486, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i8 51, metadata !3487, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 48, metadata !3488, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i8 0, metadata !3489, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8 0, metadata !3490, metadata !DIExpression()), !dbg !3573
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3574
  %50 = load i8, i8* %49, align 1, !dbg !3574, !tbaa !1489
  %51 = icmp eq i8 %50, 48, !dbg !3574
  br i1 %51, label %52, label %68, !dbg !3575

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3504, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* null, metadata !3509, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i8 51, metadata !3510, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i8 48, metadata !3511, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8 0, metadata !3512, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8 0, metadata !3513, metadata !DIExpression()), !dbg !3582
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3583
  %54 = load i8, i8* %53, align 1, !dbg !3583, !tbaa !1489
  %55 = icmp eq i8 %54, 51, !dbg !3583
  br i1 %55, label %56, label %68, !dbg !3584

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3585, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8* null, metadata !3590, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8 48, metadata !3591, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i8 0, metadata !3592, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8 0, metadata !3593, metadata !DIExpression()), !dbg !3601
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3602
  %58 = load i8, i8* %57, align 1, !dbg !3602, !tbaa !1489
  %59 = icmp eq i8 %58, 48, !dbg !3602
  br i1 %59, label %60, label %68, !dbg !3604

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3605, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* null, metadata !3610, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 0, metadata !3611, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i8 0, metadata !3612, metadata !DIExpression()), !dbg !3619
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3620
  %62 = load i8, i8* %61, align 1, !dbg !3620, !tbaa !1489
  %63 = icmp eq i8 %62, 0, !dbg !3620
  br i1 %63, label %64, label %68, !dbg !3622

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3623, !tbaa !1489
  %66 = icmp eq i8 %65, 96, !dbg !3624
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.104, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.105, i64 0, i64 0), !dbg !3623
  br label %71, !dbg !3625

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3626
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), !dbg !3627
  br label %71, !dbg !3628

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3629
  ret i8* %72, !dbg !3630
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #14

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3631 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3635, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %1, metadata !3636, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %0, metadata !3641, metadata !DIExpression()) #13, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3646, metadata !DIExpression()) #13, !dbg !3656
  call void @llvm.dbg.value(metadata i64* null, metadata !3647, metadata !DIExpression()) #13, !dbg !3657
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3648, metadata !DIExpression()) #13, !dbg !3658
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3659
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3649, metadata !DIExpression()) #13, !dbg !3660
  %6 = tail call i32* @__errno_location() #17, !dbg !3661
  %7 = load i32, i32* %6, align 4, !dbg !3661, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %7, metadata !3650, metadata !DIExpression()) #13, !dbg !3662
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3663
  %9 = load i32, i32* %8, align 4, !dbg !3663, !tbaa !2744
  %10 = or i32 %9, 1, !dbg !3664
  call void @llvm.dbg.value(metadata i32 %10, metadata !3651, metadata !DIExpression()) #13, !dbg !3665
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3666
  %12 = load i32, i32* %11, align 8, !dbg !3666, !tbaa !2685
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3667
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3668
  %15 = load i8*, i8** %14, align 8, !dbg !3668, !tbaa !2770
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3669
  %17 = load i8*, i8** %16, align 8, !dbg !3669, !tbaa !2773
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #13, !dbg !3670
  %19 = add i64 %18, 1, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %19, metadata !3652, metadata !DIExpression()) #13, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %19, metadata !3673, metadata !DIExpression()) #13, !dbg !3678
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13, !dbg !3680
  call void @llvm.dbg.value(metadata i8* %20, metadata !3653, metadata !DIExpression()) #13, !dbg !3681
  %21 = load i32, i32* %11, align 8, !dbg !3682, !tbaa !2685
  %22 = load i8*, i8** %14, align 8, !dbg !3683, !tbaa !2770
  %23 = load i8*, i8** %16, align 8, !dbg !3684, !tbaa !2773
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #13, !dbg !3685
  store i32 %7, i32* %6, align 4, !dbg !3686, !tbaa !1243
  ret i8* %20, !dbg !3687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3642 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3641, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %1, metadata !3646, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64* %2, metadata !3647, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3648, metadata !DIExpression()), !dbg !3691
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3692
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3692
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3649, metadata !DIExpression()), !dbg !3693
  %7 = tail call i32* @__errno_location() #17, !dbg !3694
  %8 = load i32, i32* %7, align 4, !dbg !3694, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %8, metadata !3650, metadata !DIExpression()), !dbg !3695
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3696
  %10 = load i32, i32* %9, align 4, !dbg !3696, !tbaa !2744
  %11 = icmp ne i64* %2, null, !dbg !3697
  %12 = xor i1 %11, true, !dbg !3697
  %13 = zext i1 %12 to i32, !dbg !3697
  %14 = or i32 %10, %13, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %14, metadata !3651, metadata !DIExpression()), !dbg !3699
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3700
  %16 = load i32, i32* %15, align 8, !dbg !3700, !tbaa !2685
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3701
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3702
  %19 = load i8*, i8** %18, align 8, !dbg !3702, !tbaa !2770
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3703
  %21 = load i8*, i8** %20, align 8, !dbg !3703, !tbaa !2773
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3704
  %23 = add i64 %22, 1, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %23, metadata !3652, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %23, metadata !3673, metadata !DIExpression()) #13, !dbg !3707
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %24, metadata !3653, metadata !DIExpression()), !dbg !3710
  %25 = load i32, i32* %15, align 8, !dbg !3711, !tbaa !2685
  %26 = load i8*, i8** %18, align 8, !dbg !3712, !tbaa !2770
  %27 = load i8*, i8** %20, align 8, !dbg !3713, !tbaa !2773
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3714
  store i32 %8, i32* %7, align 4, !dbg !3715, !tbaa !1243
  br i1 %11, label %29, label %30, !dbg !3716

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3717, !tbaa !1207
  br label %30, !dbg !3719

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3720
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3721 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3725, !tbaa !1147
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i32 1, metadata !3724, metadata !DIExpression()), !dbg !3727
  %2 = load i32, i32* @nslots, align 4, !dbg !3728, !tbaa !1243
  %3 = icmp sgt i32 %2, 1, !dbg !3731
  br i1 %3, label %4, label %12, !dbg !3732

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3724, metadata !DIExpression()), !dbg !3727
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3733
  %7 = load i8*, i8** %6, align 8, !dbg !3733, !tbaa !3734
  tail call void @free(i8* %7) #13, !dbg !3736
  %8 = add nuw nsw i64 %5, 1, !dbg !3737
  call void @llvm.dbg.value(metadata i32 undef, metadata !3724, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3727
  %9 = load i32, i32* @nslots, align 4, !dbg !3728, !tbaa !1243
  %10 = sext i32 %9 to i64, !dbg !3731
  %11 = icmp slt i64 %8, %10, !dbg !3731
  br i1 %11, label %4, label %12, !dbg !3732, !llvm.loop !3738

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3740
  %14 = load i8*, i8** %13, align 8, !dbg !3740, !tbaa !3734
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3742
  br i1 %15, label %17, label %16, !dbg !3743

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #13, !dbg !3744
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3746, !tbaa !3747
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3748, !tbaa !3734
  br label %17, !dbg !3749

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3750
  br i1 %18, label %21, label %19, !dbg !3752

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3753
  tail call void @free(i8* %20) #13, !dbg !3755
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3756, !tbaa !1147
  br label %21, !dbg !3757

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3758, !tbaa !1243
  ret void, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3760 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3764, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8* %1, metadata !3765, metadata !DIExpression()), !dbg !3767
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3768
  ret i8* %3, !dbg !3769
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %2, metadata !3776, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3777, metadata !DIExpression()), !dbg !3792
  %5 = tail call i32* @__errno_location() #17, !dbg !3793
  %6 = load i32, i32* %5, align 4, !dbg !3793, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %6, metadata !3778, metadata !DIExpression()), !dbg !3794
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3795, !tbaa !1147
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3779, metadata !DIExpression()), !dbg !3796
  %8 = icmp slt i32 %0, 0, !dbg !3797
  br i1 %8, label %9, label %10, !dbg !3799

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3800
  unreachable, !dbg !3800

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3801, !tbaa !1243
  %12 = icmp sgt i32 %11, %0, !dbg !3802
  br i1 %12, label %34, label %13, !dbg !3803

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3804
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3783, metadata !DIExpression()), !dbg !3805
  %15 = icmp eq i32 %0, 2147483647, !dbg !3806
  br i1 %15, label %16, label %17, !dbg !3808

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3809
  unreachable, !dbg !3809

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3810
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3810
  %20 = add nsw i32 %0, 1, !dbg !3811
  %21 = sext i32 %20 to i64, !dbg !3812
  %22 = shl nsw i64 %21, 4, !dbg !3813
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13, !dbg !3814
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3814
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3779, metadata !DIExpression()), !dbg !3796
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3815, !tbaa !1147
  br i1 %14, label %25, label %26, !dbg !3816

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3817, !tbaa.struct !3819
  br label %26, !dbg !3820

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3821, !tbaa !1243
  %28 = sext i32 %27 to i64, !dbg !3822
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3822
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3823
  %31 = sub nsw i32 %20, %27, !dbg !3824
  %32 = sext i32 %31 to i64, !dbg !3825
  %33 = shl nsw i64 %32, 4, !dbg !3826
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3823
  store i32 %20, i32* @nslots, align 4, !dbg !3827, !tbaa !1243
  br label %34, !dbg !3828

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3829
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3779, metadata !DIExpression()), !dbg !3796
  %36 = sext i32 %0 to i64, !dbg !3830
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3831
  %38 = load i64, i64* %37, align 8, !dbg !3831, !tbaa !3747
  call void @llvm.dbg.value(metadata i64 %38, metadata !3784, metadata !DIExpression()), !dbg !3832
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3833
  %40 = load i8*, i8** %39, align 8, !dbg !3833, !tbaa !3734
  call void @llvm.dbg.value(metadata i8* %40, metadata !3786, metadata !DIExpression()), !dbg !3834
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3835
  %42 = load i32, i32* %41, align 4, !dbg !3835, !tbaa !2744
  %43 = or i32 %42, 1, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %43, metadata !3787, metadata !DIExpression()), !dbg !3837
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3838
  %45 = load i32, i32* %44, align 8, !dbg !3838, !tbaa !2685
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3839
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3840
  %48 = load i8*, i8** %47, align 8, !dbg !3840, !tbaa !2770
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3841
  %50 = load i8*, i8** %49, align 8, !dbg !3841, !tbaa !2773
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3842
  call void @llvm.dbg.value(metadata i64 %51, metadata !3788, metadata !DIExpression()), !dbg !3843
  %52 = icmp ugt i64 %38, %51, !dbg !3844
  br i1 %52, label %63, label %53, !dbg !3846

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %54, metadata !3784, metadata !DIExpression()), !dbg !3832
  store i64 %54, i64* %37, align 8, !dbg !3849, !tbaa !3747
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3850
  br i1 %55, label %57, label %56, !dbg !3852

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #13, !dbg !3853
  br label %57, !dbg !3853

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3673, metadata !DIExpression()) #13, !dbg !3854
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %58, metadata !3786, metadata !DIExpression()), !dbg !3834
  store i8* %58, i8** %39, align 8, !dbg !3857, !tbaa !3734
  %59 = load i32, i32* %44, align 8, !dbg !3858, !tbaa !2685
  %60 = load i8*, i8** %47, align 8, !dbg !3859, !tbaa !2770
  %61 = load i8*, i8** %49, align 8, !dbg !3860, !tbaa !2773
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3861
  br label %63, !dbg !3862

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3863
  call void @llvm.dbg.value(metadata i8* %64, metadata !3786, metadata !DIExpression()), !dbg !3834
  store i32 %6, i32* %5, align 4, !dbg !3864, !tbaa !1243
  ret i8* %64, !dbg !3865
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3866 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3870, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i8* %1, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %2, metadata !3872, metadata !DIExpression()), !dbg !3875
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3876
  ret i8* %4, !dbg !3877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3878 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3882, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 0, metadata !3764, metadata !DIExpression()) #13, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %0, metadata !3765, metadata !DIExpression()) #13, !dbg !3886
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !3887
  ret i8* %2, !dbg !3888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3889 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3893, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %1, metadata !3894, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 0, metadata !3870, metadata !DIExpression()) #13, !dbg !3897
  call void @llvm.dbg.value(metadata i8* %0, metadata !3871, metadata !DIExpression()) #13, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()) #13, !dbg !3900
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !3901
  ret i8* %3, !dbg !3902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3903 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3907, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i32 %1, metadata !3908, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8* %2, metadata !3909, metadata !DIExpression()), !dbg !3913
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3914
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3914
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3910, metadata !DIExpression(DW_OP_deref)), !dbg !3915
  call void @llvm.dbg.value(metadata i32 %1, metadata !3916, metadata !DIExpression()) #13, !dbg !3922
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #13, !dbg !3924, !alias.scope !3925
  %6 = icmp eq i32 %1, 10, !dbg !3928
  br i1 %6, label %7, label %8, !dbg !3930

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3931, !noalias !3925
  unreachable, !dbg !3931

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3932
  store i32 %1, i32* %9, align 8, !dbg !3933, !tbaa !2685, !alias.scope !3925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3910, metadata !DIExpression(DW_OP_deref)), !dbg !3915
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3921, metadata !DIExpression(DW_OP_deref)), !dbg !3924
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3934
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3935
  ret i8* %10, !dbg !3936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3937 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 %1, metadata !3942, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i8* %2, metadata !3943, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %3, metadata !3944, metadata !DIExpression()), !dbg !3949
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3950
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3945, metadata !DIExpression(DW_OP_deref)), !dbg !3951
  call void @llvm.dbg.value(metadata i32 %1, metadata !3916, metadata !DIExpression()) #13, !dbg !3952
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #13, !dbg !3954, !alias.scope !3955
  %7 = icmp eq i32 %1, 10, !dbg !3958
  br i1 %7, label %8, label %9, !dbg !3959

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3960, !noalias !3955
  unreachable, !dbg !3960

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3961
  store i32 %1, i32* %10, align 8, !dbg !3962, !tbaa !2685, !alias.scope !3955
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3945, metadata !DIExpression(DW_OP_deref)), !dbg !3951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3921, metadata !DIExpression(DW_OP_deref)), !dbg !3954
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3963
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3964
  ret i8* %11, !dbg !3965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3966 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3970, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8* %1, metadata !3971, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3907, metadata !DIExpression()) #13, !dbg !3974
  call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()) #13, !dbg !3976
  call void @llvm.dbg.value(metadata i8* %1, metadata !3909, metadata !DIExpression()) #13, !dbg !3977
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3978
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3910, metadata !DIExpression(DW_OP_deref)) #13, !dbg !3979
  call void @llvm.dbg.value(metadata i32 %0, metadata !3916, metadata !DIExpression()) #13, !dbg !3980
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #13, !dbg !3982, !alias.scope !3983
  %5 = icmp eq i32 %0, 10, !dbg !3986
  br i1 %5, label %6, label %7, !dbg !3987

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3988, !noalias !3983
  unreachable, !dbg !3988

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3989
  store i32 %0, i32* %8, align 8, !dbg !3990, !tbaa !2685, !alias.scope !3983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3910, metadata !DIExpression(DW_OP_deref)) #13, !dbg !3979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3921, metadata !DIExpression(DW_OP_deref)) #13, !dbg !3982
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !3991
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3992
  ret i8* %9, !dbg !3993
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3994 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8* %1, metadata !3999, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %2, metadata !4000, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 0, metadata !3941, metadata !DIExpression()) #13, !dbg !4004
  call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()) #13, !dbg !4006
  call void @llvm.dbg.value(metadata i8* %1, metadata !3943, metadata !DIExpression()) #13, !dbg !4007
  call void @llvm.dbg.value(metadata i64 %2, metadata !3944, metadata !DIExpression()) #13, !dbg !4008
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4009
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4009
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3945, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %0, metadata !3916, metadata !DIExpression()) #13, !dbg !4011
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #13, !dbg !4013, !alias.scope !4014
  %6 = icmp eq i32 %0, 10, !dbg !4017
  br i1 %6, label %7, label %8, !dbg !4018

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !4019, !noalias !4014
  unreachable, !dbg !4019

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4020
  store i32 %0, i32* %9, align 8, !dbg !4021, !tbaa !2685, !alias.scope !4014
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3945, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3921, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4013
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #13, !dbg !4022
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4023
  ret i8* %10, !dbg !4024
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !4025 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4029, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i64 %1, metadata !4030, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i8 %2, metadata !4031, metadata !DIExpression()), !dbg !4035
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4036
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4037, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4032, metadata !DIExpression(DW_OP_deref)), !dbg !4039
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2704, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i8 %2, metadata !2705, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i8 %2, metadata !2707, metadata !DIExpression()), !dbg !4044
  %6 = lshr i8 %2, 5, !dbg !4045
  %7 = zext i8 %6 to i64, !dbg !4045
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4046
  call void @llvm.dbg.value(metadata i32* %8, metadata !2708, metadata !DIExpression()), !dbg !4047
  %9 = and i8 %2, 31, !dbg !4048
  %10 = zext i8 %9 to i32, !dbg !4048
  call void @llvm.dbg.value(metadata i32 %10, metadata !2710, metadata !DIExpression()), !dbg !4049
  %11 = load i32, i32* %8, align 4, !dbg !4050, !tbaa !1243
  %12 = lshr i32 %11, %10, !dbg !4051
  %13 = and i32 %12, 1, !dbg !4052
  call void @llvm.dbg.value(metadata i32 %13, metadata !2711, metadata !DIExpression()), !dbg !4053
  %14 = xor i32 %13, 1, !dbg !4054
  %15 = shl i32 %14, %10, !dbg !4055
  %16 = xor i32 %15, %11, !dbg !4056
  store i32 %16, i32* %8, align 4, !dbg !4056, !tbaa !1243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4032, metadata !DIExpression(DW_OP_deref)), !dbg !4039
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4057
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4058
  ret i8* %17, !dbg !4059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !4060 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i8 %1, metadata !4065, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i8* %0, metadata !4029, metadata !DIExpression()) #13, !dbg !4068
  call void @llvm.dbg.value(metadata i64 -1, metadata !4030, metadata !DIExpression()) #13, !dbg !4070
  call void @llvm.dbg.value(metadata i8 %1, metadata !4031, metadata !DIExpression()) #13, !dbg !4071
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4072
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4072
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4073, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4032, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4074
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2704, metadata !DIExpression()) #13, !dbg !4075
  call void @llvm.dbg.value(metadata i8 %1, metadata !2705, metadata !DIExpression()) #13, !dbg !4077
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()) #13, !dbg !4078
  call void @llvm.dbg.value(metadata i8 %1, metadata !2707, metadata !DIExpression()) #13, !dbg !4079
  %5 = lshr i8 %1, 5, !dbg !4080
  %6 = zext i8 %5 to i64, !dbg !4080
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4081
  call void @llvm.dbg.value(metadata i32* %7, metadata !2708, metadata !DIExpression()) #13, !dbg !4082
  %8 = and i8 %1, 31, !dbg !4083
  %9 = zext i8 %8 to i32, !dbg !4083
  call void @llvm.dbg.value(metadata i32 %9, metadata !2710, metadata !DIExpression()) #13, !dbg !4084
  %10 = load i32, i32* %7, align 4, !dbg !4085, !tbaa !1243
  %11 = lshr i32 %10, %9, !dbg !4086
  %12 = and i32 %11, 1, !dbg !4087
  call void @llvm.dbg.value(metadata i32 %12, metadata !2711, metadata !DIExpression()) #13, !dbg !4088
  %13 = xor i32 %12, 1, !dbg !4089
  %14 = shl i32 %13, %9, !dbg !4090
  %15 = xor i32 %14, %10, !dbg !4091
  store i32 %15, i32* %7, align 4, !dbg !4091, !tbaa !1243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4032, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4074
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !4092
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4093
  ret i8* %16, !dbg !4094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !4095 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %0, metadata !4064, metadata !DIExpression()) #13, !dbg !4099
  call void @llvm.dbg.value(metadata i8 58, metadata !4065, metadata !DIExpression()) #13, !dbg !4101
  call void @llvm.dbg.value(metadata i8* %0, metadata !4029, metadata !DIExpression()) #13, !dbg !4102
  call void @llvm.dbg.value(metadata i64 -1, metadata !4030, metadata !DIExpression()) #13, !dbg !4104
  call void @llvm.dbg.value(metadata i8 58, metadata !4031, metadata !DIExpression()) #13, !dbg !4105
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4106
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #13, !dbg !4106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4107, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4032, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2704, metadata !DIExpression()) #13, !dbg !4109
  call void @llvm.dbg.value(metadata i8 58, metadata !2705, metadata !DIExpression()) #13, !dbg !4111
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()) #13, !dbg !4112
  call void @llvm.dbg.value(metadata i8 58, metadata !2707, metadata !DIExpression()) #13, !dbg !4113
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4114
  call void @llvm.dbg.value(metadata i32* %4, metadata !2708, metadata !DIExpression()) #13, !dbg !4115
  call void @llvm.dbg.value(metadata i32 26, metadata !2710, metadata !DIExpression()) #13, !dbg !4116
  %5 = load i32, i32* %4, align 4, !dbg !4117, !tbaa !1243
  %6 = or i32 %5, 67108864, !dbg !4118
  store i32 %6, i32* %4, align 4, !dbg !4118, !tbaa !1243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4032, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4108
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13, !dbg !4119
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #13, !dbg !4120
  ret i8* %7, !dbg !4121
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !4122 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4124, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %1, metadata !4125, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8* %0, metadata !4029, metadata !DIExpression()) #13, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %1, metadata !4030, metadata !DIExpression()) #13, !dbg !4130
  call void @llvm.dbg.value(metadata i8 58, metadata !4031, metadata !DIExpression()) #13, !dbg !4131
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4132
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4133, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4032, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4134
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2704, metadata !DIExpression()) #13, !dbg !4135
  call void @llvm.dbg.value(metadata i8 58, metadata !2705, metadata !DIExpression()) #13, !dbg !4137
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()) #13, !dbg !4138
  call void @llvm.dbg.value(metadata i8 58, metadata !2707, metadata !DIExpression()) #13, !dbg !4139
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4140
  call void @llvm.dbg.value(metadata i32* %5, metadata !2708, metadata !DIExpression()) #13, !dbg !4141
  call void @llvm.dbg.value(metadata i32 26, metadata !2710, metadata !DIExpression()) #13, !dbg !4142
  %6 = load i32, i32* %5, align 4, !dbg !4143, !tbaa !1243
  %7 = or i32 %6, 67108864, !dbg !4144
  store i32 %7, i32* %5, align 4, !dbg !4144, !tbaa !1243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4032, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4134
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13, !dbg !4145
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4146
  ret i8* %8, !dbg !4147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !4148 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3921, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4154
  call void @llvm.dbg.value(metadata i32 %0, metadata !4150, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %1, metadata !4151, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i8* %2, metadata !4152, metadata !DIExpression()), !dbg !4158
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4159
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4159
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4160
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4160
  call void @llvm.dbg.value(metadata i32 %1, metadata !3916, metadata !DIExpression()) #13, !dbg !4161
  call void @llvm.dbg.value(metadata i32 0, metadata !3921, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4154
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !4154, !alias.scope !4162
  %8 = icmp eq i32 %1, 10, !dbg !4165
  br i1 %8, label %9, label %10, !dbg !4166

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !4167, !noalias !4162
  unreachable, !dbg !4167

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3921, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4154
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4160
  store i32 %1, i32* %11, align 8, !dbg !4160
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4160
  %13 = bitcast i32* %12 to i8*, !dbg !4160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !4160
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4160
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4153, metadata !DIExpression(DW_OP_deref)), !dbg !4168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2704, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i8 58, metadata !2705, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i8 58, metadata !2707, metadata !DIExpression()), !dbg !4173
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4174
  call void @llvm.dbg.value(metadata i32* %14, metadata !2708, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i32 26, metadata !2710, metadata !DIExpression()), !dbg !4176
  %15 = load i32, i32* %14, align 4, !dbg !4177, !tbaa !1243
  %16 = or i32 %15, 67108864, !dbg !4178
  store i32 %16, i32* %14, align 4, !dbg !4178, !tbaa !1243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4153, metadata !DIExpression(DW_OP_deref)), !dbg !4168
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4179
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4180
  ret i8* %17, !dbg !4181
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4182 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4186, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata i8* %1, metadata !4187, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i8* %2, metadata !4188, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i8* %3, metadata !4189, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i32 %0, metadata !4194, metadata !DIExpression()) #13, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %1, metadata !4199, metadata !DIExpression()) #13, !dbg !4206
  call void @llvm.dbg.value(metadata i8* %2, metadata !4200, metadata !DIExpression()) #13, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %3, metadata !4201, metadata !DIExpression()) #13, !dbg !4208
  call void @llvm.dbg.value(metadata i64 -1, metadata !4202, metadata !DIExpression()) #13, !dbg !4209
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4210
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4210
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4211, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4203, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2752, metadata !DIExpression()) #13, !dbg !4213
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()) #13, !dbg !4215
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()) #13, !dbg !4216
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2752, metadata !DIExpression()) #13, !dbg !4213
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4217
  store i32 10, i32* %7, align 8, !dbg !4218, !tbaa !2685
  %8 = icmp ne i8* %1, null, !dbg !4219
  %9 = icmp ne i8* %2, null, !dbg !4220
  %10 = and i1 %8, %9, !dbg !4221
  br i1 %10, label %12, label %11, !dbg !4221

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4222
  unreachable, !dbg !4222

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4223
  store i8* %1, i8** %13, align 8, !dbg !4224, !tbaa !2770
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4225
  store i8* %2, i8** %14, align 8, !dbg !4226, !tbaa !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4203, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4212
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13, !dbg !4227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4228
  ret i8* %15, !dbg !4229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4195 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4194, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i8* %1, metadata !4199, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i8* %2, metadata !4200, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %3, metadata !4201, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %4, metadata !4202, metadata !DIExpression()), !dbg !4234
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4235
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4235
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4236, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4203, metadata !DIExpression(DW_OP_deref)), !dbg !4237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2752, metadata !DIExpression()) #13, !dbg !4238
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()) #13, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()) #13, !dbg !4241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2752, metadata !DIExpression()) #13, !dbg !4238
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4242
  store i32 10, i32* %8, align 8, !dbg !4243, !tbaa !2685
  %9 = icmp ne i8* %1, null, !dbg !4244
  %10 = icmp ne i8* %2, null, !dbg !4245
  %11 = and i1 %9, %10, !dbg !4246
  br i1 %11, label %13, label %12, !dbg !4246

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !4247
  unreachable, !dbg !4247

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4248
  store i8* %1, i8** %14, align 8, !dbg !4249, !tbaa !2770
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4250
  store i8* %2, i8** %15, align 8, !dbg !4251, !tbaa !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4203, metadata !DIExpression(DW_OP_deref)), !dbg !4237
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4252
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4253
  ret i8* %16, !dbg !4254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4255 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4259, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i8* %1, metadata !4260, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i8* %2, metadata !4261, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i32 0, metadata !4186, metadata !DIExpression()) #13, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %0, metadata !4187, metadata !DIExpression()) #13, !dbg !4267
  call void @llvm.dbg.value(metadata i8* %1, metadata !4188, metadata !DIExpression()) #13, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %2, metadata !4189, metadata !DIExpression()) #13, !dbg !4269
  call void @llvm.dbg.value(metadata i32 0, metadata !4194, metadata !DIExpression()) #13, !dbg !4270
  call void @llvm.dbg.value(metadata i8* %0, metadata !4199, metadata !DIExpression()) #13, !dbg !4272
  call void @llvm.dbg.value(metadata i8* %1, metadata !4200, metadata !DIExpression()) #13, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %2, metadata !4201, metadata !DIExpression()) #13, !dbg !4274
  call void @llvm.dbg.value(metadata i64 -1, metadata !4202, metadata !DIExpression()) #13, !dbg !4275
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4276
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4277, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4203, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2752, metadata !DIExpression()) #13, !dbg !4279
  call void @llvm.dbg.value(metadata i8* %0, metadata !2753, metadata !DIExpression()) #13, !dbg !4281
  call void @llvm.dbg.value(metadata i8* %1, metadata !2754, metadata !DIExpression()) #13, !dbg !4282
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2752, metadata !DIExpression()) #13, !dbg !4279
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4283
  store i32 10, i32* %6, align 8, !dbg !4284, !tbaa !2685
  %7 = icmp ne i8* %0, null, !dbg !4285
  %8 = icmp ne i8* %1, null, !dbg !4286
  %9 = and i1 %7, %8, !dbg !4287
  br i1 %9, label %11, label %10, !dbg !4287

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !4288
  unreachable, !dbg !4288

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4289
  store i8* %0, i8** %12, align 8, !dbg !4290, !tbaa !2770
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4291
  store i8* %1, i8** %13, align 8, !dbg !4292, !tbaa !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4203, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4278
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !4293
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4294
  ret i8* %14, !dbg !4295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4296 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i8* %1, metadata !4301, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i8* %2, metadata !4302, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i64 %3, metadata !4303, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4194, metadata !DIExpression()) #13, !dbg !4308
  call void @llvm.dbg.value(metadata i8* %0, metadata !4199, metadata !DIExpression()) #13, !dbg !4310
  call void @llvm.dbg.value(metadata i8* %1, metadata !4200, metadata !DIExpression()) #13, !dbg !4311
  call void @llvm.dbg.value(metadata i8* %2, metadata !4201, metadata !DIExpression()) #13, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %3, metadata !4202, metadata !DIExpression()) #13, !dbg !4313
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4314
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4315, !tbaa.struct !4038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4203, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2752, metadata !DIExpression()) #13, !dbg !4317
  call void @llvm.dbg.value(metadata i8* %0, metadata !2753, metadata !DIExpression()) #13, !dbg !4319
  call void @llvm.dbg.value(metadata i8* %1, metadata !2754, metadata !DIExpression()) #13, !dbg !4320
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2752, metadata !DIExpression()) #13, !dbg !4317
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4321
  store i32 10, i32* %7, align 8, !dbg !4322, !tbaa !2685
  %8 = icmp ne i8* %0, null, !dbg !4323
  %9 = icmp ne i8* %1, null, !dbg !4324
  %10 = and i1 %8, %9, !dbg !4325
  br i1 %10, label %12, label %11, !dbg !4325

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4326
  unreachable, !dbg !4326

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4327
  store i8* %0, i8** %13, align 8, !dbg !4328, !tbaa !2770
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4329
  store i8* %1, i8** %14, align 8, !dbg !4330, !tbaa !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4203, metadata !DIExpression(DW_OP_deref)) #13, !dbg !4316
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13, !dbg !4331
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4332
  ret i8* %15, !dbg !4333
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4334 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4338, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i8* %1, metadata !4339, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %2, metadata !4340, metadata !DIExpression()), !dbg !4343
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4344
  ret i8* %4, !dbg !4345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !4346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4350, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i64 %1, metadata !4351, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 0, metadata !4338, metadata !DIExpression()) #13, !dbg !4354
  call void @llvm.dbg.value(metadata i8* %0, metadata !4339, metadata !DIExpression()) #13, !dbg !4356
  call void @llvm.dbg.value(metadata i64 %1, metadata !4340, metadata !DIExpression()) #13, !dbg !4357
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4358
  ret i8* %3, !dbg !4359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !4360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4364, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i8* %1, metadata !4365, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 %0, metadata !4338, metadata !DIExpression()) #13, !dbg !4368
  call void @llvm.dbg.value(metadata i8* %1, metadata !4339, metadata !DIExpression()) #13, !dbg !4370
  call void @llvm.dbg.value(metadata i64 -1, metadata !4340, metadata !DIExpression()) #13, !dbg !4371
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4372
  ret i8* %3, !dbg !4373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !4374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4378, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 0, metadata !4364, metadata !DIExpression()) #13, !dbg !4380
  call void @llvm.dbg.value(metadata i8* %0, metadata !4365, metadata !DIExpression()) #13, !dbg !4382
  call void @llvm.dbg.value(metadata i32 0, metadata !4338, metadata !DIExpression()) #13, !dbg !4383
  call void @llvm.dbg.value(metadata i8* %0, metadata !4339, metadata !DIExpression()) #13, !dbg !4385
  call void @llvm.dbg.value(metadata i64 -1, metadata !4340, metadata !DIExpression()) #13, !dbg !4386
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4387
  ret i8* %2, !dbg !4388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @readtokens0_init(%struct.Tokens*) local_unnamed_addr #7 !dbg !4389 {
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4436, metadata !DIExpression()), !dbg !4437
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4438
  %3 = bitcast %struct.Tokens* %0 to i8*, !dbg !4438
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 24, i1 false), !dbg !4439
  %4 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %2, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4438
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4440
  %6 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %5, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4440
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4441
  %8 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %7, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #13, !dbg !4441
  ret void, !dbg !4442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @readtokens0_free(%struct.Tokens*) local_unnamed_addr #7 !dbg !4443 {
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4445, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i8* null, metadata !4449, metadata !DIExpression()), !dbg !4457
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4457
  call void @llvm.dbg.value(metadata %struct.obstack* %2, metadata !4446, metadata !DIExpression()), !dbg !4457
  tail call void @_obstack_free(%struct.obstack* nonnull %2, i8* null) #13, !dbg !4458
  call void @llvm.dbg.value(metadata i8* null, metadata !4452, metadata !DIExpression()), !dbg !4460
  %3 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4460
  call void @llvm.dbg.value(metadata %struct.obstack* %3, metadata !4450, metadata !DIExpression()), !dbg !4460
  tail call void @_obstack_free(%struct.obstack* nonnull %3, i8* null) #13, !dbg !4461
  call void @llvm.dbg.value(metadata i8* null, metadata !4455, metadata !DIExpression()), !dbg !4463
  %4 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4463
  call void @llvm.dbg.value(metadata %struct.obstack* %4, metadata !4453, metadata !DIExpression()), !dbg !4463
  tail call void @_obstack_free(%struct.obstack* nonnull %4, i8* null) #13, !dbg !4464
  ret void, !dbg !4466
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @readtokens0(%struct._IO_FILE* nocapture, %struct.Tokens*) local_unnamed_addr #7 !dbg !4467 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4505, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4506, metadata !DIExpression()), !dbg !4543
  %3 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4544
  call void @llvm.dbg.value(metadata i32 %3, metadata !4507, metadata !DIExpression()), !dbg !4545
  %4 = icmp eq i32 %3, -1, !dbg !4546
  br i1 %4, label %5, label %9, !dbg !4547

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, !dbg !4548
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3, !dbg !4548
  %8 = bitcast i8** %7 to i64*, !dbg !4548
  br label %15, !dbg !4547

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4
  %11 = bitcast i8** %10 to i64*
  %12 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3
  %13 = bitcast i8** %12 to i64*
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3
  br label %35, !dbg !4547

; <label>:15:                                     ; preds = %48, %5
  %16 = phi i64* [ %8, %5 ], [ %13, %48 ], !dbg !4548
  %17 = phi i8** [ %7, %5 ], [ %12, %48 ], !dbg !4548
  %18 = phi %struct.obstack* [ %6, %5 ], [ %14, %48 ], !dbg !4548
  call void @llvm.dbg.value(metadata %struct.obstack* %18, metadata !4512, metadata !DIExpression()), !dbg !4548
  %19 = load i64, i64* %16, align 8, !dbg !4548, !tbaa !4549
  %20 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 2, !dbg !4548
  %21 = bitcast i8** %20 to i64*, !dbg !4548
  %22 = load i64, i64* %21, align 8, !dbg !4548, !tbaa !4550
  %23 = icmp eq i64 %19, %22, !dbg !4551
  br i1 %23, label %52, label %24, !dbg !4552

; <label>:24:                                     ; preds = %15
  %25 = inttoptr i64 %19 to i8*, !dbg !4552
  call void @llvm.dbg.value(metadata %struct.obstack* %18, metadata !4516, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata %struct.obstack* %18, metadata !4520, metadata !DIExpression()), !dbg !4554
  %26 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4, !dbg !4554
  %27 = bitcast i8** %26 to i64*, !dbg !4554
  %28 = load i64, i64* %27, align 8, !dbg !4554, !tbaa !4555
  %29 = icmp eq i64 %28, %19, !dbg !4556
  br i1 %29, label %30, label %32, !dbg !4553

; <label>:30:                                     ; preds = %24
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %18, i64 1) #13, !dbg !4556
  %31 = load i8*, i8** %17, align 8, !dbg !4553, !tbaa !4549
  br label %32, !dbg !4556

; <label>:32:                                     ; preds = %30, %24
  %33 = phi i8* [ %31, %30 ], [ %25, %24 ], !dbg !4553
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !4553
  store i8* %34, i8** %17, align 8, !dbg !4553, !tbaa !4549
  store i8 0, i8* %33, align 1, !dbg !4553, !tbaa !1489
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4557
  br label %52

; <label>:35:                                     ; preds = %9, %48
  %36 = phi i32 [ %3, %9 ], [ %49, %48 ]
  %37 = load i64, i64* %11, align 8, !dbg !4558, !tbaa !4555
  %38 = load i64, i64* %13, align 8, !dbg !4558, !tbaa !4549
  %39 = icmp eq i64 %37, %38, !dbg !4559
  %40 = inttoptr i64 %38 to i8*, !dbg !4560
  br i1 %39, label %41, label %43, !dbg !4560

; <label>:41:                                     ; preds = %35
  call void @llvm.dbg.value(metadata %struct.obstack* %14, metadata !4525, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata %struct.obstack* %14, metadata !4523, metadata !DIExpression()), !dbg !4560
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %14, i64 1) #13, !dbg !4559
  %42 = load i8*, i8** %12, align 8, !dbg !4560, !tbaa !4549
  br label %43, !dbg !4559

; <label>:43:                                     ; preds = %41, %35
  %44 = phi i8* [ %42, %41 ], [ %40, %35 ], !dbg !4560
  %45 = trunc i32 %36 to i8, !dbg !4560
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !4560
  store i8* %46, i8** %12, align 8, !dbg !4560, !tbaa !4549
  store i8 %45, i8* %44, align 1, !dbg !4560, !tbaa !1489
  %47 = icmp eq i32 %36, 0, !dbg !4561
  br i1 %47, label %51, label %48, !dbg !4563

; <label>:48:                                     ; preds = %43, %51
  %49 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4544
  call void @llvm.dbg.value(metadata i32 %49, metadata !4507, metadata !DIExpression()), !dbg !4545
  %50 = icmp eq i32 %49, -1, !dbg !4546
  br i1 %50, label %15, label %35, !dbg !4547

; <label>:51:                                     ; preds = %43
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4564
  br label %48, !dbg !4564

; <label>:52:                                     ; preds = %15, %32
  %53 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 4, !dbg !4565
  %54 = bitcast i8** %53 to i64*, !dbg !4565
  %55 = load i64, i64* %54, align 8, !dbg !4565, !tbaa !4555
  %56 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 3, !dbg !4565
  %57 = bitcast i8** %56 to i64*, !dbg !4565
  %58 = load i64, i64* %57, align 8, !dbg !4565, !tbaa !4549
  %59 = sub i64 %55, %58, !dbg !4565
  %60 = icmp ult i64 %59, 8, !dbg !4566
  br i1 %60, label %63, label %61, !dbg !4567

; <label>:61:                                     ; preds = %52
  %62 = inttoptr i64 %58 to i8**, !dbg !4567
  br label %67, !dbg !4567

; <label>:63:                                     ; preds = %52
  %64 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, !dbg !4567
  call void @llvm.dbg.value(metadata %struct.obstack* %64, metadata !4530, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata %struct.obstack* %64, metadata !4528, metadata !DIExpression()), !dbg !4567
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %64, i64 8) #13, !dbg !4566
  %65 = bitcast i8** %56 to i8***
  %66 = load i8**, i8*** %65, align 8, !dbg !4568, !tbaa !4549
  br label %67, !dbg !4566

; <label>:67:                                     ; preds = %61, %63
  %68 = phi i8** [ %66, %63 ], [ %62, %61 ], !dbg !4568
  call void @llvm.dbg.value(metadata %struct.obstack* %64, metadata !4533, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i8** %56, metadata !4535, metadata !DIExpression(DW_OP_deref)), !dbg !4568
  store i8* null, i8** %68, align 8, !dbg !4568, !tbaa !1147
  %69 = load i8*, i8** %56, align 8, !dbg !4568, !tbaa !4549
  %70 = getelementptr inbounds i8, i8* %69, i64 8, !dbg !4568
  store i8* %70, i8** %56, align 8, !dbg !4568, !tbaa !4549
  call void @llvm.dbg.value(metadata %struct.obstack* %64, metadata !4536, metadata !DIExpression()), !dbg !4569
  %71 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 2, !dbg !4569
  %72 = load i8*, i8** %71, align 8, !dbg !4569, !tbaa !4550
  call void @llvm.dbg.value(metadata i8* %72, metadata !4538, metadata !DIExpression()), !dbg !4569
  %73 = icmp eq i8* %70, %72, !dbg !4570
  %74 = ptrtoint i8* %70 to i64, !dbg !4569
  br i1 %73, label %75, label %79, !dbg !4569

; <label>:75:                                     ; preds = %67
  %76 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 10, !dbg !4570
  %77 = load i8, i8* %76, align 8, !dbg !4570
  %78 = or i8 %77, 2, !dbg !4570
  store i8 %78, i8* %76, align 8, !dbg !4570
  br label %79, !dbg !4570

; <label>:79:                                     ; preds = %75, %67
  %80 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 6, !dbg !4569
  %81 = load i64, i64* %80, align 8, !dbg !4569, !tbaa !4572
  %82 = add i64 %81, %74, !dbg !4569
  %83 = xor i64 %81, -1, !dbg !4569
  %84 = and i64 %82, %83, !dbg !4569
  %85 = getelementptr inbounds i8, i8* null, i64 %84, !dbg !4569
  store i8* %85, i8** %56, align 8, !dbg !4569, !tbaa !4549
  %86 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 1, !dbg !4573
  %87 = bitcast %struct._obstack_chunk** %86 to i64*, !dbg !4573
  %88 = load i64, i64* %87, align 8, !dbg !4573, !tbaa !4575
  %89 = ptrtoint i8* %85 to i64, !dbg !4573
  %90 = sub i64 %89, %88, !dbg !4573
  %91 = load i8*, i8** %53, align 8, !dbg !4573, !tbaa !4555
  %92 = ptrtoint i8* %91 to i64, !dbg !4573
  %93 = sub i64 %92, %88, !dbg !4573
  %94 = icmp ugt i64 %90, %93, !dbg !4573
  br i1 %94, label %95, label %96, !dbg !4569

; <label>:95:                                     ; preds = %79
  store i8* %91, i8** %56, align 8, !dbg !4573, !tbaa !4549
  br label %96, !dbg !4573

; <label>:96:                                     ; preds = %95, %79
  %97 = phi i64 [ %92, %95 ], [ %89, %79 ], !dbg !4569
  %98 = bitcast i8** %71 to i64*, !dbg !4569
  store i64 %97, i64* %98, align 8, !dbg !4569, !tbaa !4550
  %99 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 1, !dbg !4576
  %100 = bitcast i8*** %99 to i8**, !dbg !4577
  store i8* %72, i8** %100, align 8, !dbg !4577, !tbaa !1306
  %101 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 2, !dbg !4578
  %102 = load i8*, i8** %101, align 8, !dbg !4578, !tbaa !4550
  call void @llvm.dbg.value(metadata i8* %102, metadata !4541, metadata !DIExpression()), !dbg !4578
  %103 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 3, !dbg !4579
  %104 = load i8*, i8** %103, align 8, !dbg !4579, !tbaa !4549
  %105 = icmp eq i8* %104, %102, !dbg !4579
  %106 = ptrtoint i8* %104 to i64, !dbg !4578
  br i1 %105, label %107, label %111, !dbg !4578

; <label>:107:                                    ; preds = %96
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4539, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !4578
  %108 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 10, !dbg !4579
  %109 = load i8, i8* %108, align 8, !dbg !4579
  %110 = or i8 %109, 2, !dbg !4579
  store i8 %110, i8* %108, align 8, !dbg !4579
  br label %111, !dbg !4579

; <label>:111:                                    ; preds = %107, %96
  %112 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 6, !dbg !4578
  %113 = load i64, i64* %112, align 8, !dbg !4578, !tbaa !4572
  %114 = add i64 %113, %106, !dbg !4578
  %115 = xor i64 %113, -1, !dbg !4578
  %116 = and i64 %114, %115, !dbg !4578
  %117 = getelementptr inbounds i8, i8* null, i64 %116, !dbg !4578
  store i8* %117, i8** %103, align 8, !dbg !4578, !tbaa !4549
  %118 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 1, !dbg !4581
  %119 = bitcast %struct._obstack_chunk** %118 to i64*, !dbg !4581
  %120 = load i64, i64* %119, align 8, !dbg !4581, !tbaa !4575
  %121 = ptrtoint i8* %117 to i64, !dbg !4581
  %122 = sub i64 %121, %120, !dbg !4581
  %123 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 4, !dbg !4581
  %124 = load i8*, i8** %123, align 8, !dbg !4581, !tbaa !4555
  %125 = ptrtoint i8* %124 to i64, !dbg !4581
  %126 = sub i64 %125, %120, !dbg !4581
  %127 = icmp ugt i64 %122, %126, !dbg !4581
  br i1 %127, label %128, label %129, !dbg !4578

; <label>:128:                                    ; preds = %111
  store i8* %124, i8** %103, align 8, !dbg !4581, !tbaa !4549
  br label %129, !dbg !4581

; <label>:129:                                    ; preds = %128, %111
  %130 = phi i64 [ %125, %128 ], [ %121, %111 ], !dbg !4578
  %131 = bitcast i8** %101 to i64*, !dbg !4578
  store i64 %130, i64* %131, align 8, !dbg !4578, !tbaa !4550
  %132 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 2, !dbg !4583
  %133 = bitcast i64** %132 to i8**, !dbg !4584
  store i8* %102, i8** %133, align 8, !dbg !4584, !tbaa !4585
  %134 = tail call i32 @ferror(%struct._IO_FILE* %0) #13, !dbg !4586
  %135 = icmp eq i32 %134, 0, !dbg !4587
  ret i1 %135, !dbg !4588
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @save_token(%struct.Tokens*) unnamed_addr #7 !dbg !4589 {
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4591, metadata !DIExpression()), !dbg !4613
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 3, !dbg !4614
  %3 = bitcast i8** %2 to i64*, !dbg !4614
  %4 = load i64, i64* %3, align 8, !dbg !4614, !tbaa !4549
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 2, !dbg !4614
  %6 = bitcast i8** %5 to i64*, !dbg !4614
  %7 = load i64, i64* %6, align 8, !dbg !4614, !tbaa !4550
  %8 = xor i64 %7, -1, !dbg !4615
  %9 = add i64 %4, %8, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %9, metadata !4592, metadata !DIExpression()), !dbg !4616
  %10 = inttoptr i64 %7 to i8*, !dbg !4617
  call void @llvm.dbg.value(metadata i8* %10, metadata !4598, metadata !DIExpression()), !dbg !4617
  %11 = inttoptr i64 %4 to i8*, !dbg !4618
  %12 = icmp eq i8* %11, %10, !dbg !4618
  br i1 %12, label %13, label %17, !dbg !4617

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4596, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4617
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4593, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4614
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 10, !dbg !4618
  %15 = load i8, i8* %14, align 8, !dbg !4618
  %16 = or i8 %15, 2, !dbg !4618
  store i8 %16, i8* %14, align 8, !dbg !4618
  br label %17, !dbg !4618

; <label>:17:                                     ; preds = %13, %1
  %18 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 6, !dbg !4617
  %19 = load i64, i64* %18, align 8, !dbg !4617, !tbaa !4572
  %20 = add i64 %19, %4, !dbg !4617
  %21 = xor i64 %19, -1, !dbg !4617
  %22 = and i64 %20, %21, !dbg !4617
  %23 = getelementptr inbounds i8, i8* null, i64 %22, !dbg !4617
  store i8* %23, i8** %2, align 8, !dbg !4617, !tbaa !4549
  %24 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 1, !dbg !4620
  %25 = bitcast %struct._obstack_chunk** %24 to i64*, !dbg !4620
  %26 = load i64, i64* %25, align 8, !dbg !4620, !tbaa !4575
  %27 = ptrtoint i8* %23 to i64, !dbg !4620
  %28 = sub i64 %27, %26, !dbg !4620
  %29 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 4, !dbg !4620
  %30 = load i8*, i8** %29, align 8, !dbg !4620, !tbaa !4555
  %31 = ptrtoint i8* %30 to i64, !dbg !4620
  %32 = sub i64 %31, %26, !dbg !4620
  %33 = icmp ugt i64 %28, %32, !dbg !4620
  br i1 %33, label %34, label %35, !dbg !4617

; <label>:34:                                     ; preds = %17
  store i8* %30, i8** %2, align 8, !dbg !4620, !tbaa !4549
  br label %35, !dbg !4620

; <label>:35:                                     ; preds = %34, %17
  %36 = phi i64 [ %31, %34 ], [ %27, %17 ], !dbg !4617
  store i64 %36, i64* %6, align 8, !dbg !4617, !tbaa !4550
  call void @llvm.dbg.value(metadata i8* %10, metadata !4595, metadata !DIExpression()), !dbg !4622
  %37 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 4, !dbg !4623
  %38 = bitcast i8** %37 to i64*, !dbg !4623
  %39 = load i64, i64* %38, align 8, !dbg !4623, !tbaa !4555
  %40 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 3, !dbg !4623
  %41 = bitcast i8** %40 to i64*, !dbg !4623
  %42 = load i64, i64* %41, align 8, !dbg !4623, !tbaa !4549
  %43 = sub i64 %39, %42, !dbg !4623
  %44 = icmp ult i64 %43, 8, !dbg !4624
  br i1 %44, label %47, label %45, !dbg !4625

; <label>:45:                                     ; preds = %35
  %46 = inttoptr i64 %42 to i8**, !dbg !4625
  br label %51, !dbg !4625

; <label>:47:                                     ; preds = %35
  %48 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4625
  call void @llvm.dbg.value(metadata %struct.obstack* %48, metadata !4601, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata %struct.obstack* %48, metadata !4599, metadata !DIExpression()), !dbg !4625
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %48, i64 8) #13, !dbg !4624
  %49 = bitcast i8** %40 to i8***
  %50 = load i8**, i8*** %49, align 8, !dbg !4626, !tbaa !4549
  br label %51, !dbg !4624

; <label>:51:                                     ; preds = %45, %47
  %52 = phi i8** [ %50, %47 ], [ %46, %45 ], !dbg !4626
  call void @llvm.dbg.value(metadata %struct.obstack* %48, metadata !4604, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata i8** %40, metadata !4606, metadata !DIExpression(DW_OP_deref)), !dbg !4626
  store i8* %10, i8** %52, align 8, !dbg !4626, !tbaa !1147
  %53 = load i8*, i8** %40, align 8, !dbg !4626, !tbaa !4549
  %54 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !4626
  store i8* %54, i8** %40, align 8, !dbg !4626, !tbaa !4549
  call void @llvm.dbg.value(metadata i64 8, metadata !4609, metadata !DIExpression()), !dbg !4627
  %55 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 4, !dbg !4628
  %56 = bitcast i8** %55 to i64*, !dbg !4628
  %57 = load i64, i64* %56, align 8, !dbg !4628, !tbaa !4555
  %58 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 3, !dbg !4628
  %59 = bitcast i8** %58 to i64*, !dbg !4628
  %60 = load i64, i64* %59, align 8, !dbg !4628, !tbaa !4549
  %61 = sub i64 %57, %60, !dbg !4628
  %62 = icmp ult i64 %61, 8, !dbg !4629
  br i1 %62, label %65, label %63, !dbg !4627

; <label>:63:                                     ; preds = %51
  %64 = inttoptr i64 %60 to i64*, !dbg !4627
  br label %69, !dbg !4627

; <label>:65:                                     ; preds = %51
  %66 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4627
  call void @llvm.dbg.value(metadata %struct.obstack* %66, metadata !4610, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata %struct.obstack* %66, metadata !4607, metadata !DIExpression()), !dbg !4627
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %66, i64 8) #13, !dbg !4629
  %67 = bitcast i8** %58 to i64**
  %68 = load i64*, i64** %67, align 8, !dbg !4627, !tbaa !4549
  br label %69, !dbg !4629

; <label>:69:                                     ; preds = %63, %65
  %70 = phi i64* [ %68, %65 ], [ %64, %63 ], !dbg !4627
  store i64 %9, i64* %70, align 1, !dbg !4627
  %71 = load i8*, i8** %58, align 8, !dbg !4627, !tbaa !4549
  %72 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !4627
  store i8* %72, i8** %58, align 8, !dbg !4627, !tbaa !4549
  %73 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 0, !dbg !4630
  %74 = load i64, i64* %73, align 8, !dbg !4631, !tbaa !1311
  %75 = add i64 %74, 1, !dbg !4631
  store i64 %75, i64* %73, align 8, !dbg !4631, !tbaa !1311
  ret void, !dbg !4632
}

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #7 !dbg !4633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4638, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8* %1, metadata !4639, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i64 %2, metadata !4640, metadata !DIExpression()), !dbg !4649
  br label %4, !dbg !4650

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !4651

; <label>:6:                                      ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !4640, metadata !DIExpression()), !dbg !4649
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #13, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %7, metadata !4641, metadata !DIExpression()), !dbg !4652
  %8 = icmp sgt i64 %7, -1, !dbg !4653
  br i1 %8, label %17, label %9, !dbg !4655

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !4656
  %11 = load i32, i32* %10, align 4, !dbg !4656, !tbaa !1243
  %12 = icmp eq i32 %11, 4, !dbg !4656
  br i1 %12, label %6, label %13, !dbg !4658, !llvm.loop !4659

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !4662
  %15 = icmp ugt i64 %5, 2146435072, !dbg !4664
  %16 = and i1 %15, %14, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %5, metadata !4640, metadata !DIExpression()), !dbg !4649
  br i1 %16, label %4, label %17

; <label>:17:                                     ; preds = %13, %6
  ret i64 %7, !dbg !4666
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !4667 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4706, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i8* %1, metadata !4707, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i8* %2, metadata !4708, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %3, metadata !4709, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i8** %4, metadata !4710, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata i64 %5, metadata !4711, metadata !DIExpression()), !dbg !4717
  %7 = icmp eq i8* %1, null, !dbg !4718
  br i1 %7, label %10, label %8, !dbg !4720

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13, !dbg !4721
  br label %12, !dbg !4721

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.121, i64 0, i64 0), i8* %2, i8* %3) #13, !dbg !4722
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.122, i64 0, i64 0), i32 5) #13, !dbg !4723
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #13, !dbg !4723
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.123, i64 0, i64 0), i32 5) #13, !dbg !4724
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4724
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
  ], !dbg !4725

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !4726
  unreachable, !dbg !4726

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.124, i64 0, i64 0), i32 5) #13, !dbg !4728
  %20 = load i8*, i8** %4, align 8, !dbg !4728, !tbaa !1147
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #13, !dbg !4728
  br label %146, !dbg !4729

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.125, i64 0, i64 0), i32 5) #13, !dbg !4730
  %24 = load i8*, i8** %4, align 8, !dbg !4730, !tbaa !1147
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4730
  %26 = load i8*, i8** %25, align 8, !dbg !4730, !tbaa !1147
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #13, !dbg !4730
  br label %146, !dbg !4731

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.126, i64 0, i64 0), i32 5) #13, !dbg !4732
  %30 = load i8*, i8** %4, align 8, !dbg !4732, !tbaa !1147
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4732
  %32 = load i8*, i8** %31, align 8, !dbg !4732, !tbaa !1147
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4732
  %34 = load i8*, i8** %33, align 8, !dbg !4732, !tbaa !1147
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #13, !dbg !4732
  br label %146, !dbg !4733

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.127, i64 0, i64 0), i32 5) #13, !dbg !4734
  %38 = load i8*, i8** %4, align 8, !dbg !4734, !tbaa !1147
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4734
  %40 = load i8*, i8** %39, align 8, !dbg !4734, !tbaa !1147
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4734
  %42 = load i8*, i8** %41, align 8, !dbg !4734, !tbaa !1147
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4734
  %44 = load i8*, i8** %43, align 8, !dbg !4734, !tbaa !1147
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #13, !dbg !4734
  br label %146, !dbg !4735

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.128, i64 0, i64 0), i32 5) #13, !dbg !4736
  %48 = load i8*, i8** %4, align 8, !dbg !4736, !tbaa !1147
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4736
  %50 = load i8*, i8** %49, align 8, !dbg !4736, !tbaa !1147
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4736
  %52 = load i8*, i8** %51, align 8, !dbg !4736, !tbaa !1147
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4736
  %54 = load i8*, i8** %53, align 8, !dbg !4736, !tbaa !1147
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4736
  %56 = load i8*, i8** %55, align 8, !dbg !4736, !tbaa !1147
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #13, !dbg !4736
  br label %146, !dbg !4737

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.129, i64 0, i64 0), i32 5) #13, !dbg !4738
  %60 = load i8*, i8** %4, align 8, !dbg !4738, !tbaa !1147
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4738
  %62 = load i8*, i8** %61, align 8, !dbg !4738, !tbaa !1147
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4738
  %64 = load i8*, i8** %63, align 8, !dbg !4738, !tbaa !1147
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4738
  %66 = load i8*, i8** %65, align 8, !dbg !4738, !tbaa !1147
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4738
  %68 = load i8*, i8** %67, align 8, !dbg !4738, !tbaa !1147
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4738
  %70 = load i8*, i8** %69, align 8, !dbg !4738, !tbaa !1147
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #13, !dbg !4738
  br label %146, !dbg !4739

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.130, i64 0, i64 0), i32 5) #13, !dbg !4740
  %74 = load i8*, i8** %4, align 8, !dbg !4740, !tbaa !1147
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4740
  %76 = load i8*, i8** %75, align 8, !dbg !4740, !tbaa !1147
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4740
  %78 = load i8*, i8** %77, align 8, !dbg !4740, !tbaa !1147
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4740
  %80 = load i8*, i8** %79, align 8, !dbg !4740, !tbaa !1147
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4740
  %82 = load i8*, i8** %81, align 8, !dbg !4740, !tbaa !1147
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4740
  %84 = load i8*, i8** %83, align 8, !dbg !4740, !tbaa !1147
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4740
  %86 = load i8*, i8** %85, align 8, !dbg !4740, !tbaa !1147
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #13, !dbg !4740
  br label %146, !dbg !4741

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.131, i64 0, i64 0), i32 5) #13, !dbg !4742
  %90 = load i8*, i8** %4, align 8, !dbg !4742, !tbaa !1147
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4742
  %92 = load i8*, i8** %91, align 8, !dbg !4742, !tbaa !1147
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4742
  %94 = load i8*, i8** %93, align 8, !dbg !4742, !tbaa !1147
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4742
  %96 = load i8*, i8** %95, align 8, !dbg !4742, !tbaa !1147
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4742
  %98 = load i8*, i8** %97, align 8, !dbg !4742, !tbaa !1147
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4742
  %100 = load i8*, i8** %99, align 8, !dbg !4742, !tbaa !1147
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4742
  %102 = load i8*, i8** %101, align 8, !dbg !4742, !tbaa !1147
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4742
  %104 = load i8*, i8** %103, align 8, !dbg !4742, !tbaa !1147
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #13, !dbg !4742
  br label %146, !dbg !4743

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.132, i64 0, i64 0), i32 5) #13, !dbg !4744
  %108 = load i8*, i8** %4, align 8, !dbg !4744, !tbaa !1147
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4744
  %110 = load i8*, i8** %109, align 8, !dbg !4744, !tbaa !1147
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4744
  %112 = load i8*, i8** %111, align 8, !dbg !4744, !tbaa !1147
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4744
  %114 = load i8*, i8** %113, align 8, !dbg !4744, !tbaa !1147
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4744
  %116 = load i8*, i8** %115, align 8, !dbg !4744, !tbaa !1147
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4744
  %118 = load i8*, i8** %117, align 8, !dbg !4744, !tbaa !1147
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4744
  %120 = load i8*, i8** %119, align 8, !dbg !4744, !tbaa !1147
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4744
  %122 = load i8*, i8** %121, align 8, !dbg !4744, !tbaa !1147
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4744
  %124 = load i8*, i8** %123, align 8, !dbg !4744, !tbaa !1147
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #13, !dbg !4744
  br label %146, !dbg !4745

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.133, i64 0, i64 0), i32 5) #13, !dbg !4746
  %128 = load i8*, i8** %4, align 8, !dbg !4746, !tbaa !1147
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4746
  %130 = load i8*, i8** %129, align 8, !dbg !4746, !tbaa !1147
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4746
  %132 = load i8*, i8** %131, align 8, !dbg !4746, !tbaa !1147
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4746
  %134 = load i8*, i8** %133, align 8, !dbg !4746, !tbaa !1147
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4746
  %136 = load i8*, i8** %135, align 8, !dbg !4746, !tbaa !1147
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4746
  %138 = load i8*, i8** %137, align 8, !dbg !4746, !tbaa !1147
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4746
  %140 = load i8*, i8** %139, align 8, !dbg !4746, !tbaa !1147
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4746
  %142 = load i8*, i8** %141, align 8, !dbg !4746, !tbaa !1147
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4746
  %144 = load i8*, i8** %143, align 8, !dbg !4746, !tbaa !1147
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #13, !dbg !4746
  br label %146, !dbg !4747

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4749 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4753, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i8* %1, metadata !4754, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i8* %2, metadata !4755, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i8* %3, metadata !4756, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i8** %4, metadata !4757, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i64 0, metadata !4758, metadata !DIExpression()), !dbg !4764
  br label %6, !dbg !4765

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4767
  call void @llvm.dbg.value(metadata i64 %7, metadata !4758, metadata !DIExpression()), !dbg !4764
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4769
  %9 = load i8*, i8** %8, align 8, !dbg !4769, !tbaa !1147
  %10 = icmp eq i8* %9, null, !dbg !4770
  %11 = add i64 %7, 1, !dbg !4771
  call void @llvm.dbg.value(metadata i64 %11, metadata !4758, metadata !DIExpression()), !dbg !4764
  br i1 %10, label %12, label %6, !dbg !4770, !llvm.loop !4772

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4758, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %7, metadata !4758, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %7, metadata !4758, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %7, metadata !4758, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %7, metadata !4758, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %7, metadata !4758, metadata !DIExpression()), !dbg !4764
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4774
  ret void, !dbg !4775
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4776 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4787, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i8* %1, metadata !4788, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i8* %2, metadata !4789, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i8* %3, metadata !4790, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4791, metadata !DIExpression()), !dbg !4799
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4800
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4800
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4793, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 0, metadata !4792, metadata !DIExpression()), !dbg !4802
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4792, metadata !DIExpression()), !dbg !4802
  %11 = load i32, i32* %8, align 8, !dbg !4803
  %12 = icmp ult i32 %11, 41, !dbg !4803
  br i1 %12, label %13, label %18, !dbg !4803

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4803
  %15 = sext i32 %11 to i64, !dbg !4803
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4803
  %17 = add i32 %11, 8, !dbg !4803
  store i32 %17, i32* %8, align 8, !dbg !4803
  br label %21, !dbg !4803

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4803
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4803
  store i8* %20, i8** %10, align 8, !dbg !4803
  br label %21, !dbg !4803

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4803
  %25 = load i8*, i8** %24, align 8, !dbg !4803
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4806
  store i8* %25, i8** %26, align 16, !dbg !4807, !tbaa !1147
  %27 = icmp eq i8* %25, null, !dbg !4808
  br i1 %27, label %30, label %28, !dbg !4809

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 1, metadata !4792, metadata !DIExpression()), !dbg !4802
  %29 = icmp ult i32 %22, 41, !dbg !4803
  br i1 %29, label %35, label %32, !dbg !4803

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4810
  call void @llvm.dbg.value(metadata i64 %31, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %31, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4811
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4812
  ret void, !dbg !4812

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4803
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4803
  store i8* %34, i8** %10, align 8, !dbg !4803
  br label %40, !dbg !4803

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4803
  %37 = sext i32 %22 to i64, !dbg !4803
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4803
  %39 = add i32 %22, 8, !dbg !4803
  store i32 %39, i32* %8, align 8, !dbg !4803
  br label %40, !dbg !4803

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4803
  %44 = load i8*, i8** %43, align 8, !dbg !4803
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4806
  store i8* %44, i8** %45, align 8, !dbg !4807, !tbaa !1147
  %46 = icmp eq i8* %44, null, !dbg !4808
  br i1 %46, label %30, label %47, !dbg !4809

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 2, metadata !4792, metadata !DIExpression()), !dbg !4802
  %48 = icmp ult i32 %41, 41, !dbg !4803
  br i1 %48, label %52, label %49, !dbg !4803

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4803
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4803
  store i8* %51, i8** %10, align 8, !dbg !4803
  br label %57, !dbg !4803

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4803
  %54 = sext i32 %41 to i64, !dbg !4803
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4803
  %56 = add i32 %41, 8, !dbg !4803
  store i32 %56, i32* %8, align 8, !dbg !4803
  br label %57, !dbg !4803

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4803
  %61 = load i8*, i8** %60, align 8, !dbg !4803
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4806
  store i8* %61, i8** %62, align 16, !dbg !4807, !tbaa !1147
  %63 = icmp eq i8* %61, null, !dbg !4808
  br i1 %63, label %30, label %64, !dbg !4809

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 3, metadata !4792, metadata !DIExpression()), !dbg !4802
  %65 = icmp ult i32 %58, 41, !dbg !4803
  br i1 %65, label %69, label %66, !dbg !4803

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4803
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4803
  store i8* %68, i8** %10, align 8, !dbg !4803
  br label %74, !dbg !4803

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4803
  %71 = sext i32 %58 to i64, !dbg !4803
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4803
  %73 = add i32 %58, 8, !dbg !4803
  store i32 %73, i32* %8, align 8, !dbg !4803
  br label %74, !dbg !4803

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4803
  %78 = load i8*, i8** %77, align 8, !dbg !4803
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4806
  store i8* %78, i8** %79, align 8, !dbg !4807, !tbaa !1147
  %80 = icmp eq i8* %78, null, !dbg !4808
  br i1 %80, label %30, label %81, !dbg !4809

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 4, metadata !4792, metadata !DIExpression()), !dbg !4802
  %82 = icmp ult i32 %75, 41, !dbg !4803
  br i1 %82, label %86, label %83, !dbg !4803

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4803
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4803
  store i8* %85, i8** %10, align 8, !dbg !4803
  br label %91, !dbg !4803

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4803
  %88 = sext i32 %75 to i64, !dbg !4803
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4803
  %90 = add i32 %75, 8, !dbg !4803
  store i32 %90, i32* %8, align 8, !dbg !4803
  br label %91, !dbg !4803

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4803
  %95 = load i8*, i8** %94, align 8, !dbg !4803
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4806
  store i8* %95, i8** %96, align 16, !dbg !4807, !tbaa !1147
  %97 = icmp eq i8* %95, null, !dbg !4808
  br i1 %97, label %30, label %98, !dbg !4809

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 5, metadata !4792, metadata !DIExpression()), !dbg !4802
  %99 = icmp ult i32 %92, 41, !dbg !4803
  br i1 %99, label %103, label %100, !dbg !4803

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4803
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4803
  store i8* %102, i8** %10, align 8, !dbg !4803
  br label %108, !dbg !4803

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4803
  %105 = sext i32 %92 to i64, !dbg !4803
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4803
  %107 = add i32 %92, 8, !dbg !4803
  store i32 %107, i32* %8, align 8, !dbg !4803
  br label %108, !dbg !4803

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4803
  %111 = load i8*, i8** %110, align 8, !dbg !4803
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4806
  store i8* %111, i8** %112, align 8, !dbg !4807, !tbaa !1147
  %113 = icmp eq i8* %111, null, !dbg !4808
  br i1 %113, label %30, label %114, !dbg !4809

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 6, metadata !4792, metadata !DIExpression()), !dbg !4802
  %115 = load i8*, i8** %10, align 8, !dbg !4803
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4803
  store i8* %116, i8** %10, align 8, !dbg !4803
  %117 = bitcast i8* %115 to i8**, !dbg !4803
  %118 = load i8*, i8** %117, align 8, !dbg !4803
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4806
  store i8* %118, i8** %119, align 16, !dbg !4807, !tbaa !1147
  %120 = icmp eq i8* %118, null, !dbg !4808
  br i1 %120, label %30, label %121, !dbg !4809

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 7, metadata !4792, metadata !DIExpression()), !dbg !4802
  %122 = load i8*, i8** %10, align 8, !dbg !4803
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4803
  store i8* %123, i8** %10, align 8, !dbg !4803
  %124 = bitcast i8* %122 to i8**, !dbg !4803
  %125 = load i8*, i8** %124, align 8, !dbg !4803
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4806
  store i8* %125, i8** %126, align 8, !dbg !4807, !tbaa !1147
  %127 = icmp eq i8* %125, null, !dbg !4808
  br i1 %127, label %30, label %128, !dbg !4809

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 8, metadata !4792, metadata !DIExpression()), !dbg !4802
  %129 = load i8*, i8** %10, align 8, !dbg !4803
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4803
  store i8* %130, i8** %10, align 8, !dbg !4803
  %131 = bitcast i8* %129 to i8**, !dbg !4803
  %132 = load i8*, i8** %131, align 8, !dbg !4803
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4806
  store i8* %132, i8** %133, align 16, !dbg !4807, !tbaa !1147
  %134 = icmp eq i8* %132, null, !dbg !4808
  br i1 %134, label %30, label %135, !dbg !4809

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 9, metadata !4792, metadata !DIExpression()), !dbg !4802
  %136 = load i8*, i8** %10, align 8, !dbg !4803
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4803
  store i8* %137, i8** %10, align 8, !dbg !4803
  %138 = bitcast i8* %136 to i8**, !dbg !4803
  %139 = load i8*, i8** %138, align 8, !dbg !4803
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4806
  store i8* %139, i8** %140, align 8, !dbg !4807, !tbaa !1147
  %141 = icmp eq i8* %139, null, !dbg !4808
  %142 = select i1 %141, i64 9, i64 10, !dbg !4809
  br label %30, !dbg !4809
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4813 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4817, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i8* %1, metadata !4818, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i8* %2, metadata !4819, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i8* %3, metadata !4820, metadata !DIExpression()), !dbg !4830
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4831
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4831
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4821, metadata !DIExpression()), !dbg !4832
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4833
  call void @llvm.va_start(i8* nonnull %6), !dbg !4833
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4834
  call void @llvm.va_end(i8* nonnull %6), !dbg !4835
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4836
  ret void, !dbg !4836
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4837 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.136, i64 0, i64 0), i32 5) #13, !dbg !4838
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.137, i64 0, i64 0)) #13, !dbg !4838
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.138, i64 0, i64 0), i32 5) #13, !dbg !4839
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.139, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.140, i64 0, i64 0)) #13, !dbg !4839
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.141, i64 0, i64 0), i32 5) #13, !dbg !4840
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4840, !tbaa !1147
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4840
  ret void, !dbg !4841
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #11 !dbg !4842 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4844, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %1, metadata !4845, metadata !DIExpression()), !dbg !4847
  %3 = udiv i64 9223372036854775807, %1, !dbg !4848
  %4 = icmp ult i64 %3, %0, !dbg !4848
  br i1 %4, label %5, label %6, !dbg !4850

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4851
  unreachable, !dbg !4851

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4852
  call void @llvm.dbg.value(metadata i64 %7, metadata !4853, metadata !DIExpression()) #13, !dbg !4858
  %8 = tail call noalias i8* @malloc(i64 %7) #13, !dbg !4860
  call void @llvm.dbg.value(metadata i8* %8, metadata !4857, metadata !DIExpression()) #13, !dbg !4861
  %9 = icmp eq i8* %8, null, !dbg !4862
  %10 = icmp ne i64 %7, 0, !dbg !4864
  %11 = and i1 %10, %9, !dbg !4865
  br i1 %11, label %12, label %13, !dbg !4865

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !4866
  unreachable, !dbg !4866

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4867
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4854 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4853, metadata !DIExpression()), !dbg !4868
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4869
  call void @llvm.dbg.value(metadata i8* %2, metadata !4857, metadata !DIExpression()), !dbg !4870
  %3 = icmp eq i8* %2, null, !dbg !4871
  %4 = icmp ne i64 %0, 0, !dbg !4872
  %5 = and i1 %4, %3, !dbg !4873
  br i1 %5, label %6, label %7, !dbg !4873

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4874
  unreachable, !dbg !4874

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4875
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #11 !dbg !4876 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4880, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %1, metadata !4881, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i64 %2, metadata !4882, metadata !DIExpression()), !dbg !4885
  %4 = udiv i64 9223372036854775807, %2, !dbg !4886
  %5 = icmp ult i64 %4, %1, !dbg !4886
  br i1 %5, label %6, label %7, !dbg !4888

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !4889
  unreachable, !dbg !4889

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4890
  call void @llvm.dbg.value(metadata i8* %0, metadata !4891, metadata !DIExpression()) #13, !dbg !4895
  call void @llvm.dbg.value(metadata i64 %8, metadata !4894, metadata !DIExpression()) #13, !dbg !4897
  %9 = icmp eq i64 %8, 0, !dbg !4898
  %10 = icmp ne i8* %0, null, !dbg !4900
  %11 = and i1 %10, %9, !dbg !4901
  br i1 %11, label %12, label %13, !dbg !4901

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #13, !dbg !4902
  br label %19, !dbg !4904

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13, !dbg !4905
  call void @llvm.dbg.value(metadata i8* %14, metadata !4891, metadata !DIExpression()) #13, !dbg !4895
  %15 = icmp eq i8* %14, null, !dbg !4906
  %16 = icmp ne i64 %8, 0, !dbg !4908
  %17 = and i1 %16, %15, !dbg !4909
  br i1 %17, label %18, label %19, !dbg !4909

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4910
  unreachable, !dbg !4910

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4911
  ret i8* %20, !dbg !4912
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4891, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %1, metadata !4894, metadata !DIExpression()), !dbg !4914
  %3 = icmp eq i64 %1, 0, !dbg !4915
  %4 = icmp ne i8* %0, null, !dbg !4916
  %5 = and i1 %4, %3, !dbg !4917
  br i1 %5, label %6, label %7, !dbg !4917

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #13, !dbg !4918
  br label %13, !dbg !4919

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13, !dbg !4920
  call void @llvm.dbg.value(metadata i8* %8, metadata !4891, metadata !DIExpression()), !dbg !4913
  %9 = icmp eq i8* %8, null, !dbg !4921
  %10 = icmp ne i64 %1, 0, !dbg !4922
  %11 = and i1 %10, %9, !dbg !4923
  br i1 %11, label %12, label %13, !dbg !4923

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !4924
  unreachable, !dbg !4924

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4925
  ret i8* %14, !dbg !4926
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #11 !dbg !691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !695, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64* %1, metadata !696, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i64 %2, metadata !697, metadata !DIExpression()), !dbg !4929
  %4 = load i64, i64* %1, align 8, !dbg !4930, !tbaa !1207
  call void @llvm.dbg.value(metadata i64 %4, metadata !698, metadata !DIExpression()), !dbg !4931
  %5 = icmp eq i8* %0, null, !dbg !4932
  br i1 %5, label %6, label %20, !dbg !4934

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4935
  br i1 %7, label %8, label %13, !dbg !4938

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4939
  call void @llvm.dbg.value(metadata i64 %9, metadata !698, metadata !DIExpression()), !dbg !4931
  %10 = icmp ugt i64 %2, 128, !dbg !4941
  %11 = zext i1 %10 to i64, !dbg !4941
  %12 = add nuw nsw i64 %9, %11, !dbg !4942
  call void @llvm.dbg.value(metadata i64 %12, metadata !698, metadata !DIExpression()), !dbg !4931
  br label %13, !dbg !4943

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4944
  call void @llvm.dbg.value(metadata i64 %14, metadata !698, metadata !DIExpression()), !dbg !4931
  %15 = udiv i64 9223372036854775807, %2, !dbg !4945
  %16 = icmp ult i64 %15, %14, !dbg !4945
  br i1 %16, label %19, label %17, !dbg !4947

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !698, metadata !DIExpression()), !dbg !4931
  store i64 %14, i64* %1, align 8, !dbg !4948, !tbaa !1207
  %18 = mul i64 %14, %2, !dbg !4949
  call void @llvm.dbg.value(metadata i8* %0, metadata !4891, metadata !DIExpression()) #13, !dbg !4950
  call void @llvm.dbg.value(metadata i64 %28, metadata !4894, metadata !DIExpression()) #13, !dbg !4952
  br label %31, !dbg !4953

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4954
  unreachable, !dbg !4954

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4955
  %22 = icmp ugt i64 %21, %4, !dbg !4958
  br i1 %22, label %24, label %23, !dbg !4959

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !4960
  unreachable, !dbg !4960

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4961
  %26 = add i64 %4, 1, !dbg !4962
  %27 = add i64 %26, %25, !dbg !4963
  call void @llvm.dbg.value(metadata i64 %27, metadata !698, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.value(metadata i64 %27, metadata !698, metadata !DIExpression()), !dbg !4931
  store i64 %27, i64* %1, align 8, !dbg !4948, !tbaa !1207
  %28 = mul i64 %27, %2, !dbg !4949
  call void @llvm.dbg.value(metadata i8* %0, metadata !4891, metadata !DIExpression()) #13, !dbg !4950
  call void @llvm.dbg.value(metadata i64 %28, metadata !4894, metadata !DIExpression()) #13, !dbg !4952
  %29 = icmp eq i64 %28, 0, !dbg !4964
  br i1 %29, label %30, label %31, !dbg !4953

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #13, !dbg !4965
  br label %38, !dbg !4966

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #13, !dbg !4967
  call void @llvm.dbg.value(metadata i8* %33, metadata !4891, metadata !DIExpression()) #13, !dbg !4950
  %34 = icmp eq i8* %33, null, !dbg !4968
  %35 = icmp ne i64 %32, 0, !dbg !4969
  %36 = and i1 %35, %34, !dbg !4970
  br i1 %36, label %37, label %38, !dbg !4970

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !4971
  unreachable, !dbg !4971

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4972
  ret i8* %39, !dbg !4973
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #11 !dbg !4974 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4976, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 %0, metadata !4853, metadata !DIExpression()) #13, !dbg !4978
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4980
  call void @llvm.dbg.value(metadata i8* %2, metadata !4857, metadata !DIExpression()) #13, !dbg !4981
  %3 = icmp eq i8* %2, null, !dbg !4982
  %4 = icmp ne i64 %0, 0, !dbg !4983
  %5 = and i1 %4, %3, !dbg !4984
  br i1 %5, label %6, label %7, !dbg !4984

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4985
  unreachable, !dbg !4985

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4991, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata i64* %1, metadata !4992, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.value(metadata i8* %0, metadata !695, metadata !DIExpression()) #13, !dbg !4995
  call void @llvm.dbg.value(metadata i64* %1, metadata !696, metadata !DIExpression()) #13, !dbg !4997
  call void @llvm.dbg.value(metadata i64 1, metadata !697, metadata !DIExpression()) #13, !dbg !4998
  %3 = load i64, i64* %1, align 8, !dbg !4999, !tbaa !1207
  call void @llvm.dbg.value(metadata i64 %3, metadata !698, metadata !DIExpression()) #13, !dbg !5000
  %4 = icmp eq i8* %0, null, !dbg !5001
  br i1 %4, label %5, label %12, !dbg !5002

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5003
  br i1 %6, label %9, label %7, !dbg !5004

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !698, metadata !DIExpression()) #13, !dbg !5000
  %8 = icmp slt i64 %3, 0, !dbg !5005
  br i1 %8, label %11, label %9, !dbg !5006

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !698, metadata !DIExpression()) #13, !dbg !5000
  store i64 %10, i64* %1, align 8, !dbg !5007, !tbaa !1207
  call void @llvm.dbg.value(metadata i8* %0, metadata !4891, metadata !DIExpression()) #13, !dbg !5008
  call void @llvm.dbg.value(metadata i64 %18, metadata !4894, metadata !DIExpression()) #13, !dbg !5010
  br label %21, !dbg !5011

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !5012
  unreachable, !dbg !5012

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !5013
  br i1 %13, label %15, label %14, !dbg !5014

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !5015
  unreachable, !dbg !5015

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !5016
  %17 = add i64 %3, 1, !dbg !5017
  %18 = add i64 %17, %16, !dbg !5018
  call void @llvm.dbg.value(metadata i64 %18, metadata !698, metadata !DIExpression()) #13, !dbg !5000
  call void @llvm.dbg.value(metadata i64 %18, metadata !698, metadata !DIExpression()) #13, !dbg !5000
  store i64 %18, i64* %1, align 8, !dbg !5007, !tbaa !1207
  call void @llvm.dbg.value(metadata i8* %0, metadata !4891, metadata !DIExpression()) #13, !dbg !5008
  call void @llvm.dbg.value(metadata i64 %18, metadata !4894, metadata !DIExpression()) #13, !dbg !5010
  %19 = icmp eq i64 %18, 0, !dbg !5019
  br i1 %19, label %20, label %21, !dbg !5011

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #13, !dbg !5020
  br label %28, !dbg !5021

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #13, !dbg !5022
  call void @llvm.dbg.value(metadata i8* %23, metadata !4891, metadata !DIExpression()) #13, !dbg !5008
  %24 = icmp eq i8* %23, null, !dbg !5023
  %25 = icmp ne i64 %22, 0, !dbg !5024
  %26 = and i1 %25, %24, !dbg !5025
  br i1 %26, label %27, label %28, !dbg !5025

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !5026
  unreachable, !dbg !5026

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !5027
  ret i8* %29, !dbg !5028
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !5029 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5031, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i64 %0, metadata !4853, metadata !DIExpression()) #13, !dbg !5033
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !5035
  call void @llvm.dbg.value(metadata i8* %2, metadata !4857, metadata !DIExpression()) #13, !dbg !5036
  %3 = icmp eq i8* %2, null, !dbg !5037
  %4 = icmp ne i64 %0, 0, !dbg !5038
  %5 = and i1 %4, %3, !dbg !5039
  br i1 %5, label %6, label %7, !dbg !5039

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5040
  unreachable, !dbg !5040

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !5041
  ret i8* %2, !dbg !5042
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !5043 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5045, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i64 %1, metadata !5046, metadata !DIExpression()), !dbg !5049
  %3 = udiv i64 9223372036854775807, %1, !dbg !5050
  %4 = icmp ult i64 %3, %0, !dbg !5050
  br i1 %4, label %8, label %5, !dbg !5052

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13, !dbg !5053
  call void @llvm.dbg.value(metadata i8* %6, metadata !5047, metadata !DIExpression()), !dbg !5054
  %7 = icmp eq i8* %6, null, !dbg !5055
  br i1 %7, label %8, label %9, !dbg !5056

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !5057
  unreachable, !dbg !5057

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !5059 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5063, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %1, metadata !5064, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4853, metadata !DIExpression()) #13, !dbg !5067
  %3 = tail call noalias i8* @malloc(i64 %1) #13, !dbg !5069
  call void @llvm.dbg.value(metadata i8* %3, metadata !4857, metadata !DIExpression()) #13, !dbg !5070
  %4 = icmp eq i8* %3, null, !dbg !5071
  %5 = icmp ne i64 %1, 0, !dbg !5072
  %6 = and i1 %5, %4, !dbg !5073
  br i1 %6, label %7, label %8, !dbg !5073

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !5074
  unreachable, !dbg !5074

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !5075
  ret i8* %3, !dbg !5076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !5077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5079, metadata !DIExpression()), !dbg !5080
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !5081
  %3 = add i64 %2, 1, !dbg !5082
  call void @llvm.dbg.value(metadata i8* %0, metadata !5063, metadata !DIExpression()) #13, !dbg !5083
  call void @llvm.dbg.value(metadata i64 %3, metadata !5064, metadata !DIExpression()) #13, !dbg !5085
  call void @llvm.dbg.value(metadata i64 %3, metadata !4853, metadata !DIExpression()) #13, !dbg !5086
  %4 = tail call noalias i8* @malloc(i64 %3) #13, !dbg !5088
  call void @llvm.dbg.value(metadata i8* %4, metadata !4857, metadata !DIExpression()) #13, !dbg !5089
  %5 = icmp eq i8* %4, null, !dbg !5090
  %6 = icmp ne i64 %3, 0, !dbg !5091
  %7 = and i1 %6, %5, !dbg !5092
  br i1 %7, label %8, label %9, !dbg !5092

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5093
  unreachable, !dbg !5093

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #13, !dbg !5094
  ret i8* %4, !dbg !5095
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5096 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5098, !tbaa !1243
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.152, i64 0, i64 0), i32 5) #13, !dbg !5099
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i64 0, i64 0), i8* %2) #13, !dbg !5100
  tail call void @abort() #16, !dbg !5101
  unreachable, !dbg !5101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !5102 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5105, metadata !DIExpression()), !dbg !5111
  call void @llvm.dbg.value(metadata i64 %1, metadata !5106, metadata !DIExpression()), !dbg !5112
  %3 = icmp eq i64 %0, 0, !dbg !5113
  %4 = icmp eq i64 %1, 0, !dbg !5114
  %5 = or i1 %3, %4, !dbg !5115
  br i1 %5, label %12, label %6, !dbg !5115

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5116
  call void @llvm.dbg.value(metadata i64 %7, metadata !5108, metadata !DIExpression()), !dbg !5117
  %8 = udiv i64 %7, %1, !dbg !5118
  %9 = icmp eq i64 %8, %0, !dbg !5120
  br i1 %9, label %12, label %10, !dbg !5121

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !5122
  store i32 12, i32* %11, align 4, !dbg !5124, !tbaa !1243
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !5105, metadata !DIExpression()), !dbg !5111
  call void @llvm.dbg.value(metadata i64 %13, metadata !5106, metadata !DIExpression()), !dbg !5112
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #13, !dbg !5125
  call void @llvm.dbg.value(metadata i8* %15, metadata !5107, metadata !DIExpression()), !dbg !5126
  br label %16, !dbg !5127

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !5128
  ret i8* %17, !dbg !5129
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !5130 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5169, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.value(metadata i32 0, metadata !5170, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata i32 0, metadata !5172, metadata !DIExpression()), !dbg !5175
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5176
  call void @llvm.dbg.value(metadata i32 %2, metadata !5171, metadata !DIExpression()), !dbg !5177
  %3 = icmp slt i32 %2, 0, !dbg !5178
  br i1 %3, label %4, label %6, !dbg !5180

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5181
  br label %24, !dbg !5182

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5183
  %8 = icmp eq i32 %7, 0, !dbg !5183
  br i1 %8, label %13, label %9, !dbg !5185

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5186
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13, !dbg !5187
  %12 = icmp eq i64 %11, -1, !dbg !5188
  br i1 %12, label %16, label %13, !dbg !5189

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13, !dbg !5190
  %15 = icmp eq i32 %14, 0, !dbg !5190
  br i1 %15, label %16, label %18, !dbg !5191

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !5170, metadata !DIExpression()), !dbg !5174
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5192
  call void @llvm.dbg.value(metadata i32 %21, metadata !5172, metadata !DIExpression()), !dbg !5175
  br label %24, !dbg !5193

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !5194
  %20 = load i32, i32* %19, align 4, !dbg !5194, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %20, metadata !5170, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata i32 %20, metadata !5170, metadata !DIExpression()), !dbg !5174
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5192
  call void @llvm.dbg.value(metadata i32 %21, metadata !5172, metadata !DIExpression()), !dbg !5175
  %22 = icmp eq i32 %20, 0, !dbg !5195
  br i1 %22, label %24, label %23, !dbg !5193

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5197, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 -1, metadata !5172, metadata !DIExpression()), !dbg !5175
  br label %24, !dbg !5199

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5200
  ret i32 %25, !dbg !5201
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5202 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5241, metadata !DIExpression()), !dbg !5242
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5243
  br i1 %2, label %6, label %3, !dbg !5245

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5246
  %5 = icmp eq i32 %4, 0, !dbg !5246
  br i1 %5, label %6, label %8, !dbg !5247

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5248
  br label %17, !dbg !5249

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5250, metadata !DIExpression()) #13, !dbg !5255
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5257
  %10 = load i32, i32* %9, align 8, !dbg !5257, !tbaa !5259
  %11 = and i32 %10, 256, !dbg !5260
  %12 = icmp eq i32 %11, 0, !dbg !5260
  br i1 %12, label %15, label %13, !dbg !5261

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13, !dbg !5262
  br label %15, !dbg !5262

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5263
  br label %17, !dbg !5264

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5265
  ret i32 %18, !dbg !5266
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !5267 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5306, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata i64 %1, metadata !5307, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata i32 %2, metadata !5308, metadata !DIExpression()), !dbg !5314
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5315
  %5 = load i8*, i8** %4, align 8, !dbg !5315, !tbaa !5316
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5317
  %7 = load i8*, i8** %6, align 8, !dbg !5317, !tbaa !5318
  %8 = icmp eq i8* %5, %7, !dbg !5319
  br i1 %8, label %9, label %28, !dbg !5320

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5321
  %11 = load i8*, i8** %10, align 8, !dbg !5321, !tbaa !2105
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5322
  %13 = load i8*, i8** %12, align 8, !dbg !5322, !tbaa !5323
  %14 = icmp eq i8* %11, %13, !dbg !5324
  br i1 %14, label %15, label %28, !dbg !5325

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5326
  %17 = load i8*, i8** %16, align 8, !dbg !5326, !tbaa !5327
  %18 = icmp eq i8* %17, null, !dbg !5328
  br i1 %18, label %19, label %28, !dbg !5329

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5330
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13, !dbg !5331
  call void @llvm.dbg.value(metadata i64 %21, metadata !5309, metadata !DIExpression()), !dbg !5332
  %22 = icmp eq i64 %21, -1, !dbg !5333
  br i1 %22, label %30, label %23, !dbg !5335

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5336
  %25 = load i32, i32* %24, align 8, !dbg !5337, !tbaa !5259
  %26 = and i32 %25, -17, !dbg !5337
  store i32 %26, i32* %24, align 8, !dbg !5337, !tbaa !5259
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5338
  store i64 %21, i64* %27, align 8, !dbg !5339, !tbaa !5340
  br label %30, !dbg !5341

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5342
  br label %30, !dbg !5343

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5344
  ret i32 %31, !dbg !5345
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !5346 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5363, metadata !DIExpression()), !dbg !5372
  call void @llvm.dbg.value(metadata i8* %1, metadata !5364, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.value(metadata i64 %2, metadata !5365, metadata !DIExpression()), !dbg !5374
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5366, metadata !DIExpression()), !dbg !5375
  %6 = bitcast i32* %5 to i8*, !dbg !5376
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5376
  %7 = icmp eq i32* %0, null, !dbg !5377
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5379
  call void @llvm.dbg.value(metadata i32* %8, metadata !5363, metadata !DIExpression()), !dbg !5372
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13, !dbg !5380
  call void @llvm.dbg.value(metadata i64 %9, metadata !5367, metadata !DIExpression()), !dbg !5381
  %10 = icmp ugt i64 %9, -3, !dbg !5382
  %11 = icmp ne i64 %2, 0, !dbg !5383
  %12 = and i1 %11, %10, !dbg !5384
  br i1 %12, label %13, label %18, !dbg !5384

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13, !dbg !5385
  br i1 %14, label %18, label %15, !dbg !5386

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5387, !tbaa !1489
  call void @llvm.dbg.value(metadata i8 %16, metadata !5369, metadata !DIExpression()), !dbg !5388
  %17 = zext i8 %16 to i32, !dbg !5389
  store i32 %17, i32* %8, align 4, !dbg !5390, !tbaa !1243
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5391
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5392
  ret i64 %19, !dbg !5392
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !5393 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5394, !tbaa !1147
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.164, i64 0, i64 0), i32 5) #13, !dbg !5394
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i64 0, i64 0), i8* %2) #13, !dbg !5394
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !5395, !tbaa !1243
  tail call void @exit(i32 %4) #16, !dbg !5396
  unreachable, !dbg !5396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin(%struct.obstack* nocapture, i64, i64, i8* (i64)*, void (i8*)*) local_unnamed_addr #7 !dbg !5397 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5435, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.value(metadata i64 %1, metadata !5436, metadata !DIExpression()), !dbg !5441
  call void @llvm.dbg.value(metadata i64 %2, metadata !5437, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.value(metadata i8* (i64)* %3, metadata !5438, metadata !DIExpression()), !dbg !5443
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !5439, metadata !DIExpression()), !dbg !5444
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !5445
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !5446, !tbaa !1489
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !5447
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !5448, !tbaa !1489
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5449
  %9 = load i8, i8* %8, align 8, !dbg !5450
  %10 = and i8 %9, -2, !dbg !5450
  store i8 %10, i8* %8, align 8, !dbg !5450
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5451, metadata !DIExpression()) #13, !dbg !5462
  call void @llvm.dbg.value(metadata i64 %1, metadata !5456, metadata !DIExpression()) #13, !dbg !5464
  call void @llvm.dbg.value(metadata i64 %2, metadata !5457, metadata !DIExpression()) #13, !dbg !5465
  %11 = icmp eq i64 %2, 0, !dbg !5466
  %12 = select i1 %11, i64 16, i64 %2, !dbg !5468
  call void @llvm.dbg.value(metadata i64 %12, metadata !5457, metadata !DIExpression()) #13, !dbg !5465
  %13 = icmp eq i64 %1, 0, !dbg !5469
  call void @llvm.dbg.value(metadata i64 4064, metadata !5456, metadata !DIExpression()) #13, !dbg !5464
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !5470
  call void @llvm.dbg.value(metadata i64 %14, metadata !5456, metadata !DIExpression()) #13, !dbg !5464
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5471
  store i64 %14, i64* %15, align 8, !dbg !5472, !tbaa !5473
  %16 = add i64 %12, -1, !dbg !5474
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5475
  store i64 %16, i64* %17, align 8, !dbg !5476, !tbaa !4572
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5477, metadata !DIExpression()) #13, !dbg !5483
  call void @llvm.dbg.value(metadata i64 %14, metadata !5482, metadata !DIExpression()) #13, !dbg !5485
  %18 = tail call i8* %3(i64 %14) #13, !dbg !5486
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5488
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !5489
  store i8* %18, i8** %20, align 8, !dbg !5489, !tbaa !4575
  %21 = icmp eq i8* %18, null, !dbg !5490
  br i1 %21, label %22, label %24, !dbg !5492

; <label>:22:                                     ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5493, !tbaa !1147
  tail call void %23() #16, !dbg !5494
  unreachable, !dbg !5494

; <label>:24:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %18, metadata !5458, metadata !DIExpression()) #13, !dbg !5495
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !5496
  %26 = ptrtoint i8* %25 to i64, !dbg !5496
  %27 = add i64 %16, %26, !dbg !5496
  %28 = sub i64 0, %12, !dbg !5496
  %29 = and i64 %27, %28, !dbg !5496
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !5496
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5497
  store i8* %30, i8** %31, align 8, !dbg !5498, !tbaa !4550
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5499
  store i8* %30, i8** %32, align 8, !dbg !5500, !tbaa !4549
  %33 = load i64, i64* %15, align 8, !dbg !5501, !tbaa !5473
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !5502
  %35 = bitcast i8* %18 to i8**, !dbg !5503
  store i8* %34, i8** %35, align 8, !dbg !5504, !tbaa !1147
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5505
  store i8* %34, i8** %36, align 8, !dbg !5506, !tbaa !4555
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !5507
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !5507
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !5508, !tbaa !1147
  %39 = load i8, i8* %8, align 8, !dbg !5509
  %40 = and i8 %39, -7, !dbg !5510
  store i8 %40, i8* %8, align 8, !dbg !5510
  ret i32 1, !dbg !5511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin_1(%struct.obstack* nocapture, i64, i64, i8* (i8*, i64)*, void (i8*, i8*)*, i8*) local_unnamed_addr #7 !dbg !5512 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5516, metadata !DIExpression()), !dbg !5522
  call void @llvm.dbg.value(metadata i64 %1, metadata !5517, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.value(metadata i64 %2, metadata !5518, metadata !DIExpression()), !dbg !5524
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, metadata !5519, metadata !DIExpression()), !dbg !5525
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, metadata !5520, metadata !DIExpression()), !dbg !5526
  call void @llvm.dbg.value(metadata i8* %5, metadata !5521, metadata !DIExpression()), !dbg !5527
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !5528
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !5529
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !5530, !tbaa !1489
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !5531
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !5532
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !5533, !tbaa !1489
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5534
  store i8* %5, i8** %11, align 8, !dbg !5535, !tbaa !5536
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5537
  %13 = load i8, i8* %12, align 8, !dbg !5538
  %14 = or i8 %13, 1, !dbg !5538
  store i8 %14, i8* %12, align 8, !dbg !5538
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5451, metadata !DIExpression()) #13, !dbg !5539
  call void @llvm.dbg.value(metadata i64 %1, metadata !5456, metadata !DIExpression()) #13, !dbg !5541
  call void @llvm.dbg.value(metadata i64 %2, metadata !5457, metadata !DIExpression()) #13, !dbg !5542
  %15 = icmp eq i64 %2, 0, !dbg !5543
  %16 = select i1 %15, i64 16, i64 %2, !dbg !5544
  call void @llvm.dbg.value(metadata i64 %16, metadata !5457, metadata !DIExpression()) #13, !dbg !5542
  %17 = icmp eq i64 %1, 0, !dbg !5545
  call void @llvm.dbg.value(metadata i64 4064, metadata !5456, metadata !DIExpression()) #13, !dbg !5541
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !5546
  call void @llvm.dbg.value(metadata i64 %18, metadata !5456, metadata !DIExpression()) #13, !dbg !5541
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5547
  store i64 %18, i64* %19, align 8, !dbg !5548, !tbaa !5473
  %20 = add i64 %16, -1, !dbg !5549
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5550
  store i64 %20, i64* %21, align 8, !dbg !5551, !tbaa !4572
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5477, metadata !DIExpression()) #13, !dbg !5552
  call void @llvm.dbg.value(metadata i64 %18, metadata !5482, metadata !DIExpression()) #13, !dbg !5554
  %22 = tail call i8* %3(i8* %5, i64 %18) #13, !dbg !5555
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5556
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !5557
  store i8* %22, i8** %24, align 8, !dbg !5557, !tbaa !4575
  %25 = icmp eq i8* %22, null, !dbg !5558
  br i1 %25, label %26, label %28, !dbg !5559

; <label>:26:                                     ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5560, !tbaa !1147
  tail call void %27() #16, !dbg !5561
  unreachable, !dbg !5561

; <label>:28:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i8* %22, metadata !5458, metadata !DIExpression()) #13, !dbg !5562
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !5563
  %30 = ptrtoint i8* %29 to i64, !dbg !5563
  %31 = add i64 %20, %30, !dbg !5563
  %32 = sub i64 0, %16, !dbg !5563
  %33 = and i64 %31, %32, !dbg !5563
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !5563
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5564
  store i8* %34, i8** %35, align 8, !dbg !5565, !tbaa !4550
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5566
  store i8* %34, i8** %36, align 8, !dbg !5567, !tbaa !4549
  %37 = load i64, i64* %19, align 8, !dbg !5568, !tbaa !5473
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !5569
  %39 = bitcast i8* %22 to i8**, !dbg !5570
  store i8* %38, i8** %39, align 8, !dbg !5571, !tbaa !1147
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5572
  store i8* %38, i8** %40, align 8, !dbg !5573, !tbaa !4555
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !5574
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !5574
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !5575, !tbaa !1147
  %43 = load i8, i8* %12, align 8, !dbg !5576
  %44 = and i8 %43, -7, !dbg !5577
  store i8 %44, i8* %12, align 8, !dbg !5577
  ret i32 1, !dbg !5578
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_newchunk(%struct.obstack* nocapture, i64) local_unnamed_addr #7 !dbg !5579 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5583, metadata !DIExpression()), !dbg !5592
  call void @llvm.dbg.value(metadata i64 %1, metadata !5584, metadata !DIExpression()), !dbg !5593
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5594
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5594, !tbaa !4575
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !5585, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, metadata !5586, metadata !DIExpression()), !dbg !5596
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5597
  %6 = bitcast i8** %5 to i64*, !dbg !5597
  %7 = load i64, i64* %6, align 8, !dbg !5597, !tbaa !4549
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5598
  %9 = bitcast i8** %8 to i64*, !dbg !5598
  %10 = load i64, i64* %9, align 8, !dbg !5598, !tbaa !4550
  %11 = sub i64 %7, %10, !dbg !5599
  call void @llvm.dbg.value(metadata i64 %11, metadata !5587, metadata !DIExpression()), !dbg !5600
  %12 = add i64 %11, %1, !dbg !5601
  call void @llvm.dbg.value(metadata i64 %12, metadata !5589, metadata !DIExpression()), !dbg !5602
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5603
  %14 = load i64, i64* %13, align 8, !dbg !5603, !tbaa !4572
  %15 = add i64 %12, %14, !dbg !5604
  call void @llvm.dbg.value(metadata i64 %15, metadata !5590, metadata !DIExpression()), !dbg !5605
  %16 = lshr i64 %11, 3, !dbg !5606
  %17 = add nuw nsw i64 %16, 100, !dbg !5607
  %18 = add i64 %17, %15, !dbg !5608
  call void @llvm.dbg.value(metadata i64 %18, metadata !5591, metadata !DIExpression()), !dbg !5609
  %19 = icmp ult i64 %18, %15, !dbg !5610
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !5612
  call void @llvm.dbg.value(metadata i64 %20, metadata !5591, metadata !DIExpression()), !dbg !5609
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5613
  %22 = load i64, i64* %21, align 8, !dbg !5613, !tbaa !5473
  %23 = icmp ult i64 %20, %22, !dbg !5615
  call void @llvm.dbg.value(metadata i64 %22, metadata !5591, metadata !DIExpression()), !dbg !5609
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !5616
  call void @llvm.dbg.value(metadata i64 %24, metadata !5591, metadata !DIExpression()), !dbg !5609
  %25 = icmp ugt i64 %11, %12, !dbg !5617
  %26 = icmp ugt i64 %12, %15, !dbg !5619
  %27 = or i1 %25, %26, !dbg !5620
  br i1 %27, label %47, label %28, !dbg !5620

; <label>:28:                                     ; preds = %2
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5477, metadata !DIExpression()) #13, !dbg !5621
  call void @llvm.dbg.value(metadata i64 %24, metadata !5482, metadata !DIExpression()) #13, !dbg !5623
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5624
  %30 = load i8, i8* %29, align 8, !dbg !5624
  %31 = and i8 %30, 1, !dbg !5624
  %32 = icmp eq i8 %31, 0, !dbg !5625
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !5626
  br i1 %32, label %40, label %34, !dbg !5627

; <label>:34:                                     ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**, !dbg !5628
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !5628, !tbaa !1489
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5629
  %38 = load i8*, i8** %37, align 8, !dbg !5629, !tbaa !5536
  %39 = tail call i8* %36(i8* %38, i64 %24) #13, !dbg !5630
  br label %44, !dbg !5631

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0, !dbg !5632
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !5632, !tbaa !1489
  %43 = tail call i8* %42(i64 %24) #13, !dbg !5633
  br label %44, !dbg !5634

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ], !dbg !5626
  %46 = icmp eq i8* %45, null, !dbg !5635
  br i1 %46, label %47, label %49, !dbg !5637

; <label>:47:                                     ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5638, !tbaa !1147
  tail call void %48() #16, !dbg !5639
  unreachable, !dbg !5639

; <label>:49:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %45, metadata !5586, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.value(metadata i8* %45, metadata !5586, metadata !DIExpression()), !dbg !5596
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !5640
  store i8* %45, i8** %50, align 8, !dbg !5640, !tbaa !4575
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !5641
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !5641
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !5642, !tbaa !1147
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !5643
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5644
  store i8* %53, i8** %54, align 8, !dbg !5645, !tbaa !4555
  %55 = bitcast i8* %45 to i8**, !dbg !5646
  store i8* %53, i8** %55, align 8, !dbg !5647, !tbaa !1147
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !5648
  %57 = ptrtoint i8* %56 to i64, !dbg !5648
  %58 = load i64, i64* %13, align 8, !dbg !5648, !tbaa !4572
  %59 = add i64 %58, %57, !dbg !5648
  %60 = xor i64 %58, -1, !dbg !5648
  %61 = and i64 %59, %60, !dbg !5648
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !5648
  call void @llvm.dbg.value(metadata i8* %62, metadata !5588, metadata !DIExpression()), !dbg !5649
  %63 = load i8*, i8** %8, align 8, !dbg !5650, !tbaa !4550
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 %11, i1 false), !dbg !5651
  %64 = load i8, i8* %29, align 8, !dbg !5652
  %65 = and i8 %64, 2, !dbg !5652
  %66 = icmp eq i8 %65, 0, !dbg !5654
  br i1 %66, label %67, label %92, !dbg !5655

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !5656
  %69 = ptrtoint i8* %68 to i64, !dbg !5656
  %70 = add i64 %58, %69, !dbg !5656
  %71 = and i64 %70, %60, !dbg !5656
  %72 = getelementptr inbounds i8, i8* null, i64 %71, !dbg !5656
  %73 = icmp eq i8* %63, %72, !dbg !5657
  br i1 %73, label %74, label %92, !dbg !5658

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !5659
  %76 = bitcast %struct._obstack_chunk** %75 to i64*, !dbg !5659
  %77 = load i64, i64* %76, align 8, !dbg !5659, !tbaa !1147
  %78 = bitcast i8* %51 to i64*, !dbg !5661
  store i64 %77, i64* %78, align 8, !dbg !5661, !tbaa !1147
  %79 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !5662
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5663, metadata !DIExpression()) #13, !dbg !5669
  call void @llvm.dbg.value(metadata i8* %79, metadata !5668, metadata !DIExpression()) #13, !dbg !5671
  %80 = load i8, i8* %29, align 8, !dbg !5672
  %81 = and i8 %80, 1, !dbg !5672
  %82 = icmp eq i8 %81, 0, !dbg !5674
  %83 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !5675
  br i1 %82, label %89, label %84, !dbg !5676

; <label>:84:                                     ; preds = %74
  %85 = bitcast %union.anon.1* %83 to void (i8*, i8*)**, !dbg !5677
  %86 = load void (i8*, i8*)*, void (i8*, i8*)** %85, align 8, !dbg !5677, !tbaa !1489
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5678
  %88 = load i8*, i8** %87, align 8, !dbg !5678, !tbaa !5536
  tail call void %86(i8* %88, i8* %79) #13, !dbg !5679
  br label %92, !dbg !5679

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0, !dbg !5680
  %91 = load void (i8*)*, void (i8*)** %90, align 8, !dbg !5680, !tbaa !1489
  tail call void %91(i8* %79) #13, !dbg !5681
  br label %92

; <label>:92:                                     ; preds = %89, %84, %49, %67
  store i8* %62, i8** %8, align 8, !dbg !5682, !tbaa !4550
  %93 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !5683
  store i8* %93, i8** %5, align 8, !dbg !5684, !tbaa !4549
  %94 = load i8, i8* %29, align 8, !dbg !5685
  %95 = and i8 %94, -3, !dbg !5685
  store i8 %95, i8* %29, align 8, !dbg !5685
  ret void, !dbg !5686
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly, i8* readnone) local_unnamed_addr #9 !dbg !5687 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5691, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.value(metadata i8* %1, metadata !5692, metadata !DIExpression()), !dbg !5696
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5697
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %3, metadata !5693, metadata !DIExpression(DW_OP_deref)), !dbg !5698
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5699, !tbaa !1147
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !5693, metadata !DIExpression()), !dbg !5698
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5701
  br i1 %5, label %18, label %6, !dbg !5702

; <label>:6:                                      ; preds = %2, %14
  %7 = phi %struct._obstack_chunk* [ %16, %14 ], [ %4, %2 ]
  %8 = bitcast %struct._obstack_chunk* %7 to i8*, !dbg !5703
  %9 = icmp ult i8* %8, %1, !dbg !5704
  br i1 %9, label %10, label %14, !dbg !5705

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 0, !dbg !5706
  %12 = load i8*, i8** %11, align 8, !dbg !5706, !tbaa !1147
  %13 = icmp ult i8* %12, %1, !dbg !5707
  br i1 %13, label %14, label %18, !dbg !5708

; <label>:14:                                     ; preds = %6, %10
  %15 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !5709
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %15, metadata !5694, metadata !DIExpression(DW_OP_deref)), !dbg !5710
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %15, metadata !5693, metadata !DIExpression(DW_OP_deref)), !dbg !5698
  %16 = load %struct._obstack_chunk*, %struct._obstack_chunk** %15, align 8, !dbg !5699, !tbaa !1147
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %16, metadata !5693, metadata !DIExpression()), !dbg !5698
  %17 = icmp eq %struct._obstack_chunk* %16, null, !dbg !5701
  br i1 %17, label %18, label %6, !dbg !5702, !llvm.loop !5711

; <label>:18:                                     ; preds = %10, %14, %2
  %19 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 1, %10 ], !dbg !5701
  ret i32 %19, !dbg !5713
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_free(%struct.obstack* nocapture, i8*) local_unnamed_addr #7 !dbg !5714 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5716, metadata !DIExpression()), !dbg !5720
  call void @llvm.dbg.value(metadata i8* %1, metadata !5717, metadata !DIExpression()), !dbg !5721
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5722
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5722, !tbaa !4575
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !5718, metadata !DIExpression()), !dbg !5723
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5724
  br i1 %5, label %42, label %6, !dbg !5725

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = getelementptr inbounds %union.anon.1, %union.anon.1* %8, i64 0, i32 0
  %10 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  br label %12, !dbg !5725

; <label>:12:                                     ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5718, metadata !DIExpression()), !dbg !5723
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !5726
  %15 = icmp ult i8* %14, %1, !dbg !5727
  br i1 %15, label %16, label %20, !dbg !5728

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !5729
  %18 = load i8*, i8** %17, align 8, !dbg !5729, !tbaa !1147
  %19 = icmp ult i8* %18, %1, !dbg !5730
  br i1 %19, label %20, label %35, !dbg !5731

; <label>:20:                                     ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !5732
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !5732, !tbaa !1147
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !5719, metadata !DIExpression()), !dbg !5734
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5663, metadata !DIExpression()) #13, !dbg !5735
  call void @llvm.dbg.value(metadata i8* %14, metadata !5668, metadata !DIExpression()) #13, !dbg !5737
  %23 = load i8, i8* %7, align 8, !dbg !5738
  %24 = and i8 %23, 1, !dbg !5738
  %25 = icmp eq i8 %24, 0, !dbg !5739
  br i1 %25, label %29, label %26, !dbg !5740

; <label>:26:                                     ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !5741, !tbaa !1489
  %28 = load i8*, i8** %11, align 8, !dbg !5742, !tbaa !5536
  tail call void %27(i8* %28, i8* nonnull %14) #13, !dbg !5743
  br label %31, !dbg !5743

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !5744, !tbaa !1489
  tail call void %30(i8* nonnull %14) #13, !dbg !5745
  br label %31

; <label>:31:                                     ; preds = %26, %29
  %32 = load i8, i8* %7, align 8, !dbg !5746
  %33 = or i8 %32, 2, !dbg !5746
  store i8 %33, i8* %7, align 8, !dbg !5746
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !5718, metadata !DIExpression()), !dbg !5723
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !5724
  br i1 %34, label %42, label %12, !dbg !5725, !llvm.loop !5747

; <label>:35:                                     ; preds = %16
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5718, metadata !DIExpression()), !dbg !5723
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5718, metadata !DIExpression()), !dbg !5723
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5718, metadata !DIExpression()), !dbg !5723
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5718, metadata !DIExpression()), !dbg !5723
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5718, metadata !DIExpression()), !dbg !5723
  %36 = bitcast %struct._obstack_chunk* %13 to i64*, !dbg !5749
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5718, metadata !DIExpression()), !dbg !5723
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5750
  store i8* %1, i8** %37, align 8, !dbg !5753, !tbaa !4549
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5754
  store i8* %1, i8** %38, align 8, !dbg !5755, !tbaa !4550
  %39 = load i64, i64* %36, align 8, !dbg !5756, !tbaa !1147
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5757
  %41 = bitcast i8** %40 to i64*, !dbg !5758
  store i64 %39, i64* %41, align 8, !dbg !5758, !tbaa !4555
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !5759, !tbaa !4575
  br label %45, !dbg !5760

; <label>:42:                                     ; preds = %31, %2
  %43 = icmp eq i8* %1, null, !dbg !5761
  br i1 %43, label %45, label %44, !dbg !5763

; <label>:44:                                     ; preds = %42
  tail call void @abort() #16, !dbg !5764
  unreachable, !dbg !5764

; <label>:45:                                     ; preds = %42, %35
  ret void, !dbg !5765
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @_obstack_memory_used(%struct.obstack* nocapture readonly) local_unnamed_addr #9 !dbg !5766 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5770, metadata !DIExpression()), !dbg !5773
  call void @llvm.dbg.value(metadata i64 0, metadata !5772, metadata !DIExpression()), !dbg !5774
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5775
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %2, metadata !5771, metadata !DIExpression(DW_OP_deref)), !dbg !5777
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !dbg !5778, !tbaa !1147
  call void @llvm.dbg.value(metadata i64 0, metadata !5772, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, metadata !5771, metadata !DIExpression()), !dbg !5777
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !5780
  br i1 %4, label %16, label %5, !dbg !5781

; <label>:5:                                      ; preds = %1, %5
  %6 = phi %struct._obstack_chunk* [ %14, %5 ], [ %3, %1 ]
  %7 = phi i64 [ %12, %5 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !5772, metadata !DIExpression()), !dbg !5774
  %8 = bitcast %struct._obstack_chunk* %6 to i64*, !dbg !5782
  %9 = load i64, i64* %8, align 8, !dbg !5782, !tbaa !1147
  %10 = ptrtoint %struct._obstack_chunk* %6 to i64, !dbg !5784
  %11 = sub i64 %7, %10, !dbg !5784
  %12 = add i64 %11, %9, !dbg !5785
  %13 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i64 0, i32 1, !dbg !5786
  call void @llvm.dbg.value(metadata %struct._obstack_chunk** %13, metadata !5771, metadata !DIExpression(DW_OP_deref)), !dbg !5777
  %14 = load %struct._obstack_chunk*, %struct._obstack_chunk** %13, align 8, !dbg !5778, !tbaa !1147
  call void @llvm.dbg.value(metadata i64 %12, metadata !5772, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %14, metadata !5771, metadata !DIExpression()), !dbg !5777
  %15 = icmp eq %struct._obstack_chunk* %14, null, !dbg !5780
  br i1 %15, label %16, label %5, !dbg !5781, !llvm.loop !5787

; <label>:16:                                     ; preds = %5, %1
  %17 = phi i64 [ 0, %1 ], [ %12, %5 ], !dbg !5789
  call void @llvm.dbg.value(metadata i64 %17, metadata !5772, metadata !DIExpression()), !dbg !5774
  ret i64 %17, !dbg !5790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5791 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5830, metadata !DIExpression()), !dbg !5835
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13, !dbg !5836
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5837, metadata !DIExpression()), !dbg !5840
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5842
  %4 = load i32, i32* %3, align 8, !dbg !5842, !tbaa !5259
  %5 = and i32 %4, 32, !dbg !5842
  %6 = icmp eq i32 %5, 0, !dbg !5843
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13, !dbg !5844
  %8 = icmp ne i32 %7, 0, !dbg !5845
  br i1 %6, label %9, label %19, !dbg !5846

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5848
  %11 = xor i1 %8, true, !dbg !5849
  %12 = or i1 %10, %11, !dbg !5849
  %13 = sext i1 %8 to i32, !dbg !5849
  br i1 %12, label %22, label %14, !dbg !5849

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5850
  %16 = load i32, i32* %15, align 4, !dbg !5850, !tbaa !1243
  %17 = icmp ne i32 %16, 9, !dbg !5851
  %18 = sext i1 %17 to i32, !dbg !5852
  br label %22, !dbg !5852

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5853

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5855
  store i32 0, i32* %21, align 4, !dbg !5857, !tbaa !1243
  br label %22, !dbg !5855

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5858
  ret i32 %23, !dbg !5859
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !5860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5865, metadata !DIExpression()), !dbg !5868
  call void @llvm.dbg.value(metadata i8 1, metadata !5866, metadata !DIExpression()), !dbg !5869
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !5870
  call void @llvm.dbg.value(metadata i8* %2, metadata !5867, metadata !DIExpression()), !dbg !5871
  %3 = icmp eq i8* %2, null, !dbg !5872
  br i1 %3, label %11, label %4, !dbg !5874

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i64 0, i64 0)) #15, !dbg !5875
  %6 = icmp eq i32 %5, 0, !dbg !5880
  br i1 %6, label %10, label %7, !dbg !5881

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.177, i64 0, i64 0)) #15, !dbg !5882
  %9 = icmp eq i32 %8, 0, !dbg !5883
  br i1 %9, label %10, label %11, !dbg !5884

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !5866, metadata !DIExpression()), !dbg !5869
  br label %11, !dbg !5885

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5886
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !5887 {
  %1 = tail call i8* @nl_langinfo(i32 14) #13, !dbg !5893
  call void @llvm.dbg.value(metadata i8* %1, metadata !5892, metadata !DIExpression()), !dbg !5894
  %2 = icmp eq i8* %1, null, !dbg !5895
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.180, i64 0, i64 0), i8* %1, !dbg !5897
  call void @llvm.dbg.value(metadata i8* %3, metadata !5892, metadata !DIExpression()), !dbg !5894
  %4 = load i8, i8* %3, align 1, !dbg !5898, !tbaa !1489
  %5 = icmp eq i8 %4, 0, !dbg !5902
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), i8* %3, !dbg !5903
  call void @llvm.dbg.value(metadata i8* %6, metadata !5892, metadata !DIExpression()), !dbg !5894
  ret i8* %6, !dbg !5904
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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { noreturn }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !326, !433, !332, !340, !437, !440, !347, !443, !358, !365, !666, !672, !679, !416, !686, !702, !704, !706, !708, !710, !712, !425, !715, !717, !719}
!llvm.ident = !{!1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108}
!llvm.module.flags = !{!1109, !1110, !1111, !1112, !1113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "page_size", scope: !2, file: !3, line: 75, type: !55, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !61)
!3 = !DIFile(filename: "src/wc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !27, !36}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "argv_iter_err", file: !21, line: 25, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/argv-iter.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "AI_ERR_OK", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "AI_ERR_EOF", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "AI_ERR_MEM", value: 3, isUnsigned: true)
!26 = !DIEnumerator(name: "AI_ERR_READ", value: 4, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 45, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 46, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!40 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!41 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!42 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!43 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!44 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!45 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!46 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!47 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!50 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!51 = !{!52, !54, !55, !58, !59, !60}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 62, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !{!62, !255, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !0, !282, !298}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "stdin_only", scope: !64, file: !3, line: 778, type: !254, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 661, type: !65, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{!58, !58, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!68 = !{!69, !70, !71, !73, !74, !75, !76, !77, !122, !182, !183, !186, !241, !242, !244, !247, !248, !249}
!69 = !DILocalVariable(name: "argc", arg: 1, scope: !64, file: !3, line: 661, type: !58)
!70 = !DILocalVariable(name: "argv", arg: 2, scope: !64, file: !3, line: 661, type: !67)
!71 = !DILocalVariable(name: "ok", scope: !64, file: !3, line: 663, type: !72)
!72 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!73 = !DILocalVariable(name: "optc", scope: !64, file: !3, line: 664, type: !58)
!74 = !DILocalVariable(name: "nfiles", scope: !64, file: !3, line: 665, type: !55)
!75 = !DILocalVariable(name: "files", scope: !64, file: !3, line: 666, type: !67)
!76 = !DILocalVariable(name: "files_from", scope: !64, file: !3, line: 667, type: !52)
!77 = !DILocalVariable(name: "fstatus", scope: !64, file: !3, line: 668, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fstatus", file: !3, line: 78, size: 1216, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !79, file: !3, line: 82, baseType: !58, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !79, file: !3, line: 85, baseType: !83, size: 1152, offset: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !84, line: 46, size: 1152, elements: !85)
!84 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!85 = !{!86, !89, !91, !93, !95, !97, !99, !100, !101, !104, !106, !108, !116, !117, !118}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !83, file: !84, line: 48, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !88, line: 143, baseType: !57)
!88 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !83, file: !84, line: 53, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !88, line: 146, baseType: !57)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !83, file: !84, line: 61, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !88, line: 149, baseType: !57)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !83, file: !84, line: 62, baseType: !94, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !88, line: 148, baseType: !7)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !83, file: !84, line: 64, baseType: !96, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !88, line: 144, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !83, file: !84, line: 65, baseType: !98, size: 32, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !88, line: 145, baseType: !7)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !83, file: !84, line: 67, baseType: !58, size: 32, offset: 288)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !83, file: !84, line: 69, baseType: !87, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !83, file: !84, line: 74, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !88, line: 150, baseType: !103)
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !83, file: !84, line: 78, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !88, line: 172, baseType: !103)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !83, file: !84, line: 80, baseType: !107, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !88, line: 177, baseType: !103)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !83, file: !84, line: 91, baseType: !109, size: 128, offset: 576)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !110, line: 9, size: 128, elements: !111)
!110 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !109, file: !110, line: 11, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !88, line: 158, baseType: !103)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !109, file: !110, line: 12, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !88, line: 194, baseType: !103)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !83, file: !84, line: 92, baseType: !109, size: 128, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !83, file: !84, line: 93, baseType: !109, size: 128, offset: 832)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !83, file: !84, line: 106, baseType: !119, size: 192, offset: 960)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 192, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DILocalVariable(name: "tok", scope: !64, file: !3, line: 669, type: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !124, line: 28, size: 2304, elements: !125)
!124 = !DIFile(filename: "./lib/readtokens0.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!125 = !{!126, !127, !128, !130, !180, !181}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !123, file: !124, line: 30, baseType: !55, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !123, file: !124, line: 31, baseType: !67, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !123, file: !124, line: 32, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !123, file: !124, line: 33, baseType: !131, size: 704, offset: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !133)
!132 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!133 = !{!134, !135, !145, !146, !147, !148, !153, !154, !165, !176, !177, !178, !179}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !131, file: !132, line: 176, baseType: !55, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !131, file: !132, line: 177, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !137, file: !132, line: 169, baseType: !52, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !137, file: !132, line: 170, baseType: !136, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !137, file: !132, line: 171, baseType: !142, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: -1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !131, file: !132, line: 178, baseType: !52, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !131, file: !132, line: 179, baseType: !52, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !131, file: !132, line: 180, baseType: !52, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !131, file: !132, line: 185, baseType: !149, size: 64, offset: 320)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 181, size: 64, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !149, file: !132, line: 183, baseType: !55, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !149, file: !132, line: 184, baseType: !54, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !131, file: !132, line: 186, baseType: !55, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !131, file: !132, line: 193, baseType: !155, size: 64, offset: 448)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 189, size: 64, elements: !156)
!156 = !{!157, !161}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !155, file: !132, line: 191, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!54, !55}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !155, file: !132, line: 192, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!54, !54, !55}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !131, file: !132, line: 198, baseType: !166, size: 64, offset: 512)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 194, size: 64, elements: !167)
!167 = !{!168, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !166, file: !132, line: 196, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !54}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !166, file: !132, line: 197, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !54, !54}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !131, file: !132, line: 200, baseType: !54, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !131, file: !132, line: 201, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !131, file: !132, line: 202, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !131, file: !132, line: 206, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !123, file: !124, line: 34, baseType: !131, size: 704, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !123, file: !124, line: 35, baseType: !131, size: 704, offset: 1600)
!182 = !DILocalVariable(name: "read_tokens", scope: !64, file: !3, line: 727, type: !72)
!183 = !DILocalVariable(name: "ai", scope: !64, file: !3, line: 728, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !21, line: 23, flags: DIFlagFwdDecl)
!186 = !DILocalVariable(name: "stream", scope: !187, file: !3, line: 731, type: !189)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 730, column: 5)
!188 = distinct !DILexicalBlock(scope: !64, file: !3, line: 729, column: 7)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !192)
!191 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !194)
!193 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !210, !212, !213, !214, !215, !216, !218, !222, !225, !227, !230, !233, !234, !235, !236, !237}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !192, file: !193, line: 51, baseType: !58, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !192, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !192, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !192, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !192, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !192, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !192, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !192, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !192, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !192, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !192, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !192, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !192, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 36, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !192, file: !193, line: 70, baseType: !211, size: 64, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !192, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !192, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !192, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !192, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !192, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!217 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !192, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 1)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !192, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !193, line: 43, baseType: null)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !192, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !88, line: 151, baseType: !103)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !192, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !193, line: 37, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !192, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !193, line: 38, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !192, file: !193, line: 93, baseType: !211, size: 64, offset: 1344)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !192, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !192, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !192, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !192, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 20)
!241 = !DILocalVariable(name: "st", scope: !187, file: !3, line: 755, type: !83)
!242 = !DILocalVariable(name: "i", scope: !243, file: !3, line: 791, type: !58)
!243 = distinct !DILexicalBlock(scope: !64, file: !3, line: 791, column: 3)
!244 = !DILocalVariable(name: "skip_file", scope: !245, file: !3, line: 793, type: !72)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 792, column: 5)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 791, column: 3)
!247 = !DILocalVariable(name: "ai_err", scope: !245, file: !3, line: 794, type: !20)
!248 = !DILocalVariable(name: "file_name", scope: !245, file: !3, line: 795, type: !52)
!249 = !DILocalVariable(name: "file_number", scope: !250, file: !3, line: 836, type: !57)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 832, column: 13)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 829, column: 15)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 824, column: 9)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 823, column: 11)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !220)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "total_lines", scope: !2, file: !3, line: 58, type: !257, isLocal: true, isDefinition: true)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !258, line: 102, baseType: !259)
!258 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !88, line: 72, baseType: !57)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "total_words", scope: !2, file: !3, line: 59, type: !257, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "total_chars", scope: !2, file: !3, line: 60, type: !257, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "total_bytes", scope: !2, file: !3, line: 61, type: !257, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "max_line_length", scope: !2, file: !3, line: 62, type: !257, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "print_lines", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "print_words", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "print_chars", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "print_bytes", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "print_linelength", scope: !2, file: !3, line: 66, type: !72, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "number_width", scope: !2, file: !3, line: 69, type: !58, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !72, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 95, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 2304, elements: !296)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !287, line: 50, size: 256, elements: !288)
!287 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!288 = !{!289, !292, !293, !295}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !287, line: 52, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !286, file: !287, line: 55, baseType: !58, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !286, file: !287, line: 56, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !286, file: !287, line: 57, baseType: !58, size: 32, offset: 192)
!296 = !{!297}
!297 = !DISubrange(count: 9)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "format_sp_int", scope: !300, file: !3, line: 160, type: !315, isLocal: true, isDefinition: true)
!300 = distinct !DISubprogram(name: "write_counts", scope: !3, file: !3, line: 153, type: !301, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !257, !257, !257, !257, !257, !290}
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311}
!304 = !DILocalVariable(name: "lines", arg: 1, scope: !300, file: !3, line: 153, type: !257)
!305 = !DILocalVariable(name: "words", arg: 2, scope: !300, file: !3, line: 154, type: !257)
!306 = !DILocalVariable(name: "chars", arg: 3, scope: !300, file: !3, line: 155, type: !257)
!307 = !DILocalVariable(name: "bytes", arg: 4, scope: !300, file: !3, line: 156, type: !257)
!308 = !DILocalVariable(name: "linelength", arg: 5, scope: !300, file: !3, line: 157, type: !257)
!309 = !DILocalVariable(name: "file", arg: 6, scope: !300, file: !3, line: 158, type: !290)
!310 = !DILocalVariable(name: "format_int", scope: !300, file: !3, line: 161, type: !290)
!311 = !DILocalVariable(name: "buf", scope: !300, file: !3, line: 162, type: !312)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 168, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 21)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 40, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 5)
!318 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!319 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!320 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!321 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!322 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!323 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "Version", scope: !326, file: !327, line: 2, type: !290, isLocal: false, isDefinition: true)
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, globals: !329)
!327 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!328 = !{}
!329 = !{!324}
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "file_name", scope: !332, file: !337, line: 46, type: !290, isLocal: true, isDefinition: true)
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, globals: !334)
!333 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!334 = !{!330, !335}
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !332, file: !337, line: 56, type: !72, isLocal: true, isDefinition: true)
!337 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "exit_failure", scope: !340, file: !343, line: 24, type: !344, isLocal: false, isDefinition: true)
!340 = distinct !DICompileUnit(language: DW_LANG_C99, file: !341, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, globals: !342)
!341 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!342 = !{!338}
!343 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!344 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "is_basic_table", scope: !347, file: !351, line: 28, type: !352, isLocal: false, isDefinition: true)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !349, globals: !350)
!348 = !DIFile(filename: "./lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!349 = !{!60}
!350 = !{!345}
!351 = !DIFile(filename: "lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 256, elements: !354)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!354 = !{!355}
!355 = !DISubrange(count: 8)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "program_name", scope: !358, file: !362, line: 33, type: !290, isLocal: false, isDefinition: true)
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !360, globals: !361)
!359 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!360 = !{!54, !52}
!361 = !{!356}
!362 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !365, file: !377, line: 85, type: !410, isLocal: false, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !367, retainedTypes: !373, globals: !374)
!366 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!367 = !{!5, !368, !36}
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!371 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!372 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!373 = !{!58, !59, !55, !52}
!374 = !{!363, !375, !382, !392, !394, !399, !406, !408}
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !365, file: !377, line: 101, type: !378, isLocal: false, isDefinition: true)
!377 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 320, elements: !380)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!380 = !{!381}
!381 = !DISubrange(count: 10)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !365, file: !377, line: 1052, type: !384, isLocal: false, isDefinition: true)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !377, line: 65, size: 448, elements: !385)
!385 = !{!386, !387, !388, !390, !391}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !384, file: !377, line: 68, baseType: !5, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !377, line: 71, baseType: !58, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !384, file: !377, line: 75, baseType: !389, size: 256, offset: 64)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !354)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !384, file: !377, line: 78, baseType: !290, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !384, file: !377, line: 81, baseType: !290, size: 64, offset: 384)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !365, file: !377, line: 116, type: !384, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "slot0", scope: !365, file: !377, line: 842, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 256)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "slotvec", scope: !365, file: !377, line: 845, type: !401, isLocal: true, isDefinition: true)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !377, line: 834, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !402, file: !377, line: 836, baseType: !55, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !402, file: !377, line: 837, baseType: !52, size: 64, offset: 64)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "nslots", scope: !365, file: !377, line: 843, type: !58, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "slotvec0", scope: !365, file: !377, line: 844, type: !402, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 704, elements: !412)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!412 = !{!413}
!413 = !DISubrange(count: 11)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !416, file: !419, line: 26, type: !420, isLocal: false, isDefinition: true)
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, globals: !418)
!417 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!418 = !{!414}
!419 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 376, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 47)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !425, file: !429, line: 351, type: !430, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !427, globals: !428)
!426 = !DIFile(filename: "./lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!427 = !{!52, !54}
!428 = !{!423}
!429 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null}
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !435, retainedTypes: !436)
!434 = !DIFile(filename: "./lib/argv-iter.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!435 = !{!20}
!436 = !{!54}
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !439)
!438 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!439 = !{!27}
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !442)
!441 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!442 = !{!257}
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !445, retainedTypes: !664)
!444 = !DIFile(filename: "./lib/physmem.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!445 = !{!446}
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !447, line: 71, baseType: !7, size: 32, elements: !448)
!447 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!449 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0, isUnsigned: true)
!450 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1, isUnsigned: true)
!451 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2, isUnsigned: true)
!452 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3, isUnsigned: true)
!453 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4, isUnsigned: true)
!454 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5, isUnsigned: true)
!455 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6, isUnsigned: true)
!456 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7, isUnsigned: true)
!457 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8, isUnsigned: true)
!458 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9, isUnsigned: true)
!459 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10, isUnsigned: true)
!460 = !DIEnumerator(name: "_SC_TIMERS", value: 11, isUnsigned: true)
!461 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12, isUnsigned: true)
!462 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13, isUnsigned: true)
!463 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14, isUnsigned: true)
!464 = !DIEnumerator(name: "_SC_FSYNC", value: 15, isUnsigned: true)
!465 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16, isUnsigned: true)
!466 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17, isUnsigned: true)
!467 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18, isUnsigned: true)
!468 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19, isUnsigned: true)
!469 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20, isUnsigned: true)
!470 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21, isUnsigned: true)
!471 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22, isUnsigned: true)
!472 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23, isUnsigned: true)
!473 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24, isUnsigned: true)
!474 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25, isUnsigned: true)
!475 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26, isUnsigned: true)
!476 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27, isUnsigned: true)
!477 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28, isUnsigned: true)
!478 = !DIEnumerator(name: "_SC_VERSION", value: 29, isUnsigned: true)
!479 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30, isUnsigned: true)
!480 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31, isUnsigned: true)
!481 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32, isUnsigned: true)
!482 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33, isUnsigned: true)
!483 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34, isUnsigned: true)
!484 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35, isUnsigned: true)
!485 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36, isUnsigned: true)
!486 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37, isUnsigned: true)
!487 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38, isUnsigned: true)
!488 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39, isUnsigned: true)
!489 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40, isUnsigned: true)
!490 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41, isUnsigned: true)
!491 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42, isUnsigned: true)
!492 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43, isUnsigned: true)
!493 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44, isUnsigned: true)
!494 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45, isUnsigned: true)
!495 = !DIEnumerator(name: "_SC_2_VERSION", value: 46, isUnsigned: true)
!496 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47, isUnsigned: true)
!497 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48, isUnsigned: true)
!498 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49, isUnsigned: true)
!499 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50, isUnsigned: true)
!500 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51, isUnsigned: true)
!501 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52, isUnsigned: true)
!502 = !DIEnumerator(name: "_SC_PII", value: 53, isUnsigned: true)
!503 = !DIEnumerator(name: "_SC_PII_XTI", value: 54, isUnsigned: true)
!504 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55, isUnsigned: true)
!505 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56, isUnsigned: true)
!506 = !DIEnumerator(name: "_SC_PII_OSI", value: 57, isUnsigned: true)
!507 = !DIEnumerator(name: "_SC_POLL", value: 58, isUnsigned: true)
!508 = !DIEnumerator(name: "_SC_SELECT", value: 59, isUnsigned: true)
!509 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60, isUnsigned: true)
!510 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60, isUnsigned: true)
!511 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61, isUnsigned: true)
!512 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62, isUnsigned: true)
!513 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63, isUnsigned: true)
!514 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64, isUnsigned: true)
!515 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65, isUnsigned: true)
!516 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66, isUnsigned: true)
!517 = !DIEnumerator(name: "_SC_THREADS", value: 67, isUnsigned: true)
!518 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68, isUnsigned: true)
!519 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69, isUnsigned: true)
!520 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70, isUnsigned: true)
!521 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71, isUnsigned: true)
!522 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72, isUnsigned: true)
!523 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73, isUnsigned: true)
!524 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74, isUnsigned: true)
!525 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75, isUnsigned: true)
!526 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76, isUnsigned: true)
!527 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77, isUnsigned: true)
!528 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78, isUnsigned: true)
!529 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79, isUnsigned: true)
!530 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80, isUnsigned: true)
!531 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81, isUnsigned: true)
!532 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82, isUnsigned: true)
!533 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83, isUnsigned: true)
!534 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84, isUnsigned: true)
!535 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85, isUnsigned: true)
!536 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86, isUnsigned: true)
!537 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87, isUnsigned: true)
!538 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88, isUnsigned: true)
!539 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89, isUnsigned: true)
!540 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90, isUnsigned: true)
!541 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91, isUnsigned: true)
!542 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92, isUnsigned: true)
!543 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93, isUnsigned: true)
!544 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94, isUnsigned: true)
!545 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95, isUnsigned: true)
!546 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96, isUnsigned: true)
!547 = !DIEnumerator(name: "_SC_2_UPE", value: 97, isUnsigned: true)
!548 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98, isUnsigned: true)
!549 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99, isUnsigned: true)
!550 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100, isUnsigned: true)
!551 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101, isUnsigned: true)
!552 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102, isUnsigned: true)
!553 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103, isUnsigned: true)
!554 = !DIEnumerator(name: "_SC_INT_MAX", value: 104, isUnsigned: true)
!555 = !DIEnumerator(name: "_SC_INT_MIN", value: 105, isUnsigned: true)
!556 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106, isUnsigned: true)
!557 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107, isUnsigned: true)
!558 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108, isUnsigned: true)
!559 = !DIEnumerator(name: "_SC_NZERO", value: 109, isUnsigned: true)
!560 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110, isUnsigned: true)
!561 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111, isUnsigned: true)
!562 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112, isUnsigned: true)
!563 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113, isUnsigned: true)
!564 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114, isUnsigned: true)
!565 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115, isUnsigned: true)
!566 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116, isUnsigned: true)
!567 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117, isUnsigned: true)
!568 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118, isUnsigned: true)
!569 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119, isUnsigned: true)
!570 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120, isUnsigned: true)
!571 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121, isUnsigned: true)
!572 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122, isUnsigned: true)
!573 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123, isUnsigned: true)
!574 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124, isUnsigned: true)
!575 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125, isUnsigned: true)
!576 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126, isUnsigned: true)
!577 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127, isUnsigned: true)
!578 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128, isUnsigned: true)
!579 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129, isUnsigned: true)
!580 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130, isUnsigned: true)
!581 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131, isUnsigned: true)
!582 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132, isUnsigned: true)
!583 = !DIEnumerator(name: "_SC_BARRIERS", value: 133, isUnsigned: true)
!584 = !DIEnumerator(name: "_SC_BASE", value: 134, isUnsigned: true)
!585 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135, isUnsigned: true)
!586 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136, isUnsigned: true)
!587 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137, isUnsigned: true)
!588 = !DIEnumerator(name: "_SC_CPUTIME", value: 138, isUnsigned: true)
!589 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139, isUnsigned: true)
!590 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140, isUnsigned: true)
!591 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141, isUnsigned: true)
!592 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142, isUnsigned: true)
!593 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143, isUnsigned: true)
!594 = !DIEnumerator(name: "_SC_FIFO", value: 144, isUnsigned: true)
!595 = !DIEnumerator(name: "_SC_PIPE", value: 145, isUnsigned: true)
!596 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146, isUnsigned: true)
!597 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147, isUnsigned: true)
!598 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148, isUnsigned: true)
!599 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149, isUnsigned: true)
!600 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150, isUnsigned: true)
!601 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151, isUnsigned: true)
!602 = !DIEnumerator(name: "_SC_NETWORKING", value: 152, isUnsigned: true)
!603 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153, isUnsigned: true)
!604 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154, isUnsigned: true)
!605 = !DIEnumerator(name: "_SC_REGEXP", value: 155, isUnsigned: true)
!606 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156, isUnsigned: true)
!607 = !DIEnumerator(name: "_SC_SHELL", value: 157, isUnsigned: true)
!608 = !DIEnumerator(name: "_SC_SIGNALS", value: 158, isUnsigned: true)
!609 = !DIEnumerator(name: "_SC_SPAWN", value: 159, isUnsigned: true)
!610 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160, isUnsigned: true)
!611 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161, isUnsigned: true)
!612 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162, isUnsigned: true)
!613 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163, isUnsigned: true)
!614 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164, isUnsigned: true)
!615 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165, isUnsigned: true)
!616 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166, isUnsigned: true)
!617 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167, isUnsigned: true)
!618 = !DIEnumerator(name: "_SC_2_PBS", value: 168, isUnsigned: true)
!619 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169, isUnsigned: true)
!620 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170, isUnsigned: true)
!621 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171, isUnsigned: true)
!622 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172, isUnsigned: true)
!623 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173, isUnsigned: true)
!624 = !DIEnumerator(name: "_SC_STREAMS", value: 174, isUnsigned: true)
!625 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175, isUnsigned: true)
!626 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176, isUnsigned: true)
!627 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177, isUnsigned: true)
!628 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178, isUnsigned: true)
!629 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179, isUnsigned: true)
!630 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180, isUnsigned: true)
!631 = !DIEnumerator(name: "_SC_TRACE", value: 181, isUnsigned: true)
!632 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182, isUnsigned: true)
!633 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183, isUnsigned: true)
!634 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184, isUnsigned: true)
!635 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185, isUnsigned: true)
!636 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186, isUnsigned: true)
!637 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187, isUnsigned: true)
!638 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188, isUnsigned: true)
!639 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189, isUnsigned: true)
!640 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190, isUnsigned: true)
!641 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191, isUnsigned: true)
!642 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192, isUnsigned: true)
!643 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193, isUnsigned: true)
!644 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194, isUnsigned: true)
!645 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195, isUnsigned: true)
!646 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196, isUnsigned: true)
!647 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197, isUnsigned: true)
!648 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198, isUnsigned: true)
!649 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199, isUnsigned: true)
!650 = !DIEnumerator(name: "_SC_IPV6", value: 235, isUnsigned: true)
!651 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236, isUnsigned: true)
!652 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237, isUnsigned: true)
!653 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238, isUnsigned: true)
!654 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239, isUnsigned: true)
!655 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240, isUnsigned: true)
!656 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241, isUnsigned: true)
!657 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242, isUnsigned: true)
!658 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243, isUnsigned: true)
!659 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244, isUnsigned: true)
!660 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245, isUnsigned: true)
!661 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246, isUnsigned: true)
!662 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247, isUnsigned: true)
!663 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248, isUnsigned: true)
!664 = !{!665}
!665 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !668)
!667 = !DIFile(filename: "./lib/readtokens0.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!668 = !{!54, !52, !55, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !674)
!673 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!674 = !{!675}
!675 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !676, line: 40, baseType: !7, size: 32, elements: !677)
!676 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!677 = !{!678}
!678 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !681, retainedTypes: !436)
!680 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!681 = !{!682}
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !683, line: 41, baseType: !7, size: 32, elements: !684)
!683 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!684 = !{!685}
!685 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!686 = distinct !DICompileUnit(language: DW_LANG_C99, file: !687, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !688, retainedTypes: !701)
!687 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!688 = !{!689}
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !691, file: !690, line: 186, baseType: !7, size: 32, elements: !699)
!690 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!691 = distinct !DISubprogram(name: "x2nrealloc", scope: !690, file: !690, line: 174, type: !692, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!54, !54, !129, !55}
!694 = !{!695, !696, !697, !698}
!695 = !DILocalVariable(name: "p", arg: 1, scope: !691, file: !690, line: 174, type: !54)
!696 = !DILocalVariable(name: "pn", arg: 2, scope: !691, file: !690, line: 174, type: !129)
!697 = !DILocalVariable(name: "s", arg: 3, scope: !691, file: !690, line: 174, type: !55)
!698 = !DILocalVariable(name: "n", scope: !691, file: !690, line: 176, type: !55)
!699 = !{!700}
!700 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!701 = !{!55, !52, !54}
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328)
!703 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !436)
!705 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !707, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328)
!707 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !709, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !436)
!709 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!710 = distinct !DICompileUnit(language: DW_LANG_C99, file: !711, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !436)
!711 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !714)
!713 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!714 = !{!55}
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328)
!716 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328)
!718 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !720, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !721, retainedTypes: !436)
!720 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!721 = !{!722}
!722 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !723, line: 41, baseType: !7, size: 32, elements: !724)
!723 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!725 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!726 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!727 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!728 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!729 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!730 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!731 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!732 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!733 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!734 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!735 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!736 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!737 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!738 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!739 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!740 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!741 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!742 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!743 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!744 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!745 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!746 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!747 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!748 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!749 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!750 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!751 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!752 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!753 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!754 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!755 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!756 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!757 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!758 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!759 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!760 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!761 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!762 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!763 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!764 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!765 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!766 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!767 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!768 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!769 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!770 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!771 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!772 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!773 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!774 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!833 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!836 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!837 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!838 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!839 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!840 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!841 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!842 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!843 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!844 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!845 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!846 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!847 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!920 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!993 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!994 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!995 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!996 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!997 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!998 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!999 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1000 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1001 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1002 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1003 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1004 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1005 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1006 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1007 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1009 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1010 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1011 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1012 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1013 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1014 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1040 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1041 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1042 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1043 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1044 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1049 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1050 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1051 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1052 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1108 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!1109 = !{i32 2, !"Dwarf Version", i32 4}
!1110 = !{i32 2, !"Debug Info Version", i32 3}
!1111 = !{i32 1, !"wchar_size", i32 4}
!1112 = !{i32 7, !"PIC Level", i32 2}
!1113 = !{i32 7, !"PIE Level", i32 2}
!1114 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 109, type: !1115, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !58}
!1117 = !{!1118}
!1118 = !DILocalVariable(name: "status", arg: 1, scope: !1114, file: !3, line: 109, type: !58)
!1119 = !DILocalVariable(name: "infomap", scope: !1120, file: !1121, line: 632, type: !1135)
!1120 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1121, file: !1121, line: 630, type: !1122, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1124)
!1121 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !290}
!1124 = !{!1125, !1119, !1126, !1127, !1134}
!1125 = !DILocalVariable(name: "program", arg: 1, scope: !1120, file: !1121, line: 630, type: !290)
!1126 = !DILocalVariable(name: "node", scope: !1120, file: !1121, line: 642, type: !290)
!1127 = !DILocalVariable(name: "map_prog", scope: !1120, file: !1121, line: 643, type: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1120, file: !1121, line: 632, size: 128, elements: !1131)
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1130, file: !1121, line: 632, baseType: !290, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1130, file: !1121, line: 632, baseType: !290, size: 64, offset: 64)
!1134 = !DILocalVariable(name: "lc_messages", scope: !1120, file: !1121, line: 655, type: !290)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, size: 896, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 7)
!1138 = !DILocation(line: 632, column: 67, scope: !1120, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 145, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 114, column: 5)
!1141 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 111, column: 7)
!1142 = !DILocation(line: 109, column: 12, scope: !1114)
!1143 = !DILocation(line: 111, column: 14, scope: !1141)
!1144 = !DILocation(line: 111, column: 7, scope: !1114)
!1145 = !DILocation(line: 112, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 112, column: 5)
!1147 = !{!1148, !1148, i64 0}
!1148 = !{!"any pointer", !1149, i64 0}
!1149 = !{!"omnipotent char", !1150, i64 0}
!1150 = !{!"Simple C/C++ TBAA"}
!1151 = !DILocation(line: 115, column: 7, scope: !1140)
!1152 = !DILocation(line: 120, column: 7, scope: !1140)
!1153 = !DILocation(line: 580, column: 3, scope: !1154, inlinedAt: !1155)
!1154 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1121, file: !1121, line: 578, type: !431, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !328)
!1155 = distinct !DILocation(line: 126, column: 7, scope: !1140)
!1156 = !DILocation(line: 128, column: 7, scope: !1140)
!1157 = !DILocation(line: 136, column: 7, scope: !1140)
!1158 = !DILocation(line: 143, column: 7, scope: !1140)
!1159 = !DILocation(line: 144, column: 7, scope: !1140)
!1160 = !DILocation(line: 632, column: 3, scope: !1120, inlinedAt: !1139)
!1161 = !DILocation(line: 643, column: 36, scope: !1120, inlinedAt: !1139)
!1162 = !DILocation(line: 643, column: 25, scope: !1120, inlinedAt: !1139)
!1163 = !DILocation(line: 645, column: 33, scope: !1120, inlinedAt: !1139)
!1164 = !DILocation(line: 645, column: 3, scope: !1120, inlinedAt: !1139)
!1165 = !DILocation(line: 646, column: 13, scope: !1120, inlinedAt: !1139)
!1166 = !DILocation(line: 645, column: 20, scope: !1120, inlinedAt: !1139)
!1167 = !{!1168, !1148, i64 0}
!1168 = !{!"infomap", !1148, i64 0, !1148, i64 8}
!1169 = !DILocation(line: 645, column: 10, scope: !1120, inlinedAt: !1139)
!1170 = !DILocation(line: 645, column: 28, scope: !1120, inlinedAt: !1139)
!1171 = distinct !{!1171, !1172, !1173}
!1172 = !DILocation(line: 645, column: 3, scope: !1120)
!1173 = !DILocation(line: 646, column: 13, scope: !1120)
!1174 = !DILocation(line: 648, column: 17, scope: !1175, inlinedAt: !1139)
!1175 = distinct !DILexicalBlock(scope: !1120, file: !1121, line: 648, column: 7)
!1176 = !{!1168, !1148, i64 8}
!1177 = !DILocation(line: 648, column: 7, scope: !1175, inlinedAt: !1139)
!1178 = !DILocation(line: 648, column: 7, scope: !1120, inlinedAt: !1139)
!1179 = !DILocation(line: 642, column: 15, scope: !1120, inlinedAt: !1139)
!1180 = !DILocation(line: 651, column: 3, scope: !1120, inlinedAt: !1139)
!1181 = !DILocation(line: 655, column: 29, scope: !1120, inlinedAt: !1139)
!1182 = !DILocation(line: 655, column: 15, scope: !1120, inlinedAt: !1139)
!1183 = !DILocation(line: 656, column: 7, scope: !1184, inlinedAt: !1139)
!1184 = distinct !DILexicalBlock(scope: !1120, file: !1121, line: 656, column: 7)
!1185 = !DILocation(line: 656, column: 19, scope: !1184, inlinedAt: !1139)
!1186 = !DILocation(line: 656, column: 22, scope: !1184, inlinedAt: !1139)
!1187 = !DILocation(line: 656, column: 7, scope: !1120, inlinedAt: !1139)
!1188 = !DILocation(line: 662, column: 7, scope: !1189, inlinedAt: !1139)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !1121, line: 657, column: 5)
!1190 = !DILocation(line: 664, column: 5, scope: !1189, inlinedAt: !1139)
!1191 = !DILocation(line: 665, column: 3, scope: !1120, inlinedAt: !1139)
!1192 = !DILocation(line: 667, column: 3, scope: !1120, inlinedAt: !1139)
!1193 = !DILocation(line: 669, column: 1, scope: !1120, inlinedAt: !1139)
!1194 = !DILocation(line: 147, column: 3, scope: !1114)
!1195 = !DILocation(line: 661, column: 11, scope: !64)
!1196 = !DILocation(line: 661, column: 24, scope: !64)
!1197 = !DILocation(line: 667, column: 9, scope: !64)
!1198 = !DILocation(line: 669, column: 3, scope: !64)
!1199 = !DILocation(line: 672, column: 21, scope: !64)
!1200 = !DILocation(line: 672, column: 3, scope: !64)
!1201 = !DILocation(line: 673, column: 3, scope: !64)
!1202 = !DILocation(line: 674, column: 3, scope: !64)
!1203 = !DILocation(line: 675, column: 3, scope: !64)
!1204 = !DILocation(line: 677, column: 3, scope: !64)
!1205 = !DILocation(line: 679, column: 15, scope: !64)
!1206 = !DILocation(line: 679, column: 13, scope: !64)
!1207 = !{!1208, !1208, i64 0}
!1208 = !{!"long", !1149, i64 0}
!1209 = !DILocation(line: 682, column: 12, scope: !64)
!1210 = !DILocation(line: 682, column: 3, scope: !64)
!1211 = !DILocation(line: 686, column: 75, scope: !64)
!1212 = !DILocation(line: 686, column: 57, scope: !64)
!1213 = !DILocation(line: 686, column: 43, scope: !64)
!1214 = !DILocation(line: 686, column: 29, scope: !64)
!1215 = !DILocation(line: 686, column: 15, scope: !64)
!1216 = !DILocation(line: 688, column: 3, scope: !64)
!1217 = !DILocation(line: 688, column: 18, scope: !64)
!1218 = !DILocation(line: 664, column: 7, scope: !64)
!1219 = !DILocation(line: 693, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !64, file: !3, line: 690, column: 7)
!1221 = !DILocation(line: 697, column: 9, scope: !1220)
!1222 = !DILocation(line: 701, column: 9, scope: !1220)
!1223 = !DILocation(line: 705, column: 9, scope: !1220)
!1224 = !DILocation(line: 709, column: 9, scope: !1220)
!1225 = distinct !{!1225, !1216, !1226}
!1226 = !DILocation(line: 721, column: 7, scope: !64)
!1227 = !DILocation(line: 712, column: 22, scope: !1220)
!1228 = !DILocation(line: 713, column: 9, scope: !1220)
!1229 = !DILocation(line: 715, column: 7, scope: !1220)
!1230 = !DILocation(line: 717, column: 7, scope: !1220)
!1231 = !DILocation(line: 720, column: 9, scope: !1220)
!1232 = !DILocation(line: 723, column: 22, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !64, file: !3, line: 723, column: 7)
!1234 = !DILocation(line: 723, column: 37, scope: !1233)
!1235 = !DILocation(line: 723, column: 52, scope: !1233)
!1236 = !DILocation(line: 724, column: 10, scope: !1233)
!1237 = !DILocation(line: 723, column: 7, scope: !64)
!1238 = !DILocation(line: 725, column: 5, scope: !1233)
!1239 = !DILocation(line: 727, column: 8, scope: !64)
!1240 = !DILocation(line: 729, column: 7, scope: !188)
!1241 = !DILocation(line: 0, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !188, file: !3, line: 777, column: 5)
!1243 = !{!1244, !1244, i64 0}
!1244 = !{!"int", !1149, i64 0}
!1245 = !DILocation(line: 729, column: 7, scope: !64)
!1246 = !DILocation(line: 735, column: 11, scope: !187)
!1247 = !DILocation(line: 737, column: 24, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 736, column: 9)
!1249 = distinct !DILexicalBlock(scope: !187, file: !3, line: 735, column: 11)
!1250 = !DILocation(line: 737, column: 47, scope: !1248)
!1251 = !DILocation(line: 737, column: 11, scope: !1248)
!1252 = !DILocation(line: 738, column: 11, scope: !1248)
!1253 = !DILocation(line: 740, column: 11, scope: !1248)
!1254 = !DILocation(line: 743, column: 11, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !187, file: !3, line: 743, column: 11)
!1256 = !DILocation(line: 743, column: 11, scope: !187)
!1257 = !DILocation(line: 744, column: 18, scope: !1255)
!1258 = !DILocation(line: 731, column: 13, scope: !187)
!1259 = !DILocation(line: 744, column: 9, scope: !1255)
!1260 = !DILocation(line: 747, column: 20, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 746, column: 9)
!1262 = !DILocation(line: 748, column: 22, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 748, column: 15)
!1264 = !DILocation(line: 748, column: 15, scope: !1261)
!1265 = !DILocation(line: 749, column: 13, scope: !1263)
!1266 = !DILocation(line: 0, scope: !1261)
!1267 = !DILocation(line: 755, column: 7, scope: !187)
!1268 = !DILocation(line: 756, column: 18, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !187, file: !3, line: 756, column: 11)
!1270 = !DILocation(line: 755, column: 19, scope: !187)
!1271 = !DILocalVariable(name: "__fd", arg: 1, scope: !1272, file: !1273, line: 467, type: !58)
!1272 = distinct !DISubprogram(name: "fstat", scope: !1273, file: !1273, line: 467, type: !1274, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1277)
!1273 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!58, !58, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1277 = !{!1271, !1278}
!1278 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1272, file: !1273, line: 467, type: !1276)
!1279 = !DILocation(line: 467, column: 1, scope: !1272, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 756, column: 11, scope: !1269)
!1281 = !DILocation(line: 469, column: 10, scope: !1272, inlinedAt: !1280)
!1282 = !DILocation(line: 756, column: 40, scope: !1269)
!1283 = !DILocation(line: 757, column: 11, scope: !1269)
!1284 = !DILocation(line: 757, column: 14, scope: !1269)
!1285 = !{!1286, !1244, i64 24}
!1286 = !{!"stat", !1208, i64 0, !1208, i64 8, !1208, i64 16, !1244, i64 24, !1244, i64 28, !1244, i64 32, !1244, i64 36, !1208, i64 40, !1208, i64 48, !1208, i64 56, !1208, i64 64, !1287, i64 72, !1287, i64 88, !1287, i64 104, !1149, i64 120}
!1287 = !{!"timespec", !1208, i64 0, !1208, i64 8}
!1288 = !DILocation(line: 758, column: 11, scope: !1269)
!1289 = !DILocation(line: 758, column: 17, scope: !1269)
!1290 = !{!1286, !1208, i64 48}
!1291 = !DILocation(line: 758, column: 14, scope: !1269)
!1292 = !DILocation(line: 758, column: 28, scope: !1269)
!1293 = !DILocation(line: 758, column: 25, scope: !1269)
!1294 = !DILocation(line: 756, column: 11, scope: !187)
!1295 = !DILocation(line: 669, column: 17, scope: !64)
!1296 = !DILocation(line: 761, column: 11, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 759, column: 9)
!1298 = !DILocation(line: 762, column: 17, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 762, column: 15)
!1300 = !DILocation(line: 762, column: 44, scope: !1299)
!1301 = !DILocation(line: 762, column: 47, scope: !1299)
!1302 = !DILocation(line: 762, column: 63, scope: !1299)
!1303 = !DILocation(line: 762, column: 15, scope: !1297)
!1304 = !DILocation(line: 763, column: 13, scope: !1299)
!1305 = !DILocation(line: 765, column: 23, scope: !1297)
!1306 = !{!1307, !1148, i64 8}
!1307 = !{!"Tokens", !1208, i64 0, !1148, i64 8, !1148, i64 16, !1308, i64 24, !1308, i64 112, !1308, i64 200}
!1308 = !{!"obstack", !1208, i64 0, !1148, i64 8, !1148, i64 16, !1148, i64 24, !1148, i64 32, !1149, i64 40, !1208, i64 48, !1149, i64 56, !1149, i64 64, !1148, i64 72, !1244, i64 80, !1244, i64 80, !1244, i64 80}
!1309 = !DILocation(line: 666, column: 10, scope: !64)
!1310 = !DILocation(line: 766, column: 24, scope: !1297)
!1311 = !{!1307, !1208, i64 0}
!1312 = !DILocation(line: 665, column: 10, scope: !64)
!1313 = !DILocation(line: 767, column: 16, scope: !1297)
!1314 = !DILocation(line: 728, column: 25, scope: !64)
!1315 = !DILocation(line: 768, column: 9, scope: !1297)
!1316 = !DILocation(line: 773, column: 16, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 770, column: 9)
!1318 = !DILocation(line: 0, scope: !1317)
!1319 = !DILocation(line: 0, scope: !64)
!1320 = !DILocation(line: 775, column: 5, scope: !188)
!1321 = !DILocation(line: 775, column: 5, scope: !187)
!1322 = !DILocation(line: 779, column: 37, scope: !1242)
!1323 = !DILocation(line: 779, column: 16, scope: !1242)
!1324 = !DILocation(line: 780, column: 38, scope: !1242)
!1325 = !DILocation(line: 780, column: 17, scope: !1242)
!1326 = !DILocation(line: 781, column: 12, scope: !1242)
!1327 = !DILocation(line: 784, column: 8, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !64, file: !3, line: 784, column: 7)
!1329 = !DILocation(line: 784, column: 7, scope: !64)
!1330 = !DILocation(line: 785, column: 5, scope: !1328)
!1331 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1332, file: !3, line: 606, type: !55)
!1332 = distinct !DISubprogram(name: "get_input_fstatus", scope: !3, file: !3, line: 606, type: !1333, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1337)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!78, !55, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1337 = !{!1331, !1338, !1339, !1340}
!1338 = !DILocalVariable(name: "file", arg: 2, scope: !1332, file: !3, line: 606, type: !1335)
!1339 = !DILocalVariable(name: "fstatus", scope: !1332, file: !3, line: 608, type: !78)
!1340 = !DILocalVariable(name: "i", scope: !1341, file: !3, line: 618, type: !55)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 618, column: 7)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 617, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 610, column: 7)
!1344 = !DILocation(line: 606, column: 27, scope: !1332, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 787, column: 13, scope: !64)
!1346 = !DILocation(line: 606, column: 48, scope: !1332, inlinedAt: !1345)
!1347 = !DILocation(line: 608, column: 39, scope: !1332, inlinedAt: !1345)
!1348 = !DILocalVariable(name: "n", arg: 1, scope: !1349, file: !690, line: 99, type: !55)
!1349 = distinct !DISubprogram(name: "xnmalloc", scope: !690, file: !690, line: 99, type: !1350, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!54, !55, !55}
!1352 = !{!1348, !1353}
!1353 = !DILocalVariable(name: "s", arg: 2, scope: !1349, file: !690, line: 99, type: !55)
!1354 = !DILocation(line: 99, column: 18, scope: !1349, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 608, column: 29, scope: !1332, inlinedAt: !1345)
!1356 = !DILocation(line: 99, column: 28, scope: !1349, inlinedAt: !1355)
!1357 = !DILocation(line: 101, column: 7, scope: !1358, inlinedAt: !1355)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !690, line: 101, column: 7)
!1359 = !DILocation(line: 101, column: 7, scope: !1349, inlinedAt: !1355)
!1360 = !DILocation(line: 102, column: 5, scope: !1358, inlinedAt: !1355)
!1361 = !DILocation(line: 103, column: 21, scope: !1349, inlinedAt: !1355)
!1362 = !DILocation(line: 103, column: 10, scope: !1349, inlinedAt: !1355)
!1363 = !DILocation(line: 608, column: 29, scope: !1332, inlinedAt: !1345)
!1364 = !DILocation(line: 608, column: 19, scope: !1332, inlinedAt: !1345)
!1365 = !DILocation(line: 611, column: 7, scope: !1343, inlinedAt: !1345)
!1366 = !DILocation(line: 619, column: 32, scope: !1367, inlinedAt: !1345)
!1367 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 618, column: 7)
!1368 = !DILocation(line: 612, column: 16, scope: !1343, inlinedAt: !1345)
!1369 = !DILocation(line: 612, column: 30, scope: !1343, inlinedAt: !1345)
!1370 = !DILocation(line: 612, column: 28, scope: !1343, inlinedAt: !1345)
!1371 = !DILocation(line: 612, column: 44, scope: !1343, inlinedAt: !1345)
!1372 = !DILocation(line: 612, column: 42, scope: !1343, inlinedAt: !1345)
!1373 = !DILocation(line: 613, column: 18, scope: !1343, inlinedAt: !1345)
!1374 = !DILocation(line: 613, column: 16, scope: !1343, inlinedAt: !1345)
!1375 = !DILocation(line: 613, column: 32, scope: !1343, inlinedAt: !1345)
!1376 = !DILocation(line: 613, column: 30, scope: !1343, inlinedAt: !1345)
!1377 = !DILocation(line: 614, column: 15, scope: !1343, inlinedAt: !1345)
!1378 = !DILocation(line: 610, column: 7, scope: !1332, inlinedAt: !1345)
!1379 = !DILocation(line: 615, column: 16, scope: !1343, inlinedAt: !1345)
!1380 = !DILocation(line: 615, column: 23, scope: !1343, inlinedAt: !1345)
!1381 = !{!1382, !1244, i64 0}
!1382 = !{!"fstatus", !1244, i64 0, !1286, i64 8}
!1383 = !DILocation(line: 615, column: 5, scope: !1343, inlinedAt: !1345)
!1384 = !DILocation(line: 618, column: 19, scope: !1341, inlinedAt: !1345)
!1385 = !DILocation(line: 619, column: 40, scope: !1367, inlinedAt: !1345)
!1386 = !DILocation(line: 619, column: 43, scope: !1367, inlinedAt: !1345)
!1387 = !DILocation(line: 619, column: 30, scope: !1367, inlinedAt: !1345)
!1388 = !DILocation(line: 620, column: 65, scope: !1367, inlinedAt: !1345)
!1389 = !DILocation(line: 467, column: 1, scope: !1272, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 620, column: 32, scope: !1367, inlinedAt: !1345)
!1391 = !DILocation(line: 469, column: 10, scope: !1272, inlinedAt: !1390)
!1392 = !DILocation(line: 621, column: 59, scope: !1367, inlinedAt: !1345)
!1393 = !DILocalVariable(name: "__path", arg: 1, scope: !1394, file: !1273, line: 453, type: !290)
!1394 = distinct !DISubprogram(name: "stat", scope: !1273, file: !1273, line: 453, type: !1395, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!58, !290, !1276}
!1397 = !{!1393, !1398}
!1398 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1394, file: !1273, line: 453, type: !1276)
!1399 = !DILocation(line: 453, column: 1, scope: !1394, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 621, column: 32, scope: !1367, inlinedAt: !1345)
!1401 = !DILocation(line: 455, column: 10, scope: !1394, inlinedAt: !1400)
!1402 = !DILocation(line: 619, column: 20, scope: !1367, inlinedAt: !1345)
!1403 = !DILocation(line: 619, column: 27, scope: !1367, inlinedAt: !1345)
!1404 = !DILocation(line: 618, column: 39, scope: !1367, inlinedAt: !1345)
!1405 = !DILocation(line: 618, column: 28, scope: !1367, inlinedAt: !1345)
!1406 = !DILocation(line: 618, column: 7, scope: !1341, inlinedAt: !1345)
!1407 = distinct !{!1407, !1408, !1409}
!1408 = !DILocation(line: 618, column: 7, scope: !1341)
!1409 = !DILocation(line: 621, column: 62, scope: !1341)
!1410 = !DILocation(line: 668, column: 19, scope: !64)
!1411 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1412, file: !3, line: 632, type: !55)
!1412 = distinct !DISubprogram(name: "compute_number_width", scope: !3, file: !3, line: 632, type: !1413, isLocal: true, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1417)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!58, !55, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1417 = !{!1411, !1418, !1419, !1420, !1423, !1424}
!1418 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1412, file: !3, line: 632, type: !1415)
!1419 = !DILocalVariable(name: "width", scope: !1412, file: !3, line: 634, type: !58)
!1420 = !DILocalVariable(name: "minimum_width", scope: !1421, file: !3, line: 638, type: !58)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 637, column: 5)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 636, column: 7)
!1423 = !DILocalVariable(name: "regular_total", scope: !1421, file: !3, line: 639, type: !257)
!1424 = !DILocalVariable(name: "i", scope: !1425, file: !3, line: 641, type: !55)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 641, column: 7)
!1426 = !DILocation(line: 632, column: 30, scope: !1412, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 788, column: 18, scope: !64)
!1428 = !DILocation(line: 632, column: 60, scope: !1412, inlinedAt: !1427)
!1429 = !DILocation(line: 634, column: 7, scope: !1412, inlinedAt: !1427)
!1430 = !DILocation(line: 636, column: 18, scope: !1422, inlinedAt: !1427)
!1431 = !DILocation(line: 636, column: 32, scope: !1422, inlinedAt: !1427)
!1432 = !DILocation(line: 636, column: 39, scope: !1422, inlinedAt: !1427)
!1433 = !DILocation(line: 636, column: 7, scope: !1412, inlinedAt: !1427)
!1434 = !DILocation(line: 638, column: 11, scope: !1421, inlinedAt: !1427)
!1435 = !DILocation(line: 639, column: 17, scope: !1421, inlinedAt: !1427)
!1436 = !DILocation(line: 650, column: 17, scope: !1437, inlinedAt: !1427)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 650, column: 7)
!1438 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 650, column: 7)
!1439 = !DILocation(line: 650, column: 7, scope: !1438, inlinedAt: !1427)
!1440 = !DILocation(line: 642, column: 26, scope: !1441, inlinedAt: !1427)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 642, column: 13)
!1442 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 641, column: 7)
!1443 = !DILocation(line: 641, column: 19, scope: !1425, inlinedAt: !1427)
!1444 = !DILocation(line: 642, column: 15, scope: !1441, inlinedAt: !1427)
!1445 = !DILocation(line: 642, column: 13, scope: !1442, inlinedAt: !1427)
!1446 = !DILocation(line: 644, column: 17, scope: !1447, inlinedAt: !1427)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 644, column: 17)
!1448 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 643, column: 11)
!1449 = !{!1382, !1244, i64 32}
!1450 = !DILocation(line: 644, column: 17, scope: !1448, inlinedAt: !1427)
!1451 = !DILocation(line: 645, column: 46, scope: !1447, inlinedAt: !1427)
!1452 = !{!1382, !1208, i64 56}
!1453 = !DILocation(line: 645, column: 29, scope: !1447, inlinedAt: !1427)
!1454 = !DILocation(line: 645, column: 15, scope: !1447, inlinedAt: !1427)
!1455 = !DILocation(line: 0, scope: !1447, inlinedAt: !1427)
!1456 = !DILocation(line: 0, scope: !1421, inlinedAt: !1427)
!1457 = !DILocation(line: 641, column: 39, scope: !1442, inlinedAt: !1427)
!1458 = !DILocation(line: 641, column: 28, scope: !1442, inlinedAt: !1427)
!1459 = !DILocation(line: 641, column: 7, scope: !1425, inlinedAt: !1427)
!1460 = distinct !{!1460, !1461, !1462}
!1461 = !DILocation(line: 641, column: 7, scope: !1425)
!1462 = !DILocation(line: 648, column: 11, scope: !1425)
!1463 = !DILocation(line: 651, column: 14, scope: !1437, inlinedAt: !1427)
!1464 = !DILocation(line: 650, column: 49, scope: !1437, inlinedAt: !1427)
!1465 = distinct !{!1465, !1466, !1467}
!1466 = !DILocation(line: 650, column: 7, scope: !1438)
!1467 = !DILocation(line: 651, column: 14, scope: !1438)
!1468 = !DILocation(line: 0, scope: !1437, inlinedAt: !1427)
!1469 = !DILocation(line: 652, column: 17, scope: !1470, inlinedAt: !1427)
!1470 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 652, column: 11)
!1471 = !DILocation(line: 652, column: 11, scope: !1421, inlinedAt: !1427)
!1472 = !DILocation(line: 654, column: 5, scope: !1421, inlinedAt: !1427)
!1473 = !DILocation(line: 0, scope: !1412, inlinedAt: !1427)
!1474 = !DILocation(line: 788, column: 16, scope: !64)
!1475 = !DILocation(line: 663, column: 8, scope: !64)
!1476 = !DILocation(line: 791, column: 12, scope: !243)
!1477 = !DILocation(line: 793, column: 12, scope: !245)
!1478 = !DILocation(line: 794, column: 7, scope: !245)
!1479 = !DILocation(line: 794, column: 26, scope: !245)
!1480 = !DILocation(line: 795, column: 25, scope: !245)
!1481 = !DILocation(line: 795, column: 13, scope: !245)
!1482 = !DILocation(line: 796, column: 12, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !245, file: !3, line: 796, column: 11)
!1484 = !DILocation(line: 796, column: 11, scope: !245)
!1485 = !DILocation(line: 0, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !245, file: !3, line: 843, column: 11)
!1487 = !DILocation(line: 798, column: 19, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 797, column: 9)
!1489 = !{!1149, !1149, i64 0}
!1490 = !DILocation(line: 798, column: 11, scope: !1488)
!1491 = !DILocation(line: 803, column: 25, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 799, column: 13)
!1493 = !DILocation(line: 803, column: 32, scope: !1492)
!1494 = !DILocation(line: 804, column: 22, scope: !1492)
!1495 = !DILocation(line: 803, column: 15, scope: !1492)
!1496 = !DILocation(line: 850, column: 5, scope: !246)
!1497 = !DILocation(line: 856, column: 10, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !64, file: !3, line: 856, column: 7)
!1499 = !DILocation(line: 808, column: 15, scope: !1492)
!1500 = !DILocation(line: 810, column: 15, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 810, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 810, column: 15)
!1503 = !DILocation(line: 813, column: 22, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !245, file: !3, line: 813, column: 11)
!1505 = !DILocation(line: 813, column: 25, scope: !1504)
!1506 = !DILocation(line: 813, column: 49, scope: !1504)
!1507 = !DILocation(line: 813, column: 52, scope: !1504)
!1508 = !DILocation(line: 813, column: 11, scope: !245)
!1509 = !DILocation(line: 817, column: 24, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 814, column: 9)
!1511 = !DILocation(line: 819, column: 18, scope: !1510)
!1512 = !DILocation(line: 817, column: 11, scope: !1510)
!1513 = !DILocation(line: 821, column: 9, scope: !1510)
!1514 = !DILocation(line: 0, scope: !245)
!1515 = !DILocation(line: 823, column: 12, scope: !253)
!1516 = !DILocation(line: 823, column: 11, scope: !245)
!1517 = !DILocation(line: 829, column: 15, scope: !252)
!1518 = !DILocation(line: 830, column: 32, scope: !251)
!1519 = !DILocation(line: 830, column: 13, scope: !251)
!1520 = !DILocation(line: 836, column: 47, scope: !250)
!1521 = !DILocation(line: 836, column: 33, scope: !250)
!1522 = !DILocation(line: 837, column: 42, scope: !250)
!1523 = !DILocation(line: 838, column: 35, scope: !250)
!1524 = !DILocation(line: 837, column: 15, scope: !250)
!1525 = !DILocation(line: 843, column: 11, scope: !245)
!1526 = !DILocation(line: 846, column: 36, scope: !1486)
!1527 = !DILocalVariable(name: "file", arg: 1, scope: !1528, file: !3, line: 570, type: !290)
!1528 = distinct !DISubprogram(name: "wc_file", scope: !3, file: !3, line: 570, type: !1529, isLocal: true, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!72, !290, !78}
!1531 = !{!1527, !1532, !1533, !1536}
!1532 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1528, file: !3, line: 570, type: !78)
!1533 = !DILocalVariable(name: "fd", scope: !1534, file: !3, line: 580, type: !58)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 579, column: 5)
!1535 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 572, column: 7)
!1536 = !DILocalVariable(name: "ok", scope: !1537, file: !3, line: 588, type: !72)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 587, column: 9)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 581, column: 11)
!1539 = !DILocation(line: 570, column: 22, scope: !1528, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 846, column: 15, scope: !1486)
!1541 = !DILocation(line: 570, column: 44, scope: !1528, inlinedAt: !1540)
!1542 = !DILocation(line: 572, column: 17, scope: !1535, inlinedAt: !1540)
!1543 = !DILocation(line: 572, column: 7, scope: !1528, inlinedAt: !1540)
!1544 = !DILocation(line: 576, column: 14, scope: !1545, inlinedAt: !1540)
!1545 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 573, column: 5)
!1546 = !DILocation(line: 576, column: 7, scope: !1545, inlinedAt: !1540)
!1547 = !DILocation(line: 580, column: 16, scope: !1534, inlinedAt: !1540)
!1548 = !DILocation(line: 580, column: 11, scope: !1534, inlinedAt: !1540)
!1549 = !DILocation(line: 581, column: 14, scope: !1538, inlinedAt: !1540)
!1550 = !DILocation(line: 581, column: 11, scope: !1534, inlinedAt: !1540)
!1551 = !DILocation(line: 583, column: 21, scope: !1552, inlinedAt: !1540)
!1552 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 582, column: 9)
!1553 = !DILocation(line: 583, column: 34, scope: !1552, inlinedAt: !1540)
!1554 = !DILocation(line: 583, column: 11, scope: !1552, inlinedAt: !1540)
!1555 = !DILocation(line: 584, column: 11, scope: !1552, inlinedAt: !1540)
!1556 = !DILocation(line: 588, column: 21, scope: !1537, inlinedAt: !1540)
!1557 = !DILocation(line: 589, column: 15, scope: !1558, inlinedAt: !1540)
!1558 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 589, column: 15)
!1559 = !DILocation(line: 589, column: 26, scope: !1558, inlinedAt: !1540)
!1560 = !DILocation(line: 589, column: 15, scope: !1537, inlinedAt: !1540)
!1561 = !DILocation(line: 591, column: 25, scope: !1562, inlinedAt: !1540)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 590, column: 13)
!1563 = !DILocation(line: 591, column: 38, scope: !1562, inlinedAt: !1540)
!1564 = !DILocation(line: 591, column: 15, scope: !1562, inlinedAt: !1540)
!1565 = !DILocation(line: 592, column: 15, scope: !1562, inlinedAt: !1540)
!1566 = !DILocation(line: 0, scope: !1552, inlinedAt: !1540)
!1567 = !DILocation(line: 846, column: 15, scope: !1486)
!1568 = !DILocation(line: 846, column: 12, scope: !1486)
!1569 = !DILocation(line: 848, column: 11, scope: !245)
!1570 = !DILocation(line: 849, column: 27, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !245, file: !3, line: 848, column: 11)
!1572 = !DILocation(line: 849, column: 9, scope: !1571)
!1573 = !DILocation(line: 791, column: 27, scope: !246)
!1574 = distinct !{!1574, !1575, !1576}
!1575 = !DILocation(line: 791, column: 3, scope: !243)
!1576 = !DILocation(line: 850, column: 5, scope: !243)
!1577 = !DILocation(line: 856, column: 7, scope: !1498)
!1578 = !DILocation(line: 856, column: 28, scope: !1498)
!1579 = !DILocation(line: 856, column: 50, scope: !1498)
!1580 = !DILocation(line: 856, column: 7, scope: !64)
!1581 = !DILocation(line: 570, column: 22, scope: !1528, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 857, column: 11, scope: !1498)
!1583 = !DILocation(line: 570, column: 44, scope: !1528, inlinedAt: !1582)
!1584 = !DILocation(line: 576, column: 14, scope: !1545, inlinedAt: !1582)
!1585 = !DILocation(line: 857, column: 11, scope: !1498)
!1586 = !DILocation(line: 857, column: 8, scope: !1498)
!1587 = !DILocation(line: 857, column: 5, scope: !1498)
!1588 = !DILocation(line: 859, column: 7, scope: !64)
!1589 = !DILocation(line: 860, column: 5, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !64, file: !3, line: 859, column: 7)
!1591 = !DILocation(line: 862, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !64, file: !3, line: 862, column: 7)
!1593 = !DILocation(line: 862, column: 9, scope: !1592)
!1594 = !DILocation(line: 862, column: 7, scope: !64)
!1595 = !DILocation(line: 863, column: 19, scope: !1592)
!1596 = !DILocation(line: 863, column: 32, scope: !1592)
!1597 = !DILocation(line: 863, column: 45, scope: !1592)
!1598 = !DILocation(line: 863, column: 58, scope: !1592)
!1599 = !DILocation(line: 864, column: 19, scope: !1592)
!1600 = !DILocation(line: 864, column: 36, scope: !1592)
!1601 = !DILocation(line: 863, column: 5, scope: !1592)
!1602 = !DILocation(line: 866, column: 3, scope: !64)
!1603 = !DILocation(line: 868, column: 3, scope: !64)
!1604 = !DILocation(line: 870, column: 23, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !64, file: !3, line: 870, column: 7)
!1606 = !DILocation(line: 870, column: 26, scope: !1605)
!1607 = !DILocation(line: 870, column: 47, scope: !1605)
!1608 = !DILocation(line: 870, column: 7, scope: !64)
!1609 = !DILocation(line: 871, column: 5, scope: !1605)
!1610 = !DILocation(line: 873, column: 10, scope: !64)
!1611 = !DILocation(line: 874, column: 1, scope: !64)
!1612 = distinct !DISubprogram(name: "wc", scope: !3, file: !3, line: 198, type: !1613, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1617)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!72, !58, !290, !78, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1616, line: 63, baseType: !102)
!1616 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1640, !1643, !1646, !1649, !1651, !1652, !1653, !1656, !1657, !1673, !1674, !1675, !1677, !1678, !1681, !1682, !1683, !1689, !1691, !1692}
!1618 = !DILocalVariable(name: "fd", arg: 1, scope: !1612, file: !3, line: 198, type: !58)
!1619 = !DILocalVariable(name: "file_x", arg: 2, scope: !1612, file: !3, line: 198, type: !290)
!1620 = !DILocalVariable(name: "fstatus", arg: 3, scope: !1612, file: !3, line: 198, type: !78)
!1621 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1612, file: !3, line: 198, type: !1615)
!1622 = !DILocalVariable(name: "ok", scope: !1612, file: !3, line: 200, type: !72)
!1623 = !DILocalVariable(name: "buf", scope: !1612, file: !3, line: 201, type: !1624)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 131080, elements: !1625)
!1625 = !{!1626}
!1626 = !DISubrange(count: 16385)
!1627 = !DILocalVariable(name: "bytes_read", scope: !1612, file: !3, line: 202, type: !55)
!1628 = !DILocalVariable(name: "lines", scope: !1612, file: !3, line: 203, type: !257)
!1629 = !DILocalVariable(name: "words", scope: !1612, file: !3, line: 203, type: !257)
!1630 = !DILocalVariable(name: "chars", scope: !1612, file: !3, line: 203, type: !257)
!1631 = !DILocalVariable(name: "bytes", scope: !1612, file: !3, line: 203, type: !257)
!1632 = !DILocalVariable(name: "linelength", scope: !1612, file: !3, line: 203, type: !257)
!1633 = !DILocalVariable(name: "count_bytes", scope: !1612, file: !3, line: 204, type: !72)
!1634 = !DILocalVariable(name: "count_chars", scope: !1612, file: !3, line: 204, type: !72)
!1635 = !DILocalVariable(name: "count_complicated", scope: !1612, file: !3, line: 204, type: !72)
!1636 = !DILocalVariable(name: "file", scope: !1612, file: !3, line: 205, type: !290)
!1637 = !DILocalVariable(name: "skip_read", scope: !1638, file: !3, line: 241, type: !72)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 240, column: 5)
!1639 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 239, column: 7)
!1640 = !DILocalVariable(name: "end_pos", scope: !1641, file: !3, line: 252, type: !55)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 251, column: 9)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 249, column: 11)
!1643 = !DILocalVariable(name: "hi_pos", scope: !1644, file: !3, line: 271, type: !1615)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 270, column: 13)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 256, column: 15)
!1646 = !DILocalVariable(name: "long_lines", scope: !1647, file: !3, line: 297, type: !72)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 294, column: 5)
!1648 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 293, column: 12)
!1649 = !DILocalVariable(name: "p", scope: !1650, file: !3, line: 309, type: !52)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 299, column: 9)
!1651 = !DILocalVariable(name: "end", scope: !1650, file: !3, line: 310, type: !52)
!1652 = !DILocalVariable(name: "plines", scope: !1650, file: !3, line: 311, type: !257)
!1653 = !DILocalVariable(name: "in_word", scope: !1654, file: !3, line: 345, type: !72)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 344, column: 5)
!1655 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 343, column: 12)
!1656 = !DILocalVariable(name: "linepos", scope: !1654, file: !3, line: 346, type: !257)
!1657 = !DILocalVariable(name: "state", scope: !1654, file: !3, line: 347, type: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1659, line: 6, baseType: !1660)
!1659 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1661, line: 21, baseType: !1662)
!1661 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1661, line: 13, size: 64, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1662, file: !1661, line: 15, baseType: !58, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1662, file: !1661, line: 20, baseType: !1666, size: 32, offset: 32)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1661, line: 16, size: 32, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1666, file: !1661, line: 18, baseType: !7, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1666, file: !1661, line: 19, baseType: !1670, size: 32)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 4)
!1673 = !DILocalVariable(name: "in_shift", scope: !1654, file: !3, line: 348, type: !72)
!1674 = !DILocalVariable(name: "prev", scope: !1654, file: !3, line: 357, type: !55)
!1675 = !DILocalVariable(name: "p", scope: !1676, file: !3, line: 364, type: !290)
!1676 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 363, column: 9)
!1677 = !DILocalVariable(name: "backup_state", scope: !1676, file: !3, line: 366, type: !1658)
!1678 = !DILocalVariable(name: "wide_char", scope: !1679, file: !3, line: 380, type: !1680)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 379, column: 13)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !56, line: 90, baseType: !58)
!1681 = !DILocalVariable(name: "n", scope: !1679, file: !3, line: 381, type: !55)
!1682 = !DILocalVariable(name: "wide", scope: !1679, file: !3, line: 382, type: !72)
!1683 = !DILocalVariable(name: "width", scope: !1684, file: !3, line: 454, type: !58)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 453, column: 25)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 452, column: 27)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 449, column: 21)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 448, column: 23)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 426, column: 17)
!1689 = !DILocalVariable(name: "in_word", scope: !1690, file: !3, line: 499, type: !72)
!1690 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 498, column: 5)
!1691 = !DILocalVariable(name: "linepos", scope: !1690, file: !3, line: 500, type: !257)
!1692 = !DILocalVariable(name: "p", scope: !1693, file: !3, line: 504, type: !290)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 503, column: 9)
!1694 = !DILocation(line: 198, column: 9, scope: !1612)
!1695 = !DILocation(line: 198, column: 25, scope: !1612)
!1696 = !DILocation(line: 198, column: 49, scope: !1612)
!1697 = !DILocation(line: 198, column: 64, scope: !1612)
!1698 = !DILocation(line: 200, column: 8, scope: !1612)
!1699 = !DILocation(line: 201, column: 3, scope: !1612)
!1700 = !DILocation(line: 201, column: 8, scope: !1612)
!1701 = !DILocation(line: 205, column: 22, scope: !1612)
!1702 = !DILocation(line: 205, column: 40, scope: !1612)
!1703 = !DILocation(line: 205, column: 15, scope: !1612)
!1704 = !DILocation(line: 203, column: 41, scope: !1612)
!1705 = !DILocation(line: 203, column: 34, scope: !1612)
!1706 = !DILocation(line: 203, column: 27, scope: !1612)
!1707 = !DILocation(line: 203, column: 20, scope: !1612)
!1708 = !DILocation(line: 203, column: 13, scope: !1612)
!1709 = !DILocation(line: 212, column: 7, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 212, column: 7)
!1711 = !DILocation(line: 212, column: 18, scope: !1710)
!1712 = !DILocation(line: 212, column: 7, scope: !1612)
!1713 = !DILocation(line: 223, column: 35, scope: !1612)
!1714 = !DILocation(line: 226, column: 20, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 226, column: 7)
!1716 = !DILocation(line: 226, column: 50, scope: !1715)
!1717 = !DILocation(line: 227, column: 5, scope: !1715)
!1718 = !DILocation(line: 239, column: 51, scope: !1639)
!1719 = !DILocation(line: 239, column: 19, scope: !1639)
!1720 = !DILocation(line: 241, column: 12, scope: !1638)
!1721 = !DILocation(line: 243, column: 24, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 243, column: 11)
!1723 = !DILocation(line: 243, column: 13, scope: !1722)
!1724 = !DILocation(line: 243, column: 11, scope: !1638)
!1725 = !DILocation(line: 244, column: 48, scope: !1722)
!1726 = !DILocation(line: 467, column: 1, scope: !1272, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 244, column: 27, scope: !1722)
!1728 = !DILocation(line: 469, column: 10, scope: !1272, inlinedAt: !1727)
!1729 = !DILocation(line: 244, column: 25, scope: !1722)
!1730 = !DILocation(line: 244, column: 9, scope: !1722)
!1731 = !DILocation(line: 249, column: 22, scope: !1642)
!1732 = !DILocation(line: 249, column: 13, scope: !1642)
!1733 = !DILocation(line: 249, column: 29, scope: !1642)
!1734 = !DILocalVariable(name: "sb", arg: 1, scope: !1735, file: !1121, line: 701, type: !1738)
!1735 = distinct !DISubprogram(name: "usable_st_size", scope: !1121, file: !1121, line: 701, type: !1736, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1740)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!72, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!1740 = !{!1734}
!1741 = !DILocation(line: 701, column: 36, scope: !1735, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 249, column: 32, scope: !1642)
!1743 = !DILocation(line: 703, column: 11, scope: !1735, inlinedAt: !1742)
!1744 = !DILocation(line: 703, column: 33, scope: !1735, inlinedAt: !1742)
!1745 = !DILocation(line: 250, column: 31, scope: !1642)
!1746 = !DILocation(line: 250, column: 16, scope: !1642)
!1747 = !DILocation(line: 249, column: 11, scope: !1638)
!1748 = !DILocation(line: 252, column: 18, scope: !1641)
!1749 = !DILocation(line: 253, column: 27, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 253, column: 15)
!1751 = !DILocation(line: 253, column: 15, scope: !1641)
!1752 = !DILocation(line: 254, column: 27, scope: !1750)
!1753 = !DILocation(line: 254, column: 13, scope: !1750)
!1754 = !DILocation(line: 256, column: 25, scope: !1645)
!1755 = !DILocation(line: 256, column: 23, scope: !1645)
!1756 = !DILocation(line: 256, column: 15, scope: !1641)
!1757 = !DILocation(line: 271, column: 51, scope: !1644)
!1758 = !{!1382, !1208, i64 64}
!1759 = !DILocation(line: 271, column: 48, scope: !1644)
!1760 = !DILocation(line: 271, column: 38, scope: !1644)
!1761 = !DILocation(line: 271, column: 21, scope: !1644)
!1762 = !DILocation(line: 272, column: 21, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 272, column: 19)
!1764 = !DILocation(line: 272, column: 51, scope: !1763)
!1765 = !DILocation(line: 272, column: 36, scope: !1763)
!1766 = !DILocation(line: 273, column: 27, scope: !1763)
!1767 = !DILocation(line: 273, column: 24, scope: !1763)
!1768 = !DILocation(line: 274, column: 32, scope: !1763)
!1769 = !DILocation(line: 272, column: 19, scope: !1644)
!1770 = !DILocation(line: 266, column: 23, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 257, column: 13)
!1772 = !DILocation(line: 278, column: 11, scope: !1638)
!1773 = !DILocation(line: 280, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 279, column: 9)
!1775 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 278, column: 11)
!1776 = !DILocation(line: 281, column: 11, scope: !1774)
!1777 = !DILocation(line: 0, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 282, column: 13)
!1779 = !DILocation(line: 281, column: 32, scope: !1774)
!1780 = !DILocation(line: 202, column: 10, scope: !1612)
!1781 = !DILocation(line: 285, column: 29, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 284, column: 17)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 283, column: 19)
!1784 = !DILocation(line: 285, column: 42, scope: !1782)
!1785 = !DILocation(line: 285, column: 19, scope: !1782)
!1786 = !DILocation(line: 287, column: 19, scope: !1782)
!1787 = !DILocation(line: 289, column: 21, scope: !1778)
!1788 = distinct !{!1788, !1776, !1789}
!1789 = !DILocation(line: 290, column: 13, scope: !1774)
!1790 = !DILocation(line: 293, column: 25, scope: !1648)
!1791 = !DILocation(line: 0, scope: !1650)
!1792 = !DILocation(line: 207, column: 9, scope: !1612)
!1793 = !DILocation(line: 0, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 335, column: 15)
!1795 = !DILocation(line: 298, column: 28, scope: !1647)
!1796 = !DILocation(line: 298, column: 7, scope: !1647)
!1797 = !DILocation(line: 302, column: 25, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 301, column: 13)
!1799 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 300, column: 15)
!1800 = !DILocation(line: 302, column: 38, scope: !1798)
!1801 = !DILocation(line: 302, column: 15, scope: !1798)
!1802 = !DILocation(line: 304, column: 15, scope: !1798)
!1803 = !DILocation(line: 307, column: 17, scope: !1650)
!1804 = !DILocation(line: 309, column: 17, scope: !1650)
!1805 = !DILocation(line: 310, column: 25, scope: !1650)
!1806 = !DILocation(line: 310, column: 17, scope: !1650)
!1807 = !DILocation(line: 311, column: 21, scope: !1650)
!1808 = !DILocation(line: 313, column: 15, scope: !1650)
!1809 = !DILocation(line: 317, column: 28, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 314, column: 13)
!1811 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 313, column: 15)
!1812 = !DILocation(line: 317, column: 26, scope: !1810)
!1813 = !DILocation(line: 317, column: 31, scope: !1810)
!1814 = !DILocation(line: 317, column: 23, scope: !1810)
!1815 = !DILocation(line: 316, column: 15, scope: !1810)
!1816 = distinct !{!1816, !1817}
!1817 = !{!"llvm.loop.unroll.disable"}
!1818 = !DILocation(line: 322, column: 48, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 320, column: 13)
!1820 = !DILocation(line: 322, column: 27, scope: !1819)
!1821 = !DILocation(line: 322, column: 15, scope: !1819)
!1822 = !DILocation(line: 316, column: 24, scope: !1810)
!1823 = distinct !{!1823, !1815, !1824}
!1824 = !DILocation(line: 317, column: 34, scope: !1810)
!1825 = !DILocation(line: 324, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 323, column: 17)
!1827 = !DILocation(line: 325, column: 19, scope: !1826)
!1828 = distinct !{!1828, !1821, !1829}
!1829 = !DILocation(line: 326, column: 17, scope: !1819)
!1830 = !DILocation(line: 335, column: 21, scope: !1794)
!1831 = !DILocation(line: 335, column: 44, scope: !1794)
!1832 = !DILocation(line: 335, column: 30, scope: !1794)
!1833 = distinct !{!1833, !1796, !1834}
!1834 = !DILocation(line: 339, column: 9, scope: !1647)
!1835 = !DILocation(line: 343, column: 12, scope: !1655)
!1836 = !DILocation(line: 343, column: 23, scope: !1655)
!1837 = !DILocation(line: 343, column: 12, scope: !1648)
!1838 = !DILocation(line: 345, column: 12, scope: !1654)
!1839 = !DILocation(line: 346, column: 17, scope: !1654)
!1840 = !DILocation(line: 347, column: 7, scope: !1654)
!1841 = !DILocation(line: 347, column: 17, scope: !1654)
!1842 = !DILocation(line: 348, column: 12, scope: !1654)
!1843 = !DILocation(line: 357, column: 14, scope: !1654)
!1844 = !DILocation(line: 362, column: 7, scope: !1654)
!1845 = !DILocation(line: 207, column: 46, scope: !1612)
!1846 = !DILocation(line: 207, column: 33, scope: !1612)
!1847 = !DILocation(line: 207, column: 25, scope: !1612)
!1848 = !DILocation(line: 207, column: 17, scope: !1612)
!1849 = !DILocation(line: 362, column: 47, scope: !1654)
!1850 = !DILocation(line: 362, column: 67, scope: !1654)
!1851 = !DILocation(line: 362, column: 28, scope: !1654)
!1852 = !DILocation(line: 370, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 369, column: 13)
!1854 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 368, column: 15)
!1855 = !DILocation(line: 370, column: 38, scope: !1853)
!1856 = !DILocation(line: 370, column: 15, scope: !1853)
!1857 = !DILocation(line: 375, column: 17, scope: !1676)
!1858 = !DILocation(line: 364, column: 23, scope: !1676)
!1859 = !DILocation(line: 377, column: 22, scope: !1676)
!1860 = !DILocation(line: 378, column: 11, scope: !1676)
!1861 = !DILocation(line: 0, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 393, column: 17)
!1863 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 384, column: 19)
!1864 = !DILocation(line: 376, column: 13, scope: !1676)
!1865 = !DILocation(line: 380, column: 15, scope: !1679)
!1866 = !DILocation(line: 382, column: 20, scope: !1679)
!1867 = !DILocation(line: 384, column: 20, scope: !1863)
!1868 = !DILocation(line: 384, column: 29, scope: !1863)
!1869 = !DILocation(line: 384, column: 42, scope: !1863)
!1870 = !DILocalVariable(name: "c", arg: 1, scope: !1871, file: !1872, line: 316, type: !53)
!1871 = distinct !DISubprogram(name: "is_basic", scope: !1872, file: !1872, line: 316, type: !1873, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1875)
!1872 = !DIFile(filename: "./lib/mbchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!72, !53}
!1875 = !{!1870}
!1876 = !DILocation(line: 316, column: 16, scope: !1871, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 384, column: 32, scope: !1863)
!1878 = !DILocation(line: 318, column: 27, scope: !1871, inlinedAt: !1877)
!1879 = !DILocation(line: 318, column: 45, scope: !1871, inlinedAt: !1877)
!1880 = !DILocation(line: 318, column: 11, scope: !1871, inlinedAt: !1877)
!1881 = !DILocation(line: 318, column: 73, scope: !1871, inlinedAt: !1877)
!1882 = !DILocation(line: 318, column: 10, scope: !1871, inlinedAt: !1877)
!1883 = !DILocation(line: 384, column: 19, scope: !1679)
!1884 = !DILocation(line: 381, column: 22, scope: !1679)
!1885 = !DILocation(line: 389, column: 31, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 385, column: 17)
!1887 = !DILocation(line: 380, column: 23, scope: !1679)
!1888 = !DILocation(line: 389, column: 29, scope: !1886)
!1889 = !DILocation(line: 391, column: 17, scope: !1886)
!1890 = !DILocation(line: 396, column: 34, scope: !1862)
!1891 = !DILocation(line: 398, column: 23, scope: !1862)
!1892 = !DILocation(line: 399, column: 23, scope: !1862)
!1893 = !DILocation(line: 402, column: 31, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 400, column: 21)
!1895 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 399, column: 23)
!1896 = !DILocation(line: 475, column: 13, scope: !1676)
!1897 = !DILocation(line: 476, column: 29, scope: !1676)
!1898 = !DILocation(line: 479, column: 15, scope: !1676)
!1899 = !DILocation(line: 412, column: 24, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 407, column: 21)
!1901 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 406, column: 23)
!1902 = !DILocation(line: 413, column: 33, scope: !1900)
!1903 = !DILocation(line: 414, column: 23, scope: !1900)
!1904 = !DILocation(line: 416, column: 23, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 416, column: 23)
!1906 = !DILocation(line: 416, column: 23, scope: !1862)
!1907 = !DILocation(line: 418, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 418, column: 23)
!1909 = !DILocation(line: 418, column: 23, scope: !1862)
!1910 = !DILocation(line: 420, column: 33, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 419, column: 21)
!1912 = !DILocation(line: 448, column: 28, scope: !1687)
!1913 = !DILocation(line: 425, column: 23, scope: !1679)
!1914 = !DILocation(line: 0, scope: !1654)
!1915 = !DILocation(line: 0, scope: !1886)
!1916 = !DILocation(line: 425, column: 15, scope: !1679)
!1917 = !DILocation(line: 428, column: 24, scope: !1688)
!1918 = !DILocation(line: 429, column: 19, scope: !1688)
!1919 = !DILocation(line: 0, scope: !1688)
!1920 = !DILocation(line: 432, column: 31, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 432, column: 23)
!1922 = !DILocation(line: 432, column: 23, scope: !1688)
!1923 = !DILocation(line: 435, column: 19, scope: !1688)
!1924 = !DILocation(line: 437, column: 43, scope: !1688)
!1925 = !DILocation(line: 437, column: 32, scope: !1688)
!1926 = !DILocation(line: 437, column: 27, scope: !1688)
!1927 = !DILocation(line: 438, column: 19, scope: !1688)
!1928 = !DILocation(line: 440, column: 26, scope: !1688)
!1929 = !DILocation(line: 441, column: 19, scope: !1688)
!1930 = !DILocation(line: 0, scope: !1921)
!1931 = !DILocation(line: 444, column: 28, scope: !1688)
!1932 = !DILocation(line: 444, column: 25, scope: !1688)
!1933 = !DILocation(line: 446, column: 19, scope: !1688)
!1934 = !DILocation(line: 448, column: 31, scope: !1687)
!1935 = !DILocation(line: 448, column: 23, scope: !1688)
!1936 = !DILocation(line: 452, column: 27, scope: !1686)
!1937 = !DILocation(line: 454, column: 48, scope: !1684)
!1938 = !DILocation(line: 454, column: 39, scope: !1684)
!1939 = !DILocation(line: 454, column: 31, scope: !1684)
!1940 = !DILocation(line: 455, column: 37, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 455, column: 31)
!1942 = !DILocation(line: 455, column: 31, scope: !1684)
!1943 = !DILocation(line: 458, column: 37, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 458, column: 27)
!1945 = !DILocation(line: 458, column: 27, scope: !1944)
!1946 = !DILocation(line: 458, column: 27, scope: !1686)
!1947 = !DILocation(line: 462, column: 37, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 462, column: 28)
!1949 = !{!1950, !1950, i64 0}
!1950 = !{!"short", !1149, i64 0}
!1951 = !DILocation(line: 462, column: 28, scope: !1687)
!1952 = !DILocation(line: 464, column: 30, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 463, column: 21)
!1954 = !DILocation(line: 465, column: 27, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 465, column: 27)
!1956 = !DILocation(line: 465, column: 27, scope: !1953)
!1957 = !DILocation(line: 0, scope: !1612)
!1958 = !DILocation(line: 472, column: 17, scope: !1679)
!1959 = !DILocation(line: 473, column: 26, scope: !1679)
!1960 = !DILocation(line: 474, column: 20, scope: !1679)
!1961 = !DILocation(line: 0, scope: !1679)
!1962 = !DILocation(line: 0, scope: !1941)
!1963 = !DILocation(line: 0, scope: !1905)
!1964 = distinct !{!1964, !1860, !1965}
!1965 = !DILocation(line: 476, column: 32, scope: !1676)
!1966 = !DILocation(line: 481, column: 30, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 481, column: 19)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 480, column: 13)
!1969 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 479, column: 15)
!1970 = !DILocation(line: 484, column: 20, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 482, column: 17)
!1972 = !DILocation(line: 481, column: 19, scope: !1968)
!1973 = !DILocation(line: 487, column: 15, scope: !1968)
!1974 = !DILocation(line: 488, column: 13, scope: !1968)
!1975 = !DILocation(line: 492, column: 19, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 492, column: 11)
!1977 = !DILocation(line: 492, column: 11, scope: !1654)
!1978 = !DILocation(line: 494, column: 16, scope: !1654)
!1979 = !DILocation(line: 494, column: 13, scope: !1654)
!1980 = !DILocation(line: 495, column: 5, scope: !1655)
!1981 = !DILocation(line: 495, column: 5, scope: !1654)
!1982 = !DILocation(line: 499, column: 12, scope: !1690)
!1983 = !DILocation(line: 500, column: 17, scope: !1690)
!1984 = !DILocation(line: 512, column: 17, scope: !1693)
!1985 = !DILocation(line: 502, column: 28, scope: !1690)
!1986 = !DILocation(line: 502, column: 7, scope: !1690)
!1987 = !DILocation(line: 507, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 506, column: 13)
!1989 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 505, column: 15)
!1990 = !DILocation(line: 507, column: 38, scope: !1988)
!1991 = !DILocation(line: 507, column: 15, scope: !1988)
!1992 = !DILocation(line: 0, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 516, column: 17)
!1994 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 514, column: 13)
!1995 = !DILocation(line: 0, scope: !1693)
!1996 = !DILocation(line: 0, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 539, column: 21)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 538, column: 23)
!1999 = !DILocation(line: 0, scope: !1994)
!2000 = !DILocation(line: 504, column: 23, scope: !1693)
!2001 = !DILocation(line: 515, column: 25, scope: !1994)
!2002 = !DILocation(line: 515, column: 23, scope: !1994)
!2003 = !DILocation(line: 515, column: 15, scope: !1994)
!2004 = !DILocation(line: 518, column: 24, scope: !1993)
!2005 = !DILocation(line: 519, column: 19, scope: !1993)
!2006 = !DILocation(line: 522, column: 31, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 522, column: 23)
!2008 = !DILocation(line: 522, column: 23, scope: !1993)
!2009 = !DILocation(line: 525, column: 19, scope: !1993)
!2010 = !DILocation(line: 527, column: 43, scope: !1993)
!2011 = !DILocation(line: 527, column: 32, scope: !1993)
!2012 = !DILocation(line: 527, column: 27, scope: !1993)
!2013 = !DILocation(line: 528, column: 19, scope: !1993)
!2014 = !DILocation(line: 530, column: 26, scope: !1993)
!2015 = !DILocation(line: 531, column: 19, scope: !1993)
!2016 = !DILocation(line: 0, scope: !2007)
!2017 = !DILocation(line: 534, column: 28, scope: !1993)
!2018 = !DILocation(line: 534, column: 25, scope: !1993)
!2019 = !DILocation(line: 536, column: 19, scope: !1993)
!2020 = !DILocation(line: 538, column: 23, scope: !1998)
!2021 = !DILocation(line: 538, column: 23, scope: !1993)
!2022 = !DILocation(line: 540, column: 30, scope: !1997)
!2023 = !DILocation(line: 541, column: 27, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 541, column: 27)
!2025 = !DILocation(line: 541, column: 27, scope: !1997)
!2026 = !DILocation(line: 0, scope: !1690)
!2027 = !DILocation(line: 548, column: 18, scope: !1693)
!2028 = !DILocation(line: 547, column: 13, scope: !1994)
!2029 = distinct !{!2029, !2030, !2031}
!2030 = !DILocation(line: 513, column: 11, scope: !1693)
!2031 = !DILocation(line: 548, column: 30, scope: !1693)
!2032 = !DILocation(line: 550, column: 19, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 550, column: 11)
!2034 = !DILocation(line: 550, column: 11, scope: !1690)
!2035 = !DILocation(line: 552, column: 16, scope: !1690)
!2036 = !DILocation(line: 552, column: 13, scope: !1690)
!2037 = !DILocation(line: 555, column: 19, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 555, column: 7)
!2039 = !DILocation(line: 555, column: 7, scope: !1612)
!2040 = !DILocation(line: 558, column: 3, scope: !1612)
!2041 = !DILocation(line: 559, column: 15, scope: !1612)
!2042 = !DILocation(line: 560, column: 15, scope: !1612)
!2043 = !DILocation(line: 561, column: 15, scope: !1612)
!2044 = !DILocation(line: 562, column: 15, scope: !1612)
!2045 = !DILocation(line: 563, column: 20, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 563, column: 7)
!2047 = !DILocation(line: 563, column: 18, scope: !2046)
!2048 = !DILocation(line: 563, column: 7, scope: !1612)
!2049 = !DILocation(line: 564, column: 21, scope: !2046)
!2050 = !DILocation(line: 564, column: 5, scope: !2046)
!2051 = !DILocation(line: 566, column: 10, scope: !1612)
!2052 = !DILocation(line: 567, column: 1, scope: !1612)
!2053 = !DILocation(line: 566, column: 3, scope: !1612)
!2054 = !DILocation(line: 153, column: 25, scope: !300)
!2055 = !DILocation(line: 154, column: 25, scope: !300)
!2056 = !DILocation(line: 155, column: 25, scope: !300)
!2057 = !DILocation(line: 156, column: 25, scope: !300)
!2058 = !DILocation(line: 157, column: 25, scope: !300)
!2059 = !DILocation(line: 158, column: 27, scope: !300)
!2060 = !DILocation(line: 162, column: 3, scope: !300)
!2061 = !DILocation(line: 162, column: 8, scope: !300)
!2062 = !DILocation(line: 164, column: 7, scope: !300)
!2063 = !DILocation(line: 166, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 165, column: 5)
!2065 = distinct !DILexicalBlock(scope: !300, file: !3, line: 164, column: 7)
!2066 = !DILocation(line: 168, column: 5, scope: !2064)
!2067 = !DILocation(line: 0, scope: !300)
!2068 = !DILocation(line: 161, column: 15, scope: !300)
!2069 = !DILocation(line: 169, column: 7, scope: !300)
!2070 = !DILocation(line: 171, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 170, column: 5)
!2072 = distinct !DILexicalBlock(scope: !300, file: !3, line: 169, column: 7)
!2073 = !DILocation(line: 173, column: 5, scope: !2071)
!2074 = !DILocation(line: 0, scope: !2064)
!2075 = !DILocation(line: 174, column: 7, scope: !300)
!2076 = !DILocation(line: 176, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 175, column: 5)
!2078 = distinct !DILexicalBlock(scope: !300, file: !3, line: 174, column: 7)
!2079 = !DILocation(line: 178, column: 5, scope: !2077)
!2080 = !DILocation(line: 0, scope: !2071)
!2081 = !DILocation(line: 179, column: 7, scope: !300)
!2082 = !DILocation(line: 181, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 180, column: 5)
!2084 = distinct !DILexicalBlock(scope: !300, file: !3, line: 179, column: 7)
!2085 = !DILocation(line: 183, column: 5, scope: !2083)
!2086 = !DILocation(line: 0, scope: !2077)
!2087 = !DILocation(line: 184, column: 7, scope: !300)
!2088 = !DILocation(line: 186, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 185, column: 5)
!2090 = distinct !DILexicalBlock(scope: !300, file: !3, line: 184, column: 7)
!2091 = !DILocation(line: 187, column: 5, scope: !2089)
!2092 = !DILocation(line: 188, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !300, file: !3, line: 188, column: 7)
!2094 = !DILocation(line: 188, column: 7, scope: !300)
!2095 = !DILocation(line: 189, column: 5, scope: !2093)
!2096 = !DILocalVariable(name: "__c", arg: 1, scope: !2097, file: !2098, line: 108, type: !58)
!2097 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2098, file: !2098, line: 108, type: !2099, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2101)
!2098 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!58, !58}
!2101 = !{!2096}
!2102 = !DILocation(line: 108, column: 23, scope: !2097, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 190, column: 3, scope: !300)
!2104 = !DILocation(line: 110, column: 10, scope: !2097, inlinedAt: !2103)
!2105 = !{!2106, !1148, i64 40}
!2106 = !{!"_IO_FILE", !1244, i64 0, !1148, i64 8, !1148, i64 16, !1148, i64 24, !1148, i64 32, !1148, i64 40, !1148, i64 48, !1148, i64 56, !1148, i64 64, !1148, i64 72, !1148, i64 80, !1148, i64 88, !1148, i64 96, !1148, i64 104, !1244, i64 112, !1244, i64 116, !1208, i64 120, !1950, i64 128, !1149, i64 130, !1149, i64 131, !1148, i64 136, !1208, i64 144, !1148, i64 152, !1148, i64 160, !1148, i64 168, !1148, i64 176, !1208, i64 184, !1244, i64 192, !1149, i64 196}
!2107 = !{!2106, !1148, i64 48}
!2108 = !{!"branch_weights", i32 2000, i32 1}
!2109 = !DILocation(line: 191, column: 1, scope: !300)
!2110 = distinct !DISubprogram(name: "argv_iter_init_argv", scope: !2111, file: !2111, line: 40, type: !2112, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !433, retainedNodes: !2157)
!2111 = !DIFile(filename: "lib/argv-iter.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2114, !67}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !2111, line: 25, size: 384, elements: !2116)
!2116 = !{!2117, !2152, !2153, !2154, !2155, !2156}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2115, file: !2111, line: 29, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !2120)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2120, file: !193, line: 51, baseType: !58, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2120, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2120, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2120, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2120, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2120, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2120, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2120, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2120, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2120, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2120, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2120, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2120, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2120, file: !193, line: 70, baseType: !2136, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2120, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2120, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2120, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2120, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2120, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2120, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2120, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2120, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2120, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2120, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2120, file: !193, line: 93, baseType: !2136, size: 64, offset: 1344)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2120, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2120, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2120, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2120, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "item_idx", scope: !2115, file: !2111, line: 30, baseType: !55, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !2115, file: !2111, line: 31, baseType: !52, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !2115, file: !2111, line: 32, baseType: !55, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !2115, file: !2111, line: 35, baseType: !67, size: 64, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2115, file: !2111, line: 36, baseType: !67, size: 64, offset: 320)
!2157 = !{!2158, !2159}
!2158 = !DILocalVariable(name: "argv", arg: 1, scope: !2110, file: !2111, line: 40, type: !67)
!2159 = !DILocalVariable(name: "ai", scope: !2110, file: !2111, line: 42, type: !2114)
!2160 = !DILocation(line: 40, column: 29, scope: !2110)
!2161 = !DILocation(line: 42, column: 30, scope: !2110)
!2162 = !DILocation(line: 43, column: 8, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2110, file: !2111, line: 43, column: 7)
!2164 = !DILocation(line: 43, column: 7, scope: !2110)
!2165 = !DILocation(line: 42, column: 25, scope: !2110)
!2166 = !DILocation(line: 45, column: 7, scope: !2110)
!2167 = !DILocation(line: 45, column: 10, scope: !2110)
!2168 = !{!2169, !1148, i64 0}
!2169 = !{!"argv_iterator", !1148, i64 0, !1208, i64 8, !1148, i64 16, !1208, i64 24, !1148, i64 32, !1148, i64 40}
!2170 = !DILocation(line: 46, column: 7, scope: !2110)
!2171 = !DILocation(line: 46, column: 16, scope: !2110)
!2172 = !{!2169, !1148, i64 32}
!2173 = !DILocation(line: 47, column: 7, scope: !2110)
!2174 = !DILocation(line: 47, column: 9, scope: !2110)
!2175 = !{!2169, !1148, i64 40}
!2176 = !DILocation(line: 48, column: 3, scope: !2110)
!2177 = !DILocation(line: 0, scope: !2163)
!2178 = !DILocation(line: 49, column: 1, scope: !2110)
!2179 = distinct !DISubprogram(name: "argv_iter_init_stream", scope: !2111, file: !2111, line: 54, type: !2180, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !433, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2114, !2118}
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "fp", arg: 1, scope: !2179, file: !2111, line: 54, type: !2118)
!2184 = !DILocalVariable(name: "ai", scope: !2179, file: !2111, line: 56, type: !2114)
!2185 = !DILocation(line: 54, column: 30, scope: !2179)
!2186 = !DILocation(line: 56, column: 30, scope: !2179)
!2187 = !DILocation(line: 57, column: 8, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2179, file: !2111, line: 57, column: 7)
!2189 = !DILocation(line: 57, column: 7, scope: !2179)
!2190 = !DILocation(line: 56, column: 25, scope: !2179)
!2191 = !DILocation(line: 59, column: 7, scope: !2179)
!2192 = !DILocation(line: 59, column: 10, scope: !2179)
!2193 = !DILocation(line: 63, column: 7, scope: !2179)
!2194 = !DILocation(line: 63, column: 16, scope: !2179)
!2195 = !DILocation(line: 65, column: 3, scope: !2179)
!2196 = !DILocation(line: 0, scope: !2188)
!2197 = !DILocation(line: 66, column: 1, scope: !2179)
!2198 = distinct !DISubprogram(name: "argv_iter", scope: !2111, file: !2111, line: 69, type: !2199, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !433, retainedNodes: !2202)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!52, !2114, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!2202 = !{!2203, !2204, !2205}
!2203 = !DILocalVariable(name: "ai", arg: 1, scope: !2198, file: !2111, line: 69, type: !2114)
!2204 = !DILocalVariable(name: "err", arg: 2, scope: !2198, file: !2111, line: 69, type: !2201)
!2205 = !DILocalVariable(name: "len", scope: !2206, file: !2111, line: 73, type: !2208)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !2111, line: 72, column: 5)
!2207 = distinct !DILexicalBlock(scope: !2198, file: !2111, line: 71, column: 7)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1616, line: 77, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !88, line: 191, baseType: !103)
!2210 = !DILocation(line: 69, column: 34, scope: !2198)
!2211 = !DILocation(line: 69, column: 58, scope: !2198)
!2212 = !DILocation(line: 71, column: 11, scope: !2207)
!2213 = !DILocation(line: 71, column: 7, scope: !2207)
!2214 = !DILocation(line: 71, column: 7, scope: !2198)
!2215 = !DILocation(line: 73, column: 36, scope: !2206)
!2216 = !DILocation(line: 73, column: 46, scope: !2206)
!2217 = !DILocation(line: 73, column: 21, scope: !2206)
!2218 = !DILocation(line: 73, column: 15, scope: !2206)
!2219 = !DILocation(line: 74, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2206, file: !2111, line: 74, column: 11)
!2221 = !DILocation(line: 74, column: 11, scope: !2206)
!2222 = !DILocation(line: 76, column: 28, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !2111, line: 75, column: 9)
!2224 = !DILocation(line: 76, column: 18, scope: !2223)
!2225 = !DILocation(line: 76, column: 16, scope: !2223)
!2226 = !DILocation(line: 77, column: 11, scope: !2223)
!2227 = !DILocation(line: 80, column: 12, scope: !2206)
!2228 = !DILocation(line: 81, column: 11, scope: !2206)
!2229 = !DILocation(line: 81, column: 19, scope: !2206)
!2230 = !{!2169, !1208, i64 8}
!2231 = !DILocation(line: 82, column: 18, scope: !2206)
!2232 = !{!2169, !1148, i64 16}
!2233 = !DILocation(line: 82, column: 7, scope: !2206)
!2234 = !DILocation(line: 86, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !2111, line: 86, column: 11)
!2236 = distinct !DILexicalBlock(scope: !2207, file: !2111, line: 85, column: 5)
!2237 = !DILocation(line: 86, column: 11, scope: !2235)
!2238 = !DILocation(line: 86, column: 20, scope: !2235)
!2239 = !DILocation(line: 86, column: 11, scope: !2236)
!2240 = !DILocation(line: 88, column: 16, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2235, file: !2111, line: 87, column: 9)
!2242 = !DILocation(line: 89, column: 11, scope: !2241)
!2243 = !DILocation(line: 93, column: 16, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2235, file: !2111, line: 92, column: 9)
!2245 = !DILocation(line: 94, column: 25, scope: !2244)
!2246 = !DILocation(line: 94, column: 18, scope: !2244)
!2247 = !DILocation(line: 94, column: 11, scope: !2244)
!2248 = !DILocation(line: 0, scope: !2244)
!2249 = !DILocation(line: 97, column: 1, scope: !2198)
!2250 = distinct !DISubprogram(name: "argv_iter_n_args", scope: !2111, file: !2111, line: 100, type: !2251, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !433, retainedNodes: !2255)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!55, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "ai", arg: 1, scope: !2250, file: !2111, line: 100, type: !2253)
!2257 = !DILocation(line: 100, column: 47, scope: !2250)
!2258 = !DILocation(line: 102, column: 14, scope: !2250)
!2259 = !DILocation(line: 102, column: 10, scope: !2250)
!2260 = !DILocation(line: 102, column: 23, scope: !2250)
!2261 = !DILocation(line: 102, column: 38, scope: !2250)
!2262 = !DILocation(line: 102, column: 46, scope: !2250)
!2263 = !DILocation(line: 102, column: 40, scope: !2250)
!2264 = !DILocation(line: 102, column: 3, scope: !2250)
!2265 = distinct !DISubprogram(name: "argv_iter_free", scope: !2111, file: !2111, line: 106, type: !2266, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !433, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !2114}
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "ai", arg: 1, scope: !2265, file: !2111, line: 106, type: !2114)
!2270 = !DILocation(line: 106, column: 39, scope: !2265)
!2271 = !DILocation(line: 108, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !2111, line: 108, column: 7)
!2273 = !DILocation(line: 108, column: 7, scope: !2272)
!2274 = !DILocation(line: 108, column: 7, scope: !2265)
!2275 = !DILocation(line: 109, column: 15, scope: !2272)
!2276 = !DILocation(line: 109, column: 5, scope: !2272)
!2277 = !DILocation(line: 110, column: 9, scope: !2265)
!2278 = !DILocation(line: 110, column: 3, scope: !2265)
!2279 = !DILocation(line: 111, column: 1, scope: !2265)
!2280 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !337, file: !337, line: 51, type: !1122, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !332, retainedNodes: !2281)
!2281 = !{!2282}
!2282 = !DILocalVariable(name: "file", arg: 1, scope: !2280, file: !337, line: 51, type: !290)
!2283 = !DILocation(line: 51, column: 41, scope: !2280)
!2284 = !DILocation(line: 53, column: 13, scope: !2280)
!2285 = !DILocation(line: 54, column: 1, scope: !2280)
!2286 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !337, file: !337, line: 88, type: !2287, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !332, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !72}
!2289 = !{!2290}
!2290 = !DILocalVariable(name: "ignore", arg: 1, scope: !2286, file: !337, line: 88, type: !72)
!2291 = !DILocation(line: 88, column: 37, scope: !2286)
!2292 = !DILocation(line: 90, column: 16, scope: !2286)
!2293 = !{!2294, !2294, i64 0}
!2294 = !{!"_Bool", !1149, i64 0}
!2295 = !DILocation(line: 91, column: 1, scope: !2286)
!2296 = distinct !DISubprogram(name: "close_stdout", scope: !337, file: !337, line: 117, type: !431, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !332, retainedNodes: !2297)
!2297 = !{!2298}
!2298 = !DILocalVariable(name: "write_error", scope: !2299, file: !337, line: 122, type: !290)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !337, line: 121, column: 5)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !337, line: 119, column: 7)
!2301 = !DILocation(line: 119, column: 21, scope: !2300)
!2302 = !DILocation(line: 119, column: 7, scope: !2300)
!2303 = !DILocation(line: 119, column: 29, scope: !2300)
!2304 = !DILocation(line: 120, column: 7, scope: !2300)
!2305 = !DILocation(line: 120, column: 12, scope: !2300)
!2306 = !{i8 0, i8 2}
!2307 = !DILocation(line: 120, column: 25, scope: !2300)
!2308 = !DILocation(line: 120, column: 28, scope: !2300)
!2309 = !DILocation(line: 120, column: 34, scope: !2300)
!2310 = !DILocation(line: 119, column: 7, scope: !2296)
!2311 = !DILocation(line: 122, column: 33, scope: !2299)
!2312 = !DILocation(line: 122, column: 19, scope: !2299)
!2313 = !DILocation(line: 123, column: 11, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2299, file: !337, line: 123, column: 11)
!2315 = !DILocation(line: 0, scope: !2314)
!2316 = !DILocation(line: 123, column: 11, scope: !2299)
!2317 = !DILocation(line: 124, column: 36, scope: !2314)
!2318 = !DILocation(line: 124, column: 9, scope: !2314)
!2319 = !DILocation(line: 127, column: 9, scope: !2314)
!2320 = !DILocation(line: 129, column: 14, scope: !2299)
!2321 = !DILocation(line: 129, column: 7, scope: !2299)
!2322 = !DILocation(line: 134, column: 42, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2296, file: !337, line: 134, column: 7)
!2324 = !DILocation(line: 134, column: 28, scope: !2323)
!2325 = !DILocation(line: 134, column: 50, scope: !2323)
!2326 = !DILocation(line: 134, column: 7, scope: !2296)
!2327 = !DILocation(line: 135, column: 12, scope: !2323)
!2328 = !DILocation(line: 135, column: 5, scope: !2323)
!2329 = !DILocation(line: 136, column: 1, scope: !2296)
!2330 = distinct !DISubprogram(name: "fdadvise", scope: !2331, file: !2331, line: 31, type: !2332, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !437, retainedNodes: !2335)
!2331 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !58, !1615, !1615, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !28, line: 52, baseType: !27)
!2335 = !{!2336, !2337, !2338, !2339, !2340}
!2336 = !DILocalVariable(name: "fd", arg: 1, scope: !2330, file: !2331, line: 31, type: !58)
!2337 = !DILocalVariable(name: "offset", arg: 2, scope: !2330, file: !2331, line: 31, type: !1615)
!2338 = !DILocalVariable(name: "len", arg: 3, scope: !2330, file: !2331, line: 31, type: !1615)
!2339 = !DILocalVariable(name: "advice", arg: 4, scope: !2330, file: !2331, line: 31, type: !2334)
!2340 = !DILocalVariable(name: "__x", scope: !2341, file: !2331, line: 34, type: !58)
!2341 = distinct !DILexicalBlock(scope: !2330, file: !2331, line: 34, column: 3)
!2342 = !DILocation(line: 31, column: 15, scope: !2330)
!2343 = !DILocation(line: 31, column: 25, scope: !2330)
!2344 = !DILocation(line: 31, column: 39, scope: !2330)
!2345 = !DILocation(line: 31, column: 54, scope: !2330)
!2346 = !DILocation(line: 34, column: 3, scope: !2341)
!2347 = !DILocation(line: 36, column: 1, scope: !2330)
!2348 = distinct !DISubprogram(name: "fadvise", scope: !2331, file: !2331, line: 39, type: !2349, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !437, retainedNodes: !2385)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2351, !2334}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !2353)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2353, file: !193, line: 51, baseType: !58, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2353, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2353, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2353, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2353, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2353, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2353, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2353, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2353, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2353, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2353, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2353, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2353, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2353, file: !193, line: 70, baseType: !2369, size: 64, offset: 832)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2353, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2353, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2353, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2353, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2353, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2353, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2353, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2353, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2353, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2353, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2353, file: !193, line: 93, baseType: !2369, size: 64, offset: 1344)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2353, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2353, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2353, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2353, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "fp", arg: 1, scope: !2348, file: !2331, line: 39, type: !2351)
!2387 = !DILocalVariable(name: "advice", arg: 2, scope: !2348, file: !2331, line: 39, type: !2334)
!2388 = !DILocation(line: 39, column: 16, scope: !2348)
!2389 = !DILocation(line: 39, column: 30, scope: !2348)
!2390 = !DILocation(line: 41, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2348, file: !2331, line: 41, column: 7)
!2392 = !DILocation(line: 41, column: 7, scope: !2348)
!2393 = !DILocation(line: 42, column: 15, scope: !2391)
!2394 = !DILocation(line: 31, column: 15, scope: !2330, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 42, column: 5, scope: !2391)
!2396 = !DILocation(line: 31, column: 25, scope: !2330, inlinedAt: !2395)
!2397 = !DILocation(line: 31, column: 39, scope: !2330, inlinedAt: !2395)
!2398 = !DILocation(line: 31, column: 54, scope: !2330, inlinedAt: !2395)
!2399 = !DILocation(line: 34, column: 3, scope: !2341, inlinedAt: !2395)
!2400 = !DILocation(line: 42, column: 5, scope: !2391)
!2401 = !DILocation(line: 43, column: 1, scope: !2348)
!2402 = distinct !DISubprogram(name: "umaxtostr", scope: !2403, file: !2403, line: 36, type: !2404, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !440, retainedNodes: !2406)
!2403 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!52, !257, !52}
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "i", arg: 1, scope: !2402, file: !2403, line: 36, type: !257)
!2408 = !DILocalVariable(name: "buf", arg: 2, scope: !2402, file: !2403, line: 36, type: !52)
!2409 = !DILocalVariable(name: "p", scope: !2402, file: !2403, line: 38, type: !52)
!2410 = !DILocation(line: 36, column: 19, scope: !2402)
!2411 = !DILocation(line: 36, column: 28, scope: !2402)
!2412 = !DILocation(line: 38, column: 17, scope: !2402)
!2413 = !DILocation(line: 38, column: 9, scope: !2402)
!2414 = !DILocation(line: 39, column: 6, scope: !2402)
!2415 = !DILocation(line: 41, column: 7, scope: !2402)
!2416 = !DILocation(line: 0, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !2403, line: 50, column: 5)
!2418 = distinct !DILexicalBlock(scope: !2402, file: !2403, line: 41, column: 7)
!2419 = !DILocation(line: 52, column: 24, scope: !2417)
!2420 = !DILocation(line: 52, column: 16, scope: !2417)
!2421 = !DILocation(line: 52, column: 10, scope: !2417)
!2422 = !DILocation(line: 52, column: 14, scope: !2417)
!2423 = !DILocation(line: 53, column: 17, scope: !2417)
!2424 = !DILocation(line: 53, column: 24, scope: !2417)
!2425 = !DILocation(line: 52, column: 9, scope: !2417)
!2426 = distinct !{!2426, !2427, !2428}
!2427 = !DILocation(line: 51, column: 7, scope: !2417)
!2428 = !DILocation(line: 53, column: 28, scope: !2417)
!2429 = !DILocation(line: 56, column: 3, scope: !2402)
!2430 = distinct !DISubprogram(name: "mb_width_aux", scope: !1872, file: !1872, line: 247, type: !2431, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !347, retainedNodes: !2435)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!58, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2434, line: 20, baseType: !7)
!2434 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2435 = !{!2436, !2437}
!2436 = !DILocalVariable(name: "wc", arg: 1, scope: !2430, file: !1872, line: 247, type: !2433)
!2437 = !DILocalVariable(name: "w", scope: !2430, file: !1872, line: 249, type: !58)
!2438 = !DILocation(line: 247, column: 22, scope: !2430)
!2439 = !DILocation(line: 249, column: 11, scope: !2430)
!2440 = !DILocation(line: 249, column: 7, scope: !2430)
!2441 = !DILocation(line: 252, column: 13, scope: !2430)
!2442 = !DILocation(line: 252, column: 11, scope: !2430)
!2443 = !DILocation(line: 252, column: 24, scope: !2430)
!2444 = !DILocation(line: 252, column: 3, scope: !2430)
!2445 = distinct !DISubprogram(name: "mb_copy", scope: !1872, file: !1872, line: 268, type: !2446, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !347, retainedNodes: !2462)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !2448, !2460}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbchar_t", file: !1872, line: 181, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1872, line: 169, size: 384, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2455, !2456}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2450, file: !1872, line: 171, baseType: !290, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2450, file: !1872, line: 172, baseType: !55, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !2450, file: !1872, line: 173, baseType: !72, size: 8, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !2450, file: !1872, line: 174, baseType: !1680, size: 32, offset: 160)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2450, file: !1872, line: 175, baseType: !2457, size: 192, offset: 192)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !2458)
!2458 = !{!2459}
!2459 = !DISubrange(count: 24)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2449)
!2462 = !{!2463, !2464}
!2463 = !DILocalVariable(name: "new_mbc", arg: 1, scope: !2445, file: !1872, line: 268, type: !2448)
!2464 = !DILocalVariable(name: "old_mbc", arg: 2, scope: !2445, file: !1872, line: 268, type: !2460)
!2465 = !DILocation(line: 268, column: 20, scope: !2445)
!2466 = !DILocation(line: 268, column: 45, scope: !2445)
!2467 = !DILocation(line: 270, column: 16, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2445, file: !1872, line: 270, column: 7)
!2469 = !{!2470, !1148, i64 0}
!2470 = !{!"mbchar", !1148, i64 0, !1208, i64 8, !2294, i64 16, !1244, i64 20, !1149, i64 24}
!2471 = !DILocation(line: 270, column: 24, scope: !2468)
!2472 = !DILocation(line: 270, column: 20, scope: !2468)
!2473 = !DILocation(line: 270, column: 7, scope: !2445)
!2474 = !DILocation(line: 272, column: 16, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2468, file: !1872, line: 271, column: 5)
!2476 = !DILocation(line: 272, column: 60, scope: !2475)
!2477 = !{!2470, !1208, i64 8}
!2478 = !DILocation(line: 272, column: 7, scope: !2475)
!2479 = !DILocation(line: 274, column: 5, scope: !2475)
!2480 = !DILocation(line: 277, column: 29, scope: !2445)
!2481 = !DILocation(line: 276, column: 14, scope: !2468)
!2482 = !DILocation(line: 276, column: 18, scope: !2468)
!2483 = !DILocation(line: 277, column: 12, scope: !2445)
!2484 = !DILocation(line: 277, column: 18, scope: !2445)
!2485 = !DILocation(line: 278, column: 37, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2445, file: !1872, line: 278, column: 7)
!2487 = !{!2470, !2294, i64 16}
!2488 = !DILocation(line: 278, column: 17, scope: !2486)
!2489 = !DILocation(line: 278, column: 26, scope: !2486)
!2490 = !DILocation(line: 278, column: 7, scope: !2445)
!2491 = !DILocation(line: 279, column: 28, scope: !2486)
!2492 = !{!2470, !1244, i64 20}
!2493 = !DILocation(line: 279, column: 14, scope: !2486)
!2494 = !DILocation(line: 279, column: 17, scope: !2486)
!2495 = !DILocation(line: 279, column: 5, scope: !2486)
!2496 = !DILocation(line: 280, column: 1, scope: !2445)
!2497 = distinct !DISubprogram(name: "is_basic", scope: !1872, file: !1872, line: 316, type: !1873, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !347, retainedNodes: !2498)
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "c", arg: 1, scope: !2497, file: !1872, line: 316, type: !53)
!2500 = !DILocation(line: 316, column: 16, scope: !2497)
!2501 = !DILocation(line: 318, column: 27, scope: !2497)
!2502 = !DILocation(line: 318, column: 45, scope: !2497)
!2503 = !DILocation(line: 318, column: 11, scope: !2497)
!2504 = !DILocation(line: 318, column: 73, scope: !2497)
!2505 = !DILocation(line: 318, column: 10, scope: !2497)
!2506 = !DILocation(line: 318, column: 3, scope: !2497)
!2507 = distinct !DISubprogram(name: "physmem_total", scope: !2508, file: !2508, line: 85, type: !2509, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !443, retainedNodes: !2510)
!2508 = !DIFile(filename: "lib/physmem.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2509 = !DISubroutineType(types: !664)
!2510 = !{!2511, !2513, !2514}
!2511 = !DILocalVariable(name: "pages", scope: !2512, file: !2508, line: 89, type: !665)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !2508, line: 88, column: 3)
!2513 = !DILocalVariable(name: "pagesize", scope: !2512, file: !2508, line: 90, type: !665)
!2514 = !DILocalVariable(name: "si", scope: !2515, file: !2508, line: 98, type: !2516)
!2515 = distinct !DILexicalBlock(scope: !2507, file: !2508, line: 97, column: 3)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !2517, line: 8, size: 896, elements: !2518)
!2517 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2518 = !{!2519, !2522, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2534, !2535, !2536, !2537, !2539}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !2516, file: !2517, line: 9, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !2521, line: 15, baseType: !103)
!2521 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !2516, file: !2517, line: 10, baseType: !2523, size: 192, offset: 64)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, size: 192, elements: !120)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2521, line: 16, baseType: !57)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !2516, file: !2517, line: 11, baseType: !2524, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !2516, file: !2517, line: 12, baseType: !2524, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !2516, file: !2517, line: 13, baseType: !2524, size: 64, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !2516, file: !2517, line: 14, baseType: !2524, size: 64, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !2516, file: !2517, line: 15, baseType: !2524, size: 64, offset: 512)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !2516, file: !2517, line: 16, baseType: !2524, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !2516, file: !2517, line: 17, baseType: !2532, size: 16, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !2533, line: 24, baseType: !59)
!2533 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2516, file: !2517, line: 18, baseType: !2532, size: 16, offset: 656)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !2516, file: !2517, line: 19, baseType: !2524, size: 64, offset: 704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !2516, file: !2517, line: 20, baseType: !2524, size: 64, offset: 768)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !2516, file: !2517, line: 21, baseType: !2538, size: 32, offset: 832)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !2533, line: 27, baseType: !7)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !2516, file: !2517, line: 22, baseType: !2540, offset: 864)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, elements: !2541)
!2541 = !{!2542}
!2542 = !DISubrange(count: 0)
!2543 = !DILocation(line: 89, column: 20, scope: !2512)
!2544 = !DILocation(line: 90, column: 23, scope: !2512)
!2545 = !DILocation(line: 91, column: 20, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2512, file: !2508, line: 91, column: 9)
!2547 = !DILocation(line: 98, column: 5, scope: !2515)
!2548 = !DILocation(line: 98, column: 20, scope: !2515)
!2549 = !DILocation(line: 99, column: 9, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2515, file: !2508, line: 99, column: 9)
!2551 = !DILocation(line: 99, column: 22, scope: !2550)
!2552 = !DILocation(line: 99, column: 9, scope: !2515)
!2553 = !DILocation(line: 100, column: 26, scope: !2550)
!2554 = !{!2555, !1208, i64 32}
!2555 = !{!"sysinfo", !1208, i64 0, !1149, i64 8, !1208, i64 32, !1208, i64 40, !1208, i64 48, !1208, i64 56, !1208, i64 64, !1208, i64 72, !1950, i64 80, !1950, i64 82, !1208, i64 88, !1208, i64 96, !1244, i64 104, !1149, i64 108}
!2556 = !DILocation(line: 100, column: 14, scope: !2550)
!2557 = !DILocation(line: 100, column: 40, scope: !2550)
!2558 = !{!2555, !1244, i64 104}
!2559 = !DILocation(line: 100, column: 37, scope: !2550)
!2560 = !DILocation(line: 100, column: 35, scope: !2550)
!2561 = !DILocation(line: 101, column: 3, scope: !2507)
!2562 = !DILocation(line: 90, column: 12, scope: !2512)
!2563 = !DILocation(line: 89, column: 12, scope: !2512)
!2564 = !DILocation(line: 92, column: 20, scope: !2546)
!2565 = !DILocation(line: 193, column: 1, scope: !2507)
!2566 = distinct !DISubprogram(name: "physmem_available", scope: !2508, file: !2508, line: 197, type: !2509, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !443, retainedNodes: !2567)
!2567 = !{!2568, !2570, !2571}
!2568 = !DILocalVariable(name: "pages", scope: !2569, file: !2508, line: 201, type: !665)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !2508, line: 200, column: 3)
!2570 = !DILocalVariable(name: "pagesize", scope: !2569, file: !2508, line: 202, type: !665)
!2571 = !DILocalVariable(name: "si", scope: !2572, file: !2508, line: 210, type: !2516)
!2572 = distinct !DILexicalBlock(scope: !2566, file: !2508, line: 209, column: 3)
!2573 = !DILocation(line: 201, column: 20, scope: !2569)
!2574 = !DILocation(line: 202, column: 23, scope: !2569)
!2575 = !DILocation(line: 203, column: 20, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2569, file: !2508, line: 203, column: 9)
!2577 = !DILocation(line: 202, column: 12, scope: !2569)
!2578 = !DILocation(line: 201, column: 12, scope: !2569)
!2579 = !DILocation(line: 204, column: 20, scope: !2576)
!2580 = !DILocation(line: 210, column: 5, scope: !2572)
!2581 = !DILocation(line: 210, column: 20, scope: !2572)
!2582 = !DILocation(line: 211, column: 9, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2572, file: !2508, line: 211, column: 9)
!2584 = !DILocation(line: 211, column: 22, scope: !2583)
!2585 = !DILocation(line: 211, column: 9, scope: !2572)
!2586 = !DILocation(line: 212, column: 27, scope: !2583)
!2587 = !{!2555, !1208, i64 40}
!2588 = !DILocation(line: 212, column: 15, scope: !2583)
!2589 = !DILocation(line: 212, column: 40, scope: !2583)
!2590 = !{!2555, !1208, i64 56}
!2591 = !DILocation(line: 212, column: 37, scope: !2583)
!2592 = !DILocation(line: 212, column: 35, scope: !2583)
!2593 = !DILocation(line: 212, column: 56, scope: !2583)
!2594 = !DILocation(line: 212, column: 53, scope: !2583)
!2595 = !DILocation(line: 212, column: 51, scope: !2583)
!2596 = !DILocation(line: 213, column: 3, scope: !2566)
!2597 = !DILocation(line: 89, column: 20, scope: !2512, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 301, column: 10, scope: !2566)
!2599 = !DILocation(line: 90, column: 23, scope: !2512, inlinedAt: !2598)
!2600 = !DILocation(line: 91, column: 20, scope: !2546, inlinedAt: !2598)
!2601 = !DILocation(line: 98, column: 5, scope: !2515, inlinedAt: !2598)
!2602 = !DILocation(line: 98, column: 20, scope: !2515, inlinedAt: !2598)
!2603 = !DILocation(line: 99, column: 9, scope: !2550, inlinedAt: !2598)
!2604 = !DILocation(line: 99, column: 22, scope: !2550, inlinedAt: !2598)
!2605 = !DILocation(line: 99, column: 9, scope: !2515, inlinedAt: !2598)
!2606 = !DILocation(line: 100, column: 26, scope: !2550, inlinedAt: !2598)
!2607 = !DILocation(line: 100, column: 14, scope: !2550, inlinedAt: !2598)
!2608 = !DILocation(line: 100, column: 40, scope: !2550, inlinedAt: !2598)
!2609 = !DILocation(line: 100, column: 37, scope: !2550, inlinedAt: !2598)
!2610 = !DILocation(line: 100, column: 35, scope: !2550, inlinedAt: !2598)
!2611 = !DILocation(line: 101, column: 3, scope: !2507, inlinedAt: !2598)
!2612 = !DILocation(line: 90, column: 12, scope: !2512, inlinedAt: !2598)
!2613 = !DILocation(line: 89, column: 12, scope: !2512, inlinedAt: !2598)
!2614 = !DILocation(line: 92, column: 20, scope: !2546, inlinedAt: !2598)
!2615 = !DILocation(line: 193, column: 1, scope: !2507, inlinedAt: !2598)
!2616 = !DILocation(line: 301, column: 27, scope: !2566)
!2617 = !DILocation(line: 301, column: 3, scope: !2566)
!2618 = !DILocation(line: 0, scope: !2576)
!2619 = !DILocation(line: 302, column: 1, scope: !2566)
!2620 = distinct !DISubprogram(name: "set_program_name", scope: !362, file: !362, line: 39, type: !1122, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !358, retainedNodes: !2621)
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "argv0", arg: 1, scope: !2620, file: !362, line: 39, type: !290)
!2623 = !DILocalVariable(name: "slash", scope: !2620, file: !362, line: 46, type: !290)
!2624 = !DILocalVariable(name: "base", scope: !2620, file: !362, line: 47, type: !290)
!2625 = !DILocation(line: 39, column: 31, scope: !2620)
!2626 = !DILocation(line: 51, column: 13, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2620, file: !362, line: 51, column: 7)
!2628 = !DILocation(line: 51, column: 7, scope: !2620)
!2629 = !DILocation(line: 55, column: 14, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !362, line: 52, column: 5)
!2631 = !DILocation(line: 54, column: 7, scope: !2630)
!2632 = !DILocation(line: 56, column: 7, scope: !2630)
!2633 = !DILocation(line: 59, column: 11, scope: !2620)
!2634 = !DILocation(line: 46, column: 15, scope: !2620)
!2635 = !DILocation(line: 60, column: 17, scope: !2620)
!2636 = !DILocation(line: 60, column: 33, scope: !2620)
!2637 = !DILocation(line: 60, column: 11, scope: !2620)
!2638 = !DILocation(line: 47, column: 15, scope: !2620)
!2639 = !DILocation(line: 61, column: 12, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2620, file: !362, line: 61, column: 7)
!2641 = !DILocation(line: 61, column: 20, scope: !2640)
!2642 = !DILocation(line: 61, column: 25, scope: !2640)
!2643 = !DILocation(line: 61, column: 42, scope: !2640)
!2644 = !DILocation(line: 61, column: 28, scope: !2640)
!2645 = !DILocation(line: 61, column: 61, scope: !2640)
!2646 = !DILocation(line: 61, column: 7, scope: !2620)
!2647 = !DILocation(line: 64, column: 11, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !362, line: 64, column: 11)
!2649 = distinct !DILexicalBlock(scope: !2640, file: !362, line: 62, column: 5)
!2650 = !DILocation(line: 64, column: 36, scope: !2648)
!2651 = !DILocation(line: 64, column: 11, scope: !2649)
!2652 = !DILocation(line: 66, column: 24, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2648, file: !362, line: 65, column: 9)
!2654 = !DILocation(line: 70, column: 41, scope: !2653)
!2655 = !DILocation(line: 72, column: 9, scope: !2653)
!2656 = !DILocation(line: 84, column: 16, scope: !2620)
!2657 = !DILocation(line: 90, column: 27, scope: !2620)
!2658 = !DILocation(line: 92, column: 1, scope: !2620)
!2659 = distinct !DISubprogram(name: "clone_quoting_options", scope: !377, file: !377, line: 122, type: !2660, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2663)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!2662, !2662}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "o", arg: 1, scope: !2659, file: !377, line: 122, type: !2662)
!2665 = !DILocalVariable(name: "e", scope: !2659, file: !377, line: 124, type: !58)
!2666 = !DILocalVariable(name: "p", scope: !2659, file: !377, line: 125, type: !2662)
!2667 = !DILocation(line: 122, column: 48, scope: !2659)
!2668 = !DILocation(line: 124, column: 11, scope: !2659)
!2669 = !DILocation(line: 124, column: 7, scope: !2659)
!2670 = !DILocation(line: 125, column: 40, scope: !2659)
!2671 = !DILocation(line: 125, column: 31, scope: !2659)
!2672 = !DILocation(line: 125, column: 27, scope: !2659)
!2673 = !DILocation(line: 127, column: 9, scope: !2659)
!2674 = !DILocation(line: 128, column: 3, scope: !2659)
!2675 = distinct !DISubprogram(name: "get_quoting_style", scope: !377, file: !377, line: 133, type: !2676, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2680)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!5, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "o", arg: 1, scope: !2675, file: !377, line: 133, type: !2678)
!2682 = !DILocation(line: 133, column: 50, scope: !2675)
!2683 = !DILocation(line: 135, column: 11, scope: !2675)
!2684 = !DILocation(line: 135, column: 46, scope: !2675)
!2685 = !{!2686, !1149, i64 0}
!2686 = !{!"quoting_options", !1149, i64 0, !1244, i64 4, !1149, i64 8, !1148, i64 40, !1148, i64 48}
!2687 = !DILocation(line: 135, column: 3, scope: !2675)
!2688 = distinct !DISubprogram(name: "set_quoting_style", scope: !377, file: !377, line: 141, type: !2689, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !2662, !5}
!2691 = !{!2692, !2693}
!2692 = !DILocalVariable(name: "o", arg: 1, scope: !2688, file: !377, line: 141, type: !2662)
!2693 = !DILocalVariable(name: "s", arg: 2, scope: !2688, file: !377, line: 141, type: !5)
!2694 = !DILocation(line: 141, column: 44, scope: !2688)
!2695 = !DILocation(line: 141, column: 66, scope: !2688)
!2696 = !DILocation(line: 143, column: 4, scope: !2688)
!2697 = !DILocation(line: 143, column: 39, scope: !2688)
!2698 = !DILocation(line: 143, column: 45, scope: !2688)
!2699 = !DILocation(line: 144, column: 1, scope: !2688)
!2700 = distinct !DISubprogram(name: "set_char_quoting", scope: !377, file: !377, line: 152, type: !2701, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!58, !2662, !53, !58}
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2710, !2711}
!2704 = !DILocalVariable(name: "o", arg: 1, scope: !2700, file: !377, line: 152, type: !2662)
!2705 = !DILocalVariable(name: "c", arg: 2, scope: !2700, file: !377, line: 152, type: !53)
!2706 = !DILocalVariable(name: "i", arg: 3, scope: !2700, file: !377, line: 152, type: !58)
!2707 = !DILocalVariable(name: "uc", scope: !2700, file: !377, line: 154, type: !60)
!2708 = !DILocalVariable(name: "p", scope: !2700, file: !377, line: 155, type: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2710 = !DILocalVariable(name: "shift", scope: !2700, file: !377, line: 157, type: !58)
!2711 = !DILocalVariable(name: "r", scope: !2700, file: !377, line: 158, type: !58)
!2712 = !DILocation(line: 152, column: 43, scope: !2700)
!2713 = !DILocation(line: 152, column: 51, scope: !2700)
!2714 = !DILocation(line: 152, column: 58, scope: !2700)
!2715 = !DILocation(line: 154, column: 17, scope: !2700)
!2716 = !DILocation(line: 156, column: 6, scope: !2700)
!2717 = !DILocation(line: 156, column: 62, scope: !2700)
!2718 = !DILocation(line: 156, column: 57, scope: !2700)
!2719 = !DILocation(line: 155, column: 17, scope: !2700)
!2720 = !DILocation(line: 157, column: 15, scope: !2700)
!2721 = !DILocation(line: 157, column: 7, scope: !2700)
!2722 = !DILocation(line: 158, column: 12, scope: !2700)
!2723 = !DILocation(line: 158, column: 15, scope: !2700)
!2724 = !DILocation(line: 158, column: 25, scope: !2700)
!2725 = !DILocation(line: 158, column: 7, scope: !2700)
!2726 = !DILocation(line: 159, column: 13, scope: !2700)
!2727 = !DILocation(line: 159, column: 18, scope: !2700)
!2728 = !DILocation(line: 159, column: 23, scope: !2700)
!2729 = !DILocation(line: 159, column: 6, scope: !2700)
!2730 = !DILocation(line: 160, column: 3, scope: !2700)
!2731 = distinct !DISubprogram(name: "set_quoting_flags", scope: !377, file: !377, line: 168, type: !2732, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!58, !2662, !58}
!2734 = !{!2735, !2736, !2737}
!2735 = !DILocalVariable(name: "o", arg: 1, scope: !2731, file: !377, line: 168, type: !2662)
!2736 = !DILocalVariable(name: "i", arg: 2, scope: !2731, file: !377, line: 168, type: !58)
!2737 = !DILocalVariable(name: "r", scope: !2731, file: !377, line: 170, type: !58)
!2738 = !DILocation(line: 168, column: 44, scope: !2731)
!2739 = !DILocation(line: 168, column: 51, scope: !2731)
!2740 = !DILocation(line: 171, column: 8, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2731, file: !377, line: 171, column: 7)
!2742 = !DILocation(line: 171, column: 7, scope: !2731)
!2743 = !DILocation(line: 173, column: 10, scope: !2731)
!2744 = !{!2686, !1244, i64 4}
!2745 = !DILocation(line: 170, column: 7, scope: !2731)
!2746 = !DILocation(line: 174, column: 12, scope: !2731)
!2747 = !DILocation(line: 175, column: 3, scope: !2731)
!2748 = distinct !DISubprogram(name: "set_custom_quoting", scope: !377, file: !377, line: 179, type: !2749, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2662, !290, !290}
!2751 = !{!2752, !2753, !2754}
!2752 = !DILocalVariable(name: "o", arg: 1, scope: !2748, file: !377, line: 179, type: !2662)
!2753 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2748, file: !377, line: 180, type: !290)
!2754 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2748, file: !377, line: 180, type: !290)
!2755 = !DILocation(line: 179, column: 45, scope: !2748)
!2756 = !DILocation(line: 180, column: 33, scope: !2748)
!2757 = !DILocation(line: 180, column: 57, scope: !2748)
!2758 = !DILocation(line: 182, column: 8, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2748, file: !377, line: 182, column: 7)
!2760 = !DILocation(line: 182, column: 7, scope: !2748)
!2761 = !DILocation(line: 184, column: 6, scope: !2748)
!2762 = !DILocation(line: 184, column: 12, scope: !2748)
!2763 = !DILocation(line: 185, column: 8, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2748, file: !377, line: 185, column: 7)
!2765 = !DILocation(line: 185, column: 23, scope: !2764)
!2766 = !DILocation(line: 185, column: 19, scope: !2764)
!2767 = !DILocation(line: 186, column: 5, scope: !2764)
!2768 = !DILocation(line: 187, column: 6, scope: !2748)
!2769 = !DILocation(line: 187, column: 17, scope: !2748)
!2770 = !{!2686, !1148, i64 40}
!2771 = !DILocation(line: 188, column: 6, scope: !2748)
!2772 = !DILocation(line: 188, column: 18, scope: !2748)
!2773 = !{!2686, !1148, i64 48}
!2774 = !DILocation(line: 189, column: 1, scope: !2748)
!2775 = distinct !DISubprogram(name: "quotearg_buffer", scope: !377, file: !377, line: 784, type: !2776, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!55, !52, !55, !290, !55, !2678}
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2779 = !DILocalVariable(name: "buffer", arg: 1, scope: !2775, file: !377, line: 784, type: !52)
!2780 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2775, file: !377, line: 784, type: !55)
!2781 = !DILocalVariable(name: "arg", arg: 3, scope: !2775, file: !377, line: 785, type: !290)
!2782 = !DILocalVariable(name: "argsize", arg: 4, scope: !2775, file: !377, line: 785, type: !55)
!2783 = !DILocalVariable(name: "o", arg: 5, scope: !2775, file: !377, line: 786, type: !2678)
!2784 = !DILocalVariable(name: "p", scope: !2775, file: !377, line: 788, type: !2678)
!2785 = !DILocalVariable(name: "e", scope: !2775, file: !377, line: 789, type: !58)
!2786 = !DILocalVariable(name: "r", scope: !2775, file: !377, line: 790, type: !55)
!2787 = !DILocation(line: 784, column: 24, scope: !2775)
!2788 = !DILocation(line: 784, column: 39, scope: !2775)
!2789 = !DILocation(line: 785, column: 30, scope: !2775)
!2790 = !DILocation(line: 785, column: 42, scope: !2775)
!2791 = !DILocation(line: 786, column: 48, scope: !2775)
!2792 = !DILocation(line: 788, column: 37, scope: !2775)
!2793 = !DILocation(line: 788, column: 33, scope: !2775)
!2794 = !DILocation(line: 789, column: 11, scope: !2775)
!2795 = !DILocation(line: 789, column: 7, scope: !2775)
!2796 = !DILocation(line: 791, column: 43, scope: !2775)
!2797 = !DILocation(line: 791, column: 53, scope: !2775)
!2798 = !DILocation(line: 791, column: 60, scope: !2775)
!2799 = !DILocation(line: 792, column: 43, scope: !2775)
!2800 = !DILocation(line: 792, column: 58, scope: !2775)
!2801 = !DILocation(line: 790, column: 14, scope: !2775)
!2802 = !DILocation(line: 790, column: 10, scope: !2775)
!2803 = !DILocation(line: 793, column: 9, scope: !2775)
!2804 = !DILocation(line: 794, column: 3, scope: !2775)
!2805 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !377, file: !377, line: 256, type: !2806, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !2809)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!55, !52, !55, !290, !55, !5, !58, !2808, !290, !290}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2834, !2835, !2836, !2837, !2838, !2841, !2842, !2855, !2857, !2858, !2865}
!2810 = !DILocalVariable(name: "buffer", arg: 1, scope: !2805, file: !377, line: 256, type: !52)
!2811 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2805, file: !377, line: 256, type: !55)
!2812 = !DILocalVariable(name: "arg", arg: 3, scope: !2805, file: !377, line: 257, type: !290)
!2813 = !DILocalVariable(name: "argsize", arg: 4, scope: !2805, file: !377, line: 257, type: !55)
!2814 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2805, file: !377, line: 258, type: !5)
!2815 = !DILocalVariable(name: "flags", arg: 6, scope: !2805, file: !377, line: 258, type: !58)
!2816 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2805, file: !377, line: 259, type: !2808)
!2817 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2805, file: !377, line: 260, type: !290)
!2818 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2805, file: !377, line: 261, type: !290)
!2819 = !DILocalVariable(name: "i", scope: !2805, file: !377, line: 263, type: !55)
!2820 = !DILocalVariable(name: "len", scope: !2805, file: !377, line: 264, type: !55)
!2821 = !DILocalVariable(name: "orig_buffersize", scope: !2805, file: !377, line: 265, type: !55)
!2822 = !DILocalVariable(name: "quote_string", scope: !2805, file: !377, line: 266, type: !290)
!2823 = !DILocalVariable(name: "quote_string_len", scope: !2805, file: !377, line: 267, type: !55)
!2824 = !DILocalVariable(name: "backslash_escapes", scope: !2805, file: !377, line: 268, type: !72)
!2825 = !DILocalVariable(name: "unibyte_locale", scope: !2805, file: !377, line: 269, type: !72)
!2826 = !DILocalVariable(name: "elide_outer_quotes", scope: !2805, file: !377, line: 270, type: !72)
!2827 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2805, file: !377, line: 271, type: !72)
!2828 = !DILocalVariable(name: "encountered_single_quote", scope: !2805, file: !377, line: 272, type: !72)
!2829 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2805, file: !377, line: 273, type: !72)
!2830 = !DILocalVariable(name: "c", scope: !2831, file: !377, line: 402, type: !60)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !377, line: 401, column: 5)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !377, line: 400, column: 3)
!2833 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 400, column: 3)
!2834 = !DILocalVariable(name: "esc", scope: !2831, file: !377, line: 403, type: !60)
!2835 = !DILocalVariable(name: "is_right_quote", scope: !2831, file: !377, line: 404, type: !72)
!2836 = !DILocalVariable(name: "escaping", scope: !2831, file: !377, line: 405, type: !72)
!2837 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2831, file: !377, line: 406, type: !72)
!2838 = !DILocalVariable(name: "m", scope: !2839, file: !377, line: 610, type: !55)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 608, column: 11)
!2840 = distinct !DILexicalBlock(scope: !2831, file: !377, line: 426, column: 9)
!2841 = !DILocalVariable(name: "printable", scope: !2839, file: !377, line: 612, type: !72)
!2842 = !DILocalVariable(name: "mbstate", scope: !2843, file: !377, line: 621, type: !2845)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !377, line: 620, column: 15)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !377, line: 614, column: 17)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1659, line: 6, baseType: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1661, line: 21, baseType: !2847)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1661, line: 13, size: 64, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2847, file: !1661, line: 15, baseType: !58, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2847, file: !1661, line: 20, baseType: !2851, size: 32, offset: 32)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2847, file: !1661, line: 16, size: 32, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2851, file: !1661, line: 18, baseType: !7, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2851, file: !1661, line: 19, baseType: !1670, size: 32)
!2855 = !DILocalVariable(name: "w", scope: !2856, file: !377, line: 631, type: !1680)
!2856 = distinct !DILexicalBlock(scope: !2843, file: !377, line: 630, column: 19)
!2857 = !DILocalVariable(name: "bytes", scope: !2856, file: !377, line: 632, type: !55)
!2858 = !DILocalVariable(name: "j", scope: !2859, file: !377, line: 657, type: !55)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !377, line: 656, column: 27)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !377, line: 654, column: 29)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !377, line: 649, column: 23)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !377, line: 641, column: 30)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !377, line: 636, column: 30)
!2864 = distinct !DILexicalBlock(scope: !2856, file: !377, line: 634, column: 25)
!2865 = !DILocalVariable(name: "ilim", scope: !2866, file: !377, line: 684, type: !55)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !377, line: 681, column: 15)
!2867 = distinct !DILexicalBlock(scope: !2839, file: !377, line: 680, column: 17)
!2868 = !DILocation(line: 256, column: 33, scope: !2805)
!2869 = !DILocation(line: 256, column: 48, scope: !2805)
!2870 = !DILocation(line: 257, column: 39, scope: !2805)
!2871 = !DILocation(line: 257, column: 51, scope: !2805)
!2872 = !DILocation(line: 258, column: 46, scope: !2805)
!2873 = !DILocation(line: 258, column: 65, scope: !2805)
!2874 = !DILocation(line: 259, column: 47, scope: !2805)
!2875 = !DILocation(line: 260, column: 39, scope: !2805)
!2876 = !DILocation(line: 261, column: 39, scope: !2805)
!2877 = !DILocation(line: 264, column: 10, scope: !2805)
!2878 = !DILocation(line: 265, column: 10, scope: !2805)
!2879 = !DILocation(line: 266, column: 15, scope: !2805)
!2880 = !DILocation(line: 267, column: 10, scope: !2805)
!2881 = !DILocation(line: 268, column: 8, scope: !2805)
!2882 = !DILocation(line: 269, column: 25, scope: !2805)
!2883 = !DILocation(line: 269, column: 36, scope: !2805)
!2884 = !DILocation(line: 270, column: 8, scope: !2805)
!2885 = !DILocation(line: 271, column: 8, scope: !2805)
!2886 = !DILocation(line: 272, column: 8, scope: !2805)
!2887 = !DILocation(line: 273, column: 8, scope: !2805)
!2888 = !DILocation(line: 273, column: 3, scope: !2805)
!2889 = !DILocation(line: 0, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 317, column: 5)
!2891 = !DILocation(line: 316, column: 3, scope: !2805)
!2892 = !DILocation(line: 323, column: 11, scope: !2890)
!2893 = !DILocation(line: 323, column: 12, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !377, line: 323, column: 11)
!2895 = !DILocation(line: 324, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !377, line: 324, column: 9)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !377, line: 324, column: 9)
!2898 = !DILocation(line: 324, column: 9, scope: !2897)
!2899 = !DILocation(line: 362, column: 26, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !377, line: 340, column: 11)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !377, line: 339, column: 13)
!2902 = distinct !DILexicalBlock(scope: !2890, file: !377, line: 338, column: 7)
!2903 = !DILocation(line: 363, column: 27, scope: !2900)
!2904 = !DILocation(line: 364, column: 11, scope: !2900)
!2905 = !DILocation(line: 365, column: 14, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2902, file: !377, line: 365, column: 13)
!2907 = !DILocation(line: 365, column: 13, scope: !2902)
!2908 = !DILocation(line: 366, column: 43, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !377, line: 366, column: 11)
!2910 = distinct !DILexicalBlock(scope: !2906, file: !377, line: 366, column: 11)
!2911 = !DILocation(line: 366, column: 11, scope: !2910)
!2912 = !DILocation(line: 367, column: 13, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !377, line: 367, column: 13)
!2914 = distinct !DILexicalBlock(scope: !2909, file: !377, line: 367, column: 13)
!2915 = !DILocation(line: 367, column: 13, scope: !2914)
!2916 = !DILocation(line: 366, column: 70, scope: !2909)
!2917 = distinct !{!2917, !2911, !2918}
!2918 = !DILocation(line: 367, column: 13, scope: !2910)
!2919 = !DILocation(line: 370, column: 28, scope: !2902)
!2920 = !DILocation(line: 372, column: 7, scope: !2890)
!2921 = !DILocation(line: 376, column: 7, scope: !2890)
!2922 = !DILocation(line: 379, column: 7, scope: !2890)
!2923 = !DILocation(line: 381, column: 12, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2890, file: !377, line: 381, column: 11)
!2925 = !DILocation(line: 381, column: 11, scope: !2890)
!2926 = !DILocation(line: 0, scope: !2924)
!2927 = !DILocation(line: 386, column: 12, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2890, file: !377, line: 386, column: 11)
!2929 = !DILocation(line: 386, column: 11, scope: !2890)
!2930 = !DILocation(line: 387, column: 9, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !377, line: 387, column: 9)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !377, line: 387, column: 9)
!2933 = !DILocation(line: 387, column: 9, scope: !2932)
!2934 = !DILocation(line: 394, column: 7, scope: !2890)
!2935 = !DILocation(line: 397, column: 7, scope: !2890)
!2936 = !DILocation(line: 0, scope: !2805)
!2937 = !DILocation(line: 263, column: 10, scope: !2805)
!2938 = !DILocation(line: 400, column: 8, scope: !2833)
!2939 = !DILocation(line: 0, scope: !2832)
!2940 = !DILocation(line: 400, column: 27, scope: !2832)
!2941 = !DILocation(line: 400, column: 19, scope: !2832)
!2942 = !DILocation(line: 400, column: 41, scope: !2832)
!2943 = !DILocation(line: 400, column: 48, scope: !2832)
!2944 = !DILocation(line: 400, column: 3, scope: !2833)
!2945 = !DILocation(line: 400, column: 60, scope: !2832)
!2946 = !DILocation(line: 404, column: 12, scope: !2831)
!2947 = !DILocation(line: 405, column: 12, scope: !2831)
!2948 = !DILocation(line: 406, column: 12, scope: !2831)
!2949 = !DILocation(line: 409, column: 11, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2831, file: !377, line: 408, column: 11)
!2951 = !DILocation(line: 411, column: 17, scope: !2950)
!2952 = !DILocation(line: 412, column: 39, scope: !2950)
!2953 = !DILocation(line: 416, column: 32, scope: !2950)
!2954 = !DILocation(line: 412, column: 19, scope: !2950)
!2955 = !DILocation(line: 412, column: 15, scope: !2950)
!2956 = !DILocation(line: 417, column: 11, scope: !2950)
!2957 = !DILocation(line: 417, column: 26, scope: !2950)
!2958 = !DILocation(line: 417, column: 14, scope: !2950)
!2959 = !DILocation(line: 417, column: 63, scope: !2950)
!2960 = !DILocation(line: 408, column: 11, scope: !2831)
!2961 = !DILocation(line: 0, scope: !2831)
!2962 = !DILocation(line: 424, column: 11, scope: !2831)
!2963 = !DILocation(line: 402, column: 21, scope: !2831)
!2964 = !DILocation(line: 425, column: 7, scope: !2831)
!2965 = !DILocation(line: 428, column: 15, scope: !2840)
!2966 = !DILocation(line: 430, column: 15, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !377, line: 430, column: 15)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !377, line: 429, column: 13)
!2969 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 428, column: 15)
!2970 = !DILocation(line: 430, column: 15, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !377, line: 430, column: 15)
!2972 = !DILocation(line: 430, column: 15, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !377, line: 430, column: 15)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !377, line: 430, column: 15)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !377, line: 430, column: 15)
!2976 = !DILocation(line: 430, column: 15, scope: !2974)
!2977 = !DILocation(line: 430, column: 15, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !377, line: 430, column: 15)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !377, line: 430, column: 15)
!2980 = !DILocation(line: 430, column: 15, scope: !2979)
!2981 = !DILocation(line: 430, column: 15, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !377, line: 430, column: 15)
!2983 = distinct !DILexicalBlock(scope: !2975, file: !377, line: 430, column: 15)
!2984 = !DILocation(line: 430, column: 15, scope: !2983)
!2985 = !DILocation(line: 430, column: 15, scope: !2975)
!2986 = !DILocation(line: 430, column: 15, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !377, line: 430, column: 15)
!2988 = distinct !DILexicalBlock(scope: !2967, file: !377, line: 430, column: 15)
!2989 = !DILocation(line: 430, column: 15, scope: !2988)
!2990 = !DILocation(line: 438, column: 19, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2968, file: !377, line: 437, column: 19)
!2992 = !DILocation(line: 438, column: 24, scope: !2991)
!2993 = !DILocation(line: 438, column: 28, scope: !2991)
!2994 = !DILocation(line: 438, column: 38, scope: !2991)
!2995 = !DILocation(line: 438, column: 48, scope: !2991)
!2996 = !DILocation(line: 438, column: 59, scope: !2991)
!2997 = !DILocation(line: 440, column: 19, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !377, line: 440, column: 19)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !377, line: 440, column: 19)
!3000 = distinct !DILexicalBlock(scope: !2991, file: !377, line: 439, column: 17)
!3001 = !DILocation(line: 440, column: 19, scope: !2999)
!3002 = !DILocation(line: 441, column: 19, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !377, line: 441, column: 19)
!3004 = distinct !DILexicalBlock(scope: !3000, file: !377, line: 441, column: 19)
!3005 = !DILocation(line: 441, column: 19, scope: !3004)
!3006 = !DILocation(line: 442, column: 17, scope: !3000)
!3007 = !DILocation(line: 449, column: 20, scope: !2969)
!3008 = !DILocation(line: 454, column: 11, scope: !2840)
!3009 = !DILocation(line: 457, column: 19, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 455, column: 13)
!3011 = !DILocation(line: 463, column: 19, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3010, file: !377, line: 462, column: 19)
!3013 = !DILocation(line: 463, column: 24, scope: !3012)
!3014 = !DILocation(line: 463, column: 28, scope: !3012)
!3015 = !DILocation(line: 463, column: 38, scope: !3012)
!3016 = !DILocation(line: 463, column: 47, scope: !3012)
!3017 = !DILocation(line: 463, column: 41, scope: !3012)
!3018 = !DILocation(line: 463, column: 52, scope: !3012)
!3019 = !DILocation(line: 462, column: 19, scope: !3010)
!3020 = !DILocation(line: 464, column: 25, scope: !3012)
!3021 = !DILocation(line: 464, column: 17, scope: !3012)
!3022 = !DILocation(line: 471, column: 25, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3012, file: !377, line: 465, column: 19)
!3024 = !DILocation(line: 475, column: 21, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !377, line: 475, column: 21)
!3026 = distinct !DILexicalBlock(scope: !3023, file: !377, line: 475, column: 21)
!3027 = !DILocation(line: 475, column: 21, scope: !3026)
!3028 = !DILocation(line: 476, column: 21, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !377, line: 476, column: 21)
!3030 = distinct !DILexicalBlock(scope: !3023, file: !377, line: 476, column: 21)
!3031 = !DILocation(line: 476, column: 21, scope: !3030)
!3032 = !DILocation(line: 477, column: 21, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !377, line: 477, column: 21)
!3034 = distinct !DILexicalBlock(scope: !3023, file: !377, line: 477, column: 21)
!3035 = !DILocation(line: 477, column: 21, scope: !3034)
!3036 = !DILocation(line: 478, column: 21, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !377, line: 478, column: 21)
!3038 = distinct !DILexicalBlock(scope: !3023, file: !377, line: 478, column: 21)
!3039 = !DILocation(line: 478, column: 21, scope: !3038)
!3040 = !DILocation(line: 479, column: 21, scope: !3023)
!3041 = !DILocation(line: 403, column: 21, scope: !2831)
!3042 = !DILocation(line: 492, column: 31, scope: !2840)
!3043 = !DILocation(line: 493, column: 31, scope: !2840)
!3044 = !DILocation(line: 495, column: 31, scope: !2840)
!3045 = !DILocation(line: 496, column: 31, scope: !2840)
!3046 = !DILocation(line: 497, column: 31, scope: !2840)
!3047 = !DILocation(line: 500, column: 15, scope: !2840)
!3048 = !DILocation(line: 502, column: 19, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !377, line: 501, column: 13)
!3050 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 500, column: 15)
!3051 = !DILocation(line: 509, column: 33, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 509, column: 15)
!3053 = !DILocation(line: 0, scope: !2840)
!3054 = !DILocation(line: 514, column: 15, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 513, column: 15)
!3056 = !DILocation(line: 518, column: 15, scope: !2840)
!3057 = !DILocation(line: 526, column: 26, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 526, column: 15)
!3059 = !DILocation(line: 526, column: 15, scope: !2840)
!3060 = !DILocation(line: 526, column: 40, scope: !3058)
!3061 = !DILocation(line: 526, column: 47, scope: !3058)
!3062 = !DILocation(line: 530, column: 17, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 530, column: 15)
!3064 = !DILocation(line: 526, column: 18, scope: !3058)
!3065 = !DILocation(line: 526, column: 65, scope: !3058)
!3066 = !DILocation(line: 530, column: 15, scope: !2840)
!3067 = !DILocation(line: 535, column: 11, scope: !2840)
!3068 = !DILocation(line: 549, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 548, column: 15)
!3070 = !DILocation(line: 556, column: 15, scope: !2840)
!3071 = !DILocation(line: 558, column: 19, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !377, line: 557, column: 13)
!3073 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 556, column: 15)
!3074 = !DILocation(line: 561, column: 19, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !377, line: 561, column: 19)
!3076 = !DILocation(line: 561, column: 35, scope: !3075)
!3077 = !DILocation(line: 561, column: 30, scope: !3075)
!3078 = !DILocation(line: 570, column: 15, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !377, line: 570, column: 15)
!3080 = distinct !DILexicalBlock(scope: !3072, file: !377, line: 570, column: 15)
!3081 = !DILocation(line: 570, column: 15, scope: !3080)
!3082 = !DILocation(line: 571, column: 15, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !377, line: 571, column: 15)
!3084 = distinct !DILexicalBlock(scope: !3072, file: !377, line: 571, column: 15)
!3085 = !DILocation(line: 571, column: 15, scope: !3084)
!3086 = !DILocation(line: 572, column: 15, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !377, line: 572, column: 15)
!3088 = distinct !DILexicalBlock(scope: !3072, file: !377, line: 572, column: 15)
!3089 = !DILocation(line: 572, column: 15, scope: !3088)
!3090 = !DILocation(line: 574, column: 13, scope: !3072)
!3091 = !DILocation(line: 614, column: 17, scope: !2839)
!3092 = !DILocation(line: 610, column: 20, scope: !2839)
!3093 = !DILocation(line: 617, column: 29, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2844, file: !377, line: 615, column: 15)
!3095 = !DILocation(line: 617, column: 27, scope: !3094)
!3096 = !DILocation(line: 612, column: 18, scope: !2839)
!3097 = !DILocation(line: 618, column: 15, scope: !3094)
!3098 = !DILocation(line: 621, column: 17, scope: !2843)
!3099 = !DILocation(line: 622, column: 17, scope: !2843)
!3100 = !DILocation(line: 626, column: 29, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2843, file: !377, line: 626, column: 21)
!3102 = !DILocation(line: 626, column: 21, scope: !2843)
!3103 = !DILocation(line: 627, column: 29, scope: !3101)
!3104 = !DILocation(line: 627, column: 19, scope: !3101)
!3105 = !DILocation(line: 0, scope: !2950)
!3106 = !DILocation(line: 629, column: 17, scope: !2843)
!3107 = !DILocation(line: 624, column: 19, scope: !2843)
!3108 = !DILocation(line: 625, column: 27, scope: !2843)
!3109 = !DILocation(line: 631, column: 21, scope: !2856)
!3110 = !DILocation(line: 632, column: 56, scope: !2856)
!3111 = !DILocation(line: 632, column: 50, scope: !2856)
!3112 = !DILocation(line: 633, column: 53, scope: !2856)
!3113 = !DILocation(line: 621, column: 27, scope: !2843)
!3114 = !DILocation(line: 631, column: 29, scope: !2856)
!3115 = !DILocation(line: 632, column: 36, scope: !2856)
!3116 = !DILocation(line: 632, column: 28, scope: !2856)
!3117 = !DILocation(line: 634, column: 25, scope: !2856)
!3118 = !DILocation(line: 644, column: 38, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !2862, file: !377, line: 642, column: 23)
!3120 = !DILocation(line: 644, column: 48, scope: !3119)
!3121 = !DILocation(line: 644, column: 51, scope: !3119)
!3122 = !DILocation(line: 644, column: 25, scope: !3119)
!3123 = !DILocation(line: 645, column: 28, scope: !3119)
!3124 = !DILocation(line: 644, column: 34, scope: !3119)
!3125 = distinct !{!3125, !3122, !3123}
!3126 = !DILocation(line: 658, column: 43, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !377, line: 658, column: 29)
!3128 = distinct !DILexicalBlock(scope: !2859, file: !377, line: 658, column: 29)
!3129 = !DILocation(line: 655, column: 29, scope: !2860)
!3130 = !DILocation(line: 657, column: 36, scope: !2859)
!3131 = !DILocation(line: 659, column: 49, scope: !3127)
!3132 = !DILocation(line: 659, column: 39, scope: !3127)
!3133 = !DILocation(line: 659, column: 31, scope: !3127)
!3134 = !DILocation(line: 658, column: 53, scope: !3127)
!3135 = !DILocation(line: 658, column: 29, scope: !3128)
!3136 = distinct !{!3136, !3135, !3137}
!3137 = !DILocation(line: 667, column: 33, scope: !3128)
!3138 = !DILocation(line: 674, column: 19, scope: !2843)
!3139 = !DILocation(line: 670, column: 41, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2861, file: !377, line: 670, column: 29)
!3141 = !DILocation(line: 670, column: 31, scope: !3140)
!3142 = !DILocation(line: 670, column: 29, scope: !2861)
!3143 = !DILocation(line: 672, column: 27, scope: !2861)
!3144 = !DILocation(line: 675, column: 26, scope: !2843)
!3145 = !DILocation(line: 675, column: 24, scope: !2843)
!3146 = !DILocation(line: 674, column: 19, scope: !2856)
!3147 = distinct !{!3147, !3106, !3148}
!3148 = !DILocation(line: 675, column: 44, scope: !2843)
!3149 = !DILocation(line: 676, column: 15, scope: !2844)
!3150 = !DILocation(line: 0, scope: !3101)
!3151 = !DILocation(line: 0, scope: !2843)
!3152 = !DILocation(line: 678, column: 40, scope: !2839)
!3153 = !DILocation(line: 680, column: 19, scope: !2867)
!3154 = !DILocation(line: 680, column: 45, scope: !2867)
!3155 = !DILocation(line: 680, column: 23, scope: !2867)
!3156 = !DILocation(line: 684, column: 33, scope: !2866)
!3157 = !DILocation(line: 684, column: 24, scope: !2866)
!3158 = !DILocation(line: 686, column: 17, scope: !2866)
!3159 = !DILocation(line: 0, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !377, line: 687, column: 19)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !377, line: 686, column: 17)
!3162 = distinct !DILexicalBlock(scope: !2866, file: !377, line: 686, column: 17)
!3163 = !DILocation(line: 0, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3160, file: !377, line: 703, column: 21)
!3165 = !DILocation(line: 0, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !377, line: 696, column: 23)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !377, line: 695, column: 30)
!3168 = distinct !DILexicalBlock(scope: !3160, file: !377, line: 688, column: 25)
!3169 = !DILocation(line: 688, column: 43, scope: !3168)
!3170 = !DILocation(line: 690, column: 25, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !377, line: 690, column: 25)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !377, line: 689, column: 23)
!3173 = !DILocation(line: 690, column: 25, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !377, line: 690, column: 25)
!3175 = !DILocation(line: 690, column: 25, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !377, line: 690, column: 25)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !377, line: 690, column: 25)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !377, line: 690, column: 25)
!3179 = !DILocation(line: 690, column: 25, scope: !3177)
!3180 = !DILocation(line: 690, column: 25, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !377, line: 690, column: 25)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !377, line: 690, column: 25)
!3183 = !DILocation(line: 690, column: 25, scope: !3182)
!3184 = !DILocation(line: 690, column: 25, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !377, line: 690, column: 25)
!3186 = distinct !DILexicalBlock(scope: !3178, file: !377, line: 690, column: 25)
!3187 = !DILocation(line: 690, column: 25, scope: !3186)
!3188 = !DILocation(line: 690, column: 25, scope: !3178)
!3189 = !DILocation(line: 690, column: 25, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !377, line: 690, column: 25)
!3191 = distinct !DILexicalBlock(scope: !3171, file: !377, line: 690, column: 25)
!3192 = !DILocation(line: 690, column: 25, scope: !3191)
!3193 = !DILocation(line: 691, column: 25, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !377, line: 691, column: 25)
!3195 = distinct !DILexicalBlock(scope: !3172, file: !377, line: 691, column: 25)
!3196 = !DILocation(line: 691, column: 25, scope: !3195)
!3197 = !DILocation(line: 692, column: 25, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !377, line: 692, column: 25)
!3199 = distinct !DILexicalBlock(scope: !3172, file: !377, line: 692, column: 25)
!3200 = !DILocation(line: 692, column: 25, scope: !3199)
!3201 = !DILocation(line: 693, column: 38, scope: !3172)
!3202 = !DILocation(line: 693, column: 33, scope: !3172)
!3203 = !DILocation(line: 694, column: 23, scope: !3172)
!3204 = !DILocation(line: 695, column: 30, scope: !3167)
!3205 = !DILocation(line: 695, column: 30, scope: !3168)
!3206 = !DILocation(line: 697, column: 25, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !377, line: 697, column: 25)
!3208 = distinct !DILexicalBlock(scope: !3166, file: !377, line: 697, column: 25)
!3209 = !DILocation(line: 697, column: 25, scope: !3208)
!3210 = !DILocation(line: 699, column: 23, scope: !3166)
!3211 = !DILocation(line: 0, scope: !3199)
!3212 = !DILocation(line: 0, scope: !3172)
!3213 = !DILocation(line: 0, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !2950, file: !377, line: 418, column: 9)
!3215 = !DILocation(line: 0, scope: !3171)
!3216 = !DILocation(line: 700, column: 35, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3160, file: !377, line: 700, column: 25)
!3218 = !DILocation(line: 700, column: 30, scope: !3217)
!3219 = !DILocation(line: 700, column: 25, scope: !3160)
!3220 = !DILocation(line: 702, column: 21, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !377, line: 702, column: 21)
!3222 = distinct !DILexicalBlock(scope: !3160, file: !377, line: 702, column: 21)
!3223 = !DILocation(line: 702, column: 21, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !377, line: 702, column: 21)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !377, line: 702, column: 21)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !377, line: 702, column: 21)
!3227 = !DILocation(line: 702, column: 21, scope: !3225)
!3228 = !DILocation(line: 702, column: 21, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !377, line: 702, column: 21)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !377, line: 702, column: 21)
!3231 = !DILocation(line: 702, column: 21, scope: !3230)
!3232 = !DILocation(line: 702, column: 21, scope: !3226)
!3233 = !DILocation(line: 0, scope: !3208)
!3234 = !DILocation(line: 703, column: 21, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3164, file: !377, line: 703, column: 21)
!3236 = !DILocation(line: 703, column: 21, scope: !3164)
!3237 = !DILocation(line: 704, column: 25, scope: !3160)
!3238 = !DILocation(line: 686, column: 17, scope: !3161)
!3239 = distinct !{!3239, !3240, !3241}
!3240 = !DILocation(line: 686, column: 17, scope: !3162)
!3241 = !DILocation(line: 705, column: 19, scope: !3162)
!3242 = !DILocation(line: 0, scope: !2833)
!3243 = !DILocation(line: 416, column: 30, scope: !2950)
!3244 = !DILocation(line: 712, column: 34, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !2831, file: !377, line: 712, column: 11)
!3246 = !DILocation(line: 714, column: 14, scope: !3245)
!3247 = !DILocation(line: 715, column: 14, scope: !3245)
!3248 = !DILocation(line: 715, column: 35, scope: !3245)
!3249 = !DILocation(line: 715, column: 17, scope: !3245)
!3250 = !DILocation(line: 715, column: 47, scope: !3245)
!3251 = !DILocation(line: 715, column: 65, scope: !3245)
!3252 = !DILocation(line: 716, column: 15, scope: !3245)
!3253 = !DILocation(line: 716, column: 11, scope: !3245)
!3254 = !DILocation(line: 712, column: 11, scope: !2831)
!3255 = !DILocation(line: 400, column: 10, scope: !2833)
!3256 = !DILocation(line: 0, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !377, line: 519, column: 13)
!3258 = distinct !DILexicalBlock(scope: !2840, file: !377, line: 518, column: 15)
!3259 = !DILocation(line: 720, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !2831, file: !377, line: 720, column: 7)
!3261 = !DILocation(line: 720, column: 7, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3260, file: !377, line: 720, column: 7)
!3263 = !DILocation(line: 720, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !377, line: 720, column: 7)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !377, line: 720, column: 7)
!3266 = distinct !DILexicalBlock(scope: !3262, file: !377, line: 720, column: 7)
!3267 = !DILocation(line: 720, column: 7, scope: !3265)
!3268 = !DILocation(line: 720, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !377, line: 720, column: 7)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !377, line: 720, column: 7)
!3271 = !DILocation(line: 720, column: 7, scope: !3270)
!3272 = !DILocation(line: 720, column: 7, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !377, line: 720, column: 7)
!3274 = distinct !DILexicalBlock(scope: !3266, file: !377, line: 720, column: 7)
!3275 = !DILocation(line: 720, column: 7, scope: !3274)
!3276 = !DILocation(line: 720, column: 7, scope: !3266)
!3277 = !DILocation(line: 720, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !377, line: 720, column: 7)
!3279 = distinct !DILexicalBlock(scope: !3260, file: !377, line: 720, column: 7)
!3280 = !DILocation(line: 720, column: 7, scope: !3279)
!3281 = !DILocation(line: 723, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !377, line: 723, column: 7)
!3283 = distinct !DILexicalBlock(scope: !2831, file: !377, line: 723, column: 7)
!3284 = !DILocation(line: 424, column: 9, scope: !2831)
!3285 = !DILocation(line: 723, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !377, line: 723, column: 7)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !377, line: 723, column: 7)
!3288 = distinct !DILexicalBlock(scope: !3282, file: !377, line: 723, column: 7)
!3289 = !DILocation(line: 723, column: 7, scope: !3287)
!3290 = !DILocation(line: 723, column: 7, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !377, line: 723, column: 7)
!3292 = distinct !DILexicalBlock(scope: !3288, file: !377, line: 723, column: 7)
!3293 = !DILocation(line: 723, column: 7, scope: !3292)
!3294 = !DILocation(line: 723, column: 7, scope: !3288)
!3295 = !DILocation(line: 724, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !377, line: 724, column: 7)
!3297 = distinct !DILexicalBlock(scope: !2831, file: !377, line: 724, column: 7)
!3298 = !DILocation(line: 724, column: 7, scope: !3297)
!3299 = !DILocation(line: 726, column: 13, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !2831, file: !377, line: 726, column: 11)
!3301 = !DILocation(line: 726, column: 11, scope: !2831)
!3302 = !DILocation(line: 728, column: 5, scope: !2832)
!3303 = !DILocation(line: 400, column: 75, scope: !2832)
!3304 = !DILocation(line: 400, column: 3, scope: !2832)
!3305 = distinct !{!3305, !2944, !3306}
!3306 = !DILocation(line: 728, column: 5, scope: !2833)
!3307 = !DILocation(line: 730, column: 11, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 730, column: 7)
!3309 = !DILocation(line: 730, column: 16, scope: !3308)
!3310 = !DILocation(line: 738, column: 51, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 738, column: 7)
!3312 = !DILocation(line: 739, column: 10, scope: !3311)
!3313 = !DILocation(line: 741, column: 11, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !377, line: 741, column: 11)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !377, line: 740, column: 5)
!3316 = !DILocation(line: 741, column: 11, scope: !3315)
!3317 = !DILocation(line: 742, column: 16, scope: !3314)
!3318 = !DILocation(line: 742, column: 9, scope: !3314)
!3319 = !DILocation(line: 746, column: 18, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3314, file: !377, line: 746, column: 16)
!3321 = !DILocation(line: 746, column: 32, scope: !3320)
!3322 = !DILocation(line: 746, column: 29, scope: !3320)
!3323 = !DILocation(line: 755, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 755, column: 7)
!3325 = !DILocation(line: 755, column: 20, scope: !3324)
!3326 = !DILocation(line: 756, column: 12, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !377, line: 756, column: 5)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !377, line: 756, column: 5)
!3329 = !DILocation(line: 756, column: 5, scope: !3328)
!3330 = !DILocation(line: 757, column: 7, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !377, line: 757, column: 7)
!3332 = distinct !DILexicalBlock(scope: !3327, file: !377, line: 757, column: 7)
!3333 = !DILocation(line: 757, column: 7, scope: !3332)
!3334 = !DILocation(line: 756, column: 39, scope: !3327)
!3335 = distinct !{!3335, !3329, !3336}
!3336 = !DILocation(line: 757, column: 7, scope: !3328)
!3337 = !DILocation(line: 759, column: 11, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 759, column: 7)
!3339 = !DILocation(line: 759, column: 7, scope: !2805)
!3340 = !DILocation(line: 760, column: 5, scope: !3338)
!3341 = !DILocation(line: 760, column: 17, scope: !3338)
!3342 = !DILocation(line: 766, column: 21, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 766, column: 7)
!3344 = !DILocation(line: 766, column: 54, scope: !3343)
!3345 = !DILocation(line: 766, column: 51, scope: !3343)
!3346 = !DILocation(line: 770, column: 42, scope: !2805)
!3347 = !DILocation(line: 768, column: 10, scope: !2805)
!3348 = !DILocation(line: 768, column: 3, scope: !2805)
!3349 = !DILocation(line: 772, column: 1, scope: !2805)
!3350 = distinct !DISubprogram(name: "gettext_quote", scope: !377, file: !377, line: 207, type: !3351, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!290, !290, !5}
!3353 = !{!3354, !3355, !3356, !3357}
!3354 = !DILocalVariable(name: "msgid", arg: 1, scope: !3350, file: !377, line: 207, type: !290)
!3355 = !DILocalVariable(name: "s", arg: 2, scope: !3350, file: !377, line: 207, type: !5)
!3356 = !DILocalVariable(name: "translation", scope: !3350, file: !377, line: 209, type: !290)
!3357 = !DILocalVariable(name: "locale_code", scope: !3350, file: !377, line: 210, type: !290)
!3358 = !DILocation(line: 207, column: 28, scope: !3350)
!3359 = !DILocation(line: 207, column: 54, scope: !3350)
!3360 = !DILocation(line: 209, column: 29, scope: !3350)
!3361 = !DILocation(line: 209, column: 15, scope: !3350)
!3362 = !DILocation(line: 212, column: 19, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3350, file: !377, line: 212, column: 7)
!3364 = !DILocation(line: 212, column: 7, scope: !3350)
!3365 = !DILocation(line: 233, column: 17, scope: !3350)
!3366 = !DILocation(line: 210, column: 15, scope: !3350)
!3367 = !DILocalVariable(name: "s1", arg: 1, scope: !3368, file: !3369, line: 160, type: !290)
!3368 = distinct !DISubprogram(name: "strcaseeq0", scope: !3369, file: !3369, line: 160, type: !3370, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3372)
!3369 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!58, !290, !290, !53, !53, !53, !53, !53, !53, !53, !53, !53}
!3372 = !{!3367, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382}
!3373 = !DILocalVariable(name: "s2", arg: 2, scope: !3368, file: !3369, line: 160, type: !290)
!3374 = !DILocalVariable(name: "s20", arg: 3, scope: !3368, file: !3369, line: 160, type: !53)
!3375 = !DILocalVariable(name: "s21", arg: 4, scope: !3368, file: !3369, line: 160, type: !53)
!3376 = !DILocalVariable(name: "s22", arg: 5, scope: !3368, file: !3369, line: 160, type: !53)
!3377 = !DILocalVariable(name: "s23", arg: 6, scope: !3368, file: !3369, line: 160, type: !53)
!3378 = !DILocalVariable(name: "s24", arg: 7, scope: !3368, file: !3369, line: 160, type: !53)
!3379 = !DILocalVariable(name: "s25", arg: 8, scope: !3368, file: !3369, line: 160, type: !53)
!3380 = !DILocalVariable(name: "s26", arg: 9, scope: !3368, file: !3369, line: 160, type: !53)
!3381 = !DILocalVariable(name: "s27", arg: 10, scope: !3368, file: !3369, line: 160, type: !53)
!3382 = !DILocalVariable(name: "s28", arg: 11, scope: !3368, file: !3369, line: 160, type: !53)
!3383 = !DILocation(line: 160, column: 25, scope: !3368, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 234, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3350, file: !377, line: 234, column: 7)
!3386 = !DILocation(line: 160, column: 41, scope: !3368, inlinedAt: !3384)
!3387 = !DILocation(line: 160, column: 50, scope: !3368, inlinedAt: !3384)
!3388 = !DILocation(line: 160, column: 60, scope: !3368, inlinedAt: !3384)
!3389 = !DILocation(line: 160, column: 70, scope: !3368, inlinedAt: !3384)
!3390 = !DILocation(line: 160, column: 80, scope: !3368, inlinedAt: !3384)
!3391 = !DILocation(line: 160, column: 90, scope: !3368, inlinedAt: !3384)
!3392 = !DILocation(line: 160, column: 100, scope: !3368, inlinedAt: !3384)
!3393 = !DILocation(line: 160, column: 110, scope: !3368, inlinedAt: !3384)
!3394 = !DILocation(line: 160, column: 120, scope: !3368, inlinedAt: !3384)
!3395 = !DILocation(line: 160, column: 130, scope: !3368, inlinedAt: !3384)
!3396 = !DILocation(line: 162, column: 7, scope: !3397, inlinedAt: !3384)
!3397 = distinct !DILexicalBlock(scope: !3368, file: !3369, line: 162, column: 7)
!3398 = !DILocalVariable(name: "s1", arg: 1, scope: !3399, file: !3369, line: 146, type: !290)
!3399 = distinct !DISubprogram(name: "strcaseeq1", scope: !3369, file: !3369, line: 146, type: !3400, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!58, !290, !290, !53, !53, !53, !53, !53, !53, !53, !53}
!3402 = !{!3398, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3403 = !DILocalVariable(name: "s2", arg: 2, scope: !3399, file: !3369, line: 146, type: !290)
!3404 = !DILocalVariable(name: "s21", arg: 3, scope: !3399, file: !3369, line: 146, type: !53)
!3405 = !DILocalVariable(name: "s22", arg: 4, scope: !3399, file: !3369, line: 146, type: !53)
!3406 = !DILocalVariable(name: "s23", arg: 5, scope: !3399, file: !3369, line: 146, type: !53)
!3407 = !DILocalVariable(name: "s24", arg: 6, scope: !3399, file: !3369, line: 146, type: !53)
!3408 = !DILocalVariable(name: "s25", arg: 7, scope: !3399, file: !3369, line: 146, type: !53)
!3409 = !DILocalVariable(name: "s26", arg: 8, scope: !3399, file: !3369, line: 146, type: !53)
!3410 = !DILocalVariable(name: "s27", arg: 9, scope: !3399, file: !3369, line: 146, type: !53)
!3411 = !DILocalVariable(name: "s28", arg: 10, scope: !3399, file: !3369, line: 146, type: !53)
!3412 = !DILocation(line: 146, column: 25, scope: !3399, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 167, column: 16, scope: !3414, inlinedAt: !3384)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !3369, line: 164, column: 11)
!3415 = distinct !DILexicalBlock(scope: !3397, file: !3369, line: 163, column: 5)
!3416 = !DILocation(line: 146, column: 41, scope: !3399, inlinedAt: !3413)
!3417 = !DILocation(line: 146, column: 50, scope: !3399, inlinedAt: !3413)
!3418 = !DILocation(line: 146, column: 60, scope: !3399, inlinedAt: !3413)
!3419 = !DILocation(line: 146, column: 70, scope: !3399, inlinedAt: !3413)
!3420 = !DILocation(line: 146, column: 80, scope: !3399, inlinedAt: !3413)
!3421 = !DILocation(line: 146, column: 90, scope: !3399, inlinedAt: !3413)
!3422 = !DILocation(line: 146, column: 100, scope: !3399, inlinedAt: !3413)
!3423 = !DILocation(line: 146, column: 110, scope: !3399, inlinedAt: !3413)
!3424 = !DILocation(line: 146, column: 120, scope: !3399, inlinedAt: !3413)
!3425 = !DILocation(line: 148, column: 7, scope: !3426, inlinedAt: !3413)
!3426 = distinct !DILexicalBlock(scope: !3399, file: !3369, line: 148, column: 7)
!3427 = !DILocalVariable(name: "s1", arg: 1, scope: !3428, file: !3369, line: 132, type: !290)
!3428 = distinct !DISubprogram(name: "strcaseeq2", scope: !3369, file: !3369, line: 132, type: !3429, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!58, !290, !290, !53, !53, !53, !53, !53, !53, !53}
!3431 = !{!3427, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3432 = !DILocalVariable(name: "s2", arg: 2, scope: !3428, file: !3369, line: 132, type: !290)
!3433 = !DILocalVariable(name: "s22", arg: 3, scope: !3428, file: !3369, line: 132, type: !53)
!3434 = !DILocalVariable(name: "s23", arg: 4, scope: !3428, file: !3369, line: 132, type: !53)
!3435 = !DILocalVariable(name: "s24", arg: 5, scope: !3428, file: !3369, line: 132, type: !53)
!3436 = !DILocalVariable(name: "s25", arg: 6, scope: !3428, file: !3369, line: 132, type: !53)
!3437 = !DILocalVariable(name: "s26", arg: 7, scope: !3428, file: !3369, line: 132, type: !53)
!3438 = !DILocalVariable(name: "s27", arg: 8, scope: !3428, file: !3369, line: 132, type: !53)
!3439 = !DILocalVariable(name: "s28", arg: 9, scope: !3428, file: !3369, line: 132, type: !53)
!3440 = !DILocation(line: 132, column: 25, scope: !3428, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 153, column: 16, scope: !3442, inlinedAt: !3413)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !3369, line: 150, column: 11)
!3443 = distinct !DILexicalBlock(scope: !3426, file: !3369, line: 149, column: 5)
!3444 = !DILocation(line: 132, column: 41, scope: !3428, inlinedAt: !3441)
!3445 = !DILocation(line: 132, column: 50, scope: !3428, inlinedAt: !3441)
!3446 = !DILocation(line: 132, column: 60, scope: !3428, inlinedAt: !3441)
!3447 = !DILocation(line: 132, column: 70, scope: !3428, inlinedAt: !3441)
!3448 = !DILocation(line: 132, column: 80, scope: !3428, inlinedAt: !3441)
!3449 = !DILocation(line: 132, column: 90, scope: !3428, inlinedAt: !3441)
!3450 = !DILocation(line: 132, column: 100, scope: !3428, inlinedAt: !3441)
!3451 = !DILocation(line: 132, column: 110, scope: !3428, inlinedAt: !3441)
!3452 = !DILocation(line: 134, column: 7, scope: !3453, inlinedAt: !3441)
!3453 = distinct !DILexicalBlock(scope: !3428, file: !3369, line: 134, column: 7)
!3454 = !DILocalVariable(name: "s1", arg: 1, scope: !3455, file: !3369, line: 118, type: !290)
!3455 = distinct !DISubprogram(name: "strcaseeq3", scope: !3369, file: !3369, line: 118, type: !3456, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!58, !290, !290, !53, !53, !53, !53, !53, !53}
!3458 = !{!3454, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3459 = !DILocalVariable(name: "s2", arg: 2, scope: !3455, file: !3369, line: 118, type: !290)
!3460 = !DILocalVariable(name: "s23", arg: 3, scope: !3455, file: !3369, line: 118, type: !53)
!3461 = !DILocalVariable(name: "s24", arg: 4, scope: !3455, file: !3369, line: 118, type: !53)
!3462 = !DILocalVariable(name: "s25", arg: 5, scope: !3455, file: !3369, line: 118, type: !53)
!3463 = !DILocalVariable(name: "s26", arg: 6, scope: !3455, file: !3369, line: 118, type: !53)
!3464 = !DILocalVariable(name: "s27", arg: 7, scope: !3455, file: !3369, line: 118, type: !53)
!3465 = !DILocalVariable(name: "s28", arg: 8, scope: !3455, file: !3369, line: 118, type: !53)
!3466 = !DILocation(line: 118, column: 25, scope: !3455, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 139, column: 16, scope: !3468, inlinedAt: !3441)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3369, line: 136, column: 11)
!3469 = distinct !DILexicalBlock(scope: !3453, file: !3369, line: 135, column: 5)
!3470 = !DILocation(line: 118, column: 41, scope: !3455, inlinedAt: !3467)
!3471 = !DILocation(line: 118, column: 50, scope: !3455, inlinedAt: !3467)
!3472 = !DILocation(line: 118, column: 60, scope: !3455, inlinedAt: !3467)
!3473 = !DILocation(line: 118, column: 70, scope: !3455, inlinedAt: !3467)
!3474 = !DILocation(line: 118, column: 80, scope: !3455, inlinedAt: !3467)
!3475 = !DILocation(line: 118, column: 90, scope: !3455, inlinedAt: !3467)
!3476 = !DILocation(line: 118, column: 100, scope: !3455, inlinedAt: !3467)
!3477 = !DILocation(line: 120, column: 7, scope: !3478, inlinedAt: !3467)
!3478 = distinct !DILexicalBlock(scope: !3455, file: !3369, line: 120, column: 7)
!3479 = !DILocation(line: 120, column: 7, scope: !3455, inlinedAt: !3467)
!3480 = !DILocalVariable(name: "s1", arg: 1, scope: !3481, file: !3369, line: 104, type: !290)
!3481 = distinct !DISubprogram(name: "strcaseeq4", scope: !3369, file: !3369, line: 104, type: !3482, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!58, !290, !290, !53, !53, !53, !53, !53}
!3484 = !{!3480, !3485, !3486, !3487, !3488, !3489, !3490}
!3485 = !DILocalVariable(name: "s2", arg: 2, scope: !3481, file: !3369, line: 104, type: !290)
!3486 = !DILocalVariable(name: "s24", arg: 3, scope: !3481, file: !3369, line: 104, type: !53)
!3487 = !DILocalVariable(name: "s25", arg: 4, scope: !3481, file: !3369, line: 104, type: !53)
!3488 = !DILocalVariable(name: "s26", arg: 5, scope: !3481, file: !3369, line: 104, type: !53)
!3489 = !DILocalVariable(name: "s27", arg: 6, scope: !3481, file: !3369, line: 104, type: !53)
!3490 = !DILocalVariable(name: "s28", arg: 7, scope: !3481, file: !3369, line: 104, type: !53)
!3491 = !DILocation(line: 104, column: 25, scope: !3481, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 125, column: 16, scope: !3493, inlinedAt: !3467)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3369, line: 122, column: 11)
!3494 = distinct !DILexicalBlock(scope: !3478, file: !3369, line: 121, column: 5)
!3495 = !DILocation(line: 104, column: 41, scope: !3481, inlinedAt: !3492)
!3496 = !DILocation(line: 104, column: 50, scope: !3481, inlinedAt: !3492)
!3497 = !DILocation(line: 104, column: 60, scope: !3481, inlinedAt: !3492)
!3498 = !DILocation(line: 104, column: 70, scope: !3481, inlinedAt: !3492)
!3499 = !DILocation(line: 104, column: 80, scope: !3481, inlinedAt: !3492)
!3500 = !DILocation(line: 104, column: 90, scope: !3481, inlinedAt: !3492)
!3501 = !DILocation(line: 106, column: 7, scope: !3502, inlinedAt: !3492)
!3502 = distinct !DILexicalBlock(scope: !3481, file: !3369, line: 106, column: 7)
!3503 = !DILocation(line: 106, column: 7, scope: !3481, inlinedAt: !3492)
!3504 = !DILocalVariable(name: "s1", arg: 1, scope: !3505, file: !3369, line: 90, type: !290)
!3505 = distinct !DISubprogram(name: "strcaseeq5", scope: !3369, file: !3369, line: 90, type: !3506, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!58, !290, !290, !53, !53, !53, !53}
!3508 = !{!3504, !3509, !3510, !3511, !3512, !3513}
!3509 = !DILocalVariable(name: "s2", arg: 2, scope: !3505, file: !3369, line: 90, type: !290)
!3510 = !DILocalVariable(name: "s25", arg: 3, scope: !3505, file: !3369, line: 90, type: !53)
!3511 = !DILocalVariable(name: "s26", arg: 4, scope: !3505, file: !3369, line: 90, type: !53)
!3512 = !DILocalVariable(name: "s27", arg: 5, scope: !3505, file: !3369, line: 90, type: !53)
!3513 = !DILocalVariable(name: "s28", arg: 6, scope: !3505, file: !3369, line: 90, type: !53)
!3514 = !DILocation(line: 90, column: 25, scope: !3505, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 111, column: 16, scope: !3516, inlinedAt: !3492)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3369, line: 108, column: 11)
!3517 = distinct !DILexicalBlock(scope: !3502, file: !3369, line: 107, column: 5)
!3518 = !DILocation(line: 90, column: 41, scope: !3505, inlinedAt: !3515)
!3519 = !DILocation(line: 90, column: 50, scope: !3505, inlinedAt: !3515)
!3520 = !DILocation(line: 90, column: 60, scope: !3505, inlinedAt: !3515)
!3521 = !DILocation(line: 90, column: 70, scope: !3505, inlinedAt: !3515)
!3522 = !DILocation(line: 90, column: 80, scope: !3505, inlinedAt: !3515)
!3523 = !DILocation(line: 92, column: 7, scope: !3524, inlinedAt: !3515)
!3524 = distinct !DILexicalBlock(scope: !3505, file: !3369, line: 92, column: 7)
!3525 = !DILocation(line: 92, column: 7, scope: !3505, inlinedAt: !3515)
!3526 = !DILocation(line: 235, column: 12, scope: !3385)
!3527 = !DILocation(line: 235, column: 21, scope: !3385)
!3528 = !DILocation(line: 235, column: 5, scope: !3385)
!3529 = !DILocation(line: 146, column: 25, scope: !3399, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 167, column: 16, scope: !3414, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 236, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3350, file: !377, line: 236, column: 7)
!3533 = !DILocation(line: 146, column: 41, scope: !3399, inlinedAt: !3530)
!3534 = !DILocation(line: 146, column: 50, scope: !3399, inlinedAt: !3530)
!3535 = !DILocation(line: 146, column: 60, scope: !3399, inlinedAt: !3530)
!3536 = !DILocation(line: 146, column: 70, scope: !3399, inlinedAt: !3530)
!3537 = !DILocation(line: 146, column: 80, scope: !3399, inlinedAt: !3530)
!3538 = !DILocation(line: 146, column: 90, scope: !3399, inlinedAt: !3530)
!3539 = !DILocation(line: 146, column: 100, scope: !3399, inlinedAt: !3530)
!3540 = !DILocation(line: 146, column: 110, scope: !3399, inlinedAt: !3530)
!3541 = !DILocation(line: 146, column: 120, scope: !3399, inlinedAt: !3530)
!3542 = !DILocation(line: 148, column: 7, scope: !3426, inlinedAt: !3530)
!3543 = !DILocation(line: 132, column: 25, scope: !3428, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 153, column: 16, scope: !3442, inlinedAt: !3530)
!3545 = !DILocation(line: 132, column: 41, scope: !3428, inlinedAt: !3544)
!3546 = !DILocation(line: 132, column: 50, scope: !3428, inlinedAt: !3544)
!3547 = !DILocation(line: 132, column: 60, scope: !3428, inlinedAt: !3544)
!3548 = !DILocation(line: 132, column: 70, scope: !3428, inlinedAt: !3544)
!3549 = !DILocation(line: 132, column: 80, scope: !3428, inlinedAt: !3544)
!3550 = !DILocation(line: 132, column: 90, scope: !3428, inlinedAt: !3544)
!3551 = !DILocation(line: 132, column: 100, scope: !3428, inlinedAt: !3544)
!3552 = !DILocation(line: 132, column: 110, scope: !3428, inlinedAt: !3544)
!3553 = !DILocation(line: 134, column: 7, scope: !3453, inlinedAt: !3544)
!3554 = !DILocation(line: 134, column: 7, scope: !3428, inlinedAt: !3544)
!3555 = !DILocation(line: 118, column: 25, scope: !3455, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 139, column: 16, scope: !3468, inlinedAt: !3544)
!3557 = !DILocation(line: 118, column: 41, scope: !3455, inlinedAt: !3556)
!3558 = !DILocation(line: 118, column: 50, scope: !3455, inlinedAt: !3556)
!3559 = !DILocation(line: 118, column: 60, scope: !3455, inlinedAt: !3556)
!3560 = !DILocation(line: 118, column: 70, scope: !3455, inlinedAt: !3556)
!3561 = !DILocation(line: 118, column: 80, scope: !3455, inlinedAt: !3556)
!3562 = !DILocation(line: 118, column: 90, scope: !3455, inlinedAt: !3556)
!3563 = !DILocation(line: 118, column: 100, scope: !3455, inlinedAt: !3556)
!3564 = !DILocation(line: 120, column: 7, scope: !3478, inlinedAt: !3556)
!3565 = !DILocation(line: 120, column: 7, scope: !3455, inlinedAt: !3556)
!3566 = !DILocation(line: 104, column: 25, scope: !3481, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 125, column: 16, scope: !3493, inlinedAt: !3556)
!3568 = !DILocation(line: 104, column: 41, scope: !3481, inlinedAt: !3567)
!3569 = !DILocation(line: 104, column: 50, scope: !3481, inlinedAt: !3567)
!3570 = !DILocation(line: 104, column: 60, scope: !3481, inlinedAt: !3567)
!3571 = !DILocation(line: 104, column: 70, scope: !3481, inlinedAt: !3567)
!3572 = !DILocation(line: 104, column: 80, scope: !3481, inlinedAt: !3567)
!3573 = !DILocation(line: 104, column: 90, scope: !3481, inlinedAt: !3567)
!3574 = !DILocation(line: 106, column: 7, scope: !3502, inlinedAt: !3567)
!3575 = !DILocation(line: 106, column: 7, scope: !3481, inlinedAt: !3567)
!3576 = !DILocation(line: 90, column: 25, scope: !3505, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 111, column: 16, scope: !3516, inlinedAt: !3567)
!3578 = !DILocation(line: 90, column: 41, scope: !3505, inlinedAt: !3577)
!3579 = !DILocation(line: 90, column: 50, scope: !3505, inlinedAt: !3577)
!3580 = !DILocation(line: 90, column: 60, scope: !3505, inlinedAt: !3577)
!3581 = !DILocation(line: 90, column: 70, scope: !3505, inlinedAt: !3577)
!3582 = !DILocation(line: 90, column: 80, scope: !3505, inlinedAt: !3577)
!3583 = !DILocation(line: 92, column: 7, scope: !3524, inlinedAt: !3577)
!3584 = !DILocation(line: 92, column: 7, scope: !3505, inlinedAt: !3577)
!3585 = !DILocalVariable(name: "s1", arg: 1, scope: !3586, file: !3369, line: 76, type: !290)
!3586 = distinct !DISubprogram(name: "strcaseeq6", scope: !3369, file: !3369, line: 76, type: !3587, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!58, !290, !290, !53, !53, !53}
!3589 = !{!3585, !3590, !3591, !3592, !3593}
!3590 = !DILocalVariable(name: "s2", arg: 2, scope: !3586, file: !3369, line: 76, type: !290)
!3591 = !DILocalVariable(name: "s26", arg: 3, scope: !3586, file: !3369, line: 76, type: !53)
!3592 = !DILocalVariable(name: "s27", arg: 4, scope: !3586, file: !3369, line: 76, type: !53)
!3593 = !DILocalVariable(name: "s28", arg: 5, scope: !3586, file: !3369, line: 76, type: !53)
!3594 = !DILocation(line: 76, column: 25, scope: !3586, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 97, column: 16, scope: !3596, inlinedAt: !3577)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !3369, line: 94, column: 11)
!3597 = distinct !DILexicalBlock(scope: !3524, file: !3369, line: 93, column: 5)
!3598 = !DILocation(line: 76, column: 41, scope: !3586, inlinedAt: !3595)
!3599 = !DILocation(line: 76, column: 50, scope: !3586, inlinedAt: !3595)
!3600 = !DILocation(line: 76, column: 60, scope: !3586, inlinedAt: !3595)
!3601 = !DILocation(line: 76, column: 70, scope: !3586, inlinedAt: !3595)
!3602 = !DILocation(line: 78, column: 7, scope: !3603, inlinedAt: !3595)
!3603 = distinct !DILexicalBlock(scope: !3586, file: !3369, line: 78, column: 7)
!3604 = !DILocation(line: 78, column: 7, scope: !3586, inlinedAt: !3595)
!3605 = !DILocalVariable(name: "s1", arg: 1, scope: !3606, file: !3369, line: 62, type: !290)
!3606 = distinct !DISubprogram(name: "strcaseeq7", scope: !3369, file: !3369, line: 62, type: !3607, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!58, !290, !290, !53, !53}
!3609 = !{!3605, !3610, !3611, !3612}
!3610 = !DILocalVariable(name: "s2", arg: 2, scope: !3606, file: !3369, line: 62, type: !290)
!3611 = !DILocalVariable(name: "s27", arg: 3, scope: !3606, file: !3369, line: 62, type: !53)
!3612 = !DILocalVariable(name: "s28", arg: 4, scope: !3606, file: !3369, line: 62, type: !53)
!3613 = !DILocation(line: 62, column: 25, scope: !3606, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 83, column: 16, scope: !3615, inlinedAt: !3595)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3369, line: 80, column: 11)
!3616 = distinct !DILexicalBlock(scope: !3603, file: !3369, line: 79, column: 5)
!3617 = !DILocation(line: 62, column: 41, scope: !3606, inlinedAt: !3614)
!3618 = !DILocation(line: 62, column: 50, scope: !3606, inlinedAt: !3614)
!3619 = !DILocation(line: 62, column: 60, scope: !3606, inlinedAt: !3614)
!3620 = !DILocation(line: 64, column: 7, scope: !3621, inlinedAt: !3614)
!3621 = distinct !DILexicalBlock(scope: !3606, file: !3369, line: 64, column: 7)
!3622 = !DILocation(line: 236, column: 7, scope: !3350)
!3623 = !DILocation(line: 237, column: 12, scope: !3532)
!3624 = !DILocation(line: 237, column: 21, scope: !3532)
!3625 = !DILocation(line: 237, column: 5, scope: !3532)
!3626 = !DILocation(line: 239, column: 13, scope: !3350)
!3627 = !DILocation(line: 239, column: 11, scope: !3350)
!3628 = !DILocation(line: 239, column: 3, scope: !3350)
!3629 = !DILocation(line: 0, scope: !3350)
!3630 = !DILocation(line: 240, column: 1, scope: !3350)
!3631 = distinct !DISubprogram(name: "quotearg_alloc", scope: !377, file: !377, line: 799, type: !3632, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!52, !290, !55, !2678}
!3634 = !{!3635, !3636, !3637}
!3635 = !DILocalVariable(name: "arg", arg: 1, scope: !3631, file: !377, line: 799, type: !290)
!3636 = !DILocalVariable(name: "argsize", arg: 2, scope: !3631, file: !377, line: 799, type: !55)
!3637 = !DILocalVariable(name: "o", arg: 3, scope: !3631, file: !377, line: 800, type: !2678)
!3638 = !DILocation(line: 799, column: 29, scope: !3631)
!3639 = !DILocation(line: 799, column: 41, scope: !3631)
!3640 = !DILocation(line: 800, column: 47, scope: !3631)
!3641 = !DILocalVariable(name: "arg", arg: 1, scope: !3642, file: !377, line: 812, type: !290)
!3642 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !377, file: !377, line: 812, type: !3643, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!52, !290, !55, !129, !2678}
!3645 = !{!3641, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3646 = !DILocalVariable(name: "argsize", arg: 2, scope: !3642, file: !377, line: 812, type: !55)
!3647 = !DILocalVariable(name: "size", arg: 3, scope: !3642, file: !377, line: 812, type: !129)
!3648 = !DILocalVariable(name: "o", arg: 4, scope: !3642, file: !377, line: 813, type: !2678)
!3649 = !DILocalVariable(name: "p", scope: !3642, file: !377, line: 815, type: !2678)
!3650 = !DILocalVariable(name: "e", scope: !3642, file: !377, line: 816, type: !58)
!3651 = !DILocalVariable(name: "flags", scope: !3642, file: !377, line: 818, type: !58)
!3652 = !DILocalVariable(name: "bufsize", scope: !3642, file: !377, line: 819, type: !55)
!3653 = !DILocalVariable(name: "buf", scope: !3642, file: !377, line: 823, type: !52)
!3654 = !DILocation(line: 812, column: 33, scope: !3642, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 802, column: 10, scope: !3631)
!3656 = !DILocation(line: 812, column: 45, scope: !3642, inlinedAt: !3655)
!3657 = !DILocation(line: 812, column: 62, scope: !3642, inlinedAt: !3655)
!3658 = !DILocation(line: 813, column: 51, scope: !3642, inlinedAt: !3655)
!3659 = !DILocation(line: 815, column: 37, scope: !3642, inlinedAt: !3655)
!3660 = !DILocation(line: 815, column: 33, scope: !3642, inlinedAt: !3655)
!3661 = !DILocation(line: 816, column: 11, scope: !3642, inlinedAt: !3655)
!3662 = !DILocation(line: 816, column: 7, scope: !3642, inlinedAt: !3655)
!3663 = !DILocation(line: 818, column: 18, scope: !3642, inlinedAt: !3655)
!3664 = !DILocation(line: 818, column: 24, scope: !3642, inlinedAt: !3655)
!3665 = !DILocation(line: 818, column: 7, scope: !3642, inlinedAt: !3655)
!3666 = !DILocation(line: 819, column: 69, scope: !3642, inlinedAt: !3655)
!3667 = !DILocation(line: 820, column: 53, scope: !3642, inlinedAt: !3655)
!3668 = !DILocation(line: 821, column: 49, scope: !3642, inlinedAt: !3655)
!3669 = !DILocation(line: 822, column: 49, scope: !3642, inlinedAt: !3655)
!3670 = !DILocation(line: 819, column: 20, scope: !3642, inlinedAt: !3655)
!3671 = !DILocation(line: 822, column: 62, scope: !3642, inlinedAt: !3655)
!3672 = !DILocation(line: 819, column: 10, scope: !3642, inlinedAt: !3655)
!3673 = !DILocalVariable(name: "n", arg: 1, scope: !3674, file: !690, line: 216, type: !55)
!3674 = distinct !DISubprogram(name: "xcharalloc", scope: !690, file: !690, line: 216, type: !3675, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!52, !55}
!3677 = !{!3673}
!3678 = !DILocation(line: 216, column: 20, scope: !3674, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 823, column: 15, scope: !3642, inlinedAt: !3655)
!3680 = !DILocation(line: 218, column: 10, scope: !3674, inlinedAt: !3679)
!3681 = !DILocation(line: 823, column: 9, scope: !3642, inlinedAt: !3655)
!3682 = !DILocation(line: 824, column: 60, scope: !3642, inlinedAt: !3655)
!3683 = !DILocation(line: 826, column: 32, scope: !3642, inlinedAt: !3655)
!3684 = !DILocation(line: 826, column: 47, scope: !3642, inlinedAt: !3655)
!3685 = !DILocation(line: 824, column: 3, scope: !3642, inlinedAt: !3655)
!3686 = !DILocation(line: 827, column: 9, scope: !3642, inlinedAt: !3655)
!3687 = !DILocation(line: 802, column: 3, scope: !3631)
!3688 = !DILocation(line: 812, column: 33, scope: !3642)
!3689 = !DILocation(line: 812, column: 45, scope: !3642)
!3690 = !DILocation(line: 812, column: 62, scope: !3642)
!3691 = !DILocation(line: 813, column: 51, scope: !3642)
!3692 = !DILocation(line: 815, column: 37, scope: !3642)
!3693 = !DILocation(line: 815, column: 33, scope: !3642)
!3694 = !DILocation(line: 816, column: 11, scope: !3642)
!3695 = !DILocation(line: 816, column: 7, scope: !3642)
!3696 = !DILocation(line: 818, column: 18, scope: !3642)
!3697 = !DILocation(line: 818, column: 27, scope: !3642)
!3698 = !DILocation(line: 818, column: 24, scope: !3642)
!3699 = !DILocation(line: 818, column: 7, scope: !3642)
!3700 = !DILocation(line: 819, column: 69, scope: !3642)
!3701 = !DILocation(line: 820, column: 53, scope: !3642)
!3702 = !DILocation(line: 821, column: 49, scope: !3642)
!3703 = !DILocation(line: 822, column: 49, scope: !3642)
!3704 = !DILocation(line: 819, column: 20, scope: !3642)
!3705 = !DILocation(line: 822, column: 62, scope: !3642)
!3706 = !DILocation(line: 819, column: 10, scope: !3642)
!3707 = !DILocation(line: 216, column: 20, scope: !3674, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 823, column: 15, scope: !3642)
!3709 = !DILocation(line: 218, column: 10, scope: !3674, inlinedAt: !3708)
!3710 = !DILocation(line: 823, column: 9, scope: !3642)
!3711 = !DILocation(line: 824, column: 60, scope: !3642)
!3712 = !DILocation(line: 826, column: 32, scope: !3642)
!3713 = !DILocation(line: 826, column: 47, scope: !3642)
!3714 = !DILocation(line: 824, column: 3, scope: !3642)
!3715 = !DILocation(line: 827, column: 9, scope: !3642)
!3716 = !DILocation(line: 828, column: 7, scope: !3642)
!3717 = !DILocation(line: 829, column: 11, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3642, file: !377, line: 828, column: 7)
!3719 = !DILocation(line: 829, column: 5, scope: !3718)
!3720 = !DILocation(line: 830, column: 3, scope: !3642)
!3721 = distinct !DISubprogram(name: "quotearg_free", scope: !377, file: !377, line: 848, type: !431, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3722)
!3722 = !{!3723, !3724}
!3723 = !DILocalVariable(name: "sv", scope: !3721, file: !377, line: 850, type: !401)
!3724 = !DILocalVariable(name: "i", scope: !3721, file: !377, line: 851, type: !58)
!3725 = !DILocation(line: 850, column: 24, scope: !3721)
!3726 = !DILocation(line: 850, column: 19, scope: !3721)
!3727 = !DILocation(line: 851, column: 7, scope: !3721)
!3728 = !DILocation(line: 852, column: 19, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !377, line: 852, column: 3)
!3730 = distinct !DILexicalBlock(scope: !3721, file: !377, line: 852, column: 3)
!3731 = !DILocation(line: 852, column: 17, scope: !3729)
!3732 = !DILocation(line: 852, column: 3, scope: !3730)
!3733 = !DILocation(line: 853, column: 17, scope: !3729)
!3734 = !{!3735, !1148, i64 8}
!3735 = !{!"slotvec", !1208, i64 0, !1148, i64 8}
!3736 = !DILocation(line: 853, column: 5, scope: !3729)
!3737 = !DILocation(line: 852, column: 28, scope: !3729)
!3738 = distinct !{!3738, !3732, !3739}
!3739 = !DILocation(line: 853, column: 20, scope: !3730)
!3740 = !DILocation(line: 854, column: 13, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3721, file: !377, line: 854, column: 7)
!3742 = !DILocation(line: 854, column: 17, scope: !3741)
!3743 = !DILocation(line: 854, column: 7, scope: !3721)
!3744 = !DILocation(line: 856, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !377, line: 855, column: 5)
!3746 = !DILocation(line: 857, column: 21, scope: !3745)
!3747 = !{!3735, !1208, i64 0}
!3748 = !DILocation(line: 858, column: 20, scope: !3745)
!3749 = !DILocation(line: 859, column: 5, scope: !3745)
!3750 = !DILocation(line: 860, column: 10, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3721, file: !377, line: 860, column: 7)
!3752 = !DILocation(line: 860, column: 7, scope: !3721)
!3753 = !DILocation(line: 862, column: 13, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !377, line: 861, column: 5)
!3755 = !DILocation(line: 862, column: 7, scope: !3754)
!3756 = !DILocation(line: 863, column: 15, scope: !3754)
!3757 = !DILocation(line: 864, column: 5, scope: !3754)
!3758 = !DILocation(line: 865, column: 10, scope: !3721)
!3759 = !DILocation(line: 866, column: 1, scope: !3721)
!3760 = distinct !DISubprogram(name: "quotearg_n", scope: !377, file: !377, line: 931, type: !3761, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!52, !58, !290}
!3763 = !{!3764, !3765}
!3764 = !DILocalVariable(name: "n", arg: 1, scope: !3760, file: !377, line: 931, type: !58)
!3765 = !DILocalVariable(name: "arg", arg: 2, scope: !3760, file: !377, line: 931, type: !290)
!3766 = !DILocation(line: 931, column: 17, scope: !3760)
!3767 = !DILocation(line: 931, column: 32, scope: !3760)
!3768 = !DILocation(line: 933, column: 10, scope: !3760)
!3769 = !DILocation(line: 933, column: 3, scope: !3760)
!3770 = distinct !DISubprogram(name: "quotearg_n_options", scope: !377, file: !377, line: 877, type: !3771, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!52, !58, !290, !55, !2678}
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779, !3780, !3783, !3784, !3786, !3787, !3788}
!3774 = !DILocalVariable(name: "n", arg: 1, scope: !3770, file: !377, line: 877, type: !58)
!3775 = !DILocalVariable(name: "arg", arg: 2, scope: !3770, file: !377, line: 877, type: !290)
!3776 = !DILocalVariable(name: "argsize", arg: 3, scope: !3770, file: !377, line: 877, type: !55)
!3777 = !DILocalVariable(name: "options", arg: 4, scope: !3770, file: !377, line: 878, type: !2678)
!3778 = !DILocalVariable(name: "e", scope: !3770, file: !377, line: 880, type: !58)
!3779 = !DILocalVariable(name: "sv", scope: !3770, file: !377, line: 882, type: !401)
!3780 = !DILocalVariable(name: "preallocated", scope: !3781, file: !377, line: 889, type: !72)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !377, line: 888, column: 5)
!3782 = distinct !DILexicalBlock(scope: !3770, file: !377, line: 887, column: 7)
!3783 = !DILocalVariable(name: "nmax", scope: !3781, file: !377, line: 890, type: !58)
!3784 = !DILocalVariable(name: "size", scope: !3785, file: !377, line: 903, type: !55)
!3785 = distinct !DILexicalBlock(scope: !3770, file: !377, line: 902, column: 3)
!3786 = !DILocalVariable(name: "val", scope: !3785, file: !377, line: 904, type: !52)
!3787 = !DILocalVariable(name: "flags", scope: !3785, file: !377, line: 906, type: !58)
!3788 = !DILocalVariable(name: "qsize", scope: !3785, file: !377, line: 907, type: !55)
!3789 = !DILocation(line: 877, column: 25, scope: !3770)
!3790 = !DILocation(line: 877, column: 40, scope: !3770)
!3791 = !DILocation(line: 877, column: 52, scope: !3770)
!3792 = !DILocation(line: 878, column: 51, scope: !3770)
!3793 = !DILocation(line: 880, column: 11, scope: !3770)
!3794 = !DILocation(line: 880, column: 7, scope: !3770)
!3795 = !DILocation(line: 882, column: 24, scope: !3770)
!3796 = !DILocation(line: 882, column: 19, scope: !3770)
!3797 = !DILocation(line: 884, column: 9, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3770, file: !377, line: 884, column: 7)
!3799 = !DILocation(line: 884, column: 7, scope: !3770)
!3800 = !DILocation(line: 885, column: 5, scope: !3798)
!3801 = !DILocation(line: 887, column: 7, scope: !3782)
!3802 = !DILocation(line: 887, column: 14, scope: !3782)
!3803 = !DILocation(line: 887, column: 7, scope: !3770)
!3804 = !DILocation(line: 889, column: 31, scope: !3781)
!3805 = !DILocation(line: 890, column: 11, scope: !3781)
!3806 = !DILocation(line: 892, column: 16, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3781, file: !377, line: 892, column: 11)
!3808 = !DILocation(line: 892, column: 11, scope: !3781)
!3809 = !DILocation(line: 893, column: 9, scope: !3807)
!3810 = !DILocation(line: 895, column: 32, scope: !3781)
!3811 = !DILocation(line: 895, column: 61, scope: !3781)
!3812 = !DILocation(line: 895, column: 58, scope: !3781)
!3813 = !DILocation(line: 895, column: 66, scope: !3781)
!3814 = !DILocation(line: 895, column: 22, scope: !3781)
!3815 = !DILocation(line: 895, column: 15, scope: !3781)
!3816 = !DILocation(line: 896, column: 11, scope: !3781)
!3817 = !DILocation(line: 897, column: 15, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3781, file: !377, line: 896, column: 11)
!3819 = !{i64 0, i64 8, !1207, i64 8, i64 8, !1147}
!3820 = !DILocation(line: 897, column: 9, scope: !3818)
!3821 = !DILocation(line: 898, column: 20, scope: !3781)
!3822 = !DILocation(line: 898, column: 18, scope: !3781)
!3823 = !DILocation(line: 898, column: 7, scope: !3781)
!3824 = !DILocation(line: 898, column: 38, scope: !3781)
!3825 = !DILocation(line: 898, column: 31, scope: !3781)
!3826 = !DILocation(line: 898, column: 48, scope: !3781)
!3827 = !DILocation(line: 899, column: 14, scope: !3781)
!3828 = !DILocation(line: 900, column: 5, scope: !3781)
!3829 = !DILocation(line: 0, scope: !3770)
!3830 = !DILocation(line: 903, column: 19, scope: !3785)
!3831 = !DILocation(line: 903, column: 25, scope: !3785)
!3832 = !DILocation(line: 903, column: 12, scope: !3785)
!3833 = !DILocation(line: 904, column: 23, scope: !3785)
!3834 = !DILocation(line: 904, column: 11, scope: !3785)
!3835 = !DILocation(line: 906, column: 26, scope: !3785)
!3836 = !DILocation(line: 906, column: 32, scope: !3785)
!3837 = !DILocation(line: 906, column: 9, scope: !3785)
!3838 = !DILocation(line: 908, column: 55, scope: !3785)
!3839 = !DILocation(line: 909, column: 46, scope: !3785)
!3840 = !DILocation(line: 910, column: 55, scope: !3785)
!3841 = !DILocation(line: 911, column: 55, scope: !3785)
!3842 = !DILocation(line: 907, column: 20, scope: !3785)
!3843 = !DILocation(line: 907, column: 12, scope: !3785)
!3844 = !DILocation(line: 913, column: 14, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3785, file: !377, line: 913, column: 9)
!3846 = !DILocation(line: 913, column: 9, scope: !3785)
!3847 = !DILocation(line: 915, column: 35, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3845, file: !377, line: 914, column: 7)
!3849 = !DILocation(line: 915, column: 20, scope: !3848)
!3850 = !DILocation(line: 916, column: 17, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !377, line: 916, column: 13)
!3852 = !DILocation(line: 916, column: 13, scope: !3848)
!3853 = !DILocation(line: 917, column: 11, scope: !3851)
!3854 = !DILocation(line: 216, column: 20, scope: !3674, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 918, column: 27, scope: !3848)
!3856 = !DILocation(line: 218, column: 10, scope: !3674, inlinedAt: !3855)
!3857 = !DILocation(line: 918, column: 19, scope: !3848)
!3858 = !DILocation(line: 919, column: 69, scope: !3848)
!3859 = !DILocation(line: 921, column: 44, scope: !3848)
!3860 = !DILocation(line: 922, column: 44, scope: !3848)
!3861 = !DILocation(line: 919, column: 9, scope: !3848)
!3862 = !DILocation(line: 923, column: 7, scope: !3848)
!3863 = !DILocation(line: 0, scope: !3785)
!3864 = !DILocation(line: 925, column: 11, scope: !3785)
!3865 = !DILocation(line: 926, column: 5, scope: !3785)
!3866 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !377, file: !377, line: 937, type: !3867, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!52, !58, !290, !55}
!3869 = !{!3870, !3871, !3872}
!3870 = !DILocalVariable(name: "n", arg: 1, scope: !3866, file: !377, line: 937, type: !58)
!3871 = !DILocalVariable(name: "arg", arg: 2, scope: !3866, file: !377, line: 937, type: !290)
!3872 = !DILocalVariable(name: "argsize", arg: 3, scope: !3866, file: !377, line: 937, type: !55)
!3873 = !DILocation(line: 937, column: 21, scope: !3866)
!3874 = !DILocation(line: 937, column: 36, scope: !3866)
!3875 = !DILocation(line: 937, column: 48, scope: !3866)
!3876 = !DILocation(line: 939, column: 10, scope: !3866)
!3877 = !DILocation(line: 939, column: 3, scope: !3866)
!3878 = distinct !DISubprogram(name: "quotearg", scope: !377, file: !377, line: 943, type: !3879, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3881)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!52, !290}
!3881 = !{!3882}
!3882 = !DILocalVariable(name: "arg", arg: 1, scope: !3878, file: !377, line: 943, type: !290)
!3883 = !DILocation(line: 943, column: 23, scope: !3878)
!3884 = !DILocation(line: 931, column: 17, scope: !3760, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 945, column: 10, scope: !3878)
!3886 = !DILocation(line: 931, column: 32, scope: !3760, inlinedAt: !3885)
!3887 = !DILocation(line: 933, column: 10, scope: !3760, inlinedAt: !3885)
!3888 = !DILocation(line: 945, column: 3, scope: !3878)
!3889 = distinct !DISubprogram(name: "quotearg_mem", scope: !377, file: !377, line: 949, type: !3890, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!52, !290, !55}
!3892 = !{!3893, !3894}
!3893 = !DILocalVariable(name: "arg", arg: 1, scope: !3889, file: !377, line: 949, type: !290)
!3894 = !DILocalVariable(name: "argsize", arg: 2, scope: !3889, file: !377, line: 949, type: !55)
!3895 = !DILocation(line: 949, column: 27, scope: !3889)
!3896 = !DILocation(line: 949, column: 39, scope: !3889)
!3897 = !DILocation(line: 937, column: 21, scope: !3866, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 951, column: 10, scope: !3889)
!3899 = !DILocation(line: 937, column: 36, scope: !3866, inlinedAt: !3898)
!3900 = !DILocation(line: 937, column: 48, scope: !3866, inlinedAt: !3898)
!3901 = !DILocation(line: 939, column: 10, scope: !3866, inlinedAt: !3898)
!3902 = !DILocation(line: 951, column: 3, scope: !3889)
!3903 = distinct !DISubprogram(name: "quotearg_n_style", scope: !377, file: !377, line: 955, type: !3904, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!52, !58, !5, !290}
!3906 = !{!3907, !3908, !3909, !3910}
!3907 = !DILocalVariable(name: "n", arg: 1, scope: !3903, file: !377, line: 955, type: !58)
!3908 = !DILocalVariable(name: "s", arg: 2, scope: !3903, file: !377, line: 955, type: !5)
!3909 = !DILocalVariable(name: "arg", arg: 3, scope: !3903, file: !377, line: 955, type: !290)
!3910 = !DILocalVariable(name: "o", scope: !3903, file: !377, line: 957, type: !2679)
!3911 = !DILocation(line: 955, column: 23, scope: !3903)
!3912 = !DILocation(line: 955, column: 45, scope: !3903)
!3913 = !DILocation(line: 955, column: 60, scope: !3903)
!3914 = !DILocation(line: 957, column: 3, scope: !3903)
!3915 = !DILocation(line: 957, column: 32, scope: !3903)
!3916 = !DILocalVariable(name: "style", arg: 1, scope: !3917, file: !377, line: 193, type: !5)
!3917 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !377, file: !377, line: 193, type: !3918, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!384, !5}
!3920 = !{!3916, !3921}
!3921 = !DILocalVariable(name: "o", scope: !3917, file: !377, line: 195, type: !384)
!3922 = !DILocation(line: 193, column: 48, scope: !3917, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 957, column: 36, scope: !3903)
!3924 = !DILocation(line: 195, column: 26, scope: !3917, inlinedAt: !3923)
!3925 = !{!3926}
!3926 = distinct !{!3926, !3927, !"quoting_options_from_style: argument 0"}
!3927 = distinct !{!3927, !"quoting_options_from_style"}
!3928 = !DILocation(line: 196, column: 13, scope: !3929, inlinedAt: !3923)
!3929 = distinct !DILexicalBlock(scope: !3917, file: !377, line: 196, column: 7)
!3930 = !DILocation(line: 196, column: 7, scope: !3917, inlinedAt: !3923)
!3931 = !DILocation(line: 197, column: 5, scope: !3929, inlinedAt: !3923)
!3932 = !DILocation(line: 198, column: 5, scope: !3917, inlinedAt: !3923)
!3933 = !DILocation(line: 198, column: 11, scope: !3917, inlinedAt: !3923)
!3934 = !DILocation(line: 958, column: 10, scope: !3903)
!3935 = !DILocation(line: 959, column: 1, scope: !3903)
!3936 = !DILocation(line: 958, column: 3, scope: !3903)
!3937 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !377, file: !377, line: 962, type: !3938, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!52, !58, !5, !290, !55}
!3940 = !{!3941, !3942, !3943, !3944, !3945}
!3941 = !DILocalVariable(name: "n", arg: 1, scope: !3937, file: !377, line: 962, type: !58)
!3942 = !DILocalVariable(name: "s", arg: 2, scope: !3937, file: !377, line: 962, type: !5)
!3943 = !DILocalVariable(name: "arg", arg: 3, scope: !3937, file: !377, line: 963, type: !290)
!3944 = !DILocalVariable(name: "argsize", arg: 4, scope: !3937, file: !377, line: 963, type: !55)
!3945 = !DILocalVariable(name: "o", scope: !3937, file: !377, line: 965, type: !2679)
!3946 = !DILocation(line: 962, column: 27, scope: !3937)
!3947 = !DILocation(line: 962, column: 49, scope: !3937)
!3948 = !DILocation(line: 963, column: 35, scope: !3937)
!3949 = !DILocation(line: 963, column: 47, scope: !3937)
!3950 = !DILocation(line: 965, column: 3, scope: !3937)
!3951 = !DILocation(line: 965, column: 32, scope: !3937)
!3952 = !DILocation(line: 193, column: 48, scope: !3917, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 965, column: 36, scope: !3937)
!3954 = !DILocation(line: 195, column: 26, scope: !3917, inlinedAt: !3953)
!3955 = !{!3956}
!3956 = distinct !{!3956, !3957, !"quoting_options_from_style: argument 0"}
!3957 = distinct !{!3957, !"quoting_options_from_style"}
!3958 = !DILocation(line: 196, column: 13, scope: !3929, inlinedAt: !3953)
!3959 = !DILocation(line: 196, column: 7, scope: !3917, inlinedAt: !3953)
!3960 = !DILocation(line: 197, column: 5, scope: !3929, inlinedAt: !3953)
!3961 = !DILocation(line: 198, column: 5, scope: !3917, inlinedAt: !3953)
!3962 = !DILocation(line: 198, column: 11, scope: !3917, inlinedAt: !3953)
!3963 = !DILocation(line: 966, column: 10, scope: !3937)
!3964 = !DILocation(line: 967, column: 1, scope: !3937)
!3965 = !DILocation(line: 966, column: 3, scope: !3937)
!3966 = distinct !DISubprogram(name: "quotearg_style", scope: !377, file: !377, line: 970, type: !3967, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!52, !5, !290}
!3969 = !{!3970, !3971}
!3970 = !DILocalVariable(name: "s", arg: 1, scope: !3966, file: !377, line: 970, type: !5)
!3971 = !DILocalVariable(name: "arg", arg: 2, scope: !3966, file: !377, line: 970, type: !290)
!3972 = !DILocation(line: 970, column: 36, scope: !3966)
!3973 = !DILocation(line: 970, column: 51, scope: !3966)
!3974 = !DILocation(line: 955, column: 23, scope: !3903, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 972, column: 10, scope: !3966)
!3976 = !DILocation(line: 955, column: 45, scope: !3903, inlinedAt: !3975)
!3977 = !DILocation(line: 955, column: 60, scope: !3903, inlinedAt: !3975)
!3978 = !DILocation(line: 957, column: 3, scope: !3903, inlinedAt: !3975)
!3979 = !DILocation(line: 957, column: 32, scope: !3903, inlinedAt: !3975)
!3980 = !DILocation(line: 193, column: 48, scope: !3917, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 957, column: 36, scope: !3903, inlinedAt: !3975)
!3982 = !DILocation(line: 195, column: 26, scope: !3917, inlinedAt: !3981)
!3983 = !{!3984}
!3984 = distinct !{!3984, !3985, !"quoting_options_from_style: argument 0"}
!3985 = distinct !{!3985, !"quoting_options_from_style"}
!3986 = !DILocation(line: 196, column: 13, scope: !3929, inlinedAt: !3981)
!3987 = !DILocation(line: 196, column: 7, scope: !3917, inlinedAt: !3981)
!3988 = !DILocation(line: 197, column: 5, scope: !3929, inlinedAt: !3981)
!3989 = !DILocation(line: 198, column: 5, scope: !3917, inlinedAt: !3981)
!3990 = !DILocation(line: 198, column: 11, scope: !3917, inlinedAt: !3981)
!3991 = !DILocation(line: 958, column: 10, scope: !3903, inlinedAt: !3975)
!3992 = !DILocation(line: 959, column: 1, scope: !3903, inlinedAt: !3975)
!3993 = !DILocation(line: 972, column: 3, scope: !3966)
!3994 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !377, file: !377, line: 976, type: !3995, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!52, !5, !290, !55}
!3997 = !{!3998, !3999, !4000}
!3998 = !DILocalVariable(name: "s", arg: 1, scope: !3994, file: !377, line: 976, type: !5)
!3999 = !DILocalVariable(name: "arg", arg: 2, scope: !3994, file: !377, line: 976, type: !290)
!4000 = !DILocalVariable(name: "argsize", arg: 3, scope: !3994, file: !377, line: 976, type: !55)
!4001 = !DILocation(line: 976, column: 40, scope: !3994)
!4002 = !DILocation(line: 976, column: 55, scope: !3994)
!4003 = !DILocation(line: 976, column: 67, scope: !3994)
!4004 = !DILocation(line: 962, column: 27, scope: !3937, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 978, column: 10, scope: !3994)
!4006 = !DILocation(line: 962, column: 49, scope: !3937, inlinedAt: !4005)
!4007 = !DILocation(line: 963, column: 35, scope: !3937, inlinedAt: !4005)
!4008 = !DILocation(line: 963, column: 47, scope: !3937, inlinedAt: !4005)
!4009 = !DILocation(line: 965, column: 3, scope: !3937, inlinedAt: !4005)
!4010 = !DILocation(line: 965, column: 32, scope: !3937, inlinedAt: !4005)
!4011 = !DILocation(line: 193, column: 48, scope: !3917, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 965, column: 36, scope: !3937, inlinedAt: !4005)
!4013 = !DILocation(line: 195, column: 26, scope: !3917, inlinedAt: !4012)
!4014 = !{!4015}
!4015 = distinct !{!4015, !4016, !"quoting_options_from_style: argument 0"}
!4016 = distinct !{!4016, !"quoting_options_from_style"}
!4017 = !DILocation(line: 196, column: 13, scope: !3929, inlinedAt: !4012)
!4018 = !DILocation(line: 196, column: 7, scope: !3917, inlinedAt: !4012)
!4019 = !DILocation(line: 197, column: 5, scope: !3929, inlinedAt: !4012)
!4020 = !DILocation(line: 198, column: 5, scope: !3917, inlinedAt: !4012)
!4021 = !DILocation(line: 198, column: 11, scope: !3917, inlinedAt: !4012)
!4022 = !DILocation(line: 966, column: 10, scope: !3937, inlinedAt: !4005)
!4023 = !DILocation(line: 967, column: 1, scope: !3937, inlinedAt: !4005)
!4024 = !DILocation(line: 978, column: 3, scope: !3994)
!4025 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !377, file: !377, line: 982, type: !4026, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!52, !290, !55, !53}
!4028 = !{!4029, !4030, !4031, !4032}
!4029 = !DILocalVariable(name: "arg", arg: 1, scope: !4025, file: !377, line: 982, type: !290)
!4030 = !DILocalVariable(name: "argsize", arg: 2, scope: !4025, file: !377, line: 982, type: !55)
!4031 = !DILocalVariable(name: "ch", arg: 3, scope: !4025, file: !377, line: 982, type: !53)
!4032 = !DILocalVariable(name: "options", scope: !4025, file: !377, line: 984, type: !384)
!4033 = !DILocation(line: 982, column: 32, scope: !4025)
!4034 = !DILocation(line: 982, column: 44, scope: !4025)
!4035 = !DILocation(line: 982, column: 58, scope: !4025)
!4036 = !DILocation(line: 984, column: 3, scope: !4025)
!4037 = !DILocation(line: 985, column: 13, scope: !4025)
!4038 = !{i64 0, i64 4, !1489, i64 4, i64 4, !1243, i64 8, i64 32, !1489, i64 40, i64 8, !1147, i64 48, i64 8, !1147}
!4039 = !DILocation(line: 984, column: 26, scope: !4025)
!4040 = !DILocation(line: 152, column: 43, scope: !2700, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 986, column: 3, scope: !4025)
!4042 = !DILocation(line: 152, column: 51, scope: !2700, inlinedAt: !4041)
!4043 = !DILocation(line: 152, column: 58, scope: !2700, inlinedAt: !4041)
!4044 = !DILocation(line: 154, column: 17, scope: !2700, inlinedAt: !4041)
!4045 = !DILocation(line: 156, column: 62, scope: !2700, inlinedAt: !4041)
!4046 = !DILocation(line: 156, column: 57, scope: !2700, inlinedAt: !4041)
!4047 = !DILocation(line: 155, column: 17, scope: !2700, inlinedAt: !4041)
!4048 = !DILocation(line: 157, column: 15, scope: !2700, inlinedAt: !4041)
!4049 = !DILocation(line: 157, column: 7, scope: !2700, inlinedAt: !4041)
!4050 = !DILocation(line: 158, column: 12, scope: !2700, inlinedAt: !4041)
!4051 = !DILocation(line: 158, column: 15, scope: !2700, inlinedAt: !4041)
!4052 = !DILocation(line: 158, column: 25, scope: !2700, inlinedAt: !4041)
!4053 = !DILocation(line: 158, column: 7, scope: !2700, inlinedAt: !4041)
!4054 = !DILocation(line: 159, column: 18, scope: !2700, inlinedAt: !4041)
!4055 = !DILocation(line: 159, column: 23, scope: !2700, inlinedAt: !4041)
!4056 = !DILocation(line: 159, column: 6, scope: !2700, inlinedAt: !4041)
!4057 = !DILocation(line: 987, column: 10, scope: !4025)
!4058 = !DILocation(line: 988, column: 1, scope: !4025)
!4059 = !DILocation(line: 987, column: 3, scope: !4025)
!4060 = distinct !DISubprogram(name: "quotearg_char", scope: !377, file: !377, line: 991, type: !4061, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!52, !290, !53}
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "arg", arg: 1, scope: !4060, file: !377, line: 991, type: !290)
!4065 = !DILocalVariable(name: "ch", arg: 2, scope: !4060, file: !377, line: 991, type: !53)
!4066 = !DILocation(line: 991, column: 28, scope: !4060)
!4067 = !DILocation(line: 991, column: 38, scope: !4060)
!4068 = !DILocation(line: 982, column: 32, scope: !4025, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 993, column: 10, scope: !4060)
!4070 = !DILocation(line: 982, column: 44, scope: !4025, inlinedAt: !4069)
!4071 = !DILocation(line: 982, column: 58, scope: !4025, inlinedAt: !4069)
!4072 = !DILocation(line: 984, column: 3, scope: !4025, inlinedAt: !4069)
!4073 = !DILocation(line: 985, column: 13, scope: !4025, inlinedAt: !4069)
!4074 = !DILocation(line: 984, column: 26, scope: !4025, inlinedAt: !4069)
!4075 = !DILocation(line: 152, column: 43, scope: !2700, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 986, column: 3, scope: !4025, inlinedAt: !4069)
!4077 = !DILocation(line: 152, column: 51, scope: !2700, inlinedAt: !4076)
!4078 = !DILocation(line: 152, column: 58, scope: !2700, inlinedAt: !4076)
!4079 = !DILocation(line: 154, column: 17, scope: !2700, inlinedAt: !4076)
!4080 = !DILocation(line: 156, column: 62, scope: !2700, inlinedAt: !4076)
!4081 = !DILocation(line: 156, column: 57, scope: !2700, inlinedAt: !4076)
!4082 = !DILocation(line: 155, column: 17, scope: !2700, inlinedAt: !4076)
!4083 = !DILocation(line: 157, column: 15, scope: !2700, inlinedAt: !4076)
!4084 = !DILocation(line: 157, column: 7, scope: !2700, inlinedAt: !4076)
!4085 = !DILocation(line: 158, column: 12, scope: !2700, inlinedAt: !4076)
!4086 = !DILocation(line: 158, column: 15, scope: !2700, inlinedAt: !4076)
!4087 = !DILocation(line: 158, column: 25, scope: !2700, inlinedAt: !4076)
!4088 = !DILocation(line: 158, column: 7, scope: !2700, inlinedAt: !4076)
!4089 = !DILocation(line: 159, column: 18, scope: !2700, inlinedAt: !4076)
!4090 = !DILocation(line: 159, column: 23, scope: !2700, inlinedAt: !4076)
!4091 = !DILocation(line: 159, column: 6, scope: !2700, inlinedAt: !4076)
!4092 = !DILocation(line: 987, column: 10, scope: !4025, inlinedAt: !4069)
!4093 = !DILocation(line: 988, column: 1, scope: !4025, inlinedAt: !4069)
!4094 = !DILocation(line: 993, column: 3, scope: !4060)
!4095 = distinct !DISubprogram(name: "quotearg_colon", scope: !377, file: !377, line: 997, type: !3879, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4096)
!4096 = !{!4097}
!4097 = !DILocalVariable(name: "arg", arg: 1, scope: !4095, file: !377, line: 997, type: !290)
!4098 = !DILocation(line: 997, column: 29, scope: !4095)
!4099 = !DILocation(line: 991, column: 28, scope: !4060, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 999, column: 10, scope: !4095)
!4101 = !DILocation(line: 991, column: 38, scope: !4060, inlinedAt: !4100)
!4102 = !DILocation(line: 982, column: 32, scope: !4025, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 993, column: 10, scope: !4060, inlinedAt: !4100)
!4104 = !DILocation(line: 982, column: 44, scope: !4025, inlinedAt: !4103)
!4105 = !DILocation(line: 982, column: 58, scope: !4025, inlinedAt: !4103)
!4106 = !DILocation(line: 984, column: 3, scope: !4025, inlinedAt: !4103)
!4107 = !DILocation(line: 985, column: 13, scope: !4025, inlinedAt: !4103)
!4108 = !DILocation(line: 984, column: 26, scope: !4025, inlinedAt: !4103)
!4109 = !DILocation(line: 152, column: 43, scope: !2700, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 986, column: 3, scope: !4025, inlinedAt: !4103)
!4111 = !DILocation(line: 152, column: 51, scope: !2700, inlinedAt: !4110)
!4112 = !DILocation(line: 152, column: 58, scope: !2700, inlinedAt: !4110)
!4113 = !DILocation(line: 154, column: 17, scope: !2700, inlinedAt: !4110)
!4114 = !DILocation(line: 156, column: 57, scope: !2700, inlinedAt: !4110)
!4115 = !DILocation(line: 155, column: 17, scope: !2700, inlinedAt: !4110)
!4116 = !DILocation(line: 157, column: 7, scope: !2700, inlinedAt: !4110)
!4117 = !DILocation(line: 158, column: 12, scope: !2700, inlinedAt: !4110)
!4118 = !DILocation(line: 159, column: 6, scope: !2700, inlinedAt: !4110)
!4119 = !DILocation(line: 987, column: 10, scope: !4025, inlinedAt: !4103)
!4120 = !DILocation(line: 988, column: 1, scope: !4025, inlinedAt: !4103)
!4121 = !DILocation(line: 999, column: 3, scope: !4095)
!4122 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !377, file: !377, line: 1003, type: !3890, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4123)
!4123 = !{!4124, !4125}
!4124 = !DILocalVariable(name: "arg", arg: 1, scope: !4122, file: !377, line: 1003, type: !290)
!4125 = !DILocalVariable(name: "argsize", arg: 2, scope: !4122, file: !377, line: 1003, type: !55)
!4126 = !DILocation(line: 1003, column: 33, scope: !4122)
!4127 = !DILocation(line: 1003, column: 45, scope: !4122)
!4128 = !DILocation(line: 982, column: 32, scope: !4025, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 1005, column: 10, scope: !4122)
!4130 = !DILocation(line: 982, column: 44, scope: !4025, inlinedAt: !4129)
!4131 = !DILocation(line: 982, column: 58, scope: !4025, inlinedAt: !4129)
!4132 = !DILocation(line: 984, column: 3, scope: !4025, inlinedAt: !4129)
!4133 = !DILocation(line: 985, column: 13, scope: !4025, inlinedAt: !4129)
!4134 = !DILocation(line: 984, column: 26, scope: !4025, inlinedAt: !4129)
!4135 = !DILocation(line: 152, column: 43, scope: !2700, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 986, column: 3, scope: !4025, inlinedAt: !4129)
!4137 = !DILocation(line: 152, column: 51, scope: !2700, inlinedAt: !4136)
!4138 = !DILocation(line: 152, column: 58, scope: !2700, inlinedAt: !4136)
!4139 = !DILocation(line: 154, column: 17, scope: !2700, inlinedAt: !4136)
!4140 = !DILocation(line: 156, column: 57, scope: !2700, inlinedAt: !4136)
!4141 = !DILocation(line: 155, column: 17, scope: !2700, inlinedAt: !4136)
!4142 = !DILocation(line: 157, column: 7, scope: !2700, inlinedAt: !4136)
!4143 = !DILocation(line: 158, column: 12, scope: !2700, inlinedAt: !4136)
!4144 = !DILocation(line: 159, column: 6, scope: !2700, inlinedAt: !4136)
!4145 = !DILocation(line: 987, column: 10, scope: !4025, inlinedAt: !4129)
!4146 = !DILocation(line: 988, column: 1, scope: !4025, inlinedAt: !4129)
!4147 = !DILocation(line: 1005, column: 3, scope: !4122)
!4148 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !377, file: !377, line: 1009, type: !3904, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4149)
!4149 = !{!4150, !4151, !4152, !4153}
!4150 = !DILocalVariable(name: "n", arg: 1, scope: !4148, file: !377, line: 1009, type: !58)
!4151 = !DILocalVariable(name: "s", arg: 2, scope: !4148, file: !377, line: 1009, type: !5)
!4152 = !DILocalVariable(name: "arg", arg: 3, scope: !4148, file: !377, line: 1009, type: !290)
!4153 = !DILocalVariable(name: "options", scope: !4148, file: !377, line: 1011, type: !384)
!4154 = !DILocation(line: 195, column: 26, scope: !3917, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 1012, column: 13, scope: !4148)
!4156 = !DILocation(line: 1009, column: 29, scope: !4148)
!4157 = !DILocation(line: 1009, column: 51, scope: !4148)
!4158 = !DILocation(line: 1009, column: 66, scope: !4148)
!4159 = !DILocation(line: 1011, column: 3, scope: !4148)
!4160 = !DILocation(line: 1012, column: 13, scope: !4148)
!4161 = !DILocation(line: 193, column: 48, scope: !3917, inlinedAt: !4155)
!4162 = !{!4163}
!4163 = distinct !{!4163, !4164, !"quoting_options_from_style: argument 0"}
!4164 = distinct !{!4164, !"quoting_options_from_style"}
!4165 = !DILocation(line: 196, column: 13, scope: !3929, inlinedAt: !4155)
!4166 = !DILocation(line: 196, column: 7, scope: !3917, inlinedAt: !4155)
!4167 = !DILocation(line: 197, column: 5, scope: !3929, inlinedAt: !4155)
!4168 = !DILocation(line: 1011, column: 26, scope: !4148)
!4169 = !DILocation(line: 152, column: 43, scope: !2700, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 1013, column: 3, scope: !4148)
!4171 = !DILocation(line: 152, column: 51, scope: !2700, inlinedAt: !4170)
!4172 = !DILocation(line: 152, column: 58, scope: !2700, inlinedAt: !4170)
!4173 = !DILocation(line: 154, column: 17, scope: !2700, inlinedAt: !4170)
!4174 = !DILocation(line: 156, column: 57, scope: !2700, inlinedAt: !4170)
!4175 = !DILocation(line: 155, column: 17, scope: !2700, inlinedAt: !4170)
!4176 = !DILocation(line: 157, column: 7, scope: !2700, inlinedAt: !4170)
!4177 = !DILocation(line: 158, column: 12, scope: !2700, inlinedAt: !4170)
!4178 = !DILocation(line: 159, column: 6, scope: !2700, inlinedAt: !4170)
!4179 = !DILocation(line: 1014, column: 10, scope: !4148)
!4180 = !DILocation(line: 1015, column: 1, scope: !4148)
!4181 = !DILocation(line: 1014, column: 3, scope: !4148)
!4182 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !377, file: !377, line: 1018, type: !4183, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!52, !58, !290, !290, !290}
!4185 = !{!4186, !4187, !4188, !4189}
!4186 = !DILocalVariable(name: "n", arg: 1, scope: !4182, file: !377, line: 1018, type: !58)
!4187 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4182, file: !377, line: 1018, type: !290)
!4188 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4182, file: !377, line: 1019, type: !290)
!4189 = !DILocalVariable(name: "arg", arg: 4, scope: !4182, file: !377, line: 1019, type: !290)
!4190 = !DILocation(line: 1018, column: 24, scope: !4182)
!4191 = !DILocation(line: 1018, column: 39, scope: !4182)
!4192 = !DILocation(line: 1019, column: 32, scope: !4182)
!4193 = !DILocation(line: 1019, column: 57, scope: !4182)
!4194 = !DILocalVariable(name: "n", arg: 1, scope: !4195, file: !377, line: 1026, type: !58)
!4195 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !377, file: !377, line: 1026, type: !4196, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!52, !58, !290, !290, !290, !55}
!4198 = !{!4194, !4199, !4200, !4201, !4202, !4203}
!4199 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4195, file: !377, line: 1026, type: !290)
!4200 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4195, file: !377, line: 1027, type: !290)
!4201 = !DILocalVariable(name: "arg", arg: 4, scope: !4195, file: !377, line: 1028, type: !290)
!4202 = !DILocalVariable(name: "argsize", arg: 5, scope: !4195, file: !377, line: 1028, type: !55)
!4203 = !DILocalVariable(name: "o", scope: !4195, file: !377, line: 1030, type: !384)
!4204 = !DILocation(line: 1026, column: 28, scope: !4195, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 1021, column: 10, scope: !4182)
!4206 = !DILocation(line: 1026, column: 43, scope: !4195, inlinedAt: !4205)
!4207 = !DILocation(line: 1027, column: 36, scope: !4195, inlinedAt: !4205)
!4208 = !DILocation(line: 1028, column: 36, scope: !4195, inlinedAt: !4205)
!4209 = !DILocation(line: 1028, column: 48, scope: !4195, inlinedAt: !4205)
!4210 = !DILocation(line: 1030, column: 3, scope: !4195, inlinedAt: !4205)
!4211 = !DILocation(line: 1030, column: 30, scope: !4195, inlinedAt: !4205)
!4212 = !DILocation(line: 1030, column: 26, scope: !4195, inlinedAt: !4205)
!4213 = !DILocation(line: 179, column: 45, scope: !2748, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 1031, column: 3, scope: !4195, inlinedAt: !4205)
!4215 = !DILocation(line: 180, column: 33, scope: !2748, inlinedAt: !4214)
!4216 = !DILocation(line: 180, column: 57, scope: !2748, inlinedAt: !4214)
!4217 = !DILocation(line: 184, column: 6, scope: !2748, inlinedAt: !4214)
!4218 = !DILocation(line: 184, column: 12, scope: !2748, inlinedAt: !4214)
!4219 = !DILocation(line: 185, column: 8, scope: !2764, inlinedAt: !4214)
!4220 = !DILocation(line: 185, column: 23, scope: !2764, inlinedAt: !4214)
!4221 = !DILocation(line: 185, column: 19, scope: !2764, inlinedAt: !4214)
!4222 = !DILocation(line: 186, column: 5, scope: !2764, inlinedAt: !4214)
!4223 = !DILocation(line: 187, column: 6, scope: !2748, inlinedAt: !4214)
!4224 = !DILocation(line: 187, column: 17, scope: !2748, inlinedAt: !4214)
!4225 = !DILocation(line: 188, column: 6, scope: !2748, inlinedAt: !4214)
!4226 = !DILocation(line: 188, column: 18, scope: !2748, inlinedAt: !4214)
!4227 = !DILocation(line: 1032, column: 10, scope: !4195, inlinedAt: !4205)
!4228 = !DILocation(line: 1033, column: 1, scope: !4195, inlinedAt: !4205)
!4229 = !DILocation(line: 1021, column: 3, scope: !4182)
!4230 = !DILocation(line: 1026, column: 28, scope: !4195)
!4231 = !DILocation(line: 1026, column: 43, scope: !4195)
!4232 = !DILocation(line: 1027, column: 36, scope: !4195)
!4233 = !DILocation(line: 1028, column: 36, scope: !4195)
!4234 = !DILocation(line: 1028, column: 48, scope: !4195)
!4235 = !DILocation(line: 1030, column: 3, scope: !4195)
!4236 = !DILocation(line: 1030, column: 30, scope: !4195)
!4237 = !DILocation(line: 1030, column: 26, scope: !4195)
!4238 = !DILocation(line: 179, column: 45, scope: !2748, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 1031, column: 3, scope: !4195)
!4240 = !DILocation(line: 180, column: 33, scope: !2748, inlinedAt: !4239)
!4241 = !DILocation(line: 180, column: 57, scope: !2748, inlinedAt: !4239)
!4242 = !DILocation(line: 184, column: 6, scope: !2748, inlinedAt: !4239)
!4243 = !DILocation(line: 184, column: 12, scope: !2748, inlinedAt: !4239)
!4244 = !DILocation(line: 185, column: 8, scope: !2764, inlinedAt: !4239)
!4245 = !DILocation(line: 185, column: 23, scope: !2764, inlinedAt: !4239)
!4246 = !DILocation(line: 185, column: 19, scope: !2764, inlinedAt: !4239)
!4247 = !DILocation(line: 186, column: 5, scope: !2764, inlinedAt: !4239)
!4248 = !DILocation(line: 187, column: 6, scope: !2748, inlinedAt: !4239)
!4249 = !DILocation(line: 187, column: 17, scope: !2748, inlinedAt: !4239)
!4250 = !DILocation(line: 188, column: 6, scope: !2748, inlinedAt: !4239)
!4251 = !DILocation(line: 188, column: 18, scope: !2748, inlinedAt: !4239)
!4252 = !DILocation(line: 1032, column: 10, scope: !4195)
!4253 = !DILocation(line: 1033, column: 1, scope: !4195)
!4254 = !DILocation(line: 1032, column: 3, scope: !4195)
!4255 = distinct !DISubprogram(name: "quotearg_custom", scope: !377, file: !377, line: 1036, type: !4256, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!52, !290, !290, !290}
!4258 = !{!4259, !4260, !4261}
!4259 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4255, file: !377, line: 1036, type: !290)
!4260 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4255, file: !377, line: 1036, type: !290)
!4261 = !DILocalVariable(name: "arg", arg: 3, scope: !4255, file: !377, line: 1037, type: !290)
!4262 = !DILocation(line: 1036, column: 30, scope: !4255)
!4263 = !DILocation(line: 1036, column: 54, scope: !4255)
!4264 = !DILocation(line: 1037, column: 30, scope: !4255)
!4265 = !DILocation(line: 1018, column: 24, scope: !4182, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 1039, column: 10, scope: !4255)
!4267 = !DILocation(line: 1018, column: 39, scope: !4182, inlinedAt: !4266)
!4268 = !DILocation(line: 1019, column: 32, scope: !4182, inlinedAt: !4266)
!4269 = !DILocation(line: 1019, column: 57, scope: !4182, inlinedAt: !4266)
!4270 = !DILocation(line: 1026, column: 28, scope: !4195, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 1021, column: 10, scope: !4182, inlinedAt: !4266)
!4272 = !DILocation(line: 1026, column: 43, scope: !4195, inlinedAt: !4271)
!4273 = !DILocation(line: 1027, column: 36, scope: !4195, inlinedAt: !4271)
!4274 = !DILocation(line: 1028, column: 36, scope: !4195, inlinedAt: !4271)
!4275 = !DILocation(line: 1028, column: 48, scope: !4195, inlinedAt: !4271)
!4276 = !DILocation(line: 1030, column: 3, scope: !4195, inlinedAt: !4271)
!4277 = !DILocation(line: 1030, column: 30, scope: !4195, inlinedAt: !4271)
!4278 = !DILocation(line: 1030, column: 26, scope: !4195, inlinedAt: !4271)
!4279 = !DILocation(line: 179, column: 45, scope: !2748, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 1031, column: 3, scope: !4195, inlinedAt: !4271)
!4281 = !DILocation(line: 180, column: 33, scope: !2748, inlinedAt: !4280)
!4282 = !DILocation(line: 180, column: 57, scope: !2748, inlinedAt: !4280)
!4283 = !DILocation(line: 184, column: 6, scope: !2748, inlinedAt: !4280)
!4284 = !DILocation(line: 184, column: 12, scope: !2748, inlinedAt: !4280)
!4285 = !DILocation(line: 185, column: 8, scope: !2764, inlinedAt: !4280)
!4286 = !DILocation(line: 185, column: 23, scope: !2764, inlinedAt: !4280)
!4287 = !DILocation(line: 185, column: 19, scope: !2764, inlinedAt: !4280)
!4288 = !DILocation(line: 186, column: 5, scope: !2764, inlinedAt: !4280)
!4289 = !DILocation(line: 187, column: 6, scope: !2748, inlinedAt: !4280)
!4290 = !DILocation(line: 187, column: 17, scope: !2748, inlinedAt: !4280)
!4291 = !DILocation(line: 188, column: 6, scope: !2748, inlinedAt: !4280)
!4292 = !DILocation(line: 188, column: 18, scope: !2748, inlinedAt: !4280)
!4293 = !DILocation(line: 1032, column: 10, scope: !4195, inlinedAt: !4271)
!4294 = !DILocation(line: 1033, column: 1, scope: !4195, inlinedAt: !4271)
!4295 = !DILocation(line: 1039, column: 3, scope: !4255)
!4296 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !377, file: !377, line: 1043, type: !4297, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!52, !290, !290, !290, !55}
!4299 = !{!4300, !4301, !4302, !4303}
!4300 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4296, file: !377, line: 1043, type: !290)
!4301 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4296, file: !377, line: 1043, type: !290)
!4302 = !DILocalVariable(name: "arg", arg: 3, scope: !4296, file: !377, line: 1044, type: !290)
!4303 = !DILocalVariable(name: "argsize", arg: 4, scope: !4296, file: !377, line: 1044, type: !55)
!4304 = !DILocation(line: 1043, column: 34, scope: !4296)
!4305 = !DILocation(line: 1043, column: 58, scope: !4296)
!4306 = !DILocation(line: 1044, column: 34, scope: !4296)
!4307 = !DILocation(line: 1044, column: 46, scope: !4296)
!4308 = !DILocation(line: 1026, column: 28, scope: !4195, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 1046, column: 10, scope: !4296)
!4310 = !DILocation(line: 1026, column: 43, scope: !4195, inlinedAt: !4309)
!4311 = !DILocation(line: 1027, column: 36, scope: !4195, inlinedAt: !4309)
!4312 = !DILocation(line: 1028, column: 36, scope: !4195, inlinedAt: !4309)
!4313 = !DILocation(line: 1028, column: 48, scope: !4195, inlinedAt: !4309)
!4314 = !DILocation(line: 1030, column: 3, scope: !4195, inlinedAt: !4309)
!4315 = !DILocation(line: 1030, column: 30, scope: !4195, inlinedAt: !4309)
!4316 = !DILocation(line: 1030, column: 26, scope: !4195, inlinedAt: !4309)
!4317 = !DILocation(line: 179, column: 45, scope: !2748, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 1031, column: 3, scope: !4195, inlinedAt: !4309)
!4319 = !DILocation(line: 180, column: 33, scope: !2748, inlinedAt: !4318)
!4320 = !DILocation(line: 180, column: 57, scope: !2748, inlinedAt: !4318)
!4321 = !DILocation(line: 184, column: 6, scope: !2748, inlinedAt: !4318)
!4322 = !DILocation(line: 184, column: 12, scope: !2748, inlinedAt: !4318)
!4323 = !DILocation(line: 185, column: 8, scope: !2764, inlinedAt: !4318)
!4324 = !DILocation(line: 185, column: 23, scope: !2764, inlinedAt: !4318)
!4325 = !DILocation(line: 185, column: 19, scope: !2764, inlinedAt: !4318)
!4326 = !DILocation(line: 186, column: 5, scope: !2764, inlinedAt: !4318)
!4327 = !DILocation(line: 187, column: 6, scope: !2748, inlinedAt: !4318)
!4328 = !DILocation(line: 187, column: 17, scope: !2748, inlinedAt: !4318)
!4329 = !DILocation(line: 188, column: 6, scope: !2748, inlinedAt: !4318)
!4330 = !DILocation(line: 188, column: 18, scope: !2748, inlinedAt: !4318)
!4331 = !DILocation(line: 1032, column: 10, scope: !4195, inlinedAt: !4309)
!4332 = !DILocation(line: 1033, column: 1, scope: !4195, inlinedAt: !4309)
!4333 = !DILocation(line: 1046, column: 3, scope: !4296)
!4334 = distinct !DISubprogram(name: "quote_n_mem", scope: !377, file: !377, line: 1061, type: !4335, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4337)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!290, !58, !290, !55}
!4337 = !{!4338, !4339, !4340}
!4338 = !DILocalVariable(name: "n", arg: 1, scope: !4334, file: !377, line: 1061, type: !58)
!4339 = !DILocalVariable(name: "arg", arg: 2, scope: !4334, file: !377, line: 1061, type: !290)
!4340 = !DILocalVariable(name: "argsize", arg: 3, scope: !4334, file: !377, line: 1061, type: !55)
!4341 = !DILocation(line: 1061, column: 18, scope: !4334)
!4342 = !DILocation(line: 1061, column: 33, scope: !4334)
!4343 = !DILocation(line: 1061, column: 45, scope: !4334)
!4344 = !DILocation(line: 1063, column: 10, scope: !4334)
!4345 = !DILocation(line: 1063, column: 3, scope: !4334)
!4346 = distinct !DISubprogram(name: "quote_mem", scope: !377, file: !377, line: 1067, type: !4347, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4349)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!290, !290, !55}
!4349 = !{!4350, !4351}
!4350 = !DILocalVariable(name: "arg", arg: 1, scope: !4346, file: !377, line: 1067, type: !290)
!4351 = !DILocalVariable(name: "argsize", arg: 2, scope: !4346, file: !377, line: 1067, type: !55)
!4352 = !DILocation(line: 1067, column: 24, scope: !4346)
!4353 = !DILocation(line: 1067, column: 36, scope: !4346)
!4354 = !DILocation(line: 1061, column: 18, scope: !4334, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 1069, column: 10, scope: !4346)
!4356 = !DILocation(line: 1061, column: 33, scope: !4334, inlinedAt: !4355)
!4357 = !DILocation(line: 1061, column: 45, scope: !4334, inlinedAt: !4355)
!4358 = !DILocation(line: 1063, column: 10, scope: !4334, inlinedAt: !4355)
!4359 = !DILocation(line: 1069, column: 3, scope: !4346)
!4360 = distinct !DISubprogram(name: "quote_n", scope: !377, file: !377, line: 1073, type: !4361, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!290, !58, !290}
!4363 = !{!4364, !4365}
!4364 = !DILocalVariable(name: "n", arg: 1, scope: !4360, file: !377, line: 1073, type: !58)
!4365 = !DILocalVariable(name: "arg", arg: 2, scope: !4360, file: !377, line: 1073, type: !290)
!4366 = !DILocation(line: 1073, column: 14, scope: !4360)
!4367 = !DILocation(line: 1073, column: 29, scope: !4360)
!4368 = !DILocation(line: 1061, column: 18, scope: !4334, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 1075, column: 10, scope: !4360)
!4370 = !DILocation(line: 1061, column: 33, scope: !4334, inlinedAt: !4369)
!4371 = !DILocation(line: 1061, column: 45, scope: !4334, inlinedAt: !4369)
!4372 = !DILocation(line: 1063, column: 10, scope: !4334, inlinedAt: !4369)
!4373 = !DILocation(line: 1075, column: 3, scope: !4360)
!4374 = distinct !DISubprogram(name: "quote", scope: !377, file: !377, line: 1079, type: !4375, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !365, retainedNodes: !4377)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!290, !290}
!4377 = !{!4378}
!4378 = !DILocalVariable(name: "arg", arg: 1, scope: !4374, file: !377, line: 1079, type: !290)
!4379 = !DILocation(line: 1079, column: 20, scope: !4374)
!4380 = !DILocation(line: 1073, column: 14, scope: !4360, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 1081, column: 10, scope: !4374)
!4382 = !DILocation(line: 1073, column: 29, scope: !4360, inlinedAt: !4381)
!4383 = !DILocation(line: 1061, column: 18, scope: !4334, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 1075, column: 10, scope: !4360, inlinedAt: !4381)
!4385 = !DILocation(line: 1061, column: 33, scope: !4334, inlinedAt: !4384)
!4386 = !DILocation(line: 1061, column: 45, scope: !4334, inlinedAt: !4384)
!4387 = !DILocation(line: 1063, column: 10, scope: !4334, inlinedAt: !4384)
!4388 = !DILocation(line: 1081, column: 3, scope: !4374)
!4389 = distinct !DISubprogram(name: "readtokens0_init", scope: !4390, file: !4390, line: 30, type: !4391, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !666, retainedNodes: !4435)
!4390 = !DIFile(filename: "lib/readtokens0.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4391 = !DISubroutineType(types: !4392)
!4392 = !{null, !4393}
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !124, line: 28, size: 2304, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4399, !4433, !4434}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !4394, file: !124, line: 30, baseType: !55, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !4394, file: !124, line: 31, baseType: !67, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !4394, file: !124, line: 32, baseType: !129, size: 64, offset: 128)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !4394, file: !124, line: 33, baseType: !4400, size: 704, offset: 192)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !4401)
!4401 = !{!4402, !4403, !4410, !4411, !4412, !4413, !4418, !4419, !4424, !4429, !4430, !4431, !4432}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4400, file: !132, line: 176, baseType: !55, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4400, file: !132, line: 177, baseType: !4404, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !4406)
!4406 = !{!4407, !4408, !4409}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4405, file: !132, line: 169, baseType: !52, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4405, file: !132, line: 170, baseType: !4404, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4405, file: !132, line: 171, baseType: !142, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4400, file: !132, line: 178, baseType: !52, size: 64, offset: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4400, file: !132, line: 179, baseType: !52, size: 64, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4400, file: !132, line: 180, baseType: !52, size: 64, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4400, file: !132, line: 185, baseType: !4414, size: 64, offset: 320)
!4414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4400, file: !132, line: 181, size: 64, elements: !4415)
!4415 = !{!4416, !4417}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4414, file: !132, line: 183, baseType: !55, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4414, file: !132, line: 184, baseType: !54, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4400, file: !132, line: 186, baseType: !55, size: 64, offset: 384)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4400, file: !132, line: 193, baseType: !4420, size: 64, offset: 448)
!4420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4400, file: !132, line: 189, size: 64, elements: !4421)
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4420, file: !132, line: 191, baseType: !158, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4420, file: !132, line: 192, baseType: !162, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4400, file: !132, line: 198, baseType: !4425, size: 64, offset: 512)
!4425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4400, file: !132, line: 194, size: 64, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4425, file: !132, line: 196, baseType: !169, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4425, file: !132, line: 197, baseType: !173, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4400, file: !132, line: 200, baseType: !54, size: 64, offset: 576)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4400, file: !132, line: 201, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4400, file: !132, line: 202, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4400, file: !132, line: 206, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !4394, file: !124, line: 34, baseType: !4400, size: 704, offset: 896)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !4394, file: !124, line: 35, baseType: !4400, size: 704, offset: 1600)
!4435 = !{!4436}
!4436 = !DILocalVariable(name: "t", arg: 1, scope: !4389, file: !4390, line: 30, type: !4393)
!4437 = !DILocation(line: 30, column: 34, scope: !4389)
!4438 = !DILocation(line: 35, column: 3, scope: !4389)
!4439 = !DILocation(line: 33, column: 10, scope: !4389)
!4440 = !DILocation(line: 36, column: 3, scope: !4389)
!4441 = !DILocation(line: 37, column: 3, scope: !4389)
!4442 = !DILocation(line: 38, column: 1, scope: !4389)
!4443 = distinct !DISubprogram(name: "readtokens0_free", scope: !4390, file: !4390, line: 41, type: !4391, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !666, retainedNodes: !4444)
!4444 = !{!4445, !4446, !4449, !4450, !4452, !4453, !4455}
!4445 = !DILocalVariable(name: "t", arg: 1, scope: !4443, file: !4390, line: 41, type: !4393)
!4446 = !DILocalVariable(name: "__o", scope: !4447, file: !4390, line: 43, type: !4448)
!4447 = distinct !DILexicalBlock(scope: !4443, file: !4390, line: 43, column: 3)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4449 = !DILocalVariable(name: "__obj", scope: !4447, file: !4390, line: 43, type: !54)
!4450 = !DILocalVariable(name: "__o", scope: !4451, file: !4390, line: 44, type: !4448)
!4451 = distinct !DILexicalBlock(scope: !4443, file: !4390, line: 44, column: 3)
!4452 = !DILocalVariable(name: "__obj", scope: !4451, file: !4390, line: 44, type: !54)
!4453 = !DILocalVariable(name: "__o", scope: !4454, file: !4390, line: 45, type: !4448)
!4454 = distinct !DILexicalBlock(scope: !4443, file: !4390, line: 45, column: 3)
!4455 = !DILocalVariable(name: "__obj", scope: !4454, file: !4390, line: 45, type: !54)
!4456 = !DILocation(line: 41, column: 34, scope: !4443)
!4457 = !DILocation(line: 43, column: 3, scope: !4447)
!4458 = !DILocation(line: 43, column: 3, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4447, file: !4390, line: 43, column: 3)
!4460 = !DILocation(line: 44, column: 3, scope: !4451)
!4461 = !DILocation(line: 44, column: 3, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4451, file: !4390, line: 44, column: 3)
!4463 = !DILocation(line: 45, column: 3, scope: !4454)
!4464 = !DILocation(line: 45, column: 3, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4454, file: !4390, line: 45, column: 3)
!4466 = !DILocation(line: 46, column: 1, scope: !4443)
!4467 = distinct !DISubprogram(name: "readtokens0", scope: !4390, file: !4390, line: 66, type: !4468, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !666, retainedNodes: !4504)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!72, !4470, !4393}
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4472)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4472, file: !193, line: 51, baseType: !58, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4472, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4472, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4472, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4472, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4472, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4472, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4472, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4472, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4472, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4472, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4472, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4472, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4472, file: !193, line: 70, baseType: !4488, size: 64, offset: 832)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4472, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4472, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4472, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4472, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4472, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4472, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4472, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4472, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4472, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4472, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4472, file: !193, line: 93, baseType: !4488, size: 64, offset: 1344)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4472, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4472, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4472, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4472, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4504 = !{!4505, !4506, !4507, !4509, !4512, !4516, !4520, !4523, !4525, !4528, !4530, !4533, !4535, !4536, !4538, !4539, !4541}
!4505 = !DILocalVariable(name: "in", arg: 1, scope: !4467, file: !4390, line: 66, type: !4470)
!4506 = !DILocalVariable(name: "t", arg: 2, scope: !4467, file: !4390, line: 66, type: !4393)
!4507 = !DILocalVariable(name: "c", scope: !4508, file: !4390, line: 71, type: !58)
!4508 = distinct !DILexicalBlock(scope: !4467, file: !4390, line: 70, column: 5)
!4509 = !DILocalVariable(name: "len", scope: !4510, file: !4390, line: 74, type: !55)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !4390, line: 73, column: 9)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !4390, line: 72, column: 11)
!4512 = !DILocalVariable(name: "__o", scope: !4513, file: !4390, line: 74, type: !4514)
!4513 = distinct !DILexicalBlock(scope: !4510, file: !4390, line: 74, column: 24)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4400)
!4516 = !DILocalVariable(name: "__o", scope: !4517, file: !4390, line: 80, type: !4448)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !4390, line: 80, column: 15)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !4390, line: 79, column: 13)
!4519 = distinct !DILexicalBlock(scope: !4510, file: !4390, line: 78, column: 15)
!4520 = !DILocalVariable(name: "__o1", scope: !4521, file: !4390, line: 80, type: !4514)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !4390, line: 80, column: 15)
!4522 = distinct !DILexicalBlock(scope: !4517, file: !4390, line: 80, column: 15)
!4523 = !DILocalVariable(name: "__o", scope: !4524, file: !4390, line: 87, type: !4448)
!4524 = distinct !DILexicalBlock(scope: !4508, file: !4390, line: 87, column: 7)
!4525 = !DILocalVariable(name: "__o1", scope: !4526, file: !4390, line: 87, type: !4514)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !4390, line: 87, column: 7)
!4527 = distinct !DILexicalBlock(scope: !4524, file: !4390, line: 87, column: 7)
!4528 = !DILocalVariable(name: "__o", scope: !4529, file: !4390, line: 94, type: !4448)
!4529 = distinct !DILexicalBlock(scope: !4467, file: !4390, line: 94, column: 3)
!4530 = !DILocalVariable(name: "__o1", scope: !4531, file: !4390, line: 94, type: !4514)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !4390, line: 94, column: 3)
!4532 = distinct !DILexicalBlock(scope: !4529, file: !4390, line: 94, column: 3)
!4533 = !DILocalVariable(name: "__o1", scope: !4534, file: !4390, line: 94, type: !4448)
!4534 = distinct !DILexicalBlock(scope: !4529, file: !4390, line: 94, column: 3)
!4535 = !DILocalVariable(name: "__p1", scope: !4534, file: !4390, line: 94, type: !54)
!4536 = !DILocalVariable(name: "__o1", scope: !4537, file: !4390, line: 96, type: !4448)
!4537 = distinct !DILexicalBlock(scope: !4467, file: !4390, line: 96, column: 12)
!4538 = !DILocalVariable(name: "__value", scope: !4537, file: !4390, line: 96, type: !54)
!4539 = !DILocalVariable(name: "__o1", scope: !4540, file: !4390, line: 97, type: !4448)
!4540 = distinct !DILexicalBlock(scope: !4467, file: !4390, line: 97, column: 16)
!4541 = !DILocalVariable(name: "__value", scope: !4540, file: !4390, line: 97, type: !54)
!4542 = !DILocation(line: 66, column: 20, scope: !4467)
!4543 = !DILocation(line: 66, column: 39, scope: !4467)
!4544 = !DILocation(line: 71, column: 15, scope: !4508)
!4545 = !DILocation(line: 71, column: 11, scope: !4508)
!4546 = !DILocation(line: 72, column: 13, scope: !4511)
!4547 = !DILocation(line: 72, column: 11, scope: !4508)
!4548 = !DILocation(line: 74, column: 24, scope: !4513)
!4549 = !{!1308, !1148, i64 24}
!4550 = !{!1308, !1148, i64 16}
!4551 = !DILocation(line: 78, column: 15, scope: !4519)
!4552 = !DILocation(line: 78, column: 15, scope: !4510)
!4553 = !DILocation(line: 80, column: 15, scope: !4517)
!4554 = !DILocation(line: 80, column: 15, scope: !4521)
!4555 = !{!1308, !1148, i64 32}
!4556 = !DILocation(line: 80, column: 15, scope: !4522)
!4557 = !DILocation(line: 81, column: 15, scope: !4518)
!4558 = !DILocation(line: 87, column: 7, scope: !4526)
!4559 = !DILocation(line: 87, column: 7, scope: !4527)
!4560 = !DILocation(line: 87, column: 7, scope: !4524)
!4561 = !DILocation(line: 88, column: 13, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4508, file: !4390, line: 88, column: 11)
!4563 = !DILocation(line: 88, column: 11, scope: !4508)
!4564 = !DILocation(line: 89, column: 9, scope: !4562)
!4565 = !DILocation(line: 94, column: 3, scope: !4531)
!4566 = !DILocation(line: 94, column: 3, scope: !4532)
!4567 = !DILocation(line: 94, column: 3, scope: !4529)
!4568 = !DILocation(line: 94, column: 3, scope: !4534)
!4569 = !DILocation(line: 96, column: 12, scope: !4537)
!4570 = !DILocation(line: 96, column: 12, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4537, file: !4390, line: 96, column: 12)
!4572 = !{!1308, !1208, i64 48}
!4573 = !DILocation(line: 96, column: 12, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4537, file: !4390, line: 96, column: 12)
!4575 = !{!1308, !1148, i64 8}
!4576 = !DILocation(line: 96, column: 6, scope: !4467)
!4577 = !DILocation(line: 96, column: 10, scope: !4467)
!4578 = !DILocation(line: 97, column: 16, scope: !4540)
!4579 = !DILocation(line: 97, column: 16, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4540, file: !4390, line: 97, column: 16)
!4581 = !DILocation(line: 97, column: 16, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4540, file: !4390, line: 97, column: 16)
!4583 = !DILocation(line: 97, column: 6, scope: !4467)
!4584 = !DILocation(line: 97, column: 14, scope: !4467)
!4585 = !{!1307, !1148, i64 16}
!4586 = !DILocation(line: 98, column: 12, scope: !4467)
!4587 = !DILocation(line: 98, column: 10, scope: !4467)
!4588 = !DILocation(line: 98, column: 3, scope: !4467)
!4589 = distinct !DISubprogram(name: "save_token", scope: !4390, file: !4390, line: 51, type: !4391, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !666, retainedNodes: !4590)
!4590 = !{!4591, !4592, !4593, !4595, !4596, !4598, !4599, !4601, !4604, !4606, !4607, !4609, !4610}
!4591 = !DILocalVariable(name: "t", arg: 1, scope: !4589, file: !4390, line: 51, type: !4393)
!4592 = !DILocalVariable(name: "len", scope: !4589, file: !4390, line: 54, type: !55)
!4593 = !DILocalVariable(name: "__o", scope: !4594, file: !4390, line: 54, type: !4514)
!4594 = distinct !DILexicalBlock(scope: !4589, file: !4390, line: 54, column: 16)
!4595 = !DILocalVariable(name: "s", scope: !4589, file: !4390, line: 55, type: !290)
!4596 = !DILocalVariable(name: "__o1", scope: !4597, file: !4390, line: 55, type: !4448)
!4597 = distinct !DILexicalBlock(scope: !4589, file: !4390, line: 55, column: 19)
!4598 = !DILocalVariable(name: "__value", scope: !4597, file: !4390, line: 55, type: !54)
!4599 = !DILocalVariable(name: "__o", scope: !4600, file: !4390, line: 56, type: !4448)
!4600 = distinct !DILexicalBlock(scope: !4589, file: !4390, line: 56, column: 3)
!4601 = !DILocalVariable(name: "__o1", scope: !4602, file: !4390, line: 56, type: !4514)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !4390, line: 56, column: 3)
!4603 = distinct !DILexicalBlock(scope: !4600, file: !4390, line: 56, column: 3)
!4604 = !DILocalVariable(name: "__o1", scope: !4605, file: !4390, line: 56, type: !4448)
!4605 = distinct !DILexicalBlock(scope: !4600, file: !4390, line: 56, column: 3)
!4606 = !DILocalVariable(name: "__p1", scope: !4605, file: !4390, line: 56, type: !54)
!4607 = !DILocalVariable(name: "__o", scope: !4608, file: !4390, line: 57, type: !4448)
!4608 = distinct !DILexicalBlock(scope: !4589, file: !4390, line: 57, column: 3)
!4609 = !DILocalVariable(name: "__len", scope: !4608, file: !4390, line: 57, type: !55)
!4610 = !DILocalVariable(name: "__o1", scope: !4611, file: !4390, line: 57, type: !4514)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !4390, line: 57, column: 3)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !4390, line: 57, column: 3)
!4613 = !DILocation(line: 51, column: 28, scope: !4589)
!4614 = !DILocation(line: 54, column: 16, scope: !4594)
!4615 = !DILocation(line: 54, column: 49, scope: !4589)
!4616 = !DILocation(line: 54, column: 10, scope: !4589)
!4617 = !DILocation(line: 55, column: 19, scope: !4597)
!4618 = !DILocation(line: 55, column: 19, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4597, file: !4390, line: 55, column: 19)
!4620 = !DILocation(line: 55, column: 19, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4597, file: !4390, line: 55, column: 19)
!4622 = !DILocation(line: 55, column: 15, scope: !4589)
!4623 = !DILocation(line: 56, column: 3, scope: !4602)
!4624 = !DILocation(line: 56, column: 3, scope: !4603)
!4625 = !DILocation(line: 56, column: 3, scope: !4600)
!4626 = !DILocation(line: 56, column: 3, scope: !4605)
!4627 = !DILocation(line: 57, column: 3, scope: !4608)
!4628 = !DILocation(line: 57, column: 3, scope: !4611)
!4629 = !DILocation(line: 57, column: 3, scope: !4612)
!4630 = !DILocation(line: 58, column: 6, scope: !4589)
!4631 = !DILocation(line: 58, column: 11, scope: !4589)
!4632 = !DILocation(line: 59, column: 1, scope: !4589)
!4633 = distinct !DISubprogram(name: "safe_read", scope: !4634, file: !4634, line: 56, type: !4635, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !672, retainedNodes: !4637)
!4634 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!55, !58, !54, !55}
!4637 = !{!4638, !4639, !4640, !4641}
!4638 = !DILocalVariable(name: "fd", arg: 1, scope: !4633, file: !4634, line: 56, type: !58)
!4639 = !DILocalVariable(name: "buf", arg: 2, scope: !4633, file: !4634, line: 56, type: !54)
!4640 = !DILocalVariable(name: "count", arg: 3, scope: !4633, file: !4634, line: 56, type: !55)
!4641 = !DILocalVariable(name: "result", scope: !4642, file: !4634, line: 60, type: !4645)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !4634, line: 59, column: 5)
!4643 = distinct !DILexicalBlock(scope: !4644, file: !4634, line: 58, column: 3)
!4644 = distinct !DILexicalBlock(scope: !4633, file: !4634, line: 58, column: 3)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4646, line: 108, baseType: !2209)
!4646 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4647 = !DILocation(line: 56, column: 14, scope: !4633)
!4648 = !DILocation(line: 56, column: 30, scope: !4633)
!4649 = !DILocation(line: 56, column: 42, scope: !4633)
!4650 = !DILocation(line: 58, column: 3, scope: !4633)
!4651 = !DILocation(line: 60, column: 24, scope: !4642)
!4652 = !DILocation(line: 60, column: 15, scope: !4642)
!4653 = !DILocation(line: 62, column: 13, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4642, file: !4634, line: 62, column: 11)
!4655 = !DILocation(line: 62, column: 11, scope: !4642)
!4656 = !DILocation(line: 64, column: 16, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4654, file: !4634, line: 64, column: 16)
!4658 = !DILocation(line: 64, column: 16, scope: !4654)
!4659 = distinct !{!4659, !4660, !4661}
!4660 = !DILocation(line: 58, column: 3, scope: !4644)
!4661 = !DILocation(line: 70, column: 5, scope: !4644)
!4662 = !DILocation(line: 66, column: 22, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4657, file: !4634, line: 66, column: 16)
!4664 = !DILocation(line: 66, column: 51, scope: !4663)
!4665 = !DILocation(line: 66, column: 32, scope: !4663)
!4666 = !DILocation(line: 71, column: 1, scope: !4633)
!4667 = distinct !DISubprogram(name: "version_etc_arn", scope: !683, file: !683, line: 62, type: !4668, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !4705)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{null, !4670, !290, !290, !290, !4704, !55}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4672)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !4673)
!4673 = !{!4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4672, file: !193, line: 51, baseType: !58, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4672, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4672, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4672, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4672, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4672, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4672, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4672, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4672, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4672, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4672, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4672, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4672, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4672, file: !193, line: 70, baseType: !4688, size: 64, offset: 832)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4672, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4672, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4672, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4672, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4672, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4672, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4672, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4672, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4672, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4672, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4672, file: !193, line: 93, baseType: !4688, size: 64, offset: 1344)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4672, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4672, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4672, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4672, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!4705 = !{!4706, !4707, !4708, !4709, !4710, !4711}
!4706 = !DILocalVariable(name: "stream", arg: 1, scope: !4667, file: !683, line: 62, type: !4670)
!4707 = !DILocalVariable(name: "command_name", arg: 2, scope: !4667, file: !683, line: 63, type: !290)
!4708 = !DILocalVariable(name: "package", arg: 3, scope: !4667, file: !683, line: 63, type: !290)
!4709 = !DILocalVariable(name: "version", arg: 4, scope: !4667, file: !683, line: 64, type: !290)
!4710 = !DILocalVariable(name: "authors", arg: 5, scope: !4667, file: !683, line: 65, type: !4704)
!4711 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4667, file: !683, line: 65, type: !55)
!4712 = !DILocation(line: 62, column: 24, scope: !4667)
!4713 = !DILocation(line: 63, column: 30, scope: !4667)
!4714 = !DILocation(line: 63, column: 56, scope: !4667)
!4715 = !DILocation(line: 64, column: 30, scope: !4667)
!4716 = !DILocation(line: 65, column: 39, scope: !4667)
!4717 = !DILocation(line: 65, column: 55, scope: !4667)
!4718 = !DILocation(line: 67, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4667, file: !683, line: 67, column: 7)
!4720 = !DILocation(line: 67, column: 7, scope: !4667)
!4721 = !DILocation(line: 68, column: 5, scope: !4719)
!4722 = !DILocation(line: 70, column: 5, scope: !4719)
!4723 = !DILocation(line: 84, column: 3, scope: !4667)
!4724 = !DILocation(line: 86, column: 3, scope: !4667)
!4725 = !DILocation(line: 95, column: 3, scope: !4667)
!4726 = !DILocation(line: 99, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4667, file: !683, line: 96, column: 5)
!4728 = !DILocation(line: 102, column: 7, scope: !4727)
!4729 = !DILocation(line: 103, column: 7, scope: !4727)
!4730 = !DILocation(line: 106, column: 7, scope: !4727)
!4731 = !DILocation(line: 107, column: 7, scope: !4727)
!4732 = !DILocation(line: 110, column: 7, scope: !4727)
!4733 = !DILocation(line: 112, column: 7, scope: !4727)
!4734 = !DILocation(line: 117, column: 7, scope: !4727)
!4735 = !DILocation(line: 119, column: 7, scope: !4727)
!4736 = !DILocation(line: 124, column: 7, scope: !4727)
!4737 = !DILocation(line: 126, column: 7, scope: !4727)
!4738 = !DILocation(line: 131, column: 7, scope: !4727)
!4739 = !DILocation(line: 134, column: 7, scope: !4727)
!4740 = !DILocation(line: 139, column: 7, scope: !4727)
!4741 = !DILocation(line: 142, column: 7, scope: !4727)
!4742 = !DILocation(line: 147, column: 7, scope: !4727)
!4743 = !DILocation(line: 151, column: 7, scope: !4727)
!4744 = !DILocation(line: 156, column: 7, scope: !4727)
!4745 = !DILocation(line: 160, column: 7, scope: !4727)
!4746 = !DILocation(line: 167, column: 7, scope: !4727)
!4747 = !DILocation(line: 171, column: 7, scope: !4727)
!4748 = !DILocation(line: 173, column: 1, scope: !4667)
!4749 = distinct !DISubprogram(name: "version_etc_ar", scope: !683, file: !683, line: 180, type: !4750, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !4752)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !4670, !290, !290, !290, !4704}
!4752 = !{!4753, !4754, !4755, !4756, !4757, !4758}
!4753 = !DILocalVariable(name: "stream", arg: 1, scope: !4749, file: !683, line: 180, type: !4670)
!4754 = !DILocalVariable(name: "command_name", arg: 2, scope: !4749, file: !683, line: 181, type: !290)
!4755 = !DILocalVariable(name: "package", arg: 3, scope: !4749, file: !683, line: 181, type: !290)
!4756 = !DILocalVariable(name: "version", arg: 4, scope: !4749, file: !683, line: 182, type: !290)
!4757 = !DILocalVariable(name: "authors", arg: 5, scope: !4749, file: !683, line: 182, type: !4704)
!4758 = !DILocalVariable(name: "n_authors", scope: !4749, file: !683, line: 184, type: !55)
!4759 = !DILocation(line: 180, column: 23, scope: !4749)
!4760 = !DILocation(line: 181, column: 29, scope: !4749)
!4761 = !DILocation(line: 181, column: 55, scope: !4749)
!4762 = !DILocation(line: 182, column: 29, scope: !4749)
!4763 = !DILocation(line: 182, column: 59, scope: !4749)
!4764 = !DILocation(line: 184, column: 10, scope: !4749)
!4765 = !DILocation(line: 186, column: 8, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4749, file: !683, line: 186, column: 3)
!4767 = !DILocation(line: 0, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4766, file: !683, line: 186, column: 3)
!4769 = !DILocation(line: 186, column: 23, scope: !4768)
!4770 = !DILocation(line: 186, column: 3, scope: !4766)
!4771 = !DILocation(line: 186, column: 52, scope: !4768)
!4772 = distinct !{!4772, !4770, !4773}
!4773 = !DILocation(line: 187, column: 5, scope: !4766)
!4774 = !DILocation(line: 188, column: 3, scope: !4749)
!4775 = !DILocation(line: 189, column: 1, scope: !4749)
!4776 = distinct !DISubprogram(name: "version_etc_va", scope: !683, file: !683, line: 196, type: !4777, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !4786)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{null, !4670, !290, !290, !290, !4779}
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !680, line: 189, size: 192, elements: !4781)
!4781 = !{!4782, !4783, !4784, !4785}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4780, file: !680, line: 189, baseType: !7, size: 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4780, file: !680, line: 189, baseType: !7, size: 32, offset: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4780, file: !680, line: 189, baseType: !54, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4780, file: !680, line: 189, baseType: !54, size: 64, offset: 128)
!4786 = !{!4787, !4788, !4789, !4790, !4791, !4792, !4793}
!4787 = !DILocalVariable(name: "stream", arg: 1, scope: !4776, file: !683, line: 196, type: !4670)
!4788 = !DILocalVariable(name: "command_name", arg: 2, scope: !4776, file: !683, line: 197, type: !290)
!4789 = !DILocalVariable(name: "package", arg: 3, scope: !4776, file: !683, line: 197, type: !290)
!4790 = !DILocalVariable(name: "version", arg: 4, scope: !4776, file: !683, line: 198, type: !290)
!4791 = !DILocalVariable(name: "authors", arg: 5, scope: !4776, file: !683, line: 198, type: !4779)
!4792 = !DILocalVariable(name: "n_authors", scope: !4776, file: !683, line: 200, type: !55)
!4793 = !DILocalVariable(name: "authtab", scope: !4776, file: !683, line: 201, type: !4794)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 640, elements: !380)
!4795 = !DILocation(line: 196, column: 23, scope: !4776)
!4796 = !DILocation(line: 197, column: 29, scope: !4776)
!4797 = !DILocation(line: 197, column: 55, scope: !4776)
!4798 = !DILocation(line: 198, column: 29, scope: !4776)
!4799 = !DILocation(line: 198, column: 46, scope: !4776)
!4800 = !DILocation(line: 201, column: 3, scope: !4776)
!4801 = !DILocation(line: 201, column: 15, scope: !4776)
!4802 = !DILocation(line: 200, column: 10, scope: !4776)
!4803 = !DILocation(line: 205, column: 35, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !683, line: 203, column: 3)
!4805 = distinct !DILexicalBlock(scope: !4776, file: !683, line: 203, column: 3)
!4806 = !DILocation(line: 205, column: 14, scope: !4804)
!4807 = !DILocation(line: 205, column: 33, scope: !4804)
!4808 = !DILocation(line: 205, column: 67, scope: !4804)
!4809 = !DILocation(line: 203, column: 3, scope: !4805)
!4810 = !DILocation(line: 0, scope: !4804)
!4811 = !DILocation(line: 208, column: 3, scope: !4776)
!4812 = !DILocation(line: 210, column: 1, scope: !4776)
!4813 = distinct !DISubprogram(name: "version_etc", scope: !683, file: !683, line: 227, type: !4814, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !4816)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{null, !4670, !290, !290, !290, null}
!4816 = !{!4817, !4818, !4819, !4820, !4821}
!4817 = !DILocalVariable(name: "stream", arg: 1, scope: !4813, file: !683, line: 227, type: !4670)
!4818 = !DILocalVariable(name: "command_name", arg: 2, scope: !4813, file: !683, line: 228, type: !290)
!4819 = !DILocalVariable(name: "package", arg: 3, scope: !4813, file: !683, line: 228, type: !290)
!4820 = !DILocalVariable(name: "version", arg: 4, scope: !4813, file: !683, line: 229, type: !290)
!4821 = !DILocalVariable(name: "authors", scope: !4813, file: !683, line: 231, type: !4822)
!4822 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1616, line: 52, baseType: !4823)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4824, line: 48, baseType: !4825)
!4824 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !680, line: 231, baseType: !4826)
!4826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4780, size: 192, elements: !220)
!4827 = !DILocation(line: 227, column: 20, scope: !4813)
!4828 = !DILocation(line: 228, column: 26, scope: !4813)
!4829 = !DILocation(line: 228, column: 52, scope: !4813)
!4830 = !DILocation(line: 229, column: 26, scope: !4813)
!4831 = !DILocation(line: 231, column: 3, scope: !4813)
!4832 = !DILocation(line: 231, column: 11, scope: !4813)
!4833 = !DILocation(line: 233, column: 3, scope: !4813)
!4834 = !DILocation(line: 234, column: 3, scope: !4813)
!4835 = !DILocation(line: 235, column: 3, scope: !4813)
!4836 = !DILocation(line: 236, column: 1, scope: !4813)
!4837 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !683, file: !683, line: 239, type: !431, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !328)
!4838 = !DILocation(line: 245, column: 3, scope: !4837)
!4839 = !DILocation(line: 251, column: 3, scope: !4837)
!4840 = !DILocation(line: 256, column: 3, scope: !4837)
!4841 = !DILocation(line: 258, column: 1, scope: !4837)
!4842 = distinct !DISubprogram(name: "xnmalloc", scope: !690, file: !690, line: 99, type: !1350, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !4843)
!4843 = !{!4844, !4845}
!4844 = !DILocalVariable(name: "n", arg: 1, scope: !4842, file: !690, line: 99, type: !55)
!4845 = !DILocalVariable(name: "s", arg: 2, scope: !4842, file: !690, line: 99, type: !55)
!4846 = !DILocation(line: 99, column: 18, scope: !4842)
!4847 = !DILocation(line: 99, column: 28, scope: !4842)
!4848 = !DILocation(line: 101, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4842, file: !690, line: 101, column: 7)
!4850 = !DILocation(line: 101, column: 7, scope: !4842)
!4851 = !DILocation(line: 102, column: 5, scope: !4849)
!4852 = !DILocation(line: 103, column: 21, scope: !4842)
!4853 = !DILocalVariable(name: "n", arg: 1, scope: !4854, file: !4855, line: 39, type: !55)
!4854 = distinct !DISubprogram(name: "xmalloc", scope: !4855, file: !4855, line: 39, type: !159, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !4856)
!4855 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4856 = !{!4853, !4857}
!4857 = !DILocalVariable(name: "p", scope: !4854, file: !4855, line: 41, type: !54)
!4858 = !DILocation(line: 39, column: 17, scope: !4854, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 103, column: 10, scope: !4842)
!4860 = !DILocation(line: 41, column: 13, scope: !4854, inlinedAt: !4859)
!4861 = !DILocation(line: 41, column: 9, scope: !4854, inlinedAt: !4859)
!4862 = !DILocation(line: 42, column: 8, scope: !4863, inlinedAt: !4859)
!4863 = distinct !DILexicalBlock(scope: !4854, file: !4855, line: 42, column: 7)
!4864 = !DILocation(line: 42, column: 15, scope: !4863, inlinedAt: !4859)
!4865 = !DILocation(line: 42, column: 10, scope: !4863, inlinedAt: !4859)
!4866 = !DILocation(line: 43, column: 5, scope: !4863, inlinedAt: !4859)
!4867 = !DILocation(line: 103, column: 3, scope: !4842)
!4868 = !DILocation(line: 39, column: 17, scope: !4854)
!4869 = !DILocation(line: 41, column: 13, scope: !4854)
!4870 = !DILocation(line: 41, column: 9, scope: !4854)
!4871 = !DILocation(line: 42, column: 8, scope: !4863)
!4872 = !DILocation(line: 42, column: 15, scope: !4863)
!4873 = !DILocation(line: 42, column: 10, scope: !4863)
!4874 = !DILocation(line: 43, column: 5, scope: !4863)
!4875 = !DILocation(line: 44, column: 3, scope: !4854)
!4876 = distinct !DISubprogram(name: "xnrealloc", scope: !690, file: !690, line: 112, type: !4877, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !4879)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!54, !54, !55, !55}
!4879 = !{!4880, !4881, !4882}
!4880 = !DILocalVariable(name: "p", arg: 1, scope: !4876, file: !690, line: 112, type: !54)
!4881 = !DILocalVariable(name: "n", arg: 2, scope: !4876, file: !690, line: 112, type: !55)
!4882 = !DILocalVariable(name: "s", arg: 3, scope: !4876, file: !690, line: 112, type: !55)
!4883 = !DILocation(line: 112, column: 18, scope: !4876)
!4884 = !DILocation(line: 112, column: 28, scope: !4876)
!4885 = !DILocation(line: 112, column: 38, scope: !4876)
!4886 = !DILocation(line: 114, column: 7, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4876, file: !690, line: 114, column: 7)
!4888 = !DILocation(line: 114, column: 7, scope: !4876)
!4889 = !DILocation(line: 115, column: 5, scope: !4887)
!4890 = !DILocation(line: 116, column: 25, scope: !4876)
!4891 = !DILocalVariable(name: "p", arg: 1, scope: !4892, file: !4855, line: 51, type: !54)
!4892 = distinct !DISubprogram(name: "xrealloc", scope: !4855, file: !4855, line: 51, type: !163, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !4893)
!4893 = !{!4891, !4894}
!4894 = !DILocalVariable(name: "n", arg: 2, scope: !4892, file: !4855, line: 51, type: !55)
!4895 = !DILocation(line: 51, column: 17, scope: !4892, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 116, column: 10, scope: !4876)
!4897 = !DILocation(line: 51, column: 27, scope: !4892, inlinedAt: !4896)
!4898 = !DILocation(line: 53, column: 8, scope: !4899, inlinedAt: !4896)
!4899 = distinct !DILexicalBlock(scope: !4892, file: !4855, line: 53, column: 7)
!4900 = !DILocation(line: 53, column: 13, scope: !4899, inlinedAt: !4896)
!4901 = !DILocation(line: 53, column: 10, scope: !4899, inlinedAt: !4896)
!4902 = !DILocation(line: 57, column: 7, scope: !4903, inlinedAt: !4896)
!4903 = distinct !DILexicalBlock(scope: !4899, file: !4855, line: 54, column: 5)
!4904 = !DILocation(line: 58, column: 7, scope: !4903, inlinedAt: !4896)
!4905 = !DILocation(line: 61, column: 7, scope: !4892, inlinedAt: !4896)
!4906 = !DILocation(line: 62, column: 8, scope: !4907, inlinedAt: !4896)
!4907 = distinct !DILexicalBlock(scope: !4892, file: !4855, line: 62, column: 7)
!4908 = !DILocation(line: 62, column: 13, scope: !4907, inlinedAt: !4896)
!4909 = !DILocation(line: 62, column: 10, scope: !4907, inlinedAt: !4896)
!4910 = !DILocation(line: 63, column: 5, scope: !4907, inlinedAt: !4896)
!4911 = !DILocation(line: 0, scope: !4892, inlinedAt: !4896)
!4912 = !DILocation(line: 116, column: 3, scope: !4876)
!4913 = !DILocation(line: 51, column: 17, scope: !4892)
!4914 = !DILocation(line: 51, column: 27, scope: !4892)
!4915 = !DILocation(line: 53, column: 8, scope: !4899)
!4916 = !DILocation(line: 53, column: 13, scope: !4899)
!4917 = !DILocation(line: 53, column: 10, scope: !4899)
!4918 = !DILocation(line: 57, column: 7, scope: !4903)
!4919 = !DILocation(line: 58, column: 7, scope: !4903)
!4920 = !DILocation(line: 61, column: 7, scope: !4892)
!4921 = !DILocation(line: 62, column: 8, scope: !4907)
!4922 = !DILocation(line: 62, column: 13, scope: !4907)
!4923 = !DILocation(line: 62, column: 10, scope: !4907)
!4924 = !DILocation(line: 63, column: 5, scope: !4907)
!4925 = !DILocation(line: 0, scope: !4892)
!4926 = !DILocation(line: 65, column: 1, scope: !4892)
!4927 = !DILocation(line: 174, column: 19, scope: !691)
!4928 = !DILocation(line: 174, column: 30, scope: !691)
!4929 = !DILocation(line: 174, column: 41, scope: !691)
!4930 = !DILocation(line: 176, column: 14, scope: !691)
!4931 = !DILocation(line: 176, column: 10, scope: !691)
!4932 = !DILocation(line: 178, column: 9, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !691, file: !690, line: 178, column: 7)
!4934 = !DILocation(line: 178, column: 7, scope: !691)
!4935 = !DILocation(line: 180, column: 13, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !690, line: 180, column: 11)
!4937 = distinct !DILexicalBlock(scope: !4933, file: !690, line: 179, column: 5)
!4938 = !DILocation(line: 180, column: 11, scope: !4937)
!4939 = !DILocation(line: 188, column: 30, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4936, file: !690, line: 181, column: 9)
!4941 = !DILocation(line: 189, column: 16, scope: !4940)
!4942 = !DILocation(line: 189, column: 13, scope: !4940)
!4943 = !DILocation(line: 190, column: 9, scope: !4940)
!4944 = !DILocation(line: 0, scope: !4940)
!4945 = !DILocation(line: 191, column: 11, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4937, file: !690, line: 191, column: 11)
!4947 = !DILocation(line: 191, column: 11, scope: !4937)
!4948 = !DILocation(line: 206, column: 7, scope: !691)
!4949 = !DILocation(line: 207, column: 25, scope: !691)
!4950 = !DILocation(line: 51, column: 17, scope: !4892, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 207, column: 10, scope: !691)
!4952 = !DILocation(line: 51, column: 27, scope: !4892, inlinedAt: !4951)
!4953 = !DILocation(line: 53, column: 10, scope: !4899, inlinedAt: !4951)
!4954 = !DILocation(line: 192, column: 9, scope: !4946)
!4955 = !DILocation(line: 200, column: 69, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4957, file: !690, line: 200, column: 11)
!4957 = distinct !DILexicalBlock(scope: !4933, file: !690, line: 195, column: 5)
!4958 = !DILocation(line: 201, column: 11, scope: !4956)
!4959 = !DILocation(line: 200, column: 11, scope: !4957)
!4960 = !DILocation(line: 202, column: 9, scope: !4956)
!4961 = !DILocation(line: 203, column: 14, scope: !4957)
!4962 = !DILocation(line: 203, column: 18, scope: !4957)
!4963 = !DILocation(line: 203, column: 9, scope: !4957)
!4964 = !DILocation(line: 53, column: 8, scope: !4899, inlinedAt: !4951)
!4965 = !DILocation(line: 57, column: 7, scope: !4903, inlinedAt: !4951)
!4966 = !DILocation(line: 58, column: 7, scope: !4903, inlinedAt: !4951)
!4967 = !DILocation(line: 61, column: 7, scope: !4892, inlinedAt: !4951)
!4968 = !DILocation(line: 62, column: 8, scope: !4907, inlinedAt: !4951)
!4969 = !DILocation(line: 62, column: 13, scope: !4907, inlinedAt: !4951)
!4970 = !DILocation(line: 62, column: 10, scope: !4907, inlinedAt: !4951)
!4971 = !DILocation(line: 63, column: 5, scope: !4907, inlinedAt: !4951)
!4972 = !DILocation(line: 0, scope: !4892, inlinedAt: !4951)
!4973 = !DILocation(line: 207, column: 3, scope: !691)
!4974 = distinct !DISubprogram(name: "xcharalloc", scope: !690, file: !690, line: 216, type: !3675, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !4975)
!4975 = !{!4976}
!4976 = !DILocalVariable(name: "n", arg: 1, scope: !4974, file: !690, line: 216, type: !55)
!4977 = !DILocation(line: 216, column: 20, scope: !4974)
!4978 = !DILocation(line: 39, column: 17, scope: !4854, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 218, column: 10, scope: !4974)
!4980 = !DILocation(line: 41, column: 13, scope: !4854, inlinedAt: !4979)
!4981 = !DILocation(line: 41, column: 9, scope: !4854, inlinedAt: !4979)
!4982 = !DILocation(line: 42, column: 8, scope: !4863, inlinedAt: !4979)
!4983 = !DILocation(line: 42, column: 15, scope: !4863, inlinedAt: !4979)
!4984 = !DILocation(line: 42, column: 10, scope: !4863, inlinedAt: !4979)
!4985 = !DILocation(line: 43, column: 5, scope: !4863, inlinedAt: !4979)
!4986 = !DILocation(line: 218, column: 3, scope: !4974)
!4987 = distinct !DISubprogram(name: "x2realloc", scope: !4855, file: !4855, line: 74, type: !4988, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!54, !54, !129}
!4990 = !{!4991, !4992}
!4991 = !DILocalVariable(name: "p", arg: 1, scope: !4987, file: !4855, line: 74, type: !54)
!4992 = !DILocalVariable(name: "pn", arg: 2, scope: !4987, file: !4855, line: 74, type: !129)
!4993 = !DILocation(line: 74, column: 18, scope: !4987)
!4994 = !DILocation(line: 74, column: 29, scope: !4987)
!4995 = !DILocation(line: 174, column: 19, scope: !691, inlinedAt: !4996)
!4996 = distinct !DILocation(line: 76, column: 10, scope: !4987)
!4997 = !DILocation(line: 174, column: 30, scope: !691, inlinedAt: !4996)
!4998 = !DILocation(line: 174, column: 41, scope: !691, inlinedAt: !4996)
!4999 = !DILocation(line: 176, column: 14, scope: !691, inlinedAt: !4996)
!5000 = !DILocation(line: 176, column: 10, scope: !691, inlinedAt: !4996)
!5001 = !DILocation(line: 178, column: 9, scope: !4933, inlinedAt: !4996)
!5002 = !DILocation(line: 178, column: 7, scope: !691, inlinedAt: !4996)
!5003 = !DILocation(line: 180, column: 13, scope: !4936, inlinedAt: !4996)
!5004 = !DILocation(line: 180, column: 11, scope: !4937, inlinedAt: !4996)
!5005 = !DILocation(line: 191, column: 11, scope: !4946, inlinedAt: !4996)
!5006 = !DILocation(line: 191, column: 11, scope: !4937, inlinedAt: !4996)
!5007 = !DILocation(line: 206, column: 7, scope: !691, inlinedAt: !4996)
!5008 = !DILocation(line: 51, column: 17, scope: !4892, inlinedAt: !5009)
!5009 = distinct !DILocation(line: 207, column: 10, scope: !691, inlinedAt: !4996)
!5010 = !DILocation(line: 51, column: 27, scope: !4892, inlinedAt: !5009)
!5011 = !DILocation(line: 53, column: 10, scope: !4899, inlinedAt: !5009)
!5012 = !DILocation(line: 192, column: 9, scope: !4946, inlinedAt: !4996)
!5013 = !DILocation(line: 201, column: 11, scope: !4956, inlinedAt: !4996)
!5014 = !DILocation(line: 200, column: 11, scope: !4957, inlinedAt: !4996)
!5015 = !DILocation(line: 202, column: 9, scope: !4956, inlinedAt: !4996)
!5016 = !DILocation(line: 203, column: 14, scope: !4957, inlinedAt: !4996)
!5017 = !DILocation(line: 203, column: 18, scope: !4957, inlinedAt: !4996)
!5018 = !DILocation(line: 203, column: 9, scope: !4957, inlinedAt: !4996)
!5019 = !DILocation(line: 53, column: 8, scope: !4899, inlinedAt: !5009)
!5020 = !DILocation(line: 57, column: 7, scope: !4903, inlinedAt: !5009)
!5021 = !DILocation(line: 58, column: 7, scope: !4903, inlinedAt: !5009)
!5022 = !DILocation(line: 61, column: 7, scope: !4892, inlinedAt: !5009)
!5023 = !DILocation(line: 62, column: 8, scope: !4907, inlinedAt: !5009)
!5024 = !DILocation(line: 62, column: 13, scope: !4907, inlinedAt: !5009)
!5025 = !DILocation(line: 62, column: 10, scope: !4907, inlinedAt: !5009)
!5026 = !DILocation(line: 63, column: 5, scope: !4907, inlinedAt: !5009)
!5027 = !DILocation(line: 0, scope: !4892, inlinedAt: !5009)
!5028 = !DILocation(line: 76, column: 3, scope: !4987)
!5029 = distinct !DISubprogram(name: "xzalloc", scope: !4855, file: !4855, line: 84, type: !159, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !5030)
!5030 = !{!5031}
!5031 = !DILocalVariable(name: "s", arg: 1, scope: !5029, file: !4855, line: 84, type: !55)
!5032 = !DILocation(line: 84, column: 17, scope: !5029)
!5033 = !DILocation(line: 39, column: 17, scope: !4854, inlinedAt: !5034)
!5034 = distinct !DILocation(line: 86, column: 18, scope: !5029)
!5035 = !DILocation(line: 41, column: 13, scope: !4854, inlinedAt: !5034)
!5036 = !DILocation(line: 41, column: 9, scope: !4854, inlinedAt: !5034)
!5037 = !DILocation(line: 42, column: 8, scope: !4863, inlinedAt: !5034)
!5038 = !DILocation(line: 42, column: 15, scope: !4863, inlinedAt: !5034)
!5039 = !DILocation(line: 42, column: 10, scope: !4863, inlinedAt: !5034)
!5040 = !DILocation(line: 43, column: 5, scope: !4863, inlinedAt: !5034)
!5041 = !DILocation(line: 86, column: 10, scope: !5029)
!5042 = !DILocation(line: 86, column: 3, scope: !5029)
!5043 = distinct !DISubprogram(name: "xcalloc", scope: !4855, file: !4855, line: 93, type: !1350, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !5044)
!5044 = !{!5045, !5046, !5047}
!5045 = !DILocalVariable(name: "n", arg: 1, scope: !5043, file: !4855, line: 93, type: !55)
!5046 = !DILocalVariable(name: "s", arg: 2, scope: !5043, file: !4855, line: 93, type: !55)
!5047 = !DILocalVariable(name: "p", scope: !5043, file: !4855, line: 95, type: !54)
!5048 = !DILocation(line: 93, column: 17, scope: !5043)
!5049 = !DILocation(line: 93, column: 27, scope: !5043)
!5050 = !DILocation(line: 100, column: 7, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5043, file: !4855, line: 100, column: 7)
!5052 = !DILocation(line: 101, column: 7, scope: !5051)
!5053 = !DILocation(line: 101, column: 18, scope: !5051)
!5054 = !DILocation(line: 95, column: 9, scope: !5043)
!5055 = !DILocation(line: 101, column: 16, scope: !5051)
!5056 = !DILocation(line: 100, column: 7, scope: !5043)
!5057 = !DILocation(line: 102, column: 5, scope: !5051)
!5058 = !DILocation(line: 103, column: 3, scope: !5043)
!5059 = distinct !DISubprogram(name: "xmemdup", scope: !4855, file: !4855, line: 111, type: !5060, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !5062)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!54, !670, !55}
!5062 = !{!5063, !5064}
!5063 = !DILocalVariable(name: "p", arg: 1, scope: !5059, file: !4855, line: 111, type: !670)
!5064 = !DILocalVariable(name: "s", arg: 2, scope: !5059, file: !4855, line: 111, type: !55)
!5065 = !DILocation(line: 111, column: 22, scope: !5059)
!5066 = !DILocation(line: 111, column: 32, scope: !5059)
!5067 = !DILocation(line: 39, column: 17, scope: !4854, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 113, column: 18, scope: !5059)
!5069 = !DILocation(line: 41, column: 13, scope: !4854, inlinedAt: !5068)
!5070 = !DILocation(line: 41, column: 9, scope: !4854, inlinedAt: !5068)
!5071 = !DILocation(line: 42, column: 8, scope: !4863, inlinedAt: !5068)
!5072 = !DILocation(line: 42, column: 15, scope: !4863, inlinedAt: !5068)
!5073 = !DILocation(line: 42, column: 10, scope: !4863, inlinedAt: !5068)
!5074 = !DILocation(line: 43, column: 5, scope: !4863, inlinedAt: !5068)
!5075 = !DILocation(line: 113, column: 10, scope: !5059)
!5076 = !DILocation(line: 113, column: 3, scope: !5059)
!5077 = distinct !DISubprogram(name: "xstrdup", scope: !4855, file: !4855, line: 119, type: !3879, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !686, retainedNodes: !5078)
!5078 = !{!5079}
!5079 = !DILocalVariable(name: "string", arg: 1, scope: !5077, file: !4855, line: 119, type: !290)
!5080 = !DILocation(line: 119, column: 22, scope: !5077)
!5081 = !DILocation(line: 121, column: 27, scope: !5077)
!5082 = !DILocation(line: 121, column: 43, scope: !5077)
!5083 = !DILocation(line: 111, column: 22, scope: !5059, inlinedAt: !5084)
!5084 = distinct !DILocation(line: 121, column: 10, scope: !5077)
!5085 = !DILocation(line: 111, column: 32, scope: !5059, inlinedAt: !5084)
!5086 = !DILocation(line: 39, column: 17, scope: !4854, inlinedAt: !5087)
!5087 = distinct !DILocation(line: 113, column: 18, scope: !5059, inlinedAt: !5084)
!5088 = !DILocation(line: 41, column: 13, scope: !4854, inlinedAt: !5087)
!5089 = !DILocation(line: 41, column: 9, scope: !4854, inlinedAt: !5087)
!5090 = !DILocation(line: 42, column: 8, scope: !4863, inlinedAt: !5087)
!5091 = !DILocation(line: 42, column: 15, scope: !4863, inlinedAt: !5087)
!5092 = !DILocation(line: 42, column: 10, scope: !4863, inlinedAt: !5087)
!5093 = !DILocation(line: 43, column: 5, scope: !4863, inlinedAt: !5087)
!5094 = !DILocation(line: 113, column: 10, scope: !5059, inlinedAt: !5084)
!5095 = !DILocation(line: 121, column: 3, scope: !5077)
!5096 = distinct !DISubprogram(name: "xalloc_die", scope: !5097, file: !5097, line: 32, type: !431, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !702, retainedNodes: !328)
!5097 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5098 = !DILocation(line: 34, column: 10, scope: !5096)
!5099 = !DILocation(line: 34, column: 33, scope: !5096)
!5100 = !DILocation(line: 34, column: 3, scope: !5096)
!5101 = !DILocation(line: 40, column: 3, scope: !5096)
!5102 = distinct !DISubprogram(name: "rpl_calloc", scope: !5103, file: !5103, line: 42, type: !1350, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !704, retainedNodes: !5104)
!5103 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5104 = !{!5105, !5106, !5107, !5108}
!5105 = !DILocalVariable(name: "n", arg: 1, scope: !5102, file: !5103, line: 42, type: !55)
!5106 = !DILocalVariable(name: "s", arg: 2, scope: !5102, file: !5103, line: 42, type: !55)
!5107 = !DILocalVariable(name: "result", scope: !5102, file: !5103, line: 44, type: !54)
!5108 = !DILocalVariable(name: "bytes", scope: !5109, file: !5103, line: 56, type: !55)
!5109 = distinct !DILexicalBlock(scope: !5110, file: !5103, line: 53, column: 5)
!5110 = distinct !DILexicalBlock(scope: !5102, file: !5103, line: 47, column: 7)
!5111 = !DILocation(line: 42, column: 20, scope: !5102)
!5112 = !DILocation(line: 42, column: 30, scope: !5102)
!5113 = !DILocation(line: 47, column: 9, scope: !5110)
!5114 = !DILocation(line: 47, column: 19, scope: !5110)
!5115 = !DILocation(line: 47, column: 14, scope: !5110)
!5116 = !DILocation(line: 56, column: 24, scope: !5109)
!5117 = !DILocation(line: 56, column: 14, scope: !5109)
!5118 = !DILocation(line: 57, column: 17, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5109, file: !5103, line: 57, column: 11)
!5120 = !DILocation(line: 57, column: 21, scope: !5119)
!5121 = !DILocation(line: 57, column: 11, scope: !5109)
!5122 = !DILocation(line: 59, column: 11, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5119, file: !5103, line: 58, column: 9)
!5124 = !DILocation(line: 59, column: 17, scope: !5123)
!5125 = !DILocation(line: 65, column: 12, scope: !5102)
!5126 = !DILocation(line: 44, column: 9, scope: !5102)
!5127 = !DILocation(line: 72, column: 3, scope: !5102)
!5128 = !DILocation(line: 0, scope: !5123)
!5129 = !DILocation(line: 73, column: 1, scope: !5102)
!5130 = distinct !DISubprogram(name: "rpl_fclose", scope: !5131, file: !5131, line: 58, type: !5132, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !706, retainedNodes: !5168)
!5131 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!58, !5134}
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5136)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !5137)
!5137 = !{!5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5136, file: !193, line: 51, baseType: !58, size: 32)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5136, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5136, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5136, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5136, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5136, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5136, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5136, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5136, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5136, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5136, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5136, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5136, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5136, file: !193, line: 70, baseType: !5152, size: 64, offset: 832)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5136, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5136, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5136, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5136, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5136, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5136, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5136, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5136, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5136, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5136, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5136, file: !193, line: 93, baseType: !5152, size: 64, offset: 1344)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5136, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5136, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5136, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5136, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!5168 = !{!5169, !5170, !5171, !5172}
!5169 = !DILocalVariable(name: "fp", arg: 1, scope: !5130, file: !5131, line: 58, type: !5134)
!5170 = !DILocalVariable(name: "saved_errno", scope: !5130, file: !5131, line: 60, type: !58)
!5171 = !DILocalVariable(name: "fd", scope: !5130, file: !5131, line: 61, type: !58)
!5172 = !DILocalVariable(name: "result", scope: !5130, file: !5131, line: 62, type: !58)
!5173 = !DILocation(line: 58, column: 19, scope: !5130)
!5174 = !DILocation(line: 60, column: 7, scope: !5130)
!5175 = !DILocation(line: 62, column: 7, scope: !5130)
!5176 = !DILocation(line: 65, column: 8, scope: !5130)
!5177 = !DILocation(line: 61, column: 7, scope: !5130)
!5178 = !DILocation(line: 66, column: 10, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5130, file: !5131, line: 66, column: 7)
!5180 = !DILocation(line: 66, column: 7, scope: !5130)
!5181 = !DILocation(line: 67, column: 12, scope: !5179)
!5182 = !DILocation(line: 67, column: 5, scope: !5179)
!5183 = !DILocation(line: 72, column: 9, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5130, file: !5131, line: 72, column: 7)
!5185 = !DILocation(line: 72, column: 23, scope: !5184)
!5186 = !DILocation(line: 72, column: 33, scope: !5184)
!5187 = !DILocation(line: 72, column: 26, scope: !5184)
!5188 = !DILocation(line: 72, column: 59, scope: !5184)
!5189 = !DILocation(line: 73, column: 7, scope: !5184)
!5190 = !DILocation(line: 73, column: 10, scope: !5184)
!5191 = !DILocation(line: 72, column: 7, scope: !5130)
!5192 = !DILocation(line: 100, column: 12, scope: !5130)
!5193 = !DILocation(line: 105, column: 7, scope: !5130)
!5194 = !DILocation(line: 74, column: 19, scope: !5184)
!5195 = !DILocation(line: 105, column: 19, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5130, file: !5131, line: 105, column: 7)
!5197 = !DILocation(line: 107, column: 13, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5196, file: !5131, line: 106, column: 5)
!5199 = !DILocation(line: 109, column: 5, scope: !5198)
!5200 = !DILocation(line: 0, scope: !5130)
!5201 = !DILocation(line: 112, column: 1, scope: !5130)
!5202 = distinct !DISubprogram(name: "rpl_fflush", scope: !5203, file: !5203, line: 129, type: !5204, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !708, retainedNodes: !5240)
!5203 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!58, !5206}
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5208)
!5208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !5209)
!5209 = !{!5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5208, file: !193, line: 51, baseType: !58, size: 32)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5208, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5208, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5208, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5208, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5208, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5208, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5208, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5208, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5208, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5208, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5208, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5208, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5208, file: !193, line: 70, baseType: !5224, size: 64, offset: 832)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5208, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5208, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5208, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5208, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5208, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5208, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5208, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5208, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5208, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5208, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5208, file: !193, line: 93, baseType: !5224, size: 64, offset: 1344)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5208, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5208, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5208, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5208, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!5240 = !{!5241}
!5241 = !DILocalVariable(name: "stream", arg: 1, scope: !5202, file: !5203, line: 129, type: !5206)
!5242 = !DILocation(line: 129, column: 19, scope: !5202)
!5243 = !DILocation(line: 150, column: 14, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5202, file: !5203, line: 150, column: 7)
!5245 = !DILocation(line: 150, column: 22, scope: !5244)
!5246 = !DILocation(line: 150, column: 27, scope: !5244)
!5247 = !DILocation(line: 150, column: 7, scope: !5202)
!5248 = !DILocation(line: 151, column: 12, scope: !5244)
!5249 = !DILocation(line: 151, column: 5, scope: !5244)
!5250 = !DILocalVariable(name: "fp", arg: 1, scope: !5251, file: !5203, line: 41, type: !5206)
!5251 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5203, file: !5203, line: 41, type: !5252, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !708, retainedNodes: !5254)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !5206}
!5254 = !{!5250}
!5255 = !DILocation(line: 41, column: 48, scope: !5251, inlinedAt: !5256)
!5256 = distinct !DILocation(line: 156, column: 3, scope: !5202)
!5257 = !DILocation(line: 43, column: 11, scope: !5258, inlinedAt: !5256)
!5258 = distinct !DILexicalBlock(scope: !5251, file: !5203, line: 43, column: 7)
!5259 = !{!2106, !1244, i64 0}
!5260 = !DILocation(line: 43, column: 18, scope: !5258, inlinedAt: !5256)
!5261 = !DILocation(line: 43, column: 7, scope: !5251, inlinedAt: !5256)
!5262 = !DILocation(line: 45, column: 5, scope: !5258, inlinedAt: !5256)
!5263 = !DILocation(line: 158, column: 10, scope: !5202)
!5264 = !DILocation(line: 158, column: 3, scope: !5202)
!5265 = !DILocation(line: 0, scope: !5202)
!5266 = !DILocation(line: 232, column: 1, scope: !5202)
!5267 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5268, file: !5268, line: 28, type: !5269, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !710, retainedNodes: !5305)
!5268 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!58, !5271, !1615, !58}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5273)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !5274)
!5274 = !{!5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5273, file: !193, line: 51, baseType: !58, size: 32)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5273, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5273, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5273, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5273, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5273, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5273, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5273, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5273, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5273, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5273, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5273, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5273, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5273, file: !193, line: 70, baseType: !5289, size: 64, offset: 832)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5273, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5273, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5273, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5273, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5273, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5273, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5273, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5273, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5273, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5273, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5273, file: !193, line: 93, baseType: !5289, size: 64, offset: 1344)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5273, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5273, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5273, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5273, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!5305 = !{!5306, !5307, !5308, !5309}
!5306 = !DILocalVariable(name: "fp", arg: 1, scope: !5267, file: !5268, line: 28, type: !5271)
!5307 = !DILocalVariable(name: "offset", arg: 2, scope: !5267, file: !5268, line: 28, type: !1615)
!5308 = !DILocalVariable(name: "whence", arg: 3, scope: !5267, file: !5268, line: 28, type: !58)
!5309 = !DILocalVariable(name: "pos", scope: !5310, file: !5268, line: 117, type: !1615)
!5310 = distinct !DILexicalBlock(scope: !5311, file: !5268, line: 113, column: 5)
!5311 = distinct !DILexicalBlock(scope: !5267, file: !5268, line: 52, column: 7)
!5312 = !DILocation(line: 28, column: 15, scope: !5267)
!5313 = !DILocation(line: 28, column: 25, scope: !5267)
!5314 = !DILocation(line: 28, column: 37, scope: !5267)
!5315 = !DILocation(line: 52, column: 11, scope: !5311)
!5316 = !{!2106, !1148, i64 16}
!5317 = !DILocation(line: 52, column: 31, scope: !5311)
!5318 = !{!2106, !1148, i64 8}
!5319 = !DILocation(line: 52, column: 24, scope: !5311)
!5320 = !DILocation(line: 53, column: 7, scope: !5311)
!5321 = !DILocation(line: 53, column: 14, scope: !5311)
!5322 = !DILocation(line: 53, column: 35, scope: !5311)
!5323 = !{!2106, !1148, i64 32}
!5324 = !DILocation(line: 53, column: 28, scope: !5311)
!5325 = !DILocation(line: 54, column: 7, scope: !5311)
!5326 = !DILocation(line: 54, column: 14, scope: !5311)
!5327 = !{!2106, !1148, i64 72}
!5328 = !DILocation(line: 54, column: 28, scope: !5311)
!5329 = !DILocation(line: 52, column: 7, scope: !5267)
!5330 = !DILocation(line: 117, column: 26, scope: !5310)
!5331 = !DILocation(line: 117, column: 19, scope: !5310)
!5332 = !DILocation(line: 117, column: 13, scope: !5310)
!5333 = !DILocation(line: 118, column: 15, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5310, file: !5268, line: 118, column: 11)
!5335 = !DILocation(line: 118, column: 11, scope: !5310)
!5336 = !DILocation(line: 129, column: 11, scope: !5310)
!5337 = !DILocation(line: 129, column: 18, scope: !5310)
!5338 = !DILocation(line: 130, column: 11, scope: !5310)
!5339 = !DILocation(line: 130, column: 19, scope: !5310)
!5340 = !{!2106, !1208, i64 144}
!5341 = !DILocation(line: 161, column: 7, scope: !5310)
!5342 = !DILocation(line: 163, column: 10, scope: !5267)
!5343 = !DILocation(line: 163, column: 3, scope: !5267)
!5344 = !DILocation(line: 0, scope: !5267)
!5345 = !DILocation(line: 164, column: 1, scope: !5267)
!5346 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5347, file: !5347, line: 385, type: !5348, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !712, retainedNodes: !5362)
!5347 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!55, !5350, !290, !55, !5351}
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1659, line: 6, baseType: !5353)
!5353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1661, line: 21, baseType: !5354)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1661, line: 13, size: 64, elements: !5355)
!5355 = !{!5356, !5357}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5354, file: !1661, line: 15, baseType: !58, size: 32)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5354, file: !1661, line: 20, baseType: !5358, size: 32, offset: 32)
!5358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5354, file: !1661, line: 16, size: 32, elements: !5359)
!5359 = !{!5360, !5361}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5358, file: !1661, line: 18, baseType: !7, size: 32)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5358, file: !1661, line: 19, baseType: !1670, size: 32)
!5362 = !{!5363, !5364, !5365, !5366, !5367, !5368, !5369}
!5363 = !DILocalVariable(name: "pwc", arg: 1, scope: !5346, file: !5347, line: 385, type: !5350)
!5364 = !DILocalVariable(name: "s", arg: 2, scope: !5346, file: !5347, line: 385, type: !290)
!5365 = !DILocalVariable(name: "n", arg: 3, scope: !5346, file: !5347, line: 385, type: !55)
!5366 = !DILocalVariable(name: "ps", arg: 4, scope: !5346, file: !5347, line: 385, type: !5351)
!5367 = !DILocalVariable(name: "ret", scope: !5346, file: !5347, line: 387, type: !55)
!5368 = !DILocalVariable(name: "wc", scope: !5346, file: !5347, line: 388, type: !1680)
!5369 = !DILocalVariable(name: "uc", scope: !5370, file: !5347, line: 449, type: !60)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !5347, line: 448, column: 5)
!5371 = distinct !DILexicalBlock(scope: !5346, file: !5347, line: 447, column: 7)
!5372 = !DILocation(line: 385, column: 23, scope: !5346)
!5373 = !DILocation(line: 385, column: 40, scope: !5346)
!5374 = !DILocation(line: 385, column: 50, scope: !5346)
!5375 = !DILocation(line: 385, column: 64, scope: !5346)
!5376 = !DILocation(line: 388, column: 3, scope: !5346)
!5377 = !DILocation(line: 404, column: 9, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5346, file: !5347, line: 404, column: 7)
!5379 = !DILocation(line: 404, column: 7, scope: !5346)
!5380 = !DILocation(line: 439, column: 9, scope: !5346)
!5381 = !DILocation(line: 387, column: 10, scope: !5346)
!5382 = !DILocation(line: 447, column: 19, scope: !5371)
!5383 = !DILocation(line: 447, column: 31, scope: !5371)
!5384 = !DILocation(line: 447, column: 26, scope: !5371)
!5385 = !DILocation(line: 447, column: 41, scope: !5371)
!5386 = !DILocation(line: 447, column: 7, scope: !5346)
!5387 = !DILocation(line: 449, column: 26, scope: !5370)
!5388 = !DILocation(line: 449, column: 21, scope: !5370)
!5389 = !DILocation(line: 450, column: 14, scope: !5370)
!5390 = !DILocation(line: 450, column: 12, scope: !5370)
!5391 = !DILocation(line: 0, scope: !5370)
!5392 = !DILocation(line: 456, column: 1, scope: !5346)
!5393 = distinct !DISubprogram(name: "print_and_abort", scope: !429, file: !429, line: 330, type: !431, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !425, retainedNodes: !328)
!5394 = !DILocation(line: 340, column: 3, scope: !5393)
!5395 = !DILocation(line: 342, column: 9, scope: !5393)
!5396 = !DILocation(line: 342, column: 3, scope: !5393)
!5397 = distinct !DISubprogram(name: "_obstack_begin", scope: !429, file: !429, line: 150, type: !5398, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5434)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!58, !5400, !55, !55, !158, !169}
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !5402)
!5402 = !{!5403, !5404, !5411, !5412, !5413, !5414, !5419, !5420, !5425, !5430, !5431, !5432, !5433}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !5401, file: !132, line: 176, baseType: !55, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !5401, file: !132, line: 177, baseType: !5405, size: 64, offset: 64)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !5407)
!5407 = !{!5408, !5409, !5410}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5406, file: !132, line: 169, baseType: !52, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5406, file: !132, line: 170, baseType: !5405, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !5406, file: !132, line: 171, baseType: !142, offset: 128)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !5401, file: !132, line: 178, baseType: !52, size: 64, offset: 128)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !5401, file: !132, line: 179, baseType: !52, size: 64, offset: 192)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !5401, file: !132, line: 180, baseType: !52, size: 64, offset: 256)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !5401, file: !132, line: 185, baseType: !5415, size: 64, offset: 320)
!5415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5401, file: !132, line: 181, size: 64, elements: !5416)
!5416 = !{!5417, !5418}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5415, file: !132, line: 183, baseType: !55, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5415, file: !132, line: 184, baseType: !54, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !5401, file: !132, line: 186, baseType: !55, size: 64, offset: 384)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !5401, file: !132, line: 193, baseType: !5421, size: 64, offset: 448)
!5421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5401, file: !132, line: 189, size: 64, elements: !5422)
!5422 = !{!5423, !5424}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5421, file: !132, line: 191, baseType: !158, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5421, file: !132, line: 192, baseType: !162, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !5401, file: !132, line: 198, baseType: !5426, size: 64, offset: 512)
!5426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5401, file: !132, line: 194, size: 64, elements: !5427)
!5427 = !{!5428, !5429}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5426, file: !132, line: 196, baseType: !169, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5426, file: !132, line: 197, baseType: !173, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !5401, file: !132, line: 200, baseType: !54, size: 64, offset: 576)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !5401, file: !132, line: 201, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !5401, file: !132, line: 202, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !5401, file: !132, line: 206, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!5434 = !{!5435, !5436, !5437, !5438, !5439}
!5435 = !DILocalVariable(name: "h", arg: 1, scope: !5397, file: !429, line: 150, type: !5400)
!5436 = !DILocalVariable(name: "size", arg: 2, scope: !5397, file: !429, line: 151, type: !55)
!5437 = !DILocalVariable(name: "alignment", arg: 3, scope: !5397, file: !429, line: 151, type: !55)
!5438 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !5397, file: !429, line: 152, type: !158)
!5439 = !DILocalVariable(name: "freefun", arg: 5, scope: !5397, file: !429, line: 153, type: !169)
!5440 = !DILocation(line: 150, column: 33, scope: !5397)
!5441 = !DILocation(line: 151, column: 33, scope: !5397)
!5442 = !DILocation(line: 151, column: 55, scope: !5397)
!5443 = !DILocation(line: 152, column: 25, scope: !5397)
!5444 = !DILocation(line: 153, column: 24, scope: !5397)
!5445 = !DILocation(line: 155, column: 15, scope: !5397)
!5446 = !DILocation(line: 155, column: 21, scope: !5397)
!5447 = !DILocation(line: 156, column: 14, scope: !5397)
!5448 = !DILocation(line: 156, column: 20, scope: !5397)
!5449 = !DILocation(line: 157, column: 6, scope: !5397)
!5450 = !DILocation(line: 157, column: 20, scope: !5397)
!5451 = !DILocalVariable(name: "h", arg: 1, scope: !5452, file: !429, line: 109, type: !5400)
!5452 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !429, file: !429, line: 109, type: !5453, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5455)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!58, !5400, !55, !55}
!5455 = !{!5451, !5456, !5457, !5458, !5459}
!5456 = !DILocalVariable(name: "size", arg: 2, scope: !5452, file: !429, line: 110, type: !55)
!5457 = !DILocalVariable(name: "alignment", arg: 3, scope: !5452, file: !429, line: 110, type: !55)
!5458 = !DILocalVariable(name: "chunk", scope: !5452, file: !429, line: 112, type: !5405)
!5459 = !DILocalVariable(name: "extra", scope: !5460, file: !429, line: 127, type: !58)
!5460 = distinct !DILexicalBlock(scope: !5461, file: !429, line: 118, column: 5)
!5461 = distinct !DILexicalBlock(scope: !5452, file: !429, line: 116, column: 7)
!5462 = !DILocation(line: 109, column: 40, scope: !5452, inlinedAt: !5463)
!5463 = distinct !DILocation(line: 158, column: 10, scope: !5397)
!5464 = !DILocation(line: 110, column: 40, scope: !5452, inlinedAt: !5463)
!5465 = !DILocation(line: 110, column: 62, scope: !5452, inlinedAt: !5463)
!5466 = !DILocation(line: 114, column: 17, scope: !5467, inlinedAt: !5463)
!5467 = distinct !DILexicalBlock(scope: !5452, file: !429, line: 114, column: 7)
!5468 = !DILocation(line: 114, column: 7, scope: !5452, inlinedAt: !5463)
!5469 = !DILocation(line: 116, column: 12, scope: !5461, inlinedAt: !5463)
!5470 = !DILocation(line: 116, column: 7, scope: !5452, inlinedAt: !5463)
!5471 = !DILocation(line: 133, column: 6, scope: !5452, inlinedAt: !5463)
!5472 = !DILocation(line: 133, column: 17, scope: !5452, inlinedAt: !5463)
!5473 = !{!1308, !1208, i64 0}
!5474 = !DILocation(line: 134, column: 33, scope: !5452, inlinedAt: !5463)
!5475 = !DILocation(line: 134, column: 6, scope: !5452, inlinedAt: !5463)
!5476 = !DILocation(line: 134, column: 21, scope: !5452, inlinedAt: !5463)
!5477 = !DILocalVariable(name: "h", arg: 1, scope: !5478, file: !429, line: 84, type: !5400)
!5478 = distinct !DISubprogram(name: "call_chunkfun", scope: !429, file: !429, line: 84, type: !5479, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5481)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!54, !5400, !55}
!5481 = !{!5477, !5482}
!5482 = !DILocalVariable(name: "size", arg: 2, scope: !5478, file: !429, line: 84, type: !55)
!5483 = !DILocation(line: 84, column: 32, scope: !5478, inlinedAt: !5484)
!5484 = distinct !DILocation(line: 136, column: 22, scope: !5452, inlinedAt: !5463)
!5485 = !DILocation(line: 84, column: 42, scope: !5478, inlinedAt: !5484)
!5486 = !DILocation(line: 89, column: 12, scope: !5487, inlinedAt: !5484)
!5487 = distinct !DILexicalBlock(scope: !5478, file: !429, line: 86, column: 7)
!5488 = !DILocation(line: 136, column: 14, scope: !5452, inlinedAt: !5463)
!5489 = !DILocation(line: 136, column: 20, scope: !5452, inlinedAt: !5463)
!5490 = !DILocation(line: 137, column: 8, scope: !5491, inlinedAt: !5463)
!5491 = distinct !DILexicalBlock(scope: !5452, file: !429, line: 137, column: 7)
!5492 = !DILocation(line: 137, column: 7, scope: !5452, inlinedAt: !5463)
!5493 = !DILocation(line: 138, column: 7, scope: !5491, inlinedAt: !5463)
!5494 = !DILocation(line: 138, column: 5, scope: !5491, inlinedAt: !5463)
!5495 = !DILocation(line: 112, column: 26, scope: !5452, inlinedAt: !5463)
!5496 = !DILocation(line: 139, column: 35, scope: !5452, inlinedAt: !5463)
!5497 = !DILocation(line: 139, column: 21, scope: !5452, inlinedAt: !5463)
!5498 = !DILocation(line: 139, column: 33, scope: !5452, inlinedAt: !5463)
!5499 = !DILocation(line: 139, column: 6, scope: !5452, inlinedAt: !5463)
!5500 = !DILocation(line: 139, column: 16, scope: !5452, inlinedAt: !5463)
!5501 = !DILocation(line: 141, column: 55, scope: !5452, inlinedAt: !5463)
!5502 = !DILocation(line: 141, column: 50, scope: !5452, inlinedAt: !5463)
!5503 = !DILocation(line: 141, column: 27, scope: !5452, inlinedAt: !5463)
!5504 = !DILocation(line: 141, column: 33, scope: !5452, inlinedAt: !5463)
!5505 = !DILocation(line: 141, column: 6, scope: !5452, inlinedAt: !5463)
!5506 = !DILocation(line: 141, column: 18, scope: !5452, inlinedAt: !5463)
!5507 = !DILocation(line: 142, column: 10, scope: !5452, inlinedAt: !5463)
!5508 = !DILocation(line: 142, column: 15, scope: !5452, inlinedAt: !5463)
!5509 = !DILocation(line: 144, column: 25, scope: !5452, inlinedAt: !5463)
!5510 = !DILocation(line: 145, column: 19, scope: !5452, inlinedAt: !5463)
!5511 = !DILocation(line: 158, column: 3, scope: !5397)
!5512 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !429, file: !429, line: 162, type: !5513, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5515)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!58, !5400, !55, !55, !162, !173, !54}
!5515 = !{!5516, !5517, !5518, !5519, !5520, !5521}
!5516 = !DILocalVariable(name: "h", arg: 1, scope: !5512, file: !429, line: 162, type: !5400)
!5517 = !DILocalVariable(name: "size", arg: 2, scope: !5512, file: !429, line: 163, type: !55)
!5518 = !DILocalVariable(name: "alignment", arg: 3, scope: !5512, file: !429, line: 163, type: !55)
!5519 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !5512, file: !429, line: 164, type: !162)
!5520 = !DILocalVariable(name: "freefun", arg: 5, scope: !5512, file: !429, line: 165, type: !173)
!5521 = !DILocalVariable(name: "arg", arg: 6, scope: !5512, file: !429, line: 166, type: !54)
!5522 = !DILocation(line: 162, column: 35, scope: !5512)
!5523 = !DILocation(line: 163, column: 35, scope: !5512)
!5524 = !DILocation(line: 163, column: 57, scope: !5512)
!5525 = !DILocation(line: 164, column: 27, scope: !5512)
!5526 = !DILocation(line: 165, column: 26, scope: !5512)
!5527 = !DILocation(line: 166, column: 25, scope: !5512)
!5528 = !DILocation(line: 168, column: 6, scope: !5512)
!5529 = !DILocation(line: 168, column: 15, scope: !5512)
!5530 = !DILocation(line: 168, column: 21, scope: !5512)
!5531 = !DILocation(line: 169, column: 6, scope: !5512)
!5532 = !DILocation(line: 169, column: 14, scope: !5512)
!5533 = !DILocation(line: 169, column: 20, scope: !5512)
!5534 = !DILocation(line: 170, column: 6, scope: !5512)
!5535 = !DILocation(line: 170, column: 16, scope: !5512)
!5536 = !{!1308, !1148, i64 72}
!5537 = !DILocation(line: 171, column: 6, scope: !5512)
!5538 = !DILocation(line: 171, column: 20, scope: !5512)
!5539 = !DILocation(line: 109, column: 40, scope: !5452, inlinedAt: !5540)
!5540 = distinct !DILocation(line: 172, column: 10, scope: !5512)
!5541 = !DILocation(line: 110, column: 40, scope: !5452, inlinedAt: !5540)
!5542 = !DILocation(line: 110, column: 62, scope: !5452, inlinedAt: !5540)
!5543 = !DILocation(line: 114, column: 17, scope: !5467, inlinedAt: !5540)
!5544 = !DILocation(line: 114, column: 7, scope: !5452, inlinedAt: !5540)
!5545 = !DILocation(line: 116, column: 12, scope: !5461, inlinedAt: !5540)
!5546 = !DILocation(line: 116, column: 7, scope: !5452, inlinedAt: !5540)
!5547 = !DILocation(line: 133, column: 6, scope: !5452, inlinedAt: !5540)
!5548 = !DILocation(line: 133, column: 17, scope: !5452, inlinedAt: !5540)
!5549 = !DILocation(line: 134, column: 33, scope: !5452, inlinedAt: !5540)
!5550 = !DILocation(line: 134, column: 6, scope: !5452, inlinedAt: !5540)
!5551 = !DILocation(line: 134, column: 21, scope: !5452, inlinedAt: !5540)
!5552 = !DILocation(line: 84, column: 32, scope: !5478, inlinedAt: !5553)
!5553 = distinct !DILocation(line: 136, column: 22, scope: !5452, inlinedAt: !5540)
!5554 = !DILocation(line: 84, column: 42, scope: !5478, inlinedAt: !5553)
!5555 = !DILocation(line: 87, column: 12, scope: !5487, inlinedAt: !5553)
!5556 = !DILocation(line: 136, column: 14, scope: !5452, inlinedAt: !5540)
!5557 = !DILocation(line: 136, column: 20, scope: !5452, inlinedAt: !5540)
!5558 = !DILocation(line: 137, column: 8, scope: !5491, inlinedAt: !5540)
!5559 = !DILocation(line: 137, column: 7, scope: !5452, inlinedAt: !5540)
!5560 = !DILocation(line: 138, column: 7, scope: !5491, inlinedAt: !5540)
!5561 = !DILocation(line: 138, column: 5, scope: !5491, inlinedAt: !5540)
!5562 = !DILocation(line: 112, column: 26, scope: !5452, inlinedAt: !5540)
!5563 = !DILocation(line: 139, column: 35, scope: !5452, inlinedAt: !5540)
!5564 = !DILocation(line: 139, column: 21, scope: !5452, inlinedAt: !5540)
!5565 = !DILocation(line: 139, column: 33, scope: !5452, inlinedAt: !5540)
!5566 = !DILocation(line: 139, column: 6, scope: !5452, inlinedAt: !5540)
!5567 = !DILocation(line: 139, column: 16, scope: !5452, inlinedAt: !5540)
!5568 = !DILocation(line: 141, column: 55, scope: !5452, inlinedAt: !5540)
!5569 = !DILocation(line: 141, column: 50, scope: !5452, inlinedAt: !5540)
!5570 = !DILocation(line: 141, column: 27, scope: !5452, inlinedAt: !5540)
!5571 = !DILocation(line: 141, column: 33, scope: !5452, inlinedAt: !5540)
!5572 = !DILocation(line: 141, column: 6, scope: !5452, inlinedAt: !5540)
!5573 = !DILocation(line: 141, column: 18, scope: !5452, inlinedAt: !5540)
!5574 = !DILocation(line: 142, column: 10, scope: !5452, inlinedAt: !5540)
!5575 = !DILocation(line: 142, column: 15, scope: !5452, inlinedAt: !5540)
!5576 = !DILocation(line: 144, column: 25, scope: !5452, inlinedAt: !5540)
!5577 = !DILocation(line: 145, column: 19, scope: !5452, inlinedAt: !5540)
!5578 = !DILocation(line: 172, column: 3, scope: !5512)
!5579 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !429, file: !429, line: 182, type: !5580, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5582)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{null, !5400, !55}
!5582 = !{!5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591}
!5583 = !DILocalVariable(name: "h", arg: 1, scope: !5579, file: !429, line: 182, type: !5400)
!5584 = !DILocalVariable(name: "length", arg: 2, scope: !5579, file: !429, line: 182, type: !55)
!5585 = !DILocalVariable(name: "old_chunk", scope: !5579, file: !429, line: 184, type: !5405)
!5586 = !DILocalVariable(name: "new_chunk", scope: !5579, file: !429, line: 185, type: !5405)
!5587 = !DILocalVariable(name: "obj_size", scope: !5579, file: !429, line: 186, type: !55)
!5588 = !DILocalVariable(name: "object_base", scope: !5579, file: !429, line: 187, type: !52)
!5589 = !DILocalVariable(name: "sum1", scope: !5579, file: !429, line: 190, type: !55)
!5590 = !DILocalVariable(name: "sum2", scope: !5579, file: !429, line: 191, type: !55)
!5591 = !DILocalVariable(name: "new_size", scope: !5579, file: !429, line: 192, type: !55)
!5592 = !DILocation(line: 182, column: 36, scope: !5579)
!5593 = !DILocation(line: 182, column: 55, scope: !5579)
!5594 = !DILocation(line: 184, column: 41, scope: !5579)
!5595 = !DILocation(line: 184, column: 26, scope: !5579)
!5596 = !DILocation(line: 185, column: 26, scope: !5579)
!5597 = !DILocation(line: 186, column: 24, scope: !5579)
!5598 = !DILocation(line: 186, column: 39, scope: !5579)
!5599 = !DILocation(line: 186, column: 34, scope: !5579)
!5600 = !DILocation(line: 186, column: 10, scope: !5579)
!5601 = !DILocation(line: 190, column: 26, scope: !5579)
!5602 = !DILocation(line: 190, column: 10, scope: !5579)
!5603 = !DILocation(line: 191, column: 27, scope: !5579)
!5604 = !DILocation(line: 191, column: 22, scope: !5579)
!5605 = !DILocation(line: 191, column: 10, scope: !5579)
!5606 = !DILocation(line: 192, column: 38, scope: !5579)
!5607 = !DILocation(line: 192, column: 26, scope: !5579)
!5608 = !DILocation(line: 192, column: 44, scope: !5579)
!5609 = !DILocation(line: 192, column: 10, scope: !5579)
!5610 = !DILocation(line: 193, column: 16, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5579, file: !429, line: 193, column: 7)
!5612 = !DILocation(line: 193, column: 7, scope: !5579)
!5613 = !DILocation(line: 195, column: 21, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5579, file: !429, line: 195, column: 7)
!5615 = !DILocation(line: 195, column: 16, scope: !5614)
!5616 = !DILocation(line: 195, column: 7, scope: !5579)
!5617 = !DILocation(line: 199, column: 16, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5579, file: !429, line: 199, column: 7)
!5619 = !DILocation(line: 199, column: 32, scope: !5618)
!5620 = !DILocation(line: 199, column: 24, scope: !5618)
!5621 = !DILocation(line: 84, column: 32, scope: !5478, inlinedAt: !5622)
!5622 = distinct !DILocation(line: 200, column: 17, scope: !5618)
!5623 = !DILocation(line: 84, column: 42, scope: !5478, inlinedAt: !5622)
!5624 = !DILocation(line: 86, column: 10, scope: !5487, inlinedAt: !5622)
!5625 = !DILocation(line: 86, column: 7, scope: !5487, inlinedAt: !5622)
!5626 = !DILocation(line: 0, scope: !5487, inlinedAt: !5622)
!5627 = !DILocation(line: 86, column: 7, scope: !5478, inlinedAt: !5622)
!5628 = !DILocation(line: 87, column: 24, scope: !5487, inlinedAt: !5622)
!5629 = !DILocation(line: 87, column: 34, scope: !5487, inlinedAt: !5622)
!5630 = !DILocation(line: 87, column: 12, scope: !5487, inlinedAt: !5622)
!5631 = !DILocation(line: 87, column: 5, scope: !5487, inlinedAt: !5622)
!5632 = !DILocation(line: 89, column: 24, scope: !5487, inlinedAt: !5622)
!5633 = !DILocation(line: 89, column: 12, scope: !5487, inlinedAt: !5622)
!5634 = !DILocation(line: 89, column: 5, scope: !5487, inlinedAt: !5622)
!5635 = !DILocation(line: 201, column: 8, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5579, file: !429, line: 201, column: 7)
!5637 = !DILocation(line: 201, column: 7, scope: !5579)
!5638 = !DILocation(line: 202, column: 7, scope: !5636)
!5639 = !DILocation(line: 202, column: 5, scope: !5636)
!5640 = !DILocation(line: 203, column: 12, scope: !5579)
!5641 = !DILocation(line: 204, column: 14, scope: !5579)
!5642 = !DILocation(line: 204, column: 19, scope: !5579)
!5643 = !DILocation(line: 205, column: 58, scope: !5579)
!5644 = !DILocation(line: 205, column: 25, scope: !5579)
!5645 = !DILocation(line: 205, column: 37, scope: !5579)
!5646 = !DILocation(line: 205, column: 14, scope: !5579)
!5647 = !DILocation(line: 205, column: 20, scope: !5579)
!5648 = !DILocation(line: 209, column: 5, scope: !5579)
!5649 = !DILocation(line: 187, column: 9, scope: !5579)
!5650 = !DILocation(line: 212, column: 27, scope: !5579)
!5651 = !DILocation(line: 212, column: 3, scope: !5579)
!5652 = !DILocation(line: 217, column: 11, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5579, file: !429, line: 217, column: 7)
!5654 = !DILocation(line: 217, column: 8, scope: !5653)
!5655 = !DILocation(line: 218, column: 7, scope: !5653)
!5656 = !DILocation(line: 219, column: 14, scope: !5653)
!5657 = !DILocation(line: 219, column: 11, scope: !5653)
!5658 = !DILocation(line: 217, column: 7, scope: !5579)
!5659 = !DILocation(line: 222, column: 36, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5653, file: !429, line: 221, column: 5)
!5661 = !DILocation(line: 222, column: 23, scope: !5660)
!5662 = !DILocation(line: 223, column: 24, scope: !5660)
!5663 = !DILocalVariable(name: "h", arg: 1, scope: !5664, file: !429, line: 93, type: !5400)
!5664 = distinct !DISubprogram(name: "call_freefun", scope: !429, file: !429, line: 93, type: !5665, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5667)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{null, !5400, !54}
!5667 = !{!5663, !5668}
!5668 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !5664, file: !429, line: 93, type: !54)
!5669 = !DILocation(line: 93, column: 31, scope: !5664, inlinedAt: !5670)
!5670 = distinct !DILocation(line: 223, column: 7, scope: !5660)
!5671 = !DILocation(line: 93, column: 40, scope: !5664, inlinedAt: !5670)
!5672 = !DILocation(line: 95, column: 10, scope: !5673, inlinedAt: !5670)
!5673 = distinct !DILexicalBlock(scope: !5664, file: !429, line: 95, column: 7)
!5674 = !DILocation(line: 95, column: 7, scope: !5673, inlinedAt: !5670)
!5675 = !DILocation(line: 0, scope: !5673, inlinedAt: !5670)
!5676 = !DILocation(line: 95, column: 7, scope: !5664, inlinedAt: !5670)
!5677 = !DILocation(line: 96, column: 16, scope: !5673, inlinedAt: !5670)
!5678 = !DILocation(line: 96, column: 26, scope: !5673, inlinedAt: !5670)
!5679 = !DILocation(line: 96, column: 5, scope: !5673, inlinedAt: !5670)
!5680 = !DILocation(line: 98, column: 16, scope: !5673, inlinedAt: !5670)
!5681 = !DILocation(line: 98, column: 5, scope: !5673, inlinedAt: !5670)
!5682 = !DILocation(line: 226, column: 18, scope: !5579)
!5683 = !DILocation(line: 227, column: 33, scope: !5579)
!5684 = !DILocation(line: 227, column: 16, scope: !5579)
!5685 = !DILocation(line: 229, column: 25, scope: !5579)
!5686 = !DILocation(line: 230, column: 1, scope: !5579)
!5687 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !429, file: !429, line: 241, type: !5688, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5690)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!58, !5400, !54}
!5690 = !{!5691, !5692, !5693, !5694}
!5691 = !DILocalVariable(name: "h", arg: 1, scope: !5687, file: !429, line: 241, type: !5400)
!5692 = !DILocalVariable(name: "obj", arg: 2, scope: !5687, file: !429, line: 241, type: !54)
!5693 = !DILocalVariable(name: "lp", scope: !5687, file: !429, line: 243, type: !5405)
!5694 = !DILocalVariable(name: "plp", scope: !5687, file: !429, line: 244, type: !5405)
!5695 = !DILocation(line: 241, column: 39, scope: !5687)
!5696 = !DILocation(line: 241, column: 48, scope: !5687)
!5697 = !DILocation(line: 246, column: 13, scope: !5687)
!5698 = !DILocation(line: 243, column: 26, scope: !5687)
!5699 = !DILocation(line: 0, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5687, file: !429, line: 251, column: 5)
!5701 = !DILocation(line: 250, column: 13, scope: !5687)
!5702 = !DILocation(line: 250, column: 18, scope: !5687)
!5703 = !DILocation(line: 250, column: 22, scope: !5687)
!5704 = !DILocation(line: 250, column: 34, scope: !5687)
!5705 = !DILocation(line: 250, column: 41, scope: !5687)
!5706 = !DILocation(line: 250, column: 59, scope: !5687)
!5707 = !DILocation(line: 250, column: 65, scope: !5687)
!5708 = !DILocation(line: 250, column: 3, scope: !5687)
!5709 = !DILocation(line: 252, column: 17, scope: !5700)
!5710 = !DILocation(line: 244, column: 26, scope: !5687)
!5711 = distinct !{!5711, !5708, !5712}
!5712 = !DILocation(line: 254, column: 5, scope: !5687)
!5713 = !DILocation(line: 255, column: 3, scope: !5687)
!5714 = distinct !DISubprogram(name: "_obstack_free", scope: !429, file: !429, line: 262, type: !5665, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5715)
!5715 = !{!5716, !5717, !5718, !5719}
!5716 = !DILocalVariable(name: "h", arg: 1, scope: !5714, file: !429, line: 262, type: !5400)
!5717 = !DILocalVariable(name: "obj", arg: 2, scope: !5714, file: !429, line: 262, type: !54)
!5718 = !DILocalVariable(name: "lp", scope: !5714, file: !429, line: 264, type: !5405)
!5719 = !DILocalVariable(name: "plp", scope: !5714, file: !429, line: 265, type: !5405)
!5720 = !DILocation(line: 262, column: 32, scope: !5714)
!5721 = !DILocation(line: 262, column: 41, scope: !5714)
!5722 = !DILocation(line: 267, column: 11, scope: !5714)
!5723 = !DILocation(line: 264, column: 26, scope: !5714)
!5724 = !DILocation(line: 271, column: 13, scope: !5714)
!5725 = !DILocation(line: 271, column: 18, scope: !5714)
!5726 = !DILocation(line: 271, column: 22, scope: !5714)
!5727 = !DILocation(line: 271, column: 34, scope: !5714)
!5728 = !DILocation(line: 271, column: 41, scope: !5714)
!5729 = !DILocation(line: 271, column: 59, scope: !5714)
!5730 = !DILocation(line: 271, column: 65, scope: !5714)
!5731 = !DILocation(line: 271, column: 3, scope: !5714)
!5732 = !DILocation(line: 273, column: 17, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5714, file: !429, line: 272, column: 5)
!5734 = !DILocation(line: 265, column: 26, scope: !5714)
!5735 = !DILocation(line: 93, column: 31, scope: !5664, inlinedAt: !5736)
!5736 = distinct !DILocation(line: 274, column: 7, scope: !5733)
!5737 = !DILocation(line: 93, column: 40, scope: !5664, inlinedAt: !5736)
!5738 = !DILocation(line: 95, column: 10, scope: !5673, inlinedAt: !5736)
!5739 = !DILocation(line: 95, column: 7, scope: !5673, inlinedAt: !5736)
!5740 = !DILocation(line: 95, column: 7, scope: !5664, inlinedAt: !5736)
!5741 = !DILocation(line: 96, column: 16, scope: !5673, inlinedAt: !5736)
!5742 = !DILocation(line: 96, column: 26, scope: !5673, inlinedAt: !5736)
!5743 = !DILocation(line: 96, column: 5, scope: !5673, inlinedAt: !5736)
!5744 = !DILocation(line: 98, column: 16, scope: !5673, inlinedAt: !5736)
!5745 = !DILocation(line: 98, column: 5, scope: !5673, inlinedAt: !5736)
!5746 = !DILocation(line: 278, column: 29, scope: !5733)
!5747 = distinct !{!5747, !5731, !5748}
!5748 = !DILocation(line: 279, column: 5, scope: !5714)
!5749 = !DILocation(line: 0, scope: !5714)
!5750 = !DILocation(line: 282, column: 27, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !429, line: 281, column: 5)
!5752 = distinct !DILexicalBlock(scope: !5714, file: !429, line: 280, column: 7)
!5753 = !DILocation(line: 282, column: 37, scope: !5751)
!5754 = !DILocation(line: 282, column: 10, scope: !5751)
!5755 = !DILocation(line: 282, column: 22, scope: !5751)
!5756 = !DILocation(line: 283, column: 28, scope: !5751)
!5757 = !DILocation(line: 283, column: 10, scope: !5751)
!5758 = !DILocation(line: 283, column: 22, scope: !5751)
!5759 = !DILocation(line: 284, column: 16, scope: !5751)
!5760 = !DILocation(line: 285, column: 5, scope: !5751)
!5761 = !DILocation(line: 286, column: 16, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5752, file: !429, line: 286, column: 12)
!5763 = !DILocation(line: 286, column: 12, scope: !5752)
!5764 = !DILocation(line: 288, column: 5, scope: !5762)
!5765 = !DILocation(line: 289, column: 1, scope: !5714)
!5766 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !429, file: !429, line: 292, type: !5767, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !425, retainedNodes: !5769)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!55, !5400}
!5769 = !{!5770, !5771, !5772}
!5770 = !DILocalVariable(name: "h", arg: 1, scope: !5766, file: !429, line: 292, type: !5400)
!5771 = !DILocalVariable(name: "lp", scope: !5766, file: !429, line: 294, type: !5405)
!5772 = !DILocalVariable(name: "nbytes", scope: !5766, file: !429, line: 295, type: !55)
!5773 = !DILocation(line: 292, column: 39, scope: !5766)
!5774 = !DILocation(line: 295, column: 19, scope: !5766)
!5775 = !DILocation(line: 297, column: 16, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5766, file: !429, line: 297, column: 3)
!5777 = !DILocation(line: 294, column: 26, scope: !5766)
!5778 = !DILocation(line: 0, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5776, file: !429, line: 297, column: 3)
!5780 = !DILocation(line: 297, column: 26, scope: !5779)
!5781 = !DILocation(line: 297, column: 3, scope: !5776)
!5782 = !DILocation(line: 299, column: 21, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5779, file: !429, line: 298, column: 5)
!5784 = !DILocation(line: 299, column: 27, scope: !5783)
!5785 = !DILocation(line: 299, column: 14, scope: !5783)
!5786 = !DILocation(line: 297, column: 41, scope: !5779)
!5787 = distinct !{!5787, !5781, !5788}
!5788 = !DILocation(line: 300, column: 5, scope: !5776)
!5789 = !DILocation(line: 0, scope: !5783)
!5790 = !DILocation(line: 301, column: 3, scope: !5766)
!5791 = distinct !DISubprogram(name: "close_stream", scope: !5792, file: !5792, line: 56, type: !5793, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !715, retainedNodes: !5829)
!5792 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!58, !5795}
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5796, size: 64)
!5796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5797)
!5797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !5798)
!5798 = !{!5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5828}
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5797, file: !193, line: 51, baseType: !58, size: 32)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5797, file: !193, line: 54, baseType: !52, size: 64, offset: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5797, file: !193, line: 55, baseType: !52, size: 64, offset: 128)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5797, file: !193, line: 56, baseType: !52, size: 64, offset: 192)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5797, file: !193, line: 57, baseType: !52, size: 64, offset: 256)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5797, file: !193, line: 58, baseType: !52, size: 64, offset: 320)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5797, file: !193, line: 59, baseType: !52, size: 64, offset: 384)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5797, file: !193, line: 60, baseType: !52, size: 64, offset: 448)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5797, file: !193, line: 61, baseType: !52, size: 64, offset: 512)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5797, file: !193, line: 64, baseType: !52, size: 64, offset: 576)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5797, file: !193, line: 65, baseType: !52, size: 64, offset: 640)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5797, file: !193, line: 66, baseType: !52, size: 64, offset: 704)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5797, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5797, file: !193, line: 70, baseType: !5813, size: 64, offset: 832)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5797, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5797, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5797, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5797, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5797, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5797, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5797, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5797, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5797, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5797, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5797, file: !193, line: 93, baseType: !5813, size: 64, offset: 1344)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5797, file: !193, line: 94, baseType: !54, size: 64, offset: 1408)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5797, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5797, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5797, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!5829 = !{!5830, !5831, !5833, !5834}
!5830 = !DILocalVariable(name: "stream", arg: 1, scope: !5791, file: !5792, line: 56, type: !5795)
!5831 = !DILocalVariable(name: "some_pending", scope: !5791, file: !5792, line: 58, type: !5832)
!5832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!5833 = !DILocalVariable(name: "prev_fail", scope: !5791, file: !5792, line: 59, type: !5832)
!5834 = !DILocalVariable(name: "fclose_fail", scope: !5791, file: !5792, line: 60, type: !5832)
!5835 = !DILocation(line: 56, column: 21, scope: !5791)
!5836 = !DILocation(line: 58, column: 30, scope: !5791)
!5837 = !DILocalVariable(name: "__stream", arg: 1, scope: !5838, file: !2098, line: 135, type: !5795)
!5838 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2098, file: !2098, line: 135, type: !5793, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !715, retainedNodes: !5839)
!5839 = !{!5837}
!5840 = !DILocation(line: 135, column: 1, scope: !5838, inlinedAt: !5841)
!5841 = distinct !DILocation(line: 59, column: 27, scope: !5791)
!5842 = !DILocation(line: 137, column: 10, scope: !5838, inlinedAt: !5841)
!5843 = !DILocation(line: 59, column: 43, scope: !5791)
!5844 = !DILocation(line: 60, column: 29, scope: !5791)
!5845 = !DILocation(line: 60, column: 45, scope: !5791)
!5846 = !DILocation(line: 70, column: 17, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5791, file: !5792, line: 70, column: 7)
!5848 = !DILocation(line: 58, column: 50, scope: !5791)
!5849 = !DILocation(line: 70, column: 33, scope: !5847)
!5850 = !DILocation(line: 70, column: 53, scope: !5847)
!5851 = !DILocation(line: 70, column: 59, scope: !5847)
!5852 = !DILocation(line: 70, column: 7, scope: !5791)
!5853 = !DILocation(line: 72, column: 11, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5847, file: !5792, line: 71, column: 5)
!5855 = !DILocation(line: 73, column: 9, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5854, file: !5792, line: 72, column: 11)
!5857 = !DILocation(line: 73, column: 15, scope: !5856)
!5858 = !DILocation(line: 0, scope: !5791)
!5859 = !DILocation(line: 78, column: 1, scope: !5791)
!5860 = distinct !DISubprogram(name: "hard_locale", scope: !5861, file: !5861, line: 38, type: !5862, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !717, retainedNodes: !5864)
!5861 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5862 = !DISubroutineType(types: !5863)
!5863 = !{!72, !58}
!5864 = !{!5865, !5866, !5867}
!5865 = !DILocalVariable(name: "category", arg: 1, scope: !5860, file: !5861, line: 38, type: !58)
!5866 = !DILocalVariable(name: "hard", scope: !5860, file: !5861, line: 40, type: !72)
!5867 = !DILocalVariable(name: "p", scope: !5860, file: !5861, line: 41, type: !290)
!5868 = !DILocation(line: 38, column: 18, scope: !5860)
!5869 = !DILocation(line: 40, column: 8, scope: !5860)
!5870 = !DILocation(line: 41, column: 19, scope: !5860)
!5871 = !DILocation(line: 41, column: 15, scope: !5860)
!5872 = !DILocation(line: 43, column: 7, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5860, file: !5861, line: 43, column: 7)
!5874 = !DILocation(line: 43, column: 7, scope: !5860)
!5875 = !DILocation(line: 47, column: 15, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !5861, line: 47, column: 15)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !5861, line: 46, column: 9)
!5878 = distinct !DILexicalBlock(scope: !5879, file: !5861, line: 45, column: 11)
!5879 = distinct !DILexicalBlock(scope: !5873, file: !5861, line: 44, column: 5)
!5880 = !DILocation(line: 47, column: 31, scope: !5876)
!5881 = !DILocation(line: 47, column: 36, scope: !5876)
!5882 = !DILocation(line: 47, column: 39, scope: !5876)
!5883 = !DILocation(line: 47, column: 59, scope: !5876)
!5884 = !DILocation(line: 47, column: 15, scope: !5877)
!5885 = !DILocation(line: 48, column: 13, scope: !5876)
!5886 = !DILocation(line: 71, column: 3, scope: !5860)
!5887 = distinct !DISubprogram(name: "locale_charset", scope: !5888, file: !5888, line: 687, type: !5889, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !719, retainedNodes: !5891)
!5888 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!290}
!5891 = !{!5892}
!5892 = !DILocalVariable(name: "codeset", scope: !5887, file: !5888, line: 689, type: !290)
!5893 = !DILocation(line: 696, column: 13, scope: !5887)
!5894 = !DILocation(line: 689, column: 15, scope: !5887)
!5895 = !DILocation(line: 754, column: 15, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5887, file: !5888, line: 754, column: 7)
!5897 = !DILocation(line: 754, column: 7, scope: !5887)
!5898 = !DILocation(line: 907, column: 13, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5900, file: !5888, line: 907, column: 13)
!5900 = distinct !DILexicalBlock(scope: !5901, file: !5888, line: 897, column: 7)
!5901 = distinct !DILexicalBlock(scope: !5887, file: !5888, line: 856, column: 3)
!5902 = !DILocation(line: 907, column: 24, scope: !5899)
!5903 = !DILocation(line: 907, column: 13, scope: !5900)
!5904 = !DILocation(line: 995, column: 3, scope: !5887)
