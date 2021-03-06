; ModuleID = 'coreutils-8.30/src/comm.bc'
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
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1
@.str.5 = private unnamed_addr constant [192 x i8] c"\0A  -1              suppress column 1 (lines unique to FILE1)\0A  -2              suppress column 2 (lines unique to FILE2)\0A  -3              suppress column 3 (lines that appear in both files)\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0A  --check-order     check that the input is correctly sorted, even\0A                      if all input lines are pairable\0A  --nocheck-order   do not check that the input is correctly sorted\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"  --output-delimiter=STR  separate columns with STR\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"  --total           output a summary\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"\0ANote, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.13 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.37 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@only_file_1 = internal unnamed_addr global i1 false, align 1, !dbg !84
@only_file_2 = internal unnamed_addr global i1 false, align 1, !dbg !85
@both = internal unnamed_addr global i1 false, align 1, !dbg !86
@seen_unpairable = internal unnamed_addr global i1 false, align 1, !dbg !87
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !48
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !55
@total_option = internal unnamed_addr global i1 false, align 1, !dbg !88
@.str.18 = private unnamed_addr constant [5 x i8] c"123z\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !57
@delim = internal unnamed_addr global i1 false, align 1, !dbg !89
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !77
@optarg = external local_unnamed_addr global i8*, align 8
@col_sep = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !82
@.str.19 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"%s%s%s%s%s%s%s%c\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), align 8, !dbg !90
@.str.54 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !96
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !101
@.str.57 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !104
@.str.68 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.69 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !111
@.str.82 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.88, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.94, i32 0, i32 0), i8* null], align 16, !dbg !118
@.str.85 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.86 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.87 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.88 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.89 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.90 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.91 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.92 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.93 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.94 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !146
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !153
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@.str.11.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.97 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.98 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.99 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.100 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.101 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !170
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !177
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !179
@.str.110 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.111 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.112 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.113 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.114 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.115 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.116 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.117 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.118 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.119 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.120 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.121 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.122 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.123 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.126 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.131 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !185
@.str.1.144 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.148 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.149 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.150 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !194
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.168 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !693 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !698, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i32 %0, metadata !697, metadata !DIExpression()), !dbg !721
  %3 = icmp eq i32 %0, 0, !dbg !722
  br i1 %3, label %9, label %4, !dbg !723

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !724, !tbaa !726
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !724
  %7 = load i8*, i8** @program_name, align 8, !dbg !724, !tbaa !726
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !724
  br label %84, !dbg !724

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !730
  %11 = load i8*, i8** @program_name, align 8, !dbg !730, !tbaa !726
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !730
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !731
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !726
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !731
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !732
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !726
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !732
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !733
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !726
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !733
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !734
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !726
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !734
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !735
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !726
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !735
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !736
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !726
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !736
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !737
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !726
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !737
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !738
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !726
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !738
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !739
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !726
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !739
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !740
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !726
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !740
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !741
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !726
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !741
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !742
  %47 = load i8*, i8** @program_name, align 8, !dbg !742, !tbaa !726
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* %47, i8* %47) #12, !dbg !742
  %49 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !743
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %49) #12, !dbg !743
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %49, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !717
  %50 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !744
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !706, metadata !DIExpression()) #12, !dbg !745
  br label %51, !dbg !746

; <label>:51:                                     ; preds = %56, %9
  %52 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), %9 ]
  %53 = phi %struct.infomap* [ %57, %56 ], [ %50, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !706, metadata !DIExpression()) #12, !dbg !745
  %54 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %52) #14, !dbg !746
  %55 = icmp eq i32 %54, 0, !dbg !746
  br i1 %55, label %61, label %56, !dbg !747

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 1, !dbg !748
  call void @llvm.dbg.value(metadata %struct.infomap* %57, metadata !706, metadata !DIExpression()) #12, !dbg !745
  %58 = getelementptr inbounds %struct.infomap, %struct.infomap* %57, i64 0, i32 0, !dbg !749
  %59 = load i8*, i8** %58, align 8, !dbg !749, !tbaa !750
  %60 = icmp eq i8* %59, null, !dbg !752
  br i1 %60, label %61, label %51, !dbg !753, !llvm.loop !754

; <label>:61:                                     ; preds = %56, %51
  %62 = phi %struct.infomap* [ %57, %56 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !706, metadata !DIExpression()) #12, !dbg !745
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !706, metadata !DIExpression()) #12, !dbg !745
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %62, i64 0, i32 1, !dbg !757
  %64 = load i8*, i8** %63, align 8, !dbg !757, !tbaa !759
  %65 = icmp eq i8* %64, null, !dbg !760
  %66 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %64, !dbg !761
  call void @llvm.dbg.value(metadata i8* %66, metadata !705, metadata !DIExpression()) #12, !dbg !762
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !763
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !763
  %69 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !764
  call void @llvm.dbg.value(metadata i8* %69, metadata !713, metadata !DIExpression()) #12, !dbg !765
  %70 = icmp eq i8* %69, null, !dbg !766
  br i1 %70, label %77, label %71, !dbg !768

; <label>:71:                                     ; preds = %61
  %72 = tail call i32 @strncmp(i8* nonnull %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3) #14, !dbg !769
  %73 = icmp eq i32 %72, 0, !dbg !769
  br i1 %73, label %77, label %74, !dbg !770

; <label>:74:                                     ; preds = %71
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !771
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !771
  br label %77, !dbg !773

; <label>:77:                                     ; preds = %61, %71, %74
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 5) #12, !dbg !774
  %79 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !774
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i32 5) #12, !dbg !775
  %81 = icmp eq i8* %66, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !775
  %82 = select i1 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), !dbg !775
  %83 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %80, i8* %66, i8* %82) #12, !dbg !775
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %49) #12, !dbg !776
  br label %84

; <label>:84:                                     ; preds = %77, %4
  tail call void @exit(i32 %0) #15, !dbg !777
  unreachable, !dbg !777
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !778 {
  %3 = alloca [2 x [4 x %struct.linebuffer]], align 16
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer]]* %3, metadata !786, metadata !DIExpression()), !dbg !886
  %4 = alloca [2 x [4 x %struct.linebuffer*]], align 16
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer*]]* %4, metadata !801, metadata !DIExpression()), !dbg !888
  %5 = alloca [21 x i8], align 16
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !877, metadata !DIExpression()), !dbg !889
  %6 = alloca [21 x i8], align 16
  call void @llvm.dbg.declare(metadata [21 x i8]* %6, metadata !883, metadata !DIExpression()), !dbg !890
  %7 = alloca [21 x i8], align 16
  call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !884, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i32 %0, metadata !783, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i8** %1, metadata !784, metadata !DIExpression()), !dbg !893
  %8 = load i8*, i8** %1, align 8, !dbg !894, !tbaa !726
  tail call void @set_program_name(i8* %8) #12, !dbg !895
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !896
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !897
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #12, !dbg !898
  %12 = tail call zeroext i1 @hard_locale(i32 3) #12, !dbg !899
  %13 = zext i1 %12 to i8, !dbg !900
  store i8 %13, i8* @hard_LC_COLLATE, align 1, !dbg !900, !tbaa !901
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !903
  store i1 true, i1* @only_file_1, align 1
  store i1 true, i1* @only_file_2, align 1
  store i1 true, i1* @both, align 1
  store i1 false, i1* @seen_unpairable, align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !904, !tbaa !901
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !905, !tbaa !901
  store i32 0, i32* @check_input_order, align 4, !dbg !906, !tbaa !907
  store i1 false, i1* @total_option, align 1
  br label %15, !dbg !908

; <label>:15:                                     ; preds = %46, %2
  %16 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !909
  call void @llvm.dbg.value(metadata i32 %16, metadata !785, metadata !DIExpression()), !dbg !910
  switch i32 %16, label %51 [
    i32 -1, label %52
    i32 49, label %17
    i32 50, label %18
    i32 51, label %19
    i32 122, label %20
    i32 129, label %21
    i32 128, label %22
    i32 130, label %23
    i32 131, label %45
    i32 -130, label %47
    i32 -131, label %48
  ], !dbg !908

; <label>:17:                                     ; preds = %15
  store i1 false, i1* @only_file_1, align 1
  br label %46, !dbg !911

; <label>:18:                                     ; preds = %15
  store i1 false, i1* @only_file_2, align 1
  br label %46, !dbg !913

; <label>:19:                                     ; preds = %15
  store i1 false, i1* @both, align 1
  br label %46, !dbg !914

; <label>:20:                                     ; preds = %15
  store i1 true, i1* @delim, align 1
  br label %46, !dbg !915

; <label>:21:                                     ; preds = %15
  store i32 2, i32* @check_input_order, align 4, !dbg !916, !tbaa !907
  br label %46, !dbg !917

; <label>:22:                                     ; preds = %15
  store i32 1, i32* @check_input_order, align 4, !dbg !918, !tbaa !907
  br label %46, !dbg !919

; <label>:23:                                     ; preds = %15
  %24 = load i64, i64* @col_sep_len, align 8, !dbg !920, !tbaa !922
  %25 = icmp eq i64 %24, 0, !dbg !920
  br i1 %25, label %26, label %28, !dbg !924

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !925, !tbaa !726
  br label %36, !dbg !924

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** @col_sep, align 8, !dbg !926, !tbaa !726
  %30 = load i8*, i8** @optarg, align 8, !dbg !926, !tbaa !726
  %31 = tail call i32 @strcmp(i8* %29, i8* %30) #14, !dbg !926
  %32 = icmp eq i32 %31, 0, !dbg !926
  %33 = ptrtoint i8* %30 to i64, !dbg !927
  br i1 %32, label %36, label %34, !dbg !927

; <label>:34:                                     ; preds = %28
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !928
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #12, !dbg !928
  unreachable, !dbg !928

; <label>:36:                                     ; preds = %26, %28
  %37 = phi i64 [ %27, %26 ], [ %33, %28 ], !dbg !925
  store i64 %37, i64* bitcast (i8** @col_sep to i64*), align 8, !dbg !929, !tbaa !726
  %38 = inttoptr i64 %37 to i8*, !dbg !930
  %39 = load i8, i8* %38, align 1, !dbg !931, !tbaa !907
  %40 = icmp eq i8 %39, 0, !dbg !931
  br i1 %40, label %43, label %41, !dbg !931

; <label>:41:                                     ; preds = %36
  %42 = tail call i64 @strlen(i8* %38) #14, !dbg !932
  br label %43, !dbg !931

; <label>:43:                                     ; preds = %36, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %36 ], !dbg !931
  store i64 %44, i64* @col_sep_len, align 8, !dbg !933, !tbaa !922
  br label %46, !dbg !934

; <label>:45:                                     ; preds = %15
  store i1 true, i1* @total_option, align 1
  br label %46, !dbg !935

; <label>:46:                                     ; preds = %45, %43, %22, %21, %20, %19, %18, %17
  br label %15, !dbg !909, !llvm.loop !936

; <label>:47:                                     ; preds = %15
  tail call void @usage(i32 0) #16, !dbg !938
  unreachable, !dbg !938

; <label>:48:                                     ; preds = %15
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939, !tbaa !726
  %50 = load i8*, i8** @Version, align 8, !dbg !939, !tbaa !726
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* null) #12, !dbg !939
  tail call void @exit(i32 0) #15, !dbg !939
  unreachable, !dbg !939

; <label>:51:                                     ; preds = %15
  tail call void @usage(i32 1) #16, !dbg !940
  unreachable, !dbg !940

; <label>:52:                                     ; preds = %15
  %53 = load i64, i64* @col_sep_len, align 8, !dbg !941, !tbaa !922
  %54 = icmp eq i64 %53, 0, !dbg !941
  br i1 %54, label %55, label %56, !dbg !943

; <label>:55:                                     ; preds = %52
  store i64 1, i64* @col_sep_len, align 8, !dbg !944, !tbaa !922
  br label %56, !dbg !945

; <label>:56:                                     ; preds = %52, %55
  %57 = load i32, i32* @optind, align 4, !dbg !946, !tbaa !948
  %58 = sub nsw i32 %0, %57, !dbg !950
  %59 = icmp slt i32 %58, 2, !dbg !951
  br i1 %59, label %60, label %72, !dbg !952

; <label>:60:                                     ; preds = %56
  %61 = icmp slt i32 %57, %0, !dbg !953
  br i1 %61, label %64, label %62, !dbg !956

; <label>:62:                                     ; preds = %60
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !957
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63) #12, !dbg !958
  br label %71, !dbg !958

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !959
  %66 = add nsw i32 %0, -1, !dbg !960
  %67 = sext i32 %66 to i64, !dbg !961
  %68 = getelementptr inbounds i8*, i8** %1, i64 %67, !dbg !961
  %69 = load i8*, i8** %68, align 8, !dbg !961, !tbaa !726
  %70 = tail call i8* @quote(i8* %69) #12, !dbg !962
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %70) #12, !dbg !963
  br label %71

; <label>:71:                                     ; preds = %64, %62
  tail call void @usage(i32 1) #16, !dbg !964
  unreachable, !dbg !964

; <label>:72:                                     ; preds = %56
  %73 = icmp eq i32 %58, 2, !dbg !965
  br i1 %73, label %82, label %74, !dbg !967

; <label>:74:                                     ; preds = %72
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !968
  %76 = load i32, i32* @optind, align 4, !dbg !970, !tbaa !948
  %77 = add nsw i32 %76, 2, !dbg !971
  %78 = sext i32 %77 to i64, !dbg !972
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !972
  %80 = load i8*, i8** %79, align 8, !dbg !972, !tbaa !726
  %81 = tail call i8* @quote(i8* %80) #12, !dbg !973
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75, i8* %81) #12, !dbg !974
  tail call void @usage(i32 1) #16, !dbg !975
  unreachable, !dbg !975

; <label>:82:                                     ; preds = %72
  %83 = sext i32 %57 to i64, !dbg !976
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !976
  call void @llvm.dbg.value(metadata i8** %84, metadata !791, metadata !DIExpression()) #12, !dbg !977
  %85 = bitcast [2 x [4 x %struct.linebuffer]]* %3 to i8*, !dbg !978
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %85) #12, !dbg !978
  %86 = bitcast [2 x [4 x %struct.linebuffer*]]* %4 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %86) #12, !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i32 0, metadata !866, metadata !DIExpression()) #12, !dbg !981
  call void @llvm.dbg.value(metadata i64 0, metadata !866, metadata !DIExpression()) #12, !dbg !981
  call void @llvm.dbg.value(metadata i32 0, metadata !867, metadata !DIExpression()) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 0, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %87 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 0, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %87) #12, !dbg !990
  %88 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 0, !dbg !991
  store %struct.linebuffer* %87, %struct.linebuffer** %88, align 16, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 1, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %89 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 1, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %89) #12, !dbg !990
  %90 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 1, !dbg !991
  store %struct.linebuffer* %89, %struct.linebuffer** %90, align 8, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 2, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %91 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 2, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %91) #12, !dbg !990
  %92 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 2, !dbg !991
  store %struct.linebuffer* %91, %struct.linebuffer** %92, align 16, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 3, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %93 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 3, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %93) #12, !dbg !990
  %94 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 3, !dbg !991
  store %struct.linebuffer* %93, %struct.linebuffer** %94, align 8, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  %95 = load i8*, i8** %84, align 8, !dbg !994, !tbaa !726
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !994
  %97 = icmp eq i32 %96, 0, !dbg !994
  br i1 %97, label %111, label %113, !dbg !994

; <label>:98:                                     ; preds = %125
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  call void @llvm.dbg.value(metadata i64 1, metadata !866, metadata !DIExpression()) #12, !dbg !981
  call void @llvm.dbg.value(metadata i32 0, metadata !867, metadata !DIExpression()) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 0, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %99 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 0, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %99) #12, !dbg !990
  %100 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 0, !dbg !991
  store %struct.linebuffer* %99, %struct.linebuffer** %100, align 16, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 1, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %101 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 1, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %101) #12, !dbg !990
  %102 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 1, !dbg !991
  store %struct.linebuffer* %101, %struct.linebuffer** %102, align 8, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 2, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %103 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 2, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %103) #12, !dbg !990
  %104 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 2, !dbg !991
  store %struct.linebuffer* %103, %struct.linebuffer** %104, align 16, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i64 3, metadata !867, metadata !DIExpression()) #12, !dbg !982
  %105 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 3, !dbg !983
  call void @initbuffer(%struct.linebuffer* nonnull %105) #12, !dbg !990
  %106 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 3, !dbg !991
  store %struct.linebuffer* %105, %struct.linebuffer** %106, align 8, !dbg !992, !tbaa !726
  call void @llvm.dbg.value(metadata i32 undef, metadata !867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !982
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  %107 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !994
  %108 = load i8*, i8** %107, align 8, !dbg !994, !tbaa !726
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !994
  %110 = icmp eq i32 %109, 0, !dbg !994
  br i1 %110, label %364, label %362, !dbg !994

; <label>:111:                                    ; preds = %82
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !995, !tbaa !726
  br label %115, !dbg !994

; <label>:113:                                    ; preds = %82
  %114 = call %struct._IO_FILE* @fopen_safer(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !996
  br label %115, !dbg !994

; <label>:115:                                    ; preds = %113, %111
  %116 = phi %struct._IO_FILE* [ %112, %111 ], [ %114, %113 ], !dbg !994
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !809, metadata !DIExpression()) #12, !dbg !997
  %117 = icmp eq %struct._IO_FILE* %116, null, !dbg !998
  br i1 %117, label %118, label %125, !dbg !1000

; <label>:118:                                    ; preds = %115, %366
  %119 = phi i64 [ 1, %366 ], [ 0, %115 ], !dbg !1001
  %120 = getelementptr inbounds i8*, i8** %84, i64 %119, !dbg !994
  %121 = tail call i32* @__errno_location() #17, !dbg !1002
  %122 = load i32, i32* %121, align 4, !dbg !1002, !tbaa !948
  %123 = load i8*, i8** %120, align 8, !dbg !1002, !tbaa !726
  %124 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %123) #12, !dbg !1002
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %124) #12, !dbg !1002
  unreachable, !dbg !1002

; <label>:125:                                    ; preds = %115
  call void @fadvise(%struct._IO_FILE* nonnull %116, i32 2) #12, !dbg !1003
  %126 = load i1, i1* @delim, align 1
  %127 = select i1 %126, i8 0, i8 10
  %128 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %87, %struct._IO_FILE* nonnull %116, i8 signext %127) #12, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !792, metadata !DIExpression()) #12, !dbg !1005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, metadata !1006, metadata !DIExpression()) #12, !dbg !1012
  %129 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 0, !dbg !1015
  %130 = load i32, i32* %129, align 8, !dbg !1015, !tbaa !1016
  %131 = and i32 %130, 32, !dbg !1015
  %132 = icmp eq i32 %131, 0, !dbg !1019
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  br i1 %132, label %98, label %133, !dbg !1020

; <label>:133:                                    ; preds = %125, %369
  %134 = phi i64 [ 1, %369 ], [ 0, %125 ], !dbg !1001
  %135 = getelementptr inbounds i8*, i8** %84, i64 %134, !dbg !994
  %136 = tail call i32* @__errno_location() #17, !dbg !1021
  %137 = load i32, i32* %136, align 4, !dbg !1021, !tbaa !948
  %138 = load i8*, i8** %135, align 8, !dbg !1021, !tbaa !726
  %139 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %138) #12, !dbg !1021
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %139) #12, !dbg !1021
  unreachable, !dbg !1021

; <label>:140:                                    ; preds = %349, %377
  %141 = phi i64 [ 0, %377 ], [ %353, %349 ], !dbg !980
  %142 = phi i64 [ 0, %377 ], [ %354, %349 ], !dbg !980
  %143 = phi i64 [ 0, %377 ], [ %355, %349 ], !dbg !1022
  call void @llvm.dbg.value(metadata i64 %141, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 %142, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 %143, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i32 0, metadata !866, metadata !DIExpression()) #12, !dbg !981
  call void @llvm.dbg.value(metadata i64 0, metadata !866, metadata !DIExpression()) #12, !dbg !981
  %144 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %116) #12, !dbg !1025
  %145 = icmp eq i32 %144, 0, !dbg !1029
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  br i1 %145, label %288, label %291, !dbg !1030

; <label>:146:                                    ; preds = %377, %349
  %147 = phi %struct.linebuffer* [ %356, %349 ], [ %372, %377 ]
  %148 = phi %struct.linebuffer* [ %352, %349 ], [ %128, %377 ]
  %149 = phi i32 [ %357, %349 ], [ 0, %377 ]
  %150 = phi i32 [ %358, %349 ], [ 0, %377 ]
  %151 = phi i32 [ %351, %349 ], [ 0, %377 ]
  %152 = phi i32 [ %350, %349 ], [ 0, %377 ]
  %153 = phi i64 [ %355, %349 ], [ 0, %377 ]
  %154 = phi i64 [ %354, %349 ], [ 0, %377 ]
  %155 = phi i64 [ %353, %349 ], [ 0, %377 ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 %154, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 %155, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !980
  call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !870, metadata !DIExpression()) #12, !dbg !1031
  %156 = icmp eq %struct.linebuffer* %148, null, !dbg !1032
  br i1 %156, label %157, label %158, !dbg !1033

; <label>:157:                                    ; preds = %146
  store i1 true, i1* @seen_unpairable, align 1
  br label %231, !dbg !1034

; <label>:158:                                    ; preds = %146
  %159 = icmp eq %struct.linebuffer* %147, null, !dbg !1036
  br i1 %159, label %217, label %160, !dbg !1037

; <label>:160:                                    ; preds = %158
  %161 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1038, !tbaa !901, !range !1039
  %162 = icmp eq i8 %161, 0, !dbg !1038
  br i1 %162, label %175, label %163, !dbg !1040

; <label>:163:                                    ; preds = %160
  %164 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 2, !dbg !1041
  %165 = load i8*, i8** %164, align 8, !dbg !1041, !tbaa !1042
  %166 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 1, !dbg !1044
  %167 = load i64, i64* %166, align 8, !dbg !1044, !tbaa !1045
  %168 = add i64 %167, -1, !dbg !1046
  %169 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 2, !dbg !1047
  %170 = load i8*, i8** %169, align 8, !dbg !1047, !tbaa !1042
  %171 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 1, !dbg !1048
  %172 = load i64, i64* %171, align 8, !dbg !1048, !tbaa !1045
  %173 = add i64 %172, -1, !dbg !1049
  %174 = call i32 @xmemcoll(i8* %165, i64 %168, i8* %170, i64 %173) #12, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %174, metadata !868, metadata !DIExpression()) #12, !dbg !1051
  br label %192, !dbg !1052

; <label>:175:                                    ; preds = %160
  %176 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 1, !dbg !1053
  %177 = load i64, i64* %176, align 8, !dbg !1053, !tbaa !1045
  %178 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 1, !dbg !1053
  %179 = load i64, i64* %178, align 8, !dbg !1053, !tbaa !1045
  %180 = icmp ult i64 %177, %179, !dbg !1053
  %181 = select i1 %180, i64 %177, i64 %179, !dbg !1053
  %182 = add i64 %181, -1, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %182, metadata !871, metadata !DIExpression()) #12, !dbg !1055
  %183 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 2, !dbg !1056
  %184 = load i8*, i8** %183, align 8, !dbg !1056, !tbaa !1042
  %185 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 2, !dbg !1057
  %186 = load i8*, i8** %185, align 8, !dbg !1057, !tbaa !1042
  %187 = call i32 @memcmp(i8* %184, i8* %186, i64 %182) #14, !dbg !1058
  call void @llvm.dbg.value(metadata i32 %187, metadata !868, metadata !DIExpression()) #12, !dbg !1051
  %188 = icmp eq i32 %187, 0, !dbg !1059
  br i1 %188, label %189, label %218, !dbg !1061

; <label>:189:                                    ; preds = %175
  %190 = icmp ne i64 %177, %179, !dbg !1062
  %191 = zext i1 %190 to i32, !dbg !1062
  br i1 %180, label %217, label %192

; <label>:192:                                    ; preds = %189, %163
  %193 = phi i32 [ %174, %163 ], [ %191, %189 ], !dbg !1063
  call void @llvm.dbg.value(metadata i32 %193, metadata !868, metadata !DIExpression()) #12, !dbg !1051
  %194 = icmp eq i32 %193, 0, !dbg !1064
  br i1 %194, label %195, label %218, !dbg !1065

; <label>:195:                                    ; preds = %192
  %196 = add i64 %153, 1, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %196, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #12, !dbg !980
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1067, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !1068, metadata !DIExpression()) #12, !dbg !1077
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %197, metadata !1075, metadata !DIExpression()) #12, !dbg !1079
  call void @llvm.dbg.value(metadata i32 3, metadata !1076, metadata !DIExpression()) #12, !dbg !1080
  %198 = load i1, i1* @both, align 1
  br i1 %198, label %199, label %247, !dbg !1081

; <label>:199:                                    ; preds = %195
  %200 = load i1, i1* @only_file_1, align 1
  br i1 %200, label %201, label %205, !dbg !1083

; <label>:201:                                    ; preds = %199
  %202 = load i8*, i8** @col_sep, align 8, !dbg !1084, !tbaa !726
  %203 = load i64, i64* @col_sep_len, align 8, !dbg !1084, !tbaa !922
  %204 = call i64 @fwrite_unlocked(i8* %202, i64 1, i64 %203, %struct._IO_FILE* %197) #12, !dbg !1084
  br label %205, !dbg !1084

; <label>:205:                                    ; preds = %201, %199
  %206 = load i1, i1* @only_file_2, align 1
  br i1 %206, label %207, label %211, !dbg !1086

; <label>:207:                                    ; preds = %205
  %208 = load i8*, i8** @col_sep, align 8, !dbg !1087, !tbaa !726
  %209 = load i64, i64* @col_sep_len, align 8, !dbg !1087, !tbaa !922
  %210 = call i64 @fwrite_unlocked(i8* %208, i64 1, i64 %209, %struct._IO_FILE* %197) #12, !dbg !1087
  br label %211, !dbg !1087

; <label>:211:                                    ; preds = %207, %205
  %212 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 2, !dbg !1089
  %213 = load i8*, i8** %212, align 8, !dbg !1089, !tbaa !1042
  %214 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 1, !dbg !1089
  %215 = load i64, i64* %214, align 8, !dbg !1089, !tbaa !1045
  %216 = call i64 @fwrite_unlocked(i8* %213, i64 1, i64 %215, %struct._IO_FILE* %197) #12, !dbg !1089
  br label %247, !dbg !1090

; <label>:217:                                    ; preds = %189, %158
  store i1 true, i1* @seen_unpairable, align 1
  br label %221, !dbg !1034

; <label>:218:                                    ; preds = %192, %175
  %219 = phi i32 [ %193, %192 ], [ %187, %175 ]
  store i1 true, i1* @seen_unpairable, align 1
  %220 = icmp slt i32 %219, 1, !dbg !1091
  br i1 %220, label %221, label %231, !dbg !1034

; <label>:221:                                    ; preds = %218, %217
  %222 = add i64 %154, 1, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %222, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata %struct.linebuffer* %148, metadata !1068, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata i32 1, metadata !1076, metadata !DIExpression()) #12, !dbg !1097
  %223 = load i1, i1* @only_file_1, align 1
  br i1 %223, label %224, label %247, !dbg !1098

; <label>:224:                                    ; preds = %221
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1099, !tbaa !726
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %225, metadata !1075, metadata !DIExpression()) #12, !dbg !1100
  %226 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 2, !dbg !1101
  %227 = load i8*, i8** %226, align 8, !dbg !1101, !tbaa !1042
  %228 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 1, !dbg !1101
  %229 = load i64, i64* %228, align 8, !dbg !1101, !tbaa !1045
  %230 = call i64 @fwrite_unlocked(i8* %227, i64 1, i64 %229, %struct._IO_FILE* %225) #12, !dbg !1101
  br label %247, !dbg !1102

; <label>:231:                                    ; preds = %218, %157
  %232 = add i64 %155, 1, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %232, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !980
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1105, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.linebuffer* %147, metadata !1068, metadata !DIExpression()) #12, !dbg !1106
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %233, metadata !1075, metadata !DIExpression()) #12, !dbg !1108
  call void @llvm.dbg.value(metadata i32 2, metadata !1076, metadata !DIExpression()) #12, !dbg !1109
  %234 = load i1, i1* @only_file_2, align 1
  br i1 %234, label %235, label %314, !dbg !1110

; <label>:235:                                    ; preds = %231
  %236 = load i1, i1* @only_file_1, align 1
  br i1 %236, label %237, label %241, !dbg !1111

; <label>:237:                                    ; preds = %235
  %238 = load i8*, i8** @col_sep, align 8, !dbg !1112, !tbaa !726
  %239 = load i64, i64* @col_sep_len, align 8, !dbg !1112, !tbaa !922
  %240 = call i64 @fwrite_unlocked(i8* %238, i64 1, i64 %239, %struct._IO_FILE* %233) #12, !dbg !1112
  br label %241, !dbg !1112

; <label>:241:                                    ; preds = %237, %235
  %242 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 2, !dbg !1114
  %243 = load i8*, i8** %242, align 8, !dbg !1114, !tbaa !1042
  %244 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 1, !dbg !1114
  %245 = load i64, i64* %244, align 8, !dbg !1114, !tbaa !1045
  %246 = call i64 @fwrite_unlocked(i8* %243, i64 1, i64 %245, %struct._IO_FILE* %233) #12, !dbg !1114
  br label %314, !dbg !1115

; <label>:247:                                    ; preds = %224, %221, %211, %195
  %248 = phi i8 [ 1, %195 ], [ 1, %211 ], [ 0, %224 ], [ 0, %221 ]
  %249 = phi i64 [ %154, %195 ], [ %154, %211 ], [ %222, %224 ], [ %222, %221 ]
  %250 = phi i64 [ %196, %195 ], [ %196, %211 ], [ %153, %224 ], [ %153, %221 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !866, metadata !DIExpression()) #12, !dbg !981
  call void @llvm.dbg.value(metadata i64 0, metadata !866, metadata !DIExpression()) #12, !dbg !981
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  %251 = add nsw i32 %151, 1, !dbg !1116
  %252 = and i32 %251, 3, !dbg !1121
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  %253 = zext i32 %252 to i64, !dbg !1122
  %254 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %253, !dbg !1122
  %255 = load %struct.linebuffer*, %struct.linebuffer** %254, align 8, !dbg !1122, !tbaa !726
  %256 = load i1, i1* @delim, align 1
  %257 = select i1 %256, i8 0, i8 10
  %258 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %255, %struct._IO_FILE* nonnull %116, i8 signext %257) #12, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !792, metadata !DIExpression()) #12, !dbg !1005
  %259 = icmp eq %struct.linebuffer* %258, null, !dbg !1124
  br i1 %259, label %264, label %260, !dbg !1126

; <label>:260:                                    ; preds = %247
  %261 = sext i32 %151 to i64, !dbg !1127
  %262 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %261, !dbg !1127
  %263 = load %struct.linebuffer*, %struct.linebuffer** %262, align 8, !dbg !1127, !tbaa !726
  call fastcc void @check_order(%struct.linebuffer* %263, %struct.linebuffer* nonnull %258, i32 1) #12, !dbg !1128
  br label %275, !dbg !1128

; <label>:264:                                    ; preds = %247
  %265 = sext i32 %152 to i64, !dbg !1129
  %266 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %265, !dbg !1129
  %267 = load %struct.linebuffer*, %struct.linebuffer** %266, align 8, !dbg !1129, !tbaa !726
  %268 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %267, i64 0, i32 2, !dbg !1131
  %269 = load i8*, i8** %268, align 8, !dbg !1131, !tbaa !1042
  %270 = icmp eq i8* %269, null, !dbg !1129
  br i1 %270, label %275, label %271, !dbg !1132

; <label>:271:                                    ; preds = %264
  %272 = sext i32 %151 to i64, !dbg !1133
  %273 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %272, !dbg !1133
  %274 = load %struct.linebuffer*, %struct.linebuffer** %273, align 8, !dbg !1133, !tbaa !726
  call fastcc void @check_order(%struct.linebuffer* %267, %struct.linebuffer* %274, i32 1) #12, !dbg !1134
  br label %275, !dbg !1134

; <label>:275:                                    ; preds = %271, %264, %260
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, metadata !1006, metadata !DIExpression()) #12, !dbg !1135
  %276 = load i32, i32* %129, align 8, !dbg !1138, !tbaa !1016
  %277 = and i32 %276, 32, !dbg !1138
  %278 = icmp eq i32 %277, 0, !dbg !1139
  br i1 %278, label %286, label %279, !dbg !1140

; <label>:279:                                    ; preds = %275, %345
  %280 = phi i64 [ 1, %345 ], [ 0, %275 ]
  %281 = tail call i32* @__errno_location() #17, !dbg !1141
  %282 = load i32, i32* %281, align 4, !dbg !1141, !tbaa !948
  %283 = getelementptr inbounds i8*, i8** %84, i64 %280, !dbg !1141
  %284 = load i8*, i8** %283, align 8, !dbg !1141, !tbaa !726
  %285 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %284) #12, !dbg !1141
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %285) #12, !dbg !1141
  unreachable, !dbg !1141

; <label>:286:                                    ; preds = %275
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  call void @llvm.dbg.value(metadata i64 1, metadata !866, metadata !DIExpression()) #12, !dbg !981
  %287 = icmp eq i8 %248, 0, !dbg !1142
  br i1 %287, label %349, label %314, !dbg !1143

; <label>:288:                                    ; preds = %140
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  call void @llvm.dbg.value(metadata i64 1, metadata !866, metadata !DIExpression()) #12, !dbg !981
  %289 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %367) #12, !dbg !1025
  %290 = icmp eq i32 %289, 0, !dbg !1029
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  br i1 %290, label %312, label %291, !dbg !1030

; <label>:291:                                    ; preds = %140, %288
  %292 = phi i64 [ 1, %288 ], [ 0, %140 ]
  %293 = tail call i32* @__errno_location() #17, !dbg !1144
  %294 = load i32, i32* %293, align 4, !dbg !1144, !tbaa !948
  %295 = getelementptr inbounds i8*, i8** %84, i64 %292, !dbg !1144
  %296 = load i8*, i8** %295, align 8, !dbg !1144, !tbaa !726
  %297 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %296) #12, !dbg !1144
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %297) #12, !dbg !1144
  unreachable, !dbg !1144

; <label>:298:                                    ; preds = %312
  %299 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1145
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %299) #12, !dbg !1145
  %300 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1146
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %300) #12, !dbg !1146
  %301 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !1147
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %301) #12, !dbg !1147
  %302 = call i8* @umaxtostr(i64 %142, i8* nonnull %299) #12, !dbg !1148
  %303 = load i8*, i8** @col_sep, align 8, !dbg !1148, !tbaa !726
  %304 = call i8* @umaxtostr(i64 %141, i8* nonnull %300) #12, !dbg !1148
  %305 = load i8*, i8** @col_sep, align 8, !dbg !1148, !tbaa !726
  %306 = call i8* @umaxtostr(i64 %143, i8* nonnull %301) #12, !dbg !1148
  %307 = load i8*, i8** @col_sep, align 8, !dbg !1148, !tbaa !726
  %308 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !1148
  %309 = load i1, i1* @delim, align 1
  %310 = select i1 %309, i32 0, i32 10, !dbg !1148
  %311 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* %302, i8* %303, i8* %304, i8* %305, i8* %306, i8* %307, i8* %308, i32 %310) #12, !dbg !1148
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %301) #12, !dbg !1149
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %300) #12, !dbg !1149
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %299) #12, !dbg !1149
  br label %381, !dbg !1150

; <label>:312:                                    ; preds = %288
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  %313 = load i1, i1* @total_option, align 1
  br i1 %313, label %298, label %381, !dbg !1151

; <label>:314:                                    ; preds = %286, %241, %231
  %315 = phi i32 [ %151, %286 ], [ %152, %241 ], [ %152, %231 ]
  %316 = phi i32 [ %252, %286 ], [ %151, %241 ], [ %151, %231 ]
  %317 = phi %struct.linebuffer* [ %258, %286 ], [ %148, %241 ], [ %148, %231 ]
  %318 = phi i64 [ %155, %286 ], [ %232, %241 ], [ %232, %231 ]
  %319 = phi i64 [ %249, %286 ], [ %154, %241 ], [ %154, %231 ]
  %320 = phi i64 [ %250, %286 ], [ %153, %241 ], [ %153, %231 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  %321 = add nsw i32 %149, 1, !dbg !1116
  %322 = and i32 %321, 3, !dbg !1121
  call void @llvm.dbg.value(metadata i32 undef, metadata !805, metadata !DIExpression()) #12, !dbg !993
  %323 = zext i32 %322 to i64, !dbg !1122
  %324 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %323, !dbg !1122
  %325 = load %struct.linebuffer*, %struct.linebuffer** %324, align 8, !dbg !1122, !tbaa !726
  %326 = load i1, i1* @delim, align 1
  %327 = select i1 %326, i8 0, i8 10
  %328 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %325, %struct._IO_FILE* nonnull %367, i8 signext %327) #12, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !792, metadata !DIExpression()) #12, !dbg !1005
  %329 = icmp eq %struct.linebuffer* %328, null, !dbg !1124
  br i1 %329, label %334, label %330, !dbg !1126

; <label>:330:                                    ; preds = %314
  %331 = sext i32 %149 to i64, !dbg !1127
  %332 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %331, !dbg !1127
  %333 = load %struct.linebuffer*, %struct.linebuffer** %332, align 8, !dbg !1127, !tbaa !726
  call fastcc void @check_order(%struct.linebuffer* %333, %struct.linebuffer* nonnull %328, i32 2) #12, !dbg !1128
  br label %345, !dbg !1128

; <label>:334:                                    ; preds = %314
  %335 = sext i32 %150 to i64, !dbg !1129
  %336 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %335, !dbg !1129
  %337 = load %struct.linebuffer*, %struct.linebuffer** %336, align 8, !dbg !1129, !tbaa !726
  %338 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %337, i64 0, i32 2, !dbg !1131
  %339 = load i8*, i8** %338, align 8, !dbg !1131, !tbaa !1042
  %340 = icmp eq i8* %339, null, !dbg !1129
  br i1 %340, label %345, label %341, !dbg !1132

; <label>:341:                                    ; preds = %334
  %342 = sext i32 %149 to i64, !dbg !1133
  %343 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %342, !dbg !1133
  %344 = load %struct.linebuffer*, %struct.linebuffer** %343, align 8, !dbg !1133, !tbaa !726
  call fastcc void @check_order(%struct.linebuffer* %337, %struct.linebuffer* %344, i32 2) #12, !dbg !1134
  br label %345, !dbg !1134

; <label>:345:                                    ; preds = %341, %334, %330
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %367, metadata !1006, metadata !DIExpression()) #12, !dbg !1135
  %346 = load i32, i32* %373, align 8, !dbg !1138, !tbaa !1016
  %347 = and i32 %346, 32, !dbg !1138
  %348 = icmp eq i32 %347, 0, !dbg !1139
  br i1 %348, label %349, label %279, !dbg !1140

; <label>:349:                                    ; preds = %345, %286
  %350 = phi i32 [ %151, %286 ], [ %315, %345 ]
  %351 = phi i32 [ %252, %286 ], [ %316, %345 ]
  %352 = phi %struct.linebuffer* [ %258, %286 ], [ %317, %345 ]
  %353 = phi i64 [ %155, %286 ], [ %318, %345 ]
  %354 = phi i64 [ %249, %286 ], [ %319, %345 ]
  %355 = phi i64 [ %250, %286 ], [ %320, %345 ]
  %356 = phi %struct.linebuffer* [ %147, %286 ], [ %328, %345 ], !dbg !1152
  %357 = phi i32 [ %149, %286 ], [ %322, %345 ]
  %358 = phi i32 [ %150, %286 ], [ %149, %345 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  %359 = icmp ne %struct.linebuffer* %352, null, !dbg !1153
  %360 = icmp ne %struct.linebuffer* %356, null, !dbg !1154
  %361 = or i1 %359, %360, !dbg !1154
  br i1 %361, label %146, label %140, !dbg !1155, !llvm.loop !1156

; <label>:362:                                    ; preds = %98
  %363 = call %struct._IO_FILE* @fopen_safer(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !996
  br label %366, !dbg !994

; <label>:364:                                    ; preds = %98
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !995, !tbaa !726
  br label %366, !dbg !994

; <label>:366:                                    ; preds = %364, %362
  %367 = phi %struct._IO_FILE* [ %365, %364 ], [ %363, %362 ], !dbg !994
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !809, metadata !DIExpression()) #12, !dbg !997
  %368 = icmp eq %struct._IO_FILE* %367, null, !dbg !998
  br i1 %368, label %118, label %369, !dbg !1000

; <label>:369:                                    ; preds = %366
  call void @fadvise(%struct._IO_FILE* nonnull %367, i32 2) #12, !dbg !1003
  %370 = load i1, i1* @delim, align 1
  %371 = select i1 %370, i8 0, i8 10
  %372 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %99, %struct._IO_FILE* nonnull %367, i8 signext %371) #12, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !792, metadata !DIExpression()) #12, !dbg !1005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %367, metadata !1006, metadata !DIExpression()) #12, !dbg !1012
  %373 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %367, i64 0, i32 0, !dbg !1015
  %374 = load i32, i32* %373, align 8, !dbg !1015, !tbaa !1016
  %375 = and i32 %374, 32, !dbg !1015
  %376 = icmp eq i32 %375, 0, !dbg !1019
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  br i1 %376, label %377, label %133, !dbg !1020

; <label>:377:                                    ; preds = %369
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !981
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !980
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !980
  %378 = icmp ne %struct.linebuffer* %128, null, !dbg !1153
  %379 = icmp ne %struct.linebuffer* %372, null, !dbg !1154
  %380 = or i1 %378, %379, !dbg !1154
  br i1 %380, label %146, label %140, !dbg !1155

; <label>:381:                                    ; preds = %298, %312
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %86) #12, !dbg !1159
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %85) #12, !dbg !1159
  %382 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1160, !tbaa !901, !range !1039
  %383 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1162
  %384 = or i8 %383, %382, !dbg !1163
  %385 = icmp ne i8 %384, 0, !dbg !1163
  %386 = zext i1 %385 to i32, !dbg !1163
  ret i32 %386, !dbg !1164
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

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @check_order(%struct.linebuffer* nocapture readonly, %struct.linebuffer* nocapture readonly, i32) unnamed_addr #7 !dbg !1165 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1169, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata %struct.linebuffer* %1, metadata !1170, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 %2, metadata !1171, metadata !DIExpression()), !dbg !1179
  %4 = load i32, i32* @check_input_order, align 4, !dbg !1180, !tbaa !907
  switch i32 %4, label %5 [
    i32 2, label %38
    i32 1, label %7
  ], !dbg !1181

; <label>:5:                                      ; preds = %3
  %6 = load i1, i1* @seen_unpairable, align 1
  br i1 %6, label %7, label %38, !dbg !1182

; <label>:7:                                      ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1183
  %9 = sext i32 %8 to i64, !dbg !1184
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %9, !dbg !1184
  %11 = load i8, i8* %10, align 1, !dbg !1184, !tbaa !901, !range !1039
  %12 = icmp eq i8 %11, 0, !dbg !1184
  br i1 %12, label %13, label %38, !dbg !1185

; <label>:13:                                     ; preds = %7
  %14 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1186, !tbaa !901, !range !1039
  %15 = icmp eq i8 %14, 0, !dbg !1186
  %16 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1188
  %17 = load i8*, i8** %16, align 8, !dbg !1188, !tbaa !1042
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1188
  %19 = load i64, i64* %18, align 8, !dbg !1188, !tbaa !1045
  %20 = add i64 %19, -1, !dbg !1188
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 2, !dbg !1188
  %22 = load i8*, i8** %21, align 8, !dbg !1188, !tbaa !1042
  %23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 1, !dbg !1188
  %24 = load i64, i64* %23, align 8, !dbg !1188, !tbaa !1045
  %25 = add i64 %24, -1, !dbg !1188
  br i1 %15, label %28, label %26, !dbg !1189

; <label>:26:                                     ; preds = %13
  %27 = tail call i32 @xmemcoll(i8* %17, i64 %20, i8* %22, i64 %25) #12, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %27, metadata !1172, metadata !DIExpression()), !dbg !1191
  br label %30, !dbg !1192

; <label>:28:                                     ; preds = %13
  %29 = tail call i32 @memcmp2(i8* %17, i64 %20, i8* %22, i64 %25) #14, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %29, metadata !1172, metadata !DIExpression()), !dbg !1191
  br label %30

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1188
  call void @llvm.dbg.value(metadata i32 %31, metadata !1172, metadata !DIExpression()), !dbg !1191
  %32 = icmp sgt i32 %31, 0, !dbg !1194
  br i1 %32, label %33, label %38, !dbg !1196

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* @check_input_order, align 4, !dbg !1197, !tbaa !907
  %35 = icmp eq i32 %34, 1, !dbg !1199
  %36 = zext i1 %35 to i32, !dbg !1197
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0), i32 5) #12, !dbg !1200
  tail call void (i32, i32, i8*, ...) @error(i32 %36, i32 0, i8* %37, i32 %2) #12, !dbg !1201
  store i8 1, i8* %10, align 1, !dbg !1202, !tbaa !901
  br label %38, !dbg !1203

; <label>:38:                                     ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1204
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1207, metadata !DIExpression()), !dbg !1208
  store i8* %0, i8** @file_name, align 8, !dbg !1209, !tbaa !726
  ret void, !dbg !1210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1211 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1217, !tbaa !901
  ret void, !dbg !1218
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1219 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1226, !tbaa !726
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1227
  %3 = icmp eq i32 %2, 0, !dbg !1228
  br i1 %3, label %22, label %4, !dbg !1229

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1230, !tbaa !901, !range !1039
  %6 = icmp eq i8 %5, 0, !dbg !1230
  br i1 %6, label %11, label %7, !dbg !1231

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1232
  %9 = load i32, i32* %8, align 4, !dbg !1232, !tbaa !948
  %10 = icmp eq i32 %9, 32, !dbg !1233
  br i1 %10, label %22, label %11, !dbg !1234

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i32 5) #12, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %12, metadata !1223, metadata !DIExpression()), !dbg !1236
  %13 = load i8*, i8** @file_name, align 8, !dbg !1237, !tbaa !726
  %14 = icmp eq i8* %13, null, !dbg !1237
  %15 = tail call i32* @__errno_location() #17, !dbg !1239
  %16 = load i32, i32* %15, align 4, !dbg !1239, !tbaa !948
  br i1 %14, label %19, label %17, !dbg !1240

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1241
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.58, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1242
  br label %20, !dbg !1242

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.59, i64 0, i64 0), i8* %12) #12, !dbg !1243
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1244, !tbaa !948
  tail call void @_exit(i32 %21) #15, !dbg !1245
  unreachable, !dbg !1245

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1246, !tbaa !726
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1248
  %25 = icmp eq i32 %24, 0, !dbg !1249
  br i1 %25, label %28, label %26, !dbg !1250

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1251, !tbaa !948
  tail call void @_exit(i32 %27) #15, !dbg !1252
  unreachable, !dbg !1252

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1253
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1262, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i64 %1, metadata !1263, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %2, metadata !1264, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %3, metadata !1265, metadata !DIExpression()), !dbg !1271
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1272
  call void @llvm.dbg.value(metadata i32 %5, metadata !1266, metadata !DIExpression()), !dbg !1272
  ret void, !dbg !1273
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1274 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1312, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 %1, metadata !1313, metadata !DIExpression()), !dbg !1315
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1316
  br i1 %3, label %7, label %4, !dbg !1318

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %5, metadata !1262, metadata !DIExpression()) #12, !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1263, metadata !DIExpression()) #12, !dbg !1322
  call void @llvm.dbg.value(metadata i64 0, metadata !1264, metadata !DIExpression()) #12, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %1, metadata !1265, metadata !DIExpression()) #12, !dbg !1324
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %6, metadata !1266, metadata !DIExpression()) #12, !dbg !1325
  br label %7, !dbg !1326

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1327
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #7 !dbg !1328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1367, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i8* %1, metadata !1368, metadata !DIExpression()), !dbg !1383
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1384
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !1369, metadata !DIExpression()), !dbg !1385
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1386
  br i1 %4, label %25, label %5, !dbg !1387

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #12, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %6, metadata !1370, metadata !DIExpression()), !dbg !1389
  %7 = icmp ult i32 %6, 3, !dbg !1390
  br i1 %7, label %8, label %25, !dbg !1390

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #12, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %9, metadata !1373, metadata !DIExpression()), !dbg !1392
  %10 = icmp slt i32 %9, 0, !dbg !1393
  br i1 %10, label %11, label %15, !dbg !1394

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !1395
  %13 = load i32, i32* %12, align 4, !dbg !1395, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %13, metadata !1376, metadata !DIExpression()), !dbg !1396
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1397
  store i32 %13, i32* %12, align 4, !dbg !1398, !tbaa !948
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1399
  %17 = icmp eq i32 %16, 0, !dbg !1400
  br i1 %17, label %18, label %21, !dbg !1401

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #12, !dbg !1402
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1369, metadata !DIExpression()), !dbg !1385
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1403
  br i1 %20, label %21, label %25, !dbg !1404

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !1405
  %23 = load i32, i32* %22, align 4, !dbg !1405, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %23, metadata !1379, metadata !DIExpression()), !dbg !1406
  %24 = tail call i32 @close(i32 %9) #12, !dbg !1407
  store i32 %23, i32* %22, align 4, !dbg !1408, !tbaa !948
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !1409
  ret %struct._IO_FILE* %26, !dbg !1410
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !1411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 1, metadata !1417, metadata !DIExpression()), !dbg !1420
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %2, metadata !1418, metadata !DIExpression()), !dbg !1422
  %3 = icmp eq i8* %2, null, !dbg !1423
  br i1 %3, label %11, label %4, !dbg !1425

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #14, !dbg !1426
  %6 = icmp eq i32 %5, 0, !dbg !1431
  br i1 %6, label %10, label %7, !dbg !1432

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.69, i64 0, i64 0)) #14, !dbg !1433
  %9 = icmp eq i32 %8, 0, !dbg !1434
  br i1 %9, label %10, label %11, !dbg !1435

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1420
  br label %11, !dbg !1436

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !1437
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1438 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1443, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %1, metadata !1444, metadata !DIExpression()), !dbg !1447
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1448
  call void @llvm.dbg.value(metadata i8* %3, metadata !1445, metadata !DIExpression()), !dbg !1449
  store i8 0, i8* %3, align 1, !dbg !1450, !tbaa !907
  br label %4, !dbg !1451

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1452
  call void @llvm.dbg.value(metadata i8* %6, metadata !1445, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %5, metadata !1443, metadata !DIExpression()), !dbg !1446
  %7 = urem i64 %5, 10, !dbg !1455
  %8 = trunc i64 %7 to i8, !dbg !1456
  %9 = or i8 %8, 48, !dbg !1456
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %10, metadata !1445, metadata !DIExpression()), !dbg !1449
  store i8 %9, i8* %10, align 1, !dbg !1458, !tbaa !907
  %11 = udiv i64 %5, 10, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %11, metadata !1443, metadata !DIExpression()), !dbg !1446
  %12 = icmp ugt i64 %5, 9, !dbg !1460
  br i1 %12, label %4, label %13, !dbg !1461, !llvm.loop !1462

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1445, metadata !DIExpression()), !dbg !1449
  ret i8* %10, !dbg !1465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #7 !dbg !1466 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1477, metadata !DIExpression()), !dbg !1478
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1479
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 24, i1 false), !dbg !1479
  ret void, !dbg !1480
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #7 !dbg !1481 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1519, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1520, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1523, metadata !DIExpression()) #12, !dbg !1538
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1528, metadata !DIExpression()) #12, !dbg !1540
  call void @llvm.dbg.value(metadata i8 10, metadata !1529, metadata !DIExpression()) #12, !dbg !1541
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1542
  %4 = load i8*, i8** %3, align 8, !dbg !1542, !tbaa !1042
  call void @llvm.dbg.value(metadata i8* %4, metadata !1531, metadata !DIExpression()) #12, !dbg !1543
  call void @llvm.dbg.value(metadata i8* %4, metadata !1532, metadata !DIExpression()) #12, !dbg !1544
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1545
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1546, metadata !DIExpression()) #12, !dbg !1551
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1554
  %7 = load i32, i32* %6, align 8, !dbg !1554, !tbaa !1016
  %8 = and i32 %7, 16, !dbg !1554
  %9 = icmp eq i32 %8, 0, !dbg !1555
  br i1 %9, label %10, label %62, !dbg !1556

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1545, !tbaa !1557
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %12, metadata !1533, metadata !DIExpression()) #12, !dbg !1559
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1560

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ], !dbg !1565
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ], !dbg !1566
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ], !dbg !1565
  call void @llvm.dbg.value(metadata i8* %18, metadata !1533, metadata !DIExpression()) #12, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %17, metadata !1532, metadata !DIExpression()) #12, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %16, metadata !1531, metadata !DIExpression()) #12, !dbg !1543
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1563, metadata !DIExpression()) #12, !dbg !1567
  %19 = load i8*, i8** %13, align 8, !dbg !1560, !tbaa !1568
  %20 = load i8*, i8** %14, align 8, !dbg !1560, !tbaa !1569
  %21 = icmp ult i8* %19, %20, !dbg !1560
  br i1 %21, label %22, label %26, !dbg !1560, !prof !1570

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1560
  store i8* %23, i8** %13, align 8, !dbg !1560, !tbaa !1568
  %24 = load i8, i8* %19, align 1, !dbg !1560, !tbaa !907
  %25 = zext i8 %24 to i32, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %27, metadata !1530, metadata !DIExpression()) #12, !dbg !1571
  br label %39, !dbg !1572

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %27, metadata !1530, metadata !DIExpression()) #12, !dbg !1571
  %28 = icmp eq i32 %27, -1, !dbg !1573
  br i1 %28, label %29, label %39, !dbg !1572

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1575
  br i1 %30, label %62, label %31, !dbg !1578

; <label>:31:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1579, metadata !DIExpression()) #12, !dbg !1582
  %32 = load i32, i32* %6, align 8, !dbg !1584, !tbaa !1016
  %33 = and i32 %32, 32, !dbg !1584
  %34 = icmp eq i32 %33, 0, !dbg !1585
  br i1 %34, label %35, label %62, !dbg !1586

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1587
  %37 = load i8, i8* %36, align 1, !dbg !1587, !tbaa !907
  %38 = icmp eq i8 %37, 10, !dbg !1589
  br i1 %38, label %55, label %39, !dbg !1590

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !1566
  call void @llvm.dbg.value(metadata i32 %40, metadata !1530, metadata !DIExpression()) #12, !dbg !1571
  %41 = icmp eq i8* %17, %18, !dbg !1591
  br i1 %41, label %42, label %48, !dbg !1592

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !1593, !tbaa !1557
  call void @llvm.dbg.value(metadata i64 %43, metadata !1534, metadata !DIExpression()) #12, !dbg !1594
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #12, !dbg !1595
  call void @llvm.dbg.value(metadata i8* %44, metadata !1531, metadata !DIExpression()) #12, !dbg !1543
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1596
  call void @llvm.dbg.value(metadata i8* %45, metadata !1532, metadata !DIExpression()) #12, !dbg !1544
  store i8* %44, i8** %3, align 8, !dbg !1597, !tbaa !1042
  %46 = load i64, i64* %5, align 8, !dbg !1598, !tbaa !1557
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %47, metadata !1533, metadata !DIExpression()) #12, !dbg !1559
  br label %48, !dbg !1600

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !1601
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !1601
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !1601
  call void @llvm.dbg.value(metadata i8* %51, metadata !1533, metadata !DIExpression()) #12, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %50, metadata !1532, metadata !DIExpression()) #12, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %49, metadata !1531, metadata !DIExpression()) #12, !dbg !1543
  %52 = trunc i32 %40 to i8, !dbg !1602
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %53, metadata !1532, metadata !DIExpression()) #12, !dbg !1544
  store i8 %52, i8* %50, align 1, !dbg !1604, !tbaa !907
  %54 = icmp eq i32 %40, 10, !dbg !1605
  br i1 %54, label %55, label %15, !dbg !1606, !llvm.loop !1607

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !1565
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !1566
  call void @llvm.dbg.value(metadata i8* %57, metadata !1532, metadata !DIExpression()) #12, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %56, metadata !1531, metadata !DIExpression()) #12, !dbg !1543
  %58 = ptrtoint i8* %57 to i64, !dbg !1610
  %59 = ptrtoint i8* %56 to i64, !dbg !1610
  %60 = sub i64 %58, %59, !dbg !1610
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1611
  store i64 %60, i64* %61, align 8, !dbg !1612, !tbaa !1045
  br label %62, !dbg !1613

; <label>:62:                                     ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ], !dbg !1601
  ret %struct.linebuffer* %63, !dbg !1614
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #7 !dbg !1524 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1523, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1528, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 %2, metadata !1529, metadata !DIExpression()), !dbg !1617
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1618
  %5 = load i8*, i8** %4, align 8, !dbg !1618, !tbaa !1042
  call void @llvm.dbg.value(metadata i8* %5, metadata !1531, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8* %5, metadata !1532, metadata !DIExpression()), !dbg !1620
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1621
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1546, metadata !DIExpression()), !dbg !1622
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1624
  %8 = load i32, i32* %7, align 8, !dbg !1624, !tbaa !1016
  %9 = and i32 %8, 16, !dbg !1624
  %10 = icmp eq i32 %9, 0, !dbg !1625
  br i1 %10, label %11, label %64, !dbg !1626

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !1621, !tbaa !1557
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %13, metadata !1533, metadata !DIExpression()), !dbg !1628
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !1629

; <label>:17:                                     ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ], !dbg !1631
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ], !dbg !1632
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ], !dbg !1631
  call void @llvm.dbg.value(metadata i8* %20, metadata !1533, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %19, metadata !1532, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %18, metadata !1531, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1563, metadata !DIExpression()) #12, !dbg !1633
  %21 = load i8*, i8** %14, align 8, !dbg !1629, !tbaa !1568
  %22 = load i8*, i8** %15, align 8, !dbg !1629, !tbaa !1569
  %23 = icmp ult i8* %21, %22, !dbg !1629
  br i1 %23, label %24, label %28, !dbg !1629, !prof !1570

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1629
  store i8* %25, i8** %14, align 8, !dbg !1629, !tbaa !1568
  %26 = load i8, i8* %21, align 1, !dbg !1629, !tbaa !907
  %27 = zext i8 %26 to i32, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %29, metadata !1530, metadata !DIExpression()), !dbg !1634
  br label %41, !dbg !1635

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %29, metadata !1530, metadata !DIExpression()), !dbg !1634
  %30 = icmp eq i32 %29, -1, !dbg !1636
  br i1 %30, label %31, label %41, !dbg !1635

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !1637
  br i1 %32, label %64, label %33, !dbg !1638

; <label>:33:                                     ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1579, metadata !DIExpression()), !dbg !1639
  %34 = load i32, i32* %7, align 8, !dbg !1641, !tbaa !1016
  %35 = and i32 %34, 32, !dbg !1641
  %36 = icmp eq i32 %35, 0, !dbg !1642
  br i1 %36, label %37, label %64, !dbg !1643

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1644
  %39 = load i8, i8* %38, align 1, !dbg !1644, !tbaa !907
  %40 = icmp eq i8 %39, %2, !dbg !1645
  br i1 %40, label %57, label %41, !dbg !1646

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %42, metadata !1530, metadata !DIExpression()), !dbg !1634
  %43 = icmp eq i8* %19, %20, !dbg !1647
  br i1 %43, label %44, label %50, !dbg !1648

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !1649, !tbaa !1557
  call void @llvm.dbg.value(metadata i64 %45, metadata !1534, metadata !DIExpression()), !dbg !1650
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #12, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %46, metadata !1531, metadata !DIExpression()), !dbg !1619
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %47, metadata !1532, metadata !DIExpression()), !dbg !1620
  store i8* %46, i8** %4, align 8, !dbg !1653, !tbaa !1042
  %48 = load i64, i64* %6, align 8, !dbg !1654, !tbaa !1557
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %49, metadata !1533, metadata !DIExpression()), !dbg !1628
  br label %50, !dbg !1656

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !1657
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !1657
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8* %53, metadata !1533, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %52, metadata !1532, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %51, metadata !1531, metadata !DIExpression()), !dbg !1619
  %54 = trunc i32 %42 to i8, !dbg !1658
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1659
  call void @llvm.dbg.value(metadata i8* %55, metadata !1532, metadata !DIExpression()), !dbg !1620
  store i8 %54, i8* %52, align 1, !dbg !1660, !tbaa !907
  %56 = icmp eq i32 %42, %16, !dbg !1661
  br i1 %56, label %57, label %17, !dbg !1662, !llvm.loop !1607

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !1631
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !1632
  call void @llvm.dbg.value(metadata i8* %59, metadata !1532, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %58, metadata !1531, metadata !DIExpression()), !dbg !1619
  %60 = ptrtoint i8* %59 to i64, !dbg !1663
  %61 = ptrtoint i8* %58 to i64, !dbg !1663
  %62 = sub i64 %60, %61, !dbg !1663
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1664
  store i64 %62, i64* %63, align 8, !dbg !1665, !tbaa !1045
  br label %64, !dbg !1666

; <label>:64:                                     ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ], !dbg !1657
  ret %struct.linebuffer* %65, !dbg !1667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #7 !dbg !1668 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1670, metadata !DIExpression()), !dbg !1671
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1672
  %3 = load i8*, i8** %2, align 8, !dbg !1672, !tbaa !1042
  tail call void @free(i8* %3) #12, !dbg !1673
  ret void, !dbg !1674
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @memcmp2(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #11 !dbg !1675 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1680, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %1, metadata !1681, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8* %2, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %3, metadata !1683, metadata !DIExpression()), !dbg !1688
  %5 = icmp ugt i64 %1, %3, !dbg !1689
  %6 = select i1 %5, i64 %3, i64 %1, !dbg !1690
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %6) #14, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %7, metadata !1684, metadata !DIExpression()), !dbg !1692
  %8 = icmp eq i32 %7, 0, !dbg !1693
  br i1 %8, label %9, label %13, !dbg !1695

; <label>:9:                                      ; preds = %4
  %10 = icmp ult i64 %1, %3, !dbg !1696
  br i1 %10, label %13, label %11, !dbg !1699

; <label>:11:                                     ; preds = %9
  %12 = zext i1 %5 to i32, !dbg !1700
  ret i32 %12, !dbg !1700

; <label>:13:                                     ; preds = %9, %4
  %14 = phi i32 [ %7, %4 ], [ -1, %9 ], !dbg !1701
  call void @llvm.dbg.value(metadata i32 %14, metadata !1684, metadata !DIExpression()), !dbg !1692
  ret i32 %14, !dbg !1702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1703 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1705, metadata !DIExpression()), !dbg !1708
  %2 = icmp eq i8* %0, null, !dbg !1709
  br i1 %2, label %3, label %6, !dbg !1711

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1712, !tbaa !726
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.82, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1714
  tail call void @abort() #15, !dbg !1715
  unreachable, !dbg !1715

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %7, metadata !1706, metadata !DIExpression()), !dbg !1717
  %8 = icmp eq i8* %7, null, !dbg !1718
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1719
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1720
  call void @llvm.dbg.value(metadata i8* %10, metadata !1707, metadata !DIExpression()), !dbg !1721
  %11 = ptrtoint i8* %10 to i64, !dbg !1722
  %12 = ptrtoint i8* %0 to i64, !dbg !1722
  %13 = sub i64 %11, %12, !dbg !1722
  %14 = icmp sgt i64 %13, 6, !dbg !1724
  br i1 %14, label %15, label %24, !dbg !1725

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1726
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.83, i64 0, i64 0), i64 7) #14, !dbg !1727
  %18 = icmp eq i32 %17, 0, !dbg !1728
  br i1 %18, label %19, label %24, !dbg !1729

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1705, metadata !DIExpression()), !dbg !1708
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i64 3) #14, !dbg !1730
  %21 = icmp eq i32 %20, 0, !dbg !1733
  br i1 %21, label %22, label %24, !dbg !1734

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %23, metadata !1705, metadata !DIExpression()), !dbg !1708
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1737, !tbaa !726
  br label %24, !dbg !1738

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1705, metadata !DIExpression()), !dbg !1708
  store i8* %25, i8** @program_name, align 8, !dbg !1739, !tbaa !726
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1740, !tbaa !726
  ret void, !dbg !1741
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1742 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1747, metadata !DIExpression()), !dbg !1750
  %2 = tail call i32* @__errno_location() #17, !dbg !1751
  %3 = load i32, i32* %2, align 4, !dbg !1751, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %3, metadata !1748, metadata !DIExpression()), !dbg !1752
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1753
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1753
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1753
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1754
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1749, metadata !DIExpression()), !dbg !1755
  store i32 %3, i32* %2, align 4, !dbg !1756, !tbaa !948
  ret %struct.quoting_options* %8, !dbg !1757
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1758 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1764, metadata !DIExpression()), !dbg !1765
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1766
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1766
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1767
  %5 = load i32, i32* %4, align 8, !dbg !1767, !tbaa !1768
  ret i32 %5, !dbg !1770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1771 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1775, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i32 %1, metadata !1776, metadata !DIExpression()), !dbg !1778
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1779
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1779
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1780
  store i32 %1, i32* %5, align 8, !dbg !1781, !tbaa !1768
  ret void, !dbg !1782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1783 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1787, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 %1, metadata !1788, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %2, metadata !1789, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %1, metadata !1790, metadata !DIExpression()), !dbg !1798
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1799
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1799
  %6 = lshr i8 %1, 5, !dbg !1800
  %7 = zext i8 %6 to i64, !dbg !1800
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1801
  call void @llvm.dbg.value(metadata i32* %8, metadata !1791, metadata !DIExpression()), !dbg !1802
  %9 = and i8 %1, 31, !dbg !1803
  %10 = zext i8 %9 to i32, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %10, metadata !1793, metadata !DIExpression()), !dbg !1804
  %11 = load i32, i32* %8, align 4, !dbg !1805, !tbaa !948
  %12 = lshr i32 %11, %10, !dbg !1806
  %13 = and i32 %12, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %13, metadata !1794, metadata !DIExpression()), !dbg !1808
  %14 = and i32 %2, 1, !dbg !1809
  %15 = xor i32 %13, %14, !dbg !1810
  %16 = shl i32 %15, %10, !dbg !1811
  %17 = xor i32 %16, %11, !dbg !1812
  store i32 %17, i32* %8, align 4, !dbg !1812, !tbaa !948
  ret i32 %13, !dbg !1813
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1814 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1818, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i32 %1, metadata !1819, metadata !DIExpression()), !dbg !1822
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1823
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1818, metadata !DIExpression()), !dbg !1821
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1826
  %6 = load i32, i32* %5, align 4, !dbg !1826, !tbaa !1827
  call void @llvm.dbg.value(metadata i32 %6, metadata !1820, metadata !DIExpression()), !dbg !1828
  store i32 %1, i32* %5, align 4, !dbg !1829, !tbaa !1827
  ret i32 %6, !dbg !1830
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1831 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1835, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %1, metadata !1836, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %2, metadata !1837, metadata !DIExpression()), !dbg !1840
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1841
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1843
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1835, metadata !DIExpression()), !dbg !1838
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1844
  store i32 10, i32* %6, align 8, !dbg !1845, !tbaa !1768
  %7 = icmp ne i8* %1, null, !dbg !1846
  %8 = icmp ne i8* %2, null, !dbg !1848
  %9 = and i1 %7, %8, !dbg !1849
  br i1 %9, label %11, label %10, !dbg !1849

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1850
  unreachable, !dbg !1850

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1851
  store i8* %1, i8** %12, align 8, !dbg !1852, !tbaa !1853
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1854
  store i8* %2, i8** %13, align 8, !dbg !1855, !tbaa !1856
  ret void, !dbg !1857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1862, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %1, metadata !1863, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %2, metadata !1864, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %3, metadata !1865, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1866, metadata !DIExpression()), !dbg !1874
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1875
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1875
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1867, metadata !DIExpression()), !dbg !1876
  %8 = tail call i32* @__errno_location() #17, !dbg !1877
  %9 = load i32, i32* %8, align 4, !dbg !1877, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %9, metadata !1868, metadata !DIExpression()), !dbg !1878
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1879
  %11 = load i32, i32* %10, align 8, !dbg !1879, !tbaa !1768
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1880
  %13 = load i32, i32* %12, align 4, !dbg !1880, !tbaa !1827
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1881
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1882
  %16 = load i8*, i8** %15, align 8, !dbg !1882, !tbaa !1853
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1883
  %18 = load i8*, i8** %17, align 8, !dbg !1883, !tbaa !1856
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %19, metadata !1869, metadata !DIExpression()), !dbg !1885
  store i32 %9, i32* %8, align 4, !dbg !1886, !tbaa !948
  ret i64 %19, !dbg !1887
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1888 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1894, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %1, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %2, metadata !1896, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %3, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 %4, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %5, metadata !1899, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32* %6, metadata !1900, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %7, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %8, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 0, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 0, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* null, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1907, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1908, metadata !DIExpression()), !dbg !1970
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1971
  %14 = icmp eq i64 %13, 1, !dbg !1972
  %15 = lshr i32 %5, 1, !dbg !1973
  %16 = trunc i32 %15 to i8, !dbg !1973
  %17 = and i8 %16, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i8 %17, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !1976
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1977

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1967
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1968
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1969
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1970
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1978
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1974
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1975
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1976
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %39, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %38, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %37, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %36, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %35, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %34, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %33, metadata !1907, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %32, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %31, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 0, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %30, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %29, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %28, metadata !1898, metadata !DIExpression()), !dbg !1961
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
  ], !dbg !1980

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %36, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 5, metadata !1898, metadata !DIExpression()), !dbg !1961
  br label %93, !dbg !1981

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 5, metadata !1898, metadata !DIExpression()), !dbg !1961
  %43 = and i8 %36, 1, !dbg !1982
  %44 = icmp eq i8 %43, 0, !dbg !1982
  br i1 %44, label %45, label %93, !dbg !1981

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1984
  br i1 %46, label %93, label %47, !dbg !1987

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1984, !tbaa !907
  br label %93, !dbg !1984

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), i32 %28), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %49, metadata !1901, metadata !DIExpression()), !dbg !1964
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i32 %28), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %50, metadata !1902, metadata !DIExpression()), !dbg !1965
  br label %51, !dbg !1993

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %52, metadata !1901, metadata !DIExpression()), !dbg !1964
  %54 = and i8 %36, 1, !dbg !1994
  %55 = icmp eq i8 %54, 0, !dbg !1994
  br i1 %55, label %56, label %71, !dbg !1996

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1904, metadata !DIExpression()), !dbg !1966
  %57 = load i8, i8* %52, align 1, !dbg !1997, !tbaa !907
  %58 = icmp eq i8 %57, 0, !dbg !2000
  br i1 %58, label %71, label %59, !dbg !2000

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %62, metadata !1904, metadata !DIExpression()), !dbg !1966
  %63 = icmp ult i64 %62, %40, !dbg !2001
  br i1 %63, label %64, label %66, !dbg !2004

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2001
  store i8 %60, i8* %65, align 1, !dbg !2001, !tbaa !907
  br label %66, !dbg !2001

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2004
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %68, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %67, metadata !1904, metadata !DIExpression()), !dbg !1966
  %69 = load i8, i8* %68, align 1, !dbg !1997, !tbaa !907
  %70 = icmp eq i8 %69, 0, !dbg !2000
  br i1 %70, label %71, label %59, !dbg !2000, !llvm.loop !2006

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1966
  call void @llvm.dbg.value(metadata i64 %72, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %53, metadata !1906, metadata !DIExpression()), !dbg !1968
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %73, metadata !1907, metadata !DIExpression()), !dbg !1969
  br label %93, !dbg !2009

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1908, metadata !DIExpression()), !dbg !1970
  br label %75, !dbg !2010

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1978
  call void @llvm.dbg.value(metadata i8 %76, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1973
  br label %77, !dbg !2011

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1970
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1978
  call void @llvm.dbg.value(metadata i8 %79, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %78, metadata !1908, metadata !DIExpression()), !dbg !1970
  %80 = and i8 %79, 1, !dbg !2012
  %81 = icmp eq i8 %80, 0, !dbg !2012
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2014
  br label %83, !dbg !2014

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2015
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %85, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %84, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 2, metadata !1898, metadata !DIExpression()), !dbg !1961
  %86 = and i8 %85, 1, !dbg !2016
  %87 = icmp eq i8 %86, 0, !dbg !2016
  br i1 %87, label %88, label %93, !dbg !2018

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2019
  br i1 %89, label %93, label %90, !dbg !2022

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2019, !tbaa !907
  br label %93, !dbg !2019

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1973
  br label %93, !dbg !2023

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2024
  unreachable, !dbg !2024

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1966
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %41 ], !dbg !1978
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1978
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1978
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %101, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %99, metadata !1907, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %97, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %94, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 0, metadata !1903, metadata !DIExpression()), !dbg !2026
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
  br label %121, !dbg !2027

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2028
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1966
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1967
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1974
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1975
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1976
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %122, metadata !1903, metadata !DIExpression()), !dbg !2026
  %130 = icmp eq i64 %125, -1, !dbg !2029
  br i1 %130, label %131, label %135, !dbg !2030

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2031
  %133 = load i8, i8* %132, align 1, !dbg !2031, !tbaa !907
  %134 = icmp eq i8 %133, 0, !dbg !2032
  br i1 %134, label %617, label %137, !dbg !2033

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2034
  br i1 %136, label %617, label %137, !dbg !2033

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 0, metadata !1920, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !2037
  br i1 %107, label %138, label %153, !dbg !2038

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2040
  %140 = and i1 %108, %130, !dbg !2041
  br i1 %140, label %141, label %143, !dbg !2041

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %142, metadata !1897, metadata !DIExpression()), !dbg !1960
  br label %143, !dbg !2043

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1897, metadata !DIExpression()), !dbg !1960
  %145 = icmp ugt i64 %139, %144, !dbg !2044
  br i1 %145, label %153, label %146, !dbg !2045

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2046
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2047
  %149 = icmp ne i32 %148, 0, !dbg !2048
  %150 = or i1 %149, %110, !dbg !2049
  %151 = xor i1 %149, true, !dbg !2049
  %152 = zext i1 %151 to i8, !dbg !2049
  br i1 %150, label %153, label %661, !dbg !2049

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2050
  call void @llvm.dbg.value(metadata i8 %155, metadata !1919, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %154, metadata !1897, metadata !DIExpression()), !dbg !1960
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2051
  %157 = load i8, i8* %156, align 1, !dbg !2051, !tbaa !907
  call void @llvm.dbg.value(metadata i8 %157, metadata !1914, metadata !DIExpression()), !dbg !2052
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
  ], !dbg !2053

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2054

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2055

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !2036
  %161 = and i8 %126, 1, !dbg !2059
  %162 = icmp eq i8 %161, 0, !dbg !2059
  %163 = and i1 %114, %162, !dbg !2059
  br i1 %163, label %164, label %180, !dbg !2059

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2061
  br i1 %165, label %166, label %168, !dbg !2065

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2061
  store i8 39, i8* %167, align 1, !dbg !2061, !tbaa !907
  br label %168, !dbg !2061

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %169, metadata !1904, metadata !DIExpression()), !dbg !1966
  %170 = icmp ult i64 %169, %129, !dbg !2066
  br i1 %170, label %171, label %173, !dbg !2069

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2066
  store i8 36, i8* %172, align 1, !dbg !2066, !tbaa !907
  br label %173, !dbg !2066

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %174, metadata !1904, metadata !DIExpression()), !dbg !1966
  %175 = icmp ult i64 %174, %129, !dbg !2070
  br i1 %175, label %176, label %178, !dbg !2073

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2070
  store i8 39, i8* %177, align 1, !dbg !2070, !tbaa !907
  br label %178, !dbg !2070

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %179, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1911, metadata !DIExpression()), !dbg !1974
  br label %180, !dbg !2074

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2025
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %182, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %181, metadata !1904, metadata !DIExpression()), !dbg !1966
  %183 = icmp ult i64 %181, %129, !dbg !2075
  br i1 %183, label %184, label %186, !dbg !2078

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2075
  store i8 92, i8* %185, align 1, !dbg !2075, !tbaa !907
  br label %186, !dbg !2075

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %187, metadata !1904, metadata !DIExpression()), !dbg !1966
  br i1 %104, label %188, label %478, !dbg !2079

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2081
  %190 = icmp ult i64 %189, %154, !dbg !2082
  br i1 %190, label %191, label %467, !dbg !2083

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2084
  %193 = load i8, i8* %192, align 1, !dbg !2084, !tbaa !907
  %194 = add i8 %193, -48, !dbg !2085
  %195 = icmp ult i8 %194, 10, !dbg !2085
  br i1 %195, label %196, label %467, !dbg !2085

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2086
  br i1 %197, label %198, label %200, !dbg !2090

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2086
  store i8 48, i8* %199, align 1, !dbg !2086, !tbaa !907
  br label %200, !dbg !2086

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %201, metadata !1904, metadata !DIExpression()), !dbg !1966
  %202 = icmp ult i64 %201, %129, !dbg !2091
  br i1 %202, label %203, label %205, !dbg !2094

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2091
  store i8 48, i8* %204, align 1, !dbg !2091, !tbaa !907
  br label %205, !dbg !2091

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %206, metadata !1904, metadata !DIExpression()), !dbg !1966
  br label %467, !dbg !2095

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2096

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2097

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2098

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2100

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2102
  %213 = icmp ult i64 %212, %154, !dbg !2103
  br i1 %213, label %214, label %467, !dbg !2104

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2105
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2106
  %217 = load i8, i8* %216, align 1, !dbg !2106, !tbaa !907
  %218 = icmp eq i8 %217, 63, !dbg !2107
  br i1 %218, label %219, label %467, !dbg !2108

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2109
  %221 = load i8, i8* %220, align 1, !dbg !2109, !tbaa !907
  %222 = sext i8 %221 to i32, !dbg !2109
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
  ], !dbg !2110

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2111

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1914, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %212, metadata !1903, metadata !DIExpression()), !dbg !2026
  %225 = icmp ult i64 %123, %129, !dbg !2113
  br i1 %225, label %226, label %228, !dbg !2116

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2113
  store i8 63, i8* %227, align 1, !dbg !2113, !tbaa !907
  br label %228, !dbg !2113

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %229, metadata !1904, metadata !DIExpression()), !dbg !1966
  %230 = icmp ult i64 %229, %129, !dbg !2117
  br i1 %230, label %231, label %233, !dbg !2120

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2117
  store i8 34, i8* %232, align 1, !dbg !2117, !tbaa !907
  br label %233, !dbg !2117

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %234, metadata !1904, metadata !DIExpression()), !dbg !1966
  %235 = icmp ult i64 %234, %129, !dbg !2121
  br i1 %235, label %236, label %238, !dbg !2124

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2121
  store i8 34, i8* %237, align 1, !dbg !2121, !tbaa !907
  br label %238, !dbg !2121

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %239, metadata !1904, metadata !DIExpression()), !dbg !1966
  %240 = icmp ult i64 %239, %129, !dbg !2125
  br i1 %240, label %241, label %243, !dbg !2128

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2125
  store i8 63, i8* %242, align 1, !dbg !2125, !tbaa !907
  br label %243, !dbg !2125

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %244, metadata !1904, metadata !DIExpression()), !dbg !1966
  br label %467, !dbg !2129

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1918, metadata !DIExpression()), !dbg !2130
  br label %255, !dbg !2131

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1918, metadata !DIExpression()), !dbg !2130
  br label %255, !dbg !2132

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1918, metadata !DIExpression()), !dbg !2130
  br label %253, !dbg !2133

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1918, metadata !DIExpression()), !dbg !2130
  br label %253, !dbg !2134

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1918, metadata !DIExpression()), !dbg !2130
  br label %255, !dbg !2135

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1918, metadata !DIExpression()), !dbg !2130
  br i1 %114, label %251, label %252, !dbg !2136

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2137

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2140

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %254, metadata !1918, metadata !DIExpression()), !dbg !2130
  br i1 %113, label %255, label %661, !dbg !2143

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %256, metadata !1918, metadata !DIExpression()), !dbg !2130
  br i1 %103, label %524, label %478, !dbg !2145

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2146
  br i1 %258, label %259, label %264, !dbg !2148

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2149, !tbaa !907
  %261 = icmp ne i8 %260, 0, !dbg !2150
  %262 = icmp ne i64 %122, 0, !dbg !2151
  %263 = or i1 %262, %261, !dbg !2153
  br i1 %263, label %467, label %270, !dbg !2153

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2154
  %266 = icmp ne i64 %122, 0, !dbg !2151
  %267 = or i1 %266, %265, !dbg !2148
  br i1 %267, label %467, label %270, !dbg !2148

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2151
  br i1 %269, label %270, label %467, !dbg !2155

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !2037
  br label %271, !dbg !2156

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2142
  call void @llvm.dbg.value(metadata i8 %272, metadata !1921, metadata !DIExpression()), !dbg !2037
  br i1 %113, label %467, label %661, !dbg !2157

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !2037
  br i1 %114, label %274, label %467, !dbg !2159

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2160

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2163
  %277 = icmp ne i64 %124, 0, !dbg !2165
  %278 = or i1 %277, %276, !dbg !2166
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2166
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %280, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %279, metadata !1905, metadata !DIExpression()), !dbg !1967
  %281 = icmp ult i64 %123, %280, !dbg !2167
  br i1 %281, label %282, label %284, !dbg !2170

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2167
  store i8 39, i8* %283, align 1, !dbg !2167, !tbaa !907
  br label %284, !dbg !2167

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %285, metadata !1904, metadata !DIExpression()), !dbg !1966
  %286 = icmp ult i64 %285, %280, !dbg !2171
  br i1 %286, label %287, label %289, !dbg !2174

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2171
  store i8 92, i8* %288, align 1, !dbg !2171, !tbaa !907
  br label %289, !dbg !2171

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %290, metadata !1904, metadata !DIExpression()), !dbg !1966
  %291 = icmp ult i64 %290, %280, !dbg !2175
  br i1 %291, label %292, label %294, !dbg !2178

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2175
  store i8 39, i8* %293, align 1, !dbg !2175, !tbaa !907
  br label %294, !dbg !2175

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %295, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1974
  br label %467, !dbg !2179

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2180

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1922, metadata !DIExpression()), !dbg !2181
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2182
  %299 = load i16*, i16** %298, align 8, !dbg !2182, !tbaa !726
  %300 = zext i8 %157 to i64, !dbg !2182
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2182
  %302 = load i16, i16* %301, align 2, !dbg !2182, !tbaa !2184
  %303 = lshr i16 %302, 14, !dbg !2185
  %304 = trunc i16 %303 to i8, !dbg !2185
  %305 = and i8 %304, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i8 %305, metadata !1925, metadata !DIExpression()), !dbg !2186
  br label %359, !dbg !2187

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2188
  store i64 0, i64* %10, align 8, !dbg !2189
  call void @llvm.dbg.value(metadata i64 0, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 1, metadata !1925, metadata !DIExpression()), !dbg !2186
  %307 = icmp eq i64 %154, -1, !dbg !2190
  br i1 %307, label %308, label %310, !dbg !2192

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %309, metadata !1897, metadata !DIExpression()), !dbg !1960
  br label %310, !dbg !2194

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2195
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  br label %312, !dbg !2196

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2197
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2198
  call void @llvm.dbg.value(metadata i8 %314, metadata !1925, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2199
  %315 = add i64 %313, %122, !dbg !2200
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2201
  %317 = sub i64 %311, %315, !dbg !2202
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1926, metadata !DIExpression(DW_OP_deref)), !dbg !2203
  call void @llvm.dbg.value(metadata i32* %12, metadata !1943, metadata !DIExpression(DW_OP_deref)), !dbg !2204
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %318, metadata !1946, metadata !DIExpression()), !dbg !2206
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2207

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  %320 = icmp ugt i64 %311, %315, !dbg !2208
  br i1 %320, label %321, label %344, !dbg !2210

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1922, metadata !DIExpression()), !dbg !2181
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2211
  %325 = load i8, i8* %324, align 1, !dbg !2211, !tbaa !907
  %326 = icmp eq i8 %325, 0, !dbg !2210
  br i1 %326, label %344, label %327, !dbg !2212

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %328, metadata !1922, metadata !DIExpression()), !dbg !2181
  %329 = add i64 %328, %122, !dbg !2214
  %330 = icmp ult i64 %329, %311, !dbg !2208
  br i1 %330, label %321, label %344, !dbg !2210, !llvm.loop !2215

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2216
  %333 = and i1 %116, %332, !dbg !2219
  call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()), !dbg !2220
  br i1 %333, label %334, label %347, !dbg !2219

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1947, metadata !DIExpression()), !dbg !2220
  %336 = add i64 %335, %315, !dbg !2221
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2222
  %338 = load i8, i8* %337, align 1, !dbg !2222, !tbaa !907
  %339 = sext i8 %338 to i32, !dbg !2222
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2223

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %341, metadata !1947, metadata !DIExpression()), !dbg !2220
  %342 = icmp ult i64 %341, %318, !dbg !2216
  br i1 %342, label %334, label %347, !dbg !2225, !llvm.loop !2226

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %314, metadata !1925, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %313, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %314, metadata !1925, metadata !DIExpression()), !dbg !2186
  br label %344, !dbg !2228

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1925, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %352, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2228
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2229, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %348, metadata !1943, metadata !DIExpression()), !dbg !2204
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2231
  %350 = icmp eq i32 %349, 0, !dbg !2231
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2232
  call void @llvm.dbg.value(metadata i8 %351, metadata !1925, metadata !DIExpression()), !dbg !2186
  %352 = add i64 %318, %313, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %352, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %351, metadata !1925, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %352, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1926, metadata !DIExpression(DW_OP_deref)), !dbg !2203
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2234
  %354 = icmp eq i32 %353, 0, !dbg !2235
  br i1 %354, label %312, label %355, !dbg !2236, !llvm.loop !2237

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2239
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 2, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 2, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 %94, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %94, metadata !1898, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %100, metadata !1908, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %311, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %351, metadata !1925, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %352, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2239
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2240
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2241
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2241
  call void @llvm.dbg.value(metadata i8 %362, metadata !1925, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %361, metadata !1922, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %360, metadata !1897, metadata !DIExpression()), !dbg !1960
  %363 = and i8 %362, 1, !dbg !2242
  %364 = icmp ne i8 %363, 0, !dbg !2242
  call void @llvm.dbg.value(metadata i8 %363, metadata !1921, metadata !DIExpression()), !dbg !2037
  %365 = icmp ult i64 %361, 2, !dbg !2243
  %366 = or i1 %364, %115, !dbg !2244
  %367 = and i1 %365, %366, !dbg !2245
  br i1 %367, label %467, label %368, !dbg !2245

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %369, metadata !1954, metadata !DIExpression()), !dbg !2247
  br label %370, !dbg !2248

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2249
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2253
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1974
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2249
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2255
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %376, metadata !1920, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %375, metadata !1919, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %374, metadata !1914, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %373, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %372, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %371, metadata !1903, metadata !DIExpression()), !dbg !2026
  br i1 %366, label %423, label %377, !dbg !2259

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2260

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !2036
  %379 = and i8 %373, 1, !dbg !2263
  %380 = icmp eq i8 %379, 0, !dbg !2263
  %381 = and i1 %114, %380, !dbg !2263
  br i1 %381, label %382, label %398, !dbg !2263

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2265
  br i1 %383, label %384, label %386, !dbg !2269

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2265
  store i8 39, i8* %385, align 1, !dbg !2265, !tbaa !907
  br label %386, !dbg !2265

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %387, metadata !1904, metadata !DIExpression()), !dbg !1966
  %388 = icmp ult i64 %387, %129, !dbg !2270
  br i1 %388, label %389, label %391, !dbg !2273

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2270
  store i8 36, i8* %390, align 1, !dbg !2270, !tbaa !907
  br label %391, !dbg !2270

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %392, metadata !1904, metadata !DIExpression()), !dbg !1966
  %393 = icmp ult i64 %392, %129, !dbg !2274
  br i1 %393, label %394, label %396, !dbg !2277

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2274
  store i8 39, i8* %395, align 1, !dbg !2274, !tbaa !907
  br label %396, !dbg !2274

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %397, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1911, metadata !DIExpression()), !dbg !1974
  br label %398, !dbg !2278

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2025
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %400, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %399, metadata !1904, metadata !DIExpression()), !dbg !1966
  %401 = icmp ult i64 %399, %129, !dbg !2279
  br i1 %401, label %402, label %404, !dbg !2282

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2279
  store i8 92, i8* %403, align 1, !dbg !2279, !tbaa !907
  br label %404, !dbg !2279

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %405, metadata !1904, metadata !DIExpression()), !dbg !1966
  %406 = icmp ult i64 %405, %129, !dbg !2283
  br i1 %406, label %407, label %411, !dbg !2286

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2283
  %409 = or i8 %408, 48, !dbg !2283
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2283
  store i8 %409, i8* %410, align 1, !dbg !2283, !tbaa !907
  br label %411, !dbg !2283

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %412, metadata !1904, metadata !DIExpression()), !dbg !1966
  %413 = icmp ult i64 %412, %129, !dbg !2287
  br i1 %413, label %414, label %419, !dbg !2290

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2287
  %416 = and i8 %415, 7, !dbg !2287
  %417 = or i8 %416, 48, !dbg !2287
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2287
  store i8 %417, i8* %418, align 1, !dbg !2287, !tbaa !907
  br label %419, !dbg !2287

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %420, metadata !1904, metadata !DIExpression()), !dbg !1966
  %421 = and i8 %374, 7, !dbg !2291
  %422 = or i8 %421, 48, !dbg !2292
  call void @llvm.dbg.value(metadata i8 %422, metadata !1914, metadata !DIExpression()), !dbg !2052
  br label %432, !dbg !2293

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2294
  %425 = icmp eq i8 %424, 0, !dbg !2294
  br i1 %425, label %432, label %426, !dbg !2295

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2296
  br i1 %427, label %428, label %430, !dbg !2299

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2296
  store i8 92, i8* %429, align 1, !dbg !2296, !tbaa !907
  br label %430, !dbg !2296

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %431, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !2035
  br label %432, !dbg !2300

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2301
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1974
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2302
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2303
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2305
  call void @llvm.dbg.value(metadata i8 %437, metadata !1920, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %436, metadata !1919, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %435, metadata !1914, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %434, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %433, metadata !1904, metadata !DIExpression()), !dbg !1966
  %438 = add i64 %371, 1, !dbg !2306
  %439 = icmp ugt i64 %369, %438, !dbg !2308
  br i1 %439, label %440, label %562, !dbg !2309

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2310
  %442 = icmp ne i8 %441, 0, !dbg !2310
  %443 = and i8 %437, 1, !dbg !2310
  %444 = icmp eq i8 %443, 0, !dbg !2310
  %445 = and i1 %442, %444, !dbg !2310
  br i1 %445, label %446, label %457, !dbg !2310

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2313
  br i1 %447, label %448, label %450, !dbg !2317

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2313
  store i8 39, i8* %449, align 1, !dbg !2313, !tbaa !907
  br label %450, !dbg !2313

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %451, metadata !1904, metadata !DIExpression()), !dbg !1966
  %452 = icmp ult i64 %451, %129, !dbg !2318
  br i1 %452, label %453, label %455, !dbg !2321

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2318
  store i8 39, i8* %454, align 1, !dbg !2318, !tbaa !907
  br label %455, !dbg !2318

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %456, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1974
  br label %457, !dbg !2322

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2323
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %459, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %458, metadata !1904, metadata !DIExpression()), !dbg !1966
  %460 = icmp ult i64 %458, %129, !dbg !2324
  br i1 %460, label %461, label %463, !dbg !2326

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2324
  store i8 %435, i8* %462, align 1, !dbg !2324, !tbaa !907
  br label %463, !dbg !2324

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %464, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %438, metadata !1903, metadata !DIExpression()), !dbg !2026
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2327
  %466 = load i8, i8* %465, align 1, !dbg !2327, !tbaa !907
  call void @llvm.dbg.value(metadata i8 %466, metadata !1914, metadata !DIExpression()), !dbg !2052
  br label %370, !dbg !2328, !llvm.loop !2329

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2332
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2025
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1967
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2333
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2025
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2025
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2050
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2050
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2050
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %476, metadata !1921, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %475, metadata !1920, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %155, metadata !1919, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 %474, metadata !1914, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %473, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %472, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %471, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %470, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %469, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %468, metadata !1903, metadata !DIExpression()), !dbg !2026
  br i1 %105, label %489, label %478, !dbg !2334

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
  br i1 %112, label %490, label %512, !dbg !2336

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2337

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
  %501 = lshr i8 %494, 5, !dbg !2338
  %502 = zext i8 %501 to i64, !dbg !2338
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2339
  %504 = load i32, i32* %503, align 4, !dbg !2339, !tbaa !948
  %505 = and i8 %494, 31, !dbg !2340
  %506 = zext i8 %505 to i32, !dbg !2340
  %507 = shl i32 1, %506, !dbg !2341
  %508 = and i32 %504, %507, !dbg !2341
  %509 = icmp eq i32 %508, 0, !dbg !2341
  %510 = icmp eq i8 %155, 0, !dbg !2342
  %511 = and i1 %510, %509, !dbg !2343
  br i1 %511, label %562, label %524, !dbg !2343

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
  %523 = icmp eq i8 %155, 0, !dbg !2342
  br i1 %523, label %562, label %524, !dbg !2344

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2345
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2025
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1967
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2333
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1974
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1975
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2346
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2050
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %532, metadata !1921, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %531, metadata !1914, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %530, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %529, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %528, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %527, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %526, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %525, metadata !1903, metadata !DIExpression()), !dbg !2026
  br i1 %110, label %534, label %661, !dbg !2349

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !2036
  %535 = and i8 %529, 1, !dbg !2351
  %536 = icmp eq i8 %535, 0, !dbg !2351
  %537 = and i1 %114, %536, !dbg !2351
  br i1 %537, label %538, label %554, !dbg !2351

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2353
  br i1 %539, label %540, label %542, !dbg !2357

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2353
  store i8 39, i8* %541, align 1, !dbg !2353, !tbaa !907
  br label %542, !dbg !2353

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %543, metadata !1904, metadata !DIExpression()), !dbg !1966
  %544 = icmp ult i64 %543, %533, !dbg !2358
  br i1 %544, label %545, label %547, !dbg !2361

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2358
  store i8 36, i8* %546, align 1, !dbg !2358, !tbaa !907
  br label %547, !dbg !2358

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %548, metadata !1904, metadata !DIExpression()), !dbg !1966
  %549 = icmp ult i64 %548, %533, !dbg !2362
  br i1 %549, label %550, label %552, !dbg !2365

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2362
  store i8 39, i8* %551, align 1, !dbg !2362, !tbaa !907
  br label %552, !dbg !2362

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %553, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 1, metadata !1911, metadata !DIExpression()), !dbg !1974
  br label %554, !dbg !2366

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2323
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %556, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %555, metadata !1904, metadata !DIExpression()), !dbg !1966
  %557 = icmp ult i64 %555, %533, !dbg !2367
  br i1 %557, label %558, label %560, !dbg !2370

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2367
  store i8 92, i8* %559, align 1, !dbg !2367, !tbaa !907
  br label %560, !dbg !2367

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %561, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %572, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %571, metadata !1921, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %570, metadata !1920, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %569, metadata !1914, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %568, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %567, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %566, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %565, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %564, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %563, metadata !1903, metadata !DIExpression()), !dbg !2026
  br label %589, !dbg !2371

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2345
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2025
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1967
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2333
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1974
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1975
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2374
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2050
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2050
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %571, metadata !1921, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %570, metadata !1920, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %569, metadata !1914, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 %568, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %567, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %566, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %565, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %564, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %563, metadata !1903, metadata !DIExpression()), !dbg !2026
  %573 = and i8 %567, 1, !dbg !2371
  %574 = icmp ne i8 %573, 0, !dbg !2371
  %575 = and i8 %570, 1, !dbg !2371
  %576 = icmp eq i8 %575, 0, !dbg !2371
  %577 = and i1 %574, %576, !dbg !2371
  br i1 %577, label %578, label %589, !dbg !2371

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2375
  br i1 %579, label %580, label %582, !dbg !2379

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2375
  store i8 39, i8* %581, align 1, !dbg !2375, !tbaa !907
  br label %582, !dbg !2375

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %583, metadata !1904, metadata !DIExpression()), !dbg !1966
  %584 = icmp ult i64 %583, %572, !dbg !2380
  br i1 %584, label %585, label %587, !dbg !2383

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2380
  store i8 39, i8* %586, align 1, !dbg !2380, !tbaa !907
  br label %587, !dbg !2380

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %588, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1974
  br label %589, !dbg !2384

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2323
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %598, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %597, metadata !1904, metadata !DIExpression()), !dbg !1966
  %599 = icmp ult i64 %597, %590, !dbg !2385
  br i1 %599, label %600, label %602, !dbg !2388

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2385
  store i8 %592, i8* %601, align 1, !dbg !2385, !tbaa !907
  br label %602, !dbg !2385

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %603, metadata !1904, metadata !DIExpression()), !dbg !1966
  %604 = and i8 %591, 1, !dbg !2389
  %605 = icmp eq i8 %604, 0, !dbg !2389
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2391
  call void @llvm.dbg.value(metadata i8 %606, metadata !1913, metadata !DIExpression()), !dbg !1976
  br label %607, !dbg !2392

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2345
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2025
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1967
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2333
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1974
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2025
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1976
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %614, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %613, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %612, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %611, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %610, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %609, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %608, metadata !1903, metadata !DIExpression()), !dbg !2026
  %616 = add i64 %608, 1, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %616, metadata !1903, metadata !DIExpression()), !dbg !2026
  br label %121, !dbg !2394, !llvm.loop !2395

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %618, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %126, metadata !1911, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %127, metadata !1912, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %128, metadata !1913, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  %619 = icmp eq i64 %123, 0, !dbg !2397
  %620 = and i1 %114, %619, !dbg !2399
  %621 = xor i1 %620, true, !dbg !2399
  %622 = or i1 %110, %621, !dbg !2399
  br i1 %622, label %623, label %661, !dbg !2399

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2400
  %625 = xor i1 %624, true, !dbg !2400
  %626 = and i8 %127, 1, !dbg !2402
  %627 = icmp eq i8 %626, 0, !dbg !2402
  %628 = or i1 %627, %625, !dbg !2400
  br i1 %628, label %638, label %629, !dbg !2400

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2403
  %631 = icmp eq i8 %630, 0, !dbg !2403
  br i1 %631, label %634, label %632, !dbg !2406

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %618, metadata !1897, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %95, metadata !1901, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %96, metadata !1902, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %124, metadata !1905, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %125, metadata !1897, metadata !DIExpression()), !dbg !1960
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2407
  br label %671, !dbg !2408

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2409
  %636 = icmp ne i64 %124, 0, !dbg !2411
  %637 = and i1 %636, %635, !dbg !2412
  br i1 %637, label %27, label %638, !dbg !2412

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %129, metadata !1895, metadata !DIExpression()), !dbg !1958
  %639 = icmp ne i8* %98, null, !dbg !2413
  %640 = and i1 %639, %110, !dbg !2415
  br i1 %640, label %641, label %656, !dbg !2415

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %123, metadata !1904, metadata !DIExpression()), !dbg !1966
  %642 = load i8, i8* %98, align 1, !dbg !2416, !tbaa !907
  %643 = icmp eq i8 %642, 0, !dbg !2419
  br i1 %643, label %656, label %644, !dbg !2419

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %647, metadata !1904, metadata !DIExpression()), !dbg !1966
  %648 = icmp ult i64 %647, %129, !dbg !2420
  br i1 %648, label %649, label %651, !dbg !2423

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2420
  store i8 %645, i8* %650, align 1, !dbg !2420, !tbaa !907
  br label %651, !dbg !2420

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2423
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2424
  call void @llvm.dbg.value(metadata i8* %653, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %652, metadata !1904, metadata !DIExpression()), !dbg !1966
  %654 = load i8, i8* %653, align 1, !dbg !2416, !tbaa !907
  %655 = icmp eq i8 %654, 0, !dbg !2419
  br i1 %655, label %656, label %644, !dbg !2419, !llvm.loop !2425

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1966
  call void @llvm.dbg.value(metadata i64 %657, metadata !1904, metadata !DIExpression()), !dbg !1966
  %658 = icmp ult i64 %657, %129, !dbg !2427
  br i1 %658, label %659, label %671, !dbg !2429

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2430
  store i8 0, i8* %660, align 1, !dbg !2431, !tbaa !907
  br label %671, !dbg !2430

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1895, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %663, metadata !1897, metadata !DIExpression()), !dbg !1960
  %665 = icmp ne i32 %662, 2, !dbg !2432
  %666 = icmp eq i8 %102, 0, !dbg !2434
  %667 = or i1 %665, %666, !dbg !2435
  call void @llvm.dbg.value(metadata i32 4, metadata !1898, metadata !DIExpression()), !dbg !1961
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %668, metadata !1898, metadata !DIExpression()), !dbg !1961
  %669 = and i32 %5, -3, !dbg !2436
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2437
  br label %671, !dbg !2438

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2439
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2440 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2444, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()), !dbg !2449
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %3, metadata !2446, metadata !DIExpression()), !dbg !2451
  %4 = icmp eq i8* %3, %0, !dbg !2452
  br i1 %4, label %5, label %71, !dbg !2454

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %6, metadata !2447, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %6, metadata !2457, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* null, metadata !2463, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 85, metadata !2464, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 84, metadata !2465, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 70, metadata !2466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 45, metadata !2467, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 56, metadata !2468, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2469, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, metadata !2471, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2472, metadata !DIExpression()), !dbg !2485
  %7 = load i8, i8* %6, align 1, !dbg !2486, !tbaa !907
  %8 = and i8 %7, -33, !dbg !2486
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2486

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2488, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8* null, metadata !2493, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 84, metadata !2494, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 70, metadata !2495, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 45, metadata !2496, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 56, metadata !2497, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2514
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2515
  %11 = load i8, i8* %10, align 1, !dbg !2515, !tbaa !907
  %12 = and i8 %11, -33, !dbg !2515
  %13 = icmp eq i8 %12, 84, !dbg !2515
  br i1 %13, label %14, label %68, !dbg !2515

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2517, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8* null, metadata !2522, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 70, metadata !2523, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 45, metadata !2524, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 56, metadata !2525, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2526, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, metadata !2528, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2541
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2542
  %16 = load i8, i8* %15, align 1, !dbg !2542, !tbaa !907
  %17 = and i8 %16, -33, !dbg !2542
  %18 = icmp eq i8 %17, 70, !dbg !2542
  br i1 %18, label %19, label %68, !dbg !2542

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2544, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* null, metadata !2549, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 45, metadata !2550, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 56, metadata !2551, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2566
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2567
  %21 = load i8, i8* %20, align 1, !dbg !2567, !tbaa !907
  %22 = icmp eq i8 %21, 45, !dbg !2567
  br i1 %22, label %23, label %68, !dbg !2569

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2570, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* null, metadata !2575, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 56, metadata !2576, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2590
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2591
  %25 = load i8, i8* %24, align 1, !dbg !2591, !tbaa !907
  %26 = icmp eq i8 %25, 56, !dbg !2591
  br i1 %26, label %27, label %68, !dbg !2593

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2594, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* null, metadata !2599, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2600, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2612
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2613
  %29 = load i8, i8* %28, align 1, !dbg !2613, !tbaa !907
  %30 = icmp eq i8 %29, 0, !dbg !2613
  br i1 %30, label %31, label %68, !dbg !2615

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2616, !tbaa !907
  %33 = icmp eq i8 %32, 96, !dbg !2617
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.98, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.99, i64 0, i64 0), !dbg !2616
  br label %71, !dbg !2618

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2488, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* null, metadata !2493, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8 66, metadata !2494, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 49, metadata !2495, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 56, metadata !2496, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 48, metadata !2497, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 51, metadata !2498, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 48, metadata !2499, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2631
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2632
  %37 = load i8, i8* %36, align 1, !dbg !2632, !tbaa !907
  %38 = and i8 %37, -33, !dbg !2632
  %39 = icmp eq i8 %38, 66, !dbg !2632
  br i1 %39, label %40, label %68, !dbg !2632

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2517, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8* null, metadata !2522, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 49, metadata !2523, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 56, metadata !2524, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 48, metadata !2525, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 51, metadata !2526, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 48, metadata !2527, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2528, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2642
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2643
  %42 = load i8, i8* %41, align 1, !dbg !2643, !tbaa !907
  %43 = icmp eq i8 %42, 49, !dbg !2643
  br i1 %43, label %44, label %68, !dbg !2644

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2544, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8* null, metadata !2549, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 56, metadata !2550, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 48, metadata !2551, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 51, metadata !2552, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 48, metadata !2553, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2653
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2654
  %46 = load i8, i8* %45, align 1, !dbg !2654, !tbaa !907
  %47 = icmp eq i8 %46, 56, !dbg !2654
  br i1 %47, label %48, label %68, !dbg !2655

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2570, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* null, metadata !2575, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 48, metadata !2576, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 51, metadata !2577, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 48, metadata !2578, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2663
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2664
  %50 = load i8, i8* %49, align 1, !dbg !2664, !tbaa !907
  %51 = icmp eq i8 %50, 48, !dbg !2664
  br i1 %51, label %52, label %68, !dbg !2665

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2594, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* null, metadata !2599, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 51, metadata !2600, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 48, metadata !2601, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2672
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2673
  %54 = load i8, i8* %53, align 1, !dbg !2673, !tbaa !907
  %55 = icmp eq i8 %54, 51, !dbg !2673
  br i1 %55, label %56, label %68, !dbg !2674

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2675, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* null, metadata !2680, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 48, metadata !2681, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2691
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2692
  %58 = load i8, i8* %57, align 1, !dbg !2692, !tbaa !907
  %59 = icmp eq i8 %58, 48, !dbg !2692
  br i1 %59, label %60, label %68, !dbg !2694

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2695, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8* null, metadata !2700, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 0, metadata !2701, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 0, metadata !2702, metadata !DIExpression()), !dbg !2709
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2710
  %62 = load i8, i8* %61, align 1, !dbg !2710, !tbaa !907
  %63 = icmp eq i8 %62, 0, !dbg !2710
  br i1 %63, label %64, label %68, !dbg !2712

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2713, !tbaa !907
  %66 = icmp eq i8 %65, 96, !dbg !2714
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.101, i64 0, i64 0), !dbg !2713
  br label %71, !dbg !2715

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2716
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), !dbg !2717
  br label %71, !dbg !2718

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2719
  ret i8* %72, !dbg !2720
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2721 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2727, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()) #12, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2736, metadata !DIExpression()) #12, !dbg !2746
  call void @llvm.dbg.value(metadata i64* null, metadata !2737, metadata !DIExpression()) #12, !dbg !2747
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2738, metadata !DIExpression()) #12, !dbg !2748
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2749
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2739, metadata !DIExpression()) #12, !dbg !2750
  %6 = tail call i32* @__errno_location() #17, !dbg !2751
  %7 = load i32, i32* %6, align 4, !dbg !2751, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %7, metadata !2740, metadata !DIExpression()) #12, !dbg !2752
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2753
  %9 = load i32, i32* %8, align 4, !dbg !2753, !tbaa !1827
  %10 = or i32 %9, 1, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %10, metadata !2741, metadata !DIExpression()) #12, !dbg !2755
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2756
  %12 = load i32, i32* %11, align 8, !dbg !2756, !tbaa !1768
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2757
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2758
  %15 = load i8*, i8** %14, align 8, !dbg !2758, !tbaa !1853
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2759
  %17 = load i8*, i8** %16, align 8, !dbg !2759, !tbaa !1856
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2760
  %19 = add i64 %18, 1, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %19, metadata !2742, metadata !DIExpression()) #12, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %19, metadata !2763, metadata !DIExpression()) #12, !dbg !2768
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %20, metadata !2743, metadata !DIExpression()) #12, !dbg !2771
  %21 = load i32, i32* %11, align 8, !dbg !2772, !tbaa !1768
  %22 = load i8*, i8** %14, align 8, !dbg !2773, !tbaa !1853
  %23 = load i8*, i8** %16, align 8, !dbg !2774, !tbaa !1856
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2775
  store i32 %7, i32* %6, align 4, !dbg !2776, !tbaa !948
  ret i8* %20, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %1, metadata !2736, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64* %2, metadata !2737, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2738, metadata !DIExpression()), !dbg !2781
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2782
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2739, metadata !DIExpression()), !dbg !2783
  %7 = tail call i32* @__errno_location() #17, !dbg !2784
  %8 = load i32, i32* %7, align 4, !dbg !2784, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %8, metadata !2740, metadata !DIExpression()), !dbg !2785
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2786
  %10 = load i32, i32* %9, align 4, !dbg !2786, !tbaa !1827
  %11 = icmp ne i64* %2, null, !dbg !2787
  %12 = xor i1 %11, true, !dbg !2787
  %13 = zext i1 %12 to i32, !dbg !2787
  %14 = or i32 %10, %13, !dbg !2788
  call void @llvm.dbg.value(metadata i32 %14, metadata !2741, metadata !DIExpression()), !dbg !2789
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2790
  %16 = load i32, i32* %15, align 8, !dbg !2790, !tbaa !1768
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2791
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2792
  %19 = load i8*, i8** %18, align 8, !dbg !2792, !tbaa !1853
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2793
  %21 = load i8*, i8** %20, align 8, !dbg !2793, !tbaa !1856
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2794
  %23 = add i64 %22, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i64 %23, metadata !2742, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %23, metadata !2763, metadata !DIExpression()) #12, !dbg !2797
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %24, metadata !2743, metadata !DIExpression()), !dbg !2800
  %25 = load i32, i32* %15, align 8, !dbg !2801, !tbaa !1768
  %26 = load i8*, i8** %18, align 8, !dbg !2802, !tbaa !1853
  %27 = load i8*, i8** %20, align 8, !dbg !2803, !tbaa !1856
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2804
  store i32 %8, i32* %7, align 4, !dbg !2805, !tbaa !948
  br i1 %11, label %29, label %30, !dbg !2806

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2807, !tbaa !922
  br label %30, !dbg !2809

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2811 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2815, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 1, metadata !2814, metadata !DIExpression()), !dbg !2817
  %2 = load i32, i32* @nslots, align 4, !dbg !2818, !tbaa !948
  %3 = icmp sgt i32 %2, 1, !dbg !2821
  br i1 %3, label %4, label %12, !dbg !2822

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2814, metadata !DIExpression()), !dbg !2817
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2823
  %7 = load i8*, i8** %6, align 8, !dbg !2823, !tbaa !2824
  tail call void @free(i8* %7) #12, !dbg !2826
  %8 = add nuw nsw i64 %5, 1, !dbg !2827
  call void @llvm.dbg.value(metadata i32 undef, metadata !2814, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2817
  %9 = load i32, i32* @nslots, align 4, !dbg !2818, !tbaa !948
  %10 = sext i32 %9 to i64, !dbg !2821
  %11 = icmp slt i64 %8, %10, !dbg !2821
  br i1 %11, label %4, label %12, !dbg !2822, !llvm.loop !2828

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2830
  %14 = load i8*, i8** %13, align 8, !dbg !2830, !tbaa !2824
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2832
  br i1 %15, label %17, label %16, !dbg !2833

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2834
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2836, !tbaa !2837
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2838, !tbaa !2824
  br label %17, !dbg !2839

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2840
  br i1 %18, label %21, label %19, !dbg !2842

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2843
  tail call void @free(i8* %20) #12, !dbg !2845
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2846, !tbaa !726
  br label %21, !dbg !2847

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2848, !tbaa !948
  ret void, !dbg !2849
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2850 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !2855, metadata !DIExpression()), !dbg !2857
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2858
  ret i8* %3, !dbg !2859
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2864, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %1, metadata !2865, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %2, metadata !2866, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2867, metadata !DIExpression()), !dbg !2882
  %5 = tail call i32* @__errno_location() #17, !dbg !2883
  %6 = load i32, i32* %5, align 4, !dbg !2883, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %6, metadata !2868, metadata !DIExpression()), !dbg !2884
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2885, !tbaa !726
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2869, metadata !DIExpression()), !dbg !2886
  %8 = icmp slt i32 %0, 0, !dbg !2887
  br i1 %8, label %9, label %10, !dbg !2889

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2890
  unreachable, !dbg !2890

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2891, !tbaa !948
  %12 = icmp sgt i32 %11, %0, !dbg !2892
  br i1 %12, label %34, label %13, !dbg !2893

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2894
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2873, metadata !DIExpression()), !dbg !2895
  %15 = icmp eq i32 %0, 2147483647, !dbg !2896
  br i1 %15, label %16, label %17, !dbg !2898

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2899
  unreachable, !dbg !2899

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2900
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2900
  %20 = add nsw i32 %0, 1, !dbg !2901
  %21 = sext i32 %20 to i64, !dbg !2902
  %22 = shl nsw i64 %21, 4, !dbg !2903
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2904
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2904
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2869, metadata !DIExpression()), !dbg !2886
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2905, !tbaa !726
  br i1 %14, label %25, label %26, !dbg !2906

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2907, !tbaa.struct !2909
  br label %26, !dbg !2910

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2911, !tbaa !948
  %28 = sext i32 %27 to i64, !dbg !2912
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2912
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2913
  %31 = sub nsw i32 %20, %27, !dbg !2914
  %32 = sext i32 %31 to i64, !dbg !2915
  %33 = shl nsw i64 %32, 4, !dbg !2916
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2913
  store i32 %20, i32* @nslots, align 4, !dbg !2917, !tbaa !948
  br label %34, !dbg !2918

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2919
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2869, metadata !DIExpression()), !dbg !2886
  %36 = sext i32 %0 to i64, !dbg !2920
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2921
  %38 = load i64, i64* %37, align 8, !dbg !2921, !tbaa !2837
  call void @llvm.dbg.value(metadata i64 %38, metadata !2874, metadata !DIExpression()), !dbg !2922
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2923
  %40 = load i8*, i8** %39, align 8, !dbg !2923, !tbaa !2824
  call void @llvm.dbg.value(metadata i8* %40, metadata !2876, metadata !DIExpression()), !dbg !2924
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2925
  %42 = load i32, i32* %41, align 4, !dbg !2925, !tbaa !1827
  %43 = or i32 %42, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %43, metadata !2877, metadata !DIExpression()), !dbg !2927
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2928
  %45 = load i32, i32* %44, align 8, !dbg !2928, !tbaa !1768
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2929
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2930
  %48 = load i8*, i8** %47, align 8, !dbg !2930, !tbaa !1853
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2931
  %50 = load i8*, i8** %49, align 8, !dbg !2931, !tbaa !1856
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %51, metadata !2878, metadata !DIExpression()), !dbg !2933
  %52 = icmp ugt i64 %38, %51, !dbg !2934
  br i1 %52, label %63, label %53, !dbg !2936

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %54, metadata !2874, metadata !DIExpression()), !dbg !2922
  store i64 %54, i64* %37, align 8, !dbg !2939, !tbaa !2837
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2940
  br i1 %55, label %57, label %56, !dbg !2942

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2943
  br label %57, !dbg !2943

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2763, metadata !DIExpression()) #12, !dbg !2944
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %58, metadata !2876, metadata !DIExpression()), !dbg !2924
  store i8* %58, i8** %39, align 8, !dbg !2947, !tbaa !2824
  %59 = load i32, i32* %44, align 8, !dbg !2948, !tbaa !1768
  %60 = load i8*, i8** %47, align 8, !dbg !2949, !tbaa !1853
  %61 = load i8*, i8** %49, align 8, !dbg !2950, !tbaa !1856
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2951
  br label %63, !dbg !2952

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2953
  call void @llvm.dbg.value(metadata i8* %64, metadata !2876, metadata !DIExpression()), !dbg !2924
  store i32 %6, i32* %5, align 4, !dbg !2954, !tbaa !948
  ret i8* %64, !dbg !2955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %2, metadata !2962, metadata !DIExpression()), !dbg !2965
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2966
  ret i8* %4, !dbg !2967
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 0, metadata !2854, metadata !DIExpression()) #12, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #12, !dbg !2976
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2977
  ret i8* %2, !dbg !2978
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2979 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %1, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 0, metadata !2960, metadata !DIExpression()) #12, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()) #12, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()) #12, !dbg !2990
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2991
  ret i8* %3, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2993 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2997, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 %1, metadata !2998, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* %2, metadata !2999, metadata !DIExpression()), !dbg !3003
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3005
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()) #12, !dbg !3012
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3014, !alias.scope !3015
  %6 = icmp eq i32 %1, 10, !dbg !3018
  br i1 %6, label %7, label %8, !dbg !3020

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3021, !noalias !3015
  unreachable, !dbg !3021

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3022
  store i32 %1, i32* %9, align 8, !dbg !3023, !tbaa !1768, !alias.scope !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3011, metadata !DIExpression(DW_OP_deref)), !dbg !3014
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3024
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3025
  ret i8* %10, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3027 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3031, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %1, metadata !3032, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %2, metadata !3033, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %3, metadata !3034, metadata !DIExpression()), !dbg !3039
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3035, metadata !DIExpression(DW_OP_deref)), !dbg !3041
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()) #12, !dbg !3042
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !3044, !alias.scope !3045
  %7 = icmp eq i32 %1, 10, !dbg !3048
  br i1 %7, label %8, label %9, !dbg !3049

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3050, !noalias !3045
  unreachable, !dbg !3050

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3051
  store i32 %1, i32* %10, align 8, !dbg !3052, !tbaa !1768, !alias.scope !3045
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3035, metadata !DIExpression(DW_OP_deref)), !dbg !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3011, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3054
  ret i8* %11, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3056 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %1, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 0, metadata !2997, metadata !DIExpression()) #12, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()) #12, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %1, metadata !2999, metadata !DIExpression()) #12, !dbg !3067
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3068
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()) #12, !dbg !3070
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !3072, !alias.scope !3073
  %5 = icmp eq i32 %0, 10, !dbg !3076
  br i1 %5, label %6, label %7, !dbg !3077

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3078, !noalias !3073
  unreachable, !dbg !3078

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3079
  store i32 %0, i32* %8, align 8, !dbg !3080, !tbaa !1768, !alias.scope !3073
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3000, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3069
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3011, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3072
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3081
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3082
  ret i8* %9, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3084 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3088, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %2, metadata !3090, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 0, metadata !3031, metadata !DIExpression()) #12, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()) #12, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %1, metadata !3033, metadata !DIExpression()) #12, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %2, metadata !3034, metadata !DIExpression()) #12, !dbg !3098
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3099
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3035, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()) #12, !dbg !3101
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3103, !alias.scope !3104
  %6 = icmp eq i32 %0, 10, !dbg !3107
  br i1 %6, label %7, label %8, !dbg !3108

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3109, !noalias !3104
  unreachable, !dbg !3109

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3110
  store i32 %0, i32* %9, align 8, !dbg !3111, !tbaa !1768, !alias.scope !3104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3035, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3011, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3103
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !3112
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3113
  ret i8* %10, !dbg !3114
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3115 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8 %2, metadata !3121, metadata !DIExpression()), !dbg !3125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3127, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3122, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1787, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %2, metadata !1788, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32 1, metadata !1789, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %2, metadata !1790, metadata !DIExpression()), !dbg !3134
  %6 = lshr i8 %2, 5, !dbg !3135
  %7 = zext i8 %6 to i64, !dbg !3135
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3136
  call void @llvm.dbg.value(metadata i32* %8, metadata !1791, metadata !DIExpression()), !dbg !3137
  %9 = and i8 %2, 31, !dbg !3138
  %10 = zext i8 %9 to i32, !dbg !3138
  call void @llvm.dbg.value(metadata i32 %10, metadata !1793, metadata !DIExpression()), !dbg !3139
  %11 = load i32, i32* %8, align 4, !dbg !3140, !tbaa !948
  %12 = lshr i32 %11, %10, !dbg !3141
  %13 = and i32 %12, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %13, metadata !1794, metadata !DIExpression()), !dbg !3143
  %14 = xor i32 %13, 1, !dbg !3144
  %15 = shl i32 %14, %10, !dbg !3145
  %16 = xor i32 %15, %11, !dbg !3146
  store i32 %16, i32* %8, align 4, !dbg !3146, !tbaa !948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3122, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3148
  ret i8* %17, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3150 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 %1, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #12, !dbg !3158
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #12, !dbg !3160
  call void @llvm.dbg.value(metadata i8 %1, metadata !3121, metadata !DIExpression()) #12, !dbg !3161
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3163, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1787, metadata !DIExpression()) #12, !dbg !3165
  call void @llvm.dbg.value(metadata i8 %1, metadata !1788, metadata !DIExpression()) #12, !dbg !3167
  call void @llvm.dbg.value(metadata i32 1, metadata !1789, metadata !DIExpression()) #12, !dbg !3168
  call void @llvm.dbg.value(metadata i8 %1, metadata !1790, metadata !DIExpression()) #12, !dbg !3169
  %5 = lshr i8 %1, 5, !dbg !3170
  %6 = zext i8 %5 to i64, !dbg !3170
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3171
  call void @llvm.dbg.value(metadata i32* %7, metadata !1791, metadata !DIExpression()) #12, !dbg !3172
  %8 = and i8 %1, 31, !dbg !3173
  %9 = zext i8 %8 to i32, !dbg !3173
  call void @llvm.dbg.value(metadata i32 %9, metadata !1793, metadata !DIExpression()) #12, !dbg !3174
  %10 = load i32, i32* %7, align 4, !dbg !3175, !tbaa !948
  %11 = lshr i32 %10, %9, !dbg !3176
  %12 = and i32 %11, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %12, metadata !1794, metadata !DIExpression()) #12, !dbg !3178
  %13 = xor i32 %12, 1, !dbg !3179
  %14 = shl i32 %13, %9, !dbg !3180
  %15 = xor i32 %14, %10, !dbg !3181
  store i32 %15, i32* %7, align 4, !dbg !3181, !tbaa !948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3164
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3182
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3183
  ret i8* %16, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3185 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()) #12, !dbg !3189
  call void @llvm.dbg.value(metadata i8 58, metadata !3155, metadata !DIExpression()) #12, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #12, !dbg !3192
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #12, !dbg !3194
  call void @llvm.dbg.value(metadata i8 58, metadata !3121, metadata !DIExpression()) #12, !dbg !3195
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3196
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3197, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3198
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1787, metadata !DIExpression()) #12, !dbg !3199
  call void @llvm.dbg.value(metadata i8 58, metadata !1788, metadata !DIExpression()) #12, !dbg !3201
  call void @llvm.dbg.value(metadata i32 1, metadata !1789, metadata !DIExpression()) #12, !dbg !3202
  call void @llvm.dbg.value(metadata i8 58, metadata !1790, metadata !DIExpression()) #12, !dbg !3203
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3204
  call void @llvm.dbg.value(metadata i32* %4, metadata !1791, metadata !DIExpression()) #12, !dbg !3205
  call void @llvm.dbg.value(metadata i32 26, metadata !1793, metadata !DIExpression()) #12, !dbg !3206
  %5 = load i32, i32* %4, align 4, !dbg !3207, !tbaa !948
  %6 = or i32 %5, 67108864, !dbg !3208
  store i32 %6, i32* %4, align 4, !dbg !3208, !tbaa !948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3198
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3210
  ret i8* %7, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3212 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3214, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #12, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()) #12, !dbg !3220
  call void @llvm.dbg.value(metadata i8 58, metadata !3121, metadata !DIExpression()) #12, !dbg !3221
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3222
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3223, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1787, metadata !DIExpression()) #12, !dbg !3225
  call void @llvm.dbg.value(metadata i8 58, metadata !1788, metadata !DIExpression()) #12, !dbg !3227
  call void @llvm.dbg.value(metadata i32 1, metadata !1789, metadata !DIExpression()) #12, !dbg !3228
  call void @llvm.dbg.value(metadata i8 58, metadata !1790, metadata !DIExpression()) #12, !dbg !3229
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3230
  call void @llvm.dbg.value(metadata i32* %5, metadata !1791, metadata !DIExpression()) #12, !dbg !3231
  call void @llvm.dbg.value(metadata i32 26, metadata !1793, metadata !DIExpression()) #12, !dbg !3232
  %6 = load i32, i32* %5, align 4, !dbg !3233, !tbaa !948
  %7 = or i32 %6, 67108864, !dbg !3234
  store i32 %7, i32* %5, align 4, !dbg !3234, !tbaa !948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3224
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3236
  ret i8* %8, !dbg !3237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3238 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3011, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %0, metadata !3240, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 %1, metadata !3241, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %2, metadata !3242, metadata !DIExpression()), !dbg !3248
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3249
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3250
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()) #12, !dbg !3251
  call void @llvm.dbg.value(metadata i32 0, metadata !3011, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3244
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3244, !alias.scope !3252
  %8 = icmp eq i32 %1, 10, !dbg !3255
  br i1 %8, label %9, label %10, !dbg !3256

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3257, !noalias !3252
  unreachable, !dbg !3257

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3011, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3244
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3250
  store i32 %1, i32* %11, align 8, !dbg !3250
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3250
  %13 = bitcast i32* %12 to i8*, !dbg !3250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3243, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1787, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 58, metadata !1788, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i32 1, metadata !1789, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 58, metadata !1790, metadata !DIExpression()), !dbg !3263
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3264
  call void @llvm.dbg.value(metadata i32* %14, metadata !1791, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 26, metadata !1793, metadata !DIExpression()), !dbg !3266
  %15 = load i32, i32* %14, align 4, !dbg !3267, !tbaa !948
  %16 = or i32 %15, 67108864, !dbg !3268
  store i32 %16, i32* %14, align 4, !dbg !3268, !tbaa !948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3243, metadata !DIExpression(DW_OP_deref)), !dbg !3258
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3270
  ret i8* %17, !dbg !3271
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3272 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3276, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %1, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %2, metadata !3278, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %3, metadata !3279, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 %0, metadata !3284, metadata !DIExpression()) #12, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %1, metadata !3289, metadata !DIExpression()) #12, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %2, metadata !3290, metadata !DIExpression()) #12, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %3, metadata !3291, metadata !DIExpression()) #12, !dbg !3298
  call void @llvm.dbg.value(metadata i64 -1, metadata !3292, metadata !DIExpression()) #12, !dbg !3299
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3301, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1835, metadata !DIExpression()) #12, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %1, metadata !1836, metadata !DIExpression()) #12, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %2, metadata !1837, metadata !DIExpression()) #12, !dbg !3306
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1835, metadata !DIExpression()) #12, !dbg !3303
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3307
  store i32 10, i32* %7, align 8, !dbg !3308, !tbaa !1768
  %8 = icmp ne i8* %1, null, !dbg !3309
  %9 = icmp ne i8* %2, null, !dbg !3310
  %10 = and i1 %8, %9, !dbg !3311
  br i1 %10, label %12, label %11, !dbg !3311

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3312
  unreachable, !dbg !3312

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3313
  store i8* %1, i8** %13, align 8, !dbg !3314, !tbaa !1853
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3315
  store i8* %2, i8** %14, align 8, !dbg !3316, !tbaa !1856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3302
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3317
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3318
  ret i8* %15, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3285 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3284, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %1, metadata !3289, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %2, metadata !3290, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %3, metadata !3291, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %4, metadata !3292, metadata !DIExpression()), !dbg !3324
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3326, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3293, metadata !DIExpression(DW_OP_deref)), !dbg !3327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1835, metadata !DIExpression()) #12, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !1836, metadata !DIExpression()) #12, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %2, metadata !1837, metadata !DIExpression()) #12, !dbg !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1835, metadata !DIExpression()) #12, !dbg !3328
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3332
  store i32 10, i32* %8, align 8, !dbg !3333, !tbaa !1768
  %9 = icmp ne i8* %1, null, !dbg !3334
  %10 = icmp ne i8* %2, null, !dbg !3335
  %11 = and i1 %9, %10, !dbg !3336
  br i1 %11, label %13, label %12, !dbg !3336

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3337
  unreachable, !dbg !3337

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3338
  store i8* %1, i8** %14, align 8, !dbg !3339, !tbaa !1853
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3340
  store i8* %2, i8** %15, align 8, !dbg !3341, !tbaa !1856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3293, metadata !DIExpression(DW_OP_deref)), !dbg !3327
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3342
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3343
  ret i8* %16, !dbg !3344
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3345 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %1, metadata !3350, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %2, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 0, metadata !3276, metadata !DIExpression()) #12, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %0, metadata !3277, metadata !DIExpression()) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %1, metadata !3278, metadata !DIExpression()) #12, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %2, metadata !3279, metadata !DIExpression()) #12, !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()) #12, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %0, metadata !3289, metadata !DIExpression()) #12, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3290, metadata !DIExpression()) #12, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %2, metadata !3291, metadata !DIExpression()) #12, !dbg !3364
  call void @llvm.dbg.value(metadata i64 -1, metadata !3292, metadata !DIExpression()) #12, !dbg !3365
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3366
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3367, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1835, metadata !DIExpression()) #12, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %0, metadata !1836, metadata !DIExpression()) #12, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %1, metadata !1837, metadata !DIExpression()) #12, !dbg !3372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1835, metadata !DIExpression()) #12, !dbg !3369
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3373
  store i32 10, i32* %6, align 8, !dbg !3374, !tbaa !1768
  %7 = icmp ne i8* %0, null, !dbg !3375
  %8 = icmp ne i8* %1, null, !dbg !3376
  %9 = and i1 %7, %8, !dbg !3377
  br i1 %9, label %11, label %10, !dbg !3377

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3378
  unreachable, !dbg !3378

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3379
  store i8* %0, i8** %12, align 8, !dbg !3380, !tbaa !1853
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3381
  store i8* %1, i8** %13, align 8, !dbg !3382, !tbaa !1856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3368
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3384
  ret i8* %14, !dbg !3385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3386 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3391, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i8* %2, metadata !3392, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %3, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()) #12, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %0, metadata !3289, metadata !DIExpression()) #12, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %1, metadata !3290, metadata !DIExpression()) #12, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %2, metadata !3291, metadata !DIExpression()) #12, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %3, metadata !3292, metadata !DIExpression()) #12, !dbg !3403
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3405, !tbaa.struct !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1835, metadata !DIExpression()) #12, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %0, metadata !1836, metadata !DIExpression()) #12, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %1, metadata !1837, metadata !DIExpression()) #12, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1835, metadata !DIExpression()) #12, !dbg !3407
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3411
  store i32 10, i32* %7, align 8, !dbg !3412, !tbaa !1768
  %8 = icmp ne i8* %0, null, !dbg !3413
  %9 = icmp ne i8* %1, null, !dbg !3414
  %10 = and i1 %8, %9, !dbg !3415
  br i1 %10, label %12, label %11, !dbg !3415

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3416
  unreachable, !dbg !3416

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3417
  store i8* %0, i8** %13, align 8, !dbg !3418, !tbaa !1853
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3419
  store i8* %1, i8** %14, align 8, !dbg !3420, !tbaa !1856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3293, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3406
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3422
  ret i8* %15, !dbg !3423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3424 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8* %1, metadata !3429, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %2, metadata !3430, metadata !DIExpression()), !dbg !3433
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3434
  ret i8* %4, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()) #12, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %0, metadata !3429, metadata !DIExpression()) #12, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()) #12, !dbg !3447
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3448
  ret i8* %3, !dbg !3449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %1, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %0, metadata !3428, metadata !DIExpression()) #12, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %1, metadata !3429, metadata !DIExpression()) #12, !dbg !3460
  call void @llvm.dbg.value(metadata i64 -1, metadata !3430, metadata !DIExpression()) #12, !dbg !3461
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3462
  ret i8* %3, !dbg !3463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 0, metadata !3454, metadata !DIExpression()) #12, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %0, metadata !3455, metadata !DIExpression()) #12, !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()) #12, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %0, metadata !3429, metadata !DIExpression()) #12, !dbg !3475
  call void @llvm.dbg.value(metadata i64 -1, metadata !3430, metadata !DIExpression()) #12, !dbg !3476
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3477
  ret i8* %2, !dbg !3478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32) local_unnamed_addr #7 !dbg !3479 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3484, metadata !DIExpression()), !dbg !3485
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12, !dbg !3486
  ret i32 %2, !dbg !3487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3488 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3527, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %1, metadata !3528, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %2, metadata !3529, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %3, metadata !3530, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8** %4, metadata !3531, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %5, metadata !3532, metadata !DIExpression()), !dbg !3538
  %7 = icmp eq i8* %1, null, !dbg !3539
  br i1 %7, label %10, label %8, !dbg !3541

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3542
  br label %12, !dbg !3542

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.111, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3543
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.112, i64 0, i64 0), i32 5) #12, !dbg !3544
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !3544
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.113, i64 0, i64 0), i32 5) #12, !dbg !3545
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3545
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
  ], !dbg !3546

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3547
  unreachable, !dbg !3547

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.114, i64 0, i64 0), i32 5) #12, !dbg !3549
  %20 = load i8*, i8** %4, align 8, !dbg !3549, !tbaa !726
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3549
  br label %146, !dbg !3550

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.115, i64 0, i64 0), i32 5) #12, !dbg !3551
  %24 = load i8*, i8** %4, align 8, !dbg !3551, !tbaa !726
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3551
  %26 = load i8*, i8** %25, align 8, !dbg !3551, !tbaa !726
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3551
  br label %146, !dbg !3552

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.116, i64 0, i64 0), i32 5) #12, !dbg !3553
  %30 = load i8*, i8** %4, align 8, !dbg !3553, !tbaa !726
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3553
  %32 = load i8*, i8** %31, align 8, !dbg !3553, !tbaa !726
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3553
  %34 = load i8*, i8** %33, align 8, !dbg !3553, !tbaa !726
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3553
  br label %146, !dbg !3554

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.117, i64 0, i64 0), i32 5) #12, !dbg !3555
  %38 = load i8*, i8** %4, align 8, !dbg !3555, !tbaa !726
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3555
  %40 = load i8*, i8** %39, align 8, !dbg !3555, !tbaa !726
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3555
  %42 = load i8*, i8** %41, align 8, !dbg !3555, !tbaa !726
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3555
  %44 = load i8*, i8** %43, align 8, !dbg !3555, !tbaa !726
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3555
  br label %146, !dbg !3556

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.118, i64 0, i64 0), i32 5) #12, !dbg !3557
  %48 = load i8*, i8** %4, align 8, !dbg !3557, !tbaa !726
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3557
  %50 = load i8*, i8** %49, align 8, !dbg !3557, !tbaa !726
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3557
  %52 = load i8*, i8** %51, align 8, !dbg !3557, !tbaa !726
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3557
  %54 = load i8*, i8** %53, align 8, !dbg !3557, !tbaa !726
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3557
  %56 = load i8*, i8** %55, align 8, !dbg !3557, !tbaa !726
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3557
  br label %146, !dbg !3558

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.119, i64 0, i64 0), i32 5) #12, !dbg !3559
  %60 = load i8*, i8** %4, align 8, !dbg !3559, !tbaa !726
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3559
  %62 = load i8*, i8** %61, align 8, !dbg !3559, !tbaa !726
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3559
  %64 = load i8*, i8** %63, align 8, !dbg !3559, !tbaa !726
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3559
  %66 = load i8*, i8** %65, align 8, !dbg !3559, !tbaa !726
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3559
  %68 = load i8*, i8** %67, align 8, !dbg !3559, !tbaa !726
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3559
  %70 = load i8*, i8** %69, align 8, !dbg !3559, !tbaa !726
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3559
  br label %146, !dbg !3560

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.120, i64 0, i64 0), i32 5) #12, !dbg !3561
  %74 = load i8*, i8** %4, align 8, !dbg !3561, !tbaa !726
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3561
  %76 = load i8*, i8** %75, align 8, !dbg !3561, !tbaa !726
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3561
  %78 = load i8*, i8** %77, align 8, !dbg !3561, !tbaa !726
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3561
  %80 = load i8*, i8** %79, align 8, !dbg !3561, !tbaa !726
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3561
  %82 = load i8*, i8** %81, align 8, !dbg !3561, !tbaa !726
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3561
  %84 = load i8*, i8** %83, align 8, !dbg !3561, !tbaa !726
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3561
  %86 = load i8*, i8** %85, align 8, !dbg !3561, !tbaa !726
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3561
  br label %146, !dbg !3562

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.121, i64 0, i64 0), i32 5) #12, !dbg !3563
  %90 = load i8*, i8** %4, align 8, !dbg !3563, !tbaa !726
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3563
  %92 = load i8*, i8** %91, align 8, !dbg !3563, !tbaa !726
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3563
  %94 = load i8*, i8** %93, align 8, !dbg !3563, !tbaa !726
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3563
  %96 = load i8*, i8** %95, align 8, !dbg !3563, !tbaa !726
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3563
  %98 = load i8*, i8** %97, align 8, !dbg !3563, !tbaa !726
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3563
  %100 = load i8*, i8** %99, align 8, !dbg !3563, !tbaa !726
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3563
  %102 = load i8*, i8** %101, align 8, !dbg !3563, !tbaa !726
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3563
  %104 = load i8*, i8** %103, align 8, !dbg !3563, !tbaa !726
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3563
  br label %146, !dbg !3564

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.122, i64 0, i64 0), i32 5) #12, !dbg !3565
  %108 = load i8*, i8** %4, align 8, !dbg !3565, !tbaa !726
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3565
  %110 = load i8*, i8** %109, align 8, !dbg !3565, !tbaa !726
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3565
  %112 = load i8*, i8** %111, align 8, !dbg !3565, !tbaa !726
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3565
  %114 = load i8*, i8** %113, align 8, !dbg !3565, !tbaa !726
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3565
  %116 = load i8*, i8** %115, align 8, !dbg !3565, !tbaa !726
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3565
  %118 = load i8*, i8** %117, align 8, !dbg !3565, !tbaa !726
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3565
  %120 = load i8*, i8** %119, align 8, !dbg !3565, !tbaa !726
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3565
  %122 = load i8*, i8** %121, align 8, !dbg !3565, !tbaa !726
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3565
  %124 = load i8*, i8** %123, align 8, !dbg !3565, !tbaa !726
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3565
  br label %146, !dbg !3566

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.123, i64 0, i64 0), i32 5) #12, !dbg !3567
  %128 = load i8*, i8** %4, align 8, !dbg !3567, !tbaa !726
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3567
  %130 = load i8*, i8** %129, align 8, !dbg !3567, !tbaa !726
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3567
  %132 = load i8*, i8** %131, align 8, !dbg !3567, !tbaa !726
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3567
  %134 = load i8*, i8** %133, align 8, !dbg !3567, !tbaa !726
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3567
  %136 = load i8*, i8** %135, align 8, !dbg !3567, !tbaa !726
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3567
  %138 = load i8*, i8** %137, align 8, !dbg !3567, !tbaa !726
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3567
  %140 = load i8*, i8** %139, align 8, !dbg !3567, !tbaa !726
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3567
  %142 = load i8*, i8** %141, align 8, !dbg !3567, !tbaa !726
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3567
  %144 = load i8*, i8** %143, align 8, !dbg !3567, !tbaa !726
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3567
  br label %146, !dbg !3568

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3569
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3570 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3574, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8* %1, metadata !3575, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8* %2, metadata !3576, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8* %3, metadata !3577, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8** %4, metadata !3578, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 0, metadata !3579, metadata !DIExpression()), !dbg !3585
  br label %6, !dbg !3586

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3588
  call void @llvm.dbg.value(metadata i64 %7, metadata !3579, metadata !DIExpression()), !dbg !3585
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3590
  %9 = load i8*, i8** %8, align 8, !dbg !3590, !tbaa !726
  %10 = icmp eq i8* %9, null, !dbg !3591
  %11 = add i64 %7, 1, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %11, metadata !3579, metadata !DIExpression()), !dbg !3585
  br i1 %10, label %12, label %6, !dbg !3591, !llvm.loop !3593

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %7, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %7, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %7, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %7, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %7, metadata !3579, metadata !DIExpression()), !dbg !3585
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3595
  ret void, !dbg !3596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3597 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3608, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3609, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %2, metadata !3610, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i8* %3, metadata !3611, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3612, metadata !DIExpression()), !dbg !3620
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3621
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3621
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3614, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 0, metadata !3613, metadata !DIExpression()), !dbg !3623
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3613, metadata !DIExpression()), !dbg !3623
  %11 = load i32, i32* %8, align 8, !dbg !3624
  %12 = icmp ult i32 %11, 41, !dbg !3624
  br i1 %12, label %13, label %18, !dbg !3624

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3624
  %15 = sext i32 %11 to i64, !dbg !3624
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3624
  %17 = add i32 %11, 8, !dbg !3624
  store i32 %17, i32* %8, align 8, !dbg !3624
  br label %21, !dbg !3624

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3624
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3624
  store i8* %20, i8** %10, align 8, !dbg !3624
  br label %21, !dbg !3624

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3624
  %25 = load i8*, i8** %24, align 8, !dbg !3624
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3627
  store i8* %25, i8** %26, align 16, !dbg !3628, !tbaa !726
  %27 = icmp eq i8* %25, null, !dbg !3629
  br i1 %27, label %30, label %28, !dbg !3630

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 1, metadata !3613, metadata !DIExpression()), !dbg !3623
  %29 = icmp ult i32 %22, 41, !dbg !3624
  br i1 %29, label %35, label %32, !dbg !3624

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3631
  call void @llvm.dbg.value(metadata i64 %31, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %31, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3632
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3633
  ret void, !dbg !3633

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3624
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3624
  store i8* %34, i8** %10, align 8, !dbg !3624
  br label %40, !dbg !3624

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3624
  %37 = sext i32 %22 to i64, !dbg !3624
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3624
  %39 = add i32 %22, 8, !dbg !3624
  store i32 %39, i32* %8, align 8, !dbg !3624
  br label %40, !dbg !3624

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3624
  %44 = load i8*, i8** %43, align 8, !dbg !3624
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3627
  store i8* %44, i8** %45, align 8, !dbg !3628, !tbaa !726
  %46 = icmp eq i8* %44, null, !dbg !3629
  br i1 %46, label %30, label %47, !dbg !3630

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 2, metadata !3613, metadata !DIExpression()), !dbg !3623
  %48 = icmp ult i32 %41, 41, !dbg !3624
  br i1 %48, label %52, label %49, !dbg !3624

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3624
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3624
  store i8* %51, i8** %10, align 8, !dbg !3624
  br label %57, !dbg !3624

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3624
  %54 = sext i32 %41 to i64, !dbg !3624
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3624
  %56 = add i32 %41, 8, !dbg !3624
  store i32 %56, i32* %8, align 8, !dbg !3624
  br label %57, !dbg !3624

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3624
  %61 = load i8*, i8** %60, align 8, !dbg !3624
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3627
  store i8* %61, i8** %62, align 16, !dbg !3628, !tbaa !726
  %63 = icmp eq i8* %61, null, !dbg !3629
  br i1 %63, label %30, label %64, !dbg !3630

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 3, metadata !3613, metadata !DIExpression()), !dbg !3623
  %65 = icmp ult i32 %58, 41, !dbg !3624
  br i1 %65, label %69, label %66, !dbg !3624

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3624
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3624
  store i8* %68, i8** %10, align 8, !dbg !3624
  br label %74, !dbg !3624

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3624
  %71 = sext i32 %58 to i64, !dbg !3624
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3624
  %73 = add i32 %58, 8, !dbg !3624
  store i32 %73, i32* %8, align 8, !dbg !3624
  br label %74, !dbg !3624

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3624
  %78 = load i8*, i8** %77, align 8, !dbg !3624
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3627
  store i8* %78, i8** %79, align 8, !dbg !3628, !tbaa !726
  %80 = icmp eq i8* %78, null, !dbg !3629
  br i1 %80, label %30, label %81, !dbg !3630

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 4, metadata !3613, metadata !DIExpression()), !dbg !3623
  %82 = icmp ult i32 %75, 41, !dbg !3624
  br i1 %82, label %86, label %83, !dbg !3624

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3624
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3624
  store i8* %85, i8** %10, align 8, !dbg !3624
  br label %91, !dbg !3624

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3624
  %88 = sext i32 %75 to i64, !dbg !3624
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3624
  %90 = add i32 %75, 8, !dbg !3624
  store i32 %90, i32* %8, align 8, !dbg !3624
  br label %91, !dbg !3624

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3624
  %95 = load i8*, i8** %94, align 8, !dbg !3624
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3627
  store i8* %95, i8** %96, align 16, !dbg !3628, !tbaa !726
  %97 = icmp eq i8* %95, null, !dbg !3629
  br i1 %97, label %30, label %98, !dbg !3630

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 5, metadata !3613, metadata !DIExpression()), !dbg !3623
  %99 = icmp ult i32 %92, 41, !dbg !3624
  br i1 %99, label %103, label %100, !dbg !3624

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3624
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3624
  store i8* %102, i8** %10, align 8, !dbg !3624
  br label %108, !dbg !3624

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3624
  %105 = sext i32 %92 to i64, !dbg !3624
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3624
  %107 = add i32 %92, 8, !dbg !3624
  store i32 %107, i32* %8, align 8, !dbg !3624
  br label %108, !dbg !3624

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3624
  %111 = load i8*, i8** %110, align 8, !dbg !3624
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3627
  store i8* %111, i8** %112, align 8, !dbg !3628, !tbaa !726
  %113 = icmp eq i8* %111, null, !dbg !3629
  br i1 %113, label %30, label %114, !dbg !3630

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 6, metadata !3613, metadata !DIExpression()), !dbg !3623
  %115 = load i8*, i8** %10, align 8, !dbg !3624
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3624
  store i8* %116, i8** %10, align 8, !dbg !3624
  %117 = bitcast i8* %115 to i8**, !dbg !3624
  %118 = load i8*, i8** %117, align 8, !dbg !3624
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3627
  store i8* %118, i8** %119, align 16, !dbg !3628, !tbaa !726
  %120 = icmp eq i8* %118, null, !dbg !3629
  br i1 %120, label %30, label %121, !dbg !3630

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 7, metadata !3613, metadata !DIExpression()), !dbg !3623
  %122 = load i8*, i8** %10, align 8, !dbg !3624
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3624
  store i8* %123, i8** %10, align 8, !dbg !3624
  %124 = bitcast i8* %122 to i8**, !dbg !3624
  %125 = load i8*, i8** %124, align 8, !dbg !3624
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3627
  store i8* %125, i8** %126, align 8, !dbg !3628, !tbaa !726
  %127 = icmp eq i8* %125, null, !dbg !3629
  br i1 %127, label %30, label %128, !dbg !3630

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 8, metadata !3613, metadata !DIExpression()), !dbg !3623
  %129 = load i8*, i8** %10, align 8, !dbg !3624
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3624
  store i8* %130, i8** %10, align 8, !dbg !3624
  %131 = bitcast i8* %129 to i8**, !dbg !3624
  %132 = load i8*, i8** %131, align 8, !dbg !3624
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3627
  store i8* %132, i8** %133, align 16, !dbg !3628, !tbaa !726
  %134 = icmp eq i8* %132, null, !dbg !3629
  br i1 %134, label %30, label %135, !dbg !3630

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 9, metadata !3613, metadata !DIExpression()), !dbg !3623
  %136 = load i8*, i8** %10, align 8, !dbg !3624
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3624
  store i8* %137, i8** %10, align 8, !dbg !3624
  %138 = bitcast i8* %136 to i8**, !dbg !3624
  %139 = load i8*, i8** %138, align 8, !dbg !3624
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3627
  store i8* %139, i8** %140, align 8, !dbg !3628, !tbaa !726
  %141 = icmp eq i8* %139, null, !dbg !3629
  %142 = select i1 %141, i64 9, i64 10, !dbg !3630
  br label %30, !dbg !3630
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3634 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3638, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %1, metadata !3639, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %2, metadata !3640, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* %3, metadata !3641, metadata !DIExpression()), !dbg !3650
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3651
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3651
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3642, metadata !DIExpression()), !dbg !3652
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3653
  call void @llvm.va_start(i8* nonnull %6), !dbg !3653
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3654
  call void @llvm.va_end(i8* nonnull %6), !dbg !3655
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3656
  ret void, !dbg !3656
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3657 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.126, i64 0, i64 0), i32 5) #12, !dbg !3658
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.127, i64 0, i64 0)) #12, !dbg !3658
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.128, i64 0, i64 0), i32 5) #12, !dbg !3659
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.129, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.130, i64 0, i64 0)) #12, !dbg !3659
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.131, i64 0, i64 0), i32 5) #12, !dbg !3660
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3660, !tbaa !726
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3660
  ret void, !dbg !3661
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3662 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3666, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %1, metadata !3667, metadata !DIExpression()), !dbg !3669
  %3 = udiv i64 9223372036854775807, %1, !dbg !3670
  %4 = icmp ult i64 %3, %0, !dbg !3670
  br i1 %4, label %5, label %6, !dbg !3672

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3673
  unreachable, !dbg !3673

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %7, metadata !3675, metadata !DIExpression()) #12, !dbg !3682
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %8, metadata !3681, metadata !DIExpression()) #12, !dbg !3685
  %9 = icmp eq i8* %8, null, !dbg !3686
  %10 = icmp ne i64 %7, 0, !dbg !3688
  %11 = and i1 %10, %9, !dbg !3689
  br i1 %11, label %12, label %13, !dbg !3689

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3690
  unreachable, !dbg !3690

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3691
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3676 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3675, metadata !DIExpression()), !dbg !3692
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3693
  call void @llvm.dbg.value(metadata i8* %2, metadata !3681, metadata !DIExpression()), !dbg !3694
  %3 = icmp eq i8* %2, null, !dbg !3695
  %4 = icmp ne i64 %0, 0, !dbg !3696
  %5 = and i1 %4, %3, !dbg !3697
  br i1 %5, label %6, label %7, !dbg !3697

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3698
  unreachable, !dbg !3698

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3699
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3700 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %2, metadata !3706, metadata !DIExpression()), !dbg !3709
  %4 = udiv i64 9223372036854775807, %2, !dbg !3710
  %5 = icmp ult i64 %4, %1, !dbg !3710
  br i1 %5, label %6, label %7, !dbg !3712

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3713
  unreachable, !dbg !3713

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()) #12, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %8, metadata !3720, metadata !DIExpression()) #12, !dbg !3723
  %9 = icmp eq i64 %8, 0, !dbg !3724
  %10 = icmp ne i8* %0, null, !dbg !3726
  %11 = and i1 %10, %9, !dbg !3727
  br i1 %11, label %12, label %13, !dbg !3727

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3728
  br label %19, !dbg !3730

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %14, metadata !3715, metadata !DIExpression()) #12, !dbg !3721
  %15 = icmp eq i8* %14, null, !dbg !3732
  %16 = icmp ne i64 %8, 0, !dbg !3734
  %17 = and i1 %16, %15, !dbg !3735
  br i1 %17, label %18, label %19, !dbg !3735

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3736
  unreachable, !dbg !3736

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3737
  ret i8* %20, !dbg !3738
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3716 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3720, metadata !DIExpression()), !dbg !3740
  %3 = icmp eq i64 %1, 0, !dbg !3741
  %4 = icmp ne i8* %0, null, !dbg !3742
  %5 = and i1 %4, %3, !dbg !3743
  br i1 %5, label %6, label %7, !dbg !3743

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3744
  br label %13, !dbg !3745

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %8, metadata !3715, metadata !DIExpression()), !dbg !3739
  %9 = icmp eq i8* %8, null, !dbg !3747
  %10 = icmp ne i64 %1, 0, !dbg !3748
  %11 = and i1 %10, %9, !dbg !3749
  br i1 %11, label %12, label %13, !dbg !3749

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3750
  unreachable, !dbg !3750

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3751
  ret i8* %14, !dbg !3752
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !271, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64* %1, metadata !272, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %2, metadata !273, metadata !DIExpression()), !dbg !3755
  %4 = load i64, i64* %1, align 8, !dbg !3756, !tbaa !922
  call void @llvm.dbg.value(metadata i64 %4, metadata !274, metadata !DIExpression()), !dbg !3757
  %5 = icmp eq i8* %0, null, !dbg !3758
  br i1 %5, label %6, label %20, !dbg !3760

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3761
  br i1 %7, label %8, label %13, !dbg !3764

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %9, metadata !274, metadata !DIExpression()), !dbg !3757
  %10 = icmp ugt i64 %2, 128, !dbg !3767
  %11 = zext i1 %10 to i64, !dbg !3767
  %12 = add nuw nsw i64 %9, %11, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %12, metadata !274, metadata !DIExpression()), !dbg !3757
  br label %13, !dbg !3769

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3770
  call void @llvm.dbg.value(metadata i64 %14, metadata !274, metadata !DIExpression()), !dbg !3757
  %15 = udiv i64 9223372036854775807, %2, !dbg !3771
  %16 = icmp ult i64 %15, %14, !dbg !3771
  br i1 %16, label %19, label %17, !dbg !3773

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !274, metadata !DIExpression()), !dbg !3757
  store i64 %14, i64* %1, align 8, !dbg !3774, !tbaa !922
  %18 = mul i64 %14, %2, !dbg !3775
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()) #12, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %28, metadata !3720, metadata !DIExpression()) #12, !dbg !3778
  br label %31, !dbg !3779

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3780
  unreachable, !dbg !3780

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3781
  %22 = icmp ugt i64 %21, %4, !dbg !3784
  br i1 %22, label %24, label %23, !dbg !3785

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3786
  unreachable, !dbg !3786

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3787
  %26 = add i64 %4, 1, !dbg !3788
  %27 = add i64 %26, %25, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %27, metadata !274, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %27, metadata !274, metadata !DIExpression()), !dbg !3757
  store i64 %27, i64* %1, align 8, !dbg !3774, !tbaa !922
  %28 = mul i64 %27, %2, !dbg !3775
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()) #12, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %28, metadata !3720, metadata !DIExpression()) #12, !dbg !3778
  %29 = icmp eq i64 %28, 0, !dbg !3790
  br i1 %29, label %30, label %31, !dbg !3779

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3791
  br label %38, !dbg !3792

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %33, metadata !3715, metadata !DIExpression()) #12, !dbg !3776
  %34 = icmp eq i8* %33, null, !dbg !3794
  %35 = icmp ne i64 %32, 0, !dbg !3795
  %36 = and i1 %35, %34, !dbg !3796
  br i1 %36, label %37, label %38, !dbg !3796

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3797
  unreachable, !dbg !3797

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3798
  ret i8* %39, !dbg !3799
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3800 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %0, metadata !3675, metadata !DIExpression()) #12, !dbg !3804
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3806
  call void @llvm.dbg.value(metadata i8* %2, metadata !3681, metadata !DIExpression()) #12, !dbg !3807
  %3 = icmp eq i8* %2, null, !dbg !3808
  %4 = icmp ne i64 %0, 0, !dbg !3809
  %5 = and i1 %4, %3, !dbg !3810
  br i1 %5, label %6, label %7, !dbg !3810

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3811
  unreachable, !dbg !3811

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64* %1, metadata !3818, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8* %0, metadata !271, metadata !DIExpression()) #12, !dbg !3821
  call void @llvm.dbg.value(metadata i64* %1, metadata !272, metadata !DIExpression()) #12, !dbg !3823
  call void @llvm.dbg.value(metadata i64 1, metadata !273, metadata !DIExpression()) #12, !dbg !3824
  %3 = load i64, i64* %1, align 8, !dbg !3825, !tbaa !922
  call void @llvm.dbg.value(metadata i64 %3, metadata !274, metadata !DIExpression()) #12, !dbg !3826
  %4 = icmp eq i8* %0, null, !dbg !3827
  br i1 %4, label %5, label %12, !dbg !3828

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3829
  br i1 %6, label %9, label %7, !dbg !3830

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !274, metadata !DIExpression()) #12, !dbg !3826
  %8 = icmp slt i64 %3, 0, !dbg !3831
  br i1 %8, label %11, label %9, !dbg !3832

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !274, metadata !DIExpression()) #12, !dbg !3826
  store i64 %10, i64* %1, align 8, !dbg !3833, !tbaa !922
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()) #12, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %18, metadata !3720, metadata !DIExpression()) #12, !dbg !3836
  br label %21, !dbg !3837

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3838
  unreachable, !dbg !3838

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3839
  br i1 %13, label %15, label %14, !dbg !3840

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3841
  unreachable, !dbg !3841

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3842
  %17 = add i64 %3, 1, !dbg !3843
  %18 = add i64 %17, %16, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %18, metadata !274, metadata !DIExpression()) #12, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %18, metadata !274, metadata !DIExpression()) #12, !dbg !3826
  store i64 %18, i64* %1, align 8, !dbg !3833, !tbaa !922
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()) #12, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %18, metadata !3720, metadata !DIExpression()) #12, !dbg !3836
  %19 = icmp eq i64 %18, 0, !dbg !3845
  br i1 %19, label %20, label %21, !dbg !3837

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3846
  br label %28, !dbg !3847

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3848
  call void @llvm.dbg.value(metadata i8* %23, metadata !3715, metadata !DIExpression()) #12, !dbg !3834
  %24 = icmp eq i8* %23, null, !dbg !3849
  %25 = icmp ne i64 %22, 0, !dbg !3850
  %26 = and i1 %25, %24, !dbg !3851
  br i1 %26, label %27, label %28, !dbg !3851

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3852
  unreachable, !dbg !3852

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3853
  ret i8* %29, !dbg !3854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3855 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3857, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %0, metadata !3675, metadata !DIExpression()) #12, !dbg !3859
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3861
  call void @llvm.dbg.value(metadata i8* %2, metadata !3681, metadata !DIExpression()) #12, !dbg !3862
  %3 = icmp eq i8* %2, null, !dbg !3863
  %4 = icmp ne i64 %0, 0, !dbg !3864
  %5 = and i1 %4, %3, !dbg !3865
  br i1 %5, label %6, label %7, !dbg !3865

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3866
  unreachable, !dbg !3866

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3867
  ret i8* %2, !dbg !3868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3869 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()), !dbg !3875
  %3 = udiv i64 9223372036854775807, %1, !dbg !3876
  %4 = icmp ult i64 %3, %0, !dbg !3876
  br i1 %4, label %8, label %5, !dbg !3878

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3879
  call void @llvm.dbg.value(metadata i8* %6, metadata !3873, metadata !DIExpression()), !dbg !3880
  %7 = icmp eq i8* %6, null, !dbg !3881
  br i1 %7, label %8, label %9, !dbg !3882

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3883
  unreachable, !dbg !3883

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3885 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3891, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %1, metadata !3675, metadata !DIExpression()) #12, !dbg !3895
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3897
  call void @llvm.dbg.value(metadata i8* %3, metadata !3681, metadata !DIExpression()) #12, !dbg !3898
  %4 = icmp eq i8* %3, null, !dbg !3899
  %5 = icmp ne i64 %1, 0, !dbg !3900
  %6 = and i1 %5, %4, !dbg !3901
  br i1 %6, label %7, label %8, !dbg !3901

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3902
  unreachable, !dbg !3902

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3903
  ret i8* %3, !dbg !3904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3905 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3907, metadata !DIExpression()), !dbg !3908
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3909
  %3 = add i64 %2, 1, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %0, metadata !3891, metadata !DIExpression()) #12, !dbg !3911
  call void @llvm.dbg.value(metadata i64 %3, metadata !3892, metadata !DIExpression()) #12, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %3, metadata !3675, metadata !DIExpression()) #12, !dbg !3914
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3916
  call void @llvm.dbg.value(metadata i8* %4, metadata !3681, metadata !DIExpression()) #12, !dbg !3917
  %5 = icmp eq i8* %4, null, !dbg !3918
  %6 = icmp ne i64 %3, 0, !dbg !3919
  %7 = and i1 %6, %5, !dbg !3920
  br i1 %7, label %8, label %9, !dbg !3920

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3921
  unreachable, !dbg !3921

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3922
  ret i8* %4, !dbg !3923
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3924 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3926, !tbaa !948
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.144, i64 0, i64 0), i32 5) #12, !dbg !3927
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* %2) #12, !dbg !3928
  tail call void @abort() #15, !dbg !3929
  unreachable, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #7 !dbg !3930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3935, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i8* %2, metadata !3937, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %3, metadata !3938, metadata !DIExpression()), !dbg !3944
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %5, metadata !3939, metadata !DIExpression()), !dbg !3946
  %6 = tail call i32* @__errno_location() #17, !dbg !3947
  %7 = load i32, i32* %6, align 4, !dbg !3947, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %7, metadata !3940, metadata !DIExpression()), !dbg !3948
  %8 = icmp eq i32 %7, 0, !dbg !3949
  br i1 %8, label %16, label %9, !dbg !3951

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !3952, metadata !DIExpression()) #12, !dbg !3961
  call void @llvm.dbg.value(metadata i8* %0, metadata !3957, metadata !DIExpression()) #12, !dbg !3963
  call void @llvm.dbg.value(metadata i64 %1, metadata !3958, metadata !DIExpression()) #12, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %2, metadata !3959, metadata !DIExpression()) #12, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %3, metadata !3960, metadata !DIExpression()) #12, !dbg !3966
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.148, i64 0, i64 0), i32 5) #12, !dbg !3967
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #12, !dbg !3968
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.149, i64 0, i64 0), i32 5) #12, !dbg !3969
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #12, !dbg !3970
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !3971, !tbaa !948
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.150, i64 0, i64 0), i32 5) #12, !dbg !3972
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #12, !dbg !3973
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #12, !dbg !3974
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #12, !dbg !3975
  br label %16, !dbg !3976

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5, !dbg !3977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #7 !dbg !3978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %1, metadata !3981, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i8* %2, metadata !3982, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i64 %3, metadata !3983, metadata !DIExpression()), !dbg !3989
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !3990
  call void @llvm.dbg.value(metadata i32 %5, metadata !3984, metadata !DIExpression()), !dbg !3991
  %6 = tail call i32* @__errno_location() #17, !dbg !3992
  %7 = load i32, i32* %6, align 4, !dbg !3992, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %7, metadata !3985, metadata !DIExpression()), !dbg !3993
  %8 = icmp eq i32 %7, 0, !dbg !3994
  br i1 %8, label %18, label %9, !dbg !3996

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1, !dbg !3997
  %11 = add i64 %3, -1, !dbg !3998
  call void @llvm.dbg.value(metadata i32 %7, metadata !3952, metadata !DIExpression()) #12, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %0, metadata !3957, metadata !DIExpression()) #12, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %10, metadata !3958, metadata !DIExpression()) #12, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %2, metadata !3959, metadata !DIExpression()) #12, !dbg !4003
  call void @llvm.dbg.value(metadata i64 %11, metadata !3960, metadata !DIExpression()) #12, !dbg !4004
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.148, i64 0, i64 0), i32 5) #12, !dbg !4005
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #12, !dbg !4006
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.149, i64 0, i64 0), i32 5) #12, !dbg !4007
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #12, !dbg !4008
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !4009, !tbaa !948
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.150, i64 0, i64 0), i32 5) #12, !dbg !4010
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #12, !dbg !4011
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #12, !dbg !4012
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #12, !dbg !4013
  br label %18, !dbg !4014

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4015
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4016 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4019, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4026
  %3 = icmp eq i64 %0, 0, !dbg !4027
  %4 = icmp eq i64 %1, 0, !dbg !4028
  %5 = or i1 %3, %4, !dbg !4029
  br i1 %5, label %12, label %6, !dbg !4029

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %7, metadata !4022, metadata !DIExpression()), !dbg !4031
  %8 = udiv i64 %7, %1, !dbg !4032
  %9 = icmp eq i64 %8, %0, !dbg !4034
  br i1 %9, label %12, label %10, !dbg !4035

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4036
  store i32 12, i32* %11, align 4, !dbg !4038, !tbaa !948
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4019, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %13, metadata !4020, metadata !DIExpression()), !dbg !4026
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4039
  call void @llvm.dbg.value(metadata i8* %15, metadata !4021, metadata !DIExpression()), !dbg !4040
  br label %16, !dbg !4041

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4042
  ret i8* %17, !dbg !4043
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4044 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4083, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 0, metadata !4084, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i32 0, metadata !4086, metadata !DIExpression()), !dbg !4089
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4090
  call void @llvm.dbg.value(metadata i32 %2, metadata !4085, metadata !DIExpression()), !dbg !4091
  %3 = icmp slt i32 %2, 0, !dbg !4092
  br i1 %3, label %4, label %6, !dbg !4094

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4095
  br label %24, !dbg !4096

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4097
  %8 = icmp eq i32 %7, 0, !dbg !4097
  br i1 %8, label %13, label %9, !dbg !4099

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4100
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4101
  %12 = icmp eq i64 %11, -1, !dbg !4102
  br i1 %12, label %16, label %13, !dbg !4103

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4104
  %15 = icmp eq i32 %14, 0, !dbg !4104
  br i1 %15, label %16, label %18, !dbg !4105

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4084, metadata !DIExpression()), !dbg !4088
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4106
  call void @llvm.dbg.value(metadata i32 %21, metadata !4086, metadata !DIExpression()), !dbg !4089
  br label %24, !dbg !4107

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4108
  %20 = load i32, i32* %19, align 4, !dbg !4108, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %20, metadata !4084, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i32 %20, metadata !4084, metadata !DIExpression()), !dbg !4088
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4106
  call void @llvm.dbg.value(metadata i32 %21, metadata !4086, metadata !DIExpression()), !dbg !4089
  %22 = icmp eq i32 %20, 0, !dbg !4109
  br i1 %22, label %24, label %23, !dbg !4107

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4111, !tbaa !948
  call void @llvm.dbg.value(metadata i32 -1, metadata !4086, metadata !DIExpression()), !dbg !4089
  br label %24, !dbg !4113

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4114
  ret i32 %25, !dbg !4115
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !196 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !204, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i32 %1, metadata !205, metadata !DIExpression()), !dbg !4117
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4118
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #12, !dbg !4118
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !206, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 -1, metadata !219, metadata !DIExpression()), !dbg !4120
  call void @llvm.va_start(i8* nonnull %4), !dbg !4121
  %5 = icmp eq i32 %1, 1030, !dbg !4122
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4123
  %7 = load i32, i32* %6, align 16, !dbg !4123
  %8 = icmp ult i32 %7, 41, !dbg !4123
  br i1 %5, label %9, label %58, !dbg !4122

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4124

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4124
  %12 = load i8*, i8** %11, align 16, !dbg !4124
  %13 = sext i32 %7 to i64, !dbg !4124
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4124
  %15 = add i32 %7, 8, !dbg !4124
  store i32 %15, i32* %6, align 16, !dbg !4124
  br label %20, !dbg !4124

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4124
  %18 = load i8*, i8** %17, align 8, !dbg !4124
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4124
  store i8* %19, i8** %17, align 8, !dbg !4124
  br label %20, !dbg !4124

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4124
  %23 = load i32, i32* %22, align 4, !dbg !4124
  call void @llvm.dbg.value(metadata i32 %23, metadata !220, metadata !DIExpression()), !dbg !4125
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4126, !tbaa !948
  %25 = icmp sgt i32 %24, -1, !dbg !4128
  br i1 %25, label %26, label %38, !dbg !4129

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #12, !dbg !4130
  call void @llvm.dbg.value(metadata i32 %27, metadata !219, metadata !DIExpression()), !dbg !4120
  %28 = icmp sgt i32 %27, -1, !dbg !4132
  br i1 %28, label %33, label %29, !dbg !4134

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !4135
  %31 = load i32, i32* %30, align 4, !dbg !4135, !tbaa !948
  %32 = icmp eq i32 %31, 22, !dbg !4136
  br i1 %32, label %34, label %33, !dbg !4137

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4138, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %44, metadata !219, metadata !DIExpression()), !dbg !4120
  br label %74, !dbg !4140

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4141
  call void @llvm.dbg.value(metadata i32 %35, metadata !219, metadata !DIExpression()), !dbg !4120
  %36 = icmp slt i32 %35, 0, !dbg !4143
  br i1 %36, label %74, label %37, !dbg !4145

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4146, !tbaa !948
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %39, metadata !219, metadata !DIExpression()), !dbg !4120
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4148
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !4149
  call void @llvm.dbg.value(metadata i32 %44, metadata !219, metadata !DIExpression()), !dbg !4120
  %45 = icmp sgt i32 %44, -1, !dbg !4150
  %46 = and i1 %45, %43, !dbg !4140
  br i1 %46, label %47, label %74, !dbg !4140

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #12, !dbg !4151
  call void @llvm.dbg.value(metadata i32 %48, metadata !223, metadata !DIExpression()), !dbg !4152
  %49 = icmp slt i32 %48, 0, !dbg !4153
  br i1 %49, label %54, label %50, !dbg !4154

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !4155
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #12, !dbg !4156
  %53 = icmp eq i32 %52, -1, !dbg !4157
  br i1 %53, label %54, label %74, !dbg !4158

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !4159
  %56 = load i32, i32* %55, align 4, !dbg !4159, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %56, metadata !226, metadata !DIExpression()), !dbg !4160
  %57 = call i32 @close(i32 %44) #12, !dbg !4161
  store i32 %56, i32* %55, align 4, !dbg !4162, !tbaa !948
  call void @llvm.dbg.value(metadata i32 -1, metadata !219, metadata !DIExpression()), !dbg !4120
  br label %74, !dbg !4163

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !4164

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4164
  %61 = load i8*, i8** %60, align 16, !dbg !4164
  %62 = sext i32 %7 to i64, !dbg !4164
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !4164
  %64 = add i32 %7, 8, !dbg !4164
  store i32 %64, i32* %6, align 16, !dbg !4164
  br label %69, !dbg !4164

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4164
  %67 = load i8*, i8** %66, align 8, !dbg !4164
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4164
  store i8* %68, i8** %66, align 8, !dbg !4164
  br label %69, !dbg !4164

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !4164
  %72 = load i8*, i8** %71, align 8, !dbg !4164
  call void @llvm.dbg.value(metadata i8* %72, metadata !229, metadata !DIExpression()), !dbg !4165
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #12, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %73, metadata !219, metadata !DIExpression()), !dbg !4120
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !4123
  call void @llvm.dbg.value(metadata i32 %75, metadata !219, metadata !DIExpression()), !dbg !4120
  call void @llvm.va_end(i8* nonnull %4), !dbg !4167
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #12, !dbg !4168
  ret i32 %75, !dbg !4169
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4170 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4209, metadata !DIExpression()), !dbg !4210
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4211
  br i1 %2, label %6, label %3, !dbg !4213

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4214
  %5 = icmp eq i32 %4, 0, !dbg !4214
  br i1 %5, label %6, label %8, !dbg !4215

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4216
  br label %17, !dbg !4217

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4218, metadata !DIExpression()) #12, !dbg !4223
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4225
  %10 = load i32, i32* %9, align 8, !dbg !4225, !tbaa !1016
  %11 = and i32 %10, 256, !dbg !4227
  %12 = icmp eq i32 %11, 0, !dbg !4227
  br i1 %12, label %15, label %13, !dbg !4228

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4229
  br label %15, !dbg !4229

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4230
  br label %17, !dbg !4231

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4232
  ret i32 %18, !dbg !4233
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4234 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4273, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %1, metadata !4274, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 %2, metadata !4275, metadata !DIExpression()), !dbg !4281
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4282
  %5 = load i8*, i8** %4, align 8, !dbg !4282, !tbaa !1569
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4283
  %7 = load i8*, i8** %6, align 8, !dbg !4283, !tbaa !1568
  %8 = icmp eq i8* %5, %7, !dbg !4284
  br i1 %8, label %9, label %28, !dbg !4285

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4286
  %11 = load i8*, i8** %10, align 8, !dbg !4286, !tbaa !4287
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4288
  %13 = load i8*, i8** %12, align 8, !dbg !4288, !tbaa !4289
  %14 = icmp eq i8* %11, %13, !dbg !4290
  br i1 %14, label %15, label %28, !dbg !4291

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4292
  %17 = load i8*, i8** %16, align 8, !dbg !4292, !tbaa !4293
  %18 = icmp eq i8* %17, null, !dbg !4294
  br i1 %18, label %19, label %28, !dbg !4295

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4296
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4297
  call void @llvm.dbg.value(metadata i64 %21, metadata !4276, metadata !DIExpression()), !dbg !4298
  %22 = icmp eq i64 %21, -1, !dbg !4299
  br i1 %22, label %30, label %23, !dbg !4301

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4302
  %25 = load i32, i32* %24, align 8, !dbg !4303, !tbaa !1016
  %26 = and i32 %25, -17, !dbg !4303
  store i32 %26, i32* %24, align 8, !dbg !4303, !tbaa !1016
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4304
  store i64 %21, i64* %27, align 8, !dbg !4305, !tbaa !4306
  br label %30, !dbg !4307

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4308
  br label %30, !dbg !4309

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4310
  ret i32 %31, !dbg !4311
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4312 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4329, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i8* %1, metadata !4330, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %2, metadata !4331, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4332, metadata !DIExpression()), !dbg !4341
  %6 = bitcast i32* %5 to i8*, !dbg !4342
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4342
  %7 = icmp eq i32* %0, null, !dbg !4343
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4345
  call void @llvm.dbg.value(metadata i32* %8, metadata !4329, metadata !DIExpression()), !dbg !4338
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4346
  call void @llvm.dbg.value(metadata i64 %9, metadata !4333, metadata !DIExpression()), !dbg !4347
  %10 = icmp ugt i64 %9, -3, !dbg !4348
  %11 = icmp ne i64 %2, 0, !dbg !4349
  %12 = and i1 %11, %10, !dbg !4350
  br i1 %12, label %13, label %18, !dbg !4350

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4351
  br i1 %14, label %18, label %15, !dbg !4352

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4353, !tbaa !907
  call void @llvm.dbg.value(metadata i8 %16, metadata !4335, metadata !DIExpression()), !dbg !4354
  %17 = zext i8 %16 to i32, !dbg !4355
  store i32 %17, i32* %8, align 4, !dbg !4356, !tbaa !948
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4357
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4358
  ret i64 %19, !dbg !4358
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4359 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4398, metadata !DIExpression()), !dbg !4403
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4404
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4405, metadata !DIExpression()), !dbg !4408
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4410
  %4 = load i32, i32* %3, align 8, !dbg !4410, !tbaa !1016
  %5 = and i32 %4, 32, !dbg !4410
  %6 = icmp eq i32 %5, 0, !dbg !4411
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4412
  %8 = icmp ne i32 %7, 0, !dbg !4413
  br i1 %6, label %9, label %19, !dbg !4414

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4416
  %11 = xor i1 %8, true, !dbg !4417
  %12 = or i1 %10, %11, !dbg !4417
  %13 = sext i1 %8 to i32, !dbg !4417
  br i1 %12, label %22, label %14, !dbg !4417

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4418
  %16 = load i32, i32* %15, align 4, !dbg !4418, !tbaa !948
  %17 = icmp ne i32 %16, 9, !dbg !4419
  %18 = sext i1 %17 to i32, !dbg !4420
  br label %22, !dbg !4420

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4421

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4423
  store i32 0, i32* %21, align 4, !dbg !4425, !tbaa !948
  br label %22, !dbg !4423

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4426
  ret i32 %23, !dbg !4427
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4428 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4434
  call void @llvm.dbg.value(metadata i8* %1, metadata !4433, metadata !DIExpression()), !dbg !4435
  %2 = icmp eq i8* %1, null, !dbg !4436
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), i8* %1, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %3, metadata !4433, metadata !DIExpression()), !dbg !4435
  %4 = load i8, i8* %3, align 1, !dbg !4439, !tbaa !907
  %5 = icmp eq i8 %4, 0, !dbg !4443
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.168, i64 0, i64 0), i8* %3, !dbg !4444
  call void @llvm.dbg.value(metadata i8* %6, metadata !4433, metadata !DIExpression()), !dbg !4435
  ret i8* %6, !dbg !4445
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #7 !dbg !4446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4449, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 %1, metadata !4450, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i8* %2, metadata !4451, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %3, metadata !4452, metadata !DIExpression()), !dbg !4461
  %5 = icmp eq i64 %1, %3, !dbg !4462
  br i1 %5, label %6, label %11, !dbg !4463

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !4464
  %8 = icmp eq i32 %7, 0, !dbg !4465
  br i1 %8, label %9, label %11, !dbg !4466

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !4467
  store i32 0, i32* %10, align 4, !dbg !4469, !tbaa !948
  call void @llvm.dbg.value(metadata i32 0, metadata !4453, metadata !DIExpression()), !dbg !4470
  br label %43, !dbg !4471

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !4472
  %13 = load i8, i8* %12, align 1, !dbg !4472, !tbaa !907
  call void @llvm.dbg.value(metadata i8 %13, metadata !4454, metadata !DIExpression()), !dbg !4473
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !4474
  %15 = load i8, i8* %14, align 1, !dbg !4474, !tbaa !907
  call void @llvm.dbg.value(metadata i8 %15, metadata !4457, metadata !DIExpression()), !dbg !4475
  store i8 0, i8* %12, align 1, !dbg !4476, !tbaa !907
  store i8 0, i8* %14, align 1, !dbg !4477, !tbaa !907
  %16 = add i64 %1, 1, !dbg !4478
  %17 = add i64 %3, 1, !dbg !4479
  call void @llvm.dbg.value(metadata i8* %0, metadata !4480, metadata !DIExpression()) #12, !dbg !4490
  call void @llvm.dbg.value(metadata i64 %16, metadata !4483, metadata !DIExpression()) #12, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %2, metadata !4484, metadata !DIExpression()) #12, !dbg !4493
  call void @llvm.dbg.value(metadata i64 %17, metadata !4485, metadata !DIExpression()) #12, !dbg !4494
  %18 = tail call i32* @__errno_location() #17, !dbg !4495
  br label %19, !dbg !4496

; <label>:19:                                     ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata i8* %23, metadata !4480, metadata !DIExpression()) #12, !dbg !4490
  call void @llvm.dbg.value(metadata i64 %22, metadata !4483, metadata !DIExpression()) #12, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %21, metadata !4485, metadata !DIExpression()) #12, !dbg !4494
  call void @llvm.dbg.value(metadata i8* %20, metadata !4484, metadata !DIExpression()) #12, !dbg !4493
  store i32 0, i32* %18, align 4, !dbg !4497, !tbaa !948
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #14, !dbg !4498
  call void @llvm.dbg.value(metadata i32 %24, metadata !4486, metadata !DIExpression()) #12, !dbg !4499
  %25 = icmp eq i32 %24, 0, !dbg !4500
  br i1 %25, label %26, label %41, !dbg !4496

; <label>:26:                                     ; preds = %19
  %27 = tail call i64 @strlen(i8* %23) #14, !dbg !4501
  %28 = add i64 %27, 1, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %28, metadata !4487, metadata !DIExpression()) #12, !dbg !4503
  %29 = tail call i64 @strlen(i8* %20) #14, !dbg !4504
  %30 = add i64 %29, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %30, metadata !4489, metadata !DIExpression()) #12, !dbg !4506
  %31 = sub i64 %22, %28, !dbg !4507
  call void @llvm.dbg.value(metadata i64 %31, metadata !4483, metadata !DIExpression()) #12, !dbg !4492
  %32 = sub i64 %21, %30, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %32, metadata !4485, metadata !DIExpression()) #12, !dbg !4494
  %33 = icmp eq i64 %31, 0, !dbg !4509
  br i1 %33, label %34, label %37, !dbg !4511

; <label>:34:                                     ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !4512
  %36 = sext i1 %35 to i32, !dbg !4513
  br label %41

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !4514
  call void @llvm.dbg.value(metadata i8* %38, metadata !4484, metadata !DIExpression()) #12, !dbg !4493
  %39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !4515
  call void @llvm.dbg.value(metadata i8* %39, metadata !4480, metadata !DIExpression()) #12, !dbg !4490
  %40 = icmp eq i64 %32, 0, !dbg !4516
  br i1 %40, label %41, label %19, !llvm.loop !4518

; <label>:41:                                     ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !4521
  call void @llvm.dbg.value(metadata i32 %42, metadata !4453, metadata !DIExpression()), !dbg !4470
  store i8 %13, i8* %12, align 1, !dbg !4522, !tbaa !907
  store i8 %15, i8* %14, align 1, !dbg !4523, !tbaa !907
  br label %43

; <label>:43:                                     ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !4524
  call void @llvm.dbg.value(metadata i32 %44, metadata !4453, metadata !DIExpression()), !dbg !4470
  ret i32 %44, !dbg !4525
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4528, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %1, metadata !4529, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i8* %2, metadata !4530, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %3, metadata !4531, metadata !DIExpression()), !dbg !4535
  %5 = icmp eq i64 %1, %3, !dbg !4536
  br i1 %5, label %6, label %11, !dbg !4538

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !4539
  %8 = icmp eq i32 %7, 0, !dbg !4540
  br i1 %8, label %9, label %11, !dbg !4541

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !4542
  store i32 0, i32* %10, align 4, !dbg !4544, !tbaa !948
  br label %35, !dbg !4545

; <label>:11:                                     ; preds = %6, %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4480, metadata !DIExpression()) #12, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %1, metadata !4483, metadata !DIExpression()) #12, !dbg !4548
  call void @llvm.dbg.value(metadata i8* %2, metadata !4484, metadata !DIExpression()) #12, !dbg !4549
  call void @llvm.dbg.value(metadata i64 %3, metadata !4485, metadata !DIExpression()) #12, !dbg !4550
  %12 = tail call i32* @__errno_location() #17, !dbg !4551
  br label %13, !dbg !4552

; <label>:13:                                     ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !4480, metadata !DIExpression()) #12, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %16, metadata !4483, metadata !DIExpression()) #12, !dbg !4548
  call void @llvm.dbg.value(metadata i64 %15, metadata !4485, metadata !DIExpression()) #12, !dbg !4550
  call void @llvm.dbg.value(metadata i8* %14, metadata !4484, metadata !DIExpression()) #12, !dbg !4549
  store i32 0, i32* %12, align 4, !dbg !4553, !tbaa !948
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #14, !dbg !4554
  call void @llvm.dbg.value(metadata i32 %18, metadata !4486, metadata !DIExpression()) #12, !dbg !4555
  %19 = icmp eq i32 %18, 0, !dbg !4556
  br i1 %19, label %20, label %35, !dbg !4552

; <label>:20:                                     ; preds = %13
  %21 = tail call i64 @strlen(i8* %17) #14, !dbg !4557
  %22 = add i64 %21, 1, !dbg !4558
  call void @llvm.dbg.value(metadata i64 %22, metadata !4487, metadata !DIExpression()) #12, !dbg !4559
  %23 = tail call i64 @strlen(i8* %14) #14, !dbg !4560
  %24 = add i64 %23, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 %24, metadata !4489, metadata !DIExpression()) #12, !dbg !4562
  %25 = sub i64 %16, %22, !dbg !4563
  call void @llvm.dbg.value(metadata i64 %25, metadata !4483, metadata !DIExpression()) #12, !dbg !4548
  %26 = sub i64 %15, %24, !dbg !4564
  call void @llvm.dbg.value(metadata i64 %26, metadata !4485, metadata !DIExpression()) #12, !dbg !4550
  %27 = icmp eq i64 %25, 0, !dbg !4565
  br i1 %27, label %28, label %31, !dbg !4566

; <label>:28:                                     ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !4567
  %30 = sext i1 %29 to i32, !dbg !4568
  br label %35

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !4569
  call void @llvm.dbg.value(metadata i8* %32, metadata !4484, metadata !DIExpression()) #12, !dbg !4549
  %33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !4570
  call void @llvm.dbg.value(metadata i8* %33, metadata !4480, metadata !DIExpression()) #12, !dbg !4546
  %34 = icmp eq i64 %26, 0, !dbg !4571
  br i1 %34, label %35, label %13, !llvm.loop !4518

; <label>:35:                                     ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !4572
  ret i32 %36, !dbg !4573
}

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
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !92, !98, !106, !231, !234, !236, !238, !245, !249, !113, !120, !251, !253, !187, !261, !278, !280, !283, !285, !200, !287, !289, !291, !294, !296, !685}
!llvm.ident = !{!687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687}
!llvm.module.flags = !{!688, !689, !690, !691, !692}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 46, type: !41, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !38)
!3 = !DIFile(filename: "src/comm.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 70, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!22 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!23 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!24 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 45, baseType: !6, size: 32, elements: !27)
!26 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!27 = !{!28, !29, !30, !31, !32, !33}
!28 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!34 = !{!35, !37}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !{!0, !39, !42, !44, !46, !48, !53, !55, !57, !74, !77, !82}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "only_file_1", scope: !2, file: !3, line: 49, type: !41, isLocal: true, isDefinition: true)
!41 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "only_file_2", scope: !2, file: !3, line: 52, type: !41, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "both", scope: !2, file: !3, line: 55, type: !41, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !2, file: !3, line: 58, type: !41, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !2, file: !3, line: 61, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 2)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "total_option", scope: !2, file: !3, line: 67, type: !41, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "check_input_order", scope: !2, file: !3, line: 75, type: !5, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 92, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !72)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !62, line: 50, size: 256, elements: !63)
!62 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!63 = !{!64, !67, !69, !71}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !62, line: 52, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !61, file: !62, line: 55, baseType: !68, size: 32, offset: 64)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !61, file: !62, line: 56, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !61, file: !62, line: 57, baseType: !68, size: 32, offset: 192)
!72 = !{!73}
!73 = !DISubrange(count: 8)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 64, type: !76, isLocal: true, isDefinition: true)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !2, file: !3, line: 80, type: !79, isLocal: true, isDefinition: true)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 62, baseType: !81)
!80 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "col_sep", scope: !2, file: !3, line: 79, type: !65, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!85 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!86 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!87 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!88 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!89 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "Version", scope: !92, file: !93, line: 2, type: !65, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !95)
!93 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!94 = !{}
!95 = !{!90}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "file_name", scope: !98, file: !103, line: 46, type: !65, isLocal: true, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !100)
!99 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!100 = !{!96, !101}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !98, file: !103, line: 56, type: !41, isLocal: true, isDefinition: true)
!103 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "exit_failure", scope: !106, file: !109, line: 24, type: !110, isLocal: false, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !108)
!107 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!108 = !{!104}
!109 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "program_name", scope: !113, file: !117, line: 33, type: !65, isLocal: false, isDefinition: true)
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !115, globals: !116)
!114 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!115 = !{!37, !35}
!116 = !{!111}
!117 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !120, file: !148, line: 85, type: !181, isLocal: false, isDefinition: true)
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !122, retainedTypes: !143, globals: !145)
!121 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!122 = !{!11, !123, !128}
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !6, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 46, baseType: !6, size: 32, elements: !130)
!129 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!131 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!133 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!137 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!143 = !{!68, !144, !79, !35}
!144 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!145 = !{!118, !146, !153, !163, !165, !170, !177, !179}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !120, file: !148, line: 101, type: !149, isLocal: false, isDefinition: true)
!148 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 320, elements: !151)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!151 = !{!152}
!152 = !DISubrange(count: 10)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !120, file: !148, line: 1052, type: !155, isLocal: false, isDefinition: true)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !148, line: 65, size: 448, elements: !156)
!156 = !{!157, !158, !159, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !155, file: !148, line: 68, baseType: !11, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !148, line: 71, baseType: !68, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !155, file: !148, line: 75, baseType: !160, size: 256, offset: 64)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !155, file: !148, line: 78, baseType: !65, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !155, file: !148, line: 81, baseType: !65, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !120, file: !148, line: 116, type: !155, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !120, file: !148, line: 842, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "slotvec", scope: !120, file: !148, line: 845, type: !172, isLocal: true, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !148, line: 834, size: 128, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !148, line: 836, baseType: !79, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !148, line: 837, baseType: !35, size: 64, offset: 64)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "nslots", scope: !120, file: !148, line: 843, type: !68, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "slotvec0", scope: !120, file: !148, line: 844, type: !173, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 704, elements: !183)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!183 = !{!184}
!184 = !DISubrange(count: 11)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !187, file: !190, line: 26, type: !191, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !189)
!188 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{!185}
!190 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 376, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 47)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !196, file: !197, line: 339, type: !68, isLocal: true, isDefinition: true)
!196 = distinct !DISubprogram(name: "rpl_fcntl", scope: !197, file: !197, line: 276, type: !198, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !203)
!197 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!198 = !DISubroutineType(types: !199)
!199 = !{!68, !68, !68, null}
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, globals: !202)
!201 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = !{!194}
!203 = !{!204, !205, !206, !219, !220, !223, !226, !229}
!204 = !DILocalVariable(name: "fd", arg: 1, scope: !196, file: !197, line: 276, type: !68)
!205 = !DILocalVariable(name: "action", arg: 2, scope: !196, file: !197, line: 276, type: !68)
!206 = !DILocalVariable(name: "arg", scope: !196, file: !197, line: 278, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !208, line: 30, baseType: !209)
!208 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !201, line: 278, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 192, elements: !217)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !201, line: 278, size: 192, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !211, file: !201, line: 278, baseType: !6, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !211, file: !201, line: 278, baseType: !6, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !211, file: !201, line: 278, baseType: !37, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !211, file: !201, line: 278, baseType: !37, size: 64, offset: 128)
!217 = !{!218}
!218 = !DISubrange(count: 1)
!219 = !DILocalVariable(name: "result", scope: !196, file: !197, line: 279, type: !68)
!220 = !DILocalVariable(name: "target", scope: !221, file: !197, line: 326, type: !68)
!221 = distinct !DILexicalBlock(scope: !222, file: !197, line: 325, column: 7)
!222 = distinct !DILexicalBlock(scope: !196, file: !197, line: 282, column: 5)
!223 = !DILocalVariable(name: "flags", scope: !224, file: !197, line: 363, type: !68)
!224 = distinct !DILexicalBlock(scope: !225, file: !197, line: 362, column: 11)
!225 = distinct !DILexicalBlock(scope: !221, file: !197, line: 361, column: 13)
!226 = !DILocalVariable(name: "saved_errno", scope: !227, file: !197, line: 366, type: !68)
!227 = distinct !DILexicalBlock(scope: !228, file: !197, line: 365, column: 15)
!228 = distinct !DILexicalBlock(scope: !224, file: !197, line: 364, column: 17)
!229 = !DILocalVariable(name: "p", scope: !230, file: !197, line: 408, type: !37)
!230 = distinct !DILexicalBlock(scope: !222, file: !197, line: 406, column: 7)
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !233)
!232 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!233 = !{!25}
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!235 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!237 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !240)
!239 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !242, line: 102, baseType: !243)
!242 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !244, line: 72, baseType: !81)
!244 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !247)
!246 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!250 = !DIFile(filename: "./lib/memcmp2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!252 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !255, retainedTypes: !260)
!254 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!255 = !{!256}
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 41, baseType: !6, size: 32, elements: !258)
!257 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!258 = !{!259}
!259 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!260 = !{!37}
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !277)
!262 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!263 = !{!264}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !266, file: !265, line: 186, baseType: !6, size: 32, elements: !275)
!265 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!266 = distinct !DISubprogram(name: "x2nrealloc", scope: !265, file: !265, line: 174, type: !267, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !270)
!267 = !DISubroutineType(types: !268)
!268 = !{!37, !37, !269, !79}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!270 = !{!271, !272, !273, !274}
!271 = !DILocalVariable(name: "p", arg: 1, scope: !266, file: !265, line: 174, type: !37)
!272 = !DILocalVariable(name: "pn", arg: 2, scope: !266, file: !265, line: 174, type: !269)
!273 = !DILocalVariable(name: "s", arg: 3, scope: !266, file: !265, line: 174, type: !79)
!274 = !DILocalVariable(name: "n", scope: !266, file: !265, line: 176, type: !79)
!275 = !{!276}
!276 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!277 = !{!79, !35, !37}
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!279 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !282)
!281 = !DIFile(filename: "./lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!282 = !{!11}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !260)
!284 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!286 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !260)
!288 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !260)
!290 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !293)
!292 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!293 = !{!79}
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!295 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !298, retainedTypes: !260)
!297 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!298 = !{!299}
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !300, line: 41, baseType: !6, size: 32, elements: !301)
!300 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!302 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!303 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!304 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!305 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!306 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!307 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!308 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!309 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!310 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!311 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!312 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!313 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!314 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!315 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!324 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!326 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!327 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!336 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!337 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!338 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!339 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!340 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!341 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!342 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!343 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!344 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!345 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!346 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!347 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!348 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!349 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!350 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!351 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!410 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!421 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!422 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!423 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!424 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!497 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!570 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!571 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!572 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!573 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!574 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!575 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!576 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!577 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!578 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!579 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!580 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!581 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!582 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!583 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!584 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!586 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!587 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!588 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!590 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!591 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!617 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!618 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!619 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!620 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!621 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!626 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!627 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!628 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!629 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!685 = distinct !DICompileUnit(language: DW_LANG_C99, file: !686, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94)
!686 = !DIFile(filename: "./lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!687 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!688 = !{i32 2, !"Dwarf Version", i32 4}
!689 = !{i32 2, !"Debug Info Version", i32 3}
!690 = !{i32 1, !"wchar_size", i32 4}
!691 = !{i32 7, !"PIC Level", i32 2}
!692 = !{i32 7, !"PIE Level", i32 2}
!693 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 106, type: !694, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !68}
!696 = !{!697}
!697 = !DILocalVariable(name: "status", arg: 1, scope: !693, file: !3, line: 106, type: !68)
!698 = !DILocalVariable(name: "infomap", scope: !699, file: !700, line: 632, type: !714)
!699 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !700, file: !700, line: 630, type: !701, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !703)
!700 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!701 = !DISubroutineType(types: !702)
!702 = !{null, !65}
!703 = !{!704, !698, !705, !706, !713}
!704 = !DILocalVariable(name: "program", arg: 1, scope: !699, file: !700, line: 630, type: !65)
!705 = !DILocalVariable(name: "node", scope: !699, file: !700, line: 642, type: !65)
!706 = !DILocalVariable(name: "map_prog", scope: !699, file: !700, line: 643, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !699, file: !700, line: 632, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !709, file: !700, line: 632, baseType: !65, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !700, line: 632, baseType: !65, size: 64, offset: 64)
!713 = !DILocalVariable(name: "lc_messages", scope: !699, file: !700, line: 655, type: !65)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 896, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 7)
!717 = !DILocation(line: 632, column: 67, scope: !699, inlinedAt: !718)
!718 = distinct !DILocation(line: 163, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 111, column: 5)
!720 = distinct !DILexicalBlock(scope: !693, file: !3, line: 108, column: 7)
!721 = !DILocation(line: 106, column: 12, scope: !693)
!722 = !DILocation(line: 108, column: 14, scope: !720)
!723 = !DILocation(line: 108, column: 7, scope: !693)
!724 = !DILocation(line: 109, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 109, column: 5)
!726 = !{!727, !727, i64 0}
!727 = !{!"any pointer", !728, i64 0}
!728 = !{!"omnipotent char", !729, i64 0}
!729 = !{!"Simple C/C++ TBAA"}
!730 = !DILocation(line: 112, column: 7, scope: !719)
!731 = !DILocation(line: 116, column: 7, scope: !719)
!732 = !DILocation(line: 119, column: 7, scope: !719)
!733 = !DILocation(line: 123, column: 7, scope: !719)
!734 = !DILocation(line: 129, column: 7, scope: !719)
!735 = !DILocation(line: 135, column: 7, scope: !719)
!736 = !DILocation(line: 141, column: 7, scope: !719)
!737 = !DILocation(line: 144, column: 7, scope: !719)
!738 = !DILocation(line: 147, column: 7, scope: !719)
!739 = !DILocation(line: 150, column: 7, scope: !719)
!740 = !DILocation(line: 151, column: 7, scope: !719)
!741 = !DILocation(line: 152, column: 7, scope: !719)
!742 = !DILocation(line: 156, column: 7, scope: !719)
!743 = !DILocation(line: 632, column: 3, scope: !699, inlinedAt: !718)
!744 = !DILocation(line: 643, column: 36, scope: !699, inlinedAt: !718)
!745 = !DILocation(line: 643, column: 25, scope: !699, inlinedAt: !718)
!746 = !DILocation(line: 645, column: 33, scope: !699, inlinedAt: !718)
!747 = !DILocation(line: 645, column: 3, scope: !699, inlinedAt: !718)
!748 = !DILocation(line: 646, column: 13, scope: !699, inlinedAt: !718)
!749 = !DILocation(line: 645, column: 20, scope: !699, inlinedAt: !718)
!750 = !{!751, !727, i64 0}
!751 = !{!"infomap", !727, i64 0, !727, i64 8}
!752 = !DILocation(line: 645, column: 10, scope: !699, inlinedAt: !718)
!753 = !DILocation(line: 645, column: 28, scope: !699, inlinedAt: !718)
!754 = distinct !{!754, !755, !756}
!755 = !DILocation(line: 645, column: 3, scope: !699)
!756 = !DILocation(line: 646, column: 13, scope: !699)
!757 = !DILocation(line: 648, column: 17, scope: !758, inlinedAt: !718)
!758 = distinct !DILexicalBlock(scope: !699, file: !700, line: 648, column: 7)
!759 = !{!751, !727, i64 8}
!760 = !DILocation(line: 648, column: 7, scope: !758, inlinedAt: !718)
!761 = !DILocation(line: 648, column: 7, scope: !699, inlinedAt: !718)
!762 = !DILocation(line: 642, column: 15, scope: !699, inlinedAt: !718)
!763 = !DILocation(line: 651, column: 3, scope: !699, inlinedAt: !718)
!764 = !DILocation(line: 655, column: 29, scope: !699, inlinedAt: !718)
!765 = !DILocation(line: 655, column: 15, scope: !699, inlinedAt: !718)
!766 = !DILocation(line: 656, column: 7, scope: !767, inlinedAt: !718)
!767 = distinct !DILexicalBlock(scope: !699, file: !700, line: 656, column: 7)
!768 = !DILocation(line: 656, column: 19, scope: !767, inlinedAt: !718)
!769 = !DILocation(line: 656, column: 22, scope: !767, inlinedAt: !718)
!770 = !DILocation(line: 656, column: 7, scope: !699, inlinedAt: !718)
!771 = !DILocation(line: 662, column: 7, scope: !772, inlinedAt: !718)
!772 = distinct !DILexicalBlock(scope: !767, file: !700, line: 657, column: 5)
!773 = !DILocation(line: 664, column: 5, scope: !772, inlinedAt: !718)
!774 = !DILocation(line: 665, column: 3, scope: !699, inlinedAt: !718)
!775 = !DILocation(line: 667, column: 3, scope: !699, inlinedAt: !718)
!776 = !DILocation(line: 669, column: 1, scope: !699, inlinedAt: !718)
!777 = !DILocation(line: 165, column: 3, scope: !693)
!778 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 407, type: !779, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !782)
!779 = !DISubroutineType(types: !780)
!780 = !{!68, !68, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(name: "argc", arg: 1, scope: !778, file: !3, line: 407, type: !68)
!784 = !DILocalVariable(name: "argv", arg: 2, scope: !778, file: !3, line: 407, type: !781)
!785 = !DILocalVariable(name: "c", scope: !778, file: !3, line: 409, type: !68)
!786 = !DILocalVariable(name: "lba", scope: !787, file: !3, line: 257, type: !885)
!787 = distinct !DISubprogram(name: "compare_files", scope: !3, file: !3, line: 254, type: !788, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !781}
!790 = !{!791, !786, !792, !801, !805, !809, !863, !866, !867, !868, !870, !871, !877, !883, !884}
!791 = !DILocalVariable(name: "infiles", arg: 1, scope: !787, file: !3, line: 254, type: !781)
!792 = !DILocalVariable(name: "thisline", scope: !787, file: !3, line: 261, type: !793)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 128, elements: !51)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !796, line: 26, size: 192, elements: !797)
!796 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !795, file: !796, line: 28, baseType: !79, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !795, file: !796, line: 29, baseType: !79, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !795, file: !796, line: 30, baseType: !35, size: 64, offset: 128)
!801 = !DILocalVariable(name: "all_line", scope: !787, file: !3, line: 266, type: !802)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 512, elements: !803)
!803 = !{!52, !804}
!804 = !DISubrange(count: 4)
!805 = !DILocalVariable(name: "alt", scope: !787, file: !3, line: 269, type: !806)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 192, elements: !807)
!807 = !{!52, !808}
!808 = !DISubrange(count: 3)
!809 = !DILocalVariable(name: "streams", scope: !787, file: !3, line: 272, type: !810)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 128, elements: !51)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !814)
!813 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !816)
!815 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !832, !834, !835, !836, !839, !840, !842, !844, !847, !849, !852, !855, !856, !857, !858, !859}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !814, file: !815, line: 51, baseType: !68, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !814, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !814, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !814, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !814, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !814, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !814, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !814, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !814, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !814, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !814, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !814, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !814, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !815, line: 36, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !814, file: !815, line: 70, baseType: !833, size: 64, offset: 832)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !814, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !814, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !814, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !244, line: 150, baseType: !838)
!838 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !814, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !814, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!841 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !814, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !217)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !814, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !815, line: 43, baseType: null)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !814, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !244, line: 151, baseType: !838)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !814, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !815, line: 37, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !814, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !815, line: 38, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !814, file: !815, line: 93, baseType: !833, size: 64, offset: 1344)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !814, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !814, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !814, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !814, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 20)
!863 = !DILocalVariable(name: "total", scope: !787, file: !3, line: 275, type: !864)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 192, elements: !865)
!865 = !{!808}
!866 = !DILocalVariable(name: "i", scope: !787, file: !3, line: 277, type: !68)
!867 = !DILocalVariable(name: "j", scope: !787, file: !3, line: 277, type: !68)
!868 = !DILocalVariable(name: "order", scope: !869, file: !3, line: 304, type: !68)
!869 = distinct !DILexicalBlock(scope: !787, file: !3, line: 303, column: 5)
!870 = !DILocalVariable(name: "fill_up", scope: !869, file: !3, line: 305, type: !50)
!871 = !DILocalVariable(name: "len", scope: !872, file: !3, line: 320, type: !79)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 319, column: 13)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 315, column: 15)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 314, column: 9)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 311, column: 16)
!876 = distinct !DILexicalBlock(scope: !869, file: !3, line: 309, column: 11)
!877 = !DILocalVariable(name: "buf1", scope: !878, file: !3, line: 395, type: !880)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 393, column: 5)
!879 = distinct !DILexicalBlock(scope: !787, file: !3, line: 392, column: 7)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 168, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 21)
!883 = !DILocalVariable(name: "buf2", scope: !878, file: !3, line: 396, type: !880)
!884 = !DILocalVariable(name: "buf3", scope: !878, file: !3, line: 397, type: !880)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 1536, elements: !803)
!886 = !DILocation(line: 257, column: 21, scope: !787, inlinedAt: !887)
!887 = distinct !DILocation(line: 493, column: 3, scope: !778)
!888 = !DILocation(line: 266, column: 22, scope: !787, inlinedAt: !887)
!889 = !DILocation(line: 395, column: 12, scope: !878, inlinedAt: !887)
!890 = !DILocation(line: 396, column: 12, scope: !878, inlinedAt: !887)
!891 = !DILocation(line: 397, column: 12, scope: !878, inlinedAt: !887)
!892 = !DILocation(line: 407, column: 11, scope: !778)
!893 = !DILocation(line: 407, column: 24, scope: !778)
!894 = !DILocation(line: 412, column: 21, scope: !778)
!895 = !DILocation(line: 412, column: 3, scope: !778)
!896 = !DILocation(line: 413, column: 3, scope: !778)
!897 = !DILocation(line: 414, column: 3, scope: !778)
!898 = !DILocation(line: 415, column: 3, scope: !778)
!899 = !DILocation(line: 416, column: 21, scope: !778)
!900 = !DILocation(line: 416, column: 19, scope: !778)
!901 = !{!902, !902, i64 0}
!902 = !{!"_Bool", !728, i64 0}
!903 = !DILocation(line: 418, column: 3, scope: !778)
!904 = !DILocation(line: 425, column: 59, scope: !778)
!905 = !DILocation(line: 425, column: 30, scope: !778)
!906 = !DILocation(line: 426, column: 21, scope: !778)
!907 = !{!728, !728, i64 0}
!908 = !DILocation(line: 429, column: 3, scope: !778)
!909 = !DILocation(line: 429, column: 15, scope: !778)
!910 = !DILocation(line: 409, column: 7, scope: !778)
!911 = !DILocation(line: 434, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !778, file: !3, line: 431, column: 7)
!913 = !DILocation(line: 438, column: 9, scope: !912)
!914 = !DILocation(line: 442, column: 9, scope: !912)
!915 = !DILocation(line: 446, column: 9, scope: !912)
!916 = !DILocation(line: 449, column: 27, scope: !912)
!917 = !DILocation(line: 450, column: 9, scope: !912)
!918 = !DILocation(line: 453, column: 27, scope: !912)
!919 = !DILocation(line: 454, column: 9, scope: !912)
!920 = !DILocation(line: 457, column: 13, scope: !921)
!921 = distinct !DILexicalBlock(scope: !912, file: !3, line: 457, column: 13)
!922 = !{!923, !923, i64 0}
!923 = !{!"long", !728, i64 0}
!924 = !DILocation(line: 457, column: 25, scope: !921)
!925 = !DILocation(line: 459, column: 19, scope: !912)
!926 = !DILocation(line: 457, column: 29, scope: !921)
!927 = !DILocation(line: 457, column: 13, scope: !912)
!928 = !DILocation(line: 458, column: 11, scope: !921)
!929 = !DILocation(line: 459, column: 17, scope: !912)
!930 = !DILocation(line: 460, column: 24, scope: !912)
!931 = !DILocation(line: 460, column: 23, scope: !912)
!932 = !DILocation(line: 460, column: 33, scope: !912)
!933 = !DILocation(line: 460, column: 21, scope: !912)
!934 = !DILocation(line: 461, column: 9, scope: !912)
!935 = !DILocation(line: 465, column: 9, scope: !912)
!936 = distinct !{!936, !908, !937}
!937 = !DILocation(line: 473, column: 7, scope: !778)
!938 = !DILocation(line: 467, column: 7, scope: !912)
!939 = !DILocation(line: 469, column: 7, scope: !912)
!940 = !DILocation(line: 472, column: 9, scope: !912)
!941 = !DILocation(line: 475, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !778, file: !3, line: 475, column: 7)
!943 = !DILocation(line: 475, column: 7, scope: !778)
!944 = !DILocation(line: 476, column: 17, scope: !942)
!945 = !DILocation(line: 476, column: 5, scope: !942)
!946 = !DILocation(line: 478, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !778, file: !3, line: 478, column: 7)
!948 = !{!949, !949, i64 0}
!949 = !{!"int", !728, i64 0}
!950 = !DILocation(line: 478, column: 12, scope: !947)
!951 = !DILocation(line: 478, column: 21, scope: !947)
!952 = !DILocation(line: 478, column: 7, scope: !778)
!953 = !DILocation(line: 480, column: 16, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 480, column: 11)
!955 = distinct !DILexicalBlock(scope: !947, file: !3, line: 479, column: 5)
!956 = !DILocation(line: 480, column: 11, scope: !955)
!957 = !DILocation(line: 481, column: 22, scope: !954)
!958 = !DILocation(line: 481, column: 9, scope: !954)
!959 = !DILocation(line: 483, column: 22, scope: !954)
!960 = !DILocation(line: 483, column: 70, scope: !954)
!961 = !DILocation(line: 483, column: 60, scope: !954)
!962 = !DILocation(line: 483, column: 53, scope: !954)
!963 = !DILocation(line: 483, column: 9, scope: !954)
!964 = !DILocation(line: 484, column: 7, scope: !955)
!965 = !DILocation(line: 487, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !778, file: !3, line: 487, column: 7)
!967 = !DILocation(line: 487, column: 7, scope: !778)
!968 = !DILocation(line: 489, column: 20, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 488, column: 5)
!970 = !DILocation(line: 489, column: 55, scope: !969)
!971 = !DILocation(line: 489, column: 62, scope: !969)
!972 = !DILocation(line: 489, column: 50, scope: !969)
!973 = !DILocation(line: 489, column: 43, scope: !969)
!974 = !DILocation(line: 489, column: 7, scope: !969)
!975 = !DILocation(line: 490, column: 7, scope: !969)
!976 = !DILocation(line: 493, column: 23, scope: !778)
!977 = !DILocation(line: 254, column: 23, scope: !787, inlinedAt: !887)
!978 = !DILocation(line: 257, column: 3, scope: !787, inlinedAt: !887)
!979 = !DILocation(line: 266, column: 3, scope: !787, inlinedAt: !887)
!980 = !DILocation(line: 275, column: 13, scope: !787, inlinedAt: !887)
!981 = !DILocation(line: 277, column: 7, scope: !787, inlinedAt: !887)
!982 = !DILocation(line: 277, column: 10, scope: !787, inlinedAt: !887)
!983 = !DILocation(line: 284, column: 24, scope: !984, inlinedAt: !887)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 283, column: 9)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 282, column: 7)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 282, column: 7)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 281, column: 5)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 280, column: 3)
!989 = distinct !DILexicalBlock(scope: !787, file: !3, line: 280, column: 3)
!990 = !DILocation(line: 284, column: 11, scope: !984, inlinedAt: !887)
!991 = !DILocation(line: 285, column: 11, scope: !984, inlinedAt: !887)
!992 = !DILocation(line: 285, column: 26, scope: !984, inlinedAt: !887)
!993 = !DILocation(line: 269, column: 7, scope: !787, inlinedAt: !887)
!994 = !DILocation(line: 290, column: 21, scope: !987, inlinedAt: !887)
!995 = !DILocation(line: 290, column: 47, scope: !987, inlinedAt: !887)
!996 = !DILocation(line: 290, column: 55, scope: !987, inlinedAt: !887)
!997 = !DILocation(line: 272, column: 9, scope: !787, inlinedAt: !887)
!998 = !DILocation(line: 291, column: 12, scope: !999, inlinedAt: !887)
!999 = distinct !DILexicalBlock(scope: !987, file: !3, line: 291, column: 11)
!1000 = !DILocation(line: 291, column: 11, scope: !987, inlinedAt: !887)
!1001 = !DILocation(line: 0, scope: !987, inlinedAt: !887)
!1002 = !DILocation(line: 292, column: 9, scope: !999, inlinedAt: !887)
!1003 = !DILocation(line: 294, column: 7, scope: !987, inlinedAt: !887)
!1004 = !DILocation(line: 296, column: 21, scope: !987, inlinedAt: !887)
!1005 = !DILocation(line: 261, column: 22, scope: !787, inlinedAt: !887)
!1006 = !DILocalVariable(name: "__stream", arg: 1, scope: !1007, file: !1008, line: 135, type: !811)
!1007 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1008, file: !1008, line: 135, type: !1009, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1011)
!1008 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!68, !811}
!1011 = !{!1006}
!1012 = !DILocation(line: 135, column: 1, scope: !1007, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 298, column: 11, scope: !1014, inlinedAt: !887)
!1014 = distinct !DILexicalBlock(scope: !987, file: !3, line: 298, column: 11)
!1015 = !DILocation(line: 137, column: 10, scope: !1007, inlinedAt: !1013)
!1016 = !{!1017, !949, i64 0}
!1017 = !{!"_IO_FILE", !949, i64 0, !727, i64 8, !727, i64 16, !727, i64 24, !727, i64 32, !727, i64 40, !727, i64 48, !727, i64 56, !727, i64 64, !727, i64 72, !727, i64 80, !727, i64 88, !727, i64 96, !727, i64 104, !949, i64 112, !949, i64 116, !923, i64 120, !1018, i64 128, !728, i64 130, !728, i64 131, !727, i64 136, !923, i64 144, !727, i64 152, !727, i64 160, !727, i64 168, !727, i64 176, !923, i64 184, !949, i64 192, !728, i64 196}
!1018 = !{!"short", !728, i64 0}
!1019 = !DILocation(line: 298, column: 11, scope: !1014, inlinedAt: !887)
!1020 = !DILocation(line: 298, column: 11, scope: !987, inlinedAt: !887)
!1021 = !DILocation(line: 299, column: 9, scope: !1014, inlinedAt: !887)
!1022 = !DILocation(line: 0, scope: !1023, inlinedAt: !887)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 331, column: 9)
!1024 = distinct !DILexicalBlock(scope: !869, file: !3, line: 330, column: 11)
!1025 = !DILocation(line: 389, column: 9, scope: !1026, inlinedAt: !887)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 389, column: 9)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 388, column: 3)
!1028 = distinct !DILexicalBlock(scope: !787, file: !3, line: 388, column: 3)
!1029 = !DILocation(line: 389, column: 29, scope: !1026, inlinedAt: !887)
!1030 = !DILocation(line: 389, column: 9, scope: !1027, inlinedAt: !887)
!1031 = !DILocation(line: 305, column: 12, scope: !869, inlinedAt: !887)
!1032 = !DILocation(line: 309, column: 12, scope: !876, inlinedAt: !887)
!1033 = !DILocation(line: 309, column: 11, scope: !869, inlinedAt: !887)
!1034 = !DILocation(line: 339, column: 15, scope: !1035, inlinedAt: !887)
!1035 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 337, column: 9)
!1036 = !DILocation(line: 311, column: 17, scope: !875, inlinedAt: !887)
!1037 = !DILocation(line: 311, column: 16, scope: !876, inlinedAt: !887)
!1038 = !DILocation(line: 315, column: 15, scope: !873, inlinedAt: !887)
!1039 = !{i8 0, i8 2}
!1040 = !DILocation(line: 315, column: 15, scope: !874, inlinedAt: !887)
!1041 = !DILocation(line: 316, column: 44, scope: !873, inlinedAt: !887)
!1042 = !{!1043, !727, i64 16}
!1043 = !{!"linebuffer", !923, i64 0, !923, i64 8, !727, i64 16}
!1044 = !DILocation(line: 316, column: 65, scope: !873, inlinedAt: !887)
!1045 = !{!1043, !923, i64 8}
!1046 = !DILocation(line: 316, column: 72, scope: !873, inlinedAt: !887)
!1047 = !DILocation(line: 317, column: 44, scope: !873, inlinedAt: !887)
!1048 = !DILocation(line: 317, column: 65, scope: !873, inlinedAt: !887)
!1049 = !DILocation(line: 317, column: 72, scope: !873, inlinedAt: !887)
!1050 = !DILocation(line: 316, column: 21, scope: !873, inlinedAt: !887)
!1051 = !DILocation(line: 304, column: 11, scope: !869, inlinedAt: !887)
!1052 = !DILocation(line: 316, column: 13, scope: !873, inlinedAt: !887)
!1053 = !DILocation(line: 320, column: 28, scope: !872, inlinedAt: !887)
!1054 = !DILocation(line: 320, column: 75, scope: !872, inlinedAt: !887)
!1055 = !DILocation(line: 320, column: 22, scope: !872, inlinedAt: !887)
!1056 = !DILocation(line: 321, column: 44, scope: !872, inlinedAt: !887)
!1057 = !DILocation(line: 321, column: 65, scope: !872, inlinedAt: !887)
!1058 = !DILocation(line: 321, column: 23, scope: !872, inlinedAt: !887)
!1059 = !DILocation(line: 322, column: 25, scope: !1060, inlinedAt: !887)
!1060 = distinct !DILexicalBlock(scope: !872, file: !3, line: 322, column: 19)
!1061 = !DILocation(line: 322, column: 19, scope: !872, inlinedAt: !887)
!1062 = !DILocation(line: 325, column: 48, scope: !1060, inlinedAt: !887)
!1063 = !DILocation(line: 0, scope: !876, inlinedAt: !887)
!1064 = !DILocation(line: 330, column: 17, scope: !1024, inlinedAt: !887)
!1065 = !DILocation(line: 330, column: 11, scope: !869, inlinedAt: !887)
!1066 = !DILocation(line: 333, column: 19, scope: !1023, inlinedAt: !887)
!1067 = !DILocation(line: 334, column: 35, scope: !1023, inlinedAt: !887)
!1068 = !DILocalVariable(name: "line", arg: 1, scope: !1069, file: !3, line: 174, type: !1072)
!1069 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 174, type: !1070, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1074)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !1072, !811, !68}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!1074 = !{!1068, !1075, !1076}
!1075 = !DILocalVariable(name: "stream", arg: 2, scope: !1069, file: !3, line: 174, type: !811)
!1076 = !DILocalVariable(name: "class", arg: 3, scope: !1069, file: !3, line: 174, type: !68)
!1077 = !DILocation(line: 174, column: 37, scope: !1069, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 334, column: 11, scope: !1023, inlinedAt: !887)
!1079 = !DILocation(line: 174, column: 49, scope: !1069, inlinedAt: !1078)
!1080 = !DILocation(line: 174, column: 61, scope: !1069, inlinedAt: !1078)
!1081 = !DILocation(line: 191, column: 11, scope: !1082, inlinedAt: !1078)
!1082 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 177, column: 5)
!1083 = !DILocation(line: 193, column: 11, scope: !1082, inlinedAt: !1078)
!1084 = !DILocation(line: 194, column: 9, scope: !1085, inlinedAt: !1078)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 193, column: 11)
!1086 = !DILocation(line: 195, column: 11, scope: !1082, inlinedAt: !1078)
!1087 = !DILocation(line: 196, column: 9, scope: !1088, inlinedAt: !1078)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 195, column: 11)
!1089 = !DILocation(line: 200, column: 3, scope: !1069, inlinedAt: !1078)
!1090 = !DILocation(line: 201, column: 1, scope: !1069, inlinedAt: !1078)
!1091 = !DILocation(line: 339, column: 21, scope: !1092, inlinedAt: !887)
!1092 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 339, column: 15)
!1093 = !DILocation(line: 342, column: 23, scope: !1094, inlinedAt: !887)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 340, column: 13)
!1095 = !DILocation(line: 174, column: 37, scope: !1069, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 343, column: 15, scope: !1094, inlinedAt: !887)
!1097 = !DILocation(line: 174, column: 61, scope: !1069, inlinedAt: !1096)
!1098 = !DILocation(line: 179, column: 11, scope: !1082, inlinedAt: !1096)
!1099 = !DILocation(line: 343, column: 39, scope: !1094, inlinedAt: !887)
!1100 = !DILocation(line: 174, column: 49, scope: !1069, inlinedAt: !1096)
!1101 = !DILocation(line: 200, column: 3, scope: !1069, inlinedAt: !1096)
!1102 = !DILocation(line: 201, column: 1, scope: !1069, inlinedAt: !1096)
!1103 = !DILocation(line: 348, column: 23, scope: !1104, inlinedAt: !887)
!1104 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 346, column: 13)
!1105 = !DILocation(line: 349, column: 39, scope: !1104, inlinedAt: !887)
!1106 = !DILocation(line: 174, column: 37, scope: !1069, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 349, column: 15, scope: !1104, inlinedAt: !887)
!1108 = !DILocation(line: 174, column: 49, scope: !1069, inlinedAt: !1107)
!1109 = !DILocation(line: 174, column: 61, scope: !1069, inlinedAt: !1107)
!1110 = !DILocation(line: 184, column: 11, scope: !1082, inlinedAt: !1107)
!1111 = !DILocation(line: 186, column: 11, scope: !1082, inlinedAt: !1107)
!1112 = !DILocation(line: 187, column: 9, scope: !1113, inlinedAt: !1107)
!1113 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 186, column: 11)
!1114 = !DILocation(line: 200, column: 3, scope: !1069, inlinedAt: !1107)
!1115 = !DILocation(line: 201, column: 1, scope: !1069, inlinedAt: !1107)
!1116 = !DILocation(line: 366, column: 36, scope: !1117, inlinedAt: !887)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 362, column: 11)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 361, column: 13)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 360, column: 7)
!1120 = distinct !DILexicalBlock(scope: !869, file: !3, line: 360, column: 7)
!1121 = !DILocation(line: 366, column: 41, scope: !1117, inlinedAt: !887)
!1122 = !DILocation(line: 368, column: 49, scope: !1117, inlinedAt: !887)
!1123 = !DILocation(line: 368, column: 27, scope: !1117, inlinedAt: !887)
!1124 = !DILocation(line: 371, column: 17, scope: !1125, inlinedAt: !887)
!1125 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 371, column: 17)
!1126 = !DILocation(line: 371, column: 17, scope: !1117, inlinedAt: !887)
!1127 = !DILocation(line: 372, column: 28, scope: !1125, inlinedAt: !887)
!1128 = !DILocation(line: 372, column: 15, scope: !1125, inlinedAt: !887)
!1129 = !DILocation(line: 377, column: 22, scope: !1130, inlinedAt: !887)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 377, column: 22)
!1131 = !DILocation(line: 377, column: 46, scope: !1130, inlinedAt: !887)
!1132 = !DILocation(line: 377, column: 22, scope: !1125, inlinedAt: !887)
!1133 = !DILocation(line: 379, column: 28, scope: !1130, inlinedAt: !887)
!1134 = !DILocation(line: 378, column: 15, scope: !1130, inlinedAt: !887)
!1135 = !DILocation(line: 135, column: 1, scope: !1007, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 381, column: 17, scope: !1137, inlinedAt: !887)
!1137 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 381, column: 17)
!1138 = !DILocation(line: 137, column: 10, scope: !1007, inlinedAt: !1136)
!1139 = !DILocation(line: 381, column: 17, scope: !1137, inlinedAt: !887)
!1140 = !DILocation(line: 381, column: 17, scope: !1117, inlinedAt: !887)
!1141 = !DILocation(line: 382, column: 15, scope: !1137, inlinedAt: !887)
!1142 = !DILocation(line: 361, column: 13, scope: !1118, inlinedAt: !887)
!1143 = !DILocation(line: 361, column: 13, scope: !1119, inlinedAt: !887)
!1144 = !DILocation(line: 390, column: 7, scope: !1026, inlinedAt: !887)
!1145 = !DILocation(line: 395, column: 7, scope: !878, inlinedAt: !887)
!1146 = !DILocation(line: 396, column: 7, scope: !878, inlinedAt: !887)
!1147 = !DILocation(line: 397, column: 7, scope: !878, inlinedAt: !887)
!1148 = !DILocation(line: 398, column: 7, scope: !878, inlinedAt: !887)
!1149 = !DILocation(line: 403, column: 5, scope: !879, inlinedAt: !887)
!1150 = !DILocation(line: 403, column: 5, scope: !878, inlinedAt: !887)
!1151 = !DILocation(line: 392, column: 7, scope: !787, inlinedAt: !887)
!1152 = !DILocation(line: 302, column: 25, scope: !787, inlinedAt: !887)
!1153 = !DILocation(line: 302, column: 10, scope: !787, inlinedAt: !887)
!1154 = !DILocation(line: 302, column: 22, scope: !787, inlinedAt: !887)
!1155 = !DILocation(line: 302, column: 3, scope: !787, inlinedAt: !887)
!1156 = distinct !{!1156, !1157, !1158}
!1157 = !DILocation(line: 302, column: 3, scope: !787)
!1158 = !DILocation(line: 386, column: 5, scope: !787)
!1159 = !DILocation(line: 404, column: 1, scope: !787, inlinedAt: !887)
!1160 = !DILocation(line: 495, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !778, file: !3, line: 495, column: 7)
!1162 = !DILocation(line: 495, column: 37, scope: !1161)
!1163 = !DILocation(line: 495, column: 34, scope: !1161)
!1164 = !DILocation(line: 499, column: 1, scope: !778)
!1165 = distinct !DISubprogram(name: "check_order", scope: !3, file: !3, line: 215, type: !1166, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !1072, !1072, !68}
!1168 = !{!1169, !1170, !1171, !1172}
!1169 = !DILocalVariable(name: "prev", arg: 1, scope: !1165, file: !3, line: 215, type: !1072)
!1170 = !DILocalVariable(name: "current", arg: 2, scope: !1165, file: !3, line: 216, type: !1072)
!1171 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1165, file: !3, line: 217, type: !68)
!1172 = !DILocalVariable(name: "order", scope: !1173, file: !3, line: 225, type: !68)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 224, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 223, column: 11)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 222, column: 5)
!1176 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 220, column: 7)
!1177 = !DILocation(line: 215, column: 39, scope: !1165)
!1178 = !DILocation(line: 216, column: 39, scope: !1165)
!1179 = !DILocation(line: 217, column: 18, scope: !1165)
!1180 = !DILocation(line: 220, column: 7, scope: !1176)
!1181 = !DILocation(line: 221, column: 7, scope: !1176)
!1182 = !DILocation(line: 220, column: 7, scope: !1165)
!1183 = !DILocation(line: 223, column: 45, scope: !1174)
!1184 = !DILocation(line: 223, column: 12, scope: !1174)
!1185 = !DILocation(line: 223, column: 11, scope: !1175)
!1186 = !DILocation(line: 227, column: 15, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 227, column: 15)
!1188 = !DILocation(line: 0, scope: !1187)
!1189 = !DILocation(line: 227, column: 15, scope: !1173)
!1190 = !DILocation(line: 228, column: 21, scope: !1187)
!1191 = !DILocation(line: 225, column: 15, scope: !1173)
!1192 = !DILocation(line: 228, column: 13, scope: !1187)
!1193 = !DILocation(line: 231, column: 21, scope: !1187)
!1194 = !DILocation(line: 234, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 234, column: 15)
!1196 = !DILocation(line: 234, column: 15, scope: !1173)
!1197 = !DILocation(line: 236, column: 23, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 235, column: 13)
!1199 = !DILocation(line: 236, column: 41, scope: !1198)
!1200 = !DILocation(line: 238, column: 25, scope: !1198)
!1201 = !DILocation(line: 236, column: 15, scope: !1198)
!1202 = !DILocation(line: 242, column: 53, scope: !1198)
!1203 = !DILocation(line: 243, column: 13, scope: !1198)
!1204 = !DILocation(line: 246, column: 1, scope: !1165)
!1205 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !103, file: !103, line: 51, type: !701, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1206)
!1206 = !{!1207}
!1207 = !DILocalVariable(name: "file", arg: 1, scope: !1205, file: !103, line: 51, type: !65)
!1208 = !DILocation(line: 51, column: 41, scope: !1205)
!1209 = !DILocation(line: 53, column: 13, scope: !1205)
!1210 = !DILocation(line: 54, column: 1, scope: !1205)
!1211 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !103, file: !103, line: 88, type: !1212, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !41}
!1214 = !{!1215}
!1215 = !DILocalVariable(name: "ignore", arg: 1, scope: !1211, file: !103, line: 88, type: !41)
!1216 = !DILocation(line: 88, column: 37, scope: !1211)
!1217 = !DILocation(line: 90, column: 16, scope: !1211)
!1218 = !DILocation(line: 91, column: 1, scope: !1211)
!1219 = distinct !DISubprogram(name: "close_stdout", scope: !103, file: !103, line: 117, type: !1220, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null}
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "write_error", scope: !1224, file: !103, line: 122, type: !65)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !103, line: 121, column: 5)
!1225 = distinct !DILexicalBlock(scope: !1219, file: !103, line: 119, column: 7)
!1226 = !DILocation(line: 119, column: 21, scope: !1225)
!1227 = !DILocation(line: 119, column: 7, scope: !1225)
!1228 = !DILocation(line: 119, column: 29, scope: !1225)
!1229 = !DILocation(line: 120, column: 7, scope: !1225)
!1230 = !DILocation(line: 120, column: 12, scope: !1225)
!1231 = !DILocation(line: 120, column: 25, scope: !1225)
!1232 = !DILocation(line: 120, column: 28, scope: !1225)
!1233 = !DILocation(line: 120, column: 34, scope: !1225)
!1234 = !DILocation(line: 119, column: 7, scope: !1219)
!1235 = !DILocation(line: 122, column: 33, scope: !1224)
!1236 = !DILocation(line: 122, column: 19, scope: !1224)
!1237 = !DILocation(line: 123, column: 11, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1224, file: !103, line: 123, column: 11)
!1239 = !DILocation(line: 0, scope: !1238)
!1240 = !DILocation(line: 123, column: 11, scope: !1224)
!1241 = !DILocation(line: 124, column: 36, scope: !1238)
!1242 = !DILocation(line: 124, column: 9, scope: !1238)
!1243 = !DILocation(line: 127, column: 9, scope: !1238)
!1244 = !DILocation(line: 129, column: 14, scope: !1224)
!1245 = !DILocation(line: 129, column: 7, scope: !1224)
!1246 = !DILocation(line: 134, column: 42, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1219, file: !103, line: 134, column: 7)
!1248 = !DILocation(line: 134, column: 28, scope: !1247)
!1249 = !DILocation(line: 134, column: 50, scope: !1247)
!1250 = !DILocation(line: 134, column: 7, scope: !1219)
!1251 = !DILocation(line: 135, column: 12, scope: !1247)
!1252 = !DILocation(line: 135, column: 5, scope: !1247)
!1253 = !DILocation(line: 136, column: 1, scope: !1219)
!1254 = distinct !DISubprogram(name: "fdadvise", scope: !1255, file: !1255, line: 31, type: !1256, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !1261)
!1255 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !68, !1258, !1258, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1259, line: 63, baseType: !837)
!1259 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !26, line: 52, baseType: !25)
!1261 = !{!1262, !1263, !1264, !1265, !1266}
!1262 = !DILocalVariable(name: "fd", arg: 1, scope: !1254, file: !1255, line: 31, type: !68)
!1263 = !DILocalVariable(name: "offset", arg: 2, scope: !1254, file: !1255, line: 31, type: !1258)
!1264 = !DILocalVariable(name: "len", arg: 3, scope: !1254, file: !1255, line: 31, type: !1258)
!1265 = !DILocalVariable(name: "advice", arg: 4, scope: !1254, file: !1255, line: 31, type: !1260)
!1266 = !DILocalVariable(name: "__x", scope: !1267, file: !1255, line: 34, type: !68)
!1267 = distinct !DILexicalBlock(scope: !1254, file: !1255, line: 34, column: 3)
!1268 = !DILocation(line: 31, column: 15, scope: !1254)
!1269 = !DILocation(line: 31, column: 25, scope: !1254)
!1270 = !DILocation(line: 31, column: 39, scope: !1254)
!1271 = !DILocation(line: 31, column: 54, scope: !1254)
!1272 = !DILocation(line: 34, column: 3, scope: !1267)
!1273 = !DILocation(line: 36, column: 1, scope: !1254)
!1274 = distinct !DISubprogram(name: "fadvise", scope: !1255, file: !1255, line: 39, type: !1275, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !1311)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !1277, !1260}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1279, file: !815, line: 51, baseType: !68, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1279, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1279, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1279, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1279, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1279, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1279, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1279, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1279, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1279, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1279, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1279, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1279, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1279, file: !815, line: 70, baseType: !1295, size: 64, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1279, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1279, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1279, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1279, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1279, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1279, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1279, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1279, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1279, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1279, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1279, file: !815, line: 93, baseType: !1295, size: 64, offset: 1344)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1279, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1279, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1279, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1279, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!1311 = !{!1312, !1313}
!1312 = !DILocalVariable(name: "fp", arg: 1, scope: !1274, file: !1255, line: 39, type: !1277)
!1313 = !DILocalVariable(name: "advice", arg: 2, scope: !1274, file: !1255, line: 39, type: !1260)
!1314 = !DILocation(line: 39, column: 16, scope: !1274)
!1315 = !DILocation(line: 39, column: 30, scope: !1274)
!1316 = !DILocation(line: 41, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1274, file: !1255, line: 41, column: 7)
!1318 = !DILocation(line: 41, column: 7, scope: !1274)
!1319 = !DILocation(line: 42, column: 15, scope: !1317)
!1320 = !DILocation(line: 31, column: 15, scope: !1254, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 42, column: 5, scope: !1317)
!1322 = !DILocation(line: 31, column: 25, scope: !1254, inlinedAt: !1321)
!1323 = !DILocation(line: 31, column: 39, scope: !1254, inlinedAt: !1321)
!1324 = !DILocation(line: 31, column: 54, scope: !1254, inlinedAt: !1321)
!1325 = !DILocation(line: 34, column: 3, scope: !1267, inlinedAt: !1321)
!1326 = !DILocation(line: 42, column: 5, scope: !1317)
!1327 = !DILocation(line: 43, column: 1, scope: !1274)
!1328 = distinct !DISubprogram(name: "fopen_safer", scope: !1329, file: !1329, line: 31, type: !1330, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !1366)
!1329 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332, !65, !65}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1334, file: !815, line: 51, baseType: !68, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1334, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1334, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1334, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1334, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1334, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1334, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1334, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1334, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1334, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1334, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1334, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1334, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1334, file: !815, line: 70, baseType: !1350, size: 64, offset: 832)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1334, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1334, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1334, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1334, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1334, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1334, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1334, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1334, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1334, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1334, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1334, file: !815, line: 93, baseType: !1350, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1334, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1334, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1334, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1334, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!1366 = !{!1367, !1368, !1369, !1370, !1373, !1376, !1379}
!1367 = !DILocalVariable(name: "file", arg: 1, scope: !1328, file: !1329, line: 31, type: !65)
!1368 = !DILocalVariable(name: "mode", arg: 2, scope: !1328, file: !1329, line: 31, type: !65)
!1369 = !DILocalVariable(name: "fp", scope: !1328, file: !1329, line: 33, type: !1332)
!1370 = !DILocalVariable(name: "fd", scope: !1371, file: !1329, line: 37, type: !68)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1329, line: 36, column: 5)
!1372 = distinct !DILexicalBlock(scope: !1328, file: !1329, line: 35, column: 7)
!1373 = !DILocalVariable(name: "f", scope: !1374, file: !1329, line: 41, type: !68)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1329, line: 40, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !1329, line: 39, column: 11)
!1376 = !DILocalVariable(name: "e", scope: !1377, file: !1329, line: 45, type: !68)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !1329, line: 44, column: 13)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !1329, line: 43, column: 15)
!1379 = !DILocalVariable(name: "e", scope: !1380, file: !1329, line: 54, type: !68)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !1329, line: 53, column: 13)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !1329, line: 51, column: 15)
!1382 = !DILocation(line: 31, column: 26, scope: !1328)
!1383 = !DILocation(line: 31, column: 44, scope: !1328)
!1384 = !DILocation(line: 33, column: 14, scope: !1328)
!1385 = !DILocation(line: 33, column: 9, scope: !1328)
!1386 = !DILocation(line: 35, column: 7, scope: !1372)
!1387 = !DILocation(line: 35, column: 7, scope: !1328)
!1388 = !DILocation(line: 37, column: 16, scope: !1371)
!1389 = !DILocation(line: 37, column: 11, scope: !1371)
!1390 = !DILocation(line: 39, column: 19, scope: !1375)
!1391 = !DILocation(line: 41, column: 19, scope: !1374)
!1392 = !DILocation(line: 41, column: 15, scope: !1374)
!1393 = !DILocation(line: 43, column: 17, scope: !1378)
!1394 = !DILocation(line: 43, column: 15, scope: !1374)
!1395 = !DILocation(line: 45, column: 23, scope: !1377)
!1396 = !DILocation(line: 45, column: 19, scope: !1377)
!1397 = !DILocation(line: 46, column: 15, scope: !1377)
!1398 = !DILocation(line: 47, column: 21, scope: !1377)
!1399 = !DILocation(line: 51, column: 15, scope: !1381)
!1400 = !DILocation(line: 51, column: 27, scope: !1381)
!1401 = !DILocation(line: 52, column: 15, scope: !1381)
!1402 = !DILocation(line: 52, column: 26, scope: !1381)
!1403 = !DILocation(line: 52, column: 24, scope: !1381)
!1404 = !DILocation(line: 51, column: 15, scope: !1374)
!1405 = !DILocation(line: 54, column: 23, scope: !1380)
!1406 = !DILocation(line: 54, column: 19, scope: !1380)
!1407 = !DILocation(line: 55, column: 15, scope: !1380)
!1408 = !DILocation(line: 56, column: 21, scope: !1380)
!1409 = !DILocation(line: 0, scope: !1377)
!1410 = !DILocation(line: 63, column: 1, scope: !1328)
!1411 = distinct !DISubprogram(name: "hard_locale", scope: !1412, file: !1412, line: 38, type: !1413, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !236, retainedNodes: !1415)
!1412 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!41, !68}
!1415 = !{!1416, !1417, !1418}
!1416 = !DILocalVariable(name: "category", arg: 1, scope: !1411, file: !1412, line: 38, type: !68)
!1417 = !DILocalVariable(name: "hard", scope: !1411, file: !1412, line: 40, type: !41)
!1418 = !DILocalVariable(name: "p", scope: !1411, file: !1412, line: 41, type: !65)
!1419 = !DILocation(line: 38, column: 18, scope: !1411)
!1420 = !DILocation(line: 40, column: 8, scope: !1411)
!1421 = !DILocation(line: 41, column: 19, scope: !1411)
!1422 = !DILocation(line: 41, column: 15, scope: !1411)
!1423 = !DILocation(line: 43, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1411, file: !1412, line: 43, column: 7)
!1425 = !DILocation(line: 43, column: 7, scope: !1411)
!1426 = !DILocation(line: 47, column: 15, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !1412, line: 47, column: 15)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !1412, line: 46, column: 9)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1412, line: 45, column: 11)
!1430 = distinct !DILexicalBlock(scope: !1424, file: !1412, line: 44, column: 5)
!1431 = !DILocation(line: 47, column: 31, scope: !1427)
!1432 = !DILocation(line: 47, column: 36, scope: !1427)
!1433 = !DILocation(line: 47, column: 39, scope: !1427)
!1434 = !DILocation(line: 47, column: 59, scope: !1427)
!1435 = !DILocation(line: 47, column: 15, scope: !1428)
!1436 = !DILocation(line: 48, column: 13, scope: !1427)
!1437 = !DILocation(line: 71, column: 3, scope: !1411)
!1438 = distinct !DISubprogram(name: "umaxtostr", scope: !1439, file: !1439, line: 36, type: !1440, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !1442)
!1439 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!35, !241, !35}
!1442 = !{!1443, !1444, !1445}
!1443 = !DILocalVariable(name: "i", arg: 1, scope: !1438, file: !1439, line: 36, type: !241)
!1444 = !DILocalVariable(name: "buf", arg: 2, scope: !1438, file: !1439, line: 36, type: !35)
!1445 = !DILocalVariable(name: "p", scope: !1438, file: !1439, line: 38, type: !35)
!1446 = !DILocation(line: 36, column: 19, scope: !1438)
!1447 = !DILocation(line: 36, column: 28, scope: !1438)
!1448 = !DILocation(line: 38, column: 17, scope: !1438)
!1449 = !DILocation(line: 38, column: 9, scope: !1438)
!1450 = !DILocation(line: 39, column: 6, scope: !1438)
!1451 = !DILocation(line: 41, column: 7, scope: !1438)
!1452 = !DILocation(line: 0, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !1439, line: 50, column: 5)
!1454 = distinct !DILexicalBlock(scope: !1438, file: !1439, line: 41, column: 7)
!1455 = !DILocation(line: 52, column: 24, scope: !1453)
!1456 = !DILocation(line: 52, column: 16, scope: !1453)
!1457 = !DILocation(line: 52, column: 10, scope: !1453)
!1458 = !DILocation(line: 52, column: 14, scope: !1453)
!1459 = !DILocation(line: 53, column: 17, scope: !1453)
!1460 = !DILocation(line: 53, column: 24, scope: !1453)
!1461 = !DILocation(line: 52, column: 9, scope: !1453)
!1462 = distinct !{!1462, !1463, !1464}
!1463 = !DILocation(line: 51, column: 7, scope: !1453)
!1464 = !DILocation(line: 53, column: 28, scope: !1453)
!1465 = !DILocation(line: 56, column: 3, scope: !1438)
!1466 = distinct !DISubprogram(name: "initbuffer", scope: !1467, file: !1467, line: 37, type: !1468, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !1476)
!1467 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !796, line: 26, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1471, file: !796, line: 28, baseType: !79, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1471, file: !796, line: 29, baseType: !79, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1471, file: !796, line: 30, baseType: !35, size: 64, offset: 128)
!1476 = !{!1477}
!1477 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1466, file: !1467, line: 37, type: !1470)
!1478 = !DILocation(line: 37, column: 32, scope: !1466)
!1479 = !DILocation(line: 39, column: 3, scope: !1466)
!1480 = !DILocation(line: 40, column: 1, scope: !1466)
!1481 = distinct !DISubprogram(name: "readlinebuffer", scope: !1467, file: !1467, line: 43, type: !1482, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !1518)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!1470, !1470, !1484}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1486, file: !815, line: 51, baseType: !68, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1486, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1486, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1486, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1486, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1486, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1486, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1486, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1486, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1486, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1486, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1486, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1486, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1486, file: !815, line: 70, baseType: !1502, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1486, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1486, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1486, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1486, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1486, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1486, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1486, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1486, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1486, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1486, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1486, file: !815, line: 93, baseType: !1502, size: 64, offset: 1344)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1486, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1486, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1486, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1486, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!1518 = !{!1519, !1520}
!1519 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1481, file: !1467, line: 43, type: !1470)
!1520 = !DILocalVariable(name: "stream", arg: 2, scope: !1481, file: !1467, line: 43, type: !1484)
!1521 = !DILocation(line: 43, column: 36, scope: !1481)
!1522 = !DILocation(line: 43, column: 54, scope: !1481)
!1523 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1524, file: !1467, line: 59, type: !1470)
!1524 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !1467, file: !1467, line: 59, type: !1525, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1470, !1470, !1484, !36}
!1527 = !{!1523, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1528 = !DILocalVariable(name: "stream", arg: 2, scope: !1524, file: !1467, line: 59, type: !1484)
!1529 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1524, file: !1467, line: 60, type: !36)
!1530 = !DILocalVariable(name: "c", scope: !1524, file: !1467, line: 62, type: !68)
!1531 = !DILocalVariable(name: "buffer", scope: !1524, file: !1467, line: 63, type: !35)
!1532 = !DILocalVariable(name: "p", scope: !1524, file: !1467, line: 64, type: !35)
!1533 = !DILocalVariable(name: "end", scope: !1524, file: !1467, line: 65, type: !35)
!1534 = !DILocalVariable(name: "oldsize", scope: !1535, file: !1467, line: 83, type: !79)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !1467, line: 82, column: 9)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !1467, line: 81, column: 11)
!1537 = distinct !DILexicalBlock(scope: !1524, file: !1467, line: 71, column: 5)
!1538 = !DILocation(line: 59, column: 42, scope: !1524, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 45, column: 10, scope: !1481)
!1540 = !DILocation(line: 59, column: 60, scope: !1524, inlinedAt: !1539)
!1541 = !DILocation(line: 60, column: 28, scope: !1524, inlinedAt: !1539)
!1542 = !DILocation(line: 63, column: 30, scope: !1524, inlinedAt: !1539)
!1543 = !DILocation(line: 63, column: 9, scope: !1524, inlinedAt: !1539)
!1544 = !DILocation(line: 64, column: 9, scope: !1524, inlinedAt: !1539)
!1545 = !DILocation(line: 65, column: 36, scope: !1524, inlinedAt: !1539)
!1546 = !DILocalVariable(name: "__stream", arg: 1, scope: !1547, file: !1008, line: 128, type: !1484)
!1547 = distinct !DISubprogram(name: "feof_unlocked", scope: !1008, file: !1008, line: 128, type: !1548, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!68, !1484}
!1550 = !{!1546}
!1551 = !DILocation(line: 128, column: 1, scope: !1547, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 67, column: 7, scope: !1553, inlinedAt: !1539)
!1553 = distinct !DILexicalBlock(scope: !1524, file: !1467, line: 67, column: 7)
!1554 = !DILocation(line: 130, column: 10, scope: !1547, inlinedAt: !1552)
!1555 = !DILocation(line: 67, column: 7, scope: !1553, inlinedAt: !1539)
!1556 = !DILocation(line: 67, column: 7, scope: !1524, inlinedAt: !1539)
!1557 = !{!1043, !923, i64 0}
!1558 = !DILocation(line: 65, column: 22, scope: !1524, inlinedAt: !1539)
!1559 = !DILocation(line: 65, column: 9, scope: !1524, inlinedAt: !1539)
!1560 = !DILocation(line: 68, column: 10, scope: !1561, inlinedAt: !1564)
!1561 = distinct !DISubprogram(name: "getc_unlocked", scope: !1008, file: !1008, line: 66, type: !1548, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !1562)
!1562 = !{!1563}
!1563 = !DILocalVariable(name: "__fp", arg: 1, scope: !1561, file: !1008, line: 66, type: !1484)
!1564 = distinct !DILocation(line: 72, column: 11, scope: !1537, inlinedAt: !1539)
!1565 = !DILocation(line: 0, scope: !1535, inlinedAt: !1539)
!1566 = !DILocation(line: 0, scope: !1537, inlinedAt: !1539)
!1567 = !DILocation(line: 66, column: 22, scope: !1561, inlinedAt: !1564)
!1568 = !{!1017, !727, i64 8}
!1569 = !{!1017, !727, i64 16}
!1570 = !{!"branch_weights", i32 2000, i32 1}
!1571 = !DILocation(line: 62, column: 7, scope: !1524, inlinedAt: !1539)
!1572 = !DILocation(line: 73, column: 11, scope: !1537, inlinedAt: !1539)
!1573 = !DILocation(line: 73, column: 13, scope: !1574, inlinedAt: !1539)
!1574 = distinct !DILexicalBlock(scope: !1537, file: !1467, line: 73, column: 11)
!1575 = !DILocation(line: 75, column: 17, scope: !1576, inlinedAt: !1539)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !1467, line: 75, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !1467, line: 74, column: 9)
!1578 = !DILocation(line: 75, column: 27, scope: !1576, inlinedAt: !1539)
!1579 = !DILocalVariable(name: "__stream", arg: 1, scope: !1580, file: !1008, line: 135, type: !1484)
!1580 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1008, file: !1008, line: 135, type: !1548, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !1581)
!1581 = !{!1579}
!1582 = !DILocation(line: 135, column: 1, scope: !1580, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 75, column: 30, scope: !1576, inlinedAt: !1539)
!1584 = !DILocation(line: 137, column: 10, scope: !1580, inlinedAt: !1583)
!1585 = !DILocation(line: 75, column: 30, scope: !1576, inlinedAt: !1539)
!1586 = !DILocation(line: 75, column: 15, scope: !1577, inlinedAt: !1539)
!1587 = !DILocation(line: 77, column: 15, scope: !1588, inlinedAt: !1539)
!1588 = distinct !DILexicalBlock(scope: !1577, file: !1467, line: 77, column: 15)
!1589 = !DILocation(line: 77, column: 21, scope: !1588, inlinedAt: !1539)
!1590 = !DILocation(line: 77, column: 15, scope: !1577, inlinedAt: !1539)
!1591 = !DILocation(line: 81, column: 13, scope: !1536, inlinedAt: !1539)
!1592 = !DILocation(line: 81, column: 11, scope: !1537, inlinedAt: !1539)
!1593 = !DILocation(line: 83, column: 40, scope: !1535, inlinedAt: !1539)
!1594 = !DILocation(line: 83, column: 18, scope: !1535, inlinedAt: !1539)
!1595 = !DILocation(line: 84, column: 20, scope: !1535, inlinedAt: !1539)
!1596 = !DILocation(line: 85, column: 22, scope: !1535, inlinedAt: !1539)
!1597 = !DILocation(line: 86, column: 30, scope: !1535, inlinedAt: !1539)
!1598 = !DILocation(line: 87, column: 38, scope: !1535, inlinedAt: !1539)
!1599 = !DILocation(line: 87, column: 24, scope: !1535, inlinedAt: !1539)
!1600 = !DILocation(line: 88, column: 9, scope: !1535, inlinedAt: !1539)
!1601 = !DILocation(line: 0, scope: !1524, inlinedAt: !1539)
!1602 = !DILocation(line: 89, column: 14, scope: !1537, inlinedAt: !1539)
!1603 = !DILocation(line: 89, column: 9, scope: !1537, inlinedAt: !1539)
!1604 = !DILocation(line: 89, column: 12, scope: !1537, inlinedAt: !1539)
!1605 = !DILocation(line: 91, column: 12, scope: !1524, inlinedAt: !1539)
!1606 = !DILocation(line: 90, column: 5, scope: !1537, inlinedAt: !1539)
!1607 = distinct !{!1607, !1608, !1609}
!1608 = !DILocation(line: 70, column: 3, scope: !1524)
!1609 = !DILocation(line: 91, column: 24, scope: !1524)
!1610 = !DILocation(line: 93, column: 26, scope: !1524, inlinedAt: !1539)
!1611 = !DILocation(line: 93, column: 15, scope: !1524, inlinedAt: !1539)
!1612 = !DILocation(line: 93, column: 22, scope: !1524, inlinedAt: !1539)
!1613 = !DILocation(line: 94, column: 3, scope: !1524, inlinedAt: !1539)
!1614 = !DILocation(line: 45, column: 3, scope: !1481)
!1615 = !DILocation(line: 59, column: 42, scope: !1524)
!1616 = !DILocation(line: 59, column: 60, scope: !1524)
!1617 = !DILocation(line: 60, column: 28, scope: !1524)
!1618 = !DILocation(line: 63, column: 30, scope: !1524)
!1619 = !DILocation(line: 63, column: 9, scope: !1524)
!1620 = !DILocation(line: 64, column: 9, scope: !1524)
!1621 = !DILocation(line: 65, column: 36, scope: !1524)
!1622 = !DILocation(line: 128, column: 1, scope: !1547, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 67, column: 7, scope: !1553)
!1624 = !DILocation(line: 130, column: 10, scope: !1547, inlinedAt: !1623)
!1625 = !DILocation(line: 67, column: 7, scope: !1553)
!1626 = !DILocation(line: 67, column: 7, scope: !1524)
!1627 = !DILocation(line: 65, column: 22, scope: !1524)
!1628 = !DILocation(line: 65, column: 9, scope: !1524)
!1629 = !DILocation(line: 68, column: 10, scope: !1561, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 72, column: 11, scope: !1537)
!1631 = !DILocation(line: 0, scope: !1535)
!1632 = !DILocation(line: 0, scope: !1537)
!1633 = !DILocation(line: 66, column: 22, scope: !1561, inlinedAt: !1630)
!1634 = !DILocation(line: 62, column: 7, scope: !1524)
!1635 = !DILocation(line: 73, column: 11, scope: !1537)
!1636 = !DILocation(line: 73, column: 13, scope: !1574)
!1637 = !DILocation(line: 75, column: 17, scope: !1576)
!1638 = !DILocation(line: 75, column: 27, scope: !1576)
!1639 = !DILocation(line: 135, column: 1, scope: !1580, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 75, column: 30, scope: !1576)
!1641 = !DILocation(line: 137, column: 10, scope: !1580, inlinedAt: !1640)
!1642 = !DILocation(line: 75, column: 30, scope: !1576)
!1643 = !DILocation(line: 75, column: 15, scope: !1577)
!1644 = !DILocation(line: 77, column: 15, scope: !1588)
!1645 = !DILocation(line: 77, column: 21, scope: !1588)
!1646 = !DILocation(line: 77, column: 15, scope: !1577)
!1647 = !DILocation(line: 81, column: 13, scope: !1536)
!1648 = !DILocation(line: 81, column: 11, scope: !1537)
!1649 = !DILocation(line: 83, column: 40, scope: !1535)
!1650 = !DILocation(line: 83, column: 18, scope: !1535)
!1651 = !DILocation(line: 84, column: 20, scope: !1535)
!1652 = !DILocation(line: 85, column: 22, scope: !1535)
!1653 = !DILocation(line: 86, column: 30, scope: !1535)
!1654 = !DILocation(line: 87, column: 38, scope: !1535)
!1655 = !DILocation(line: 87, column: 24, scope: !1535)
!1656 = !DILocation(line: 88, column: 9, scope: !1535)
!1657 = !DILocation(line: 0, scope: !1524)
!1658 = !DILocation(line: 89, column: 14, scope: !1537)
!1659 = !DILocation(line: 89, column: 9, scope: !1537)
!1660 = !DILocation(line: 89, column: 12, scope: !1537)
!1661 = !DILocation(line: 91, column: 12, scope: !1524)
!1662 = !DILocation(line: 90, column: 5, scope: !1537)
!1663 = !DILocation(line: 93, column: 26, scope: !1524)
!1664 = !DILocation(line: 93, column: 15, scope: !1524)
!1665 = !DILocation(line: 93, column: 22, scope: !1524)
!1666 = !DILocation(line: 94, column: 3, scope: !1524)
!1667 = !DILocation(line: 95, column: 1, scope: !1524)
!1668 = distinct !DISubprogram(name: "freebuffer", scope: !1467, file: !1467, line: 100, type: !1468, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !245, retainedNodes: !1669)
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1668, file: !1467, line: 100, type: !1470)
!1671 = !DILocation(line: 100, column: 32, scope: !1668)
!1672 = !DILocation(line: 102, column: 21, scope: !1668)
!1673 = !DILocation(line: 102, column: 3, scope: !1668)
!1674 = !DILocation(line: 103, column: 1, scope: !1668)
!1675 = distinct !DISubprogram(name: "memcmp2", scope: !1676, file: !1676, line: 25, type: !1677, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !249, retainedNodes: !1679)
!1676 = !DIFile(filename: "lib/memcmp2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!68, !65, !79, !65, !79}
!1679 = !{!1680, !1681, !1682, !1683, !1684}
!1680 = !DILocalVariable(name: "s1", arg: 1, scope: !1675, file: !1676, line: 25, type: !65)
!1681 = !DILocalVariable(name: "n1", arg: 2, scope: !1675, file: !1676, line: 25, type: !79)
!1682 = !DILocalVariable(name: "s2", arg: 3, scope: !1675, file: !1676, line: 25, type: !65)
!1683 = !DILocalVariable(name: "n2", arg: 4, scope: !1675, file: !1676, line: 25, type: !79)
!1684 = !DILocalVariable(name: "cmp", scope: !1675, file: !1676, line: 27, type: !68)
!1685 = !DILocation(line: 25, column: 22, scope: !1675)
!1686 = !DILocation(line: 25, column: 33, scope: !1675)
!1687 = !DILocation(line: 25, column: 49, scope: !1675)
!1688 = !DILocation(line: 25, column: 60, scope: !1675)
!1689 = !DILocation(line: 27, column: 32, scope: !1675)
!1690 = !DILocation(line: 27, column: 29, scope: !1675)
!1691 = !DILocation(line: 27, column: 13, scope: !1675)
!1692 = !DILocation(line: 27, column: 7, scope: !1675)
!1693 = !DILocation(line: 28, column: 11, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1675, file: !1676, line: 28, column: 7)
!1695 = !DILocation(line: 28, column: 7, scope: !1675)
!1696 = !DILocation(line: 30, column: 14, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !1676, line: 30, column: 11)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !1676, line: 29, column: 5)
!1699 = !DILocation(line: 30, column: 11, scope: !1698)
!1700 = !DILocation(line: 32, column: 16, scope: !1697)
!1701 = !DILocation(line: 0, scope: !1675)
!1702 = !DILocation(line: 35, column: 3, scope: !1675)
!1703 = distinct !DISubprogram(name: "set_program_name", scope: !117, file: !117, line: 39, type: !701, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !113, retainedNodes: !1704)
!1704 = !{!1705, !1706, !1707}
!1705 = !DILocalVariable(name: "argv0", arg: 1, scope: !1703, file: !117, line: 39, type: !65)
!1706 = !DILocalVariable(name: "slash", scope: !1703, file: !117, line: 46, type: !65)
!1707 = !DILocalVariable(name: "base", scope: !1703, file: !117, line: 47, type: !65)
!1708 = !DILocation(line: 39, column: 31, scope: !1703)
!1709 = !DILocation(line: 51, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1703, file: !117, line: 51, column: 7)
!1711 = !DILocation(line: 51, column: 7, scope: !1703)
!1712 = !DILocation(line: 55, column: 14, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !117, line: 52, column: 5)
!1714 = !DILocation(line: 54, column: 7, scope: !1713)
!1715 = !DILocation(line: 56, column: 7, scope: !1713)
!1716 = !DILocation(line: 59, column: 11, scope: !1703)
!1717 = !DILocation(line: 46, column: 15, scope: !1703)
!1718 = !DILocation(line: 60, column: 17, scope: !1703)
!1719 = !DILocation(line: 60, column: 33, scope: !1703)
!1720 = !DILocation(line: 60, column: 11, scope: !1703)
!1721 = !DILocation(line: 47, column: 15, scope: !1703)
!1722 = !DILocation(line: 61, column: 12, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1703, file: !117, line: 61, column: 7)
!1724 = !DILocation(line: 61, column: 20, scope: !1723)
!1725 = !DILocation(line: 61, column: 25, scope: !1723)
!1726 = !DILocation(line: 61, column: 42, scope: !1723)
!1727 = !DILocation(line: 61, column: 28, scope: !1723)
!1728 = !DILocation(line: 61, column: 61, scope: !1723)
!1729 = !DILocation(line: 61, column: 7, scope: !1703)
!1730 = !DILocation(line: 64, column: 11, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !117, line: 64, column: 11)
!1732 = distinct !DILexicalBlock(scope: !1723, file: !117, line: 62, column: 5)
!1733 = !DILocation(line: 64, column: 36, scope: !1731)
!1734 = !DILocation(line: 64, column: 11, scope: !1732)
!1735 = !DILocation(line: 66, column: 24, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !117, line: 65, column: 9)
!1737 = !DILocation(line: 70, column: 41, scope: !1736)
!1738 = !DILocation(line: 72, column: 9, scope: !1736)
!1739 = !DILocation(line: 84, column: 16, scope: !1703)
!1740 = !DILocation(line: 90, column: 27, scope: !1703)
!1741 = !DILocation(line: 92, column: 1, scope: !1703)
!1742 = distinct !DISubprogram(name: "clone_quoting_options", scope: !148, file: !148, line: 122, type: !1743, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1746)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1745, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1746 = !{!1747, !1748, !1749}
!1747 = !DILocalVariable(name: "o", arg: 1, scope: !1742, file: !148, line: 122, type: !1745)
!1748 = !DILocalVariable(name: "e", scope: !1742, file: !148, line: 124, type: !68)
!1749 = !DILocalVariable(name: "p", scope: !1742, file: !148, line: 125, type: !1745)
!1750 = !DILocation(line: 122, column: 48, scope: !1742)
!1751 = !DILocation(line: 124, column: 11, scope: !1742)
!1752 = !DILocation(line: 124, column: 7, scope: !1742)
!1753 = !DILocation(line: 125, column: 40, scope: !1742)
!1754 = !DILocation(line: 125, column: 31, scope: !1742)
!1755 = !DILocation(line: 125, column: 27, scope: !1742)
!1756 = !DILocation(line: 127, column: 9, scope: !1742)
!1757 = !DILocation(line: 128, column: 3, scope: !1742)
!1758 = distinct !DISubprogram(name: "get_quoting_style", scope: !148, file: !148, line: 133, type: !1759, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1763)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!11, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1763 = !{!1764}
!1764 = !DILocalVariable(name: "o", arg: 1, scope: !1758, file: !148, line: 133, type: !1761)
!1765 = !DILocation(line: 133, column: 50, scope: !1758)
!1766 = !DILocation(line: 135, column: 11, scope: !1758)
!1767 = !DILocation(line: 135, column: 46, scope: !1758)
!1768 = !{!1769, !728, i64 0}
!1769 = !{!"quoting_options", !728, i64 0, !949, i64 4, !728, i64 8, !727, i64 40, !727, i64 48}
!1770 = !DILocation(line: 135, column: 3, scope: !1758)
!1771 = distinct !DISubprogram(name: "set_quoting_style", scope: !148, file: !148, line: 141, type: !1772, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1745, !11}
!1774 = !{!1775, !1776}
!1775 = !DILocalVariable(name: "o", arg: 1, scope: !1771, file: !148, line: 141, type: !1745)
!1776 = !DILocalVariable(name: "s", arg: 2, scope: !1771, file: !148, line: 141, type: !11)
!1777 = !DILocation(line: 141, column: 44, scope: !1771)
!1778 = !DILocation(line: 141, column: 66, scope: !1771)
!1779 = !DILocation(line: 143, column: 4, scope: !1771)
!1780 = !DILocation(line: 143, column: 39, scope: !1771)
!1781 = !DILocation(line: 143, column: 45, scope: !1771)
!1782 = !DILocation(line: 144, column: 1, scope: !1771)
!1783 = distinct !DISubprogram(name: "set_char_quoting", scope: !148, file: !148, line: 152, type: !1784, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!68, !1745, !36, !68}
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1793, !1794}
!1787 = !DILocalVariable(name: "o", arg: 1, scope: !1783, file: !148, line: 152, type: !1745)
!1788 = !DILocalVariable(name: "c", arg: 2, scope: !1783, file: !148, line: 152, type: !36)
!1789 = !DILocalVariable(name: "i", arg: 3, scope: !1783, file: !148, line: 152, type: !68)
!1790 = !DILocalVariable(name: "uc", scope: !1783, file: !148, line: 154, type: !76)
!1791 = !DILocalVariable(name: "p", scope: !1783, file: !148, line: 155, type: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1793 = !DILocalVariable(name: "shift", scope: !1783, file: !148, line: 157, type: !68)
!1794 = !DILocalVariable(name: "r", scope: !1783, file: !148, line: 158, type: !68)
!1795 = !DILocation(line: 152, column: 43, scope: !1783)
!1796 = !DILocation(line: 152, column: 51, scope: !1783)
!1797 = !DILocation(line: 152, column: 58, scope: !1783)
!1798 = !DILocation(line: 154, column: 17, scope: !1783)
!1799 = !DILocation(line: 156, column: 6, scope: !1783)
!1800 = !DILocation(line: 156, column: 62, scope: !1783)
!1801 = !DILocation(line: 156, column: 57, scope: !1783)
!1802 = !DILocation(line: 155, column: 17, scope: !1783)
!1803 = !DILocation(line: 157, column: 15, scope: !1783)
!1804 = !DILocation(line: 157, column: 7, scope: !1783)
!1805 = !DILocation(line: 158, column: 12, scope: !1783)
!1806 = !DILocation(line: 158, column: 15, scope: !1783)
!1807 = !DILocation(line: 158, column: 25, scope: !1783)
!1808 = !DILocation(line: 158, column: 7, scope: !1783)
!1809 = !DILocation(line: 159, column: 13, scope: !1783)
!1810 = !DILocation(line: 159, column: 18, scope: !1783)
!1811 = !DILocation(line: 159, column: 23, scope: !1783)
!1812 = !DILocation(line: 159, column: 6, scope: !1783)
!1813 = !DILocation(line: 160, column: 3, scope: !1783)
!1814 = distinct !DISubprogram(name: "set_quoting_flags", scope: !148, file: !148, line: 168, type: !1815, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!68, !1745, !68}
!1817 = !{!1818, !1819, !1820}
!1818 = !DILocalVariable(name: "o", arg: 1, scope: !1814, file: !148, line: 168, type: !1745)
!1819 = !DILocalVariable(name: "i", arg: 2, scope: !1814, file: !148, line: 168, type: !68)
!1820 = !DILocalVariable(name: "r", scope: !1814, file: !148, line: 170, type: !68)
!1821 = !DILocation(line: 168, column: 44, scope: !1814)
!1822 = !DILocation(line: 168, column: 51, scope: !1814)
!1823 = !DILocation(line: 171, column: 8, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1814, file: !148, line: 171, column: 7)
!1825 = !DILocation(line: 171, column: 7, scope: !1814)
!1826 = !DILocation(line: 173, column: 10, scope: !1814)
!1827 = !{!1769, !949, i64 4}
!1828 = !DILocation(line: 170, column: 7, scope: !1814)
!1829 = !DILocation(line: 174, column: 12, scope: !1814)
!1830 = !DILocation(line: 175, column: 3, scope: !1814)
!1831 = distinct !DISubprogram(name: "set_custom_quoting", scope: !148, file: !148, line: 179, type: !1832, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1745, !65, !65}
!1834 = !{!1835, !1836, !1837}
!1835 = !DILocalVariable(name: "o", arg: 1, scope: !1831, file: !148, line: 179, type: !1745)
!1836 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1831, file: !148, line: 180, type: !65)
!1837 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1831, file: !148, line: 180, type: !65)
!1838 = !DILocation(line: 179, column: 45, scope: !1831)
!1839 = !DILocation(line: 180, column: 33, scope: !1831)
!1840 = !DILocation(line: 180, column: 57, scope: !1831)
!1841 = !DILocation(line: 182, column: 8, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1831, file: !148, line: 182, column: 7)
!1843 = !DILocation(line: 182, column: 7, scope: !1831)
!1844 = !DILocation(line: 184, column: 6, scope: !1831)
!1845 = !DILocation(line: 184, column: 12, scope: !1831)
!1846 = !DILocation(line: 185, column: 8, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1831, file: !148, line: 185, column: 7)
!1848 = !DILocation(line: 185, column: 23, scope: !1847)
!1849 = !DILocation(line: 185, column: 19, scope: !1847)
!1850 = !DILocation(line: 186, column: 5, scope: !1847)
!1851 = !DILocation(line: 187, column: 6, scope: !1831)
!1852 = !DILocation(line: 187, column: 17, scope: !1831)
!1853 = !{!1769, !727, i64 40}
!1854 = !DILocation(line: 188, column: 6, scope: !1831)
!1855 = !DILocation(line: 188, column: 18, scope: !1831)
!1856 = !{!1769, !727, i64 48}
!1857 = !DILocation(line: 189, column: 1, scope: !1831)
!1858 = distinct !DISubprogram(name: "quotearg_buffer", scope: !148, file: !148, line: 784, type: !1859, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!79, !35, !79, !65, !79, !1761}
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DILocalVariable(name: "buffer", arg: 1, scope: !1858, file: !148, line: 784, type: !35)
!1863 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1858, file: !148, line: 784, type: !79)
!1864 = !DILocalVariable(name: "arg", arg: 3, scope: !1858, file: !148, line: 785, type: !65)
!1865 = !DILocalVariable(name: "argsize", arg: 4, scope: !1858, file: !148, line: 785, type: !79)
!1866 = !DILocalVariable(name: "o", arg: 5, scope: !1858, file: !148, line: 786, type: !1761)
!1867 = !DILocalVariable(name: "p", scope: !1858, file: !148, line: 788, type: !1761)
!1868 = !DILocalVariable(name: "e", scope: !1858, file: !148, line: 789, type: !68)
!1869 = !DILocalVariable(name: "r", scope: !1858, file: !148, line: 790, type: !79)
!1870 = !DILocation(line: 784, column: 24, scope: !1858)
!1871 = !DILocation(line: 784, column: 39, scope: !1858)
!1872 = !DILocation(line: 785, column: 30, scope: !1858)
!1873 = !DILocation(line: 785, column: 42, scope: !1858)
!1874 = !DILocation(line: 786, column: 48, scope: !1858)
!1875 = !DILocation(line: 788, column: 37, scope: !1858)
!1876 = !DILocation(line: 788, column: 33, scope: !1858)
!1877 = !DILocation(line: 789, column: 11, scope: !1858)
!1878 = !DILocation(line: 789, column: 7, scope: !1858)
!1879 = !DILocation(line: 791, column: 43, scope: !1858)
!1880 = !DILocation(line: 791, column: 53, scope: !1858)
!1881 = !DILocation(line: 791, column: 60, scope: !1858)
!1882 = !DILocation(line: 792, column: 43, scope: !1858)
!1883 = !DILocation(line: 792, column: 58, scope: !1858)
!1884 = !DILocation(line: 790, column: 14, scope: !1858)
!1885 = !DILocation(line: 790, column: 10, scope: !1858)
!1886 = !DILocation(line: 793, column: 9, scope: !1858)
!1887 = !DILocation(line: 794, column: 3, scope: !1858)
!1888 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !148, file: !148, line: 256, type: !1889, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !1893)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!79, !35, !79, !65, !79, !11, !68, !1891, !65, !65}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1918, !1919, !1920, !1921, !1922, !1925, !1926, !1943, !1946, !1947, !1954}
!1894 = !DILocalVariable(name: "buffer", arg: 1, scope: !1888, file: !148, line: 256, type: !35)
!1895 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1888, file: !148, line: 256, type: !79)
!1896 = !DILocalVariable(name: "arg", arg: 3, scope: !1888, file: !148, line: 257, type: !65)
!1897 = !DILocalVariable(name: "argsize", arg: 4, scope: !1888, file: !148, line: 257, type: !79)
!1898 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1888, file: !148, line: 258, type: !11)
!1899 = !DILocalVariable(name: "flags", arg: 6, scope: !1888, file: !148, line: 258, type: !68)
!1900 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1888, file: !148, line: 259, type: !1891)
!1901 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1888, file: !148, line: 260, type: !65)
!1902 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1888, file: !148, line: 261, type: !65)
!1903 = !DILocalVariable(name: "i", scope: !1888, file: !148, line: 263, type: !79)
!1904 = !DILocalVariable(name: "len", scope: !1888, file: !148, line: 264, type: !79)
!1905 = !DILocalVariable(name: "orig_buffersize", scope: !1888, file: !148, line: 265, type: !79)
!1906 = !DILocalVariable(name: "quote_string", scope: !1888, file: !148, line: 266, type: !65)
!1907 = !DILocalVariable(name: "quote_string_len", scope: !1888, file: !148, line: 267, type: !79)
!1908 = !DILocalVariable(name: "backslash_escapes", scope: !1888, file: !148, line: 268, type: !41)
!1909 = !DILocalVariable(name: "unibyte_locale", scope: !1888, file: !148, line: 269, type: !41)
!1910 = !DILocalVariable(name: "elide_outer_quotes", scope: !1888, file: !148, line: 270, type: !41)
!1911 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1888, file: !148, line: 271, type: !41)
!1912 = !DILocalVariable(name: "encountered_single_quote", scope: !1888, file: !148, line: 272, type: !41)
!1913 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1888, file: !148, line: 273, type: !41)
!1914 = !DILocalVariable(name: "c", scope: !1915, file: !148, line: 402, type: !76)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !148, line: 401, column: 5)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !148, line: 400, column: 3)
!1917 = distinct !DILexicalBlock(scope: !1888, file: !148, line: 400, column: 3)
!1918 = !DILocalVariable(name: "esc", scope: !1915, file: !148, line: 403, type: !76)
!1919 = !DILocalVariable(name: "is_right_quote", scope: !1915, file: !148, line: 404, type: !41)
!1920 = !DILocalVariable(name: "escaping", scope: !1915, file: !148, line: 405, type: !41)
!1921 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1915, file: !148, line: 406, type: !41)
!1922 = !DILocalVariable(name: "m", scope: !1923, file: !148, line: 610, type: !79)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 608, column: 11)
!1924 = distinct !DILexicalBlock(scope: !1915, file: !148, line: 426, column: 9)
!1925 = !DILocalVariable(name: "printable", scope: !1923, file: !148, line: 612, type: !41)
!1926 = !DILocalVariable(name: "mbstate", scope: !1927, file: !148, line: 621, type: !1929)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !148, line: 620, column: 15)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !148, line: 614, column: 17)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1930, line: 6, baseType: !1931)
!1930 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1932, line: 21, baseType: !1933)
!1932 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1932, line: 13, size: 64, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1933, file: !1932, line: 15, baseType: !68, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1933, file: !1932, line: 20, baseType: !1937, size: 32, offset: 32)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !1932, line: 16, size: 32, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1937, file: !1932, line: 18, baseType: !6, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1937, file: !1932, line: 19, baseType: !1941, size: 32)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !1942)
!1942 = !{!804}
!1943 = !DILocalVariable(name: "w", scope: !1944, file: !148, line: 631, type: !1945)
!1944 = distinct !DILexicalBlock(scope: !1927, file: !148, line: 630, column: 19)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !80, line: 90, baseType: !68)
!1946 = !DILocalVariable(name: "bytes", scope: !1944, file: !148, line: 632, type: !79)
!1947 = !DILocalVariable(name: "j", scope: !1948, file: !148, line: 657, type: !79)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !148, line: 656, column: 27)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !148, line: 654, column: 29)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !148, line: 649, column: 23)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !148, line: 641, column: 30)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !148, line: 636, column: 30)
!1953 = distinct !DILexicalBlock(scope: !1944, file: !148, line: 634, column: 25)
!1954 = !DILocalVariable(name: "ilim", scope: !1955, file: !148, line: 684, type: !79)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !148, line: 681, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1923, file: !148, line: 680, column: 17)
!1957 = !DILocation(line: 256, column: 33, scope: !1888)
!1958 = !DILocation(line: 256, column: 48, scope: !1888)
!1959 = !DILocation(line: 257, column: 39, scope: !1888)
!1960 = !DILocation(line: 257, column: 51, scope: !1888)
!1961 = !DILocation(line: 258, column: 46, scope: !1888)
!1962 = !DILocation(line: 258, column: 65, scope: !1888)
!1963 = !DILocation(line: 259, column: 47, scope: !1888)
!1964 = !DILocation(line: 260, column: 39, scope: !1888)
!1965 = !DILocation(line: 261, column: 39, scope: !1888)
!1966 = !DILocation(line: 264, column: 10, scope: !1888)
!1967 = !DILocation(line: 265, column: 10, scope: !1888)
!1968 = !DILocation(line: 266, column: 15, scope: !1888)
!1969 = !DILocation(line: 267, column: 10, scope: !1888)
!1970 = !DILocation(line: 268, column: 8, scope: !1888)
!1971 = !DILocation(line: 269, column: 25, scope: !1888)
!1972 = !DILocation(line: 269, column: 36, scope: !1888)
!1973 = !DILocation(line: 270, column: 8, scope: !1888)
!1974 = !DILocation(line: 271, column: 8, scope: !1888)
!1975 = !DILocation(line: 272, column: 8, scope: !1888)
!1976 = !DILocation(line: 273, column: 8, scope: !1888)
!1977 = !DILocation(line: 273, column: 3, scope: !1888)
!1978 = !DILocation(line: 0, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1888, file: !148, line: 317, column: 5)
!1980 = !DILocation(line: 316, column: 3, scope: !1888)
!1981 = !DILocation(line: 323, column: 11, scope: !1979)
!1982 = !DILocation(line: 323, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !148, line: 323, column: 11)
!1984 = !DILocation(line: 324, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !148, line: 324, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !148, line: 324, column: 9)
!1987 = !DILocation(line: 324, column: 9, scope: !1986)
!1988 = !DILocation(line: 362, column: 26, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !148, line: 340, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !148, line: 339, column: 13)
!1991 = distinct !DILexicalBlock(scope: !1979, file: !148, line: 338, column: 7)
!1992 = !DILocation(line: 363, column: 27, scope: !1989)
!1993 = !DILocation(line: 364, column: 11, scope: !1989)
!1994 = !DILocation(line: 365, column: 14, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !148, line: 365, column: 13)
!1996 = !DILocation(line: 365, column: 13, scope: !1991)
!1997 = !DILocation(line: 366, column: 43, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !148, line: 366, column: 11)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !148, line: 366, column: 11)
!2000 = !DILocation(line: 366, column: 11, scope: !1999)
!2001 = !DILocation(line: 367, column: 13, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !148, line: 367, column: 13)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !148, line: 367, column: 13)
!2004 = !DILocation(line: 367, column: 13, scope: !2003)
!2005 = !DILocation(line: 366, column: 70, scope: !1998)
!2006 = distinct !{!2006, !2000, !2007}
!2007 = !DILocation(line: 367, column: 13, scope: !1999)
!2008 = !DILocation(line: 370, column: 28, scope: !1991)
!2009 = !DILocation(line: 372, column: 7, scope: !1979)
!2010 = !DILocation(line: 376, column: 7, scope: !1979)
!2011 = !DILocation(line: 379, column: 7, scope: !1979)
!2012 = !DILocation(line: 381, column: 12, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1979, file: !148, line: 381, column: 11)
!2014 = !DILocation(line: 381, column: 11, scope: !1979)
!2015 = !DILocation(line: 0, scope: !2013)
!2016 = !DILocation(line: 386, column: 12, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1979, file: !148, line: 386, column: 11)
!2018 = !DILocation(line: 386, column: 11, scope: !1979)
!2019 = !DILocation(line: 387, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !148, line: 387, column: 9)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !148, line: 387, column: 9)
!2022 = !DILocation(line: 387, column: 9, scope: !2021)
!2023 = !DILocation(line: 394, column: 7, scope: !1979)
!2024 = !DILocation(line: 397, column: 7, scope: !1979)
!2025 = !DILocation(line: 0, scope: !1888)
!2026 = !DILocation(line: 263, column: 10, scope: !1888)
!2027 = !DILocation(line: 400, column: 8, scope: !1917)
!2028 = !DILocation(line: 0, scope: !1916)
!2029 = !DILocation(line: 400, column: 27, scope: !1916)
!2030 = !DILocation(line: 400, column: 19, scope: !1916)
!2031 = !DILocation(line: 400, column: 41, scope: !1916)
!2032 = !DILocation(line: 400, column: 48, scope: !1916)
!2033 = !DILocation(line: 400, column: 3, scope: !1917)
!2034 = !DILocation(line: 400, column: 60, scope: !1916)
!2035 = !DILocation(line: 404, column: 12, scope: !1915)
!2036 = !DILocation(line: 405, column: 12, scope: !1915)
!2037 = !DILocation(line: 406, column: 12, scope: !1915)
!2038 = !DILocation(line: 409, column: 11, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1915, file: !148, line: 408, column: 11)
!2040 = !DILocation(line: 411, column: 17, scope: !2039)
!2041 = !DILocation(line: 412, column: 39, scope: !2039)
!2042 = !DILocation(line: 416, column: 32, scope: !2039)
!2043 = !DILocation(line: 412, column: 19, scope: !2039)
!2044 = !DILocation(line: 412, column: 15, scope: !2039)
!2045 = !DILocation(line: 417, column: 11, scope: !2039)
!2046 = !DILocation(line: 417, column: 26, scope: !2039)
!2047 = !DILocation(line: 417, column: 14, scope: !2039)
!2048 = !DILocation(line: 417, column: 63, scope: !2039)
!2049 = !DILocation(line: 408, column: 11, scope: !1915)
!2050 = !DILocation(line: 0, scope: !1915)
!2051 = !DILocation(line: 424, column: 11, scope: !1915)
!2052 = !DILocation(line: 402, column: 21, scope: !1915)
!2053 = !DILocation(line: 425, column: 7, scope: !1915)
!2054 = !DILocation(line: 428, column: 15, scope: !1924)
!2055 = !DILocation(line: 430, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !148, line: 430, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !148, line: 429, column: 13)
!2058 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 428, column: 15)
!2059 = !DILocation(line: 430, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !148, line: 430, column: 15)
!2061 = !DILocation(line: 430, column: 15, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !148, line: 430, column: 15)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !148, line: 430, column: 15)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !148, line: 430, column: 15)
!2065 = !DILocation(line: 430, column: 15, scope: !2063)
!2066 = !DILocation(line: 430, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !148, line: 430, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !148, line: 430, column: 15)
!2069 = !DILocation(line: 430, column: 15, scope: !2068)
!2070 = !DILocation(line: 430, column: 15, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !148, line: 430, column: 15)
!2072 = distinct !DILexicalBlock(scope: !2064, file: !148, line: 430, column: 15)
!2073 = !DILocation(line: 430, column: 15, scope: !2072)
!2074 = !DILocation(line: 430, column: 15, scope: !2064)
!2075 = !DILocation(line: 430, column: 15, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !148, line: 430, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2056, file: !148, line: 430, column: 15)
!2078 = !DILocation(line: 430, column: 15, scope: !2077)
!2079 = !DILocation(line: 438, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2057, file: !148, line: 437, column: 19)
!2081 = !DILocation(line: 438, column: 24, scope: !2080)
!2082 = !DILocation(line: 438, column: 28, scope: !2080)
!2083 = !DILocation(line: 438, column: 38, scope: !2080)
!2084 = !DILocation(line: 438, column: 48, scope: !2080)
!2085 = !DILocation(line: 438, column: 59, scope: !2080)
!2086 = !DILocation(line: 440, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !148, line: 440, column: 19)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !148, line: 440, column: 19)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !148, line: 439, column: 17)
!2090 = !DILocation(line: 440, column: 19, scope: !2088)
!2091 = !DILocation(line: 441, column: 19, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !148, line: 441, column: 19)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !148, line: 441, column: 19)
!2094 = !DILocation(line: 441, column: 19, scope: !2093)
!2095 = !DILocation(line: 442, column: 17, scope: !2089)
!2096 = !DILocation(line: 449, column: 20, scope: !2058)
!2097 = !DILocation(line: 454, column: 11, scope: !1924)
!2098 = !DILocation(line: 457, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 455, column: 13)
!2100 = !DILocation(line: 463, column: 19, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !148, line: 462, column: 19)
!2102 = !DILocation(line: 463, column: 24, scope: !2101)
!2103 = !DILocation(line: 463, column: 28, scope: !2101)
!2104 = !DILocation(line: 463, column: 38, scope: !2101)
!2105 = !DILocation(line: 463, column: 47, scope: !2101)
!2106 = !DILocation(line: 463, column: 41, scope: !2101)
!2107 = !DILocation(line: 463, column: 52, scope: !2101)
!2108 = !DILocation(line: 462, column: 19, scope: !2099)
!2109 = !DILocation(line: 464, column: 25, scope: !2101)
!2110 = !DILocation(line: 464, column: 17, scope: !2101)
!2111 = !DILocation(line: 471, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2101, file: !148, line: 465, column: 19)
!2113 = !DILocation(line: 475, column: 21, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !148, line: 475, column: 21)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !148, line: 475, column: 21)
!2116 = !DILocation(line: 475, column: 21, scope: !2115)
!2117 = !DILocation(line: 476, column: 21, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !148, line: 476, column: 21)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !148, line: 476, column: 21)
!2120 = !DILocation(line: 476, column: 21, scope: !2119)
!2121 = !DILocation(line: 477, column: 21, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !148, line: 477, column: 21)
!2123 = distinct !DILexicalBlock(scope: !2112, file: !148, line: 477, column: 21)
!2124 = !DILocation(line: 477, column: 21, scope: !2123)
!2125 = !DILocation(line: 478, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !148, line: 478, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2112, file: !148, line: 478, column: 21)
!2128 = !DILocation(line: 478, column: 21, scope: !2127)
!2129 = !DILocation(line: 479, column: 21, scope: !2112)
!2130 = !DILocation(line: 403, column: 21, scope: !1915)
!2131 = !DILocation(line: 492, column: 31, scope: !1924)
!2132 = !DILocation(line: 493, column: 31, scope: !1924)
!2133 = !DILocation(line: 495, column: 31, scope: !1924)
!2134 = !DILocation(line: 496, column: 31, scope: !1924)
!2135 = !DILocation(line: 497, column: 31, scope: !1924)
!2136 = !DILocation(line: 500, column: 15, scope: !1924)
!2137 = !DILocation(line: 502, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !148, line: 501, column: 13)
!2139 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 500, column: 15)
!2140 = !DILocation(line: 509, column: 33, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 509, column: 15)
!2142 = !DILocation(line: 0, scope: !1924)
!2143 = !DILocation(line: 514, column: 15, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 513, column: 15)
!2145 = !DILocation(line: 518, column: 15, scope: !1924)
!2146 = !DILocation(line: 526, column: 26, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 526, column: 15)
!2148 = !DILocation(line: 526, column: 15, scope: !1924)
!2149 = !DILocation(line: 526, column: 40, scope: !2147)
!2150 = !DILocation(line: 526, column: 47, scope: !2147)
!2151 = !DILocation(line: 530, column: 17, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 530, column: 15)
!2153 = !DILocation(line: 526, column: 18, scope: !2147)
!2154 = !DILocation(line: 526, column: 65, scope: !2147)
!2155 = !DILocation(line: 530, column: 15, scope: !1924)
!2156 = !DILocation(line: 535, column: 11, scope: !1924)
!2157 = !DILocation(line: 549, column: 15, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 548, column: 15)
!2159 = !DILocation(line: 556, column: 15, scope: !1924)
!2160 = !DILocation(line: 558, column: 19, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !148, line: 557, column: 13)
!2162 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 556, column: 15)
!2163 = !DILocation(line: 561, column: 19, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !148, line: 561, column: 19)
!2165 = !DILocation(line: 561, column: 35, scope: !2164)
!2166 = !DILocation(line: 561, column: 30, scope: !2164)
!2167 = !DILocation(line: 570, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !148, line: 570, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !148, line: 570, column: 15)
!2170 = !DILocation(line: 570, column: 15, scope: !2169)
!2171 = !DILocation(line: 571, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !148, line: 571, column: 15)
!2173 = distinct !DILexicalBlock(scope: !2161, file: !148, line: 571, column: 15)
!2174 = !DILocation(line: 571, column: 15, scope: !2173)
!2175 = !DILocation(line: 572, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !148, line: 572, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2161, file: !148, line: 572, column: 15)
!2178 = !DILocation(line: 572, column: 15, scope: !2177)
!2179 = !DILocation(line: 574, column: 13, scope: !2161)
!2180 = !DILocation(line: 614, column: 17, scope: !1923)
!2181 = !DILocation(line: 610, column: 20, scope: !1923)
!2182 = !DILocation(line: 617, column: 29, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1928, file: !148, line: 615, column: 15)
!2184 = !{!1018, !1018, i64 0}
!2185 = !DILocation(line: 617, column: 27, scope: !2183)
!2186 = !DILocation(line: 612, column: 18, scope: !1923)
!2187 = !DILocation(line: 618, column: 15, scope: !2183)
!2188 = !DILocation(line: 621, column: 17, scope: !1927)
!2189 = !DILocation(line: 622, column: 17, scope: !1927)
!2190 = !DILocation(line: 626, column: 29, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1927, file: !148, line: 626, column: 21)
!2192 = !DILocation(line: 626, column: 21, scope: !1927)
!2193 = !DILocation(line: 627, column: 29, scope: !2191)
!2194 = !DILocation(line: 627, column: 19, scope: !2191)
!2195 = !DILocation(line: 0, scope: !2039)
!2196 = !DILocation(line: 629, column: 17, scope: !1927)
!2197 = !DILocation(line: 624, column: 19, scope: !1927)
!2198 = !DILocation(line: 625, column: 27, scope: !1927)
!2199 = !DILocation(line: 631, column: 21, scope: !1944)
!2200 = !DILocation(line: 632, column: 56, scope: !1944)
!2201 = !DILocation(line: 632, column: 50, scope: !1944)
!2202 = !DILocation(line: 633, column: 53, scope: !1944)
!2203 = !DILocation(line: 621, column: 27, scope: !1927)
!2204 = !DILocation(line: 631, column: 29, scope: !1944)
!2205 = !DILocation(line: 632, column: 36, scope: !1944)
!2206 = !DILocation(line: 632, column: 28, scope: !1944)
!2207 = !DILocation(line: 634, column: 25, scope: !1944)
!2208 = !DILocation(line: 644, column: 38, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1951, file: !148, line: 642, column: 23)
!2210 = !DILocation(line: 644, column: 48, scope: !2209)
!2211 = !DILocation(line: 644, column: 51, scope: !2209)
!2212 = !DILocation(line: 644, column: 25, scope: !2209)
!2213 = !DILocation(line: 645, column: 28, scope: !2209)
!2214 = !DILocation(line: 644, column: 34, scope: !2209)
!2215 = distinct !{!2215, !2212, !2213}
!2216 = !DILocation(line: 658, column: 43, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !148, line: 658, column: 29)
!2218 = distinct !DILexicalBlock(scope: !1948, file: !148, line: 658, column: 29)
!2219 = !DILocation(line: 655, column: 29, scope: !1949)
!2220 = !DILocation(line: 657, column: 36, scope: !1948)
!2221 = !DILocation(line: 659, column: 49, scope: !2217)
!2222 = !DILocation(line: 659, column: 39, scope: !2217)
!2223 = !DILocation(line: 659, column: 31, scope: !2217)
!2224 = !DILocation(line: 658, column: 53, scope: !2217)
!2225 = !DILocation(line: 658, column: 29, scope: !2218)
!2226 = distinct !{!2226, !2225, !2227}
!2227 = !DILocation(line: 667, column: 33, scope: !2218)
!2228 = !DILocation(line: 674, column: 19, scope: !1927)
!2229 = !DILocation(line: 670, column: 41, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1950, file: !148, line: 670, column: 29)
!2231 = !DILocation(line: 670, column: 31, scope: !2230)
!2232 = !DILocation(line: 670, column: 29, scope: !1950)
!2233 = !DILocation(line: 672, column: 27, scope: !1950)
!2234 = !DILocation(line: 675, column: 26, scope: !1927)
!2235 = !DILocation(line: 675, column: 24, scope: !1927)
!2236 = !DILocation(line: 674, column: 19, scope: !1944)
!2237 = distinct !{!2237, !2196, !2238}
!2238 = !DILocation(line: 675, column: 44, scope: !1927)
!2239 = !DILocation(line: 676, column: 15, scope: !1928)
!2240 = !DILocation(line: 0, scope: !2191)
!2241 = !DILocation(line: 0, scope: !1927)
!2242 = !DILocation(line: 678, column: 40, scope: !1923)
!2243 = !DILocation(line: 680, column: 19, scope: !1956)
!2244 = !DILocation(line: 680, column: 45, scope: !1956)
!2245 = !DILocation(line: 680, column: 23, scope: !1956)
!2246 = !DILocation(line: 684, column: 33, scope: !1955)
!2247 = !DILocation(line: 684, column: 24, scope: !1955)
!2248 = !DILocation(line: 686, column: 17, scope: !1955)
!2249 = !DILocation(line: 0, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !148, line: 687, column: 19)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !148, line: 686, column: 17)
!2252 = distinct !DILexicalBlock(scope: !1955, file: !148, line: 686, column: 17)
!2253 = !DILocation(line: 0, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !148, line: 703, column: 21)
!2255 = !DILocation(line: 0, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !148, line: 696, column: 23)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !148, line: 695, column: 30)
!2258 = distinct !DILexicalBlock(scope: !2250, file: !148, line: 688, column: 25)
!2259 = !DILocation(line: 688, column: 43, scope: !2258)
!2260 = !DILocation(line: 690, column: 25, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !148, line: 690, column: 25)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !148, line: 689, column: 23)
!2263 = !DILocation(line: 690, column: 25, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !148, line: 690, column: 25)
!2265 = !DILocation(line: 690, column: 25, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !148, line: 690, column: 25)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !148, line: 690, column: 25)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !148, line: 690, column: 25)
!2269 = !DILocation(line: 690, column: 25, scope: !2267)
!2270 = !DILocation(line: 690, column: 25, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !148, line: 690, column: 25)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !148, line: 690, column: 25)
!2273 = !DILocation(line: 690, column: 25, scope: !2272)
!2274 = !DILocation(line: 690, column: 25, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !148, line: 690, column: 25)
!2276 = distinct !DILexicalBlock(scope: !2268, file: !148, line: 690, column: 25)
!2277 = !DILocation(line: 690, column: 25, scope: !2276)
!2278 = !DILocation(line: 690, column: 25, scope: !2268)
!2279 = !DILocation(line: 690, column: 25, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !148, line: 690, column: 25)
!2281 = distinct !DILexicalBlock(scope: !2261, file: !148, line: 690, column: 25)
!2282 = !DILocation(line: 690, column: 25, scope: !2281)
!2283 = !DILocation(line: 691, column: 25, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !148, line: 691, column: 25)
!2285 = distinct !DILexicalBlock(scope: !2262, file: !148, line: 691, column: 25)
!2286 = !DILocation(line: 691, column: 25, scope: !2285)
!2287 = !DILocation(line: 692, column: 25, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !148, line: 692, column: 25)
!2289 = distinct !DILexicalBlock(scope: !2262, file: !148, line: 692, column: 25)
!2290 = !DILocation(line: 692, column: 25, scope: !2289)
!2291 = !DILocation(line: 693, column: 38, scope: !2262)
!2292 = !DILocation(line: 693, column: 33, scope: !2262)
!2293 = !DILocation(line: 694, column: 23, scope: !2262)
!2294 = !DILocation(line: 695, column: 30, scope: !2257)
!2295 = !DILocation(line: 695, column: 30, scope: !2258)
!2296 = !DILocation(line: 697, column: 25, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !148, line: 697, column: 25)
!2298 = distinct !DILexicalBlock(scope: !2256, file: !148, line: 697, column: 25)
!2299 = !DILocation(line: 697, column: 25, scope: !2298)
!2300 = !DILocation(line: 699, column: 23, scope: !2256)
!2301 = !DILocation(line: 0, scope: !2289)
!2302 = !DILocation(line: 0, scope: !2262)
!2303 = !DILocation(line: 0, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2039, file: !148, line: 418, column: 9)
!2305 = !DILocation(line: 0, scope: !2261)
!2306 = !DILocation(line: 700, column: 35, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2250, file: !148, line: 700, column: 25)
!2308 = !DILocation(line: 700, column: 30, scope: !2307)
!2309 = !DILocation(line: 700, column: 25, scope: !2250)
!2310 = !DILocation(line: 702, column: 21, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !148, line: 702, column: 21)
!2312 = distinct !DILexicalBlock(scope: !2250, file: !148, line: 702, column: 21)
!2313 = !DILocation(line: 702, column: 21, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !148, line: 702, column: 21)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !148, line: 702, column: 21)
!2316 = distinct !DILexicalBlock(scope: !2311, file: !148, line: 702, column: 21)
!2317 = !DILocation(line: 702, column: 21, scope: !2315)
!2318 = !DILocation(line: 702, column: 21, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !148, line: 702, column: 21)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !148, line: 702, column: 21)
!2321 = !DILocation(line: 702, column: 21, scope: !2320)
!2322 = !DILocation(line: 702, column: 21, scope: !2316)
!2323 = !DILocation(line: 0, scope: !2298)
!2324 = !DILocation(line: 703, column: 21, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2254, file: !148, line: 703, column: 21)
!2326 = !DILocation(line: 703, column: 21, scope: !2254)
!2327 = !DILocation(line: 704, column: 25, scope: !2250)
!2328 = !DILocation(line: 686, column: 17, scope: !2251)
!2329 = distinct !{!2329, !2330, !2331}
!2330 = !DILocation(line: 686, column: 17, scope: !2252)
!2331 = !DILocation(line: 705, column: 19, scope: !2252)
!2332 = !DILocation(line: 0, scope: !1917)
!2333 = !DILocation(line: 416, column: 30, scope: !2039)
!2334 = !DILocation(line: 712, column: 34, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !1915, file: !148, line: 712, column: 11)
!2336 = !DILocation(line: 714, column: 14, scope: !2335)
!2337 = !DILocation(line: 715, column: 14, scope: !2335)
!2338 = !DILocation(line: 715, column: 35, scope: !2335)
!2339 = !DILocation(line: 715, column: 17, scope: !2335)
!2340 = !DILocation(line: 715, column: 47, scope: !2335)
!2341 = !DILocation(line: 715, column: 65, scope: !2335)
!2342 = !DILocation(line: 716, column: 15, scope: !2335)
!2343 = !DILocation(line: 716, column: 11, scope: !2335)
!2344 = !DILocation(line: 712, column: 11, scope: !1915)
!2345 = !DILocation(line: 400, column: 10, scope: !1917)
!2346 = !DILocation(line: 0, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !148, line: 519, column: 13)
!2348 = distinct !DILexicalBlock(scope: !1924, file: !148, line: 518, column: 15)
!2349 = !DILocation(line: 720, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !1915, file: !148, line: 720, column: 7)
!2351 = !DILocation(line: 720, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2350, file: !148, line: 720, column: 7)
!2353 = !DILocation(line: 720, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !148, line: 720, column: 7)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !148, line: 720, column: 7)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !148, line: 720, column: 7)
!2357 = !DILocation(line: 720, column: 7, scope: !2355)
!2358 = !DILocation(line: 720, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !148, line: 720, column: 7)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !148, line: 720, column: 7)
!2361 = !DILocation(line: 720, column: 7, scope: !2360)
!2362 = !DILocation(line: 720, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !148, line: 720, column: 7)
!2364 = distinct !DILexicalBlock(scope: !2356, file: !148, line: 720, column: 7)
!2365 = !DILocation(line: 720, column: 7, scope: !2364)
!2366 = !DILocation(line: 720, column: 7, scope: !2356)
!2367 = !DILocation(line: 720, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !148, line: 720, column: 7)
!2369 = distinct !DILexicalBlock(scope: !2350, file: !148, line: 720, column: 7)
!2370 = !DILocation(line: 720, column: 7, scope: !2369)
!2371 = !DILocation(line: 723, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !148, line: 723, column: 7)
!2373 = distinct !DILexicalBlock(scope: !1915, file: !148, line: 723, column: 7)
!2374 = !DILocation(line: 424, column: 9, scope: !1915)
!2375 = !DILocation(line: 723, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !148, line: 723, column: 7)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !148, line: 723, column: 7)
!2378 = distinct !DILexicalBlock(scope: !2372, file: !148, line: 723, column: 7)
!2379 = !DILocation(line: 723, column: 7, scope: !2377)
!2380 = !DILocation(line: 723, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !148, line: 723, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !148, line: 723, column: 7)
!2383 = !DILocation(line: 723, column: 7, scope: !2382)
!2384 = !DILocation(line: 723, column: 7, scope: !2378)
!2385 = !DILocation(line: 724, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !148, line: 724, column: 7)
!2387 = distinct !DILexicalBlock(scope: !1915, file: !148, line: 724, column: 7)
!2388 = !DILocation(line: 724, column: 7, scope: !2387)
!2389 = !DILocation(line: 726, column: 13, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !1915, file: !148, line: 726, column: 11)
!2391 = !DILocation(line: 726, column: 11, scope: !1915)
!2392 = !DILocation(line: 728, column: 5, scope: !1916)
!2393 = !DILocation(line: 400, column: 75, scope: !1916)
!2394 = !DILocation(line: 400, column: 3, scope: !1916)
!2395 = distinct !{!2395, !2033, !2396}
!2396 = !DILocation(line: 728, column: 5, scope: !1917)
!2397 = !DILocation(line: 730, column: 11, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !1888, file: !148, line: 730, column: 7)
!2399 = !DILocation(line: 730, column: 16, scope: !2398)
!2400 = !DILocation(line: 738, column: 51, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !1888, file: !148, line: 738, column: 7)
!2402 = !DILocation(line: 739, column: 10, scope: !2401)
!2403 = !DILocation(line: 741, column: 11, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !148, line: 741, column: 11)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !148, line: 740, column: 5)
!2406 = !DILocation(line: 741, column: 11, scope: !2405)
!2407 = !DILocation(line: 742, column: 16, scope: !2404)
!2408 = !DILocation(line: 742, column: 9, scope: !2404)
!2409 = !DILocation(line: 746, column: 18, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2404, file: !148, line: 746, column: 16)
!2411 = !DILocation(line: 746, column: 32, scope: !2410)
!2412 = !DILocation(line: 746, column: 29, scope: !2410)
!2413 = !DILocation(line: 755, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !1888, file: !148, line: 755, column: 7)
!2415 = !DILocation(line: 755, column: 20, scope: !2414)
!2416 = !DILocation(line: 756, column: 12, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !148, line: 756, column: 5)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !148, line: 756, column: 5)
!2419 = !DILocation(line: 756, column: 5, scope: !2418)
!2420 = !DILocation(line: 757, column: 7, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !148, line: 757, column: 7)
!2422 = distinct !DILexicalBlock(scope: !2417, file: !148, line: 757, column: 7)
!2423 = !DILocation(line: 757, column: 7, scope: !2422)
!2424 = !DILocation(line: 756, column: 39, scope: !2417)
!2425 = distinct !{!2425, !2419, !2426}
!2426 = !DILocation(line: 757, column: 7, scope: !2418)
!2427 = !DILocation(line: 759, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !1888, file: !148, line: 759, column: 7)
!2429 = !DILocation(line: 759, column: 7, scope: !1888)
!2430 = !DILocation(line: 760, column: 5, scope: !2428)
!2431 = !DILocation(line: 760, column: 17, scope: !2428)
!2432 = !DILocation(line: 766, column: 21, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !1888, file: !148, line: 766, column: 7)
!2434 = !DILocation(line: 766, column: 54, scope: !2433)
!2435 = !DILocation(line: 766, column: 51, scope: !2433)
!2436 = !DILocation(line: 770, column: 42, scope: !1888)
!2437 = !DILocation(line: 768, column: 10, scope: !1888)
!2438 = !DILocation(line: 768, column: 3, scope: !1888)
!2439 = !DILocation(line: 772, column: 1, scope: !1888)
!2440 = distinct !DISubprogram(name: "gettext_quote", scope: !148, file: !148, line: 207, type: !2441, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!65, !65, !11}
!2443 = !{!2444, !2445, !2446, !2447}
!2444 = !DILocalVariable(name: "msgid", arg: 1, scope: !2440, file: !148, line: 207, type: !65)
!2445 = !DILocalVariable(name: "s", arg: 2, scope: !2440, file: !148, line: 207, type: !11)
!2446 = !DILocalVariable(name: "translation", scope: !2440, file: !148, line: 209, type: !65)
!2447 = !DILocalVariable(name: "locale_code", scope: !2440, file: !148, line: 210, type: !65)
!2448 = !DILocation(line: 207, column: 28, scope: !2440)
!2449 = !DILocation(line: 207, column: 54, scope: !2440)
!2450 = !DILocation(line: 209, column: 29, scope: !2440)
!2451 = !DILocation(line: 209, column: 15, scope: !2440)
!2452 = !DILocation(line: 212, column: 19, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2440, file: !148, line: 212, column: 7)
!2454 = !DILocation(line: 212, column: 7, scope: !2440)
!2455 = !DILocation(line: 233, column: 17, scope: !2440)
!2456 = !DILocation(line: 210, column: 15, scope: !2440)
!2457 = !DILocalVariable(name: "s1", arg: 1, scope: !2458, file: !2459, line: 160, type: !65)
!2458 = distinct !DISubprogram(name: "strcaseeq0", scope: !2459, file: !2459, line: 160, type: !2460, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2462)
!2459 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!68, !65, !65, !36, !36, !36, !36, !36, !36, !36, !36, !36}
!2462 = !{!2457, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2463 = !DILocalVariable(name: "s2", arg: 2, scope: !2458, file: !2459, line: 160, type: !65)
!2464 = !DILocalVariable(name: "s20", arg: 3, scope: !2458, file: !2459, line: 160, type: !36)
!2465 = !DILocalVariable(name: "s21", arg: 4, scope: !2458, file: !2459, line: 160, type: !36)
!2466 = !DILocalVariable(name: "s22", arg: 5, scope: !2458, file: !2459, line: 160, type: !36)
!2467 = !DILocalVariable(name: "s23", arg: 6, scope: !2458, file: !2459, line: 160, type: !36)
!2468 = !DILocalVariable(name: "s24", arg: 7, scope: !2458, file: !2459, line: 160, type: !36)
!2469 = !DILocalVariable(name: "s25", arg: 8, scope: !2458, file: !2459, line: 160, type: !36)
!2470 = !DILocalVariable(name: "s26", arg: 9, scope: !2458, file: !2459, line: 160, type: !36)
!2471 = !DILocalVariable(name: "s27", arg: 10, scope: !2458, file: !2459, line: 160, type: !36)
!2472 = !DILocalVariable(name: "s28", arg: 11, scope: !2458, file: !2459, line: 160, type: !36)
!2473 = !DILocation(line: 160, column: 25, scope: !2458, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 234, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2440, file: !148, line: 234, column: 7)
!2476 = !DILocation(line: 160, column: 41, scope: !2458, inlinedAt: !2474)
!2477 = !DILocation(line: 160, column: 50, scope: !2458, inlinedAt: !2474)
!2478 = !DILocation(line: 160, column: 60, scope: !2458, inlinedAt: !2474)
!2479 = !DILocation(line: 160, column: 70, scope: !2458, inlinedAt: !2474)
!2480 = !DILocation(line: 160, column: 80, scope: !2458, inlinedAt: !2474)
!2481 = !DILocation(line: 160, column: 90, scope: !2458, inlinedAt: !2474)
!2482 = !DILocation(line: 160, column: 100, scope: !2458, inlinedAt: !2474)
!2483 = !DILocation(line: 160, column: 110, scope: !2458, inlinedAt: !2474)
!2484 = !DILocation(line: 160, column: 120, scope: !2458, inlinedAt: !2474)
!2485 = !DILocation(line: 160, column: 130, scope: !2458, inlinedAt: !2474)
!2486 = !DILocation(line: 162, column: 7, scope: !2487, inlinedAt: !2474)
!2487 = distinct !DILexicalBlock(scope: !2458, file: !2459, line: 162, column: 7)
!2488 = !DILocalVariable(name: "s1", arg: 1, scope: !2489, file: !2459, line: 146, type: !65)
!2489 = distinct !DISubprogram(name: "strcaseeq1", scope: !2459, file: !2459, line: 146, type: !2490, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!68, !65, !65, !36, !36, !36, !36, !36, !36, !36, !36}
!2492 = !{!2488, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2493 = !DILocalVariable(name: "s2", arg: 2, scope: !2489, file: !2459, line: 146, type: !65)
!2494 = !DILocalVariable(name: "s21", arg: 3, scope: !2489, file: !2459, line: 146, type: !36)
!2495 = !DILocalVariable(name: "s22", arg: 4, scope: !2489, file: !2459, line: 146, type: !36)
!2496 = !DILocalVariable(name: "s23", arg: 5, scope: !2489, file: !2459, line: 146, type: !36)
!2497 = !DILocalVariable(name: "s24", arg: 6, scope: !2489, file: !2459, line: 146, type: !36)
!2498 = !DILocalVariable(name: "s25", arg: 7, scope: !2489, file: !2459, line: 146, type: !36)
!2499 = !DILocalVariable(name: "s26", arg: 8, scope: !2489, file: !2459, line: 146, type: !36)
!2500 = !DILocalVariable(name: "s27", arg: 9, scope: !2489, file: !2459, line: 146, type: !36)
!2501 = !DILocalVariable(name: "s28", arg: 10, scope: !2489, file: !2459, line: 146, type: !36)
!2502 = !DILocation(line: 146, column: 25, scope: !2489, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 167, column: 16, scope: !2504, inlinedAt: !2474)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2459, line: 164, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2487, file: !2459, line: 163, column: 5)
!2506 = !DILocation(line: 146, column: 41, scope: !2489, inlinedAt: !2503)
!2507 = !DILocation(line: 146, column: 50, scope: !2489, inlinedAt: !2503)
!2508 = !DILocation(line: 146, column: 60, scope: !2489, inlinedAt: !2503)
!2509 = !DILocation(line: 146, column: 70, scope: !2489, inlinedAt: !2503)
!2510 = !DILocation(line: 146, column: 80, scope: !2489, inlinedAt: !2503)
!2511 = !DILocation(line: 146, column: 90, scope: !2489, inlinedAt: !2503)
!2512 = !DILocation(line: 146, column: 100, scope: !2489, inlinedAt: !2503)
!2513 = !DILocation(line: 146, column: 110, scope: !2489, inlinedAt: !2503)
!2514 = !DILocation(line: 146, column: 120, scope: !2489, inlinedAt: !2503)
!2515 = !DILocation(line: 148, column: 7, scope: !2516, inlinedAt: !2503)
!2516 = distinct !DILexicalBlock(scope: !2489, file: !2459, line: 148, column: 7)
!2517 = !DILocalVariable(name: "s1", arg: 1, scope: !2518, file: !2459, line: 132, type: !65)
!2518 = distinct !DISubprogram(name: "strcaseeq2", scope: !2459, file: !2459, line: 132, type: !2519, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!68, !65, !65, !36, !36, !36, !36, !36, !36, !36}
!2521 = !{!2517, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2522 = !DILocalVariable(name: "s2", arg: 2, scope: !2518, file: !2459, line: 132, type: !65)
!2523 = !DILocalVariable(name: "s22", arg: 3, scope: !2518, file: !2459, line: 132, type: !36)
!2524 = !DILocalVariable(name: "s23", arg: 4, scope: !2518, file: !2459, line: 132, type: !36)
!2525 = !DILocalVariable(name: "s24", arg: 5, scope: !2518, file: !2459, line: 132, type: !36)
!2526 = !DILocalVariable(name: "s25", arg: 6, scope: !2518, file: !2459, line: 132, type: !36)
!2527 = !DILocalVariable(name: "s26", arg: 7, scope: !2518, file: !2459, line: 132, type: !36)
!2528 = !DILocalVariable(name: "s27", arg: 8, scope: !2518, file: !2459, line: 132, type: !36)
!2529 = !DILocalVariable(name: "s28", arg: 9, scope: !2518, file: !2459, line: 132, type: !36)
!2530 = !DILocation(line: 132, column: 25, scope: !2518, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 153, column: 16, scope: !2532, inlinedAt: !2503)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !2459, line: 150, column: 11)
!2533 = distinct !DILexicalBlock(scope: !2516, file: !2459, line: 149, column: 5)
!2534 = !DILocation(line: 132, column: 41, scope: !2518, inlinedAt: !2531)
!2535 = !DILocation(line: 132, column: 50, scope: !2518, inlinedAt: !2531)
!2536 = !DILocation(line: 132, column: 60, scope: !2518, inlinedAt: !2531)
!2537 = !DILocation(line: 132, column: 70, scope: !2518, inlinedAt: !2531)
!2538 = !DILocation(line: 132, column: 80, scope: !2518, inlinedAt: !2531)
!2539 = !DILocation(line: 132, column: 90, scope: !2518, inlinedAt: !2531)
!2540 = !DILocation(line: 132, column: 100, scope: !2518, inlinedAt: !2531)
!2541 = !DILocation(line: 132, column: 110, scope: !2518, inlinedAt: !2531)
!2542 = !DILocation(line: 134, column: 7, scope: !2543, inlinedAt: !2531)
!2543 = distinct !DILexicalBlock(scope: !2518, file: !2459, line: 134, column: 7)
!2544 = !DILocalVariable(name: "s1", arg: 1, scope: !2545, file: !2459, line: 118, type: !65)
!2545 = distinct !DISubprogram(name: "strcaseeq3", scope: !2459, file: !2459, line: 118, type: !2546, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!68, !65, !65, !36, !36, !36, !36, !36, !36}
!2548 = !{!2544, !2549, !2550, !2551, !2552, !2553, !2554, !2555}
!2549 = !DILocalVariable(name: "s2", arg: 2, scope: !2545, file: !2459, line: 118, type: !65)
!2550 = !DILocalVariable(name: "s23", arg: 3, scope: !2545, file: !2459, line: 118, type: !36)
!2551 = !DILocalVariable(name: "s24", arg: 4, scope: !2545, file: !2459, line: 118, type: !36)
!2552 = !DILocalVariable(name: "s25", arg: 5, scope: !2545, file: !2459, line: 118, type: !36)
!2553 = !DILocalVariable(name: "s26", arg: 6, scope: !2545, file: !2459, line: 118, type: !36)
!2554 = !DILocalVariable(name: "s27", arg: 7, scope: !2545, file: !2459, line: 118, type: !36)
!2555 = !DILocalVariable(name: "s28", arg: 8, scope: !2545, file: !2459, line: 118, type: !36)
!2556 = !DILocation(line: 118, column: 25, scope: !2545, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 139, column: 16, scope: !2558, inlinedAt: !2531)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !2459, line: 136, column: 11)
!2559 = distinct !DILexicalBlock(scope: !2543, file: !2459, line: 135, column: 5)
!2560 = !DILocation(line: 118, column: 41, scope: !2545, inlinedAt: !2557)
!2561 = !DILocation(line: 118, column: 50, scope: !2545, inlinedAt: !2557)
!2562 = !DILocation(line: 118, column: 60, scope: !2545, inlinedAt: !2557)
!2563 = !DILocation(line: 118, column: 70, scope: !2545, inlinedAt: !2557)
!2564 = !DILocation(line: 118, column: 80, scope: !2545, inlinedAt: !2557)
!2565 = !DILocation(line: 118, column: 90, scope: !2545, inlinedAt: !2557)
!2566 = !DILocation(line: 118, column: 100, scope: !2545, inlinedAt: !2557)
!2567 = !DILocation(line: 120, column: 7, scope: !2568, inlinedAt: !2557)
!2568 = distinct !DILexicalBlock(scope: !2545, file: !2459, line: 120, column: 7)
!2569 = !DILocation(line: 120, column: 7, scope: !2545, inlinedAt: !2557)
!2570 = !DILocalVariable(name: "s1", arg: 1, scope: !2571, file: !2459, line: 104, type: !65)
!2571 = distinct !DISubprogram(name: "strcaseeq4", scope: !2459, file: !2459, line: 104, type: !2572, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!68, !65, !65, !36, !36, !36, !36, !36}
!2574 = !{!2570, !2575, !2576, !2577, !2578, !2579, !2580}
!2575 = !DILocalVariable(name: "s2", arg: 2, scope: !2571, file: !2459, line: 104, type: !65)
!2576 = !DILocalVariable(name: "s24", arg: 3, scope: !2571, file: !2459, line: 104, type: !36)
!2577 = !DILocalVariable(name: "s25", arg: 4, scope: !2571, file: !2459, line: 104, type: !36)
!2578 = !DILocalVariable(name: "s26", arg: 5, scope: !2571, file: !2459, line: 104, type: !36)
!2579 = !DILocalVariable(name: "s27", arg: 6, scope: !2571, file: !2459, line: 104, type: !36)
!2580 = !DILocalVariable(name: "s28", arg: 7, scope: !2571, file: !2459, line: 104, type: !36)
!2581 = !DILocation(line: 104, column: 25, scope: !2571, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 125, column: 16, scope: !2583, inlinedAt: !2557)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !2459, line: 122, column: 11)
!2584 = distinct !DILexicalBlock(scope: !2568, file: !2459, line: 121, column: 5)
!2585 = !DILocation(line: 104, column: 41, scope: !2571, inlinedAt: !2582)
!2586 = !DILocation(line: 104, column: 50, scope: !2571, inlinedAt: !2582)
!2587 = !DILocation(line: 104, column: 60, scope: !2571, inlinedAt: !2582)
!2588 = !DILocation(line: 104, column: 70, scope: !2571, inlinedAt: !2582)
!2589 = !DILocation(line: 104, column: 80, scope: !2571, inlinedAt: !2582)
!2590 = !DILocation(line: 104, column: 90, scope: !2571, inlinedAt: !2582)
!2591 = !DILocation(line: 106, column: 7, scope: !2592, inlinedAt: !2582)
!2592 = distinct !DILexicalBlock(scope: !2571, file: !2459, line: 106, column: 7)
!2593 = !DILocation(line: 106, column: 7, scope: !2571, inlinedAt: !2582)
!2594 = !DILocalVariable(name: "s1", arg: 1, scope: !2595, file: !2459, line: 90, type: !65)
!2595 = distinct !DISubprogram(name: "strcaseeq5", scope: !2459, file: !2459, line: 90, type: !2596, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!68, !65, !65, !36, !36, !36, !36}
!2598 = !{!2594, !2599, !2600, !2601, !2602, !2603}
!2599 = !DILocalVariable(name: "s2", arg: 2, scope: !2595, file: !2459, line: 90, type: !65)
!2600 = !DILocalVariable(name: "s25", arg: 3, scope: !2595, file: !2459, line: 90, type: !36)
!2601 = !DILocalVariable(name: "s26", arg: 4, scope: !2595, file: !2459, line: 90, type: !36)
!2602 = !DILocalVariable(name: "s27", arg: 5, scope: !2595, file: !2459, line: 90, type: !36)
!2603 = !DILocalVariable(name: "s28", arg: 6, scope: !2595, file: !2459, line: 90, type: !36)
!2604 = !DILocation(line: 90, column: 25, scope: !2595, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 111, column: 16, scope: !2606, inlinedAt: !2582)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !2459, line: 108, column: 11)
!2607 = distinct !DILexicalBlock(scope: !2592, file: !2459, line: 107, column: 5)
!2608 = !DILocation(line: 90, column: 41, scope: !2595, inlinedAt: !2605)
!2609 = !DILocation(line: 90, column: 50, scope: !2595, inlinedAt: !2605)
!2610 = !DILocation(line: 90, column: 60, scope: !2595, inlinedAt: !2605)
!2611 = !DILocation(line: 90, column: 70, scope: !2595, inlinedAt: !2605)
!2612 = !DILocation(line: 90, column: 80, scope: !2595, inlinedAt: !2605)
!2613 = !DILocation(line: 92, column: 7, scope: !2614, inlinedAt: !2605)
!2614 = distinct !DILexicalBlock(scope: !2595, file: !2459, line: 92, column: 7)
!2615 = !DILocation(line: 92, column: 7, scope: !2595, inlinedAt: !2605)
!2616 = !DILocation(line: 235, column: 12, scope: !2475)
!2617 = !DILocation(line: 235, column: 21, scope: !2475)
!2618 = !DILocation(line: 235, column: 5, scope: !2475)
!2619 = !DILocation(line: 146, column: 25, scope: !2489, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 167, column: 16, scope: !2504, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 236, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2440, file: !148, line: 236, column: 7)
!2623 = !DILocation(line: 146, column: 41, scope: !2489, inlinedAt: !2620)
!2624 = !DILocation(line: 146, column: 50, scope: !2489, inlinedAt: !2620)
!2625 = !DILocation(line: 146, column: 60, scope: !2489, inlinedAt: !2620)
!2626 = !DILocation(line: 146, column: 70, scope: !2489, inlinedAt: !2620)
!2627 = !DILocation(line: 146, column: 80, scope: !2489, inlinedAt: !2620)
!2628 = !DILocation(line: 146, column: 90, scope: !2489, inlinedAt: !2620)
!2629 = !DILocation(line: 146, column: 100, scope: !2489, inlinedAt: !2620)
!2630 = !DILocation(line: 146, column: 110, scope: !2489, inlinedAt: !2620)
!2631 = !DILocation(line: 146, column: 120, scope: !2489, inlinedAt: !2620)
!2632 = !DILocation(line: 148, column: 7, scope: !2516, inlinedAt: !2620)
!2633 = !DILocation(line: 132, column: 25, scope: !2518, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 153, column: 16, scope: !2532, inlinedAt: !2620)
!2635 = !DILocation(line: 132, column: 41, scope: !2518, inlinedAt: !2634)
!2636 = !DILocation(line: 132, column: 50, scope: !2518, inlinedAt: !2634)
!2637 = !DILocation(line: 132, column: 60, scope: !2518, inlinedAt: !2634)
!2638 = !DILocation(line: 132, column: 70, scope: !2518, inlinedAt: !2634)
!2639 = !DILocation(line: 132, column: 80, scope: !2518, inlinedAt: !2634)
!2640 = !DILocation(line: 132, column: 90, scope: !2518, inlinedAt: !2634)
!2641 = !DILocation(line: 132, column: 100, scope: !2518, inlinedAt: !2634)
!2642 = !DILocation(line: 132, column: 110, scope: !2518, inlinedAt: !2634)
!2643 = !DILocation(line: 134, column: 7, scope: !2543, inlinedAt: !2634)
!2644 = !DILocation(line: 134, column: 7, scope: !2518, inlinedAt: !2634)
!2645 = !DILocation(line: 118, column: 25, scope: !2545, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 139, column: 16, scope: !2558, inlinedAt: !2634)
!2647 = !DILocation(line: 118, column: 41, scope: !2545, inlinedAt: !2646)
!2648 = !DILocation(line: 118, column: 50, scope: !2545, inlinedAt: !2646)
!2649 = !DILocation(line: 118, column: 60, scope: !2545, inlinedAt: !2646)
!2650 = !DILocation(line: 118, column: 70, scope: !2545, inlinedAt: !2646)
!2651 = !DILocation(line: 118, column: 80, scope: !2545, inlinedAt: !2646)
!2652 = !DILocation(line: 118, column: 90, scope: !2545, inlinedAt: !2646)
!2653 = !DILocation(line: 118, column: 100, scope: !2545, inlinedAt: !2646)
!2654 = !DILocation(line: 120, column: 7, scope: !2568, inlinedAt: !2646)
!2655 = !DILocation(line: 120, column: 7, scope: !2545, inlinedAt: !2646)
!2656 = !DILocation(line: 104, column: 25, scope: !2571, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 125, column: 16, scope: !2583, inlinedAt: !2646)
!2658 = !DILocation(line: 104, column: 41, scope: !2571, inlinedAt: !2657)
!2659 = !DILocation(line: 104, column: 50, scope: !2571, inlinedAt: !2657)
!2660 = !DILocation(line: 104, column: 60, scope: !2571, inlinedAt: !2657)
!2661 = !DILocation(line: 104, column: 70, scope: !2571, inlinedAt: !2657)
!2662 = !DILocation(line: 104, column: 80, scope: !2571, inlinedAt: !2657)
!2663 = !DILocation(line: 104, column: 90, scope: !2571, inlinedAt: !2657)
!2664 = !DILocation(line: 106, column: 7, scope: !2592, inlinedAt: !2657)
!2665 = !DILocation(line: 106, column: 7, scope: !2571, inlinedAt: !2657)
!2666 = !DILocation(line: 90, column: 25, scope: !2595, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 111, column: 16, scope: !2606, inlinedAt: !2657)
!2668 = !DILocation(line: 90, column: 41, scope: !2595, inlinedAt: !2667)
!2669 = !DILocation(line: 90, column: 50, scope: !2595, inlinedAt: !2667)
!2670 = !DILocation(line: 90, column: 60, scope: !2595, inlinedAt: !2667)
!2671 = !DILocation(line: 90, column: 70, scope: !2595, inlinedAt: !2667)
!2672 = !DILocation(line: 90, column: 80, scope: !2595, inlinedAt: !2667)
!2673 = !DILocation(line: 92, column: 7, scope: !2614, inlinedAt: !2667)
!2674 = !DILocation(line: 92, column: 7, scope: !2595, inlinedAt: !2667)
!2675 = !DILocalVariable(name: "s1", arg: 1, scope: !2676, file: !2459, line: 76, type: !65)
!2676 = distinct !DISubprogram(name: "strcaseeq6", scope: !2459, file: !2459, line: 76, type: !2677, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!68, !65, !65, !36, !36, !36}
!2679 = !{!2675, !2680, !2681, !2682, !2683}
!2680 = !DILocalVariable(name: "s2", arg: 2, scope: !2676, file: !2459, line: 76, type: !65)
!2681 = !DILocalVariable(name: "s26", arg: 3, scope: !2676, file: !2459, line: 76, type: !36)
!2682 = !DILocalVariable(name: "s27", arg: 4, scope: !2676, file: !2459, line: 76, type: !36)
!2683 = !DILocalVariable(name: "s28", arg: 5, scope: !2676, file: !2459, line: 76, type: !36)
!2684 = !DILocation(line: 76, column: 25, scope: !2676, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 97, column: 16, scope: !2686, inlinedAt: !2667)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !2459, line: 94, column: 11)
!2687 = distinct !DILexicalBlock(scope: !2614, file: !2459, line: 93, column: 5)
!2688 = !DILocation(line: 76, column: 41, scope: !2676, inlinedAt: !2685)
!2689 = !DILocation(line: 76, column: 50, scope: !2676, inlinedAt: !2685)
!2690 = !DILocation(line: 76, column: 60, scope: !2676, inlinedAt: !2685)
!2691 = !DILocation(line: 76, column: 70, scope: !2676, inlinedAt: !2685)
!2692 = !DILocation(line: 78, column: 7, scope: !2693, inlinedAt: !2685)
!2693 = distinct !DILexicalBlock(scope: !2676, file: !2459, line: 78, column: 7)
!2694 = !DILocation(line: 78, column: 7, scope: !2676, inlinedAt: !2685)
!2695 = !DILocalVariable(name: "s1", arg: 1, scope: !2696, file: !2459, line: 62, type: !65)
!2696 = distinct !DISubprogram(name: "strcaseeq7", scope: !2459, file: !2459, line: 62, type: !2697, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!68, !65, !65, !36, !36}
!2699 = !{!2695, !2700, !2701, !2702}
!2700 = !DILocalVariable(name: "s2", arg: 2, scope: !2696, file: !2459, line: 62, type: !65)
!2701 = !DILocalVariable(name: "s27", arg: 3, scope: !2696, file: !2459, line: 62, type: !36)
!2702 = !DILocalVariable(name: "s28", arg: 4, scope: !2696, file: !2459, line: 62, type: !36)
!2703 = !DILocation(line: 62, column: 25, scope: !2696, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 83, column: 16, scope: !2705, inlinedAt: !2685)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !2459, line: 80, column: 11)
!2706 = distinct !DILexicalBlock(scope: !2693, file: !2459, line: 79, column: 5)
!2707 = !DILocation(line: 62, column: 41, scope: !2696, inlinedAt: !2704)
!2708 = !DILocation(line: 62, column: 50, scope: !2696, inlinedAt: !2704)
!2709 = !DILocation(line: 62, column: 60, scope: !2696, inlinedAt: !2704)
!2710 = !DILocation(line: 64, column: 7, scope: !2711, inlinedAt: !2704)
!2711 = distinct !DILexicalBlock(scope: !2696, file: !2459, line: 64, column: 7)
!2712 = !DILocation(line: 236, column: 7, scope: !2440)
!2713 = !DILocation(line: 237, column: 12, scope: !2622)
!2714 = !DILocation(line: 237, column: 21, scope: !2622)
!2715 = !DILocation(line: 237, column: 5, scope: !2622)
!2716 = !DILocation(line: 239, column: 13, scope: !2440)
!2717 = !DILocation(line: 239, column: 11, scope: !2440)
!2718 = !DILocation(line: 239, column: 3, scope: !2440)
!2719 = !DILocation(line: 0, scope: !2440)
!2720 = !DILocation(line: 240, column: 1, scope: !2440)
!2721 = distinct !DISubprogram(name: "quotearg_alloc", scope: !148, file: !148, line: 799, type: !2722, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!35, !65, !79, !1761}
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "arg", arg: 1, scope: !2721, file: !148, line: 799, type: !65)
!2726 = !DILocalVariable(name: "argsize", arg: 2, scope: !2721, file: !148, line: 799, type: !79)
!2727 = !DILocalVariable(name: "o", arg: 3, scope: !2721, file: !148, line: 800, type: !1761)
!2728 = !DILocation(line: 799, column: 29, scope: !2721)
!2729 = !DILocation(line: 799, column: 41, scope: !2721)
!2730 = !DILocation(line: 800, column: 47, scope: !2721)
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2732, file: !148, line: 812, type: !65)
!2732 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !148, file: !148, line: 812, type: !2733, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!35, !65, !79, !269, !1761}
!2735 = !{!2731, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743}
!2736 = !DILocalVariable(name: "argsize", arg: 2, scope: !2732, file: !148, line: 812, type: !79)
!2737 = !DILocalVariable(name: "size", arg: 3, scope: !2732, file: !148, line: 812, type: !269)
!2738 = !DILocalVariable(name: "o", arg: 4, scope: !2732, file: !148, line: 813, type: !1761)
!2739 = !DILocalVariable(name: "p", scope: !2732, file: !148, line: 815, type: !1761)
!2740 = !DILocalVariable(name: "e", scope: !2732, file: !148, line: 816, type: !68)
!2741 = !DILocalVariable(name: "flags", scope: !2732, file: !148, line: 818, type: !68)
!2742 = !DILocalVariable(name: "bufsize", scope: !2732, file: !148, line: 819, type: !79)
!2743 = !DILocalVariable(name: "buf", scope: !2732, file: !148, line: 823, type: !35)
!2744 = !DILocation(line: 812, column: 33, scope: !2732, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 802, column: 10, scope: !2721)
!2746 = !DILocation(line: 812, column: 45, scope: !2732, inlinedAt: !2745)
!2747 = !DILocation(line: 812, column: 62, scope: !2732, inlinedAt: !2745)
!2748 = !DILocation(line: 813, column: 51, scope: !2732, inlinedAt: !2745)
!2749 = !DILocation(line: 815, column: 37, scope: !2732, inlinedAt: !2745)
!2750 = !DILocation(line: 815, column: 33, scope: !2732, inlinedAt: !2745)
!2751 = !DILocation(line: 816, column: 11, scope: !2732, inlinedAt: !2745)
!2752 = !DILocation(line: 816, column: 7, scope: !2732, inlinedAt: !2745)
!2753 = !DILocation(line: 818, column: 18, scope: !2732, inlinedAt: !2745)
!2754 = !DILocation(line: 818, column: 24, scope: !2732, inlinedAt: !2745)
!2755 = !DILocation(line: 818, column: 7, scope: !2732, inlinedAt: !2745)
!2756 = !DILocation(line: 819, column: 69, scope: !2732, inlinedAt: !2745)
!2757 = !DILocation(line: 820, column: 53, scope: !2732, inlinedAt: !2745)
!2758 = !DILocation(line: 821, column: 49, scope: !2732, inlinedAt: !2745)
!2759 = !DILocation(line: 822, column: 49, scope: !2732, inlinedAt: !2745)
!2760 = !DILocation(line: 819, column: 20, scope: !2732, inlinedAt: !2745)
!2761 = !DILocation(line: 822, column: 62, scope: !2732, inlinedAt: !2745)
!2762 = !DILocation(line: 819, column: 10, scope: !2732, inlinedAt: !2745)
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2764, file: !265, line: 216, type: !79)
!2764 = distinct !DISubprogram(name: "xcharalloc", scope: !265, file: !265, line: 216, type: !2765, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!35, !79}
!2767 = !{!2763}
!2768 = !DILocation(line: 216, column: 20, scope: !2764, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 823, column: 15, scope: !2732, inlinedAt: !2745)
!2770 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2769)
!2771 = !DILocation(line: 823, column: 9, scope: !2732, inlinedAt: !2745)
!2772 = !DILocation(line: 824, column: 60, scope: !2732, inlinedAt: !2745)
!2773 = !DILocation(line: 826, column: 32, scope: !2732, inlinedAt: !2745)
!2774 = !DILocation(line: 826, column: 47, scope: !2732, inlinedAt: !2745)
!2775 = !DILocation(line: 824, column: 3, scope: !2732, inlinedAt: !2745)
!2776 = !DILocation(line: 827, column: 9, scope: !2732, inlinedAt: !2745)
!2777 = !DILocation(line: 802, column: 3, scope: !2721)
!2778 = !DILocation(line: 812, column: 33, scope: !2732)
!2779 = !DILocation(line: 812, column: 45, scope: !2732)
!2780 = !DILocation(line: 812, column: 62, scope: !2732)
!2781 = !DILocation(line: 813, column: 51, scope: !2732)
!2782 = !DILocation(line: 815, column: 37, scope: !2732)
!2783 = !DILocation(line: 815, column: 33, scope: !2732)
!2784 = !DILocation(line: 816, column: 11, scope: !2732)
!2785 = !DILocation(line: 816, column: 7, scope: !2732)
!2786 = !DILocation(line: 818, column: 18, scope: !2732)
!2787 = !DILocation(line: 818, column: 27, scope: !2732)
!2788 = !DILocation(line: 818, column: 24, scope: !2732)
!2789 = !DILocation(line: 818, column: 7, scope: !2732)
!2790 = !DILocation(line: 819, column: 69, scope: !2732)
!2791 = !DILocation(line: 820, column: 53, scope: !2732)
!2792 = !DILocation(line: 821, column: 49, scope: !2732)
!2793 = !DILocation(line: 822, column: 49, scope: !2732)
!2794 = !DILocation(line: 819, column: 20, scope: !2732)
!2795 = !DILocation(line: 822, column: 62, scope: !2732)
!2796 = !DILocation(line: 819, column: 10, scope: !2732)
!2797 = !DILocation(line: 216, column: 20, scope: !2764, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 823, column: 15, scope: !2732)
!2799 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2798)
!2800 = !DILocation(line: 823, column: 9, scope: !2732)
!2801 = !DILocation(line: 824, column: 60, scope: !2732)
!2802 = !DILocation(line: 826, column: 32, scope: !2732)
!2803 = !DILocation(line: 826, column: 47, scope: !2732)
!2804 = !DILocation(line: 824, column: 3, scope: !2732)
!2805 = !DILocation(line: 827, column: 9, scope: !2732)
!2806 = !DILocation(line: 828, column: 7, scope: !2732)
!2807 = !DILocation(line: 829, column: 11, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2732, file: !148, line: 828, column: 7)
!2809 = !DILocation(line: 829, column: 5, scope: !2808)
!2810 = !DILocation(line: 830, column: 3, scope: !2732)
!2811 = distinct !DISubprogram(name: "quotearg_free", scope: !148, file: !148, line: 848, type: !1220, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2812)
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "sv", scope: !2811, file: !148, line: 850, type: !172)
!2814 = !DILocalVariable(name: "i", scope: !2811, file: !148, line: 851, type: !68)
!2815 = !DILocation(line: 850, column: 24, scope: !2811)
!2816 = !DILocation(line: 850, column: 19, scope: !2811)
!2817 = !DILocation(line: 851, column: 7, scope: !2811)
!2818 = !DILocation(line: 852, column: 19, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !148, line: 852, column: 3)
!2820 = distinct !DILexicalBlock(scope: !2811, file: !148, line: 852, column: 3)
!2821 = !DILocation(line: 852, column: 17, scope: !2819)
!2822 = !DILocation(line: 852, column: 3, scope: !2820)
!2823 = !DILocation(line: 853, column: 17, scope: !2819)
!2824 = !{!2825, !727, i64 8}
!2825 = !{!"slotvec", !923, i64 0, !727, i64 8}
!2826 = !DILocation(line: 853, column: 5, scope: !2819)
!2827 = !DILocation(line: 852, column: 28, scope: !2819)
!2828 = distinct !{!2828, !2822, !2829}
!2829 = !DILocation(line: 853, column: 20, scope: !2820)
!2830 = !DILocation(line: 854, column: 13, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2811, file: !148, line: 854, column: 7)
!2832 = !DILocation(line: 854, column: 17, scope: !2831)
!2833 = !DILocation(line: 854, column: 7, scope: !2811)
!2834 = !DILocation(line: 856, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !148, line: 855, column: 5)
!2836 = !DILocation(line: 857, column: 21, scope: !2835)
!2837 = !{!2825, !923, i64 0}
!2838 = !DILocation(line: 858, column: 20, scope: !2835)
!2839 = !DILocation(line: 859, column: 5, scope: !2835)
!2840 = !DILocation(line: 860, column: 10, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2811, file: !148, line: 860, column: 7)
!2842 = !DILocation(line: 860, column: 7, scope: !2811)
!2843 = !DILocation(line: 862, column: 13, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !148, line: 861, column: 5)
!2845 = !DILocation(line: 862, column: 7, scope: !2844)
!2846 = !DILocation(line: 863, column: 15, scope: !2844)
!2847 = !DILocation(line: 864, column: 5, scope: !2844)
!2848 = !DILocation(line: 865, column: 10, scope: !2811)
!2849 = !DILocation(line: 866, column: 1, scope: !2811)
!2850 = distinct !DISubprogram(name: "quotearg_n", scope: !148, file: !148, line: 931, type: !2851, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!35, !68, !65}
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "n", arg: 1, scope: !2850, file: !148, line: 931, type: !68)
!2855 = !DILocalVariable(name: "arg", arg: 2, scope: !2850, file: !148, line: 931, type: !65)
!2856 = !DILocation(line: 931, column: 17, scope: !2850)
!2857 = !DILocation(line: 931, column: 32, scope: !2850)
!2858 = !DILocation(line: 933, column: 10, scope: !2850)
!2859 = !DILocation(line: 933, column: 3, scope: !2850)
!2860 = distinct !DISubprogram(name: "quotearg_n_options", scope: !148, file: !148, line: 877, type: !2861, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!35, !68, !65, !79, !1761}
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869, !2870, !2873, !2874, !2876, !2877, !2878}
!2864 = !DILocalVariable(name: "n", arg: 1, scope: !2860, file: !148, line: 877, type: !68)
!2865 = !DILocalVariable(name: "arg", arg: 2, scope: !2860, file: !148, line: 877, type: !65)
!2866 = !DILocalVariable(name: "argsize", arg: 3, scope: !2860, file: !148, line: 877, type: !79)
!2867 = !DILocalVariable(name: "options", arg: 4, scope: !2860, file: !148, line: 878, type: !1761)
!2868 = !DILocalVariable(name: "e", scope: !2860, file: !148, line: 880, type: !68)
!2869 = !DILocalVariable(name: "sv", scope: !2860, file: !148, line: 882, type: !172)
!2870 = !DILocalVariable(name: "preallocated", scope: !2871, file: !148, line: 889, type: !41)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !148, line: 888, column: 5)
!2872 = distinct !DILexicalBlock(scope: !2860, file: !148, line: 887, column: 7)
!2873 = !DILocalVariable(name: "nmax", scope: !2871, file: !148, line: 890, type: !68)
!2874 = !DILocalVariable(name: "size", scope: !2875, file: !148, line: 903, type: !79)
!2875 = distinct !DILexicalBlock(scope: !2860, file: !148, line: 902, column: 3)
!2876 = !DILocalVariable(name: "val", scope: !2875, file: !148, line: 904, type: !35)
!2877 = !DILocalVariable(name: "flags", scope: !2875, file: !148, line: 906, type: !68)
!2878 = !DILocalVariable(name: "qsize", scope: !2875, file: !148, line: 907, type: !79)
!2879 = !DILocation(line: 877, column: 25, scope: !2860)
!2880 = !DILocation(line: 877, column: 40, scope: !2860)
!2881 = !DILocation(line: 877, column: 52, scope: !2860)
!2882 = !DILocation(line: 878, column: 51, scope: !2860)
!2883 = !DILocation(line: 880, column: 11, scope: !2860)
!2884 = !DILocation(line: 880, column: 7, scope: !2860)
!2885 = !DILocation(line: 882, column: 24, scope: !2860)
!2886 = !DILocation(line: 882, column: 19, scope: !2860)
!2887 = !DILocation(line: 884, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2860, file: !148, line: 884, column: 7)
!2889 = !DILocation(line: 884, column: 7, scope: !2860)
!2890 = !DILocation(line: 885, column: 5, scope: !2888)
!2891 = !DILocation(line: 887, column: 7, scope: !2872)
!2892 = !DILocation(line: 887, column: 14, scope: !2872)
!2893 = !DILocation(line: 887, column: 7, scope: !2860)
!2894 = !DILocation(line: 889, column: 31, scope: !2871)
!2895 = !DILocation(line: 890, column: 11, scope: !2871)
!2896 = !DILocation(line: 892, column: 16, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2871, file: !148, line: 892, column: 11)
!2898 = !DILocation(line: 892, column: 11, scope: !2871)
!2899 = !DILocation(line: 893, column: 9, scope: !2897)
!2900 = !DILocation(line: 895, column: 32, scope: !2871)
!2901 = !DILocation(line: 895, column: 61, scope: !2871)
!2902 = !DILocation(line: 895, column: 58, scope: !2871)
!2903 = !DILocation(line: 895, column: 66, scope: !2871)
!2904 = !DILocation(line: 895, column: 22, scope: !2871)
!2905 = !DILocation(line: 895, column: 15, scope: !2871)
!2906 = !DILocation(line: 896, column: 11, scope: !2871)
!2907 = !DILocation(line: 897, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2871, file: !148, line: 896, column: 11)
!2909 = !{i64 0, i64 8, !922, i64 8, i64 8, !726}
!2910 = !DILocation(line: 897, column: 9, scope: !2908)
!2911 = !DILocation(line: 898, column: 20, scope: !2871)
!2912 = !DILocation(line: 898, column: 18, scope: !2871)
!2913 = !DILocation(line: 898, column: 7, scope: !2871)
!2914 = !DILocation(line: 898, column: 38, scope: !2871)
!2915 = !DILocation(line: 898, column: 31, scope: !2871)
!2916 = !DILocation(line: 898, column: 48, scope: !2871)
!2917 = !DILocation(line: 899, column: 14, scope: !2871)
!2918 = !DILocation(line: 900, column: 5, scope: !2871)
!2919 = !DILocation(line: 0, scope: !2860)
!2920 = !DILocation(line: 903, column: 19, scope: !2875)
!2921 = !DILocation(line: 903, column: 25, scope: !2875)
!2922 = !DILocation(line: 903, column: 12, scope: !2875)
!2923 = !DILocation(line: 904, column: 23, scope: !2875)
!2924 = !DILocation(line: 904, column: 11, scope: !2875)
!2925 = !DILocation(line: 906, column: 26, scope: !2875)
!2926 = !DILocation(line: 906, column: 32, scope: !2875)
!2927 = !DILocation(line: 906, column: 9, scope: !2875)
!2928 = !DILocation(line: 908, column: 55, scope: !2875)
!2929 = !DILocation(line: 909, column: 46, scope: !2875)
!2930 = !DILocation(line: 910, column: 55, scope: !2875)
!2931 = !DILocation(line: 911, column: 55, scope: !2875)
!2932 = !DILocation(line: 907, column: 20, scope: !2875)
!2933 = !DILocation(line: 907, column: 12, scope: !2875)
!2934 = !DILocation(line: 913, column: 14, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2875, file: !148, line: 913, column: 9)
!2936 = !DILocation(line: 913, column: 9, scope: !2875)
!2937 = !DILocation(line: 915, column: 35, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !148, line: 914, column: 7)
!2939 = !DILocation(line: 915, column: 20, scope: !2938)
!2940 = !DILocation(line: 916, column: 17, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !148, line: 916, column: 13)
!2942 = !DILocation(line: 916, column: 13, scope: !2938)
!2943 = !DILocation(line: 917, column: 11, scope: !2941)
!2944 = !DILocation(line: 216, column: 20, scope: !2764, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 918, column: 27, scope: !2938)
!2946 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2945)
!2947 = !DILocation(line: 918, column: 19, scope: !2938)
!2948 = !DILocation(line: 919, column: 69, scope: !2938)
!2949 = !DILocation(line: 921, column: 44, scope: !2938)
!2950 = !DILocation(line: 922, column: 44, scope: !2938)
!2951 = !DILocation(line: 919, column: 9, scope: !2938)
!2952 = !DILocation(line: 923, column: 7, scope: !2938)
!2953 = !DILocation(line: 0, scope: !2875)
!2954 = !DILocation(line: 925, column: 11, scope: !2875)
!2955 = !DILocation(line: 926, column: 5, scope: !2875)
!2956 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !148, file: !148, line: 937, type: !2957, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!35, !68, !65, !79}
!2959 = !{!2960, !2961, !2962}
!2960 = !DILocalVariable(name: "n", arg: 1, scope: !2956, file: !148, line: 937, type: !68)
!2961 = !DILocalVariable(name: "arg", arg: 2, scope: !2956, file: !148, line: 937, type: !65)
!2962 = !DILocalVariable(name: "argsize", arg: 3, scope: !2956, file: !148, line: 937, type: !79)
!2963 = !DILocation(line: 937, column: 21, scope: !2956)
!2964 = !DILocation(line: 937, column: 36, scope: !2956)
!2965 = !DILocation(line: 937, column: 48, scope: !2956)
!2966 = !DILocation(line: 939, column: 10, scope: !2956)
!2967 = !DILocation(line: 939, column: 3, scope: !2956)
!2968 = distinct !DISubprogram(name: "quotearg", scope: !148, file: !148, line: 943, type: !2969, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!35, !65}
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "arg", arg: 1, scope: !2968, file: !148, line: 943, type: !65)
!2973 = !DILocation(line: 943, column: 23, scope: !2968)
!2974 = !DILocation(line: 931, column: 17, scope: !2850, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 945, column: 10, scope: !2968)
!2976 = !DILocation(line: 931, column: 32, scope: !2850, inlinedAt: !2975)
!2977 = !DILocation(line: 933, column: 10, scope: !2850, inlinedAt: !2975)
!2978 = !DILocation(line: 945, column: 3, scope: !2968)
!2979 = distinct !DISubprogram(name: "quotearg_mem", scope: !148, file: !148, line: 949, type: !2980, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!35, !65, !79}
!2982 = !{!2983, !2984}
!2983 = !DILocalVariable(name: "arg", arg: 1, scope: !2979, file: !148, line: 949, type: !65)
!2984 = !DILocalVariable(name: "argsize", arg: 2, scope: !2979, file: !148, line: 949, type: !79)
!2985 = !DILocation(line: 949, column: 27, scope: !2979)
!2986 = !DILocation(line: 949, column: 39, scope: !2979)
!2987 = !DILocation(line: 937, column: 21, scope: !2956, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 951, column: 10, scope: !2979)
!2989 = !DILocation(line: 937, column: 36, scope: !2956, inlinedAt: !2988)
!2990 = !DILocation(line: 937, column: 48, scope: !2956, inlinedAt: !2988)
!2991 = !DILocation(line: 939, column: 10, scope: !2956, inlinedAt: !2988)
!2992 = !DILocation(line: 951, column: 3, scope: !2979)
!2993 = distinct !DISubprogram(name: "quotearg_n_style", scope: !148, file: !148, line: 955, type: !2994, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!35, !68, !11, !65}
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !148, line: 955, type: !68)
!2998 = !DILocalVariable(name: "s", arg: 2, scope: !2993, file: !148, line: 955, type: !11)
!2999 = !DILocalVariable(name: "arg", arg: 3, scope: !2993, file: !148, line: 955, type: !65)
!3000 = !DILocalVariable(name: "o", scope: !2993, file: !148, line: 957, type: !1762)
!3001 = !DILocation(line: 955, column: 23, scope: !2993)
!3002 = !DILocation(line: 955, column: 45, scope: !2993)
!3003 = !DILocation(line: 955, column: 60, scope: !2993)
!3004 = !DILocation(line: 957, column: 3, scope: !2993)
!3005 = !DILocation(line: 957, column: 32, scope: !2993)
!3006 = !DILocalVariable(name: "style", arg: 1, scope: !3007, file: !148, line: 193, type: !11)
!3007 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !148, file: !148, line: 193, type: !3008, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!155, !11}
!3010 = !{!3006, !3011}
!3011 = !DILocalVariable(name: "o", scope: !3007, file: !148, line: 195, type: !155)
!3012 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 957, column: 36, scope: !2993)
!3014 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3013)
!3015 = !{!3016}
!3016 = distinct !{!3016, !3017, !"quoting_options_from_style: argument 0"}
!3017 = distinct !{!3017, !"quoting_options_from_style"}
!3018 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3013)
!3019 = distinct !DILexicalBlock(scope: !3007, file: !148, line: 196, column: 7)
!3020 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3013)
!3021 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3013)
!3022 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3013)
!3023 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3013)
!3024 = !DILocation(line: 958, column: 10, scope: !2993)
!3025 = !DILocation(line: 959, column: 1, scope: !2993)
!3026 = !DILocation(line: 958, column: 3, scope: !2993)
!3027 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !148, file: !148, line: 962, type: !3028, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!35, !68, !11, !65, !79}
!3030 = !{!3031, !3032, !3033, !3034, !3035}
!3031 = !DILocalVariable(name: "n", arg: 1, scope: !3027, file: !148, line: 962, type: !68)
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !148, line: 962, type: !11)
!3033 = !DILocalVariable(name: "arg", arg: 3, scope: !3027, file: !148, line: 963, type: !65)
!3034 = !DILocalVariable(name: "argsize", arg: 4, scope: !3027, file: !148, line: 963, type: !79)
!3035 = !DILocalVariable(name: "o", scope: !3027, file: !148, line: 965, type: !1762)
!3036 = !DILocation(line: 962, column: 27, scope: !3027)
!3037 = !DILocation(line: 962, column: 49, scope: !3027)
!3038 = !DILocation(line: 963, column: 35, scope: !3027)
!3039 = !DILocation(line: 963, column: 47, scope: !3027)
!3040 = !DILocation(line: 965, column: 3, scope: !3027)
!3041 = !DILocation(line: 965, column: 32, scope: !3027)
!3042 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 965, column: 36, scope: !3027)
!3044 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3043)
!3045 = !{!3046}
!3046 = distinct !{!3046, !3047, !"quoting_options_from_style: argument 0"}
!3047 = distinct !{!3047, !"quoting_options_from_style"}
!3048 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3043)
!3049 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3043)
!3050 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3043)
!3051 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3043)
!3052 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3043)
!3053 = !DILocation(line: 966, column: 10, scope: !3027)
!3054 = !DILocation(line: 967, column: 1, scope: !3027)
!3055 = !DILocation(line: 966, column: 3, scope: !3027)
!3056 = distinct !DISubprogram(name: "quotearg_style", scope: !148, file: !148, line: 970, type: !3057, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!35, !11, !65}
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "s", arg: 1, scope: !3056, file: !148, line: 970, type: !11)
!3061 = !DILocalVariable(name: "arg", arg: 2, scope: !3056, file: !148, line: 970, type: !65)
!3062 = !DILocation(line: 970, column: 36, scope: !3056)
!3063 = !DILocation(line: 970, column: 51, scope: !3056)
!3064 = !DILocation(line: 955, column: 23, scope: !2993, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 972, column: 10, scope: !3056)
!3066 = !DILocation(line: 955, column: 45, scope: !2993, inlinedAt: !3065)
!3067 = !DILocation(line: 955, column: 60, scope: !2993, inlinedAt: !3065)
!3068 = !DILocation(line: 957, column: 3, scope: !2993, inlinedAt: !3065)
!3069 = !DILocation(line: 957, column: 32, scope: !2993, inlinedAt: !3065)
!3070 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 957, column: 36, scope: !2993, inlinedAt: !3065)
!3072 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3071)
!3073 = !{!3074}
!3074 = distinct !{!3074, !3075, !"quoting_options_from_style: argument 0"}
!3075 = distinct !{!3075, !"quoting_options_from_style"}
!3076 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3071)
!3077 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3071)
!3078 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3071)
!3079 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3071)
!3080 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3071)
!3081 = !DILocation(line: 958, column: 10, scope: !2993, inlinedAt: !3065)
!3082 = !DILocation(line: 959, column: 1, scope: !2993, inlinedAt: !3065)
!3083 = !DILocation(line: 972, column: 3, scope: !3056)
!3084 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !148, file: !148, line: 976, type: !3085, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!35, !11, !65, !79}
!3087 = !{!3088, !3089, !3090}
!3088 = !DILocalVariable(name: "s", arg: 1, scope: !3084, file: !148, line: 976, type: !11)
!3089 = !DILocalVariable(name: "arg", arg: 2, scope: !3084, file: !148, line: 976, type: !65)
!3090 = !DILocalVariable(name: "argsize", arg: 3, scope: !3084, file: !148, line: 976, type: !79)
!3091 = !DILocation(line: 976, column: 40, scope: !3084)
!3092 = !DILocation(line: 976, column: 55, scope: !3084)
!3093 = !DILocation(line: 976, column: 67, scope: !3084)
!3094 = !DILocation(line: 962, column: 27, scope: !3027, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 978, column: 10, scope: !3084)
!3096 = !DILocation(line: 962, column: 49, scope: !3027, inlinedAt: !3095)
!3097 = !DILocation(line: 963, column: 35, scope: !3027, inlinedAt: !3095)
!3098 = !DILocation(line: 963, column: 47, scope: !3027, inlinedAt: !3095)
!3099 = !DILocation(line: 965, column: 3, scope: !3027, inlinedAt: !3095)
!3100 = !DILocation(line: 965, column: 32, scope: !3027, inlinedAt: !3095)
!3101 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 965, column: 36, scope: !3027, inlinedAt: !3095)
!3103 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3102)
!3104 = !{!3105}
!3105 = distinct !{!3105, !3106, !"quoting_options_from_style: argument 0"}
!3106 = distinct !{!3106, !"quoting_options_from_style"}
!3107 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3102)
!3108 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3102)
!3109 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3102)
!3110 = !DILocation(line: 198, column: 5, scope: !3007, inlinedAt: !3102)
!3111 = !DILocation(line: 198, column: 11, scope: !3007, inlinedAt: !3102)
!3112 = !DILocation(line: 966, column: 10, scope: !3027, inlinedAt: !3095)
!3113 = !DILocation(line: 967, column: 1, scope: !3027, inlinedAt: !3095)
!3114 = !DILocation(line: 978, column: 3, scope: !3084)
!3115 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !148, file: !148, line: 982, type: !3116, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!35, !65, !79, !36}
!3118 = !{!3119, !3120, !3121, !3122}
!3119 = !DILocalVariable(name: "arg", arg: 1, scope: !3115, file: !148, line: 982, type: !65)
!3120 = !DILocalVariable(name: "argsize", arg: 2, scope: !3115, file: !148, line: 982, type: !79)
!3121 = !DILocalVariable(name: "ch", arg: 3, scope: !3115, file: !148, line: 982, type: !36)
!3122 = !DILocalVariable(name: "options", scope: !3115, file: !148, line: 984, type: !155)
!3123 = !DILocation(line: 982, column: 32, scope: !3115)
!3124 = !DILocation(line: 982, column: 44, scope: !3115)
!3125 = !DILocation(line: 982, column: 58, scope: !3115)
!3126 = !DILocation(line: 984, column: 3, scope: !3115)
!3127 = !DILocation(line: 985, column: 13, scope: !3115)
!3128 = !{i64 0, i64 4, !907, i64 4, i64 4, !948, i64 8, i64 32, !907, i64 40, i64 8, !726, i64 48, i64 8, !726}
!3129 = !DILocation(line: 984, column: 26, scope: !3115)
!3130 = !DILocation(line: 152, column: 43, scope: !1783, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 986, column: 3, scope: !3115)
!3132 = !DILocation(line: 152, column: 51, scope: !1783, inlinedAt: !3131)
!3133 = !DILocation(line: 152, column: 58, scope: !1783, inlinedAt: !3131)
!3134 = !DILocation(line: 154, column: 17, scope: !1783, inlinedAt: !3131)
!3135 = !DILocation(line: 156, column: 62, scope: !1783, inlinedAt: !3131)
!3136 = !DILocation(line: 156, column: 57, scope: !1783, inlinedAt: !3131)
!3137 = !DILocation(line: 155, column: 17, scope: !1783, inlinedAt: !3131)
!3138 = !DILocation(line: 157, column: 15, scope: !1783, inlinedAt: !3131)
!3139 = !DILocation(line: 157, column: 7, scope: !1783, inlinedAt: !3131)
!3140 = !DILocation(line: 158, column: 12, scope: !1783, inlinedAt: !3131)
!3141 = !DILocation(line: 158, column: 15, scope: !1783, inlinedAt: !3131)
!3142 = !DILocation(line: 158, column: 25, scope: !1783, inlinedAt: !3131)
!3143 = !DILocation(line: 158, column: 7, scope: !1783, inlinedAt: !3131)
!3144 = !DILocation(line: 159, column: 18, scope: !1783, inlinedAt: !3131)
!3145 = !DILocation(line: 159, column: 23, scope: !1783, inlinedAt: !3131)
!3146 = !DILocation(line: 159, column: 6, scope: !1783, inlinedAt: !3131)
!3147 = !DILocation(line: 987, column: 10, scope: !3115)
!3148 = !DILocation(line: 988, column: 1, scope: !3115)
!3149 = !DILocation(line: 987, column: 3, scope: !3115)
!3150 = distinct !DISubprogram(name: "quotearg_char", scope: !148, file: !148, line: 991, type: !3151, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!35, !65, !36}
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !148, line: 991, type: !65)
!3155 = !DILocalVariable(name: "ch", arg: 2, scope: !3150, file: !148, line: 991, type: !36)
!3156 = !DILocation(line: 991, column: 28, scope: !3150)
!3157 = !DILocation(line: 991, column: 38, scope: !3150)
!3158 = !DILocation(line: 982, column: 32, scope: !3115, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 993, column: 10, scope: !3150)
!3160 = !DILocation(line: 982, column: 44, scope: !3115, inlinedAt: !3159)
!3161 = !DILocation(line: 982, column: 58, scope: !3115, inlinedAt: !3159)
!3162 = !DILocation(line: 984, column: 3, scope: !3115, inlinedAt: !3159)
!3163 = !DILocation(line: 985, column: 13, scope: !3115, inlinedAt: !3159)
!3164 = !DILocation(line: 984, column: 26, scope: !3115, inlinedAt: !3159)
!3165 = !DILocation(line: 152, column: 43, scope: !1783, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 986, column: 3, scope: !3115, inlinedAt: !3159)
!3167 = !DILocation(line: 152, column: 51, scope: !1783, inlinedAt: !3166)
!3168 = !DILocation(line: 152, column: 58, scope: !1783, inlinedAt: !3166)
!3169 = !DILocation(line: 154, column: 17, scope: !1783, inlinedAt: !3166)
!3170 = !DILocation(line: 156, column: 62, scope: !1783, inlinedAt: !3166)
!3171 = !DILocation(line: 156, column: 57, scope: !1783, inlinedAt: !3166)
!3172 = !DILocation(line: 155, column: 17, scope: !1783, inlinedAt: !3166)
!3173 = !DILocation(line: 157, column: 15, scope: !1783, inlinedAt: !3166)
!3174 = !DILocation(line: 157, column: 7, scope: !1783, inlinedAt: !3166)
!3175 = !DILocation(line: 158, column: 12, scope: !1783, inlinedAt: !3166)
!3176 = !DILocation(line: 158, column: 15, scope: !1783, inlinedAt: !3166)
!3177 = !DILocation(line: 158, column: 25, scope: !1783, inlinedAt: !3166)
!3178 = !DILocation(line: 158, column: 7, scope: !1783, inlinedAt: !3166)
!3179 = !DILocation(line: 159, column: 18, scope: !1783, inlinedAt: !3166)
!3180 = !DILocation(line: 159, column: 23, scope: !1783, inlinedAt: !3166)
!3181 = !DILocation(line: 159, column: 6, scope: !1783, inlinedAt: !3166)
!3182 = !DILocation(line: 987, column: 10, scope: !3115, inlinedAt: !3159)
!3183 = !DILocation(line: 988, column: 1, scope: !3115, inlinedAt: !3159)
!3184 = !DILocation(line: 993, column: 3, scope: !3150)
!3185 = distinct !DISubprogram(name: "quotearg_colon", scope: !148, file: !148, line: 997, type: !2969, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3186)
!3186 = !{!3187}
!3187 = !DILocalVariable(name: "arg", arg: 1, scope: !3185, file: !148, line: 997, type: !65)
!3188 = !DILocation(line: 997, column: 29, scope: !3185)
!3189 = !DILocation(line: 991, column: 28, scope: !3150, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 999, column: 10, scope: !3185)
!3191 = !DILocation(line: 991, column: 38, scope: !3150, inlinedAt: !3190)
!3192 = !DILocation(line: 982, column: 32, scope: !3115, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 993, column: 10, scope: !3150, inlinedAt: !3190)
!3194 = !DILocation(line: 982, column: 44, scope: !3115, inlinedAt: !3193)
!3195 = !DILocation(line: 982, column: 58, scope: !3115, inlinedAt: !3193)
!3196 = !DILocation(line: 984, column: 3, scope: !3115, inlinedAt: !3193)
!3197 = !DILocation(line: 985, column: 13, scope: !3115, inlinedAt: !3193)
!3198 = !DILocation(line: 984, column: 26, scope: !3115, inlinedAt: !3193)
!3199 = !DILocation(line: 152, column: 43, scope: !1783, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 986, column: 3, scope: !3115, inlinedAt: !3193)
!3201 = !DILocation(line: 152, column: 51, scope: !1783, inlinedAt: !3200)
!3202 = !DILocation(line: 152, column: 58, scope: !1783, inlinedAt: !3200)
!3203 = !DILocation(line: 154, column: 17, scope: !1783, inlinedAt: !3200)
!3204 = !DILocation(line: 156, column: 57, scope: !1783, inlinedAt: !3200)
!3205 = !DILocation(line: 155, column: 17, scope: !1783, inlinedAt: !3200)
!3206 = !DILocation(line: 157, column: 7, scope: !1783, inlinedAt: !3200)
!3207 = !DILocation(line: 158, column: 12, scope: !1783, inlinedAt: !3200)
!3208 = !DILocation(line: 159, column: 6, scope: !1783, inlinedAt: !3200)
!3209 = !DILocation(line: 987, column: 10, scope: !3115, inlinedAt: !3193)
!3210 = !DILocation(line: 988, column: 1, scope: !3115, inlinedAt: !3193)
!3211 = !DILocation(line: 999, column: 3, scope: !3185)
!3212 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !148, file: !148, line: 1003, type: !2980, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3213)
!3213 = !{!3214, !3215}
!3214 = !DILocalVariable(name: "arg", arg: 1, scope: !3212, file: !148, line: 1003, type: !65)
!3215 = !DILocalVariable(name: "argsize", arg: 2, scope: !3212, file: !148, line: 1003, type: !79)
!3216 = !DILocation(line: 1003, column: 33, scope: !3212)
!3217 = !DILocation(line: 1003, column: 45, scope: !3212)
!3218 = !DILocation(line: 982, column: 32, scope: !3115, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1005, column: 10, scope: !3212)
!3220 = !DILocation(line: 982, column: 44, scope: !3115, inlinedAt: !3219)
!3221 = !DILocation(line: 982, column: 58, scope: !3115, inlinedAt: !3219)
!3222 = !DILocation(line: 984, column: 3, scope: !3115, inlinedAt: !3219)
!3223 = !DILocation(line: 985, column: 13, scope: !3115, inlinedAt: !3219)
!3224 = !DILocation(line: 984, column: 26, scope: !3115, inlinedAt: !3219)
!3225 = !DILocation(line: 152, column: 43, scope: !1783, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 986, column: 3, scope: !3115, inlinedAt: !3219)
!3227 = !DILocation(line: 152, column: 51, scope: !1783, inlinedAt: !3226)
!3228 = !DILocation(line: 152, column: 58, scope: !1783, inlinedAt: !3226)
!3229 = !DILocation(line: 154, column: 17, scope: !1783, inlinedAt: !3226)
!3230 = !DILocation(line: 156, column: 57, scope: !1783, inlinedAt: !3226)
!3231 = !DILocation(line: 155, column: 17, scope: !1783, inlinedAt: !3226)
!3232 = !DILocation(line: 157, column: 7, scope: !1783, inlinedAt: !3226)
!3233 = !DILocation(line: 158, column: 12, scope: !1783, inlinedAt: !3226)
!3234 = !DILocation(line: 159, column: 6, scope: !1783, inlinedAt: !3226)
!3235 = !DILocation(line: 987, column: 10, scope: !3115, inlinedAt: !3219)
!3236 = !DILocation(line: 988, column: 1, scope: !3115, inlinedAt: !3219)
!3237 = !DILocation(line: 1005, column: 3, scope: !3212)
!3238 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !148, file: !148, line: 1009, type: !2994, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3239)
!3239 = !{!3240, !3241, !3242, !3243}
!3240 = !DILocalVariable(name: "n", arg: 1, scope: !3238, file: !148, line: 1009, type: !68)
!3241 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !148, line: 1009, type: !11)
!3242 = !DILocalVariable(name: "arg", arg: 3, scope: !3238, file: !148, line: 1009, type: !65)
!3243 = !DILocalVariable(name: "options", scope: !3238, file: !148, line: 1011, type: !155)
!3244 = !DILocation(line: 195, column: 26, scope: !3007, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 1012, column: 13, scope: !3238)
!3246 = !DILocation(line: 1009, column: 29, scope: !3238)
!3247 = !DILocation(line: 1009, column: 51, scope: !3238)
!3248 = !DILocation(line: 1009, column: 66, scope: !3238)
!3249 = !DILocation(line: 1011, column: 3, scope: !3238)
!3250 = !DILocation(line: 1012, column: 13, scope: !3238)
!3251 = !DILocation(line: 193, column: 48, scope: !3007, inlinedAt: !3245)
!3252 = !{!3253}
!3253 = distinct !{!3253, !3254, !"quoting_options_from_style: argument 0"}
!3254 = distinct !{!3254, !"quoting_options_from_style"}
!3255 = !DILocation(line: 196, column: 13, scope: !3019, inlinedAt: !3245)
!3256 = !DILocation(line: 196, column: 7, scope: !3007, inlinedAt: !3245)
!3257 = !DILocation(line: 197, column: 5, scope: !3019, inlinedAt: !3245)
!3258 = !DILocation(line: 1011, column: 26, scope: !3238)
!3259 = !DILocation(line: 152, column: 43, scope: !1783, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1013, column: 3, scope: !3238)
!3261 = !DILocation(line: 152, column: 51, scope: !1783, inlinedAt: !3260)
!3262 = !DILocation(line: 152, column: 58, scope: !1783, inlinedAt: !3260)
!3263 = !DILocation(line: 154, column: 17, scope: !1783, inlinedAt: !3260)
!3264 = !DILocation(line: 156, column: 57, scope: !1783, inlinedAt: !3260)
!3265 = !DILocation(line: 155, column: 17, scope: !1783, inlinedAt: !3260)
!3266 = !DILocation(line: 157, column: 7, scope: !1783, inlinedAt: !3260)
!3267 = !DILocation(line: 158, column: 12, scope: !1783, inlinedAt: !3260)
!3268 = !DILocation(line: 159, column: 6, scope: !1783, inlinedAt: !3260)
!3269 = !DILocation(line: 1014, column: 10, scope: !3238)
!3270 = !DILocation(line: 1015, column: 1, scope: !3238)
!3271 = !DILocation(line: 1014, column: 3, scope: !3238)
!3272 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !148, file: !148, line: 1018, type: !3273, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!35, !68, !65, !65, !65}
!3275 = !{!3276, !3277, !3278, !3279}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !148, line: 1018, type: !68)
!3277 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3272, file: !148, line: 1018, type: !65)
!3278 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3272, file: !148, line: 1019, type: !65)
!3279 = !DILocalVariable(name: "arg", arg: 4, scope: !3272, file: !148, line: 1019, type: !65)
!3280 = !DILocation(line: 1018, column: 24, scope: !3272)
!3281 = !DILocation(line: 1018, column: 39, scope: !3272)
!3282 = !DILocation(line: 1019, column: 32, scope: !3272)
!3283 = !DILocation(line: 1019, column: 57, scope: !3272)
!3284 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !148, line: 1026, type: !68)
!3285 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !148, file: !148, line: 1026, type: !3286, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!35, !68, !65, !65, !65, !79}
!3288 = !{!3284, !3289, !3290, !3291, !3292, !3293}
!3289 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3285, file: !148, line: 1026, type: !65)
!3290 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3285, file: !148, line: 1027, type: !65)
!3291 = !DILocalVariable(name: "arg", arg: 4, scope: !3285, file: !148, line: 1028, type: !65)
!3292 = !DILocalVariable(name: "argsize", arg: 5, scope: !3285, file: !148, line: 1028, type: !79)
!3293 = !DILocalVariable(name: "o", scope: !3285, file: !148, line: 1030, type: !155)
!3294 = !DILocation(line: 1026, column: 28, scope: !3285, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 1021, column: 10, scope: !3272)
!3296 = !DILocation(line: 1026, column: 43, scope: !3285, inlinedAt: !3295)
!3297 = !DILocation(line: 1027, column: 36, scope: !3285, inlinedAt: !3295)
!3298 = !DILocation(line: 1028, column: 36, scope: !3285, inlinedAt: !3295)
!3299 = !DILocation(line: 1028, column: 48, scope: !3285, inlinedAt: !3295)
!3300 = !DILocation(line: 1030, column: 3, scope: !3285, inlinedAt: !3295)
!3301 = !DILocation(line: 1030, column: 30, scope: !3285, inlinedAt: !3295)
!3302 = !DILocation(line: 1030, column: 26, scope: !3285, inlinedAt: !3295)
!3303 = !DILocation(line: 179, column: 45, scope: !1831, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1031, column: 3, scope: !3285, inlinedAt: !3295)
!3305 = !DILocation(line: 180, column: 33, scope: !1831, inlinedAt: !3304)
!3306 = !DILocation(line: 180, column: 57, scope: !1831, inlinedAt: !3304)
!3307 = !DILocation(line: 184, column: 6, scope: !1831, inlinedAt: !3304)
!3308 = !DILocation(line: 184, column: 12, scope: !1831, inlinedAt: !3304)
!3309 = !DILocation(line: 185, column: 8, scope: !1847, inlinedAt: !3304)
!3310 = !DILocation(line: 185, column: 23, scope: !1847, inlinedAt: !3304)
!3311 = !DILocation(line: 185, column: 19, scope: !1847, inlinedAt: !3304)
!3312 = !DILocation(line: 186, column: 5, scope: !1847, inlinedAt: !3304)
!3313 = !DILocation(line: 187, column: 6, scope: !1831, inlinedAt: !3304)
!3314 = !DILocation(line: 187, column: 17, scope: !1831, inlinedAt: !3304)
!3315 = !DILocation(line: 188, column: 6, scope: !1831, inlinedAt: !3304)
!3316 = !DILocation(line: 188, column: 18, scope: !1831, inlinedAt: !3304)
!3317 = !DILocation(line: 1032, column: 10, scope: !3285, inlinedAt: !3295)
!3318 = !DILocation(line: 1033, column: 1, scope: !3285, inlinedAt: !3295)
!3319 = !DILocation(line: 1021, column: 3, scope: !3272)
!3320 = !DILocation(line: 1026, column: 28, scope: !3285)
!3321 = !DILocation(line: 1026, column: 43, scope: !3285)
!3322 = !DILocation(line: 1027, column: 36, scope: !3285)
!3323 = !DILocation(line: 1028, column: 36, scope: !3285)
!3324 = !DILocation(line: 1028, column: 48, scope: !3285)
!3325 = !DILocation(line: 1030, column: 3, scope: !3285)
!3326 = !DILocation(line: 1030, column: 30, scope: !3285)
!3327 = !DILocation(line: 1030, column: 26, scope: !3285)
!3328 = !DILocation(line: 179, column: 45, scope: !1831, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 1031, column: 3, scope: !3285)
!3330 = !DILocation(line: 180, column: 33, scope: !1831, inlinedAt: !3329)
!3331 = !DILocation(line: 180, column: 57, scope: !1831, inlinedAt: !3329)
!3332 = !DILocation(line: 184, column: 6, scope: !1831, inlinedAt: !3329)
!3333 = !DILocation(line: 184, column: 12, scope: !1831, inlinedAt: !3329)
!3334 = !DILocation(line: 185, column: 8, scope: !1847, inlinedAt: !3329)
!3335 = !DILocation(line: 185, column: 23, scope: !1847, inlinedAt: !3329)
!3336 = !DILocation(line: 185, column: 19, scope: !1847, inlinedAt: !3329)
!3337 = !DILocation(line: 186, column: 5, scope: !1847, inlinedAt: !3329)
!3338 = !DILocation(line: 187, column: 6, scope: !1831, inlinedAt: !3329)
!3339 = !DILocation(line: 187, column: 17, scope: !1831, inlinedAt: !3329)
!3340 = !DILocation(line: 188, column: 6, scope: !1831, inlinedAt: !3329)
!3341 = !DILocation(line: 188, column: 18, scope: !1831, inlinedAt: !3329)
!3342 = !DILocation(line: 1032, column: 10, scope: !3285)
!3343 = !DILocation(line: 1033, column: 1, scope: !3285)
!3344 = !DILocation(line: 1032, column: 3, scope: !3285)
!3345 = distinct !DISubprogram(name: "quotearg_custom", scope: !148, file: !148, line: 1036, type: !3346, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!35, !65, !65, !65}
!3348 = !{!3349, !3350, !3351}
!3349 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3345, file: !148, line: 1036, type: !65)
!3350 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3345, file: !148, line: 1036, type: !65)
!3351 = !DILocalVariable(name: "arg", arg: 3, scope: !3345, file: !148, line: 1037, type: !65)
!3352 = !DILocation(line: 1036, column: 30, scope: !3345)
!3353 = !DILocation(line: 1036, column: 54, scope: !3345)
!3354 = !DILocation(line: 1037, column: 30, scope: !3345)
!3355 = !DILocation(line: 1018, column: 24, scope: !3272, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 1039, column: 10, scope: !3345)
!3357 = !DILocation(line: 1018, column: 39, scope: !3272, inlinedAt: !3356)
!3358 = !DILocation(line: 1019, column: 32, scope: !3272, inlinedAt: !3356)
!3359 = !DILocation(line: 1019, column: 57, scope: !3272, inlinedAt: !3356)
!3360 = !DILocation(line: 1026, column: 28, scope: !3285, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 1021, column: 10, scope: !3272, inlinedAt: !3356)
!3362 = !DILocation(line: 1026, column: 43, scope: !3285, inlinedAt: !3361)
!3363 = !DILocation(line: 1027, column: 36, scope: !3285, inlinedAt: !3361)
!3364 = !DILocation(line: 1028, column: 36, scope: !3285, inlinedAt: !3361)
!3365 = !DILocation(line: 1028, column: 48, scope: !3285, inlinedAt: !3361)
!3366 = !DILocation(line: 1030, column: 3, scope: !3285, inlinedAt: !3361)
!3367 = !DILocation(line: 1030, column: 30, scope: !3285, inlinedAt: !3361)
!3368 = !DILocation(line: 1030, column: 26, scope: !3285, inlinedAt: !3361)
!3369 = !DILocation(line: 179, column: 45, scope: !1831, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1031, column: 3, scope: !3285, inlinedAt: !3361)
!3371 = !DILocation(line: 180, column: 33, scope: !1831, inlinedAt: !3370)
!3372 = !DILocation(line: 180, column: 57, scope: !1831, inlinedAt: !3370)
!3373 = !DILocation(line: 184, column: 6, scope: !1831, inlinedAt: !3370)
!3374 = !DILocation(line: 184, column: 12, scope: !1831, inlinedAt: !3370)
!3375 = !DILocation(line: 185, column: 8, scope: !1847, inlinedAt: !3370)
!3376 = !DILocation(line: 185, column: 23, scope: !1847, inlinedAt: !3370)
!3377 = !DILocation(line: 185, column: 19, scope: !1847, inlinedAt: !3370)
!3378 = !DILocation(line: 186, column: 5, scope: !1847, inlinedAt: !3370)
!3379 = !DILocation(line: 187, column: 6, scope: !1831, inlinedAt: !3370)
!3380 = !DILocation(line: 187, column: 17, scope: !1831, inlinedAt: !3370)
!3381 = !DILocation(line: 188, column: 6, scope: !1831, inlinedAt: !3370)
!3382 = !DILocation(line: 188, column: 18, scope: !1831, inlinedAt: !3370)
!3383 = !DILocation(line: 1032, column: 10, scope: !3285, inlinedAt: !3361)
!3384 = !DILocation(line: 1033, column: 1, scope: !3285, inlinedAt: !3361)
!3385 = !DILocation(line: 1039, column: 3, scope: !3345)
!3386 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !148, file: !148, line: 1043, type: !3387, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!35, !65, !65, !65, !79}
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3386, file: !148, line: 1043, type: !65)
!3391 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3386, file: !148, line: 1043, type: !65)
!3392 = !DILocalVariable(name: "arg", arg: 3, scope: !3386, file: !148, line: 1044, type: !65)
!3393 = !DILocalVariable(name: "argsize", arg: 4, scope: !3386, file: !148, line: 1044, type: !79)
!3394 = !DILocation(line: 1043, column: 34, scope: !3386)
!3395 = !DILocation(line: 1043, column: 58, scope: !3386)
!3396 = !DILocation(line: 1044, column: 34, scope: !3386)
!3397 = !DILocation(line: 1044, column: 46, scope: !3386)
!3398 = !DILocation(line: 1026, column: 28, scope: !3285, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1046, column: 10, scope: !3386)
!3400 = !DILocation(line: 1026, column: 43, scope: !3285, inlinedAt: !3399)
!3401 = !DILocation(line: 1027, column: 36, scope: !3285, inlinedAt: !3399)
!3402 = !DILocation(line: 1028, column: 36, scope: !3285, inlinedAt: !3399)
!3403 = !DILocation(line: 1028, column: 48, scope: !3285, inlinedAt: !3399)
!3404 = !DILocation(line: 1030, column: 3, scope: !3285, inlinedAt: !3399)
!3405 = !DILocation(line: 1030, column: 30, scope: !3285, inlinedAt: !3399)
!3406 = !DILocation(line: 1030, column: 26, scope: !3285, inlinedAt: !3399)
!3407 = !DILocation(line: 179, column: 45, scope: !1831, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 1031, column: 3, scope: !3285, inlinedAt: !3399)
!3409 = !DILocation(line: 180, column: 33, scope: !1831, inlinedAt: !3408)
!3410 = !DILocation(line: 180, column: 57, scope: !1831, inlinedAt: !3408)
!3411 = !DILocation(line: 184, column: 6, scope: !1831, inlinedAt: !3408)
!3412 = !DILocation(line: 184, column: 12, scope: !1831, inlinedAt: !3408)
!3413 = !DILocation(line: 185, column: 8, scope: !1847, inlinedAt: !3408)
!3414 = !DILocation(line: 185, column: 23, scope: !1847, inlinedAt: !3408)
!3415 = !DILocation(line: 185, column: 19, scope: !1847, inlinedAt: !3408)
!3416 = !DILocation(line: 186, column: 5, scope: !1847, inlinedAt: !3408)
!3417 = !DILocation(line: 187, column: 6, scope: !1831, inlinedAt: !3408)
!3418 = !DILocation(line: 187, column: 17, scope: !1831, inlinedAt: !3408)
!3419 = !DILocation(line: 188, column: 6, scope: !1831, inlinedAt: !3408)
!3420 = !DILocation(line: 188, column: 18, scope: !1831, inlinedAt: !3408)
!3421 = !DILocation(line: 1032, column: 10, scope: !3285, inlinedAt: !3399)
!3422 = !DILocation(line: 1033, column: 1, scope: !3285, inlinedAt: !3399)
!3423 = !DILocation(line: 1046, column: 3, scope: !3386)
!3424 = distinct !DISubprogram(name: "quote_n_mem", scope: !148, file: !148, line: 1061, type: !3425, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!65, !68, !65, !79}
!3427 = !{!3428, !3429, !3430}
!3428 = !DILocalVariable(name: "n", arg: 1, scope: !3424, file: !148, line: 1061, type: !68)
!3429 = !DILocalVariable(name: "arg", arg: 2, scope: !3424, file: !148, line: 1061, type: !65)
!3430 = !DILocalVariable(name: "argsize", arg: 3, scope: !3424, file: !148, line: 1061, type: !79)
!3431 = !DILocation(line: 1061, column: 18, scope: !3424)
!3432 = !DILocation(line: 1061, column: 33, scope: !3424)
!3433 = !DILocation(line: 1061, column: 45, scope: !3424)
!3434 = !DILocation(line: 1063, column: 10, scope: !3424)
!3435 = !DILocation(line: 1063, column: 3, scope: !3424)
!3436 = distinct !DISubprogram(name: "quote_mem", scope: !148, file: !148, line: 1067, type: !3437, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!65, !65, !79}
!3439 = !{!3440, !3441}
!3440 = !DILocalVariable(name: "arg", arg: 1, scope: !3436, file: !148, line: 1067, type: !65)
!3441 = !DILocalVariable(name: "argsize", arg: 2, scope: !3436, file: !148, line: 1067, type: !79)
!3442 = !DILocation(line: 1067, column: 24, scope: !3436)
!3443 = !DILocation(line: 1067, column: 36, scope: !3436)
!3444 = !DILocation(line: 1061, column: 18, scope: !3424, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 1069, column: 10, scope: !3436)
!3446 = !DILocation(line: 1061, column: 33, scope: !3424, inlinedAt: !3445)
!3447 = !DILocation(line: 1061, column: 45, scope: !3424, inlinedAt: !3445)
!3448 = !DILocation(line: 1063, column: 10, scope: !3424, inlinedAt: !3445)
!3449 = !DILocation(line: 1069, column: 3, scope: !3436)
!3450 = distinct !DISubprogram(name: "quote_n", scope: !148, file: !148, line: 1073, type: !3451, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!65, !68, !65}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "n", arg: 1, scope: !3450, file: !148, line: 1073, type: !68)
!3455 = !DILocalVariable(name: "arg", arg: 2, scope: !3450, file: !148, line: 1073, type: !65)
!3456 = !DILocation(line: 1073, column: 14, scope: !3450)
!3457 = !DILocation(line: 1073, column: 29, scope: !3450)
!3458 = !DILocation(line: 1061, column: 18, scope: !3424, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 1075, column: 10, scope: !3450)
!3460 = !DILocation(line: 1061, column: 33, scope: !3424, inlinedAt: !3459)
!3461 = !DILocation(line: 1061, column: 45, scope: !3424, inlinedAt: !3459)
!3462 = !DILocation(line: 1063, column: 10, scope: !3424, inlinedAt: !3459)
!3463 = !DILocation(line: 1075, column: 3, scope: !3450)
!3464 = distinct !DISubprogram(name: "quote", scope: !148, file: !148, line: 1079, type: !3465, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !120, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!65, !65}
!3467 = !{!3468}
!3468 = !DILocalVariable(name: "arg", arg: 1, scope: !3464, file: !148, line: 1079, type: !65)
!3469 = !DILocation(line: 1079, column: 20, scope: !3464)
!3470 = !DILocation(line: 1073, column: 14, scope: !3450, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 1081, column: 10, scope: !3464)
!3472 = !DILocation(line: 1073, column: 29, scope: !3450, inlinedAt: !3471)
!3473 = !DILocation(line: 1061, column: 18, scope: !3424, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 1075, column: 10, scope: !3450, inlinedAt: !3471)
!3475 = !DILocation(line: 1061, column: 33, scope: !3424, inlinedAt: !3474)
!3476 = !DILocation(line: 1061, column: 45, scope: !3424, inlinedAt: !3474)
!3477 = !DILocation(line: 1063, column: 10, scope: !3424, inlinedAt: !3474)
!3478 = !DILocation(line: 1081, column: 3, scope: !3464)
!3479 = distinct !DISubprogram(name: "dup_safer", scope: !3480, file: !3480, line: 31, type: !3481, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !251, retainedNodes: !3483)
!3480 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!68, !68}
!3483 = !{!3484}
!3484 = !DILocalVariable(name: "fd", arg: 1, scope: !3479, file: !3480, line: 31, type: !68)
!3485 = !DILocation(line: 31, column: 16, scope: !3479)
!3486 = !DILocation(line: 33, column: 10, scope: !3479)
!3487 = !DILocation(line: 33, column: 3, scope: !3479)
!3488 = distinct !DISubprogram(name: "version_etc_arn", scope: !257, file: !257, line: 62, type: !3489, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3526)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3491, !65, !65, !65, !3525, !79}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !815, line: 51, baseType: !68, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3493, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3493, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3493, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3493, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3493, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3493, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3493, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3493, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3493, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3493, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3493, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3493, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3493, file: !815, line: 70, baseType: !3509, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3493, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3493, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3493, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3493, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3493, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3493, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3493, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3493, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3493, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3493, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3493, file: !815, line: 93, baseType: !3509, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3493, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3493, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3493, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3493, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532}
!3527 = !DILocalVariable(name: "stream", arg: 1, scope: !3488, file: !257, line: 62, type: !3491)
!3528 = !DILocalVariable(name: "command_name", arg: 2, scope: !3488, file: !257, line: 63, type: !65)
!3529 = !DILocalVariable(name: "package", arg: 3, scope: !3488, file: !257, line: 63, type: !65)
!3530 = !DILocalVariable(name: "version", arg: 4, scope: !3488, file: !257, line: 64, type: !65)
!3531 = !DILocalVariable(name: "authors", arg: 5, scope: !3488, file: !257, line: 65, type: !3525)
!3532 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3488, file: !257, line: 65, type: !79)
!3533 = !DILocation(line: 62, column: 24, scope: !3488)
!3534 = !DILocation(line: 63, column: 30, scope: !3488)
!3535 = !DILocation(line: 63, column: 56, scope: !3488)
!3536 = !DILocation(line: 64, column: 30, scope: !3488)
!3537 = !DILocation(line: 65, column: 39, scope: !3488)
!3538 = !DILocation(line: 65, column: 55, scope: !3488)
!3539 = !DILocation(line: 67, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3488, file: !257, line: 67, column: 7)
!3541 = !DILocation(line: 67, column: 7, scope: !3488)
!3542 = !DILocation(line: 68, column: 5, scope: !3540)
!3543 = !DILocation(line: 70, column: 5, scope: !3540)
!3544 = !DILocation(line: 84, column: 3, scope: !3488)
!3545 = !DILocation(line: 86, column: 3, scope: !3488)
!3546 = !DILocation(line: 95, column: 3, scope: !3488)
!3547 = !DILocation(line: 99, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3488, file: !257, line: 96, column: 5)
!3549 = !DILocation(line: 102, column: 7, scope: !3548)
!3550 = !DILocation(line: 103, column: 7, scope: !3548)
!3551 = !DILocation(line: 106, column: 7, scope: !3548)
!3552 = !DILocation(line: 107, column: 7, scope: !3548)
!3553 = !DILocation(line: 110, column: 7, scope: !3548)
!3554 = !DILocation(line: 112, column: 7, scope: !3548)
!3555 = !DILocation(line: 117, column: 7, scope: !3548)
!3556 = !DILocation(line: 119, column: 7, scope: !3548)
!3557 = !DILocation(line: 124, column: 7, scope: !3548)
!3558 = !DILocation(line: 126, column: 7, scope: !3548)
!3559 = !DILocation(line: 131, column: 7, scope: !3548)
!3560 = !DILocation(line: 134, column: 7, scope: !3548)
!3561 = !DILocation(line: 139, column: 7, scope: !3548)
!3562 = !DILocation(line: 142, column: 7, scope: !3548)
!3563 = !DILocation(line: 147, column: 7, scope: !3548)
!3564 = !DILocation(line: 151, column: 7, scope: !3548)
!3565 = !DILocation(line: 156, column: 7, scope: !3548)
!3566 = !DILocation(line: 160, column: 7, scope: !3548)
!3567 = !DILocation(line: 167, column: 7, scope: !3548)
!3568 = !DILocation(line: 171, column: 7, scope: !3548)
!3569 = !DILocation(line: 173, column: 1, scope: !3488)
!3570 = distinct !DISubprogram(name: "version_etc_ar", scope: !257, file: !257, line: 180, type: !3571, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{null, !3491, !65, !65, !65, !3525}
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579}
!3574 = !DILocalVariable(name: "stream", arg: 1, scope: !3570, file: !257, line: 180, type: !3491)
!3575 = !DILocalVariable(name: "command_name", arg: 2, scope: !3570, file: !257, line: 181, type: !65)
!3576 = !DILocalVariable(name: "package", arg: 3, scope: !3570, file: !257, line: 181, type: !65)
!3577 = !DILocalVariable(name: "version", arg: 4, scope: !3570, file: !257, line: 182, type: !65)
!3578 = !DILocalVariable(name: "authors", arg: 5, scope: !3570, file: !257, line: 182, type: !3525)
!3579 = !DILocalVariable(name: "n_authors", scope: !3570, file: !257, line: 184, type: !79)
!3580 = !DILocation(line: 180, column: 23, scope: !3570)
!3581 = !DILocation(line: 181, column: 29, scope: !3570)
!3582 = !DILocation(line: 181, column: 55, scope: !3570)
!3583 = !DILocation(line: 182, column: 29, scope: !3570)
!3584 = !DILocation(line: 182, column: 59, scope: !3570)
!3585 = !DILocation(line: 184, column: 10, scope: !3570)
!3586 = !DILocation(line: 186, column: 8, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3570, file: !257, line: 186, column: 3)
!3588 = !DILocation(line: 0, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3587, file: !257, line: 186, column: 3)
!3590 = !DILocation(line: 186, column: 23, scope: !3589)
!3591 = !DILocation(line: 186, column: 3, scope: !3587)
!3592 = !DILocation(line: 186, column: 52, scope: !3589)
!3593 = distinct !{!3593, !3591, !3594}
!3594 = !DILocation(line: 187, column: 5, scope: !3587)
!3595 = !DILocation(line: 188, column: 3, scope: !3570)
!3596 = !DILocation(line: 189, column: 1, scope: !3570)
!3597 = distinct !DISubprogram(name: "version_etc_va", scope: !257, file: !257, line: 196, type: !3598, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3607)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3491, !65, !65, !65, !3600}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !254, line: 189, size: 192, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3601, file: !254, line: 189, baseType: !6, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3601, file: !254, line: 189, baseType: !6, size: 32, offset: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3601, file: !254, line: 189, baseType: !37, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3601, file: !254, line: 189, baseType: !37, size: 64, offset: 128)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614}
!3608 = !DILocalVariable(name: "stream", arg: 1, scope: !3597, file: !257, line: 196, type: !3491)
!3609 = !DILocalVariable(name: "command_name", arg: 2, scope: !3597, file: !257, line: 197, type: !65)
!3610 = !DILocalVariable(name: "package", arg: 3, scope: !3597, file: !257, line: 197, type: !65)
!3611 = !DILocalVariable(name: "version", arg: 4, scope: !3597, file: !257, line: 198, type: !65)
!3612 = !DILocalVariable(name: "authors", arg: 5, scope: !3597, file: !257, line: 198, type: !3600)
!3613 = !DILocalVariable(name: "n_authors", scope: !3597, file: !257, line: 200, type: !79)
!3614 = !DILocalVariable(name: "authtab", scope: !3597, file: !257, line: 201, type: !3615)
!3615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 640, elements: !151)
!3616 = !DILocation(line: 196, column: 23, scope: !3597)
!3617 = !DILocation(line: 197, column: 29, scope: !3597)
!3618 = !DILocation(line: 197, column: 55, scope: !3597)
!3619 = !DILocation(line: 198, column: 29, scope: !3597)
!3620 = !DILocation(line: 198, column: 46, scope: !3597)
!3621 = !DILocation(line: 201, column: 3, scope: !3597)
!3622 = !DILocation(line: 201, column: 15, scope: !3597)
!3623 = !DILocation(line: 200, column: 10, scope: !3597)
!3624 = !DILocation(line: 205, column: 35, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !257, line: 203, column: 3)
!3626 = distinct !DILexicalBlock(scope: !3597, file: !257, line: 203, column: 3)
!3627 = !DILocation(line: 205, column: 14, scope: !3625)
!3628 = !DILocation(line: 205, column: 33, scope: !3625)
!3629 = !DILocation(line: 205, column: 67, scope: !3625)
!3630 = !DILocation(line: 203, column: 3, scope: !3626)
!3631 = !DILocation(line: 0, scope: !3625)
!3632 = !DILocation(line: 208, column: 3, scope: !3597)
!3633 = !DILocation(line: 210, column: 1, scope: !3597)
!3634 = distinct !DISubprogram(name: "version_etc", scope: !257, file: !257, line: 227, type: !3635, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3491, !65, !65, !65, null}
!3637 = !{!3638, !3639, !3640, !3641, !3642}
!3638 = !DILocalVariable(name: "stream", arg: 1, scope: !3634, file: !257, line: 227, type: !3491)
!3639 = !DILocalVariable(name: "command_name", arg: 2, scope: !3634, file: !257, line: 228, type: !65)
!3640 = !DILocalVariable(name: "package", arg: 3, scope: !3634, file: !257, line: 228, type: !65)
!3641 = !DILocalVariable(name: "version", arg: 4, scope: !3634, file: !257, line: 229, type: !65)
!3642 = !DILocalVariable(name: "authors", scope: !3634, file: !257, line: 231, type: !3643)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1259, line: 52, baseType: !3644)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !208, line: 48, baseType: !3645)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !254, line: 231, baseType: !3646)
!3646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3601, size: 192, elements: !217)
!3647 = !DILocation(line: 227, column: 20, scope: !3634)
!3648 = !DILocation(line: 228, column: 26, scope: !3634)
!3649 = !DILocation(line: 228, column: 52, scope: !3634)
!3650 = !DILocation(line: 229, column: 26, scope: !3634)
!3651 = !DILocation(line: 231, column: 3, scope: !3634)
!3652 = !DILocation(line: 231, column: 11, scope: !3634)
!3653 = !DILocation(line: 233, column: 3, scope: !3634)
!3654 = !DILocation(line: 234, column: 3, scope: !3634)
!3655 = !DILocation(line: 235, column: 3, scope: !3634)
!3656 = !DILocation(line: 236, column: 1, scope: !3634)
!3657 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !257, file: !257, line: 239, type: !1220, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !94)
!3658 = !DILocation(line: 245, column: 3, scope: !3657)
!3659 = !DILocation(line: 251, column: 3, scope: !3657)
!3660 = !DILocation(line: 256, column: 3, scope: !3657)
!3661 = !DILocation(line: 258, column: 1, scope: !3657)
!3662 = distinct !DISubprogram(name: "xnmalloc", scope: !265, file: !265, line: 99, type: !3663, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!37, !79, !79}
!3665 = !{!3666, !3667}
!3666 = !DILocalVariable(name: "n", arg: 1, scope: !3662, file: !265, line: 99, type: !79)
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !265, line: 99, type: !79)
!3668 = !DILocation(line: 99, column: 18, scope: !3662)
!3669 = !DILocation(line: 99, column: 28, scope: !3662)
!3670 = !DILocation(line: 101, column: 7, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3662, file: !265, line: 101, column: 7)
!3672 = !DILocation(line: 101, column: 7, scope: !3662)
!3673 = !DILocation(line: 102, column: 5, scope: !3671)
!3674 = !DILocation(line: 103, column: 21, scope: !3662)
!3675 = !DILocalVariable(name: "n", arg: 1, scope: !3676, file: !3677, line: 39, type: !79)
!3676 = distinct !DISubprogram(name: "xmalloc", scope: !3677, file: !3677, line: 39, type: !3678, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3680)
!3677 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!37, !79}
!3680 = !{!3675, !3681}
!3681 = !DILocalVariable(name: "p", scope: !3676, file: !3677, line: 41, type: !37)
!3682 = !DILocation(line: 39, column: 17, scope: !3676, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 103, column: 10, scope: !3662)
!3684 = !DILocation(line: 41, column: 13, scope: !3676, inlinedAt: !3683)
!3685 = !DILocation(line: 41, column: 9, scope: !3676, inlinedAt: !3683)
!3686 = !DILocation(line: 42, column: 8, scope: !3687, inlinedAt: !3683)
!3687 = distinct !DILexicalBlock(scope: !3676, file: !3677, line: 42, column: 7)
!3688 = !DILocation(line: 42, column: 15, scope: !3687, inlinedAt: !3683)
!3689 = !DILocation(line: 42, column: 10, scope: !3687, inlinedAt: !3683)
!3690 = !DILocation(line: 43, column: 5, scope: !3687, inlinedAt: !3683)
!3691 = !DILocation(line: 103, column: 3, scope: !3662)
!3692 = !DILocation(line: 39, column: 17, scope: !3676)
!3693 = !DILocation(line: 41, column: 13, scope: !3676)
!3694 = !DILocation(line: 41, column: 9, scope: !3676)
!3695 = !DILocation(line: 42, column: 8, scope: !3687)
!3696 = !DILocation(line: 42, column: 15, scope: !3687)
!3697 = !DILocation(line: 42, column: 10, scope: !3687)
!3698 = !DILocation(line: 43, column: 5, scope: !3687)
!3699 = !DILocation(line: 44, column: 3, scope: !3676)
!3700 = distinct !DISubprogram(name: "xnrealloc", scope: !265, file: !265, line: 112, type: !3701, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!37, !37, !79, !79}
!3703 = !{!3704, !3705, !3706}
!3704 = !DILocalVariable(name: "p", arg: 1, scope: !3700, file: !265, line: 112, type: !37)
!3705 = !DILocalVariable(name: "n", arg: 2, scope: !3700, file: !265, line: 112, type: !79)
!3706 = !DILocalVariable(name: "s", arg: 3, scope: !3700, file: !265, line: 112, type: !79)
!3707 = !DILocation(line: 112, column: 18, scope: !3700)
!3708 = !DILocation(line: 112, column: 28, scope: !3700)
!3709 = !DILocation(line: 112, column: 38, scope: !3700)
!3710 = !DILocation(line: 114, column: 7, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3700, file: !265, line: 114, column: 7)
!3712 = !DILocation(line: 114, column: 7, scope: !3700)
!3713 = !DILocation(line: 115, column: 5, scope: !3711)
!3714 = !DILocation(line: 116, column: 25, scope: !3700)
!3715 = !DILocalVariable(name: "p", arg: 1, scope: !3716, file: !3677, line: 51, type: !37)
!3716 = distinct !DISubprogram(name: "xrealloc", scope: !3677, file: !3677, line: 51, type: !3717, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!37, !37, !79}
!3719 = !{!3715, !3720}
!3720 = !DILocalVariable(name: "n", arg: 2, scope: !3716, file: !3677, line: 51, type: !79)
!3721 = !DILocation(line: 51, column: 17, scope: !3716, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 116, column: 10, scope: !3700)
!3723 = !DILocation(line: 51, column: 27, scope: !3716, inlinedAt: !3722)
!3724 = !DILocation(line: 53, column: 8, scope: !3725, inlinedAt: !3722)
!3725 = distinct !DILexicalBlock(scope: !3716, file: !3677, line: 53, column: 7)
!3726 = !DILocation(line: 53, column: 13, scope: !3725, inlinedAt: !3722)
!3727 = !DILocation(line: 53, column: 10, scope: !3725, inlinedAt: !3722)
!3728 = !DILocation(line: 57, column: 7, scope: !3729, inlinedAt: !3722)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !3677, line: 54, column: 5)
!3730 = !DILocation(line: 58, column: 7, scope: !3729, inlinedAt: !3722)
!3731 = !DILocation(line: 61, column: 7, scope: !3716, inlinedAt: !3722)
!3732 = !DILocation(line: 62, column: 8, scope: !3733, inlinedAt: !3722)
!3733 = distinct !DILexicalBlock(scope: !3716, file: !3677, line: 62, column: 7)
!3734 = !DILocation(line: 62, column: 13, scope: !3733, inlinedAt: !3722)
!3735 = !DILocation(line: 62, column: 10, scope: !3733, inlinedAt: !3722)
!3736 = !DILocation(line: 63, column: 5, scope: !3733, inlinedAt: !3722)
!3737 = !DILocation(line: 0, scope: !3716, inlinedAt: !3722)
!3738 = !DILocation(line: 116, column: 3, scope: !3700)
!3739 = !DILocation(line: 51, column: 17, scope: !3716)
!3740 = !DILocation(line: 51, column: 27, scope: !3716)
!3741 = !DILocation(line: 53, column: 8, scope: !3725)
!3742 = !DILocation(line: 53, column: 13, scope: !3725)
!3743 = !DILocation(line: 53, column: 10, scope: !3725)
!3744 = !DILocation(line: 57, column: 7, scope: !3729)
!3745 = !DILocation(line: 58, column: 7, scope: !3729)
!3746 = !DILocation(line: 61, column: 7, scope: !3716)
!3747 = !DILocation(line: 62, column: 8, scope: !3733)
!3748 = !DILocation(line: 62, column: 13, scope: !3733)
!3749 = !DILocation(line: 62, column: 10, scope: !3733)
!3750 = !DILocation(line: 63, column: 5, scope: !3733)
!3751 = !DILocation(line: 0, scope: !3716)
!3752 = !DILocation(line: 65, column: 1, scope: !3716)
!3753 = !DILocation(line: 174, column: 19, scope: !266)
!3754 = !DILocation(line: 174, column: 30, scope: !266)
!3755 = !DILocation(line: 174, column: 41, scope: !266)
!3756 = !DILocation(line: 176, column: 14, scope: !266)
!3757 = !DILocation(line: 176, column: 10, scope: !266)
!3758 = !DILocation(line: 178, column: 9, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !266, file: !265, line: 178, column: 7)
!3760 = !DILocation(line: 178, column: 7, scope: !266)
!3761 = !DILocation(line: 180, column: 13, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !265, line: 180, column: 11)
!3763 = distinct !DILexicalBlock(scope: !3759, file: !265, line: 179, column: 5)
!3764 = !DILocation(line: 180, column: 11, scope: !3763)
!3765 = !DILocation(line: 188, column: 30, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3762, file: !265, line: 181, column: 9)
!3767 = !DILocation(line: 189, column: 16, scope: !3766)
!3768 = !DILocation(line: 189, column: 13, scope: !3766)
!3769 = !DILocation(line: 190, column: 9, scope: !3766)
!3770 = !DILocation(line: 0, scope: !3766)
!3771 = !DILocation(line: 191, column: 11, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3763, file: !265, line: 191, column: 11)
!3773 = !DILocation(line: 191, column: 11, scope: !3763)
!3774 = !DILocation(line: 206, column: 7, scope: !266)
!3775 = !DILocation(line: 207, column: 25, scope: !266)
!3776 = !DILocation(line: 51, column: 17, scope: !3716, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 207, column: 10, scope: !266)
!3778 = !DILocation(line: 51, column: 27, scope: !3716, inlinedAt: !3777)
!3779 = !DILocation(line: 53, column: 10, scope: !3725, inlinedAt: !3777)
!3780 = !DILocation(line: 192, column: 9, scope: !3772)
!3781 = !DILocation(line: 200, column: 69, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !265, line: 200, column: 11)
!3783 = distinct !DILexicalBlock(scope: !3759, file: !265, line: 195, column: 5)
!3784 = !DILocation(line: 201, column: 11, scope: !3782)
!3785 = !DILocation(line: 200, column: 11, scope: !3783)
!3786 = !DILocation(line: 202, column: 9, scope: !3782)
!3787 = !DILocation(line: 203, column: 14, scope: !3783)
!3788 = !DILocation(line: 203, column: 18, scope: !3783)
!3789 = !DILocation(line: 203, column: 9, scope: !3783)
!3790 = !DILocation(line: 53, column: 8, scope: !3725, inlinedAt: !3777)
!3791 = !DILocation(line: 57, column: 7, scope: !3729, inlinedAt: !3777)
!3792 = !DILocation(line: 58, column: 7, scope: !3729, inlinedAt: !3777)
!3793 = !DILocation(line: 61, column: 7, scope: !3716, inlinedAt: !3777)
!3794 = !DILocation(line: 62, column: 8, scope: !3733, inlinedAt: !3777)
!3795 = !DILocation(line: 62, column: 13, scope: !3733, inlinedAt: !3777)
!3796 = !DILocation(line: 62, column: 10, scope: !3733, inlinedAt: !3777)
!3797 = !DILocation(line: 63, column: 5, scope: !3733, inlinedAt: !3777)
!3798 = !DILocation(line: 0, scope: !3716, inlinedAt: !3777)
!3799 = !DILocation(line: 207, column: 3, scope: !266)
!3800 = distinct !DISubprogram(name: "xcharalloc", scope: !265, file: !265, line: 216, type: !2765, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3801)
!3801 = !{!3802}
!3802 = !DILocalVariable(name: "n", arg: 1, scope: !3800, file: !265, line: 216, type: !79)
!3803 = !DILocation(line: 216, column: 20, scope: !3800)
!3804 = !DILocation(line: 39, column: 17, scope: !3676, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 218, column: 10, scope: !3800)
!3806 = !DILocation(line: 41, column: 13, scope: !3676, inlinedAt: !3805)
!3807 = !DILocation(line: 41, column: 9, scope: !3676, inlinedAt: !3805)
!3808 = !DILocation(line: 42, column: 8, scope: !3687, inlinedAt: !3805)
!3809 = !DILocation(line: 42, column: 15, scope: !3687, inlinedAt: !3805)
!3810 = !DILocation(line: 42, column: 10, scope: !3687, inlinedAt: !3805)
!3811 = !DILocation(line: 43, column: 5, scope: !3687, inlinedAt: !3805)
!3812 = !DILocation(line: 218, column: 3, scope: !3800)
!3813 = distinct !DISubprogram(name: "x2realloc", scope: !3677, file: !3677, line: 74, type: !3814, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!37, !37, !269}
!3816 = !{!3817, !3818}
!3817 = !DILocalVariable(name: "p", arg: 1, scope: !3813, file: !3677, line: 74, type: !37)
!3818 = !DILocalVariable(name: "pn", arg: 2, scope: !3813, file: !3677, line: 74, type: !269)
!3819 = !DILocation(line: 74, column: 18, scope: !3813)
!3820 = !DILocation(line: 74, column: 29, scope: !3813)
!3821 = !DILocation(line: 174, column: 19, scope: !266, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 76, column: 10, scope: !3813)
!3823 = !DILocation(line: 174, column: 30, scope: !266, inlinedAt: !3822)
!3824 = !DILocation(line: 174, column: 41, scope: !266, inlinedAt: !3822)
!3825 = !DILocation(line: 176, column: 14, scope: !266, inlinedAt: !3822)
!3826 = !DILocation(line: 176, column: 10, scope: !266, inlinedAt: !3822)
!3827 = !DILocation(line: 178, column: 9, scope: !3759, inlinedAt: !3822)
!3828 = !DILocation(line: 178, column: 7, scope: !266, inlinedAt: !3822)
!3829 = !DILocation(line: 180, column: 13, scope: !3762, inlinedAt: !3822)
!3830 = !DILocation(line: 180, column: 11, scope: !3763, inlinedAt: !3822)
!3831 = !DILocation(line: 191, column: 11, scope: !3772, inlinedAt: !3822)
!3832 = !DILocation(line: 191, column: 11, scope: !3763, inlinedAt: !3822)
!3833 = !DILocation(line: 206, column: 7, scope: !266, inlinedAt: !3822)
!3834 = !DILocation(line: 51, column: 17, scope: !3716, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 207, column: 10, scope: !266, inlinedAt: !3822)
!3836 = !DILocation(line: 51, column: 27, scope: !3716, inlinedAt: !3835)
!3837 = !DILocation(line: 53, column: 10, scope: !3725, inlinedAt: !3835)
!3838 = !DILocation(line: 192, column: 9, scope: !3772, inlinedAt: !3822)
!3839 = !DILocation(line: 201, column: 11, scope: !3782, inlinedAt: !3822)
!3840 = !DILocation(line: 200, column: 11, scope: !3783, inlinedAt: !3822)
!3841 = !DILocation(line: 202, column: 9, scope: !3782, inlinedAt: !3822)
!3842 = !DILocation(line: 203, column: 14, scope: !3783, inlinedAt: !3822)
!3843 = !DILocation(line: 203, column: 18, scope: !3783, inlinedAt: !3822)
!3844 = !DILocation(line: 203, column: 9, scope: !3783, inlinedAt: !3822)
!3845 = !DILocation(line: 53, column: 8, scope: !3725, inlinedAt: !3835)
!3846 = !DILocation(line: 57, column: 7, scope: !3729, inlinedAt: !3835)
!3847 = !DILocation(line: 58, column: 7, scope: !3729, inlinedAt: !3835)
!3848 = !DILocation(line: 61, column: 7, scope: !3716, inlinedAt: !3835)
!3849 = !DILocation(line: 62, column: 8, scope: !3733, inlinedAt: !3835)
!3850 = !DILocation(line: 62, column: 13, scope: !3733, inlinedAt: !3835)
!3851 = !DILocation(line: 62, column: 10, scope: !3733, inlinedAt: !3835)
!3852 = !DILocation(line: 63, column: 5, scope: !3733, inlinedAt: !3835)
!3853 = !DILocation(line: 0, scope: !3716, inlinedAt: !3835)
!3854 = !DILocation(line: 76, column: 3, scope: !3813)
!3855 = distinct !DISubprogram(name: "xzalloc", scope: !3677, file: !3677, line: 84, type: !3678, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3856)
!3856 = !{!3857}
!3857 = !DILocalVariable(name: "s", arg: 1, scope: !3855, file: !3677, line: 84, type: !79)
!3858 = !DILocation(line: 84, column: 17, scope: !3855)
!3859 = !DILocation(line: 39, column: 17, scope: !3676, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 86, column: 18, scope: !3855)
!3861 = !DILocation(line: 41, column: 13, scope: !3676, inlinedAt: !3860)
!3862 = !DILocation(line: 41, column: 9, scope: !3676, inlinedAt: !3860)
!3863 = !DILocation(line: 42, column: 8, scope: !3687, inlinedAt: !3860)
!3864 = !DILocation(line: 42, column: 15, scope: !3687, inlinedAt: !3860)
!3865 = !DILocation(line: 42, column: 10, scope: !3687, inlinedAt: !3860)
!3866 = !DILocation(line: 43, column: 5, scope: !3687, inlinedAt: !3860)
!3867 = !DILocation(line: 86, column: 10, scope: !3855)
!3868 = !DILocation(line: 86, column: 3, scope: !3855)
!3869 = distinct !DISubprogram(name: "xcalloc", scope: !3677, file: !3677, line: 93, type: !3663, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3870)
!3870 = !{!3871, !3872, !3873}
!3871 = !DILocalVariable(name: "n", arg: 1, scope: !3869, file: !3677, line: 93, type: !79)
!3872 = !DILocalVariable(name: "s", arg: 2, scope: !3869, file: !3677, line: 93, type: !79)
!3873 = !DILocalVariable(name: "p", scope: !3869, file: !3677, line: 95, type: !37)
!3874 = !DILocation(line: 93, column: 17, scope: !3869)
!3875 = !DILocation(line: 93, column: 27, scope: !3869)
!3876 = !DILocation(line: 100, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3869, file: !3677, line: 100, column: 7)
!3878 = !DILocation(line: 101, column: 7, scope: !3877)
!3879 = !DILocation(line: 101, column: 18, scope: !3877)
!3880 = !DILocation(line: 95, column: 9, scope: !3869)
!3881 = !DILocation(line: 101, column: 16, scope: !3877)
!3882 = !DILocation(line: 100, column: 7, scope: !3869)
!3883 = !DILocation(line: 102, column: 5, scope: !3877)
!3884 = !DILocation(line: 103, column: 3, scope: !3869)
!3885 = distinct !DISubprogram(name: "xmemdup", scope: !3677, file: !3677, line: 111, type: !3886, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3890)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!37, !3888, !79}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3890 = !{!3891, !3892}
!3891 = !DILocalVariable(name: "p", arg: 1, scope: !3885, file: !3677, line: 111, type: !3888)
!3892 = !DILocalVariable(name: "s", arg: 2, scope: !3885, file: !3677, line: 111, type: !79)
!3893 = !DILocation(line: 111, column: 22, scope: !3885)
!3894 = !DILocation(line: 111, column: 32, scope: !3885)
!3895 = !DILocation(line: 39, column: 17, scope: !3676, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 113, column: 18, scope: !3885)
!3897 = !DILocation(line: 41, column: 13, scope: !3676, inlinedAt: !3896)
!3898 = !DILocation(line: 41, column: 9, scope: !3676, inlinedAt: !3896)
!3899 = !DILocation(line: 42, column: 8, scope: !3687, inlinedAt: !3896)
!3900 = !DILocation(line: 42, column: 15, scope: !3687, inlinedAt: !3896)
!3901 = !DILocation(line: 42, column: 10, scope: !3687, inlinedAt: !3896)
!3902 = !DILocation(line: 43, column: 5, scope: !3687, inlinedAt: !3896)
!3903 = !DILocation(line: 113, column: 10, scope: !3885)
!3904 = !DILocation(line: 113, column: 3, scope: !3885)
!3905 = distinct !DISubprogram(name: "xstrdup", scope: !3677, file: !3677, line: 119, type: !2969, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3906)
!3906 = !{!3907}
!3907 = !DILocalVariable(name: "string", arg: 1, scope: !3905, file: !3677, line: 119, type: !65)
!3908 = !DILocation(line: 119, column: 22, scope: !3905)
!3909 = !DILocation(line: 121, column: 27, scope: !3905)
!3910 = !DILocation(line: 121, column: 43, scope: !3905)
!3911 = !DILocation(line: 111, column: 22, scope: !3885, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 121, column: 10, scope: !3905)
!3913 = !DILocation(line: 111, column: 32, scope: !3885, inlinedAt: !3912)
!3914 = !DILocation(line: 39, column: 17, scope: !3676, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 113, column: 18, scope: !3885, inlinedAt: !3912)
!3916 = !DILocation(line: 41, column: 13, scope: !3676, inlinedAt: !3915)
!3917 = !DILocation(line: 41, column: 9, scope: !3676, inlinedAt: !3915)
!3918 = !DILocation(line: 42, column: 8, scope: !3687, inlinedAt: !3915)
!3919 = !DILocation(line: 42, column: 15, scope: !3687, inlinedAt: !3915)
!3920 = !DILocation(line: 42, column: 10, scope: !3687, inlinedAt: !3915)
!3921 = !DILocation(line: 43, column: 5, scope: !3687, inlinedAt: !3915)
!3922 = !DILocation(line: 113, column: 10, scope: !3885, inlinedAt: !3912)
!3923 = !DILocation(line: 121, column: 3, scope: !3905)
!3924 = distinct !DISubprogram(name: "xalloc_die", scope: !3925, file: !3925, line: 32, type: !1220, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !278, retainedNodes: !94)
!3925 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3926 = !DILocation(line: 34, column: 10, scope: !3924)
!3927 = !DILocation(line: 34, column: 33, scope: !3924)
!3928 = !DILocation(line: 34, column: 3, scope: !3924)
!3929 = !DILocation(line: 40, column: 3, scope: !3924)
!3930 = distinct !DISubprogram(name: "xmemcoll", scope: !3931, file: !3931, line: 54, type: !3932, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !3934)
!3931 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!68, !35, !79, !35, !79}
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940}
!3935 = !DILocalVariable(name: "s1", arg: 1, scope: !3930, file: !3931, line: 54, type: !35)
!3936 = !DILocalVariable(name: "s1len", arg: 2, scope: !3930, file: !3931, line: 54, type: !79)
!3937 = !DILocalVariable(name: "s2", arg: 3, scope: !3930, file: !3931, line: 54, type: !35)
!3938 = !DILocalVariable(name: "s2len", arg: 4, scope: !3930, file: !3931, line: 54, type: !79)
!3939 = !DILocalVariable(name: "diff", scope: !3930, file: !3931, line: 56, type: !68)
!3940 = !DILocalVariable(name: "collation_errno", scope: !3930, file: !3931, line: 57, type: !68)
!3941 = !DILocation(line: 54, column: 17, scope: !3930)
!3942 = !DILocation(line: 54, column: 28, scope: !3930)
!3943 = !DILocation(line: 54, column: 41, scope: !3930)
!3944 = !DILocation(line: 54, column: 52, scope: !3930)
!3945 = !DILocation(line: 56, column: 14, scope: !3930)
!3946 = !DILocation(line: 56, column: 7, scope: !3930)
!3947 = !DILocation(line: 57, column: 25, scope: !3930)
!3948 = !DILocation(line: 57, column: 7, scope: !3930)
!3949 = !DILocation(line: 58, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3930, file: !3931, line: 58, column: 7)
!3951 = !DILocation(line: 58, column: 7, scope: !3930)
!3952 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !3953, file: !3931, line: 35, type: !68)
!3953 = distinct !DISubprogram(name: "collate_error", scope: !3931, file: !3931, line: 35, type: !3954, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !68, !65, !79, !65, !79}
!3956 = !{!3952, !3957, !3958, !3959, !3960}
!3957 = !DILocalVariable(name: "s1", arg: 2, scope: !3953, file: !3931, line: 36, type: !65)
!3958 = !DILocalVariable(name: "s1len", arg: 3, scope: !3953, file: !3931, line: 36, type: !79)
!3959 = !DILocalVariable(name: "s2", arg: 4, scope: !3953, file: !3931, line: 37, type: !65)
!3960 = !DILocalVariable(name: "s2len", arg: 5, scope: !3953, file: !3931, line: 37, type: !79)
!3961 = !DILocation(line: 35, column: 20, scope: !3953, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 59, column: 5, scope: !3950)
!3963 = !DILocation(line: 36, column: 28, scope: !3953, inlinedAt: !3962)
!3964 = !DILocation(line: 36, column: 39, scope: !3953, inlinedAt: !3962)
!3965 = !DILocation(line: 37, column: 28, scope: !3953, inlinedAt: !3962)
!3966 = !DILocation(line: 37, column: 39, scope: !3953, inlinedAt: !3962)
!3967 = !DILocation(line: 39, column: 30, scope: !3953, inlinedAt: !3962)
!3968 = !DILocation(line: 39, column: 3, scope: !3953, inlinedAt: !3962)
!3969 = !DILocation(line: 40, column: 16, scope: !3953, inlinedAt: !3962)
!3970 = !DILocation(line: 40, column: 3, scope: !3953, inlinedAt: !3962)
!3971 = !DILocation(line: 41, column: 10, scope: !3953, inlinedAt: !3962)
!3972 = !DILocation(line: 42, column: 10, scope: !3953, inlinedAt: !3962)
!3973 = !DILocation(line: 43, column: 10, scope: !3953, inlinedAt: !3962)
!3974 = !DILocation(line: 44, column: 10, scope: !3953, inlinedAt: !3962)
!3975 = !DILocation(line: 41, column: 3, scope: !3953, inlinedAt: !3962)
!3976 = !DILocation(line: 59, column: 5, scope: !3950)
!3977 = !DILocation(line: 60, column: 3, scope: !3930)
!3978 = distinct !DISubprogram(name: "xmemcoll0", scope: !3931, file: !3931, line: 69, type: !1677, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985}
!3980 = !DILocalVariable(name: "s1", arg: 1, scope: !3978, file: !3931, line: 69, type: !65)
!3981 = !DILocalVariable(name: "s1size", arg: 2, scope: !3978, file: !3931, line: 69, type: !79)
!3982 = !DILocalVariable(name: "s2", arg: 3, scope: !3978, file: !3931, line: 69, type: !65)
!3983 = !DILocalVariable(name: "s2size", arg: 4, scope: !3978, file: !3931, line: 69, type: !79)
!3984 = !DILocalVariable(name: "diff", scope: !3978, file: !3931, line: 71, type: !68)
!3985 = !DILocalVariable(name: "collation_errno", scope: !3978, file: !3931, line: 72, type: !68)
!3986 = !DILocation(line: 69, column: 24, scope: !3978)
!3987 = !DILocation(line: 69, column: 35, scope: !3978)
!3988 = !DILocation(line: 69, column: 55, scope: !3978)
!3989 = !DILocation(line: 69, column: 66, scope: !3978)
!3990 = !DILocation(line: 71, column: 14, scope: !3978)
!3991 = !DILocation(line: 71, column: 7, scope: !3978)
!3992 = !DILocation(line: 72, column: 25, scope: !3978)
!3993 = !DILocation(line: 72, column: 7, scope: !3978)
!3994 = !DILocation(line: 73, column: 7, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3978, file: !3931, line: 73, column: 7)
!3996 = !DILocation(line: 73, column: 7, scope: !3978)
!3997 = !DILocation(line: 74, column: 48, scope: !3995)
!3998 = !DILocation(line: 74, column: 64, scope: !3995)
!3999 = !DILocation(line: 35, column: 20, scope: !3953, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 74, column: 5, scope: !3995)
!4001 = !DILocation(line: 36, column: 28, scope: !3953, inlinedAt: !4000)
!4002 = !DILocation(line: 36, column: 39, scope: !3953, inlinedAt: !4000)
!4003 = !DILocation(line: 37, column: 28, scope: !3953, inlinedAt: !4000)
!4004 = !DILocation(line: 37, column: 39, scope: !3953, inlinedAt: !4000)
!4005 = !DILocation(line: 39, column: 30, scope: !3953, inlinedAt: !4000)
!4006 = !DILocation(line: 39, column: 3, scope: !3953, inlinedAt: !4000)
!4007 = !DILocation(line: 40, column: 16, scope: !3953, inlinedAt: !4000)
!4008 = !DILocation(line: 40, column: 3, scope: !3953, inlinedAt: !4000)
!4009 = !DILocation(line: 41, column: 10, scope: !3953, inlinedAt: !4000)
!4010 = !DILocation(line: 42, column: 10, scope: !3953, inlinedAt: !4000)
!4011 = !DILocation(line: 43, column: 10, scope: !3953, inlinedAt: !4000)
!4012 = !DILocation(line: 44, column: 10, scope: !3953, inlinedAt: !4000)
!4013 = !DILocation(line: 41, column: 3, scope: !3953, inlinedAt: !4000)
!4014 = !DILocation(line: 74, column: 5, scope: !3995)
!4015 = !DILocation(line: 75, column: 3, scope: !3978)
!4016 = distinct !DISubprogram(name: "rpl_calloc", scope: !4017, file: !4017, line: 42, type: !3663, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !4018)
!4017 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4018 = !{!4019, !4020, !4021, !4022}
!4019 = !DILocalVariable(name: "n", arg: 1, scope: !4016, file: !4017, line: 42, type: !79)
!4020 = !DILocalVariable(name: "s", arg: 2, scope: !4016, file: !4017, line: 42, type: !79)
!4021 = !DILocalVariable(name: "result", scope: !4016, file: !4017, line: 44, type: !37)
!4022 = !DILocalVariable(name: "bytes", scope: !4023, file: !4017, line: 56, type: !79)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !4017, line: 53, column: 5)
!4024 = distinct !DILexicalBlock(scope: !4016, file: !4017, line: 47, column: 7)
!4025 = !DILocation(line: 42, column: 20, scope: !4016)
!4026 = !DILocation(line: 42, column: 30, scope: !4016)
!4027 = !DILocation(line: 47, column: 9, scope: !4024)
!4028 = !DILocation(line: 47, column: 19, scope: !4024)
!4029 = !DILocation(line: 47, column: 14, scope: !4024)
!4030 = !DILocation(line: 56, column: 24, scope: !4023)
!4031 = !DILocation(line: 56, column: 14, scope: !4023)
!4032 = !DILocation(line: 57, column: 17, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4023, file: !4017, line: 57, column: 11)
!4034 = !DILocation(line: 57, column: 21, scope: !4033)
!4035 = !DILocation(line: 57, column: 11, scope: !4023)
!4036 = !DILocation(line: 59, column: 11, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4033, file: !4017, line: 58, column: 9)
!4038 = !DILocation(line: 59, column: 17, scope: !4037)
!4039 = !DILocation(line: 65, column: 12, scope: !4016)
!4040 = !DILocation(line: 44, column: 9, scope: !4016)
!4041 = !DILocation(line: 72, column: 3, scope: !4016)
!4042 = !DILocation(line: 0, scope: !4037)
!4043 = !DILocation(line: 73, column: 1, scope: !4016)
!4044 = distinct !DISubprogram(name: "rpl_fclose", scope: !4045, file: !4045, line: 58, type: !4046, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !285, retainedNodes: !4082)
!4045 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!68, !4048}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4050, file: !815, line: 51, baseType: !68, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4050, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4050, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4050, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4050, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4050, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4050, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4050, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4050, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4050, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4050, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4050, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4050, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4050, file: !815, line: 70, baseType: !4066, size: 64, offset: 832)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4050, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4050, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4050, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4050, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4050, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4050, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4050, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4050, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4050, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4050, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4050, file: !815, line: 93, baseType: !4066, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4050, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4050, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4050, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4050, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!4082 = !{!4083, !4084, !4085, !4086}
!4083 = !DILocalVariable(name: "fp", arg: 1, scope: !4044, file: !4045, line: 58, type: !4048)
!4084 = !DILocalVariable(name: "saved_errno", scope: !4044, file: !4045, line: 60, type: !68)
!4085 = !DILocalVariable(name: "fd", scope: !4044, file: !4045, line: 61, type: !68)
!4086 = !DILocalVariable(name: "result", scope: !4044, file: !4045, line: 62, type: !68)
!4087 = !DILocation(line: 58, column: 19, scope: !4044)
!4088 = !DILocation(line: 60, column: 7, scope: !4044)
!4089 = !DILocation(line: 62, column: 7, scope: !4044)
!4090 = !DILocation(line: 65, column: 8, scope: !4044)
!4091 = !DILocation(line: 61, column: 7, scope: !4044)
!4092 = !DILocation(line: 66, column: 10, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4044, file: !4045, line: 66, column: 7)
!4094 = !DILocation(line: 66, column: 7, scope: !4044)
!4095 = !DILocation(line: 67, column: 12, scope: !4093)
!4096 = !DILocation(line: 67, column: 5, scope: !4093)
!4097 = !DILocation(line: 72, column: 9, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4044, file: !4045, line: 72, column: 7)
!4099 = !DILocation(line: 72, column: 23, scope: !4098)
!4100 = !DILocation(line: 72, column: 33, scope: !4098)
!4101 = !DILocation(line: 72, column: 26, scope: !4098)
!4102 = !DILocation(line: 72, column: 59, scope: !4098)
!4103 = !DILocation(line: 73, column: 7, scope: !4098)
!4104 = !DILocation(line: 73, column: 10, scope: !4098)
!4105 = !DILocation(line: 72, column: 7, scope: !4044)
!4106 = !DILocation(line: 100, column: 12, scope: !4044)
!4107 = !DILocation(line: 105, column: 7, scope: !4044)
!4108 = !DILocation(line: 74, column: 19, scope: !4098)
!4109 = !DILocation(line: 105, column: 19, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4044, file: !4045, line: 105, column: 7)
!4111 = !DILocation(line: 107, column: 13, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4110, file: !4045, line: 106, column: 5)
!4113 = !DILocation(line: 109, column: 5, scope: !4112)
!4114 = !DILocation(line: 0, scope: !4044)
!4115 = !DILocation(line: 112, column: 1, scope: !4044)
!4116 = !DILocation(line: 276, column: 16, scope: !196)
!4117 = !DILocation(line: 276, column: 24, scope: !196)
!4118 = !DILocation(line: 278, column: 3, scope: !196)
!4119 = !DILocation(line: 278, column: 11, scope: !196)
!4120 = !DILocation(line: 279, column: 7, scope: !196)
!4121 = !DILocation(line: 280, column: 3, scope: !196)
!4122 = !DILocation(line: 281, column: 3, scope: !196)
!4123 = !DILocation(line: 0, scope: !230)
!4124 = !DILocation(line: 326, column: 22, scope: !221)
!4125 = !DILocation(line: 326, column: 13, scope: !221)
!4126 = !DILocation(line: 340, column: 18, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !221, file: !197, line: 340, column: 13)
!4128 = !DILocation(line: 340, column: 15, scope: !4127)
!4129 = !DILocation(line: 340, column: 13, scope: !221)
!4130 = !DILocation(line: 342, column: 22, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !197, line: 341, column: 11)
!4132 = !DILocation(line: 343, column: 19, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4131, file: !197, line: 343, column: 17)
!4134 = !DILocation(line: 343, column: 29, scope: !4133)
!4135 = !DILocation(line: 343, column: 32, scope: !4133)
!4136 = !DILocation(line: 343, column: 38, scope: !4133)
!4137 = !DILocation(line: 343, column: 17, scope: !4131)
!4138 = !DILocation(line: 345, column: 36, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4133, file: !197, line: 344, column: 15)
!4140 = !DILocation(line: 361, column: 25, scope: !225)
!4141 = !DILocation(line: 353, column: 26, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4133, file: !197, line: 352, column: 15)
!4143 = !DILocation(line: 354, column: 28, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4142, file: !197, line: 354, column: 21)
!4145 = !DILocation(line: 354, column: 21, scope: !4142)
!4146 = !DILocation(line: 356, column: 36, scope: !4142)
!4147 = !DILocation(line: 360, column: 20, scope: !4127)
!4148 = !DILocation(line: 361, column: 28, scope: !225)
!4149 = !DILocation(line: 0, scope: !4127)
!4150 = !DILocation(line: 361, column: 15, scope: !225)
!4151 = !DILocation(line: 363, column: 25, scope: !224)
!4152 = !DILocation(line: 363, column: 17, scope: !224)
!4153 = !DILocation(line: 364, column: 23, scope: !228)
!4154 = !DILocation(line: 364, column: 27, scope: !228)
!4155 = !DILocation(line: 364, column: 60, scope: !228)
!4156 = !DILocation(line: 364, column: 30, scope: !228)
!4157 = !DILocation(line: 364, column: 74, scope: !228)
!4158 = !DILocation(line: 364, column: 17, scope: !224)
!4159 = !DILocation(line: 366, column: 35, scope: !227)
!4160 = !DILocation(line: 366, column: 21, scope: !227)
!4161 = !DILocation(line: 367, column: 17, scope: !227)
!4162 = !DILocation(line: 368, column: 23, scope: !227)
!4163 = !DILocation(line: 370, column: 15, scope: !227)
!4164 = !DILocation(line: 408, column: 19, scope: !230)
!4165 = !DILocation(line: 408, column: 15, scope: !230)
!4166 = !DILocation(line: 409, column: 18, scope: !230)
!4167 = !DILocation(line: 416, column: 3, scope: !196)
!4168 = !DILocation(line: 418, column: 1, scope: !196)
!4169 = !DILocation(line: 417, column: 3, scope: !196)
!4170 = distinct !DISubprogram(name: "rpl_fflush", scope: !4171, file: !4171, line: 129, type: !4172, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !287, retainedNodes: !4208)
!4171 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!68, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !4176)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4176, file: !815, line: 51, baseType: !68, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4176, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4176, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4176, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4176, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4176, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4176, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4176, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4176, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4176, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4176, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4176, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4176, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4176, file: !815, line: 70, baseType: !4192, size: 64, offset: 832)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4176, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4176, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4176, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4176, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4176, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4176, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4176, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4176, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4176, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4176, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4176, file: !815, line: 93, baseType: !4192, size: 64, offset: 1344)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4176, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4176, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4176, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4176, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "stream", arg: 1, scope: !4170, file: !4171, line: 129, type: !4174)
!4210 = !DILocation(line: 129, column: 19, scope: !4170)
!4211 = !DILocation(line: 150, column: 14, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4170, file: !4171, line: 150, column: 7)
!4213 = !DILocation(line: 150, column: 22, scope: !4212)
!4214 = !DILocation(line: 150, column: 27, scope: !4212)
!4215 = !DILocation(line: 150, column: 7, scope: !4170)
!4216 = !DILocation(line: 151, column: 12, scope: !4212)
!4217 = !DILocation(line: 151, column: 5, scope: !4212)
!4218 = !DILocalVariable(name: "fp", arg: 1, scope: !4219, file: !4171, line: 41, type: !4174)
!4219 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4171, file: !4171, line: 41, type: !4220, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !287, retainedNodes: !4222)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{null, !4174}
!4222 = !{!4218}
!4223 = !DILocation(line: 41, column: 48, scope: !4219, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 156, column: 3, scope: !4170)
!4225 = !DILocation(line: 43, column: 11, scope: !4226, inlinedAt: !4224)
!4226 = distinct !DILexicalBlock(scope: !4219, file: !4171, line: 43, column: 7)
!4227 = !DILocation(line: 43, column: 18, scope: !4226, inlinedAt: !4224)
!4228 = !DILocation(line: 43, column: 7, scope: !4219, inlinedAt: !4224)
!4229 = !DILocation(line: 45, column: 5, scope: !4226, inlinedAt: !4224)
!4230 = !DILocation(line: 158, column: 10, scope: !4170)
!4231 = !DILocation(line: 158, column: 3, scope: !4170)
!4232 = !DILocation(line: 0, scope: !4170)
!4233 = !DILocation(line: 232, column: 1, scope: !4170)
!4234 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4235, file: !4235, line: 28, type: !4236, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !4272)
!4235 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!68, !4238, !1258, !68}
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4240, file: !815, line: 51, baseType: !68, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4240, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4240, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4240, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4240, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4240, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4240, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4240, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4240, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4240, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4240, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4240, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4240, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4240, file: !815, line: 70, baseType: !4256, size: 64, offset: 832)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4240, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4240, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4240, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4240, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4240, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4240, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4240, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4240, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4240, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4240, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4240, file: !815, line: 93, baseType: !4256, size: 64, offset: 1344)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4240, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4240, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4240, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4240, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!4272 = !{!4273, !4274, !4275, !4276}
!4273 = !DILocalVariable(name: "fp", arg: 1, scope: !4234, file: !4235, line: 28, type: !4238)
!4274 = !DILocalVariable(name: "offset", arg: 2, scope: !4234, file: !4235, line: 28, type: !1258)
!4275 = !DILocalVariable(name: "whence", arg: 3, scope: !4234, file: !4235, line: 28, type: !68)
!4276 = !DILocalVariable(name: "pos", scope: !4277, file: !4235, line: 117, type: !1258)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !4235, line: 113, column: 5)
!4278 = distinct !DILexicalBlock(scope: !4234, file: !4235, line: 52, column: 7)
!4279 = !DILocation(line: 28, column: 15, scope: !4234)
!4280 = !DILocation(line: 28, column: 25, scope: !4234)
!4281 = !DILocation(line: 28, column: 37, scope: !4234)
!4282 = !DILocation(line: 52, column: 11, scope: !4278)
!4283 = !DILocation(line: 52, column: 31, scope: !4278)
!4284 = !DILocation(line: 52, column: 24, scope: !4278)
!4285 = !DILocation(line: 53, column: 7, scope: !4278)
!4286 = !DILocation(line: 53, column: 14, scope: !4278)
!4287 = !{!1017, !727, i64 40}
!4288 = !DILocation(line: 53, column: 35, scope: !4278)
!4289 = !{!1017, !727, i64 32}
!4290 = !DILocation(line: 53, column: 28, scope: !4278)
!4291 = !DILocation(line: 54, column: 7, scope: !4278)
!4292 = !DILocation(line: 54, column: 14, scope: !4278)
!4293 = !{!1017, !727, i64 72}
!4294 = !DILocation(line: 54, column: 28, scope: !4278)
!4295 = !DILocation(line: 52, column: 7, scope: !4234)
!4296 = !DILocation(line: 117, column: 26, scope: !4277)
!4297 = !DILocation(line: 117, column: 19, scope: !4277)
!4298 = !DILocation(line: 117, column: 13, scope: !4277)
!4299 = !DILocation(line: 118, column: 15, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4277, file: !4235, line: 118, column: 11)
!4301 = !DILocation(line: 118, column: 11, scope: !4277)
!4302 = !DILocation(line: 129, column: 11, scope: !4277)
!4303 = !DILocation(line: 129, column: 18, scope: !4277)
!4304 = !DILocation(line: 130, column: 11, scope: !4277)
!4305 = !DILocation(line: 130, column: 19, scope: !4277)
!4306 = !{!1017, !923, i64 144}
!4307 = !DILocation(line: 161, column: 7, scope: !4277)
!4308 = !DILocation(line: 163, column: 10, scope: !4234)
!4309 = !DILocation(line: 163, column: 3, scope: !4234)
!4310 = !DILocation(line: 0, scope: !4234)
!4311 = !DILocation(line: 164, column: 1, scope: !4234)
!4312 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4313, file: !4313, line: 385, type: !4314, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !4328)
!4313 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!79, !4316, !65, !79, !4317}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1930, line: 6, baseType: !4319)
!4319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1932, line: 21, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1932, line: 13, size: 64, elements: !4321)
!4321 = !{!4322, !4323}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4320, file: !1932, line: 15, baseType: !68, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4320, file: !1932, line: 20, baseType: !4324, size: 32, offset: 32)
!4324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !1932, line: 16, size: 32, elements: !4325)
!4325 = !{!4326, !4327}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4324, file: !1932, line: 18, baseType: !6, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4324, file: !1932, line: 19, baseType: !1941, size: 32)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4329 = !DILocalVariable(name: "pwc", arg: 1, scope: !4312, file: !4313, line: 385, type: !4316)
!4330 = !DILocalVariable(name: "s", arg: 2, scope: !4312, file: !4313, line: 385, type: !65)
!4331 = !DILocalVariable(name: "n", arg: 3, scope: !4312, file: !4313, line: 385, type: !79)
!4332 = !DILocalVariable(name: "ps", arg: 4, scope: !4312, file: !4313, line: 385, type: !4317)
!4333 = !DILocalVariable(name: "ret", scope: !4312, file: !4313, line: 387, type: !79)
!4334 = !DILocalVariable(name: "wc", scope: !4312, file: !4313, line: 388, type: !1945)
!4335 = !DILocalVariable(name: "uc", scope: !4336, file: !4313, line: 449, type: !76)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !4313, line: 448, column: 5)
!4337 = distinct !DILexicalBlock(scope: !4312, file: !4313, line: 447, column: 7)
!4338 = !DILocation(line: 385, column: 23, scope: !4312)
!4339 = !DILocation(line: 385, column: 40, scope: !4312)
!4340 = !DILocation(line: 385, column: 50, scope: !4312)
!4341 = !DILocation(line: 385, column: 64, scope: !4312)
!4342 = !DILocation(line: 388, column: 3, scope: !4312)
!4343 = !DILocation(line: 404, column: 9, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4312, file: !4313, line: 404, column: 7)
!4345 = !DILocation(line: 404, column: 7, scope: !4312)
!4346 = !DILocation(line: 439, column: 9, scope: !4312)
!4347 = !DILocation(line: 387, column: 10, scope: !4312)
!4348 = !DILocation(line: 447, column: 19, scope: !4337)
!4349 = !DILocation(line: 447, column: 31, scope: !4337)
!4350 = !DILocation(line: 447, column: 26, scope: !4337)
!4351 = !DILocation(line: 447, column: 41, scope: !4337)
!4352 = !DILocation(line: 447, column: 7, scope: !4312)
!4353 = !DILocation(line: 449, column: 26, scope: !4336)
!4354 = !DILocation(line: 449, column: 21, scope: !4336)
!4355 = !DILocation(line: 450, column: 14, scope: !4336)
!4356 = !DILocation(line: 450, column: 12, scope: !4336)
!4357 = !DILocation(line: 0, scope: !4336)
!4358 = !DILocation(line: 456, column: 1, scope: !4312)
!4359 = distinct !DISubprogram(name: "close_stream", scope: !4360, file: !4360, line: 56, type: !4361, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !4397)
!4360 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!68, !4363}
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !813, line: 7, baseType: !4365)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !815, line: 49, size: 1728, elements: !4366)
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4365, file: !815, line: 51, baseType: !68, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4365, file: !815, line: 54, baseType: !35, size: 64, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4365, file: !815, line: 55, baseType: !35, size: 64, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4365, file: !815, line: 56, baseType: !35, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4365, file: !815, line: 57, baseType: !35, size: 64, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4365, file: !815, line: 58, baseType: !35, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4365, file: !815, line: 59, baseType: !35, size: 64, offset: 384)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4365, file: !815, line: 60, baseType: !35, size: 64, offset: 448)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4365, file: !815, line: 61, baseType: !35, size: 64, offset: 512)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4365, file: !815, line: 64, baseType: !35, size: 64, offset: 576)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4365, file: !815, line: 65, baseType: !35, size: 64, offset: 640)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4365, file: !815, line: 66, baseType: !35, size: 64, offset: 704)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4365, file: !815, line: 68, baseType: !830, size: 64, offset: 768)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4365, file: !815, line: 70, baseType: !4381, size: 64, offset: 832)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4365, file: !815, line: 72, baseType: !68, size: 32, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4365, file: !815, line: 73, baseType: !68, size: 32, offset: 928)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4365, file: !815, line: 74, baseType: !837, size: 64, offset: 960)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4365, file: !815, line: 77, baseType: !144, size: 16, offset: 1024)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4365, file: !815, line: 78, baseType: !841, size: 8, offset: 1040)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4365, file: !815, line: 79, baseType: !843, size: 8, offset: 1048)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4365, file: !815, line: 81, baseType: !845, size: 64, offset: 1088)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4365, file: !815, line: 89, baseType: !848, size: 64, offset: 1152)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4365, file: !815, line: 91, baseType: !850, size: 64, offset: 1216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4365, file: !815, line: 92, baseType: !853, size: 64, offset: 1280)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4365, file: !815, line: 93, baseType: !4381, size: 64, offset: 1344)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4365, file: !815, line: 94, baseType: !37, size: 64, offset: 1408)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4365, file: !815, line: 95, baseType: !79, size: 64, offset: 1472)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4365, file: !815, line: 96, baseType: !68, size: 32, offset: 1536)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4365, file: !815, line: 98, baseType: !860, size: 160, offset: 1568)
!4397 = !{!4398, !4399, !4401, !4402}
!4398 = !DILocalVariable(name: "stream", arg: 1, scope: !4359, file: !4360, line: 56, type: !4363)
!4399 = !DILocalVariable(name: "some_pending", scope: !4359, file: !4360, line: 58, type: !4400)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!4401 = !DILocalVariable(name: "prev_fail", scope: !4359, file: !4360, line: 59, type: !4400)
!4402 = !DILocalVariable(name: "fclose_fail", scope: !4359, file: !4360, line: 60, type: !4400)
!4403 = !DILocation(line: 56, column: 21, scope: !4359)
!4404 = !DILocation(line: 58, column: 30, scope: !4359)
!4405 = !DILocalVariable(name: "__stream", arg: 1, scope: !4406, file: !1008, line: 135, type: !4363)
!4406 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1008, file: !1008, line: 135, type: !4361, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !4407)
!4407 = !{!4405}
!4408 = !DILocation(line: 135, column: 1, scope: !4406, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 59, column: 27, scope: !4359)
!4410 = !DILocation(line: 137, column: 10, scope: !4406, inlinedAt: !4409)
!4411 = !DILocation(line: 59, column: 43, scope: !4359)
!4412 = !DILocation(line: 60, column: 29, scope: !4359)
!4413 = !DILocation(line: 60, column: 45, scope: !4359)
!4414 = !DILocation(line: 70, column: 17, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4359, file: !4360, line: 70, column: 7)
!4416 = !DILocation(line: 58, column: 50, scope: !4359)
!4417 = !DILocation(line: 70, column: 33, scope: !4415)
!4418 = !DILocation(line: 70, column: 53, scope: !4415)
!4419 = !DILocation(line: 70, column: 59, scope: !4415)
!4420 = !DILocation(line: 70, column: 7, scope: !4359)
!4421 = !DILocation(line: 72, column: 11, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4415, file: !4360, line: 71, column: 5)
!4423 = !DILocation(line: 73, column: 9, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4422, file: !4360, line: 72, column: 11)
!4425 = !DILocation(line: 73, column: 15, scope: !4424)
!4426 = !DILocation(line: 0, scope: !4359)
!4427 = !DILocation(line: 78, column: 1, scope: !4359)
!4428 = distinct !DISubprogram(name: "locale_charset", scope: !4429, file: !4429, line: 687, type: !4430, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !4432)
!4429 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!65}
!4432 = !{!4433}
!4433 = !DILocalVariable(name: "codeset", scope: !4428, file: !4429, line: 689, type: !65)
!4434 = !DILocation(line: 696, column: 13, scope: !4428)
!4435 = !DILocation(line: 689, column: 15, scope: !4428)
!4436 = !DILocation(line: 754, column: 15, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4428, file: !4429, line: 754, column: 7)
!4438 = !DILocation(line: 754, column: 7, scope: !4428)
!4439 = !DILocation(line: 907, column: 13, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !4429, line: 907, column: 13)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !4429, line: 897, column: 7)
!4442 = distinct !DILexicalBlock(scope: !4428, file: !4429, line: 856, column: 3)
!4443 = !DILocation(line: 907, column: 24, scope: !4440)
!4444 = !DILocation(line: 907, column: 13, scope: !4441)
!4445 = !DILocation(line: 995, column: 3, scope: !4428)
!4446 = distinct !DISubprogram(name: "memcoll", scope: !4447, file: !4447, line: 66, type: !3932, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !685, retainedNodes: !4448)
!4447 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454, !4457}
!4449 = !DILocalVariable(name: "s1", arg: 1, scope: !4446, file: !4447, line: 66, type: !35)
!4450 = !DILocalVariable(name: "s1len", arg: 2, scope: !4446, file: !4447, line: 66, type: !79)
!4451 = !DILocalVariable(name: "s2", arg: 3, scope: !4446, file: !4447, line: 66, type: !35)
!4452 = !DILocalVariable(name: "s2len", arg: 4, scope: !4446, file: !4447, line: 66, type: !79)
!4453 = !DILocalVariable(name: "diff", scope: !4446, file: !4447, line: 68, type: !68)
!4454 = !DILocalVariable(name: "n1", scope: !4455, file: !4447, line: 81, type: !36)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !4447, line: 80, column: 5)
!4456 = distinct !DILexicalBlock(scope: !4446, file: !4447, line: 74, column: 7)
!4457 = !DILocalVariable(name: "n2", scope: !4455, file: !4447, line: 82, type: !36)
!4458 = !DILocation(line: 66, column: 16, scope: !4446)
!4459 = !DILocation(line: 66, column: 27, scope: !4446)
!4460 = !DILocation(line: 66, column: 40, scope: !4446)
!4461 = !DILocation(line: 66, column: 51, scope: !4446)
!4462 = !DILocation(line: 74, column: 13, scope: !4456)
!4463 = !DILocation(line: 74, column: 22, scope: !4456)
!4464 = !DILocation(line: 74, column: 25, scope: !4456)
!4465 = !DILocation(line: 74, column: 48, scope: !4456)
!4466 = !DILocation(line: 74, column: 7, scope: !4446)
!4467 = !DILocation(line: 76, column: 7, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4456, file: !4447, line: 75, column: 5)
!4469 = !DILocation(line: 76, column: 13, scope: !4468)
!4470 = !DILocation(line: 68, column: 7, scope: !4446)
!4471 = !DILocation(line: 78, column: 5, scope: !4468)
!4472 = !DILocation(line: 81, column: 17, scope: !4455)
!4473 = !DILocation(line: 81, column: 12, scope: !4455)
!4474 = !DILocation(line: 82, column: 17, scope: !4455)
!4475 = !DILocation(line: 82, column: 12, scope: !4455)
!4476 = !DILocation(line: 84, column: 17, scope: !4455)
!4477 = !DILocation(line: 85, column: 17, scope: !4455)
!4478 = !DILocation(line: 87, column: 38, scope: !4455)
!4479 = !DILocation(line: 87, column: 53, scope: !4455)
!4480 = !DILocalVariable(name: "s1", arg: 1, scope: !4481, file: !4447, line: 35, type: !65)
!4481 = distinct !DISubprogram(name: "strcoll_loop", scope: !4447, file: !4447, line: 35, type: !1677, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !685, retainedNodes: !4482)
!4482 = !{!4480, !4483, !4484, !4485, !4486, !4487, !4489}
!4483 = !DILocalVariable(name: "s1size", arg: 2, scope: !4481, file: !4447, line: 35, type: !79)
!4484 = !DILocalVariable(name: "s2", arg: 3, scope: !4481, file: !4447, line: 35, type: !65)
!4485 = !DILocalVariable(name: "s2size", arg: 4, scope: !4481, file: !4447, line: 35, type: !79)
!4486 = !DILocalVariable(name: "diff", scope: !4481, file: !4447, line: 37, type: !68)
!4487 = !DILocalVariable(name: "size1", scope: !4488, file: !4447, line: 44, type: !79)
!4488 = distinct !DILexicalBlock(scope: !4481, file: !4447, line: 40, column: 5)
!4489 = !DILocalVariable(name: "size2", scope: !4488, file: !4447, line: 45, type: !79)
!4490 = !DILocation(line: 35, column: 27, scope: !4481, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 87, column: 14, scope: !4455)
!4492 = !DILocation(line: 35, column: 38, scope: !4481, inlinedAt: !4491)
!4493 = !DILocation(line: 35, column: 58, scope: !4481, inlinedAt: !4491)
!4494 = !DILocation(line: 35, column: 69, scope: !4481, inlinedAt: !4491)
!4495 = !DILocation(line: 39, column: 13, scope: !4481, inlinedAt: !4491)
!4496 = !DILocation(line: 39, column: 3, scope: !4481, inlinedAt: !4491)
!4497 = !DILocation(line: 39, column: 19, scope: !4481, inlinedAt: !4491)
!4498 = !DILocation(line: 39, column: 32, scope: !4481, inlinedAt: !4491)
!4499 = !DILocation(line: 37, column: 7, scope: !4481, inlinedAt: !4491)
!4500 = !DILocation(line: 39, column: 30, scope: !4481, inlinedAt: !4491)
!4501 = !DILocation(line: 44, column: 22, scope: !4488, inlinedAt: !4491)
!4502 = !DILocation(line: 44, column: 34, scope: !4488, inlinedAt: !4491)
!4503 = !DILocation(line: 44, column: 14, scope: !4488, inlinedAt: !4491)
!4504 = !DILocation(line: 45, column: 22, scope: !4488, inlinedAt: !4491)
!4505 = !DILocation(line: 45, column: 34, scope: !4488, inlinedAt: !4491)
!4506 = !DILocation(line: 45, column: 14, scope: !4488, inlinedAt: !4491)
!4507 = !DILocation(line: 48, column: 14, scope: !4488, inlinedAt: !4491)
!4508 = !DILocation(line: 49, column: 14, scope: !4488, inlinedAt: !4491)
!4509 = !DILocation(line: 51, column: 18, scope: !4510, inlinedAt: !4491)
!4510 = distinct !DILexicalBlock(scope: !4488, file: !4447, line: 51, column: 11)
!4511 = !DILocation(line: 51, column: 11, scope: !4488, inlinedAt: !4491)
!4512 = !DILocation(line: 52, column: 26, scope: !4510, inlinedAt: !4491)
!4513 = !DILocation(line: 52, column: 16, scope: !4510, inlinedAt: !4491)
!4514 = !DILocation(line: 47, column: 10, scope: !4488, inlinedAt: !4491)
!4515 = !DILocation(line: 46, column: 10, scope: !4488, inlinedAt: !4491)
!4516 = !DILocation(line: 53, column: 18, scope: !4517, inlinedAt: !4491)
!4517 = distinct !DILexicalBlock(scope: !4488, file: !4447, line: 53, column: 11)
!4518 = distinct !{!4518, !4519, !4520}
!4519 = !DILocation(line: 39, column: 3, scope: !4481)
!4520 = !DILocation(line: 55, column: 5, scope: !4481)
!4521 = !DILocation(line: 0, scope: !4481, inlinedAt: !4491)
!4522 = !DILocation(line: 89, column: 17, scope: !4455)
!4523 = !DILocation(line: 90, column: 17, scope: !4455)
!4524 = !DILocation(line: 0, scope: !4455)
!4525 = !DILocation(line: 93, column: 3, scope: !4446)
!4526 = distinct !DISubprogram(name: "memcoll0", scope: !4447, file: !4447, line: 102, type: !1677, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !685, retainedNodes: !4527)
!4527 = !{!4528, !4529, !4530, !4531}
!4528 = !DILocalVariable(name: "s1", arg: 1, scope: !4526, file: !4447, line: 102, type: !65)
!4529 = !DILocalVariable(name: "s1size", arg: 2, scope: !4526, file: !4447, line: 102, type: !79)
!4530 = !DILocalVariable(name: "s2", arg: 3, scope: !4526, file: !4447, line: 102, type: !65)
!4531 = !DILocalVariable(name: "s2size", arg: 4, scope: !4526, file: !4447, line: 102, type: !79)
!4532 = !DILocation(line: 102, column: 23, scope: !4526)
!4533 = !DILocation(line: 102, column: 34, scope: !4526)
!4534 = !DILocation(line: 102, column: 54, scope: !4526)
!4535 = !DILocation(line: 102, column: 65, scope: !4526)
!4536 = !DILocation(line: 104, column: 14, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4526, file: !4447, line: 104, column: 7)
!4538 = !DILocation(line: 104, column: 24, scope: !4537)
!4539 = !DILocation(line: 104, column: 27, scope: !4537)
!4540 = !DILocation(line: 104, column: 51, scope: !4537)
!4541 = !DILocation(line: 104, column: 7, scope: !4526)
!4542 = !DILocation(line: 106, column: 7, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4537, file: !4447, line: 105, column: 5)
!4544 = !DILocation(line: 106, column: 13, scope: !4543)
!4545 = !DILocation(line: 107, column: 7, scope: !4543)
!4546 = !DILocation(line: 35, column: 27, scope: !4481, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 110, column: 12, scope: !4537)
!4548 = !DILocation(line: 35, column: 38, scope: !4481, inlinedAt: !4547)
!4549 = !DILocation(line: 35, column: 58, scope: !4481, inlinedAt: !4547)
!4550 = !DILocation(line: 35, column: 69, scope: !4481, inlinedAt: !4547)
!4551 = !DILocation(line: 39, column: 13, scope: !4481, inlinedAt: !4547)
!4552 = !DILocation(line: 39, column: 3, scope: !4481, inlinedAt: !4547)
!4553 = !DILocation(line: 39, column: 19, scope: !4481, inlinedAt: !4547)
!4554 = !DILocation(line: 39, column: 32, scope: !4481, inlinedAt: !4547)
!4555 = !DILocation(line: 37, column: 7, scope: !4481, inlinedAt: !4547)
!4556 = !DILocation(line: 39, column: 30, scope: !4481, inlinedAt: !4547)
!4557 = !DILocation(line: 44, column: 22, scope: !4488, inlinedAt: !4547)
!4558 = !DILocation(line: 44, column: 34, scope: !4488, inlinedAt: !4547)
!4559 = !DILocation(line: 44, column: 14, scope: !4488, inlinedAt: !4547)
!4560 = !DILocation(line: 45, column: 22, scope: !4488, inlinedAt: !4547)
!4561 = !DILocation(line: 45, column: 34, scope: !4488, inlinedAt: !4547)
!4562 = !DILocation(line: 45, column: 14, scope: !4488, inlinedAt: !4547)
!4563 = !DILocation(line: 48, column: 14, scope: !4488, inlinedAt: !4547)
!4564 = !DILocation(line: 49, column: 14, scope: !4488, inlinedAt: !4547)
!4565 = !DILocation(line: 51, column: 18, scope: !4510, inlinedAt: !4547)
!4566 = !DILocation(line: 51, column: 11, scope: !4488, inlinedAt: !4547)
!4567 = !DILocation(line: 52, column: 26, scope: !4510, inlinedAt: !4547)
!4568 = !DILocation(line: 52, column: 16, scope: !4510, inlinedAt: !4547)
!4569 = !DILocation(line: 47, column: 10, scope: !4488, inlinedAt: !4547)
!4570 = !DILocation(line: 46, column: 10, scope: !4488, inlinedAt: !4547)
!4571 = !DILocation(line: 53, column: 18, scope: !4517, inlinedAt: !4547)
!4572 = !DILocation(line: 0, scope: !4537)
!4573 = !DILocation(line: 111, column: 1, scope: !4526)
