; ModuleID = 'coreutils-8.30/src/expr.bc'
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
%struct.valinfo = type { i32, %union.anon }
%union.anon = type { [1 x %struct.__mpz_struct] }
%struct.__mpz_struct = type { i32, i32, i64* }
%struct.mbuiter_multi = type { i8, %struct.__mbstate_t, i8, %struct.mbchar }
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mbchar = type { i8*, i64, i8, i32, [24 x i8] }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.re_registers = type { i32, i32*, i32* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s EXPRESSION\0A  or:  %s OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [274 x i8] c"\0APrint the value of EXPRESSION to standard output.  A blank line below\0Aseparates increasing precedence groups.  EXPRESSION may be:\0A\0A  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2\0A\0A  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [290 x i8] c"\0A  ARG1 < ARG2       ARG1 is less than ARG2\0A  ARG1 <= ARG2      ARG1 is less than or equal to ARG2\0A  ARG1 = ARG2       ARG1 is equal to ARG2\0A  ARG1 != ARG2      ARG1 is unequal to ARG2\0A  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2\0A  ARG1 > ARG2       ARG1 is greater than ARG2\0A\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"\0A  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2\0A  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2\0A\00", align 1
@.str.7 = private unnamed_addr constant [187 x i8] c"\0A  ARG1 * ARG2       arithmetic product of ARG1 and ARG2\0A  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2\0A  ARG1 % ARG2       arithmetic remainder of ARG1 divided by ARG2\0A\00", align 1
@.str.8 = private unnamed_addr constant [310 x i8] c"\0A  STRING : REGEXP   anchored pattern match of REGEXP in STRING\0A\0A  match STRING REGEXP        same as STRING : REGEXP\0A  substr STRING POS LENGTH   substring of STRING, POS counted from 1\0A  index STRING CHARS         index in STRING where any CHARS is found, or 0\0A  length STRING              length of STRING\0A\00", align 1
@.str.9 = private unnamed_addr constant [201 x i8] c"  + TOKEN                    interpret TOKEN as a string, even if it is a\0A                               keyword like 'match' or an operator like '/'\0A\0A  ( EXPRESSION )             value of EXPRESSION\0A\00", align 1
@.str.10 = private unnamed_addr constant [292 x i8] c"\0ABeware that many operators need to be escaped or quoted for shells.\0AComparisons are arithmetic if both ARGs are numbers, else lexicographical.\0APattern matches return the string matched between \5C( and \5C) or null; if\0A\5C( and \5C) are not used, they return the number of characters matched or 0.\0A\00", align 1
@.str.11 = private unnamed_addr constant [156 x i8] c"\0AExit status is 0 if EXPRESSION is neither null nor 0, 1 if EXPRESSION is null\0Aor 0, 2 if EXPRESSION is syntactically invalid, and 3 if an error occurred.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@args = internal unnamed_addr global i8** null, align 8, !dbg !0
@.str.23 = private unnamed_addr constant [37 x i8] c"syntax error: unexpected argument %s\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"non-integer argument\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c":\00", align 1
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"error in regular expression matcher\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"syntax error: missing argument after %s\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"syntax error: expecting ')' after %s\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"syntax error: expecting ')' instead of %s\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"syntax error: unexpected ')'\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !108
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !114
@.str.48 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.49 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !117
@opterr = external local_unnamed_addr global i32, align 4
@.str.64 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.65, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.66, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !124
@optind = external local_unnamed_addr global i32, align 4
@.str.1.65 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.66 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"mbsinit (&iter->state)\00", align 1
@.str.1.76 = private unnamed_addr constant [16 x i8] c"./lib/mbuiter.h\00", align 1
@__PRETTY_FUNCTION__.mbuiter_multi_next = private unnamed_addr constant [48 x i8] c"void mbuiter_multi_next(struct mbuiter_multi *)\00", align 1
@.str.2.77 = private unnamed_addr constant [23 x i8] c"*iter->cur.ptr == '\5C0'\00", align 1
@.str.3.78 = private unnamed_addr constant [18 x i8] c"iter->cur.wc == 0\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !142
@.str.83 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.85 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.88, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.89, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.93, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.95, i32 0, i32 0), i8* null], align 16, !dbg !149
@.str.86 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.87 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.88 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.89 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.90 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.91 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.92 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.93 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.94 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.95 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !177
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !184
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !196
@.str.11.96 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.97 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.98 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.99 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.100 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.101 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.102 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !203
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !210
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !198
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !212
@.str.111 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.112 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.113 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.114 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.115 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.116 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.117 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.118 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.119 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.120 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.121 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.122 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.123 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.124 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.127 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.132 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !218
@.str.1.145 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@is_basic_table = dso_local local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !227

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !687 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !692, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i32 %0, metadata !691, metadata !DIExpression()), !dbg !715
  %3 = icmp eq i32 %0, 0, !dbg !716
  br i1 %3, label %9, label %4, !dbg !717

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !718, !tbaa !720
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !718
  %7 = load i8*, i8** @program_name, align 8, !dbg !718, !tbaa !720
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !718
  br label %89, !dbg !718

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !724
  %11 = load i8*, i8** @program_name, align 8, !dbg !724, !tbaa !720
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #11, !dbg !724
  call void @llvm.dbg.value(metadata i32 10, metadata !725, metadata !DIExpression()) #11, !dbg !731
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !720
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %13, i64 0, i32 5, !dbg !733
  %15 = load i8*, i8** %14, align 8, !dbg !733, !tbaa !734
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %13, i64 0, i32 6, !dbg !733
  %17 = load i8*, i8** %16, align 8, !dbg !733, !tbaa !739
  %18 = icmp ult i8* %15, %17, !dbg !733
  br i1 %18, label %21, label %19, !dbg !733, !prof !740

; <label>:19:                                     ; preds = %9
  %20 = tail call i32 @__overflow(%struct._IO_FILE* %13, i32 10) #11, !dbg !733
  br label %23, !dbg !733

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !733
  store i8* %22, i8** %14, align 8, !dbg !733, !tbaa !734
  store i8 10, i8* %15, align 1, !dbg !733, !tbaa !741
  br label %23, !dbg !733

; <label>:23:                                     ; preds = %19, %21
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !742
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742, !tbaa !720
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !742
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !743
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !720
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !743
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !744
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !720
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !744
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !745
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !720
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !745
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !746
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !720
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !746
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !747
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !720
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40), !dbg !747
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !748
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !720
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43), !dbg !748
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !749
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !720
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46), !dbg !749
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([292 x i8], [292 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !750
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !720
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49), !dbg !750
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !751
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !720
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52), !dbg !751
  %54 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !752
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %54) #11, !dbg !752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %54, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !711
  %55 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !753
  call void @llvm.dbg.value(metadata %struct.infomap* %55, metadata !700, metadata !DIExpression()) #11, !dbg !754
  br label %56, !dbg !755

; <label>:56:                                     ; preds = %61, %23
  %57 = phi i8* [ %64, %61 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %23 ]
  %58 = phi %struct.infomap* [ %62, %61 ], [ %55, %23 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %58, metadata !700, metadata !DIExpression()) #11, !dbg !754
  %59 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %57) #15, !dbg !755
  %60 = icmp eq i32 %59, 0, !dbg !755
  br i1 %60, label %66, label %61, !dbg !756

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.infomap, %struct.infomap* %58, i64 1, !dbg !757
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !700, metadata !DIExpression()) #11, !dbg !754
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %62, i64 0, i32 0, !dbg !758
  %64 = load i8*, i8** %63, align 8, !dbg !758, !tbaa !759
  %65 = icmp eq i8* %64, null, !dbg !761
  br i1 %65, label %66, label %56, !dbg !762, !llvm.loop !763

; <label>:66:                                     ; preds = %61, %56
  %67 = phi %struct.infomap* [ %62, %61 ], [ %58, %56 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %67, metadata !700, metadata !DIExpression()) #11, !dbg !754
  call void @llvm.dbg.value(metadata %struct.infomap* %67, metadata !700, metadata !DIExpression()) #11, !dbg !754
  %68 = getelementptr inbounds %struct.infomap, %struct.infomap* %67, i64 0, i32 1, !dbg !766
  %69 = load i8*, i8** %68, align 8, !dbg !766, !tbaa !768
  %70 = icmp eq i8* %69, null, !dbg !769
  %71 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %69, !dbg !770
  call void @llvm.dbg.value(metadata i8* %71, metadata !699, metadata !DIExpression()) #11, !dbg !771
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !772
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0)) #11, !dbg !772
  %74 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !773
  call void @llvm.dbg.value(metadata i8* %74, metadata !707, metadata !DIExpression()) #11, !dbg !774
  %75 = icmp eq i8* %74, null, !dbg !775
  br i1 %75, label %82, label %76, !dbg !777

; <label>:76:                                     ; preds = %66
  %77 = tail call i32 @strncmp(i8* nonnull %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i64 3) #15, !dbg !778
  %78 = icmp eq i32 %77, 0, !dbg !778
  br i1 %78, label %82, label %79, !dbg !779

; <label>:79:                                     ; preds = %76
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !780
  %81 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !780
  br label %82, !dbg !782

; <label>:82:                                     ; preds = %66, %76, %79
  %83 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i32 5) #11, !dbg !783
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !783
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !784
  %86 = icmp eq i8* %71, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), !dbg !784
  %87 = select i1 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !784
  %88 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %85, i8* %71, i8* %87) #11, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %54) #11, !dbg !785
  br label %89

; <label>:89:                                     ; preds = %82, %4
  tail call void @exit(i32 %0) #16, !dbg !786
  unreachable, !dbg !786
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !791, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8** %1, metadata !792, metadata !DIExpression()), !dbg !796
  %3 = load i8*, i8** %1, align 8, !dbg !797, !tbaa !720
  tail call void @set_program_name(i8* %3) #11, !dbg !798
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !799
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !800
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !801
  call void @llvm.dbg.value(metadata i32 3, metadata !802, metadata !DIExpression()), !dbg !805
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !807, !tbaa !809
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !810
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* null) #11, !dbg !811
  call void @llvm.dbg.value(metadata i32 %0, metadata !794, metadata !DIExpression()), !dbg !812
  %8 = icmp ugt i32 %0, 1, !dbg !813
  br i1 %8, label %9, label %19, !dbg !815

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !816
  %11 = load i8*, i8** %10, align 8, !dbg !816, !tbaa !720
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #15, !dbg !816
  %13 = icmp eq i32 %12, 0, !dbg !816
  br i1 %13, label %14, label %21, !dbg !817

; <label>:14:                                     ; preds = %9
  %15 = add i32 %0, -1, !dbg !818
  call void @llvm.dbg.value(metadata i32 %15, metadata !794, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i8** %10, metadata !792, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %15, metadata !794, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i8** %10, metadata !792, metadata !DIExpression()), !dbg !796
  %16 = icmp ult i32 %15, 2, !dbg !820
  br i1 %16, label %19, label %17, !dbg !822

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !823
  br label %21, !dbg !822

; <label>:19:                                     ; preds = %2, %14
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !824
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20) #11, !dbg !826
  tail call void @usage(i32 2) #17, !dbg !827
  unreachable, !dbg !827

; <label>:21:                                     ; preds = %17, %9
  %22 = phi i8** [ %18, %17 ], [ %10, %9 ], !dbg !823
  store i8** %22, i8*** @args, align 8, !dbg !828, !tbaa !720
  %23 = tail call fastcc %struct.valinfo* @eval(i1 zeroext true), !dbg !829
  call void @llvm.dbg.value(metadata %struct.valinfo* %23, metadata !793, metadata !DIExpression()), !dbg !830
  %24 = load i8**, i8*** @args, align 8, !dbg !831, !tbaa !720
  %25 = load i8*, i8** %24, align 8, !dbg !837, !tbaa !720
  %26 = icmp eq i8* %25, null, !dbg !838
  br i1 %26, label %32, label %27, !dbg !839

; <label>:27:                                     ; preds = %21
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !840
  %29 = load i8**, i8*** @args, align 8, !dbg !840, !tbaa !720
  %30 = load i8*, i8** %29, align 8, !dbg !840, !tbaa !720
  %31 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %30) #11, !dbg !840
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %28, i8* %31) #11, !dbg !840
  unreachable, !dbg !840

; <label>:32:                                     ; preds = %21
  call void @llvm.dbg.value(metadata %struct.valinfo* %23, metadata !841, metadata !DIExpression()) #11, !dbg !846
  %33 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %23, i64 0, i32 0, !dbg !848
  %34 = load i32, i32* %33, align 8, !dbg !848, !tbaa !849
  switch i32 %34, label %54 [
    i32 0, label %35
    i32 1, label %49
  ], !dbg !851

; <label>:35:                                     ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !852, !tbaa !720
  %37 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %23, i64 0, i32 1, i32 0, i64 0, !dbg !854
  %38 = tail call i64 @__gmpz_out_str(%struct._IO_FILE* %36, i32 10, %struct.__mpz_struct* nonnull %37) #11, !dbg !855
  call void @llvm.dbg.value(metadata i32 10, metadata !725, metadata !DIExpression()) #11, !dbg !856
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !858, !tbaa !720
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !858
  %41 = load i8*, i8** %40, align 8, !dbg !858, !tbaa !734
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !858
  %43 = load i8*, i8** %42, align 8, !dbg !858, !tbaa !739
  %44 = icmp ult i8* %41, %43, !dbg !858
  br i1 %44, label %47, label %45, !dbg !858, !prof !740

; <label>:45:                                     ; preds = %35
  %46 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 10) #11, !dbg !858
  br label %55, !dbg !858

; <label>:47:                                     ; preds = %35
  %48 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !858
  store i8* %48, i8** %40, align 8, !dbg !858, !tbaa !734
  store i8 10, i8* %41, align 1, !dbg !858, !tbaa !741
  br label %55, !dbg !858

; <label>:49:                                     ; preds = %32
  %50 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %23, i64 0, i32 1, !dbg !859
  %51 = bitcast %union.anon* %50 to i8**, !dbg !860
  %52 = load i8*, i8** %51, align 8, !dbg !860, !tbaa !741
  %53 = tail call i32 @puts(i8* %52) #11, !dbg !861
  br label %55, !dbg !862

; <label>:54:                                     ; preds = %32
  tail call void @abort() #16, !dbg !863
  unreachable, !dbg !863

; <label>:55:                                     ; preds = %45, %47, %49
  call void @llvm.dbg.value(metadata %struct.valinfo* %23, metadata !864, metadata !DIExpression()) #11, !dbg !872
  %56 = load i32, i32* %33, align 8, !dbg !874, !tbaa !849
  switch i32 %56, label %81 [
    i32 0, label %57
    i32 1, label %62
  ], !dbg !875

; <label>:57:                                     ; preds = %55
  %58 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %23, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !876
  %59 = load i32, i32* %58, align 4, !dbg !876, !tbaa !877
  %60 = icmp eq i32 %59, 0, !dbg !876
  %61 = zext i1 %60 to i32, !dbg !879
  br label %82, !dbg !879

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %23, i64 0, i32 1, !dbg !880
  %64 = bitcast %union.anon* %63 to i8**, !dbg !881
  %65 = load i8*, i8** %64, align 8, !dbg !881, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %65, metadata !869, metadata !DIExpression()) #11, !dbg !882
  %66 = load i8, i8* %65, align 1, !dbg !883, !tbaa !741
  %67 = icmp eq i8 %66, 0, !dbg !885
  br i1 %67, label %82, label %68, !dbg !886

; <label>:68:                                     ; preds = %62
  %69 = icmp eq i8 %66, 45, !dbg !887
  %70 = zext i1 %69 to i64, !dbg !888
  %71 = getelementptr inbounds i8, i8* %65, i64 %70, !dbg !888
  call void @llvm.dbg.value(metadata i8* %71, metadata !869, metadata !DIExpression()) #11, !dbg !882
  %72 = load i8, i8* %71, align 1, !dbg !889, !tbaa !741
  br label %73, !dbg !892

; <label>:73:                                     ; preds = %77, %68
  %74 = phi i8 [ %79, %77 ], [ %72, %68 ], !dbg !889
  %75 = phi i8* [ %78, %77 ], [ %71, %68 ], !dbg !893
  call void @llvm.dbg.value(metadata i8* %75, metadata !869, metadata !DIExpression()) #11, !dbg !882
  %76 = icmp eq i8 %74, 48, !dbg !894
  br i1 %76, label %77, label %82, !dbg !895

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !896
  call void @llvm.dbg.value(metadata i8* %78, metadata !869, metadata !DIExpression()) #11, !dbg !882
  %79 = load i8, i8* %78, align 1, !dbg !897, !tbaa !741
  %80 = icmp eq i8 %79, 0, !dbg !898
  br i1 %80, label %82, label %73, !dbg !898, !llvm.loop !899

; <label>:81:                                     ; preds = %55
  tail call void @abort() #16, !dbg !902
  unreachable, !dbg !902

; <label>:82:                                     ; preds = %73, %77, %57, %62
  %83 = phi i32 [ %61, %57 ], [ 1, %62 ], [ 0, %73 ], [ 1, %77 ]
  ret i32 %83, !dbg !903
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval(i1 zeroext) unnamed_addr #7 !dbg !904 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !906, metadata !DIExpression()), !dbg !909
  %2 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %0), !dbg !910
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !920
  %3 = load i8**, i8*** @args, align 8, !dbg !924, !tbaa !720
  %4 = load i8*, i8** %3, align 8, !dbg !925, !tbaa !720
  %5 = icmp eq i8* %4, null, !dbg !926
  br i1 %5, label %123, label %6, !dbg !927

; <label>:6:                                      ; preds = %1, %125
  %7 = phi i8* [ %128, %125 ], [ %4, %1 ]
  %8 = phi i8** [ %127, %125 ], [ %3, %1 ]
  %9 = phi %struct.valinfo* [ %126, %125 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !907, metadata !DIExpression()), !dbg !911
  %10 = tail call i32 @strcmp(i8* nonnull %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #15, !dbg !928
  %11 = icmp eq i32 %10, 0, !dbg !928
  %12 = zext i1 %11 to i64, !dbg !929
  %13 = getelementptr inbounds i8*, i8** %8, i64 %12, !dbg !929
  store i8** %13, i8*** @args, align 8, !dbg !929, !tbaa !720
  br i1 %11, label %14, label %123, !dbg !930

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 0, !dbg !931
  br i1 %0, label %16, label %42, !dbg !934

; <label>:16:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !864, metadata !DIExpression()) #11, !dbg !935
  %17 = load i32, i32* %15, align 8, !dbg !931, !tbaa !849
  switch i32 %17, label %41 [
    i32 0, label %18
    i32 1, label %22
  ], !dbg !936

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !937
  %20 = load i32, i32* %19, align 4, !dbg !937, !tbaa !877
  %21 = icmp eq i32 %20, 0, !dbg !937
  br label %42, !dbg !938

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !939
  %24 = bitcast %union.anon* %23 to i8**, !dbg !940
  %25 = load i8*, i8** %24, align 8, !dbg !940, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %25, metadata !869, metadata !DIExpression()) #11, !dbg !941
  %26 = load i8, i8* %25, align 1, !dbg !942, !tbaa !741
  %27 = icmp eq i8 %26, 0, !dbg !943
  br i1 %27, label %42, label %28, !dbg !944

; <label>:28:                                     ; preds = %22
  %29 = icmp eq i8 %26, 45, !dbg !945
  %30 = zext i1 %29 to i64, !dbg !946
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !946
  call void @llvm.dbg.value(metadata i8* %31, metadata !869, metadata !DIExpression()) #11, !dbg !941
  %32 = load i8, i8* %31, align 1, !dbg !947, !tbaa !741
  br label %33, !dbg !948

; <label>:33:                                     ; preds = %37, %28
  %34 = phi i8 [ %39, %37 ], [ %32, %28 ], !dbg !947
  %35 = phi i8* [ %38, %37 ], [ %31, %28 ], !dbg !949
  call void @llvm.dbg.value(metadata i8* %35, metadata !869, metadata !DIExpression()) #11, !dbg !941
  %36 = icmp eq i8 %34, 48, !dbg !950
  br i1 %36, label %37, label %42, !dbg !951

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !952
  call void @llvm.dbg.value(metadata i8* %38, metadata !869, metadata !DIExpression()) #11, !dbg !941
  %39 = load i8, i8* %38, align 1, !dbg !953, !tbaa !741
  %40 = icmp eq i8 %39, 0, !dbg !954
  br i1 %40, label %42, label %33, !dbg !954, !llvm.loop !899

; <label>:41:                                     ; preds = %16
  tail call void @abort() #16, !dbg !955
  unreachable, !dbg !955

; <label>:42:                                     ; preds = %37, %33, %14, %22, %18
  %43 = phi i1 [ true, %22 ], [ %21, %18 ], [ false, %14 ], [ false, %33 ], [ true, %37 ], !dbg !956
  %44 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %43), !dbg !957
  call void @llvm.dbg.value(metadata %struct.valinfo* %44, metadata !908, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !864, metadata !DIExpression()) #11, !dbg !959
  %45 = load i32, i32* %15, align 8, !dbg !962, !tbaa !849
  switch i32 %45, label %65 [
    i32 0, label %66
    i32 1, label %46
  ], !dbg !963

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !964
  %48 = bitcast %union.anon* %47 to i8**, !dbg !965
  %49 = load i8*, i8** %48, align 8, !dbg !965, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %49, metadata !869, metadata !DIExpression()) #11, !dbg !966
  %50 = load i8, i8* %49, align 1, !dbg !967, !tbaa !741
  %51 = icmp eq i8 %50, 0, !dbg !968
  br i1 %51, label %70, label %52, !dbg !969

; <label>:52:                                     ; preds = %46
  %53 = icmp eq i8 %50, 45, !dbg !970
  %54 = zext i1 %53 to i64, !dbg !971
  %55 = getelementptr inbounds i8, i8* %49, i64 %54, !dbg !971
  call void @llvm.dbg.value(metadata i8* %55, metadata !869, metadata !DIExpression()) #11, !dbg !966
  %56 = load i8, i8* %55, align 1, !dbg !972, !tbaa !741
  br label %57, !dbg !973

; <label>:57:                                     ; preds = %61, %52
  %58 = phi i8 [ %63, %61 ], [ %56, %52 ], !dbg !972
  %59 = phi i8* [ %62, %61 ], [ %55, %52 ], !dbg !974
  call void @llvm.dbg.value(metadata i8* %59, metadata !869, metadata !DIExpression()) #11, !dbg !966
  %60 = icmp eq i8 %58, 48, !dbg !975
  br i1 %60, label %61, label %111, !dbg !976

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !977
  call void @llvm.dbg.value(metadata i8* %62, metadata !869, metadata !DIExpression()) #11, !dbg !966
  %63 = load i8, i8* %62, align 1, !dbg !978, !tbaa !741
  %64 = icmp eq i8 %63, 0, !dbg !979
  br i1 %64, label %70, label %57, !dbg !979, !llvm.loop !899

; <label>:65:                                     ; preds = %42
  tail call void @abort() #16, !dbg !980
  unreachable, !dbg !980

; <label>:66:                                     ; preds = %42
  %67 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !981
  %68 = load i32, i32* %67, align 4, !dbg !981, !tbaa !877
  %69 = icmp eq i32 %68, 0, !dbg !981
  br i1 %69, label %71, label %111, !dbg !982

; <label>:70:                                     ; preds = %61, %46
  tail call void @free(i8* %49) #11, !dbg !983
  br label %73, !dbg !983

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, i32 0, i64 0, !dbg !990
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %72) #11, !dbg !991
  br label %73

; <label>:73:                                     ; preds = %70, %71
  %74 = bitcast %struct.valinfo* %9 to i8*, !dbg !992
  tail call void @free(i8* %74) #11, !dbg !993
  call void @llvm.dbg.value(metadata %struct.valinfo* %44, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata %struct.valinfo* %44, metadata !864, metadata !DIExpression()) #11, !dbg !994
  %75 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %44, i64 0, i32 0, !dbg !997
  %76 = load i32, i32* %75, align 8, !dbg !997, !tbaa !849
  switch i32 %76, label %96 [
    i32 0, label %97
    i32 1, label %77
  ], !dbg !998

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %44, i64 0, i32 1, !dbg !999
  %79 = bitcast %union.anon* %78 to i8**, !dbg !1000
  %80 = load i8*, i8** %79, align 8, !dbg !1000, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %80, metadata !869, metadata !DIExpression()) #11, !dbg !1001
  %81 = load i8, i8* %80, align 1, !dbg !1002, !tbaa !741
  %82 = icmp eq i8 %81, 0, !dbg !1003
  br i1 %82, label %101, label %83, !dbg !1004

; <label>:83:                                     ; preds = %77
  %84 = icmp eq i8 %81, 45, !dbg !1005
  %85 = zext i1 %84 to i64, !dbg !1006
  %86 = getelementptr inbounds i8, i8* %80, i64 %85, !dbg !1006
  call void @llvm.dbg.value(metadata i8* %86, metadata !869, metadata !DIExpression()) #11, !dbg !1001
  %87 = load i8, i8* %86, align 1, !dbg !1007, !tbaa !741
  br label %88, !dbg !1008

; <label>:88:                                     ; preds = %92, %83
  %89 = phi i8 [ %94, %92 ], [ %87, %83 ], !dbg !1007
  %90 = phi i8* [ %93, %92 ], [ %86, %83 ], !dbg !1009
  call void @llvm.dbg.value(metadata i8* %90, metadata !869, metadata !DIExpression()) #11, !dbg !1001
  %91 = icmp eq i8 %89, 48, !dbg !1010
  br i1 %91, label %92, label %125, !dbg !1011

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1012
  call void @llvm.dbg.value(metadata i8* %93, metadata !869, metadata !DIExpression()) #11, !dbg !1001
  %94 = load i8, i8* %93, align 1, !dbg !1013, !tbaa !741
  %95 = icmp eq i8 %94, 0, !dbg !1014
  br i1 %95, label %101, label %88, !dbg !1014, !llvm.loop !899

; <label>:96:                                     ; preds = %73
  tail call void @abort() #16, !dbg !1015
  unreachable, !dbg !1015

; <label>:97:                                     ; preds = %73
  %98 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %44, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1016
  %99 = load i32, i32* %98, align 4, !dbg !1016, !tbaa !877
  %100 = icmp eq i32 %99, 0, !dbg !1016
  br i1 %100, label %102, label %125, !dbg !1017

; <label>:101:                                    ; preds = %92, %77
  tail call void @free(i8* %80) #11, !dbg !1018
  br label %104, !dbg !1018

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %44, i64 0, i32 1, i32 0, i64 0, !dbg !1021
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %103) #11, !dbg !1022
  br label %104

; <label>:104:                                    ; preds = %101, %102
  %105 = bitcast %struct.valinfo* %44 to i8*, !dbg !1023
  tail call void @free(i8* %105) #11, !dbg !1024
  call void @llvm.dbg.value(metadata i64 0, metadata !1025, metadata !DIExpression()) #11, !dbg !1031
  %106 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1033
  %107 = bitcast i8* %106 to %struct.valinfo*, !dbg !1033
  call void @llvm.dbg.value(metadata %struct.valinfo* %107, metadata !1030, metadata !DIExpression()) #11, !dbg !1034
  %108 = bitcast i8* %106 to i32*, !dbg !1035
  store i32 0, i32* %108, align 8, !dbg !1036, !tbaa !849
  %109 = getelementptr inbounds i8, i8* %106, i64 8, !dbg !1037
  %110 = bitcast i8* %109 to %struct.__mpz_struct*, !dbg !1038
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* nonnull %110, i64 0) #11, !dbg !1039
  call void @llvm.dbg.value(metadata %struct.valinfo* %107, metadata !907, metadata !DIExpression()), !dbg !911
  br label %125, !dbg !1040

; <label>:111:                                    ; preds = %57, %66
  call void @llvm.dbg.value(metadata %struct.valinfo* %44, metadata !987, metadata !DIExpression()) #11, !dbg !1041
  %112 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %44, i64 0, i32 0, !dbg !1043
  %113 = load i32, i32* %112, align 8, !dbg !1043, !tbaa !849
  %114 = icmp eq i32 %113, 1, !dbg !1044
  %115 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %44, i64 0, i32 1, !dbg !1045
  br i1 %114, label %116, label %119, !dbg !1046

; <label>:116:                                    ; preds = %111
  %117 = bitcast %union.anon* %115 to i8**, !dbg !1047
  %118 = load i8*, i8** %117, align 8, !dbg !1047, !tbaa !741
  tail call void @free(i8* %118) #11, !dbg !1048
  br label %121, !dbg !1048

; <label>:119:                                    ; preds = %111
  %120 = getelementptr inbounds %union.anon, %union.anon* %115, i64 0, i32 0, i64 0, !dbg !1049
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %120) #11, !dbg !1050
  br label %121

; <label>:121:                                    ; preds = %116, %119
  %122 = bitcast %struct.valinfo* %44 to i8*, !dbg !1051
  tail call void @free(i8* %122) #11, !dbg !1052
  br label %125

; <label>:123:                                    ; preds = %6, %125, %1
  %124 = phi %struct.valinfo* [ %2, %1 ], [ %126, %125 ], [ %9, %6 ], !dbg !1053
  call void @llvm.dbg.value(metadata %struct.valinfo* %124, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata %struct.valinfo* %124, metadata !907, metadata !DIExpression()), !dbg !911
  ret %struct.valinfo* %124, !dbg !1054

; <label>:125:                                    ; preds = %88, %121, %104, %97
  %126 = phi %struct.valinfo* [ %107, %104 ], [ %44, %97 ], [ %9, %121 ], [ %44, %88 ], !dbg !1055
  call void @llvm.dbg.value(metadata %struct.valinfo* %126, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !920
  %127 = load i8**, i8*** @args, align 8, !dbg !924, !tbaa !720
  %128 = load i8*, i8** %127, align 8, !dbg !925, !tbaa !720
  %129 = icmp eq i8* %128, null, !dbg !926
  br i1 %129, label %123, label %6, !dbg !927, !llvm.loop !1056
}

declare i64 @__gmpz_out_str(%struct._IO_FILE*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval1(i1 zeroext) unnamed_addr #7 !dbg !1059 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !1061, metadata !DIExpression()), !dbg !1064
  %2 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %0), !dbg !1065
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !1062, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1067
  %3 = load i8**, i8*** @args, align 8, !dbg !1071, !tbaa !720
  %4 = load i8*, i8** %3, align 8, !dbg !1072, !tbaa !720
  %5 = icmp eq i8* %4, null, !dbg !1073
  br i1 %5, label %133, label %6, !dbg !1074

; <label>:6:                                      ; preds = %1, %135
  %7 = phi i8* [ %138, %135 ], [ %4, %1 ]
  %8 = phi i8** [ %137, %135 ], [ %3, %1 ]
  %9 = phi %struct.valinfo* [ %136, %135 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !1062, metadata !DIExpression()), !dbg !1066
  %10 = tail call i32 @strcmp(i8* nonnull %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #15, !dbg !1075
  %11 = icmp eq i32 %10, 0, !dbg !1075
  %12 = zext i1 %11 to i64, !dbg !1076
  %13 = getelementptr inbounds i8*, i8** %8, i64 %12, !dbg !1076
  store i8** %13, i8*** @args, align 8, !dbg !1076, !tbaa !720
  br i1 %11, label %14, label %133, !dbg !1077

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 0, !dbg !1078
  br i1 %0, label %16, label %45, !dbg !1081

; <label>:16:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !864, metadata !DIExpression()) #11, !dbg !1082
  %17 = load i32, i32* %15, align 8, !dbg !1078, !tbaa !849
  switch i32 %17, label %41 [
    i32 0, label %18
    i32 1, label %22
  ], !dbg !1083

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1084
  %20 = load i32, i32* %19, align 4, !dbg !1084, !tbaa !877
  %21 = icmp eq i32 %20, 0, !dbg !1084
  br label %42, !dbg !1085

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !1086
  %24 = bitcast %union.anon* %23 to i8**, !dbg !1087
  %25 = load i8*, i8** %24, align 8, !dbg !1087, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %25, metadata !869, metadata !DIExpression()) #11, !dbg !1088
  %26 = load i8, i8* %25, align 1, !dbg !1089, !tbaa !741
  %27 = icmp eq i8 %26, 0, !dbg !1090
  br i1 %27, label %42, label %28, !dbg !1091

; <label>:28:                                     ; preds = %22
  %29 = icmp eq i8 %26, 45, !dbg !1092
  %30 = zext i1 %29 to i64, !dbg !1093
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %31, metadata !869, metadata !DIExpression()) #11, !dbg !1088
  %32 = load i8, i8* %31, align 1, !dbg !1094, !tbaa !741
  br label %33, !dbg !1095

; <label>:33:                                     ; preds = %37, %28
  %34 = phi i8 [ %39, %37 ], [ %32, %28 ], !dbg !1094
  %35 = phi i8* [ %38, %37 ], [ %31, %28 ], !dbg !1096
  call void @llvm.dbg.value(metadata i8* %35, metadata !869, metadata !DIExpression()) #11, !dbg !1088
  %36 = icmp eq i8 %34, 48, !dbg !1097
  br i1 %36, label %37, label %42, !dbg !1098

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1099
  call void @llvm.dbg.value(metadata i8* %38, metadata !869, metadata !DIExpression()) #11, !dbg !1088
  %39 = load i8, i8* %38, align 1, !dbg !1100, !tbaa !741
  %40 = icmp eq i8 %39, 0, !dbg !1101
  br i1 %40, label %42, label %33, !dbg !1101, !llvm.loop !899

; <label>:41:                                     ; preds = %16
  tail call void @abort() #16, !dbg !1102
  unreachable, !dbg !1102

; <label>:42:                                     ; preds = %33, %37, %18, %22
  %43 = phi i1 [ %21, %18 ], [ true, %22 ], [ false, %33 ], [ true, %37 ], !dbg !1103
  %44 = xor i1 %43, true, !dbg !1104
  br label %45

; <label>:45:                                     ; preds = %14, %42
  %46 = phi i1 [ %44, %42 ], [ false, %14 ], !dbg !1105
  %47 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %46), !dbg !1106
  call void @llvm.dbg.value(metadata %struct.valinfo* %47, metadata !1063, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !864, metadata !DIExpression()) #11, !dbg !1108
  %48 = load i32, i32* %15, align 8, !dbg !1111, !tbaa !849
  switch i32 %48, label %68 [
    i32 0, label %69
    i32 1, label %49
  ], !dbg !1112

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !1113
  %51 = bitcast %union.anon* %50 to i8**, !dbg !1114
  %52 = load i8*, i8** %51, align 8, !dbg !1114, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %52, metadata !869, metadata !DIExpression()) #11, !dbg !1115
  %53 = load i8, i8* %52, align 1, !dbg !1116, !tbaa !741
  %54 = icmp eq i8 %53, 0, !dbg !1117
  br i1 %54, label %106, label %55, !dbg !1118

; <label>:55:                                     ; preds = %49
  %56 = icmp eq i8 %53, 45, !dbg !1119
  %57 = zext i1 %56 to i64, !dbg !1120
  %58 = getelementptr inbounds i8, i8* %52, i64 %57, !dbg !1120
  call void @llvm.dbg.value(metadata i8* %58, metadata !869, metadata !DIExpression()) #11, !dbg !1115
  %59 = load i8, i8* %58, align 1, !dbg !1121, !tbaa !741
  br label %60, !dbg !1122

; <label>:60:                                     ; preds = %64, %55
  %61 = phi i8 [ %66, %64 ], [ %59, %55 ], !dbg !1121
  %62 = phi i8* [ %65, %64 ], [ %58, %55 ], !dbg !1123
  call void @llvm.dbg.value(metadata i8* %62, metadata !869, metadata !DIExpression()) #11, !dbg !1115
  %63 = icmp eq i8 %61, 48, !dbg !1124
  br i1 %63, label %64, label %73, !dbg !1125

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %65, metadata !869, metadata !DIExpression()) #11, !dbg !1115
  %66 = load i8, i8* %65, align 1, !dbg !1127, !tbaa !741
  %67 = icmp eq i8 %66, 0, !dbg !1128
  br i1 %67, label %100, label %60, !dbg !1128, !llvm.loop !899

; <label>:68:                                     ; preds = %45
  tail call void @abort() #16, !dbg !1129
  unreachable, !dbg !1129

; <label>:69:                                     ; preds = %45
  %70 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1130
  %71 = load i32, i32* %70, align 4, !dbg !1130, !tbaa !877
  %72 = icmp eq i32 %71, 0, !dbg !1130
  br i1 %72, label %108, label %73, !dbg !1131

; <label>:73:                                     ; preds = %60, %69
  call void @llvm.dbg.value(metadata %struct.valinfo* %47, metadata !864, metadata !DIExpression()) #11, !dbg !1132
  %74 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %47, i64 0, i32 0, !dbg !1134
  %75 = load i32, i32* %74, align 8, !dbg !1134, !tbaa !849
  switch i32 %75, label %95 [
    i32 0, label %96
    i32 1, label %76
  ], !dbg !1135

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %47, i64 0, i32 1, !dbg !1136
  %78 = bitcast %union.anon* %77 to i8**, !dbg !1137
  %79 = load i8*, i8** %78, align 8, !dbg !1137, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %79, metadata !869, metadata !DIExpression()) #11, !dbg !1138
  %80 = load i8, i8* %79, align 1, !dbg !1139, !tbaa !741
  %81 = icmp eq i8 %80, 0, !dbg !1140
  br i1 %81, label %100, label %82, !dbg !1141

; <label>:82:                                     ; preds = %76
  %83 = icmp eq i8 %80, 45, !dbg !1142
  %84 = zext i1 %83 to i64, !dbg !1143
  %85 = getelementptr inbounds i8, i8* %79, i64 %84, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %85, metadata !869, metadata !DIExpression()) #11, !dbg !1138
  %86 = load i8, i8* %85, align 1, !dbg !1144, !tbaa !741
  br label %87, !dbg !1145

; <label>:87:                                     ; preds = %91, %82
  %88 = phi i8 [ %93, %91 ], [ %86, %82 ], !dbg !1144
  %89 = phi i8* [ %92, %91 ], [ %85, %82 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8* %89, metadata !869, metadata !DIExpression()) #11, !dbg !1138
  %90 = icmp eq i8 %88, 48, !dbg !1147
  br i1 %90, label %91, label %128, !dbg !1148

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %92, metadata !869, metadata !DIExpression()) #11, !dbg !1138
  %93 = load i8, i8* %92, align 1, !dbg !1150, !tbaa !741
  %94 = icmp eq i8 %93, 0, !dbg !1151
  br i1 %94, label %100, label %87, !dbg !1151, !llvm.loop !899

; <label>:95:                                     ; preds = %73
  tail call void @abort() #16, !dbg !1152
  unreachable, !dbg !1152

; <label>:96:                                     ; preds = %73
  %97 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %47, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1153
  %98 = load i32, i32* %97, align 4, !dbg !1153, !tbaa !877
  %99 = icmp eq i32 %98, 0, !dbg !1153
  br i1 %99, label %100, label %129, !dbg !1154

; <label>:100:                                    ; preds = %64, %91, %76, %96
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !987, metadata !DIExpression()) #11, !dbg !1155
  %101 = icmp eq i32 %48, 1, !dbg !1158
  br i1 %101, label %102, label %108, !dbg !1159

; <label>:102:                                    ; preds = %100
  %103 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1
  %104 = bitcast %union.anon* %103 to i8**
  %105 = load i8*, i8** %104, align 8, !dbg !1160, !tbaa !741
  br label %106, !dbg !1159

; <label>:106:                                    ; preds = %102, %49
  %107 = phi i8* [ %105, %102 ], [ %52, %49 ], !dbg !1160
  tail call void @free(i8* %107) #11, !dbg !1161
  br label %110, !dbg !1161

; <label>:108:                                    ; preds = %69, %100
  %109 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, i32 0, i64 0, !dbg !1162
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %109) #11, !dbg !1163
  br label %110

; <label>:110:                                    ; preds = %106, %108
  %111 = bitcast %struct.valinfo* %9 to i8*, !dbg !1164
  tail call void @free(i8* %111) #11, !dbg !1165
  call void @llvm.dbg.value(metadata %struct.valinfo* %47, metadata !987, metadata !DIExpression()) #11, !dbg !1166
  %112 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %47, i64 0, i32 0, !dbg !1168
  %113 = load i32, i32* %112, align 8, !dbg !1168, !tbaa !849
  %114 = icmp eq i32 %113, 1, !dbg !1169
  %115 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %47, i64 0, i32 1, !dbg !1170
  br i1 %114, label %116, label %119, !dbg !1171

; <label>:116:                                    ; preds = %110
  %117 = bitcast %union.anon* %115 to i8**, !dbg !1172
  %118 = load i8*, i8** %117, align 8, !dbg !1172, !tbaa !741
  tail call void @free(i8* %118) #11, !dbg !1173
  br label %121, !dbg !1173

; <label>:119:                                    ; preds = %110
  %120 = getelementptr inbounds %union.anon, %union.anon* %115, i64 0, i32 0, i64 0, !dbg !1174
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %120) #11, !dbg !1175
  br label %121

; <label>:121:                                    ; preds = %116, %119
  %122 = bitcast %struct.valinfo* %47 to i8*, !dbg !1176
  tail call void @free(i8* %122) #11, !dbg !1177
  call void @llvm.dbg.value(metadata i64 0, metadata !1025, metadata !DIExpression()) #11, !dbg !1178
  %123 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1180
  %124 = bitcast i8* %123 to %struct.valinfo*, !dbg !1180
  call void @llvm.dbg.value(metadata %struct.valinfo* %124, metadata !1030, metadata !DIExpression()) #11, !dbg !1181
  %125 = bitcast i8* %123 to i32*, !dbg !1182
  store i32 0, i32* %125, align 8, !dbg !1183, !tbaa !849
  %126 = getelementptr inbounds i8, i8* %123, i64 8, !dbg !1184
  %127 = bitcast i8* %126 to %struct.__mpz_struct*, !dbg !1185
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* nonnull %127, i64 0) #11, !dbg !1186
  call void @llvm.dbg.value(metadata %struct.valinfo* %124, metadata !1062, metadata !DIExpression()), !dbg !1066
  br label %135, !dbg !1187

; <label>:128:                                    ; preds = %87
  call void @llvm.dbg.value(metadata %struct.valinfo* %47, metadata !987, metadata !DIExpression()) #11, !dbg !1188
  tail call void @free(i8* %79) #11, !dbg !1190
  br label %131, !dbg !1190

; <label>:129:                                    ; preds = %96
  %130 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %47, i64 0, i32 1, i32 0, i64 0, !dbg !1191
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %130) #11, !dbg !1192
  br label %131

; <label>:131:                                    ; preds = %128, %129
  %132 = bitcast %struct.valinfo* %47 to i8*, !dbg !1193
  tail call void @free(i8* %132) #11, !dbg !1194
  br label %135

; <label>:133:                                    ; preds = %6, %135, %1
  %134 = phi %struct.valinfo* [ %2, %1 ], [ %136, %135 ], [ %9, %6 ], !dbg !1195
  call void @llvm.dbg.value(metadata %struct.valinfo* %134, metadata !1062, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata %struct.valinfo* %134, metadata !1062, metadata !DIExpression()), !dbg !1066
  ret %struct.valinfo* %134, !dbg !1196

; <label>:135:                                    ; preds = %121, %131
  %136 = phi %struct.valinfo* [ %124, %121 ], [ %9, %131 ], !dbg !1197
  call void @llvm.dbg.value(metadata %struct.valinfo* %136, metadata !1062, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1067
  %137 = load i8**, i8*** @args, align 8, !dbg !1071, !tbaa !720
  %138 = load i8*, i8** %137, align 8, !dbg !1072, !tbaa !720
  %139 = icmp eq i8* %138, null, !dbg !1073
  br i1 %139, label %133, label %6, !dbg !1074, !llvm.loop !1198
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare void @__gmpz_clear(%struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_init_set_ui(%struct.__mpz_struct*, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval2(i1 zeroext) unnamed_addr #7 !dbg !29 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !62, metadata !DIExpression()), !dbg !1201
  %2 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0), !dbg !1202
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i8 0, metadata !67, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1205
  %3 = load i8**, i8*** @args, align 8, !dbg !1208, !tbaa !720
  %4 = load i8*, i8** %3, align 8, !dbg !1209, !tbaa !720
  %5 = icmp eq i8* %4, null, !dbg !1210
  br i1 %5, label %183, label %6, !dbg !1211

; <label>:6:                                      ; preds = %1, %170
  %7 = phi i8* [ %179, %170 ], [ %4, %1 ]
  %8 = phi i8** [ %178, %170 ], [ %3, %1 ]
  %9 = phi %struct.valinfo* [ %174, %170 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !63, metadata !DIExpression()), !dbg !1203
  %10 = tail call i32 @strcmp(i8* nonnull %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #15, !dbg !1212
  %11 = icmp eq i32 %10, 0, !dbg !1212
  %12 = zext i1 %11 to i64, !dbg !1213
  %13 = getelementptr inbounds i8*, i8** %8, i64 %12, !dbg !1213
  store i8** %13, i8*** @args, align 8, !dbg !1213, !tbaa !720
  br i1 %11, label %62, label %14, !dbg !1214

; <label>:14:                                     ; preds = %6
  %15 = load i8*, i8** %13, align 8, !dbg !1215, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1218
  %16 = icmp eq i8* %15, null, !dbg !1219
  br i1 %16, label %183, label %17, !dbg !1220

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @strcmp(i8* nonnull %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #15, !dbg !1221
  %19 = icmp eq i32 %18, 0, !dbg !1221
  %20 = zext i1 %19 to i64, !dbg !1222
  %21 = getelementptr inbounds i8*, i8** %13, i64 %20, !dbg !1222
  store i8** %21, i8*** @args, align 8, !dbg !1222, !tbaa !720
  br i1 %19, label %62, label %22, !dbg !1223

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %21, align 8, !dbg !1224, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1227
  %24 = icmp eq i8* %23, null, !dbg !1228
  br i1 %24, label %183, label %25, !dbg !1229

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @strcmp(i8* nonnull %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #15, !dbg !1230
  %27 = icmp eq i32 %26, 0, !dbg !1230
  %28 = zext i1 %27 to i64, !dbg !1231
  %29 = getelementptr inbounds i8*, i8** %21, i64 %28, !dbg !1231
  store i8** %29, i8*** @args, align 8, !dbg !1231, !tbaa !720
  br i1 %27, label %62, label %30, !dbg !1232

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %29, align 8, !dbg !1233, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1235
  %32 = icmp eq i8* %31, null, !dbg !1236
  br i1 %32, label %183, label %33, !dbg !1237

; <label>:33:                                     ; preds = %30
  %34 = tail call i32 @strcmp(i8* nonnull %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #15, !dbg !1238
  %35 = icmp eq i32 %34, 0, !dbg !1238
  %36 = zext i1 %35 to i64, !dbg !1239
  %37 = getelementptr inbounds i8*, i8** %29, i64 %36, !dbg !1239
  store i8** %37, i8*** @args, align 8, !dbg !1239, !tbaa !720
  br i1 %35, label %62, label %38, !dbg !1240

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %37, align 8, !dbg !1241, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1244
  %40 = icmp eq i8* %39, null, !dbg !1245
  br i1 %40, label %183, label %41, !dbg !1246

; <label>:41:                                     ; preds = %38
  %42 = tail call i32 @strcmp(i8* nonnull %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #15, !dbg !1247
  %43 = icmp eq i32 %42, 0, !dbg !1247
  %44 = zext i1 %43 to i64, !dbg !1248
  %45 = getelementptr inbounds i8*, i8** %37, i64 %44, !dbg !1248
  store i8** %45, i8*** @args, align 8, !dbg !1248, !tbaa !720
  br i1 %43, label %62, label %46, !dbg !1249

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %45, align 8, !dbg !1250, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1253
  %48 = icmp eq i8* %47, null, !dbg !1254
  br i1 %48, label %183, label %49, !dbg !1255

; <label>:49:                                     ; preds = %46
  %50 = tail call i32 @strcmp(i8* nonnull %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #15, !dbg !1256
  %51 = icmp eq i32 %50, 0, !dbg !1256
  %52 = zext i1 %51 to i64, !dbg !1257
  %53 = getelementptr inbounds i8*, i8** %45, i64 %52, !dbg !1257
  store i8** %53, i8*** @args, align 8, !dbg !1257, !tbaa !720
  br i1 %51, label %62, label %54, !dbg !1258

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %53, align 8, !dbg !1259, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1262
  %56 = icmp eq i8* %55, null, !dbg !1263
  br i1 %56, label %183, label %57, !dbg !1264

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @strcmp(i8* nonnull %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #15, !dbg !1265
  %59 = icmp eq i32 %58, 0, !dbg !1265
  %60 = zext i1 %59 to i64, !dbg !1266
  %61 = getelementptr inbounds i8*, i8** %53, i64 %60, !dbg !1266
  store i8** %61, i8*** @args, align 8, !dbg !1266, !tbaa !720
  br i1 %59, label %62, label %183, !dbg !1267

; <label>:62:                                     ; preds = %57, %49, %41, %25, %33, %17, %6
  %63 = phi i3 [ 0, %6 ], [ 1, %17 ], [ 2, %33 ], [ 2, %25 ], [ 3, %41 ], [ -4, %49 ], [ -3, %57 ]
  %64 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0), !dbg !1268
  call void @llvm.dbg.value(metadata %struct.valinfo* %64, metadata !64, metadata !DIExpression()), !dbg !1269
  %65 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 0, !dbg !1270
  br i1 %0, label %68, label %66, !dbg !1271

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !1272
  br label %149, !dbg !1271

; <label>:68:                                     ; preds = %62
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !1274, metadata !DIExpression()) #11, !dbg !1280
  %69 = load i32, i32* %65, align 8, !dbg !1282, !tbaa !849
  switch i32 %69, label %75 [
    i32 0, label %70
    i32 1, label %76
  ], !dbg !1283

; <label>:70:                                     ; preds = %68
  %71 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !1284
  %72 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0, i64 0, !dbg !1285
  %73 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %72) #11, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %73, metadata !1277, metadata !DIExpression()) #11, !dbg !1287
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %72) #11, !dbg !1288
  %74 = bitcast %union.anon* %71 to i8**, !dbg !1289
  store i8* %73, i8** %74, align 8, !dbg !1290, !tbaa !741
  store i32 1, i32* %65, align 8, !dbg !1291, !tbaa !849
  br label %76, !dbg !1292

; <label>:75:                                     ; preds = %68
  tail call void @abort() #16, !dbg !1293
  unreachable, !dbg !1293

; <label>:76:                                     ; preds = %68, %70
  call void @llvm.dbg.value(metadata %struct.valinfo* %64, metadata !1274, metadata !DIExpression()) #11, !dbg !1294
  %77 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %64, i64 0, i32 0, !dbg !1296
  %78 = load i32, i32* %77, align 8, !dbg !1296, !tbaa !849
  switch i32 %78, label %84 [
    i32 0, label %79
    i32 1, label %85
  ], !dbg !1297

; <label>:79:                                     ; preds = %76
  %80 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %64, i64 0, i32 1, !dbg !1298
  %81 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0, i64 0, !dbg !1299
  %82 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %81) #11, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %82, metadata !1277, metadata !DIExpression()) #11, !dbg !1301
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %81) #11, !dbg !1302
  %83 = bitcast %union.anon* %80 to i8**, !dbg !1303
  store i8* %82, i8** %83, align 8, !dbg !1304, !tbaa !741
  store i32 1, i32* %77, align 8, !dbg !1305, !tbaa !849
  br label %85, !dbg !1306

; <label>:84:                                     ; preds = %76
  tail call void @abort() #16, !dbg !1307
  unreachable, !dbg !1307

; <label>:85:                                     ; preds = %76, %79
  %86 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !1308
  %87 = bitcast %union.anon* %86 to i8**, !dbg !1310
  %88 = load i8*, i8** %87, align 8, !dbg !1310, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %88, metadata !1311, metadata !DIExpression()), !dbg !1314
  %89 = load i8, i8* %88, align 1, !dbg !1316, !tbaa !741
  %90 = icmp eq i8 %89, 45, !dbg !1317
  %91 = zext i1 %90 to i64, !dbg !1318
  %92 = getelementptr inbounds i8, i8* %88, i64 %91, !dbg !1318
  call void @llvm.dbg.value(metadata i8* %92, metadata !1311, metadata !DIExpression()), !dbg !1314
  %93 = load i8, i8* %92, align 1, !dbg !1319, !tbaa !741
  br label %94, !dbg !1321

; <label>:94:                                     ; preds = %100, %85
  %95 = phi i8 [ %93, %85 ], [ %102, %100 ], !dbg !1319
  %96 = phi i8* [ %92, %85 ], [ %101, %100 ], !dbg !1322
  call void @llvm.dbg.value(metadata i8* %96, metadata !1311, metadata !DIExpression()), !dbg !1314
  %97 = sext i8 %95 to i32, !dbg !1319
  %98 = add nsw i32 %97, -48, !dbg !1319
  %99 = icmp ult i32 %98, 10, !dbg !1319
  br i1 %99, label %100, label %125, !dbg !1323

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %101, metadata !1311, metadata !DIExpression()), !dbg !1314
  %102 = load i8, i8* %101, align 1, !dbg !1325, !tbaa !741
  %103 = icmp eq i8 %102, 0, !dbg !1319
  br i1 %103, label %104, label %94, !dbg !1319, !llvm.loop !1326

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %64, i64 0, i32 1, !dbg !1329
  %106 = bitcast %union.anon* %105 to i8**, !dbg !1330
  %107 = load i8*, i8** %106, align 8, !dbg !1330, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %107, metadata !1311, metadata !DIExpression()), !dbg !1331
  %108 = load i8, i8* %107, align 1, !dbg !1333, !tbaa !741
  %109 = icmp eq i8 %108, 45, !dbg !1334
  %110 = zext i1 %109 to i64, !dbg !1335
  %111 = getelementptr inbounds i8, i8* %107, i64 %110, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %111, metadata !1311, metadata !DIExpression()), !dbg !1331
  %112 = load i8, i8* %111, align 1, !dbg !1336, !tbaa !741
  br label %113, !dbg !1337

; <label>:113:                                    ; preds = %119, %104
  %114 = phi i8 [ %112, %104 ], [ %121, %119 ], !dbg !1336
  %115 = phi i8* [ %111, %104 ], [ %120, %119 ], !dbg !1338
  call void @llvm.dbg.value(metadata i8* %115, metadata !1311, metadata !DIExpression()), !dbg !1331
  %116 = sext i8 %114 to i32, !dbg !1336
  %117 = add nsw i32 %116, -48, !dbg !1336
  %118 = icmp ult i32 %117, 10, !dbg !1336
  br i1 %118, label %119, label %128, !dbg !1339

; <label>:119:                                    ; preds = %113
  %120 = getelementptr inbounds i8, i8* %115, i64 1, !dbg !1340
  call void @llvm.dbg.value(metadata i8* %120, metadata !1311, metadata !DIExpression()), !dbg !1331
  %121 = load i8, i8* %120, align 1, !dbg !1341, !tbaa !741
  %122 = icmp eq i8 %121, 0, !dbg !1336
  br i1 %122, label %123, label %113, !dbg !1336, !llvm.loop !1326

; <label>:123:                                    ; preds = %119
  %124 = tail call i32 @strintcmp(i8* %88, i8* %107) #15, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %124, metadata !68, metadata !DIExpression()), !dbg !1343
  br label %134, !dbg !1344

; <label>:125:                                    ; preds = %94
  %126 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %64, i64 0, i32 1, !dbg !1345
  %127 = bitcast %union.anon* %126 to i8**, !dbg !1347
  br label %128, !dbg !1348

; <label>:128:                                    ; preds = %113, %125
  %129 = phi i8** [ %127, %125 ], [ %106, %113 ], !dbg !1347
  %130 = tail call i32* @__errno_location() #18, !dbg !1348
  store i32 0, i32* %130, align 4, !dbg !1349, !tbaa !809
  %131 = load i8*, i8** %87, align 8, !dbg !1350, !tbaa !741
  %132 = load i8*, i8** %129, align 8, !dbg !1347, !tbaa !741
  %133 = tail call i32 @strcoll(i8* %131, i8* %132) #15, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %133, metadata !68, metadata !DIExpression()), !dbg !1343
  br label %134, !dbg !1352

; <label>:134:                                    ; preds = %128, %123
  %135 = phi i32 [ %124, %123 ], [ %133, %128 ], !dbg !1353
  call void @llvm.dbg.value(metadata i32 %135, metadata !68, metadata !DIExpression()), !dbg !1343
  switch i3 %63, label %148 [
    i3 0, label %136
    i3 1, label %138
    i3 2, label %140
    i3 3, label %142
    i3 -4, label %144
    i3 -3, label %146
  ], !dbg !1354

; <label>:136:                                    ; preds = %134
  %137 = icmp slt i32 %135, 0, !dbg !1355
  br label %149, !dbg !1357

; <label>:138:                                    ; preds = %134
  %139 = icmp slt i32 %135, 1, !dbg !1358
  br label %149, !dbg !1359

; <label>:140:                                    ; preds = %134
  %141 = icmp eq i32 %135, 0, !dbg !1360
  br label %149, !dbg !1361

; <label>:142:                                    ; preds = %134
  %143 = icmp ne i32 %135, 0, !dbg !1362
  br label %149, !dbg !1363

; <label>:144:                                    ; preds = %134
  %145 = icmp sgt i32 %135, -1, !dbg !1364
  br label %149, !dbg !1365

; <label>:146:                                    ; preds = %134
  %147 = icmp sgt i32 %135, 0, !dbg !1366
  br label %149, !dbg !1367

; <label>:148:                                    ; preds = %134
  tail call void @abort() #16, !dbg !1368
  unreachable, !dbg !1368

; <label>:149:                                    ; preds = %66, %136, %138, %140, %142, %144, %146
  %150 = phi %union.anon* [ %67, %66 ], [ %86, %136 ], [ %86, %138 ], [ %86, %140 ], [ %86, %142 ], [ %86, %144 ], [ %86, %146 ], !dbg !1272
  %151 = phi i1 [ false, %66 ], [ %137, %136 ], [ %139, %138 ], [ %141, %140 ], [ %143, %142 ], [ %145, %144 ], [ %147, %146 ], !dbg !1270
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !987, metadata !DIExpression()) #11, !dbg !1369
  %152 = load i32, i32* %65, align 8, !dbg !1370, !tbaa !849
  %153 = icmp eq i32 %152, 1, !dbg !1371
  br i1 %153, label %154, label %157, !dbg !1372

; <label>:154:                                    ; preds = %149
  %155 = bitcast %union.anon* %150 to i8**, !dbg !1373
  %156 = load i8*, i8** %155, align 8, !dbg !1373, !tbaa !741
  tail call void @free(i8* %156) #11, !dbg !1374
  br label %159, !dbg !1374

; <label>:157:                                    ; preds = %149
  %158 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, i32 0, i64 0, !dbg !1375
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %158) #11, !dbg !1376
  br label %159

; <label>:159:                                    ; preds = %154, %157
  %160 = bitcast %struct.valinfo* %9 to i8*, !dbg !1377
  tail call void @free(i8* %160) #11, !dbg !1378
  call void @llvm.dbg.value(metadata %struct.valinfo* %64, metadata !987, metadata !DIExpression()) #11, !dbg !1379
  %161 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %64, i64 0, i32 0, !dbg !1381
  %162 = load i32, i32* %161, align 8, !dbg !1381, !tbaa !849
  %163 = icmp eq i32 %162, 1, !dbg !1382
  %164 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %64, i64 0, i32 1, !dbg !1383
  br i1 %163, label %165, label %168, !dbg !1384

; <label>:165:                                    ; preds = %159
  %166 = bitcast %union.anon* %164 to i8**, !dbg !1385
  %167 = load i8*, i8** %166, align 8, !dbg !1385, !tbaa !741
  tail call void @free(i8* %167) #11, !dbg !1386
  br label %170, !dbg !1386

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds %union.anon, %union.anon* %164, i64 0, i32 0, i64 0, !dbg !1387
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %169) #11, !dbg !1388
  br label %170

; <label>:170:                                    ; preds = %168, %165
  %171 = bitcast %struct.valinfo* %64 to i8*, !dbg !1389
  tail call void @free(i8* %171) #11, !dbg !1390
  %172 = zext i1 %151 to i64, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %172, metadata !1025, metadata !DIExpression()) #11, !dbg !1392
  %173 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1394
  %174 = bitcast i8* %173 to %struct.valinfo*, !dbg !1394
  call void @llvm.dbg.value(metadata %struct.valinfo* %174, metadata !1030, metadata !DIExpression()) #11, !dbg !1395
  %175 = bitcast i8* %173 to i32*, !dbg !1396
  store i32 0, i32* %175, align 8, !dbg !1397, !tbaa !849
  %176 = getelementptr inbounds i8, i8* %173, i64 8, !dbg !1398
  %177 = bitcast i8* %176 to %struct.__mpz_struct*, !dbg !1399
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* nonnull %177, i64 %172) #11, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.valinfo* %174, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i8 0, metadata !67, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1205
  %178 = load i8**, i8*** @args, align 8, !dbg !1208, !tbaa !720
  %179 = load i8*, i8** %178, align 8, !dbg !1209, !tbaa !720
  %180 = icmp eq i8* %179, null, !dbg !1210
  br i1 %180, label %181, label %6, !dbg !1211

; <label>:181:                                    ; preds = %170
  %182 = bitcast i8* %173 to %struct.valinfo*, !dbg !1394
  br label %183, !dbg !1401

; <label>:183:                                    ; preds = %181, %14, %22, %30, %38, %46, %54, %57, %1
  %184 = phi %struct.valinfo* [ %2, %1 ], [ %182, %181 ], [ %9, %14 ], [ %9, %22 ], [ %9, %30 ], [ %9, %38 ], [ %9, %46 ], [ %9, %54 ], [ %9, %57 ], !dbg !1270
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* %184, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.valinfo* undef, metadata !63, metadata !DIExpression()), !dbg !1203
  ret %struct.valinfo* %184, !dbg !1401
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval3(i1 zeroext) unnamed_addr #7 !dbg !79 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !81, metadata !DIExpression()), !dbg !1402
  %2 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0), !dbg !1403
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !82, metadata !DIExpression()), !dbg !1404
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %5 = bitcast %union.anon* %4 to i8**
  %6 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0, i64 0
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1405
  %8 = load i8**, i8*** @args, align 8, !dbg !1409, !tbaa !720
  %9 = load i8*, i8** %8, align 8, !dbg !1410, !tbaa !720
  %10 = icmp eq i8* %9, null, !dbg !1411
  br i1 %10, label %26, label %11, !dbg !1412

; <label>:11:                                     ; preds = %1, %96
  %12 = phi i8* [ %99, %96 ], [ %9, %1 ]
  %13 = phi i8** [ %98, %96 ], [ %8, %1 ]
  %14 = tail call i32 @strcmp(i8* nonnull %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #15, !dbg !1413
  %15 = icmp eq i32 %14, 0, !dbg !1413
  %16 = zext i1 %15 to i64, !dbg !1414
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16, !dbg !1414
  store i8** %17, i8*** @args, align 8, !dbg !1414, !tbaa !720
  br i1 %15, label %27, label %18, !dbg !1415

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** %17, align 8, !dbg !1416, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1419
  %20 = icmp eq i8* %19, null, !dbg !1420
  br i1 %20, label %26, label %21, !dbg !1421

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @strcmp(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #15, !dbg !1422
  %23 = icmp eq i32 %22, 0, !dbg !1422
  %24 = zext i1 %23 to i64, !dbg !1423
  %25 = getelementptr inbounds i8*, i8** %17, i64 %24, !dbg !1423
  store i8** %25, i8*** @args, align 8, !dbg !1423, !tbaa !720
  br i1 %23, label %27, label %26, !dbg !1424

; <label>:26:                                     ; preds = %21, %18, %96, %1
  ret %struct.valinfo* %2, !dbg !1425

; <label>:27:                                     ; preds = %21, %11
  %28 = phi i32 [ 0, %11 ], [ 1, %21 ], !dbg !1426
  call void @llvm.dbg.value(metadata i32 %28, metadata !84, metadata !DIExpression()), !dbg !1427
  %29 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0), !dbg !1428
  call void @llvm.dbg.value(metadata %struct.valinfo* %29, metadata !83, metadata !DIExpression()), !dbg !1429
  br i1 %0, label %32, label %30, !dbg !1430

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 0, !dbg !1431
  br label %86, !dbg !1430

; <label>:32:                                     ; preds = %27
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !1433, metadata !DIExpression()) #11, !dbg !1439
  %33 = load i32, i32* %3, align 8, !dbg !1444, !tbaa !849
  switch i32 %33, label %53 [
    i32 0, label %54
    i32 1, label %34
  ], !dbg !1445

; <label>:34:                                     ; preds = %32
  %35 = load i8*, i8** %5, align 8, !dbg !1446, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %35, metadata !1436, metadata !DIExpression()) #11, !dbg !1447
  call void @llvm.dbg.value(metadata i8* %35, metadata !1311, metadata !DIExpression()) #11, !dbg !1448
  %36 = load i8, i8* %35, align 1, !dbg !1451, !tbaa !741
  %37 = icmp eq i8 %36, 45, !dbg !1452
  %38 = zext i1 %37 to i64, !dbg !1453
  %39 = getelementptr inbounds i8, i8* %35, i64 %38, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %39, metadata !1311, metadata !DIExpression()) #11, !dbg !1448
  %40 = load i8, i8* %39, align 1, !dbg !1454, !tbaa !741
  br label %41, !dbg !1455

; <label>:41:                                     ; preds = %47, %34
  %42 = phi i8 [ %40, %34 ], [ %49, %47 ], !dbg !1454
  %43 = phi i8* [ %39, %34 ], [ %48, %47 ], !dbg !1456
  call void @llvm.dbg.value(metadata i8* %43, metadata !1311, metadata !DIExpression()) #11, !dbg !1448
  %44 = sext i8 %42 to i32, !dbg !1454
  %45 = add nsw i32 %44, -48, !dbg !1454
  %46 = icmp ult i32 %45, 10, !dbg !1454
  br i1 %46, label %47, label %80, !dbg !1457

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1458
  call void @llvm.dbg.value(metadata i8* %48, metadata !1311, metadata !DIExpression()) #11, !dbg !1448
  %49 = load i8, i8* %48, align 1, !dbg !1459, !tbaa !741
  %50 = icmp eq i8 %49, 0, !dbg !1454
  br i1 %50, label %51, label %41, !dbg !1454, !llvm.loop !1326

; <label>:51:                                     ; preds = %47
  %52 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* nonnull %7, i8* %35, i32 10) #11, !dbg !1460
  tail call void @free(i8* %35) #11, !dbg !1462
  store i32 0, i32* %3, align 8, !dbg !1463, !tbaa !849
  br label %54, !dbg !1464

; <label>:53:                                     ; preds = %32
  tail call void @abort() #16, !dbg !1465
  unreachable, !dbg !1465

; <label>:54:                                     ; preds = %32, %51
  call void @llvm.dbg.value(metadata %struct.valinfo* %29, metadata !1433, metadata !DIExpression()) #11, !dbg !1466
  %55 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 0, !dbg !1468
  %56 = load i32, i32* %55, align 8, !dbg !1468, !tbaa !849
  switch i32 %56, label %79 [
    i32 0, label %82
    i32 1, label %57
  ], !dbg !1469

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, !dbg !1470
  %59 = bitcast %union.anon* %58 to i8**, !dbg !1471
  %60 = load i8*, i8** %59, align 8, !dbg !1471, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %60, metadata !1436, metadata !DIExpression()) #11, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %60, metadata !1311, metadata !DIExpression()) #11, !dbg !1473
  %61 = load i8, i8* %60, align 1, !dbg !1475, !tbaa !741
  %62 = icmp eq i8 %61, 45, !dbg !1476
  %63 = zext i1 %62 to i64, !dbg !1477
  %64 = getelementptr inbounds i8, i8* %60, i64 %63, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %64, metadata !1311, metadata !DIExpression()) #11, !dbg !1473
  %65 = load i8, i8* %64, align 1, !dbg !1478, !tbaa !741
  br label %66, !dbg !1479

; <label>:66:                                     ; preds = %72, %57
  %67 = phi i8 [ %65, %57 ], [ %74, %72 ], !dbg !1478
  %68 = phi i8* [ %64, %57 ], [ %73, %72 ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %68, metadata !1311, metadata !DIExpression()) #11, !dbg !1473
  %69 = sext i8 %67 to i32, !dbg !1478
  %70 = add nsw i32 %69, -48, !dbg !1478
  %71 = icmp ult i32 %70, 10, !dbg !1478
  br i1 %71, label %72, label %80, !dbg !1481

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1482
  call void @llvm.dbg.value(metadata i8* %73, metadata !1311, metadata !DIExpression()) #11, !dbg !1473
  %74 = load i8, i8* %73, align 1, !dbg !1483, !tbaa !741
  %75 = icmp eq i8 %74, 0, !dbg !1478
  br i1 %75, label %76, label %66, !dbg !1478, !llvm.loop !1326

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0, i64 0, !dbg !1484
  %78 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* nonnull %77, i8* %60, i32 10) #11, !dbg !1485
  tail call void @free(i8* %60) #11, !dbg !1486
  store i32 0, i32* %55, align 8, !dbg !1487, !tbaa !849
  br label %82, !dbg !1488

; <label>:79:                                     ; preds = %54
  tail call void @abort() #16, !dbg !1489
  unreachable, !dbg !1489

; <label>:80:                                     ; preds = %41, %66
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1490
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %81) #11, !dbg !1490
  unreachable, !dbg !1490

; <label>:82:                                     ; preds = %54, %76
  %83 = icmp eq i32 %28, 0, !dbg !1491
  %84 = select i1 %83, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_add, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_sub, !dbg !1492
  %85 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, i32 0, i64 0, !dbg !1493
  tail call void %84(%struct.__mpz_struct* nonnull %6, %struct.__mpz_struct* nonnull %6, %struct.__mpz_struct* nonnull %85) #11, !dbg !1494, !callees !1495
  br label %86, !dbg !1496

; <label>:86:                                     ; preds = %30, %82
  %87 = phi i32* [ %31, %30 ], [ %55, %82 ], !dbg !1431
  call void @llvm.dbg.value(metadata %struct.valinfo* %29, metadata !987, metadata !DIExpression()) #11, !dbg !1497
  %88 = load i32, i32* %87, align 8, !dbg !1431, !tbaa !849
  %89 = icmp eq i32 %88, 1, !dbg !1498
  %90 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, !dbg !1499
  br i1 %89, label %91, label %94, !dbg !1500

; <label>:91:                                     ; preds = %86
  %92 = bitcast %union.anon* %90 to i8**, !dbg !1501
  %93 = load i8*, i8** %92, align 8, !dbg !1501, !tbaa !741
  tail call void @free(i8* %93) #11, !dbg !1502
  br label %96, !dbg !1502

; <label>:94:                                     ; preds = %86
  %95 = getelementptr inbounds %union.anon, %union.anon* %90, i64 0, i32 0, i64 0, !dbg !1503
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %95) #11, !dbg !1504
  br label %96

; <label>:96:                                     ; preds = %91, %94
  %97 = bitcast %struct.valinfo* %29 to i8*, !dbg !1505
  tail call void @free(i8* %97) #11, !dbg !1506
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1405
  %98 = load i8**, i8*** @args, align 8, !dbg !1409, !tbaa !720
  %99 = load i8*, i8** %98, align 8, !dbg !1410, !tbaa !720
  %100 = icmp eq i8* %99, null, !dbg !1411
  br i1 %100, label %26, label %11, !dbg !1412, !llvm.loop !1507
}

declare i8* @__gmpz_get_str(i8*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval4(i1 zeroext) unnamed_addr #7 !dbg !89 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !91, metadata !DIExpression()), !dbg !1510
  %2 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0), !dbg !1511
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !92, metadata !DIExpression()), !dbg !1512
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %5 = bitcast %union.anon* %4 to i8**
  %6 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0, i64 0
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1513
  %8 = load i8**, i8*** @args, align 8, !dbg !1517, !tbaa !720
  %9 = load i8*, i8** %8, align 8, !dbg !1518, !tbaa !720
  %10 = icmp eq i8* %9, null, !dbg !1519
  br i1 %10, label %34, label %11, !dbg !1520

; <label>:11:                                     ; preds = %1, %114
  %12 = phi i8* [ %117, %114 ], [ %9, %1 ]
  %13 = phi i8** [ %116, %114 ], [ %8, %1 ]
  %14 = tail call i32 @strcmp(i8* nonnull %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #15, !dbg !1521
  %15 = icmp eq i32 %14, 0, !dbg !1521
  %16 = zext i1 %15 to i64, !dbg !1522
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16, !dbg !1522
  store i8** %17, i8*** @args, align 8, !dbg !1522, !tbaa !720
  br i1 %15, label %35, label %18, !dbg !1523

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** %17, align 8, !dbg !1524, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1527
  %20 = icmp eq i8* %19, null, !dbg !1528
  br i1 %20, label %34, label %21, !dbg !1529

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @strcmp(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)) #15, !dbg !1530
  %23 = icmp eq i32 %22, 0, !dbg !1530
  %24 = zext i1 %23 to i64, !dbg !1531
  %25 = getelementptr inbounds i8*, i8** %17, i64 %24, !dbg !1531
  store i8** %25, i8*** @args, align 8, !dbg !1531, !tbaa !720
  br i1 %23, label %35, label %26, !dbg !1532

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %25, align 8, !dbg !1533, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1536
  %28 = icmp eq i8* %27, null, !dbg !1537
  br i1 %28, label %34, label %29, !dbg !1538

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @strcmp(i8* nonnull %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #15, !dbg !1539
  %31 = icmp eq i32 %30, 0, !dbg !1539
  %32 = zext i1 %31 to i64, !dbg !1540
  %33 = getelementptr inbounds i8*, i8** %25, i64 %32, !dbg !1540
  store i8** %33, i8*** @args, align 8, !dbg !1540, !tbaa !720
  br i1 %31, label %35, label %34, !dbg !1541

; <label>:34:                                     ; preds = %29, %26, %18, %114, %1
  ret %struct.valinfo* %2, !dbg !1542

; <label>:35:                                     ; preds = %29, %21, %11
  %36 = phi i32 [ 0, %11 ], [ 1, %21 ], [ 2, %29 ], !dbg !1543
  call void @llvm.dbg.value(metadata i32 %36, metadata !94, metadata !DIExpression()), !dbg !1544
  %37 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0), !dbg !1545
  call void @llvm.dbg.value(metadata %struct.valinfo* %37, metadata !93, metadata !DIExpression()), !dbg !1546
  br i1 %0, label %40, label %38, !dbg !1547

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 0, !dbg !1548
  br label %104, !dbg !1547

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !1433, metadata !DIExpression()) #11, !dbg !1550
  %41 = load i32, i32* %3, align 8, !dbg !1555, !tbaa !849
  switch i32 %41, label %61 [
    i32 0, label %62
    i32 1, label %42
  ], !dbg !1556

; <label>:42:                                     ; preds = %40
  %43 = load i8*, i8** %5, align 8, !dbg !1557, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %43, metadata !1436, metadata !DIExpression()) #11, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %43, metadata !1311, metadata !DIExpression()) #11, !dbg !1559
  %44 = load i8, i8* %43, align 1, !dbg !1561, !tbaa !741
  %45 = icmp eq i8 %44, 45, !dbg !1562
  %46 = zext i1 %45 to i64, !dbg !1563
  %47 = getelementptr inbounds i8, i8* %43, i64 %46, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %47, metadata !1311, metadata !DIExpression()) #11, !dbg !1559
  %48 = load i8, i8* %47, align 1, !dbg !1564, !tbaa !741
  br label %49, !dbg !1565

; <label>:49:                                     ; preds = %55, %42
  %50 = phi i8 [ %48, %42 ], [ %57, %55 ], !dbg !1564
  %51 = phi i8* [ %47, %42 ], [ %56, %55 ], !dbg !1566
  call void @llvm.dbg.value(metadata i8* %51, metadata !1311, metadata !DIExpression()) #11, !dbg !1559
  %52 = sext i8 %50 to i32, !dbg !1564
  %53 = add nsw i32 %52, -48, !dbg !1564
  %54 = icmp ult i32 %53, 10, !dbg !1564
  br i1 %54, label %55, label %88, !dbg !1567

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1568
  call void @llvm.dbg.value(metadata i8* %56, metadata !1311, metadata !DIExpression()) #11, !dbg !1559
  %57 = load i8, i8* %56, align 1, !dbg !1569, !tbaa !741
  %58 = icmp eq i8 %57, 0, !dbg !1564
  br i1 %58, label %59, label %49, !dbg !1564, !llvm.loop !1326

; <label>:59:                                     ; preds = %55
  %60 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* nonnull %7, i8* %43, i32 10) #11, !dbg !1570
  tail call void @free(i8* %43) #11, !dbg !1571
  store i32 0, i32* %3, align 8, !dbg !1572, !tbaa !849
  br label %62, !dbg !1573

; <label>:61:                                     ; preds = %40
  tail call void @abort() #16, !dbg !1574
  unreachable, !dbg !1574

; <label>:62:                                     ; preds = %40, %59
  call void @llvm.dbg.value(metadata %struct.valinfo* %37, metadata !1433, metadata !DIExpression()) #11, !dbg !1575
  %63 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 0, !dbg !1577
  %64 = load i32, i32* %63, align 8, !dbg !1577, !tbaa !849
  switch i32 %64, label %87 [
    i32 0, label %90
    i32 1, label %65
  ], !dbg !1578

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 1, !dbg !1579
  %67 = bitcast %union.anon* %66 to i8**, !dbg !1580
  %68 = load i8*, i8** %67, align 8, !dbg !1580, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %68, metadata !1436, metadata !DIExpression()) #11, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %68, metadata !1311, metadata !DIExpression()) #11, !dbg !1582
  %69 = load i8, i8* %68, align 1, !dbg !1584, !tbaa !741
  %70 = icmp eq i8 %69, 45, !dbg !1585
  %71 = zext i1 %70 to i64, !dbg !1586
  %72 = getelementptr inbounds i8, i8* %68, i64 %71, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %72, metadata !1311, metadata !DIExpression()) #11, !dbg !1582
  %73 = load i8, i8* %72, align 1, !dbg !1587, !tbaa !741
  br label %74, !dbg !1588

; <label>:74:                                     ; preds = %80, %65
  %75 = phi i8 [ %73, %65 ], [ %82, %80 ], !dbg !1587
  %76 = phi i8* [ %72, %65 ], [ %81, %80 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8* %76, metadata !1311, metadata !DIExpression()) #11, !dbg !1582
  %77 = sext i8 %75 to i32, !dbg !1587
  %78 = add nsw i32 %77, -48, !dbg !1587
  %79 = icmp ult i32 %78, 10, !dbg !1587
  br i1 %79, label %80, label %88, !dbg !1590

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1591
  call void @llvm.dbg.value(metadata i8* %81, metadata !1311, metadata !DIExpression()) #11, !dbg !1582
  %82 = load i8, i8* %81, align 1, !dbg !1592, !tbaa !741
  %83 = icmp eq i8 %82, 0, !dbg !1587
  br i1 %83, label %84, label %74, !dbg !1587, !llvm.loop !1326

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0, i64 0, !dbg !1593
  %86 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* nonnull %85, i8* %68, i32 10) #11, !dbg !1594
  tail call void @free(i8* %68) #11, !dbg !1595
  store i32 0, i32* %63, align 8, !dbg !1596, !tbaa !849
  br label %90, !dbg !1597

; <label>:87:                                     ; preds = %62
  tail call void @abort() #16, !dbg !1598
  unreachable, !dbg !1598

; <label>:88:                                     ; preds = %49, %74
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1599
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %89) #11, !dbg !1599
  unreachable, !dbg !1599

; <label>:90:                                     ; preds = %62, %84
  %91 = icmp eq i32 %36, 0, !dbg !1600
  br i1 %91, label %101, label %92, !dbg !1600

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1602
  %94 = load i32, i32* %93, align 4, !dbg !1602, !tbaa !877
  %95 = icmp eq i32 %94, 0, !dbg !1602
  br i1 %95, label %96, label %98, !dbg !1603

; <label>:96:                                     ; preds = %92
  %97 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #11, !dbg !1604
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %97) #11, !dbg !1604
  unreachable, !dbg !1604

; <label>:98:                                     ; preds = %92
  %99 = icmp eq i32 %36, 1, !dbg !1605
  %100 = select i1 %99, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_q, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_r, !dbg !1606
  br label %101, !dbg !1607

; <label>:101:                                    ; preds = %90, %98
  %102 = phi void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* [ %100, %98 ], [ @__gmpz_mul, %90 ], !dbg !1607
  %103 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 1, i32 0, i64 0, !dbg !1608
  tail call void %102(%struct.__mpz_struct* nonnull %6, %struct.__mpz_struct* nonnull %6, %struct.__mpz_struct* nonnull %103) #11, !dbg !1609, !callees !1610
  br label %104, !dbg !1611

; <label>:104:                                    ; preds = %38, %101
  %105 = phi i32* [ %39, %38 ], [ %63, %101 ], !dbg !1548
  call void @llvm.dbg.value(metadata %struct.valinfo* %37, metadata !987, metadata !DIExpression()) #11, !dbg !1612
  %106 = load i32, i32* %105, align 8, !dbg !1548, !tbaa !849
  %107 = icmp eq i32 %106, 1, !dbg !1613
  %108 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 1, !dbg !1614
  br i1 %107, label %109, label %112, !dbg !1615

; <label>:109:                                    ; preds = %104
  %110 = bitcast %union.anon* %108 to i8**, !dbg !1616
  %111 = load i8*, i8** %110, align 8, !dbg !1616, !tbaa !741
  tail call void @free(i8* %111) #11, !dbg !1617
  br label %114, !dbg !1617

; <label>:112:                                    ; preds = %104
  %113 = getelementptr inbounds %union.anon, %union.anon* %108, i64 0, i32 0, i64 0, !dbg !1618
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %113) #11, !dbg !1619
  br label %114

; <label>:114:                                    ; preds = %109, %112
  %115 = bitcast %struct.valinfo* %37 to i8*, !dbg !1620
  tail call void @free(i8* %115) #11, !dbg !1621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1513
  %116 = load i8**, i8*** @args, align 8, !dbg !1517, !tbaa !720
  %117 = load i8*, i8** %116, align 8, !dbg !1518, !tbaa !720
  %118 = icmp eq i8* %117, null, !dbg !1519
  br i1 %118, label %34, label %11, !dbg !1520, !llvm.loop !1622
}

declare i32 @__gmpz_init_set_str(%struct.__mpz_struct*, i8*, i32) local_unnamed_addr #3

declare void @__gmpz_add(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_sub(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval5(i1 zeroext) unnamed_addr #7 !dbg !1625 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !1627, metadata !DIExpression()), !dbg !1631
  %2 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1632
  call void @llvm.dbg.value(metadata %struct.valinfo* %2, metadata !1628, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1634
  %3 = load i8**, i8*** @args, align 8, !dbg !1638, !tbaa !720
  %4 = load i8*, i8** %3, align 8, !dbg !1639, !tbaa !720
  %5 = icmp eq i8* %4, null, !dbg !1640
  br i1 %5, label %45, label %6, !dbg !1641

; <label>:6:                                      ; preds = %1, %40
  %7 = phi i8* [ %43, %40 ], [ %4, %1 ]
  %8 = phi i8** [ %42, %40 ], [ %3, %1 ]
  %9 = phi %struct.valinfo* [ %30, %40 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !1628, metadata !DIExpression()), !dbg !1633
  %10 = tail call i32 @strcmp(i8* nonnull %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #15, !dbg !1642
  %11 = icmp eq i32 %10, 0, !dbg !1642
  %12 = zext i1 %11 to i64, !dbg !1643
  %13 = getelementptr inbounds i8*, i8** %8, i64 %12, !dbg !1643
  store i8** %13, i8*** @args, align 8, !dbg !1643, !tbaa !720
  br i1 %11, label %14, label %45, !dbg !1644

; <label>:14:                                     ; preds = %6
  %15 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1645
  call void @llvm.dbg.value(metadata %struct.valinfo* %15, metadata !1629, metadata !DIExpression()), !dbg !1647
  br i1 %0, label %16, label %29, !dbg !1648

; <label>:16:                                     ; preds = %14
  %17 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %9, %struct.valinfo* %15), !dbg !1649
  call void @llvm.dbg.value(metadata %struct.valinfo* %17, metadata !1630, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata %struct.valinfo* %9, metadata !987, metadata !DIExpression()) #11, !dbg !1653
  %18 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 0, !dbg !1655
  %19 = load i32, i32* %18, align 8, !dbg !1655, !tbaa !849
  %20 = icmp eq i32 %19, 1, !dbg !1656
  %21 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %9, i64 0, i32 1, !dbg !1657
  br i1 %20, label %22, label %25, !dbg !1658

; <label>:22:                                     ; preds = %16
  %23 = bitcast %union.anon* %21 to i8**, !dbg !1659
  %24 = load i8*, i8** %23, align 8, !dbg !1659, !tbaa !741
  tail call void @free(i8* %24) #11, !dbg !1660
  br label %27, !dbg !1660

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0, i64 0, !dbg !1661
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %26) #11, !dbg !1662
  br label %27

; <label>:27:                                     ; preds = %22, %25
  %28 = bitcast %struct.valinfo* %9 to i8*, !dbg !1663
  tail call void @free(i8* %28) #11, !dbg !1664
  call void @llvm.dbg.value(metadata %struct.valinfo* %17, metadata !1628, metadata !DIExpression()), !dbg !1633
  br label %29, !dbg !1665

; <label>:29:                                     ; preds = %27, %14
  %30 = phi %struct.valinfo* [ %17, %27 ], [ %9, %14 ], !dbg !1666
  call void @llvm.dbg.value(metadata %struct.valinfo* %15, metadata !987, metadata !DIExpression()) #11, !dbg !1667
  %31 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %15, i64 0, i32 0, !dbg !1669
  %32 = load i32, i32* %31, align 8, !dbg !1669, !tbaa !849
  %33 = icmp eq i32 %32, 1, !dbg !1670
  %34 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %15, i64 0, i32 1, !dbg !1671
  br i1 %33, label %35, label %38, !dbg !1672

; <label>:35:                                     ; preds = %29
  %36 = bitcast %union.anon* %34 to i8**, !dbg !1673
  %37 = load i8*, i8** %36, align 8, !dbg !1673, !tbaa !741
  tail call void @free(i8* %37) #11, !dbg !1674
  br label %40, !dbg !1674

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0, i64 0, !dbg !1675
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %39) #11, !dbg !1676
  br label %40

; <label>:40:                                     ; preds = %35, %38
  %41 = bitcast %struct.valinfo* %15 to i8*, !dbg !1677
  tail call void @free(i8* %41) #11, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.valinfo* %30, metadata !1628, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1634
  %42 = load i8**, i8*** @args, align 8, !dbg !1638, !tbaa !720
  %43 = load i8*, i8** %42, align 8, !dbg !1639, !tbaa !720
  %44 = icmp eq i8* %43, null, !dbg !1640
  br i1 %44, label %45, label %6, !dbg !1641, !llvm.loop !1679

; <label>:45:                                     ; preds = %6, %40, %1
  %46 = phi %struct.valinfo* [ %2, %1 ], [ %30, %40 ], [ %9, %6 ], !dbg !1682
  call void @llvm.dbg.value(metadata %struct.valinfo* %46, metadata !1628, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata %struct.valinfo* %46, metadata !1628, metadata !DIExpression()), !dbg !1633
  ret %struct.valinfo* %46, !dbg !1683
}

declare void @__gmpz_tdiv_q(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_tdiv_r(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_mul(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval6(i1 zeroext) unnamed_addr #7 !dbg !1684 {
  %2 = alloca %struct.mbuiter_multi, align 8
  %3 = alloca %struct.mbuiter_multi, align 8
  %4 = alloca %struct.mbuiter_multi, align 8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1686, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1706
  %5 = load i8**, i8*** @args, align 8, !dbg !1708, !tbaa !720
  %6 = load i8*, i8** %5, align 8, !dbg !1709, !tbaa !720
  %7 = icmp eq i8* %6, null, !dbg !1710
  br i1 %7, label %496, label %8, !dbg !1711

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @strcmp(i8* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #15, !dbg !1712
  %10 = icmp eq i32 %9, 0, !dbg !1712
  %11 = zext i1 %10 to i64, !dbg !1713
  %12 = getelementptr inbounds i8*, i8** %5, i64 %11, !dbg !1713
  store i8** %12, i8*** @args, align 8, !dbg !1713, !tbaa !720
  %13 = load i8*, i8** %12, align 8, !dbg !1714, !tbaa !720
  %14 = icmp eq i8* %13, null, !dbg !1714
  br i1 %10, label %15, label %30, !dbg !1715

; <label>:15:                                     ; preds = %8
  br i1 %14, label %16, label %22, !dbg !1716

; <label>:16:                                     ; preds = %15
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i64 0, i64 0), i32 5) #11, !dbg !1722
  %18 = load i8**, i8*** @args, align 8, !dbg !1722, !tbaa !720
  %19 = getelementptr inbounds i8*, i8** %18, i64 -1, !dbg !1722
  %20 = load i8*, i8** %19, align 8, !dbg !1722, !tbaa !720
  %21 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %20) #11, !dbg !1722
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %17, i8* %21) #11, !dbg !1722
  unreachable, !dbg !1722

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !1724
  store i8** %23, i8*** @args, align 8, !dbg !1724, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %13, metadata !1725, metadata !DIExpression()) #11, !dbg !1731
  %24 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1733
  %25 = bitcast i8* %24 to %struct.valinfo*, !dbg !1733
  call void @llvm.dbg.value(metadata %struct.valinfo* %25, metadata !1730, metadata !DIExpression()) #11, !dbg !1734
  %26 = bitcast i8* %24 to i32*, !dbg !1735
  store i32 1, i32* %26, align 8, !dbg !1736, !tbaa !849
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %13) #11, !dbg !1737
  %28 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !1738
  %29 = bitcast i8* %28 to i8**, !dbg !1739
  store i8* %27, i8** %29, align 8, !dbg !1740, !tbaa !741
  br label %548, !dbg !1741

; <label>:30:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1742
  br i1 %14, label %496, label %31, !dbg !1744

; <label>:31:                                     ; preds = %30
  %32 = tail call i32 @strcmp(i8* nonnull %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #15, !dbg !1745
  %33 = icmp eq i32 %32, 0, !dbg !1745
  %34 = zext i1 %33 to i64, !dbg !1746
  %35 = getelementptr inbounds i8*, i8** %12, i64 %34, !dbg !1746
  store i8** %35, i8*** @args, align 8, !dbg !1746, !tbaa !720
  br i1 %33, label %36, label %67, !dbg !1747

; <label>:36:                                     ; preds = %31
  %37 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.valinfo* %37, metadata !1688, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata %struct.valinfo* %37, metadata !1274, metadata !DIExpression()) #11, !dbg !1751
  %38 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 0, !dbg !1753
  %39 = load i32, i32* %38, align 8, !dbg !1753, !tbaa !849
  switch i32 %39, label %49 [
    i32 0, label %44
    i32 1, label %40
  ], !dbg !1754

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 1
  %42 = bitcast %union.anon* %41 to i8**
  %43 = load i8*, i8** %42, align 8, !dbg !1755, !tbaa !741
  br label %50, !dbg !1754

; <label>:44:                                     ; preds = %36
  %45 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 1, !dbg !1756
  %46 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0, i64 0, !dbg !1757
  %47 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %46) #11, !dbg !1758
  call void @llvm.dbg.value(metadata i8* %47, metadata !1277, metadata !DIExpression()) #11, !dbg !1759
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %46) #11, !dbg !1760
  %48 = bitcast %union.anon* %45 to i8**, !dbg !1761
  store i8* %47, i8** %48, align 8, !dbg !1762, !tbaa !741
  store i32 1, i32* %38, align 8, !dbg !1763, !tbaa !849
  br label %50, !dbg !1764

; <label>:49:                                     ; preds = %36
  tail call void @abort() #16, !dbg !1765
  unreachable, !dbg !1765

; <label>:50:                                     ; preds = %40, %44
  %51 = phi i8** [ %42, %40 ], [ %48, %44 ], !dbg !1755
  %52 = phi i8* [ %43, %40 ], [ %47, %44 ], !dbg !1755
  %53 = tail call i64 @mbslen(i8* %52) #15, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %53, metadata !1025, metadata !DIExpression()) #11, !dbg !1767
  %54 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !1769
  %55 = bitcast i8* %54 to %struct.valinfo*, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.valinfo* %55, metadata !1030, metadata !DIExpression()) #11, !dbg !1770
  %56 = bitcast i8* %54 to i32*, !dbg !1771
  store i32 0, i32* %56, align 8, !dbg !1772, !tbaa !849
  %57 = getelementptr inbounds i8, i8* %54, i64 8, !dbg !1773
  %58 = bitcast i8* %57 to %struct.__mpz_struct*, !dbg !1774
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* nonnull %58, i64 %53) #11, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.valinfo* %55, metadata !1689, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata %struct.valinfo* %37, metadata !987, metadata !DIExpression()) #11, !dbg !1777
  %59 = load i32, i32* %38, align 8, !dbg !1779, !tbaa !849
  %60 = icmp eq i32 %59, 1, !dbg !1780
  br i1 %60, label %61, label %63, !dbg !1781

; <label>:61:                                     ; preds = %50
  %62 = load i8*, i8** %51, align 8, !dbg !1782, !tbaa !741
  tail call void @free(i8* %62) #11, !dbg !1783
  br label %65, !dbg !1783

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %37, i64 0, i32 1, i32 0, i64 0, !dbg !1784
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %64) #11, !dbg !1785
  br label %65

; <label>:65:                                     ; preds = %61, %63
  %66 = bitcast %struct.valinfo* %37 to i8*, !dbg !1786
  tail call void @free(i8* %66) #11, !dbg !1787
  br label %548, !dbg !1788

; <label>:67:                                     ; preds = %31
  %68 = load i8*, i8** %35, align 8, !dbg !1789, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1791
  %69 = icmp eq i8* %68, null, !dbg !1792
  br i1 %69, label %496, label %70, !dbg !1793

; <label>:70:                                     ; preds = %67
  %71 = tail call i32 @strcmp(i8* nonnull %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #15, !dbg !1794
  %72 = icmp eq i32 %71, 0, !dbg !1794
  %73 = zext i1 %72 to i64, !dbg !1795
  %74 = getelementptr inbounds i8*, i8** %35, i64 %73, !dbg !1795
  store i8** %74, i8*** @args, align 8, !dbg !1795, !tbaa !720
  br i1 %72, label %75, label %104, !dbg !1796

; <label>:75:                                     ; preds = %70
  %76 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1797
  call void @llvm.dbg.value(metadata %struct.valinfo* %76, metadata !1687, metadata !DIExpression()), !dbg !1799
  %77 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1800
  call void @llvm.dbg.value(metadata %struct.valinfo* %77, metadata !1688, metadata !DIExpression()), !dbg !1750
  br i1 %0, label %78, label %91, !dbg !1801

; <label>:78:                                     ; preds = %75
  %79 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %76, %struct.valinfo* %77), !dbg !1802
  call void @llvm.dbg.value(metadata %struct.valinfo* %79, metadata !1689, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata %struct.valinfo* %76, metadata !987, metadata !DIExpression()) #11, !dbg !1805
  %80 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %76, i64 0, i32 0, !dbg !1807
  %81 = load i32, i32* %80, align 8, !dbg !1807, !tbaa !849
  %82 = icmp eq i32 %81, 1, !dbg !1808
  %83 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %76, i64 0, i32 1, !dbg !1809
  br i1 %82, label %84, label %87, !dbg !1810

; <label>:84:                                     ; preds = %78
  %85 = bitcast %union.anon* %83 to i8**, !dbg !1811
  %86 = load i8*, i8** %85, align 8, !dbg !1811, !tbaa !741
  tail call void @free(i8* %86) #11, !dbg !1812
  br label %89, !dbg !1812

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0, i64 0, !dbg !1813
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %88) #11, !dbg !1814
  br label %89

; <label>:89:                                     ; preds = %84, %87
  %90 = bitcast %struct.valinfo* %76 to i8*, !dbg !1815
  tail call void @free(i8* %90) #11, !dbg !1816
  br label %91, !dbg !1817

; <label>:91:                                     ; preds = %75, %89
  %92 = phi %struct.valinfo* [ %79, %89 ], [ %76, %75 ], !dbg !1818
  call void @llvm.dbg.value(metadata %struct.valinfo* %92, metadata !1689, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata %struct.valinfo* %77, metadata !987, metadata !DIExpression()) #11, !dbg !1819
  %93 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %77, i64 0, i32 0, !dbg !1821
  %94 = load i32, i32* %93, align 8, !dbg !1821, !tbaa !849
  %95 = icmp eq i32 %94, 1, !dbg !1822
  %96 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %77, i64 0, i32 1, !dbg !1823
  br i1 %95, label %97, label %100, !dbg !1824

; <label>:97:                                     ; preds = %91
  %98 = bitcast %union.anon* %96 to i8**, !dbg !1825
  %99 = load i8*, i8** %98, align 8, !dbg !1825, !tbaa !741
  tail call void @free(i8* %99) #11, !dbg !1826
  br label %102, !dbg !1826

; <label>:100:                                    ; preds = %91
  %101 = getelementptr inbounds %union.anon, %union.anon* %96, i64 0, i32 0, i64 0, !dbg !1827
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %101) #11, !dbg !1828
  br label %102

; <label>:102:                                    ; preds = %97, %100
  %103 = bitcast %struct.valinfo* %77 to i8*, !dbg !1829
  tail call void @free(i8* %103) #11, !dbg !1830
  br label %548, !dbg !1831

; <label>:104:                                    ; preds = %70
  %105 = load i8*, i8** %74, align 8, !dbg !1832, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !1834
  %106 = icmp eq i8* %105, null, !dbg !1835
  br i1 %106, label %496, label %107, !dbg !1836

; <label>:107:                                    ; preds = %104
  %108 = tail call i32 @strcmp(i8* nonnull %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0)) #15, !dbg !1837
  %109 = icmp eq i32 %108, 0, !dbg !1837
  %110 = zext i1 %109 to i64, !dbg !1838
  %111 = getelementptr inbounds i8*, i8** %74, i64 %110, !dbg !1838
  store i8** %111, i8*** @args, align 8, !dbg !1838, !tbaa !720
  br i1 %109, label %112, label %262, !dbg !1839

; <label>:112:                                    ; preds = %107
  %113 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1840
  call void @llvm.dbg.value(metadata %struct.valinfo* %113, metadata !1687, metadata !DIExpression()), !dbg !1799
  %114 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1841
  call void @llvm.dbg.value(metadata %struct.valinfo* %114, metadata !1688, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata %struct.valinfo* %113, metadata !1274, metadata !DIExpression()) #11, !dbg !1842
  %115 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %113, i64 0, i32 0, !dbg !1844
  %116 = load i32, i32* %115, align 8, !dbg !1844, !tbaa !849
  switch i32 %116, label %122 [
    i32 0, label %117
    i32 1, label %123
  ], !dbg !1845

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %113, i64 0, i32 1, !dbg !1846
  %119 = getelementptr inbounds %union.anon, %union.anon* %118, i64 0, i32 0, i64 0, !dbg !1847
  %120 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %119) #11, !dbg !1848
  call void @llvm.dbg.value(metadata i8* %120, metadata !1277, metadata !DIExpression()) #11, !dbg !1849
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %119) #11, !dbg !1850
  %121 = bitcast %union.anon* %118 to i8**, !dbg !1851
  store i8* %120, i8** %121, align 8, !dbg !1852, !tbaa !741
  store i32 1, i32* %115, align 8, !dbg !1853, !tbaa !849
  br label %123, !dbg !1854

; <label>:122:                                    ; preds = %112
  tail call void @abort() #16, !dbg !1855
  unreachable, !dbg !1855

; <label>:123:                                    ; preds = %112, %117
  call void @llvm.dbg.value(metadata %struct.valinfo* %114, metadata !1274, metadata !DIExpression()) #11, !dbg !1856
  %124 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %114, i64 0, i32 0, !dbg !1858
  %125 = load i32, i32* %124, align 8, !dbg !1858, !tbaa !849
  switch i32 %125, label %135 [
    i32 0, label %130
    i32 1, label %126
  ], !dbg !1859

; <label>:126:                                    ; preds = %123
  %127 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %114, i64 0, i32 1
  %128 = bitcast %union.anon* %127 to i8**
  %129 = load i8*, i8** %128, align 8, !dbg !1860, !tbaa !741
  br label %136, !dbg !1859

; <label>:130:                                    ; preds = %123
  %131 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %114, i64 0, i32 1, !dbg !1861
  %132 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0, i64 0, !dbg !1862
  %133 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %132) #11, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %133, metadata !1277, metadata !DIExpression()) #11, !dbg !1864
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %132) #11, !dbg !1865
  %134 = bitcast %union.anon* %131 to i8**, !dbg !1866
  store i8* %133, i8** %134, align 8, !dbg !1867, !tbaa !741
  store i32 1, i32* %124, align 8, !dbg !1868, !tbaa !849
  br label %136, !dbg !1869

; <label>:135:                                    ; preds = %123
  tail call void @abort() #16, !dbg !1870
  unreachable, !dbg !1870

; <label>:136:                                    ; preds = %126, %130
  %137 = phi i8** [ %128, %126 ], [ %134, %130 ], !dbg !1860
  %138 = phi i8* [ %129, %126 ], [ %133, %130 ], !dbg !1860
  %139 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %113, i64 0, i32 1, !dbg !1871
  %140 = bitcast %union.anon* %139 to i8**, !dbg !1872
  %141 = load i8*, i8** %140, align 8, !dbg !1872, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %141, metadata !1873, metadata !DIExpression()) #11, !dbg !1926
  call void @llvm.dbg.value(metadata i8* %138, metadata !1878, metadata !DIExpression()) #11, !dbg !1928
  call void @llvm.dbg.value(metadata i64 0, metadata !1879, metadata !DIExpression()) #11, !dbg !1929
  %142 = load i8, i8* %138, align 1, !dbg !1930, !tbaa !741
  %143 = icmp eq i8 %142, 0, !dbg !1932
  br i1 %143, label %239, label %144, !dbg !1933

; <label>:144:                                    ; preds = %136
  %145 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1934
  %146 = icmp ugt i64 %145, 1, !dbg !1935
  br i1 %146, label %147, label %232, !dbg !1936

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 0, !dbg !1937
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %148) #11, !dbg !1937
  %149 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 0, !dbg !1938
  store i8* %141, i8** %149, align 8, !dbg !1938, !tbaa !1939
  store i8 0, i8* %148, align 8, !dbg !1938, !tbaa !1944
  %150 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 1, !dbg !1938
  %151 = bitcast %struct.__mbstate_t* %150 to i64*, !dbg !1938
  store i64 0, i64* %151, align 4, !dbg !1938
  %152 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 2, !dbg !1938
  store i8 0, i8* %152, align 4, !dbg !1945, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 0, metadata !1879, metadata !DIExpression()) #11, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %3, metadata !1880, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1947
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3) #11, !dbg !1948
  %153 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 2, !dbg !1948
  %154 = load i8, i8* %153, align 8, !dbg !1948, !tbaa !1949, !range !1950
  %155 = icmp eq i8 %154, 0, !dbg !1948
  %156 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 3, !dbg !1948
  %157 = load i32, i32* %156, align 4, !dbg !1948
  %158 = icmp ne i32 %157, 0, !dbg !1948
  %159 = or i1 %155, %158, !dbg !1948
  br i1 %159, label %160, label %230, !dbg !1951

; <label>:160:                                    ; preds = %147
  %161 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 1
  %162 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 0
  %163 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 0
  %164 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 1
  %165 = bitcast %struct.__mbstate_t* %164 to i64*
  %166 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 2
  %167 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 2
  %168 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 3
  %169 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 1
  br label %170, !dbg !1951

; <label>:170:                                    ; preds = %221, %160
  %171 = phi i64 [ 0, %160 ], [ %172, %221 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !1879, metadata !DIExpression()) #11, !dbg !1929
  %172 = add i64 %171, 1, !dbg !1952
  %173 = load i64, i64* %161, align 8, !dbg !1953, !tbaa !1954
  %174 = icmp eq i64 %173, 1, !dbg !1955
  br i1 %174, label %175, label %181, !dbg !1956

; <label>:175:                                    ; preds = %170
  %176 = load i8*, i8** %149, align 8, !dbg !1957, !tbaa !1939
  %177 = load i8, i8* %176, align 1, !dbg !1960, !tbaa !741
  %178 = sext i8 %177 to i32, !dbg !1960
  %179 = call i8* @mbschr(i8* %138, i32 %178) #15, !dbg !1961
  %180 = icmp eq i8* %179, null, !dbg !1961
  br i1 %180, label %221, label %230, !dbg !1962

; <label>:181:                                    ; preds = %170
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %162) #11, !dbg !1963
  store i8* %138, i8** %163, align 8, !dbg !1964, !tbaa !1939
  store i8 0, i8* %162, align 8, !dbg !1964, !tbaa !1944
  store i64 0, i64* %165, align 4, !dbg !1964
  store i8 0, i8* %166, align 4, !dbg !1966, !tbaa !1946
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %4, metadata !1918, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1968
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4) #11, !dbg !1969
  %182 = load i8, i8* %167, align 8, !dbg !1969, !tbaa !1949, !range !1950
  %183 = icmp ne i8 %182, 0, !dbg !1969
  %184 = load i32, i32* %168, align 4, !dbg !1969
  %185 = icmp eq i32 %184, 0, !dbg !1969
  %186 = and i1 %183, %185, !dbg !1969
  br i1 %186, label %218, label %187, !dbg !1970

; <label>:187:                                    ; preds = %181, %208
  %188 = phi i32 [ %214, %208 ], [ %184, %181 ]
  %189 = phi i1 [ %213, %208 ], [ %183, %181 ]
  %190 = xor i1 %189, true, !dbg !1971
  %191 = load i8, i8* %153, align 8, !dbg !1971
  %192 = icmp eq i8 %191, 0, !dbg !1971
  %193 = or i1 %192, %190, !dbg !1971
  br i1 %193, label %199, label %194, !dbg !1971

; <label>:194:                                    ; preds = %187
  %195 = load i32, i32* %156, align 4, !dbg !1971, !tbaa !1973
  %196 = icmp eq i32 %188, %195, !dbg !1971
  br i1 %196, label %217, label %197, !dbg !1971

; <label>:197:                                    ; preds = %194
  %198 = load i64, i64* %169, align 8, !dbg !1974, !tbaa !1954
  br label %208, !dbg !1971

; <label>:199:                                    ; preds = %187
  %200 = load i64, i64* %169, align 8, !dbg !1971, !tbaa !1954
  %201 = load i64, i64* %161, align 8, !dbg !1971, !tbaa !1954
  %202 = icmp eq i64 %200, %201, !dbg !1971
  br i1 %202, label %203, label %208, !dbg !1971

; <label>:203:                                    ; preds = %199
  %204 = load i8*, i8** %163, align 8, !dbg !1971, !tbaa !1939
  %205 = load i8*, i8** %149, align 8, !dbg !1971, !tbaa !1939
  %206 = call i32 @memcmp(i8* %204, i8* %205, i64 %200) #15, !dbg !1971
  %207 = icmp eq i32 %206, 0, !dbg !1971
  br i1 %207, label %217, label %208, !dbg !1975

; <label>:208:                                    ; preds = %203, %199, %197
  %209 = phi i64 [ %198, %197 ], [ %200, %199 ], [ %200, %203 ], !dbg !1974
  %210 = load i8*, i8** %163, align 8, !dbg !1974, !tbaa !1939
  %211 = getelementptr inbounds i8, i8* %210, i64 %209, !dbg !1974
  store i8* %211, i8** %163, align 8, !dbg !1974, !tbaa !1939
  store i8 0, i8* %166, align 4, !dbg !1966, !tbaa !1946
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %4, metadata !1918, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1968
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4) #11, !dbg !1969
  %212 = load i8, i8* %167, align 8, !dbg !1969, !tbaa !1949, !range !1950
  %213 = icmp ne i8 %212, 0, !dbg !1969
  %214 = load i32, i32* %168, align 4, !dbg !1969
  %215 = icmp eq i32 %214, 0, !dbg !1969
  %216 = and i1 %213, %215, !dbg !1969
  br i1 %216, label %218, label %187, !dbg !1970, !llvm.loop !1976

; <label>:217:                                    ; preds = %203, %194
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %162) #11, !dbg !1979
  br label %230

; <label>:218:                                    ; preds = %208, %181
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %162) #11, !dbg !1979
  %219 = load i64, i64* %161, align 8, !dbg !1980, !tbaa !1954
  %220 = load i8*, i8** %149, align 8, !dbg !1980, !tbaa !1939
  br label %221

; <label>:221:                                    ; preds = %218, %175
  %222 = phi i8* [ %220, %218 ], [ %176, %175 ], !dbg !1980
  %223 = phi i64 [ %219, %218 ], [ 1, %175 ], !dbg !1980
  %224 = getelementptr inbounds i8, i8* %222, i64 %223, !dbg !1980
  store i8* %224, i8** %149, align 8, !dbg !1980, !tbaa !1939
  store i8 0, i8* %152, align 4, !dbg !1945, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 %172, metadata !1879, metadata !DIExpression()) #11, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %3, metadata !1880, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1947
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3) #11, !dbg !1948
  %225 = load i8, i8* %153, align 8, !dbg !1948, !tbaa !1949, !range !1950
  %226 = icmp eq i8 %225, 0, !dbg !1948
  %227 = load i32, i32* %156, align 4, !dbg !1948
  %228 = icmp ne i32 %227, 0, !dbg !1948
  %229 = or i1 %226, %228, !dbg !1948
  br i1 %229, label %170, label %230, !dbg !1951, !llvm.loop !1981

; <label>:230:                                    ; preds = %221, %175, %217, %147
  %231 = phi i64 [ %172, %217 ], [ 0, %147 ], [ 0, %221 ], [ %172, %175 ], !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %148) #11, !dbg !1985
  br label %239

; <label>:232:                                    ; preds = %144
  %233 = tail call i64 @strcspn(i8* %141, i8* nonnull %138) #15, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %233, metadata !1924, metadata !DIExpression()) #11, !dbg !1987
  %234 = getelementptr inbounds i8, i8* %141, i64 %233, !dbg !1988
  %235 = load i8, i8* %234, align 1, !dbg !1988, !tbaa !741
  %236 = icmp eq i8 %235, 0, !dbg !1988
  %237 = add i64 %233, 1, !dbg !1989
  %238 = select i1 %236, i64 0, i64 %237, !dbg !1988
  br label %239

; <label>:239:                                    ; preds = %136, %230, %232
  %240 = phi i64 [ %231, %230 ], [ %238, %232 ], [ 0, %136 ], !dbg !1990
  call void @llvm.dbg.value(metadata i64 %240, metadata !1692, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %240, metadata !1025, metadata !DIExpression()) #11, !dbg !1992
  %241 = call noalias i8* @xmalloc(i64 24) #11, !dbg !1994
  %242 = bitcast i8* %241 to %struct.valinfo*, !dbg !1994
  call void @llvm.dbg.value(metadata %struct.valinfo* %242, metadata !1030, metadata !DIExpression()) #11, !dbg !1995
  %243 = bitcast i8* %241 to i32*, !dbg !1996
  store i32 0, i32* %243, align 8, !dbg !1997, !tbaa !849
  %244 = getelementptr inbounds i8, i8* %241, i64 8, !dbg !1998
  %245 = bitcast i8* %244 to %struct.__mpz_struct*, !dbg !1999
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* nonnull %245, i64 %240) #11, !dbg !2000
  call void @llvm.dbg.value(metadata %struct.valinfo* %242, metadata !1689, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata %struct.valinfo* %113, metadata !987, metadata !DIExpression()) #11, !dbg !2001
  %246 = load i32, i32* %115, align 8, !dbg !2003, !tbaa !849
  %247 = icmp eq i32 %246, 1, !dbg !2004
  br i1 %247, label %248, label %250, !dbg !2005

; <label>:248:                                    ; preds = %239
  %249 = load i8*, i8** %140, align 8, !dbg !2006, !tbaa !741
  call void @free(i8* %249) #11, !dbg !2007
  br label %252, !dbg !2007

; <label>:250:                                    ; preds = %239
  %251 = getelementptr inbounds %union.anon, %union.anon* %139, i64 0, i32 0, i64 0, !dbg !2008
  call void @__gmpz_clear(%struct.__mpz_struct* nonnull %251) #11, !dbg !2009
  br label %252

; <label>:252:                                    ; preds = %248, %250
  %253 = bitcast %struct.valinfo* %113 to i8*, !dbg !2010
  call void @free(i8* %253) #11, !dbg !2011
  call void @llvm.dbg.value(metadata %struct.valinfo* %114, metadata !987, metadata !DIExpression()) #11, !dbg !2012
  %254 = load i32, i32* %124, align 8, !dbg !2014, !tbaa !849
  %255 = icmp eq i32 %254, 1, !dbg !2015
  br i1 %255, label %256, label %258, !dbg !2016

; <label>:256:                                    ; preds = %252
  %257 = load i8*, i8** %137, align 8, !dbg !2017, !tbaa !741
  call void @free(i8* %257) #11, !dbg !2018
  br label %260, !dbg !2018

; <label>:258:                                    ; preds = %252
  %259 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %114, i64 0, i32 1, i32 0, i64 0, !dbg !2019
  call void @__gmpz_clear(%struct.__mpz_struct* nonnull %259) #11, !dbg !2020
  br label %260

; <label>:260:                                    ; preds = %256, %258
  %261 = bitcast %struct.valinfo* %114 to i8*, !dbg !2021
  call void @free(i8* %261) #11, !dbg !2022
  br label %548

; <label>:262:                                    ; preds = %107
  %263 = load i8*, i8** %111, align 8, !dbg !2023, !tbaa !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !2025
  %264 = icmp eq i8* %263, null, !dbg !2026
  br i1 %264, label %496, label %265, !dbg !2027

; <label>:265:                                    ; preds = %262
  %266 = tail call i32 @strcmp(i8* nonnull %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0)) #15, !dbg !2028
  %267 = icmp eq i32 %266, 0, !dbg !2028
  %268 = zext i1 %267 to i64, !dbg !2029
  %269 = getelementptr inbounds i8*, i8** %111, i64 %268, !dbg !2029
  store i8** %269, i8*** @args, align 8, !dbg !2029, !tbaa !720
  br i1 %267, label %270, label %493, !dbg !2030

; <label>:270:                                    ; preds = %265
  %271 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !2031
  call void @llvm.dbg.value(metadata %struct.valinfo* %271, metadata !1687, metadata !DIExpression()), !dbg !1799
  %272 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !2032
  call void @llvm.dbg.value(metadata %struct.valinfo* %272, metadata !1690, metadata !DIExpression()), !dbg !2033
  %273 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !2034
  call void @llvm.dbg.value(metadata %struct.valinfo* %273, metadata !1691, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %struct.valinfo* %271, metadata !1274, metadata !DIExpression()) #11, !dbg !2036
  %274 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %271, i64 0, i32 0, !dbg !2038
  %275 = load i32, i32* %274, align 8, !dbg !2038, !tbaa !849
  switch i32 %275, label %281 [
    i32 0, label %276
    i32 1, label %282
  ], !dbg !2039

; <label>:276:                                    ; preds = %270
  %277 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %271, i64 0, i32 1, !dbg !2040
  %278 = getelementptr inbounds %union.anon, %union.anon* %277, i64 0, i32 0, i64 0, !dbg !2041
  %279 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %278) #11, !dbg !2042
  call void @llvm.dbg.value(metadata i8* %279, metadata !1277, metadata !DIExpression()) #11, !dbg !2043
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %278) #11, !dbg !2044
  %280 = bitcast %union.anon* %277 to i8**, !dbg !2045
  store i8* %279, i8** %280, align 8, !dbg !2046, !tbaa !741
  store i32 1, i32* %274, align 8, !dbg !2047, !tbaa !849
  br label %282, !dbg !2048

; <label>:281:                                    ; preds = %270
  tail call void @abort() #16, !dbg !2049
  unreachable, !dbg !2049

; <label>:282:                                    ; preds = %270, %276
  call void @llvm.dbg.value(metadata %struct.valinfo* %272, metadata !1433, metadata !DIExpression()) #11, !dbg !2050
  %283 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %272, i64 0, i32 0, !dbg !2052
  %284 = load i32, i32* %283, align 8, !dbg !2052, !tbaa !849
  switch i32 %284, label %307 [
    i32 0, label %308
    i32 1, label %285
  ], !dbg !2053

; <label>:285:                                    ; preds = %282
  %286 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %272, i64 0, i32 1, !dbg !2054
  %287 = bitcast %union.anon* %286 to i8**, !dbg !2055
  %288 = load i8*, i8** %287, align 8, !dbg !2055, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %288, metadata !1436, metadata !DIExpression()) #11, !dbg !2056
  call void @llvm.dbg.value(metadata i8* %288, metadata !1311, metadata !DIExpression()) #11, !dbg !2057
  %289 = load i8, i8* %288, align 1, !dbg !2059, !tbaa !741
  %290 = icmp eq i8 %289, 45, !dbg !2060
  %291 = zext i1 %290 to i64, !dbg !2061
  %292 = getelementptr inbounds i8, i8* %288, i64 %291, !dbg !2061
  call void @llvm.dbg.value(metadata i8* %292, metadata !1311, metadata !DIExpression()) #11, !dbg !2057
  %293 = load i8, i8* %292, align 1, !dbg !2062, !tbaa !741
  br label %294, !dbg !2063

; <label>:294:                                    ; preds = %300, %285
  %295 = phi i8 [ %293, %285 ], [ %302, %300 ], !dbg !2062
  %296 = phi i8* [ %292, %285 ], [ %301, %300 ], !dbg !2064
  call void @llvm.dbg.value(metadata i8* %296, metadata !1311, metadata !DIExpression()) #11, !dbg !2057
  %297 = sext i8 %295 to i32, !dbg !2062
  %298 = add nsw i32 %297, -48, !dbg !2062
  %299 = icmp ult i32 %298, 10, !dbg !2062
  br i1 %299, label %300, label %334, !dbg !2065

; <label>:300:                                    ; preds = %294
  %301 = getelementptr inbounds i8, i8* %296, i64 1, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %301, metadata !1311, metadata !DIExpression()) #11, !dbg !2057
  %302 = load i8, i8* %301, align 1, !dbg !2067, !tbaa !741
  %303 = icmp eq i8 %302, 0, !dbg !2062
  br i1 %303, label %304, label %294, !dbg !2062, !llvm.loop !1326

; <label>:304:                                    ; preds = %300
  %305 = getelementptr inbounds %union.anon, %union.anon* %286, i64 0, i32 0, i64 0, !dbg !2068
  %306 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* nonnull %305, i8* %288, i32 10) #11, !dbg !2069
  tail call void @free(i8* %288) #11, !dbg !2070
  store i32 0, i32* %283, align 8, !dbg !2071, !tbaa !849
  br label %308, !dbg !2072

; <label>:307:                                    ; preds = %282
  tail call void @abort() #16, !dbg !2073
  unreachable, !dbg !2073

; <label>:308:                                    ; preds = %282, %304
  call void @llvm.dbg.value(metadata %struct.valinfo* %273, metadata !1433, metadata !DIExpression()) #11, !dbg !2074
  %309 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %273, i64 0, i32 0, !dbg !2076
  %310 = load i32, i32* %309, align 8, !dbg !2076, !tbaa !849
  switch i32 %310, label %333 [
    i32 0, label %341
    i32 1, label %311
  ], !dbg !2077

; <label>:311:                                    ; preds = %308
  %312 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %273, i64 0, i32 1, !dbg !2078
  %313 = bitcast %union.anon* %312 to i8**, !dbg !2079
  %314 = load i8*, i8** %313, align 8, !dbg !2079, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %314, metadata !1436, metadata !DIExpression()) #11, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %314, metadata !1311, metadata !DIExpression()) #11, !dbg !2081
  %315 = load i8, i8* %314, align 1, !dbg !2083, !tbaa !741
  %316 = icmp eq i8 %315, 45, !dbg !2084
  %317 = zext i1 %316 to i64, !dbg !2085
  %318 = getelementptr inbounds i8, i8* %314, i64 %317, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %318, metadata !1311, metadata !DIExpression()) #11, !dbg !2081
  %319 = load i8, i8* %318, align 1, !dbg !2086, !tbaa !741
  br label %320, !dbg !2087

; <label>:320:                                    ; preds = %326, %311
  %321 = phi i8 [ %319, %311 ], [ %328, %326 ], !dbg !2086
  %322 = phi i8* [ %318, %311 ], [ %327, %326 ], !dbg !2088
  call void @llvm.dbg.value(metadata i8* %322, metadata !1311, metadata !DIExpression()) #11, !dbg !2081
  %323 = sext i8 %321 to i32, !dbg !2086
  %324 = add nsw i32 %323, -48, !dbg !2086
  %325 = icmp ult i32 %324, 10, !dbg !2086
  br i1 %325, label %326, label %334, !dbg !2089

; <label>:326:                                    ; preds = %320
  %327 = getelementptr inbounds i8, i8* %322, i64 1, !dbg !2090
  call void @llvm.dbg.value(metadata i8* %327, metadata !1311, metadata !DIExpression()) #11, !dbg !2081
  %328 = load i8, i8* %327, align 1, !dbg !2091, !tbaa !741
  %329 = icmp eq i8 %328, 0, !dbg !2086
  br i1 %329, label %330, label %320, !dbg !2086, !llvm.loop !1326

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds %union.anon, %union.anon* %312, i64 0, i32 0, i64 0, !dbg !2092
  %332 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* nonnull %331, i8* %314, i32 10) #11, !dbg !2093
  tail call void @free(i8* %314) #11, !dbg !2094
  store i32 0, i32* %309, align 8, !dbg !2095, !tbaa !849
  br label %341, !dbg !2096

; <label>:333:                                    ; preds = %308
  tail call void @abort() #16, !dbg !2097
  unreachable, !dbg !2097

; <label>:334:                                    ; preds = %294, %320
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), metadata !1725, metadata !DIExpression()) #11, !dbg !2098
  %335 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %335, metadata !1730, metadata !DIExpression()) #11, !dbg !2101
  %336 = bitcast i8* %335 to i32*, !dbg !2102
  store i32 1, i32* %336, align 8, !dbg !2103, !tbaa !849
  %337 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !2104
  %338 = getelementptr inbounds i8, i8* %335, i64 8, !dbg !2105
  %339 = bitcast i8* %338 to i8**, !dbg !2106
  store i8* %337, i8** %339, align 8, !dbg !2107, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %335, metadata !1689, metadata !DIExpression()), !dbg !1776
  %340 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %271, i64 0, i32 1, !dbg !2108
  br label %459, !dbg !2110

; <label>:341:                                    ; preds = %308, %330
  call void @llvm.dbg.value(metadata %struct.valinfo* %272, metadata !2111, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2120
  %342 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %272, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !2122
  %343 = load i32, i32* %342, align 4, !dbg !2122, !tbaa !877
  %344 = icmp slt i32 %343, 0, !dbg !2122
  br i1 %344, label %355, label %345, !dbg !2124

; <label>:345:                                    ; preds = %341
  call void @llvm.dbg.value(metadata %struct.valinfo* %272, metadata !2125, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2138
  call void @llvm.dbg.value(metadata %struct.valinfo* %272, metadata !2136, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2140
  %346 = icmp ugt i32 %343, 1, !dbg !2140
  br i1 %346, label %354, label %347, !dbg !2141

; <label>:347:                                    ; preds = %345
  call void @llvm.dbg.value(metadata %struct.valinfo* %272, metadata !2142, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2150
  %348 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %272, i64 0, i32 1, i32 0, i64 0, i32 2, !dbg !2152
  %349 = load i64*, i64** %348, align 8, !dbg !2152, !tbaa !2153
  call void @llvm.dbg.value(metadata i64* %349, metadata !2147, metadata !DIExpression()), !dbg !2154
  %350 = load i64, i64* %349, align 8, !dbg !2155, !tbaa !2156
  call void @llvm.dbg.value(metadata i64 %350, metadata !2149, metadata !DIExpression()), !dbg !2157
  %351 = icmp eq i32 %343, 0, !dbg !2158
  %352 = select i1 %351, i64 0, i64 %350, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %352, metadata !2117, metadata !DIExpression()), !dbg !2160
  %353 = icmp eq i64 %352, -1, !dbg !2161
  br i1 %353, label %354, label %355

; <label>:354:                                    ; preds = %347, %345
  br label %355, !dbg !2163

; <label>:355:                                    ; preds = %341, %347, %354
  %356 = phi i64 [ -2, %354 ], [ %352, %347 ], [ -1, %341 ], !dbg !2164
  call void @llvm.dbg.value(metadata i64 %356, metadata !1698, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata %struct.valinfo* %273, metadata !2111, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2166
  %357 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %273, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !2168
  %358 = load i32, i32* %357, align 4, !dbg !2168, !tbaa !877
  %359 = icmp slt i32 %358, 0, !dbg !2168
  br i1 %359, label %370, label %360, !dbg !2169

; <label>:360:                                    ; preds = %355
  call void @llvm.dbg.value(metadata %struct.valinfo* %273, metadata !2125, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2170
  call void @llvm.dbg.value(metadata %struct.valinfo* %273, metadata !2136, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2172
  %361 = icmp ugt i32 %358, 1, !dbg !2172
  br i1 %361, label %369, label %362, !dbg !2173

; <label>:362:                                    ; preds = %360
  call void @llvm.dbg.value(metadata %struct.valinfo* %273, metadata !2142, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2174
  %363 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %273, i64 0, i32 1, i32 0, i64 0, i32 2, !dbg !2176
  %364 = load i64*, i64** %363, align 8, !dbg !2176, !tbaa !2153
  call void @llvm.dbg.value(metadata i64* %364, metadata !2147, metadata !DIExpression()), !dbg !2177
  %365 = load i64, i64* %364, align 8, !dbg !2178, !tbaa !2156
  call void @llvm.dbg.value(metadata i64 %365, metadata !2149, metadata !DIExpression()), !dbg !2179
  %366 = icmp eq i32 %358, 0, !dbg !2180
  %367 = select i1 %366, i64 0, i64 %365, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %367, metadata !2117, metadata !DIExpression()), !dbg !2182
  %368 = icmp eq i64 %367, -1, !dbg !2183
  br i1 %368, label %369, label %370

; <label>:369:                                    ; preds = %362, %360
  br label %370, !dbg !2184

; <label>:370:                                    ; preds = %355, %362, %369
  %371 = phi i64 [ -2, %369 ], [ %367, %362 ], [ -1, %355 ], !dbg !2185
  call void @llvm.dbg.value(metadata i64 %371, metadata !1703, metadata !DIExpression()), !dbg !2186
  %372 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %271, i64 0, i32 1, !dbg !2187
  %373 = bitcast %union.anon* %372 to i8**, !dbg !2188
  %374 = load i8*, i8** %373, align 8, !dbg !2188, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %374, metadata !2189, metadata !DIExpression()) #11, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %356, metadata !2194, metadata !DIExpression()) #11, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %371, metadata !2195, metadata !DIExpression()) #11, !dbg !2208
  %375 = tail call i64 @strlen(i8* %374) #15, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %375, metadata !2198, metadata !DIExpression()) #11, !dbg !2210
  %376 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2211
  %377 = icmp ugt i64 %376, 1, !dbg !2212
  br i1 %377, label %378, label %380, !dbg !2213

; <label>:378:                                    ; preds = %370
  %379 = tail call i64 @mbslen(i8* %374) #15, !dbg !2214
  br label %380, !dbg !2213

; <label>:380:                                    ; preds = %378, %370
  %381 = phi i64 [ %379, %378 ], [ %375, %370 ], !dbg !2213
  call void @llvm.dbg.value(metadata i64 %381, metadata !2199, metadata !DIExpression()) #11, !dbg !2215
  %382 = add i64 %356, -1, !dbg !2216
  %383 = icmp uge i64 %382, %381, !dbg !2216
  %384 = add i64 %371, 1, !dbg !2216
  %385 = icmp ult i64 %384, 2, !dbg !2216
  %386 = or i1 %385, %383, !dbg !2216
  br i1 %386, label %387, label %389, !dbg !2216

; <label>:387:                                    ; preds = %380
  %388 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !2218
  br label %452, !dbg !2219

; <label>:389:                                    ; preds = %380
  %390 = sub i64 %381, %356, !dbg !2220
  %391 = add i64 %390, 1, !dbg !2220
  %392 = icmp ugt i64 %391, %371, !dbg !2220
  %393 = select i1 %392, i64 %371, i64 %391, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %393, metadata !2200, metadata !DIExpression()) #11, !dbg !2221
  %394 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2222
  %395 = icmp eq i64 %394, 1, !dbg !2223
  br i1 %395, label %396, label %403, !dbg !2224

; <label>:396:                                    ; preds = %389
  %397 = add i64 %393, 1, !dbg !2225
  %398 = tail call noalias i8* @xmalloc(i64 %397) #11, !dbg !2227
  call void @llvm.dbg.value(metadata i8* %398, metadata !2196, metadata !DIExpression()) #11, !dbg !2228
  %399 = getelementptr inbounds i8, i8* %374, i64 %356, !dbg !2229
  %400 = getelementptr inbounds i8, i8* %399, i64 -1, !dbg !2230
  call void @llvm.dbg.value(metadata i8* %398, metadata !2231, metadata !DIExpression()) #11, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %400, metadata !2241, metadata !DIExpression()) #11, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %393, metadata !2242, metadata !DIExpression()) #11, !dbg !2243
  %401 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %398, i1 false, i1 true) #11, !dbg !2245
  %402 = tail call i8* @__mempcpy_chk(i8* nonnull %398, i8* nonnull %400, i64 %393, i64 %401) #11, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %402, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  br label %449, !dbg !2248

; <label>:403:                                    ; preds = %389
  %404 = add i64 %375, 1, !dbg !2249
  %405 = tail call noalias i8* @xmalloc(i64 %404) #11, !dbg !2250
  call void @llvm.dbg.value(metadata i8* %405, metadata !2196, metadata !DIExpression()) #11, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %405, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  %406 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 0, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %406) #11, !dbg !2251
  call void @llvm.dbg.value(metadata i64 1, metadata !2204, metadata !DIExpression()) #11, !dbg !2252
  %407 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 0, !dbg !2253
  store i8* %374, i8** %407, align 8, !dbg !2253, !tbaa !1939
  store i8 0, i8* %406, align 8, !dbg !2253, !tbaa !1944
  %408 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 1, !dbg !2253
  %409 = bitcast %struct.__mbstate_t* %408 to i64*, !dbg !2253
  store i64 0, i64* %409, align 4, !dbg !2253
  %410 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 2, !dbg !2253
  store i8 0, i8* %410, align 4, !dbg !2253, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 1, metadata !2204, metadata !DIExpression()) #11, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %393, metadata !2200, metadata !DIExpression()) #11, !dbg !2221
  call void @llvm.dbg.value(metadata i8* %405, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %2, metadata !2201, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2255
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %2) #11, !dbg !2256
  %411 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 2, !dbg !2256
  %412 = load i8, i8* %411, align 8, !dbg !2256, !tbaa !1949, !range !1950
  %413 = icmp eq i8 %412, 0, !dbg !2256
  %414 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 3, !dbg !2256
  %415 = load i32, i32* %414, align 4, !dbg !2256
  %416 = icmp ne i32 %415, 0, !dbg !2256
  %417 = or i1 %413, %416, !dbg !2256
  %418 = icmp ne i64 %393, 0, !dbg !2258
  %419 = and i1 %418, %417, !dbg !2259
  br i1 %419, label %420, label %447, !dbg !2259

; <label>:420:                                    ; preds = %403
  %421 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 1
  br label %422, !dbg !2259

; <label>:422:                                    ; preds = %433, %420
  %423 = phi i64 [ 1, %420 ], [ %439, %433 ]
  %424 = phi i64 [ %393, %420 ], [ %435, %433 ]
  %425 = phi i8* [ %405, %420 ], [ %434, %433 ]
  call void @llvm.dbg.value(metadata i64 %423, metadata !2204, metadata !DIExpression()) #11, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %424, metadata !2200, metadata !DIExpression()) #11, !dbg !2221
  call void @llvm.dbg.value(metadata i8* %425, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  %426 = icmp ult i64 %423, %356, !dbg !2260
  br i1 %426, label %433, label %427, !dbg !2263

; <label>:427:                                    ; preds = %422
  %428 = add i64 %424, -1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %428, metadata !2200, metadata !DIExpression()) #11, !dbg !2221
  %429 = load i8*, i8** %407, align 8, !dbg !2265, !tbaa !1939
  %430 = load i64, i64* %421, align 8, !dbg !2266, !tbaa !1954
  call void @llvm.dbg.value(metadata i8* %425, metadata !2231, metadata !DIExpression()) #11, !dbg !2267
  call void @llvm.dbg.value(metadata i8* %429, metadata !2241, metadata !DIExpression()) #11, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %430, metadata !2242, metadata !DIExpression()) #11, !dbg !2267
  %431 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %425, i1 false, i1 true) #11, !dbg !2269
  %432 = call i8* @__mempcpy_chk(i8* nonnull %425, i8* nonnull %429, i64 %430, i64 %431) #11, !dbg !2270
  call void @llvm.dbg.value(metadata i8* %432, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  br label %433, !dbg !2271

; <label>:433:                                    ; preds = %427, %422
  %434 = phi i8* [ %425, %422 ], [ %432, %427 ], !dbg !2272
  %435 = phi i64 [ %424, %422 ], [ %428, %427 ], !dbg !2272
  %436 = load i64, i64* %421, align 8, !dbg !2273, !tbaa !1954
  %437 = load i8*, i8** %407, align 8, !dbg !2273, !tbaa !1939
  %438 = getelementptr inbounds i8, i8* %437, i64 %436, !dbg !2273
  store i8* %438, i8** %407, align 8, !dbg !2273, !tbaa !1939
  store i8 0, i8* %410, align 4, !dbg !2273, !tbaa !1946
  %439 = add i64 %423, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %439, metadata !2204, metadata !DIExpression()) #11, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %435, metadata !2200, metadata !DIExpression()) #11, !dbg !2221
  call void @llvm.dbg.value(metadata i8* %434, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %2, metadata !2201, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2255
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %2) #11, !dbg !2256
  %440 = load i8, i8* %411, align 8, !dbg !2256, !tbaa !1949, !range !1950
  %441 = icmp eq i8 %440, 0, !dbg !2256
  %442 = load i32, i32* %414, align 4, !dbg !2256
  %443 = icmp ne i32 %442, 0, !dbg !2256
  %444 = or i1 %441, %443, !dbg !2256
  %445 = icmp ne i64 %435, 0, !dbg !2258
  %446 = and i1 %445, %444, !dbg !2259
  br i1 %446, label %422, label %447, !dbg !2259, !llvm.loop !2275

; <label>:447:                                    ; preds = %433, %403
  %448 = phi i8* [ %405, %403 ], [ %434, %433 ], !dbg !2278
  call void @llvm.dbg.value(metadata i8* %448, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %406) #11, !dbg !2279
  br label %449

; <label>:449:                                    ; preds = %447, %396
  %450 = phi i8* [ %402, %396 ], [ %448, %447 ], !dbg !2280
  %451 = phi i8* [ %398, %396 ], [ %405, %447 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8* %451, metadata !2196, metadata !DIExpression()) #11, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %450, metadata !2197, metadata !DIExpression()) #11, !dbg !2247
  store i8 0, i8* %450, align 1, !dbg !2281, !tbaa !741
  br label %452

; <label>:452:                                    ; preds = %387, %449
  %453 = phi i8* [ %388, %387 ], [ %451, %449 ], !dbg !2282
  call void @llvm.dbg.value(metadata i8* %453, metadata !1704, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %453, metadata !1725, metadata !DIExpression()) #11, !dbg !2284
  %454 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %454, metadata !1730, metadata !DIExpression()) #11, !dbg !2287
  %455 = bitcast i8* %454 to i32*, !dbg !2288
  store i32 1, i32* %455, align 8, !dbg !2289, !tbaa !849
  %456 = call noalias i8* @xstrdup(i8* %453) #11, !dbg !2290
  %457 = getelementptr inbounds i8, i8* %454, i64 8, !dbg !2291
  %458 = bitcast i8* %457 to i8**, !dbg !2292
  store i8* %456, i8** %458, align 8, !dbg !2293, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %454, metadata !1689, metadata !DIExpression()), !dbg !1776
  call void @free(i8* %453) #11, !dbg !2294
  br label %459

; <label>:459:                                    ; preds = %452, %334
  %460 = phi %union.anon* [ %372, %452 ], [ %340, %334 ], !dbg !2108
  %461 = phi i8* [ %454, %452 ], [ %335, %334 ]
  %462 = bitcast i8* %461 to %struct.valinfo*, !dbg !2295
  call void @llvm.dbg.value(metadata %struct.valinfo* %462, metadata !1689, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata %struct.valinfo* %271, metadata !987, metadata !DIExpression()) #11, !dbg !2296
  %463 = load i32, i32* %274, align 8, !dbg !2297, !tbaa !849
  %464 = icmp eq i32 %463, 1, !dbg !2298
  br i1 %464, label %465, label %468, !dbg !2299

; <label>:465:                                    ; preds = %459
  %466 = bitcast %union.anon* %460 to i8**, !dbg !2300
  %467 = load i8*, i8** %466, align 8, !dbg !2300, !tbaa !741
  call void @free(i8* %467) #11, !dbg !2301
  br label %470, !dbg !2301

; <label>:468:                                    ; preds = %459
  %469 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %271, i64 0, i32 1, i32 0, i64 0, !dbg !2302
  call void @__gmpz_clear(%struct.__mpz_struct* nonnull %469) #11, !dbg !2303
  br label %470

; <label>:470:                                    ; preds = %465, %468
  %471 = bitcast %struct.valinfo* %271 to i8*, !dbg !2304
  call void @free(i8* %471) #11, !dbg !2305
  call void @llvm.dbg.value(metadata %struct.valinfo* %272, metadata !987, metadata !DIExpression()) #11, !dbg !2306
  %472 = load i32, i32* %283, align 8, !dbg !2308, !tbaa !849
  %473 = icmp eq i32 %472, 1, !dbg !2309
  %474 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %272, i64 0, i32 1, !dbg !2310
  br i1 %473, label %475, label %478, !dbg !2311

; <label>:475:                                    ; preds = %470
  %476 = bitcast %union.anon* %474 to i8**, !dbg !2312
  %477 = load i8*, i8** %476, align 8, !dbg !2312, !tbaa !741
  call void @free(i8* %477) #11, !dbg !2313
  br label %480, !dbg !2313

; <label>:478:                                    ; preds = %470
  %479 = getelementptr inbounds %union.anon, %union.anon* %474, i64 0, i32 0, i64 0, !dbg !2314
  call void @__gmpz_clear(%struct.__mpz_struct* nonnull %479) #11, !dbg !2315
  br label %480

; <label>:480:                                    ; preds = %475, %478
  %481 = bitcast %struct.valinfo* %272 to i8*, !dbg !2316
  call void @free(i8* %481) #11, !dbg !2317
  call void @llvm.dbg.value(metadata %struct.valinfo* %273, metadata !987, metadata !DIExpression()) #11, !dbg !2318
  %482 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %273, i64 0, i32 0, !dbg !2320
  %483 = load i32, i32* %482, align 8, !dbg !2320, !tbaa !849
  %484 = icmp eq i32 %483, 1, !dbg !2321
  %485 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %273, i64 0, i32 1, !dbg !2322
  br i1 %484, label %486, label %489, !dbg !2323

; <label>:486:                                    ; preds = %480
  %487 = bitcast %union.anon* %485 to i8**, !dbg !2324
  %488 = load i8*, i8** %487, align 8, !dbg !2324, !tbaa !741
  call void @free(i8* %488) #11, !dbg !2325
  br label %491, !dbg !2325

; <label>:489:                                    ; preds = %480
  %490 = getelementptr inbounds %union.anon, %union.anon* %485, i64 0, i32 0, i64 0, !dbg !2326
  call void @__gmpz_clear(%struct.__mpz_struct* nonnull %490) #11, !dbg !2327
  br label %491

; <label>:491:                                    ; preds = %486, %489
  %492 = bitcast %struct.valinfo* %273 to i8*, !dbg !2328
  call void @free(i8* %492) #11, !dbg !2329
  br label %548, !dbg !2330

; <label>:493:                                    ; preds = %265
  %494 = load i8*, i8** %269, align 8, !dbg !2331, !tbaa !720
  call void @llvm.dbg.value(metadata i1 %0, metadata !2336, metadata !DIExpression()) #11, !dbg !2339
  %495 = icmp eq i8* %494, null, !dbg !2340
  br i1 %495, label %496, label %502, !dbg !2341

; <label>:496:                                    ; preds = %1, %30, %67, %104, %262, %493
  %497 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i64 0, i64 0), i32 5) #11, !dbg !2342
  %498 = load i8**, i8*** @args, align 8, !dbg !2342, !tbaa !720
  %499 = getelementptr inbounds i8*, i8** %498, i64 -1, !dbg !2342
  %500 = load i8*, i8** %499, align 8, !dbg !2342, !tbaa !720
  %501 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %500) #11, !dbg !2342
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %497, i8* %501) #11, !dbg !2342
  unreachable, !dbg !2342

; <label>:502:                                    ; preds = %493
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !2343
  %503 = tail call i32 @strcmp(i8* nonnull %494, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #15, !dbg !2346
  %504 = icmp eq i32 %503, 0, !dbg !2346
  %505 = zext i1 %504 to i64, !dbg !2347
  %506 = getelementptr inbounds i8*, i8** %269, i64 %505, !dbg !2347
  store i8** %506, i8*** @args, align 8, !dbg !2347, !tbaa !720
  br i1 %504, label %507, label %528, !dbg !2348

; <label>:507:                                    ; preds = %502
  %508 = tail call fastcc %struct.valinfo* @eval(i1 zeroext %0) #11, !dbg !2349
  call void @llvm.dbg.value(metadata %struct.valinfo* %508, metadata !2337, metadata !DIExpression()) #11, !dbg !2351
  %509 = load i8**, i8*** @args, align 8, !dbg !2352, !tbaa !720
  %510 = load i8*, i8** %509, align 8, !dbg !2355, !tbaa !720
  %511 = icmp eq i8* %510, null, !dbg !2356
  br i1 %511, label %512, label %518, !dbg !2357

; <label>:512:                                    ; preds = %507
  %513 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.69, i64 0, i64 0), i32 5) #11, !dbg !2358
  %514 = load i8**, i8*** @args, align 8, !dbg !2358, !tbaa !720
  %515 = getelementptr inbounds i8*, i8** %514, i64 -1, !dbg !2358
  %516 = load i8*, i8** %515, align 8, !dbg !2358, !tbaa !720
  %517 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %516) #11, !dbg !2358
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %513, i8* %517) #11, !dbg !2358
  unreachable, !dbg !2358

; <label>:518:                                    ; preds = %507
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !2359
  %519 = tail call i32 @strcmp(i8* nonnull %510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0)) #15, !dbg !2362
  %520 = icmp eq i32 %519, 0, !dbg !2362
  %521 = zext i1 %520 to i64, !dbg !2363
  %522 = getelementptr inbounds i8*, i8** %509, i64 %521, !dbg !2363
  store i8** %522, i8*** @args, align 8, !dbg !2363, !tbaa !720
  br i1 %520, label %548, label %523, !dbg !2364

; <label>:523:                                    ; preds = %518
  %524 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i64 0, i64 0), i32 5) #11, !dbg !2365
  %525 = load i8**, i8*** @args, align 8, !dbg !2365, !tbaa !720
  %526 = load i8*, i8** %525, align 8, !dbg !2365, !tbaa !720
  %527 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %526) #11, !dbg !2365
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %524, i8* %527) #11, !dbg !2365
  unreachable, !dbg !2365

; <label>:528:                                    ; preds = %502
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), metadata !912, metadata !DIExpression()) #11, !dbg !2366
  %529 = load i8*, i8** %506, align 8, !dbg !2369, !tbaa !720
  %530 = icmp eq i8* %529, null, !dbg !2370
  br i1 %530, label %538, label %531, !dbg !2371

; <label>:531:                                    ; preds = %528
  %532 = tail call i32 @strcmp(i8* nonnull %529, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0)) #15, !dbg !2372
  %533 = icmp eq i32 %532, 0, !dbg !2372
  %534 = zext i1 %533 to i64, !dbg !2373
  %535 = getelementptr inbounds i8*, i8** %506, i64 %534, !dbg !2373
  store i8** %535, i8*** @args, align 8, !dbg !2373, !tbaa !720
  br i1 %533, label %536, label %538, !dbg !2374

; <label>:536:                                    ; preds = %531
  %537 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i64 0, i64 0), i32 5) #11, !dbg !2375
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %537) #11, !dbg !2375
  unreachable, !dbg !2375

; <label>:538:                                    ; preds = %528, %531
  %539 = phi i8** [ %506, %528 ], [ %535, %531 ], !dbg !2376
  %540 = getelementptr inbounds i8*, i8** %539, i64 1, !dbg !2376
  store i8** %540, i8*** @args, align 8, !dbg !2376, !tbaa !720
  %541 = load i8*, i8** %539, align 8, !dbg !2377, !tbaa !720
  call void @llvm.dbg.value(metadata i8* %541, metadata !1725, metadata !DIExpression()) #11, !dbg !2378
  %542 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !2380
  %543 = bitcast i8* %542 to %struct.valinfo*, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.valinfo* %543, metadata !1730, metadata !DIExpression()) #11, !dbg !2381
  %544 = bitcast i8* %542 to i32*, !dbg !2382
  store i32 1, i32* %544, align 8, !dbg !2383, !tbaa !849
  %545 = tail call noalias i8* @xstrdup(i8* %541) #11, !dbg !2384
  %546 = getelementptr inbounds i8, i8* %542, i64 8, !dbg !2385
  %547 = bitcast i8* %546 to i8**, !dbg !2386
  store i8* %545, i8** %547, align 8, !dbg !2387, !tbaa !741
  br label %548, !dbg !2388

; <label>:548:                                    ; preds = %538, %518, %491, %260, %102, %65, %22
  %549 = phi %struct.valinfo* [ %25, %22 ], [ %55, %65 ], [ %92, %102 ], [ %242, %260 ], [ %462, %491 ], [ %543, %538 ], [ %508, %518 ], !dbg !2389
  ret %struct.valinfo* %549, !dbg !2390
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @docolon(%struct.valinfo*, %struct.valinfo*) unnamed_addr #7 !dbg !2391 {
  %3 = alloca %struct.mbuiter_multi, align 8
  %4 = alloca %struct.re_pattern_buffer, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.re_registers, align 8
  call void @llvm.dbg.value(metadata %struct.valinfo* %0, metadata !2395, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata %struct.valinfo* %1, metadata !2396, metadata !DIExpression()), !dbg !2439
  %7 = bitcast %struct.re_pattern_buffer* %4 to i8*, !dbg !2440
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #11, !dbg !2440
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2441
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #11, !dbg !2441
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !2422, metadata !DIExpression()), !dbg !2442
  %9 = bitcast %struct.re_registers* %6 to i8*, !dbg !2443
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #11, !dbg !2443
  call void @llvm.dbg.value(metadata %struct.valinfo* %0, metadata !1274, metadata !DIExpression()) #11, !dbg !2444
  %10 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 0, !dbg !2446
  %11 = load i32, i32* %10, align 8, !dbg !2446, !tbaa !849
  switch i32 %11, label %17 [
    i32 0, label %12
    i32 1, label %18
  ], !dbg !2447

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1, !dbg !2448
  %14 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0, i64 0, !dbg !2449
  %15 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %14) #11, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %15, metadata !1277, metadata !DIExpression()) #11, !dbg !2451
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %14) #11, !dbg !2452
  %16 = bitcast %union.anon* %13 to i8**, !dbg !2453
  store i8* %15, i8** %16, align 8, !dbg !2454, !tbaa !741
  store i32 1, i32* %10, align 8, !dbg !2455, !tbaa !849
  br label %18, !dbg !2456

; <label>:17:                                     ; preds = %2
  tail call void @abort() #16, !dbg !2457
  unreachable, !dbg !2457

; <label>:18:                                     ; preds = %2, %12
  call void @llvm.dbg.value(metadata %struct.valinfo* %1, metadata !1274, metadata !DIExpression()) #11, !dbg !2458
  %19 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 0, !dbg !2460
  %20 = load i32, i32* %19, align 8, !dbg !2460, !tbaa !849
  switch i32 %20, label %30 [
    i32 0, label %25
    i32 1, label %21
  ], !dbg !2461

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1
  %23 = bitcast %union.anon* %22 to i8**
  %24 = load i8*, i8** %23, align 8, !dbg !2462, !tbaa !741
  br label %31, !dbg !2461

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1, !dbg !2463
  %27 = getelementptr inbounds %union.anon, %union.anon* %26, i64 0, i32 0, i64 0, !dbg !2464
  %28 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* nonnull %27) #11, !dbg !2465
  call void @llvm.dbg.value(metadata i8* %28, metadata !1277, metadata !DIExpression()) #11, !dbg !2466
  tail call void @__gmpz_clear(%struct.__mpz_struct* nonnull %27) #11, !dbg !2467
  %29 = bitcast %union.anon* %26 to i8**, !dbg !2468
  store i8* %28, i8** %29, align 8, !dbg !2469, !tbaa !741
  store i32 1, i32* %19, align 8, !dbg !2470, !tbaa !849
  br label %31, !dbg !2471

; <label>:30:                                     ; preds = %18
  tail call void @abort() #16, !dbg !2472
  unreachable, !dbg !2472

; <label>:31:                                     ; preds = %21, %25
  %32 = phi i8* [ %24, %21 ], [ %28, %25 ], !dbg !2462
  %33 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %6, i64 0, i32 0, !dbg !2473
  store i32 0, i32* %33, align 8, !dbg !2474, !tbaa !2475
  %34 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %6, i64 0, i32 1, !dbg !2477
  %35 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %6, i64 0, i32 2, !dbg !2478
  %36 = bitcast i32** %34 to i8*, !dbg !2479
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %36, i8 0, i64 16, i1 false), !dbg !2480
  %37 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i64 0, i32 4, !dbg !2481
  %38 = bitcast %struct.re_pattern_buffer* %4 to i8*, !dbg !2482
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %38, i8 0, i64 16, i1 false), !dbg !2483
  store i8* %8, i8** %37, align 8, !dbg !2482, !tbaa !2484
  %39 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i64 0, i32 5, !dbg !2486
  store i8* null, i8** %39, align 8, !dbg !2487, !tbaa !2488
  store i64 710, i64* @re_syntax_options, align 8, !dbg !2489, !tbaa !2156
  %40 = call i64 @strlen(i8* %32) #15, !dbg !2490
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %4, metadata !2399, metadata !DIExpression(DW_OP_deref)), !dbg !2491
  %41 = call i8* @re_compile_pattern(i8* %32, i64 %40, %struct.re_pattern_buffer* nonnull %4) #11, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %41, metadata !2398, metadata !DIExpression()), !dbg !2493
  %42 = icmp eq i8* %41, null, !dbg !2494
  br i1 %42, label %44, label %43, !dbg !2496

; <label>:43:                                     ; preds = %31
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %41) #11, !dbg !2497
  unreachable, !dbg !2497

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i64 0, i32 7, !dbg !2498
  %46 = load i8, i8* %45, align 8, !dbg !2499
  %47 = and i8 %46, 127, !dbg !2499
  store i8 %47, i8* %45, align 8, !dbg !2499
  %48 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1, !dbg !2500
  %49 = bitcast %union.anon* %48 to i8**, !dbg !2501
  %50 = load i8*, i8** %49, align 8, !dbg !2501, !tbaa !741
  %51 = call i64 @strlen(i8* %50) #15, !dbg !2502
  %52 = trunc i64 %51 to i32, !dbg !2502
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %4, metadata !2399, metadata !DIExpression(DW_OP_deref)), !dbg !2491
  call void @llvm.dbg.value(metadata %struct.re_registers* %6, metadata !2423, metadata !DIExpression(DW_OP_deref)), !dbg !2503
  %53 = call i32 @re_match(%struct.re_pattern_buffer* nonnull %4, i8* %50, i32 %52, i32 0, %struct.re_registers* nonnull %6) #11, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %53, metadata !2432, metadata !DIExpression()), !dbg !2505
  %54 = icmp sgt i32 %53, -1, !dbg !2506
  br i1 %54, label %55, label %128, !dbg !2507

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i64 0, i32 6, !dbg !2508
  %57 = load i64, i64* %56, align 8, !dbg !2508, !tbaa !2509
  %58 = icmp eq i64 %57, 0, !dbg !2510
  br i1 %58, label %78, label %59, !dbg !2511

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** %49, align 8, !dbg !2512, !tbaa !741
  %61 = load i32*, i32** %35, align 8, !dbg !2514, !tbaa !2515
  %62 = getelementptr inbounds i32, i32* %61, i64 1, !dbg !2516
  %63 = load i32, i32* %62, align 4, !dbg !2516, !tbaa !809
  %64 = sext i32 %63 to i64, !dbg !2517
  %65 = getelementptr inbounds i8, i8* %60, i64 %64, !dbg !2517
  store i8 0, i8* %65, align 1, !dbg !2518, !tbaa !741
  %66 = load i8*, i8** %49, align 8, !dbg !2519, !tbaa !741
  %67 = load i32*, i32** %34, align 8, !dbg !2520, !tbaa !2521
  %68 = getelementptr inbounds i32, i32* %67, i64 1, !dbg !2522
  %69 = load i32, i32* %68, align 4, !dbg !2522, !tbaa !809
  %70 = sext i32 %69 to i64, !dbg !2523
  %71 = getelementptr inbounds i8, i8* %66, i64 %70, !dbg !2523
  call void @llvm.dbg.value(metadata i8* %71, metadata !1725, metadata !DIExpression()) #11, !dbg !2524
  %72 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2526
  %73 = bitcast i8* %72 to %struct.valinfo*, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.valinfo* %73, metadata !1730, metadata !DIExpression()) #11, !dbg !2527
  %74 = bitcast i8* %72 to i32*, !dbg !2528
  store i32 1, i32* %74, align 8, !dbg !2529, !tbaa !849
  %75 = call noalias i8* @xstrdup(i8* %71) #11, !dbg !2530
  %76 = getelementptr inbounds i8, i8* %72, i64 8, !dbg !2531
  %77 = bitcast i8* %76 to i8**, !dbg !2532
  store i8* %75, i8** %77, align 8, !dbg !2533, !tbaa !741
  call void @llvm.dbg.value(metadata %struct.valinfo* %73, metadata !2397, metadata !DIExpression()), !dbg !2534
  br label %149, !dbg !2535

; <label>:78:                                     ; preds = %55
  %79 = call i64 @__ctype_get_mb_cur_max() #11, !dbg !2536
  %80 = icmp eq i64 %79, 1, !dbg !2537
  br i1 %80, label %81, label %83, !dbg !2536

; <label>:81:                                     ; preds = %78
  %82 = sext i32 %53 to i64, !dbg !2538
  br label %121, !dbg !2536

; <label>:83:                                     ; preds = %78
  %84 = load i8*, i8** %49, align 8, !dbg !2539, !tbaa !741
  %85 = sext i32 %53 to i64, !dbg !2540
  call void @llvm.dbg.value(metadata i8* %84, metadata !2541, metadata !DIExpression()) #11, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %85, metadata !2546, metadata !DIExpression()) #11, !dbg !2556
  %86 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 0, !dbg !2557
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %86) #11, !dbg !2557
  call void @llvm.dbg.value(metadata i64 0, metadata !2548, metadata !DIExpression()) #11, !dbg !2558
  %87 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, !dbg !2559
  %88 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %87, i64 0, i32 0, !dbg !2559
  store i8* %84, i8** %88, align 8, !dbg !2559, !tbaa !1939
  store i8 0, i8* %86, align 8, !dbg !2559, !tbaa !1944
  %89 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 1, !dbg !2559
  %90 = bitcast %struct.__mbstate_t* %89 to i64*, !dbg !2559
  store i64 0, i64* %90, align 4, !dbg !2559
  %91 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 2, !dbg !2559
  %92 = bitcast %struct.mbchar* %87 to i64*, !dbg !2560
  store i8 0, i8* %91, align 4, !dbg !2561, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 0, metadata !2548, metadata !DIExpression()) #11, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %3, metadata !2547, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2562
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3) #11, !dbg !2563
  %93 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 2, !dbg !2563
  %94 = load i8, i8* %93, align 8, !dbg !2563, !tbaa !1949, !range !1950
  %95 = icmp eq i8 %94, 0, !dbg !2563
  %96 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 3, !dbg !2563
  %97 = load i32, i32* %96, align 4, !dbg !2563
  %98 = icmp ne i32 %97, 0, !dbg !2563
  %99 = or i1 %95, %98, !dbg !2563
  br i1 %99, label %100, label %119, !dbg !2564

; <label>:100:                                    ; preds = %83
  %101 = ptrtoint i8* %84 to i64
  %102 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 1
  br label %103, !dbg !2564

; <label>:103:                                    ; preds = %110, %100
  %104 = phi i64 [ 0, %100 ], [ %109, %110 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !2548, metadata !DIExpression()) #11, !dbg !2558
  %105 = load i64, i64* %92, align 8, !dbg !2560, !tbaa !1939
  %106 = sub i64 %105, %101, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %106, metadata !2549, metadata !DIExpression()) #11, !dbg !2566
  %107 = icmp ult i64 %106, %85, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %104, metadata !2548, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2558
  %108 = zext i1 %107 to i64, !dbg !2569
  %109 = add i64 %104, %108, !dbg !2569
  br i1 %107, label %110, label %119

; <label>:110:                                    ; preds = %103
  %111 = inttoptr i64 %105 to i8*
  %112 = load i64, i64* %102, align 8, !dbg !2570, !tbaa !1954
  %113 = getelementptr inbounds i8, i8* %111, i64 %112, !dbg !2570
  store i8* %113, i8** %88, align 8, !dbg !2570, !tbaa !1939
  store i8 0, i8* %91, align 4, !dbg !2561, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 %109, metadata !2548, metadata !DIExpression()) #11, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %3, metadata !2547, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2562
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3) #11, !dbg !2563
  %114 = load i8, i8* %93, align 8, !dbg !2563, !tbaa !1949, !range !1950
  %115 = icmp eq i8 %114, 0, !dbg !2563
  %116 = load i32, i32* %96, align 4, !dbg !2563
  %117 = icmp ne i32 %116, 0, !dbg !2563
  %118 = or i1 %115, %117, !dbg !2563
  br i1 %118, label %103, label %119, !dbg !2564, !llvm.loop !2571

; <label>:119:                                    ; preds = %103, %110, %83
  %120 = phi i64 [ 0, %83 ], [ %109, %110 ], [ %109, %103 ], !dbg !2558
  call void @llvm.dbg.value(metadata i64 %120, metadata !2548, metadata !DIExpression()) #11, !dbg !2558
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %86) #11, !dbg !2574
  br label %121, !dbg !2536

; <label>:121:                                    ; preds = %119, %81
  %122 = phi i64 [ %82, %81 ], [ %120, %119 ], !dbg !2536
  call void @llvm.dbg.value(metadata i64 %122, metadata !2433, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i64 %122, metadata !1025, metadata !DIExpression()) #11, !dbg !2576
  %123 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2578
  %124 = bitcast i8* %123 to %struct.valinfo*, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.valinfo* %124, metadata !1030, metadata !DIExpression()) #11, !dbg !2579
  %125 = bitcast i8* %123 to i32*, !dbg !2580
  store i32 0, i32* %125, align 8, !dbg !2581, !tbaa !849
  %126 = getelementptr inbounds i8, i8* %123, i64 8, !dbg !2582
  %127 = bitcast i8* %126 to %struct.__mpz_struct*, !dbg !2583
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* nonnull %127, i64 %122) #11, !dbg !2584
  call void @llvm.dbg.value(metadata %struct.valinfo* %124, metadata !2397, metadata !DIExpression()), !dbg !2534
  br label %149

; <label>:128:                                    ; preds = %44
  switch i32 %53, label %146 [
    i32 -1, label %129
    i32 -2, label %143
  ], !dbg !2585

; <label>:129:                                    ; preds = %128
  %130 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i64 0, i32 6, !dbg !2586
  %131 = load i64, i64* %130, align 8, !dbg !2586, !tbaa !2509
  %132 = icmp eq i64 %131, 0, !dbg !2590
  %133 = call noalias i8* @xmalloc(i64 24) #11, !dbg !2591
  %134 = bitcast i8* %133 to %struct.valinfo*, !dbg !2591
  %135 = bitcast i8* %133 to i32*, !dbg !2591
  br i1 %132, label %140, label %136, !dbg !2592

; <label>:136:                                    ; preds = %129
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), metadata !1725, metadata !DIExpression()) #11, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.valinfo* %134, metadata !1730, metadata !DIExpression()) #11, !dbg !2595
  store i32 1, i32* %135, align 8, !dbg !2596, !tbaa !849
  %137 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !2597
  %138 = getelementptr inbounds i8, i8* %133, i64 8, !dbg !2598
  %139 = bitcast i8* %138 to i8**, !dbg !2599
  store i8* %137, i8** %139, align 8, !dbg !2600, !tbaa !741
  call void @llvm.dbg.value(metadata %struct.valinfo* %134, metadata !2397, metadata !DIExpression()), !dbg !2534
  br label %149, !dbg !2601

; <label>:140:                                    ; preds = %129
  call void @llvm.dbg.value(metadata i64 0, metadata !1025, metadata !DIExpression()) #11, !dbg !2602
  call void @llvm.dbg.value(metadata %struct.valinfo* %134, metadata !1030, metadata !DIExpression()) #11, !dbg !2604
  store i32 0, i32* %135, align 8, !dbg !2605, !tbaa !849
  %141 = getelementptr inbounds i8, i8* %133, i64 8, !dbg !2606
  %142 = bitcast i8* %141 to %struct.__mpz_struct*, !dbg !2607
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* nonnull %142, i64 0) #11, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.valinfo* %134, metadata !2397, metadata !DIExpression()), !dbg !2534
  br label %149

; <label>:143:                                    ; preds = %128
  %144 = tail call i32* @__errno_location() #18, !dbg !2609
  %145 = load i32, i32* %144, align 4, !dbg !2609, !tbaa !809
  br label %146, !dbg !2609

; <label>:146:                                    ; preds = %128, %143
  %147 = phi i32 [ %145, %143 ], [ 75, %128 ], !dbg !2609
  %148 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i64 0, i64 0), i32 5) #11, !dbg !2609
  call void (i32, i32, i8*, ...) @error(i32 3, i32 %147, i8* %148) #11, !dbg !2609
  unreachable, !dbg !2609

; <label>:149:                                    ; preds = %140, %136, %59, %121
  %150 = phi %struct.valinfo* [ %73, %59 ], [ %124, %121 ], [ %134, %136 ], [ %134, %140 ], !dbg !2591
  call void @llvm.dbg.value(metadata %struct.valinfo* %150, metadata !2397, metadata !DIExpression()), !dbg !2534
  %151 = load i32, i32* %33, align 8, !dbg !2610, !tbaa !2475
  %152 = icmp eq i32 %151, 0, !dbg !2612
  br i1 %152, label %158, label %153, !dbg !2613

; <label>:153:                                    ; preds = %149
  %154 = bitcast i32** %34 to i8**, !dbg !2614
  %155 = load i8*, i8** %154, align 8, !dbg !2614, !tbaa !2521
  call void @free(i8* %155) #11, !dbg !2616
  %156 = bitcast i32** %35 to i8**, !dbg !2617
  %157 = load i8*, i8** %156, align 8, !dbg !2617, !tbaa !2515
  call void @free(i8* %157) #11, !dbg !2618
  br label %158, !dbg !2619

; <label>:158:                                    ; preds = %149, %153
  store i8* null, i8** %37, align 8, !dbg !2620, !tbaa !2484
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %4, metadata !2399, metadata !DIExpression(DW_OP_deref)), !dbg !2491
  call void @regfree(%struct.re_pattern_buffer* nonnull %4) #11, !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #11, !dbg !2622
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #11, !dbg !2622
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #11, !dbg !2622
  ret %struct.valinfo* %150, !dbg !2623
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

declare i32 @re_match(%struct.re_pattern_buffer*, i8*, i32, i32, %struct.re_registers*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

declare void @regfree(%struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !2624 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2626, metadata !DIExpression()), !dbg !2627
  store i8* %0, i8** @file_name, align 8, !dbg !2628, !tbaa !720
  ret void, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !2630 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2636, !tbaa !2637
  ret void, !dbg !2638
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !2639 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2644, !tbaa !720
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !2645
  %3 = icmp eq i32 %2, 0, !dbg !2646
  br i1 %3, label %22, label %4, !dbg !2647

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2648, !tbaa !2637, !range !1950
  %6 = icmp eq i8 %5, 0, !dbg !2648
  br i1 %6, label %11, label %7, !dbg !2649

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #18, !dbg !2650
  %9 = load i32, i32* %8, align 4, !dbg !2650, !tbaa !809
  %10 = icmp eq i32 %9, 32, !dbg !2651
  br i1 %10, label %22, label %11, !dbg !2652

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %12, metadata !2641, metadata !DIExpression()), !dbg !2654
  %13 = load i8*, i8** @file_name, align 8, !dbg !2655, !tbaa !720
  %14 = icmp eq i8* %13, null, !dbg !2655
  %15 = tail call i32* @__errno_location() #18, !dbg !2657
  %16 = load i32, i32* %15, align 4, !dbg !2657, !tbaa !809
  br i1 %14, label %19, label %17, !dbg !2658

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !2659
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.49, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !2660
  br label %20, !dbg !2660

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.50, i64 0, i64 0), i8* %12) #11, !dbg !2661
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2662, !tbaa !809
  tail call void @_exit(i32 %21) #16, !dbg !2663
  unreachable, !dbg !2663

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2664, !tbaa !720
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !2666
  %25 = icmp eq i32 %24, 0, !dbg !2667
  br i1 %25, label %28, label %26, !dbg !2668

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2669, !tbaa !809
  tail call void @_exit(i32 %27) #16, !dbg !2670
  unreachable, !dbg !2670

; <label>:28:                                     ; preds = %22
  ret void, !dbg !2671
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !2672 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2677, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8** %1, metadata !2678, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8* %2, metadata !2679, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %3, metadata !2680, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %4, metadata !2681, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !2682, metadata !DIExpression()), !dbg !2707
  %8 = load i32, i32* @opterr, align 4, !dbg !2708, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %8, metadata !2684, metadata !DIExpression()), !dbg !2709
  store i32 0, i32* @opterr, align 4, !dbg !2710, !tbaa !809
  %9 = icmp eq i32 %0, 2, !dbg !2711
  br i1 %9, label %10, label %17, !dbg !2712

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %11, metadata !2683, metadata !DIExpression()), !dbg !2714
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2715

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !2716
  br label %17, !dbg !2717

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2718
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !2718
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2685, metadata !DIExpression()), !dbg !2719
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2720
  call void @llvm.va_start(i8* nonnull %14), !dbg !2720
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2721, !tbaa !720
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !2722
  call void @exit(i32 0) #16, !dbg !2723
  unreachable, !dbg !2723

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2724, !tbaa !809
  store i32 0, i32* @optind, align 4, !dbg !2725, !tbaa !809
  ret void, !dbg !2726
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @mbschr(i8* nonnull, i32) local_unnamed_addr #12 !dbg !2727 {
  %3 = alloca %struct.mbuiter_multi, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2732, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %1, metadata !2733, metadata !DIExpression()), !dbg !2762
  %4 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2763
  %5 = icmp ugt i64 %4, 1, !dbg !2764
  %6 = and i32 %1, 240, !dbg !2765
  %7 = icmp ugt i32 %6, 47, !dbg !2766
  %8 = and i1 %7, %5, !dbg !2767
  br i1 %8, label %9, label %41, !dbg !2767

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 0, !dbg !2768
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #11, !dbg !2768
  %11 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 0, !dbg !2769
  store i8* %0, i8** %11, align 8, !dbg !2769, !tbaa !1939
  store i8 0, i8* %10, align 8, !dbg !2769, !tbaa !1944
  %12 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 1, !dbg !2769
  %13 = bitcast %struct.__mbstate_t* %12 to i64*, !dbg !2769
  store i64 0, i64* %13, align 4, !dbg !2769
  %14 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 2, !dbg !2769
  store i8 0, i8* %14, align 4, !dbg !2771, !tbaa !1946
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %3, metadata !2734, metadata !DIExpression(DW_OP_deref)), !dbg !2773
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3), !dbg !2774
  %15 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 2, !dbg !2774
  %16 = load i8, i8* %15, align 8, !dbg !2774, !tbaa !1949, !range !1950
  %17 = icmp eq i8 %16, 0, !dbg !2774
  %18 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 3, !dbg !2774
  %19 = load i32, i32* %18, align 4, !dbg !2774
  %20 = icmp ne i32 %19, 0, !dbg !2774
  %21 = or i1 %17, %20, !dbg !2774
  br i1 %21, label %22, label %39, !dbg !2777

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 1
  %24 = trunc i32 %1 to i8
  br label %25, !dbg !2777

; <label>:25:                                     ; preds = %22, %32
  %26 = load i64, i64* %23, align 8, !dbg !2778, !tbaa !1954
  %27 = icmp eq i64 %26, 1, !dbg !2780
  %28 = load i8*, i8** %11, align 8, !dbg !2771, !tbaa !1939
  br i1 %27, label %29, label %32, !dbg !2781

; <label>:29:                                     ; preds = %25
  %30 = load i8, i8* %28, align 1, !dbg !2782, !tbaa !741
  %31 = icmp eq i8 %30, %24, !dbg !2783
  br i1 %31, label %39, label %32, !dbg !2784

; <label>:32:                                     ; preds = %25, %29
  %33 = getelementptr inbounds i8, i8* %28, i64 %26, !dbg !2785
  store i8* %33, i8** %11, align 8, !dbg !2785, !tbaa !1939
  store i8 0, i8* %14, align 4, !dbg !2771, !tbaa !1946
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %3, metadata !2734, metadata !DIExpression(DW_OP_deref)), !dbg !2773
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3), !dbg !2774
  %34 = load i8, i8* %15, align 8, !dbg !2774, !tbaa !1949, !range !1950
  %35 = icmp eq i8 %34, 0, !dbg !2774
  %36 = load i32, i32* %18, align 4, !dbg !2774
  %37 = icmp ne i32 %36, 0, !dbg !2774
  %38 = or i1 %35, %37, !dbg !2774
  br i1 %38, label %25, label %39, !dbg !2777, !llvm.loop !2786

; <label>:39:                                     ; preds = %29, %32, %9
  %40 = phi i8* [ null, %9 ], [ null, %32 ], [ %28, %29 ], !dbg !2789
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #11, !dbg !2790
  br label %43

; <label>:41:                                     ; preds = %2
  %42 = tail call i8* @strchr(i8* nonnull %0, i32 %1) #15, !dbg !2791
  br label %43, !dbg !2792

; <label>:43:                                     ; preds = %41, %39
  %44 = phi i8* [ %40, %39 ], [ %42, %41 ], !dbg !2793
  ret i8* %44, !dbg !2794
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @mbslen(i8* nonnull) local_unnamed_addr #12 !dbg !2795 {
  %2 = alloca %struct.mbuiter_multi, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2800, metadata !DIExpression()), !dbg !2829
  %3 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2830
  %4 = icmp ugt i64 %3, 1, !dbg !2831
  br i1 %4, label %5, label %33, !dbg !2832

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 0, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #11, !dbg !2833
  call void @llvm.dbg.value(metadata i64 0, metadata !2801, metadata !DIExpression()), !dbg !2834
  %7 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 0, !dbg !2835
  store i8* %0, i8** %7, align 8, !dbg !2835, !tbaa !1939
  store i8 0, i8* %6, align 8, !dbg !2835, !tbaa !1944
  %8 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 1, !dbg !2835
  %9 = bitcast %struct.__mbstate_t* %8 to i64*, !dbg !2835
  store i64 0, i64* %9, align 4, !dbg !2835
  %10 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 2, !dbg !2835
  store i8 0, i8* %10, align 4, !dbg !2837, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 0, metadata !2801, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %2, metadata !2804, metadata !DIExpression(DW_OP_deref)), !dbg !2839
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %2), !dbg !2840
  %11 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 2, !dbg !2840
  %12 = load i8, i8* %11, align 8, !dbg !2840, !tbaa !1949, !range !1950
  %13 = icmp eq i8 %12, 0, !dbg !2840
  %14 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 3, !dbg !2840
  %15 = load i32, i32* %14, align 4, !dbg !2840
  %16 = icmp ne i32 %15, 0, !dbg !2840
  %17 = or i1 %13, %16, !dbg !2840
  br i1 %17, label %18, label %31, !dbg !2841

; <label>:18:                                     ; preds = %5
  %19 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 1
  br label %20, !dbg !2841

; <label>:20:                                     ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !2801, metadata !DIExpression()), !dbg !2834
  %22 = add i64 %21, 1, !dbg !2842
  %23 = load i64, i64* %19, align 8, !dbg !2843, !tbaa !1954
  %24 = load i8*, i8** %7, align 8, !dbg !2843, !tbaa !1939
  %25 = getelementptr inbounds i8, i8* %24, i64 %23, !dbg !2843
  store i8* %25, i8** %7, align 8, !dbg !2843, !tbaa !1939
  store i8 0, i8* %10, align 4, !dbg !2837, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 %22, metadata !2801, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %2, metadata !2804, metadata !DIExpression(DW_OP_deref)), !dbg !2839
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %2), !dbg !2840
  %26 = load i8, i8* %11, align 8, !dbg !2840, !tbaa !1949, !range !1950
  %27 = icmp eq i8 %26, 0, !dbg !2840
  %28 = load i32, i32* %14, align 4, !dbg !2840
  %29 = icmp ne i32 %28, 0, !dbg !2840
  %30 = or i1 %27, %29, !dbg !2840
  br i1 %30, label %20, label %31, !dbg !2841, !llvm.loop !2844

; <label>:31:                                     ; preds = %20, %5
  %32 = phi i64 [ 0, %5 ], [ %22, %20 ], !dbg !2837
  call void @llvm.dbg.value(metadata i64 %32, metadata !2801, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #11, !dbg !2846
  br label %35

; <label>:33:                                     ; preds = %1
  %34 = tail call i64 @strlen(i8* nonnull %0) #15, !dbg !2847
  br label %35, !dbg !2848

; <label>:35:                                     ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ], !dbg !2849
  ret i64 %36, !dbg !2850
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local void @mbuiter_multi_next(%struct.mbuiter_multi*) local_unnamed_addr #13 !dbg !2851 {
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %0, metadata !2879, metadata !DIExpression()), !dbg !2880
  %2 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 2, !dbg !2881
  %3 = load i8, i8* %2, align 4, !dbg !2881, !tbaa !1946, !range !1950
  %4 = icmp eq i8 %3, 0, !dbg !2881
  br i1 %4, label %5, label %64, !dbg !2883

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 0, !dbg !2884
  %7 = load i8, i8* %6, align 8, !dbg !2884, !tbaa !1944, !range !1950
  %8 = icmp eq i8 %7, 0, !dbg !2884
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0
  %10 = load i8*, i8** %9, align 8, !dbg !2886, !tbaa !1939
  br i1 %8, label %13, label %11, !dbg !2889

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1, !dbg !2890
  br label %36, !dbg !2889

; <label>:13:                                     ; preds = %5
  %14 = load i8, i8* %10, align 1, !dbg !2891, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %14, metadata !2892, metadata !DIExpression()), !dbg !2897
  %15 = zext i8 %14 to i32, !dbg !2899
  %16 = lshr i32 %15, 5, !dbg !2900
  %17 = zext i32 %16 to i64, !dbg !2901
  %18 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %17, !dbg !2901
  %19 = load i32, i32* %18, align 4, !dbg !2901, !tbaa !809
  %20 = and i32 %15, 31, !dbg !2902
  %21 = shl i32 1, %20, !dbg !2903
  %22 = and i32 %21, %19, !dbg !2903
  %23 = icmp eq i32 %22, 0, !dbg !2903
  br i1 %23, label %30, label %24, !dbg !2904

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1, !dbg !2905
  store i64 1, i64* %25, align 8, !dbg !2907, !tbaa !1954
  %26 = load i8, i8* %10, align 1, !dbg !2908, !tbaa !741
  %27 = sext i8 %26 to i32, !dbg !2908
  %28 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3, !dbg !2909
  store i32 %27, i32* %28, align 4, !dbg !2910, !tbaa !1973
  %29 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2, !dbg !2911
  store i8 1, i8* %29, align 8, !dbg !2912, !tbaa !1949
  br label %63, !dbg !2913

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1, !dbg !2914
  %32 = tail call i32 @mbsinit(%struct.__mbstate_t* nonnull %31) #15, !dbg !2914
  %33 = icmp eq i32 %32, 0, !dbg !2914
  br i1 %33, label %34, label %35, !dbg !2917

; <label>:34:                                     ; preds = %30
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.76, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #16, !dbg !2914
  unreachable, !dbg !2914

; <label>:35:                                     ; preds = %30
  store i8 1, i8* %6, align 8, !dbg !2918, !tbaa !1944
  br label %36, !dbg !2919

; <label>:36:                                     ; preds = %11, %35
  %37 = phi %struct.__mbstate_t* [ %12, %11 ], [ %31, %35 ], !dbg !2890
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3, !dbg !2920
  %39 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2921
  %40 = tail call i64 @strnlen1(i8* %10, i64 %39) #15, !dbg !2922
  %41 = tail call i64 @rpl_mbrtowc(i32* nonnull %38, i8* %10, i64 %40, %struct.__mbstate_t* nonnull %37) #11, !dbg !2923
  %42 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1, !dbg !2924
  store i64 %41, i64* %42, align 8, !dbg !2925, !tbaa !1954
  switch i64 %41, label %58 [
    i64 -1, label %43
    i64 -2, label %45
    i64 0, label %49
  ], !dbg !2926

; <label>:43:                                     ; preds = %36
  store i64 1, i64* %42, align 8, !dbg !2927, !tbaa !1954
  %44 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2, !dbg !2930
  store i8 0, i8* %44, align 8, !dbg !2931, !tbaa !1949
  br label %63, !dbg !2932

; <label>:45:                                     ; preds = %36
  %46 = load i8*, i8** %9, align 8, !dbg !2933, !tbaa !1939
  %47 = tail call i64 @strlen(i8* %46) #15, !dbg !2936
  store i64 %47, i64* %42, align 8, !dbg !2937, !tbaa !1954
  %48 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2, !dbg !2938
  store i8 0, i8* %48, align 8, !dbg !2939, !tbaa !1949
  br label %63, !dbg !2940

; <label>:49:                                     ; preds = %36
  store i64 1, i64* %42, align 8, !dbg !2941, !tbaa !1954
  %50 = load i8*, i8** %9, align 8, !dbg !2945, !tbaa !1939
  %51 = load i8, i8* %50, align 1, !dbg !2945, !tbaa !741
  %52 = icmp eq i8 %51, 0, !dbg !2945
  br i1 %52, label %54, label %53, !dbg !2948

; <label>:53:                                     ; preds = %49
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.77, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.76, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #16, !dbg !2945
  unreachable, !dbg !2945

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %38, align 4, !dbg !2949, !tbaa !1973
  %56 = icmp eq i32 %55, 0, !dbg !2949
  br i1 %56, label %58, label %57, !dbg !2952

; <label>:57:                                     ; preds = %54
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.78, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.76, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #16, !dbg !2949
  unreachable, !dbg !2949

; <label>:58:                                     ; preds = %36, %54
  %59 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2, !dbg !2953
  store i8 1, i8* %59, align 8, !dbg !2954, !tbaa !1949
  %60 = tail call i32 @mbsinit(%struct.__mbstate_t* nonnull %37) #15, !dbg !2955
  %61 = icmp eq i32 %60, 0, !dbg !2955
  br i1 %61, label %63, label %62, !dbg !2957

; <label>:62:                                     ; preds = %58
  store i8 0, i8* %6, align 8, !dbg !2958, !tbaa !1944
  br label %63, !dbg !2959

; <label>:63:                                     ; preds = %58, %43, %62, %45, %24
  store i8 1, i8* %2, align 4, !dbg !2960, !tbaa !1946
  br label %64, !dbg !2961

; <label>:64:                                     ; preds = %1, %63
  ret void, !dbg !2961
}

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local void @mbuiter_multi_reloc(%struct.mbuiter_multi* nocapture, i64) local_unnamed_addr #13 !dbg !2962 {
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %0, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2969
  %3 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0, !dbg !2970
  %4 = load i8*, i8** %3, align 8, !dbg !2971, !tbaa !1939
  %5 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2971
  store i8* %5, i8** %3, align 8, !dbg !2971, !tbaa !1939
  ret void, !dbg !2972
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local void @mbuiter_multi_copy(%struct.mbuiter_multi*, %struct.mbuiter_multi* readonly) local_unnamed_addr #13 !dbg !2973 {
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %0, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %1, metadata !2980, metadata !DIExpression()), !dbg !2982
  %3 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 0, !dbg !2983
  %4 = load i8, i8* %3, align 8, !dbg !2983, !tbaa !1944, !range !1950
  %5 = icmp eq i8 %4, 0, !dbg !2983
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 0, !dbg !2985
  store i8 %4, i8* %6, align 8, !dbg !2986, !tbaa !1944
  %7 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1, !dbg !2987
  br i1 %5, label %13, label %8, !dbg !2988

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 1, !dbg !2989
  %10 = bitcast %struct.__mbstate_t* %9 to i64*, !dbg !2990
  %11 = bitcast %struct.__mbstate_t* %7 to i64*, !dbg !2990
  %12 = load i64, i64* %10, align 4, !dbg !2990
  store i64 %12, i64* %11, align 4, !dbg !2990
  br label %15, !dbg !2990

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.__mbstate_t* %7 to i64*, !dbg !2991
  store i64 0, i64* %14, align 4, !dbg !2991
  br label %15

; <label>:15:                                     ; preds = %13, %8
  %16 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 2, !dbg !2992
  %17 = load i8, i8* %16, align 4, !dbg !2992, !tbaa !1946, !range !1950
  %18 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 2, !dbg !2993
  store i8 %17, i8* %18, align 4, !dbg !2994, !tbaa !1946
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %0, metadata !2995, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #11, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.mbuiter_multi* %1, metadata !3004, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #11, !dbg !3007
  %19 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 0, !dbg !3008
  %20 = load i8*, i8** %19, align 8, !dbg !3008, !tbaa !3010
  %21 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 4, i64 0, !dbg !3011
  %22 = icmp eq i8* %20, %21, !dbg !3012
  br i1 %22, label %23, label %27, !dbg !3013

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 4, i64 0, !dbg !3014
  %25 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 1, !dbg !3016
  %26 = load i64, i64* %25, align 8, !dbg !3016, !tbaa !3017
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %24, i8* nonnull align 8 %20, i64 %26, i1 false) #11, !dbg !3018
  br label %29, !dbg !3019

; <label>:27:                                     ; preds = %15
  %28 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 1, !dbg !3020
  br label %29

; <label>:29:                                     ; preds = %27, %23
  %30 = phi i64* [ %28, %27 ], [ %25, %23 ], !dbg !3020
  %31 = phi i8* [ %20, %27 ], [ %24, %23 ]
  %32 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0, !dbg !3021
  store i8* %31, i8** %32, align 8, !dbg !3022
  %33 = load i64, i64* %30, align 8, !dbg !3020, !tbaa !3017
  %34 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1, !dbg !3023
  store i64 %33, i64* %34, align 8, !dbg !3024, !tbaa !3017
  %35 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 2, !dbg !3025
  %36 = load i8, i8* %35, align 8, !dbg !3025, !tbaa !3027, !range !1950
  %37 = icmp eq i8 %36, 0, !dbg !3025
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2, !dbg !3028
  store i8 %36, i8* %38, align 8, !dbg !3029, !tbaa !3027
  br i1 %37, label %43, label %39, !dbg !3030

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 3, !dbg !3031
  %41 = load i32, i32* %40, align 4, !dbg !3031, !tbaa !3032
  %42 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3, !dbg !3033
  store i32 %41, i32* %42, align 4, !dbg !3034, !tbaa !3032
  br label %43, !dbg !3035

; <label>:43:                                     ; preds = %29, %39
  ret void, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !3037 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3042
  %2 = icmp eq i8* %0, null, !dbg !3043
  br i1 %2, label %3, label %6, !dbg !3045

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3046, !tbaa !720
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.83, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !3048
  tail call void @abort() #16, !dbg !3049
  unreachable, !dbg !3049

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %7, metadata !3040, metadata !DIExpression()), !dbg !3051
  %8 = icmp eq i8* %7, null, !dbg !3052
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3053
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %10, metadata !3041, metadata !DIExpression()), !dbg !3055
  %11 = ptrtoint i8* %10 to i64, !dbg !3056
  %12 = ptrtoint i8* %0 to i64, !dbg !3056
  %13 = sub i64 %11, %12, !dbg !3056
  %14 = icmp sgt i64 %13, 6, !dbg !3058
  br i1 %14, label %15, label %24, !dbg !3059

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !3060
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.84, i64 0, i64 0), i64 7) #15, !dbg !3061
  %18 = icmp eq i32 %17, 0, !dbg !3062
  br i1 %18, label %19, label %24, !dbg !3063

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !3039, metadata !DIExpression()), !dbg !3042
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i64 3) #15, !dbg !3064
  %21 = icmp eq i32 %20, 0, !dbg !3067
  br i1 %21, label %22, label %24, !dbg !3068

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %23, metadata !3039, metadata !DIExpression()), !dbg !3042
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3071, !tbaa !720
  br label %24, !dbg !3072

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !3039, metadata !DIExpression()), !dbg !3042
  store i8* %25, i8** @program_name, align 8, !dbg !3073, !tbaa !720
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !3074, !tbaa !720
  ret void, !dbg !3075
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !3076 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3081, metadata !DIExpression()), !dbg !3084
  %2 = tail call i32* @__errno_location() #18, !dbg !3085
  %3 = load i32, i32* %2, align 4, !dbg !3085, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %3, metadata !3082, metadata !DIExpression()), !dbg !3086
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3087
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3087
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3087
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !3088
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3088
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !3083, metadata !DIExpression()), !dbg !3089
  store i32 %3, i32* %2, align 4, !dbg !3090, !tbaa !809
  ret %struct.quoting_options* %8, !dbg !3091
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !3092 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3098, metadata !DIExpression()), !dbg !3099
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !3100
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3100
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3101
  %5 = load i32, i32* %4, align 8, !dbg !3101, !tbaa !3102
  ret i32 %5, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !3105 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 %1, metadata !3110, metadata !DIExpression()), !dbg !3112
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3113
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3113
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3114
  store i32 %1, i32* %5, align 8, !dbg !3115, !tbaa !3102
  ret void, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !3117 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3121, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8 %1, metadata !3122, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %2, metadata !3123, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 %1, metadata !3124, metadata !DIExpression()), !dbg !3132
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3133
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3133
  %6 = lshr i8 %1, 5, !dbg !3134
  %7 = zext i8 %6 to i64, !dbg !3134
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3135
  call void @llvm.dbg.value(metadata i32* %8, metadata !3125, metadata !DIExpression()), !dbg !3136
  %9 = and i8 %1, 31, !dbg !3137
  %10 = zext i8 %9 to i32, !dbg !3137
  call void @llvm.dbg.value(metadata i32 %10, metadata !3127, metadata !DIExpression()), !dbg !3138
  %11 = load i32, i32* %8, align 4, !dbg !3139, !tbaa !809
  %12 = lshr i32 %11, %10, !dbg !3140
  %13 = and i32 %12, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %13, metadata !3128, metadata !DIExpression()), !dbg !3142
  %14 = and i32 %2, 1, !dbg !3143
  %15 = xor i32 %13, %14, !dbg !3144
  %16 = shl i32 %15, %10, !dbg !3145
  %17 = xor i32 %16, %11, !dbg !3146
  store i32 %17, i32* %8, align 4, !dbg !3146, !tbaa !809
  ret i32 %13, !dbg !3147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !3148 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3152, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 %1, metadata !3153, metadata !DIExpression()), !dbg !3156
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3157
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3152, metadata !DIExpression()), !dbg !3155
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3160
  %6 = load i32, i32* %5, align 4, !dbg !3160, !tbaa !3161
  call void @llvm.dbg.value(metadata i32 %6, metadata !3154, metadata !DIExpression()), !dbg !3162
  store i32 %1, i32* %5, align 4, !dbg !3163, !tbaa !3161
  ret i32 %6, !dbg !3164
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !3165 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3169, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3170, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()), !dbg !3174
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3175
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3169, metadata !DIExpression()), !dbg !3172
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3178
  store i32 10, i32* %6, align 8, !dbg !3179, !tbaa !3102
  %7 = icmp ne i8* %1, null, !dbg !3180
  %8 = icmp ne i8* %2, null, !dbg !3182
  %9 = and i1 %7, %8, !dbg !3183
  br i1 %9, label %11, label %10, !dbg !3183

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3184
  unreachable, !dbg !3184

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3185
  store i8* %1, i8** %12, align 8, !dbg !3186, !tbaa !3187
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3188
  store i8* %2, i8** %13, align 8, !dbg !3189, !tbaa !3190
  ret void, !dbg !3191
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !3192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %2, metadata !3198, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %3, metadata !3199, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3200, metadata !DIExpression()), !dbg !3208
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !3209
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !3201, metadata !DIExpression()), !dbg !3210
  %8 = tail call i32* @__errno_location() #18, !dbg !3211
  %9 = load i32, i32* %8, align 4, !dbg !3211, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %9, metadata !3202, metadata !DIExpression()), !dbg !3212
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3213
  %11 = load i32, i32* %10, align 8, !dbg !3213, !tbaa !3102
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3214
  %13 = load i32, i32* %12, align 4, !dbg !3214, !tbaa !3161
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3215
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3216
  %16 = load i8*, i8** %15, align 8, !dbg !3216, !tbaa !3187
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3217
  %18 = load i8*, i8** %17, align 8, !dbg !3217, !tbaa !3190
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %19, metadata !3203, metadata !DIExpression()), !dbg !3219
  store i32 %9, i32* %8, align 4, !dbg !3220, !tbaa !809
  ret i64 %19, !dbg !3221
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !3222 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %3, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 %4, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 %5, metadata !3232, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32* %6, metadata !3233, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %7, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %8, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 0, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 0, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* null, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 0, metadata !3240, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 0, metadata !3241, metadata !DIExpression()), !dbg !3298
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !3299
  %14 = icmp eq i64 %13, 1, !dbg !3300
  %15 = lshr i32 %5, 1, !dbg !3301
  %16 = trunc i32 %15 to i8, !dbg !3301
  %17 = and i8 %16, 1, !dbg !3301
  call void @llvm.dbg.value(metadata i8 %17, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 0, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 0, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 1, metadata !3246, metadata !DIExpression()), !dbg !3304
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !3305

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !3295
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !3296
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !3297
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !3298
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !3306
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !3302
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !3303
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !3304
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 %39, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %38, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %37, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %36, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %35, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 %34, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %33, metadata !3240, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8* %32, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %31, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 0, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8* %30, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %29, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %28, metadata !3231, metadata !DIExpression()), !dbg !3289
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
  ], !dbg !3308

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 1, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 %36, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 5, metadata !3231, metadata !DIExpression()), !dbg !3289
  br label %93, !dbg !3309

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 5, metadata !3231, metadata !DIExpression()), !dbg !3289
  %43 = and i8 %36, 1, !dbg !3310
  %44 = icmp eq i8 %43, 0, !dbg !3310
  br i1 %44, label %45, label %93, !dbg !3309

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3312
  br i1 %46, label %93, label %47, !dbg !3315

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !3312, !tbaa !741
  br label %93, !dbg !3312

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.96, i64 0, i64 0), i32 %28), !dbg !3316
  call void @llvm.dbg.value(metadata i8* %49, metadata !3234, metadata !DIExpression()), !dbg !3292
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), i32 %28), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %50, metadata !3235, metadata !DIExpression()), !dbg !3293
  br label %51, !dbg !3321

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %52, metadata !3234, metadata !DIExpression()), !dbg !3292
  %54 = and i8 %36, 1, !dbg !3322
  %55 = icmp eq i8 %54, 0, !dbg !3322
  br i1 %55, label %56, label %71, !dbg !3324

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 0, metadata !3237, metadata !DIExpression()), !dbg !3294
  %57 = load i8, i8* %52, align 1, !dbg !3325, !tbaa !741
  %58 = icmp eq i8 %57, 0, !dbg !3328
  br i1 %58, label %71, label %59, !dbg !3328

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %62, metadata !3237, metadata !DIExpression()), !dbg !3294
  %63 = icmp ult i64 %62, %40, !dbg !3329
  br i1 %63, label %64, label %66, !dbg !3332

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !3329
  store i8 %60, i8* %65, align 1, !dbg !3329, !tbaa !741
  br label %66, !dbg !3329

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !3332
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %68, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %67, metadata !3237, metadata !DIExpression()), !dbg !3294
  %69 = load i8, i8* %68, align 1, !dbg !3325, !tbaa !741
  %70 = icmp eq i8 %69, 0, !dbg !3328
  br i1 %70, label %71, label %59, !dbg !3328, !llvm.loop !3334

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !3294
  call void @llvm.dbg.value(metadata i64 %72, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 1, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %53, metadata !3239, metadata !DIExpression()), !dbg !3296
  %73 = call i64 @strlen(i8* %53) #15, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %73, metadata !3240, metadata !DIExpression()), !dbg !3297
  br label %93, !dbg !3337

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !3241, metadata !DIExpression()), !dbg !3298
  br label %75, !dbg !3338

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !3306
  call void @llvm.dbg.value(metadata i8 %76, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 1, metadata !3243, metadata !DIExpression()), !dbg !3301
  br label %77, !dbg !3339

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !3298
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !3306
  call void @llvm.dbg.value(metadata i8 %79, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 %78, metadata !3241, metadata !DIExpression()), !dbg !3298
  %80 = and i8 %79, 1, !dbg !3340
  %81 = icmp eq i8 %80, 0, !dbg !3340
  %82 = select i1 %81, i8 1, i8 %78, !dbg !3342
  br label %83, !dbg !3342

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !3343
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !3301
  call void @llvm.dbg.value(metadata i8 %85, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 %84, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 2, metadata !3231, metadata !DIExpression()), !dbg !3289
  %86 = and i8 %85, 1, !dbg !3344
  %87 = icmp eq i8 %86, 0, !dbg !3344
  br i1 %87, label %88, label %93, !dbg !3346

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !3347
  br i1 %89, label %93, label %90, !dbg !3350

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !3347, !tbaa !741
  br label %93, !dbg !3347

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !3243, metadata !DIExpression()), !dbg !3301
  br label %93, !dbg !3351

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !3352
  unreachable, !dbg !3352

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !3294
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.98, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.98, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.98, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.98, i64 0, i64 0), %41 ], !dbg !3306
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !3306
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !3306
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !3353
  call void @llvm.dbg.value(metadata i8 %101, metadata !3243, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %99, metadata !3240, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %97, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %94, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 0, metadata !3236, metadata !DIExpression()), !dbg !3354
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
  br label %121, !dbg !3355

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !3356
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !3294
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !3295
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !3302
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !3303
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !3304
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %125, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %122, metadata !3236, metadata !DIExpression()), !dbg !3354
  %130 = icmp eq i64 %125, -1, !dbg !3357
  br i1 %130, label %131, label %135, !dbg !3358

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3359
  %133 = load i8, i8* %132, align 1, !dbg !3359, !tbaa !741
  %134 = icmp eq i8 %133, 0, !dbg !3360
  br i1 %134, label %617, label %137, !dbg !3361

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !3362
  br i1 %136, label %617, label %137, !dbg !3361

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !3252, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8 0, metadata !3253, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8 0, metadata !3254, metadata !DIExpression()), !dbg !3365
  br i1 %107, label %138, label %153, !dbg !3366

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !3368
  %140 = and i1 %108, %130, !dbg !3369
  br i1 %140, label %141, label %143, !dbg !3369

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %142, metadata !3230, metadata !DIExpression()), !dbg !3288
  br label %143, !dbg !3371

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !3230, metadata !DIExpression()), !dbg !3288
  %145 = icmp ugt i64 %139, %144, !dbg !3372
  br i1 %145, label %153, label %146, !dbg !3373

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3374
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !3375
  %149 = icmp ne i32 %148, 0, !dbg !3376
  %150 = or i1 %149, %110, !dbg !3377
  %151 = xor i1 %149, true, !dbg !3377
  %152 = zext i1 %151 to i8, !dbg !3377
  br i1 %150, label %153, label %661, !dbg !3377

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !3378
  call void @llvm.dbg.value(metadata i8 %155, metadata !3252, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %154, metadata !3230, metadata !DIExpression()), !dbg !3288
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3379
  %157 = load i8, i8* %156, align 1, !dbg !3379, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %157, metadata !3247, metadata !DIExpression()), !dbg !3380
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
  ], !dbg !3381

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !3382

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !3383

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !3253, metadata !DIExpression()), !dbg !3364
  %161 = and i8 %126, 1, !dbg !3387
  %162 = icmp eq i8 %161, 0, !dbg !3387
  %163 = and i1 %114, %162, !dbg !3387
  br i1 %163, label %164, label %180, !dbg !3387

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !3389
  br i1 %165, label %166, label %168, !dbg !3393

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3389
  store i8 39, i8* %167, align 1, !dbg !3389, !tbaa !741
  br label %168, !dbg !3389

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !3393
  call void @llvm.dbg.value(metadata i64 %169, metadata !3237, metadata !DIExpression()), !dbg !3294
  %170 = icmp ult i64 %169, %129, !dbg !3394
  br i1 %170, label %171, label %173, !dbg !3397

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !3394
  store i8 36, i8* %172, align 1, !dbg !3394, !tbaa !741
  br label %173, !dbg !3394

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %174, metadata !3237, metadata !DIExpression()), !dbg !3294
  %175 = icmp ult i64 %174, %129, !dbg !3398
  br i1 %175, label %176, label %178, !dbg !3401

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !3398
  store i8 39, i8* %177, align 1, !dbg !3398, !tbaa !741
  br label %178, !dbg !3398

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %179, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 1, metadata !3244, metadata !DIExpression()), !dbg !3302
  br label %180, !dbg !3402

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !3353
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !3353
  call void @llvm.dbg.value(metadata i8 %182, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %181, metadata !3237, metadata !DIExpression()), !dbg !3294
  %183 = icmp ult i64 %181, %129, !dbg !3403
  br i1 %183, label %184, label %186, !dbg !3406

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !3403
  store i8 92, i8* %185, align 1, !dbg !3403, !tbaa !741
  br label %186, !dbg !3403

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %187, metadata !3237, metadata !DIExpression()), !dbg !3294
  br i1 %104, label %188, label %478, !dbg !3407

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !3409
  %190 = icmp ult i64 %189, %154, !dbg !3410
  br i1 %190, label %191, label %467, !dbg !3411

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !3412
  %193 = load i8, i8* %192, align 1, !dbg !3412, !tbaa !741
  %194 = add i8 %193, -48, !dbg !3413
  %195 = icmp ult i8 %194, 10, !dbg !3413
  br i1 %195, label %196, label %467, !dbg !3413

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !3414
  br i1 %197, label %198, label %200, !dbg !3418

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !3414
  store i8 48, i8* %199, align 1, !dbg !3414, !tbaa !741
  br label %200, !dbg !3414

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %201, metadata !3237, metadata !DIExpression()), !dbg !3294
  %202 = icmp ult i64 %201, %129, !dbg !3419
  br i1 %202, label %203, label %205, !dbg !3422

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !3419
  store i8 48, i8* %204, align 1, !dbg !3419, !tbaa !741
  br label %205, !dbg !3419

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %206, metadata !3237, metadata !DIExpression()), !dbg !3294
  br label %467, !dbg !3423

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !3424

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !3425

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !3426

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !3428

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !3430
  %213 = icmp ult i64 %212, %154, !dbg !3431
  br i1 %213, label %214, label %467, !dbg !3432

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !3433
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !3434
  %217 = load i8, i8* %216, align 1, !dbg !3434, !tbaa !741
  %218 = icmp eq i8 %217, 63, !dbg !3435
  br i1 %218, label %219, label %467, !dbg !3436

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !3437
  %221 = load i8, i8* %220, align 1, !dbg !3437, !tbaa !741
  %222 = sext i8 %221 to i32, !dbg !3437
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
  ], !dbg !3438

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !3439

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !3247, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %212, metadata !3236, metadata !DIExpression()), !dbg !3354
  %225 = icmp ult i64 %123, %129, !dbg !3441
  br i1 %225, label %226, label %228, !dbg !3444

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3441
  store i8 63, i8* %227, align 1, !dbg !3441, !tbaa !741
  br label %228, !dbg !3441

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %229, metadata !3237, metadata !DIExpression()), !dbg !3294
  %230 = icmp ult i64 %229, %129, !dbg !3445
  br i1 %230, label %231, label %233, !dbg !3448

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !3445
  store i8 34, i8* %232, align 1, !dbg !3445, !tbaa !741
  br label %233, !dbg !3445

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %234, metadata !3237, metadata !DIExpression()), !dbg !3294
  %235 = icmp ult i64 %234, %129, !dbg !3449
  br i1 %235, label %236, label %238, !dbg !3452

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !3449
  store i8 34, i8* %237, align 1, !dbg !3449, !tbaa !741
  br label %238, !dbg !3449

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %239, metadata !3237, metadata !DIExpression()), !dbg !3294
  %240 = icmp ult i64 %239, %129, !dbg !3453
  br i1 %240, label %241, label %243, !dbg !3456

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !3453
  store i8 63, i8* %242, align 1, !dbg !3453, !tbaa !741
  br label %243, !dbg !3453

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !3456
  call void @llvm.dbg.value(metadata i64 %244, metadata !3237, metadata !DIExpression()), !dbg !3294
  br label %467, !dbg !3457

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !3251, metadata !DIExpression()), !dbg !3458
  br label %255, !dbg !3459

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !3251, metadata !DIExpression()), !dbg !3458
  br label %255, !dbg !3460

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !3251, metadata !DIExpression()), !dbg !3458
  br label %253, !dbg !3461

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !3251, metadata !DIExpression()), !dbg !3458
  br label %253, !dbg !3462

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !3251, metadata !DIExpression()), !dbg !3458
  br label %255, !dbg !3463

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !3251, metadata !DIExpression()), !dbg !3458
  br i1 %114, label %251, label %252, !dbg !3464

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !3465

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !3468

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !3470
  call void @llvm.dbg.value(metadata i8 %254, metadata !3251, metadata !DIExpression()), !dbg !3458
  br i1 %113, label %255, label %661, !dbg !3471

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !3470
  call void @llvm.dbg.value(metadata i8 %256, metadata !3251, metadata !DIExpression()), !dbg !3458
  br i1 %103, label %524, label %478, !dbg !3473

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !3474
  br i1 %258, label %259, label %264, !dbg !3476

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !3477, !tbaa !741
  %261 = icmp ne i8 %260, 0, !dbg !3478
  %262 = icmp ne i64 %122, 0, !dbg !3479
  %263 = or i1 %262, %261, !dbg !3481
  br i1 %263, label %467, label %270, !dbg !3481

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !3482
  %266 = icmp ne i64 %122, 0, !dbg !3479
  %267 = or i1 %266, %265, !dbg !3476
  br i1 %267, label %467, label %270, !dbg !3476

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !3479
  br i1 %269, label %270, label %467, !dbg !3483

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !3254, metadata !DIExpression()), !dbg !3365
  br label %271, !dbg !3484

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !3470
  call void @llvm.dbg.value(metadata i8 %272, metadata !3254, metadata !DIExpression()), !dbg !3365
  br i1 %113, label %467, label %661, !dbg !3485

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 1, metadata !3254, metadata !DIExpression()), !dbg !3365
  br i1 %114, label %274, label %467, !dbg !3487

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !3488

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !3491
  %277 = icmp ne i64 %124, 0, !dbg !3493
  %278 = or i1 %277, %276, !dbg !3494
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !3494
  %280 = select i1 %278, i64 %129, i64 0, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %280, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %279, metadata !3238, metadata !DIExpression()), !dbg !3295
  %281 = icmp ult i64 %123, %280, !dbg !3495
  br i1 %281, label %282, label %284, !dbg !3498

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3495
  store i8 39, i8* %283, align 1, !dbg !3495, !tbaa !741
  br label %284, !dbg !3495

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %285, metadata !3237, metadata !DIExpression()), !dbg !3294
  %286 = icmp ult i64 %285, %280, !dbg !3499
  br i1 %286, label %287, label %289, !dbg !3502

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !3499
  store i8 92, i8* %288, align 1, !dbg !3499, !tbaa !741
  br label %289, !dbg !3499

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %290, metadata !3237, metadata !DIExpression()), !dbg !3294
  %291 = icmp ult i64 %290, %280, !dbg !3503
  br i1 %291, label %292, label %294, !dbg !3506

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !3503
  store i8 39, i8* %293, align 1, !dbg !3503, !tbaa !741
  br label %294, !dbg !3503

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %295, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3244, metadata !DIExpression()), !dbg !3302
  br label %467, !dbg !3507

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !3508

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()), !dbg !3509
  %298 = tail call i16** @__ctype_b_loc() #18, !dbg !3510
  %299 = load i16*, i16** %298, align 8, !dbg !3510, !tbaa !720
  %300 = zext i8 %157 to i64, !dbg !3510
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !3510
  %302 = load i16, i16* %301, align 2, !dbg !3510, !tbaa !3512
  %303 = lshr i16 %302, 14, !dbg !3513
  %304 = trunc i16 %303 to i8, !dbg !3513
  %305 = and i8 %304, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i8 %305, metadata !3258, metadata !DIExpression()), !dbg !3514
  br label %359, !dbg !3515

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !3516
  store i64 0, i64* %10, align 8, !dbg !3517
  call void @llvm.dbg.value(metadata i64 0, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8 1, metadata !3258, metadata !DIExpression()), !dbg !3514
  %307 = icmp eq i64 %154, -1, !dbg !3518
  br i1 %307, label %308, label %310, !dbg !3520

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %309, metadata !3230, metadata !DIExpression()), !dbg !3288
  br label %310, !dbg !3522

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !3523
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  br label %312, !dbg !3524

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !3525
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !3526
  call void @llvm.dbg.value(metadata i8 %314, metadata !3258, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !3527
  %315 = add i64 %313, %122, !dbg !3528
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !3529
  %317 = sub i64 %311, %315, !dbg !3530
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !3259, metadata !DIExpression(DW_OP_deref)), !dbg !3531
  call void @llvm.dbg.value(metadata i32* %12, metadata !3272, metadata !DIExpression(DW_OP_deref)), !dbg !3532
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %318, metadata !3274, metadata !DIExpression()), !dbg !3534
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !3535

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  %320 = icmp ugt i64 %311, %315, !dbg !3536
  br i1 %320, label %321, label %344, !dbg !3538

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !3255, metadata !DIExpression()), !dbg !3509
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !3539
  %325 = load i8, i8* %324, align 1, !dbg !3539, !tbaa !741
  %326 = icmp eq i8 %325, 0, !dbg !3538
  br i1 %326, label %344, label %327, !dbg !3540

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %328, metadata !3255, metadata !DIExpression()), !dbg !3509
  %329 = add i64 %328, %122, !dbg !3542
  %330 = icmp ult i64 %329, %311, !dbg !3536
  br i1 %330, label %321, label %344, !dbg !3538, !llvm.loop !3543

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !3544
  %333 = and i1 %116, %332, !dbg !3547
  call void @llvm.dbg.value(metadata i64 1, metadata !3275, metadata !DIExpression()), !dbg !3548
  br i1 %333, label %334, label %347, !dbg !3547

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !3275, metadata !DIExpression()), !dbg !3548
  %336 = add i64 %335, %315, !dbg !3549
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !3550
  %338 = load i8, i8* %337, align 1, !dbg !3550, !tbaa !741
  %339 = sext i8 %338 to i32, !dbg !3550
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !3551

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %341, metadata !3275, metadata !DIExpression()), !dbg !3548
  %342 = icmp ult i64 %341, %318, !dbg !3544
  br i1 %342, label %334, label %347, !dbg !3553, !llvm.loop !3554

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8 %314, metadata !3258, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %313, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8 %314, metadata !3258, metadata !DIExpression()), !dbg !3514
  br label %344, !dbg !3556

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !3258, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %352, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !3556
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !3557, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %348, metadata !3272, metadata !DIExpression()), !dbg !3532
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !3559
  %350 = icmp eq i32 %349, 0, !dbg !3559
  %351 = select i1 %350, i8 0, i8 %314, !dbg !3560
  call void @llvm.dbg.value(metadata i8 %351, metadata !3258, metadata !DIExpression()), !dbg !3514
  %352 = add i64 %318, %313, !dbg !3561
  call void @llvm.dbg.value(metadata i64 %352, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8 %351, metadata !3258, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %352, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !3556
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !3259, metadata !DIExpression(DW_OP_deref)), !dbg !3531
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !3562
  %354 = icmp eq i32 %353, 0, !dbg !3563
  br i1 %354, label %312, label %355, !dbg !3564, !llvm.loop !3565

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !3567
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 2, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 2, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 2, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 2, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 2, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 %94, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 %94, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 %94, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 %94, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 %94, metadata !3231, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %100, metadata !3241, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %311, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 %351, metadata !3258, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %352, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !3556
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !3567
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !3568
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !3569
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !3569
  call void @llvm.dbg.value(metadata i8 %362, metadata !3258, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %361, metadata !3255, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %360, metadata !3230, metadata !DIExpression()), !dbg !3288
  %363 = and i8 %362, 1, !dbg !3570
  %364 = icmp ne i8 %363, 0, !dbg !3570
  call void @llvm.dbg.value(metadata i8 %363, metadata !3254, metadata !DIExpression()), !dbg !3365
  %365 = icmp ult i64 %361, 2, !dbg !3571
  %366 = or i1 %364, %115, !dbg !3572
  %367 = and i1 %365, %366, !dbg !3573
  br i1 %367, label %467, label %368, !dbg !3573

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %369, metadata !3282, metadata !DIExpression()), !dbg !3575
  br label %370, !dbg !3576

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !3577
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !3581
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !3302
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !3577
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !3583
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !3364
  call void @llvm.dbg.value(metadata i8 %376, metadata !3253, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8 %375, metadata !3252, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8 %374, metadata !3247, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 %373, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %372, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %371, metadata !3236, metadata !DIExpression()), !dbg !3354
  br i1 %366, label %423, label %377, !dbg !3587

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !3588

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !3253, metadata !DIExpression()), !dbg !3364
  %379 = and i8 %373, 1, !dbg !3591
  %380 = icmp eq i8 %379, 0, !dbg !3591
  %381 = and i1 %114, %380, !dbg !3591
  br i1 %381, label %382, label %398, !dbg !3591

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !3593
  br i1 %383, label %384, label %386, !dbg !3597

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3593
  store i8 39, i8* %385, align 1, !dbg !3593, !tbaa !741
  br label %386, !dbg !3593

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %387, metadata !3237, metadata !DIExpression()), !dbg !3294
  %388 = icmp ult i64 %387, %129, !dbg !3598
  br i1 %388, label %389, label %391, !dbg !3601

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !3598
  store i8 36, i8* %390, align 1, !dbg !3598, !tbaa !741
  br label %391, !dbg !3598

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %392, metadata !3237, metadata !DIExpression()), !dbg !3294
  %393 = icmp ult i64 %392, %129, !dbg !3602
  br i1 %393, label %394, label %396, !dbg !3605

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !3602
  store i8 39, i8* %395, align 1, !dbg !3602, !tbaa !741
  br label %396, !dbg !3602

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %397, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 1, metadata !3244, metadata !DIExpression()), !dbg !3302
  br label %398, !dbg !3606

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !3353
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !3353
  call void @llvm.dbg.value(metadata i8 %400, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %399, metadata !3237, metadata !DIExpression()), !dbg !3294
  %401 = icmp ult i64 %399, %129, !dbg !3607
  br i1 %401, label %402, label %404, !dbg !3610

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !3607
  store i8 92, i8* %403, align 1, !dbg !3607, !tbaa !741
  br label %404, !dbg !3607

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %405, metadata !3237, metadata !DIExpression()), !dbg !3294
  %406 = icmp ult i64 %405, %129, !dbg !3611
  br i1 %406, label %407, label %411, !dbg !3614

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !3611
  %409 = or i8 %408, 48, !dbg !3611
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !3611
  store i8 %409, i8* %410, align 1, !dbg !3611, !tbaa !741
  br label %411, !dbg !3611

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !3614
  call void @llvm.dbg.value(metadata i64 %412, metadata !3237, metadata !DIExpression()), !dbg !3294
  %413 = icmp ult i64 %412, %129, !dbg !3615
  br i1 %413, label %414, label %419, !dbg !3618

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !3615
  %416 = and i8 %415, 7, !dbg !3615
  %417 = or i8 %416, 48, !dbg !3615
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !3615
  store i8 %417, i8* %418, align 1, !dbg !3615, !tbaa !741
  br label %419, !dbg !3615

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %420, metadata !3237, metadata !DIExpression()), !dbg !3294
  %421 = and i8 %374, 7, !dbg !3619
  %422 = or i8 %421, 48, !dbg !3620
  call void @llvm.dbg.value(metadata i8 %422, metadata !3247, metadata !DIExpression()), !dbg !3380
  br label %432, !dbg !3621

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !3622
  %425 = icmp eq i8 %424, 0, !dbg !3622
  br i1 %425, label %432, label %426, !dbg !3623

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !3624
  br i1 %427, label %428, label %430, !dbg !3627

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3624
  store i8 92, i8* %429, align 1, !dbg !3624, !tbaa !741
  br label %430, !dbg !3624

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i64 %431, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3252, metadata !DIExpression()), !dbg !3363
  br label %432, !dbg !3628

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !3629
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !3302
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !3630
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !3631
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !3633
  call void @llvm.dbg.value(metadata i8 %437, metadata !3253, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8 %436, metadata !3252, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8 %435, metadata !3247, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 %434, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %433, metadata !3237, metadata !DIExpression()), !dbg !3294
  %438 = add i64 %371, 1, !dbg !3634
  %439 = icmp ugt i64 %369, %438, !dbg !3636
  br i1 %439, label %440, label %562, !dbg !3637

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !3638
  %442 = icmp ne i8 %441, 0, !dbg !3638
  %443 = and i8 %437, 1, !dbg !3638
  %444 = icmp eq i8 %443, 0, !dbg !3638
  %445 = and i1 %442, %444, !dbg !3638
  br i1 %445, label %446, label %457, !dbg !3638

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !3641
  br i1 %447, label %448, label %450, !dbg !3645

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !3641
  store i8 39, i8* %449, align 1, !dbg !3641, !tbaa !741
  br label %450, !dbg !3641

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %451, metadata !3237, metadata !DIExpression()), !dbg !3294
  %452 = icmp ult i64 %451, %129, !dbg !3646
  br i1 %452, label %453, label %455, !dbg !3649

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !3646
  store i8 39, i8* %454, align 1, !dbg !3646, !tbaa !741
  br label %455, !dbg !3646

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !3649
  call void @llvm.dbg.value(metadata i64 %456, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3244, metadata !DIExpression()), !dbg !3302
  br label %457, !dbg !3650

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !3651
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !3353
  call void @llvm.dbg.value(metadata i8 %459, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %458, metadata !3237, metadata !DIExpression()), !dbg !3294
  %460 = icmp ult i64 %458, %129, !dbg !3652
  br i1 %460, label %461, label %463, !dbg !3654

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !3652
  store i8 %435, i8* %462, align 1, !dbg !3652, !tbaa !741
  br label %463, !dbg !3652

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %464, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %438, metadata !3236, metadata !DIExpression()), !dbg !3354
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !3655
  %466 = load i8, i8* %465, align 1, !dbg !3655, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %466, metadata !3247, metadata !DIExpression()), !dbg !3380
  br label %370, !dbg !3656, !llvm.loop !3657

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !3660
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !3353
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !3295
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !3661
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !3353
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !3353
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !3378
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !3378
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !3378
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 %476, metadata !3254, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %475, metadata !3253, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8 %155, metadata !3252, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8 %474, metadata !3247, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 %473, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %472, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %471, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %470, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %469, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %468, metadata !3236, metadata !DIExpression()), !dbg !3354
  br i1 %105, label %489, label %478, !dbg !3662

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
  br i1 %112, label %490, label %512, !dbg !3664

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !3665

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
  %501 = lshr i8 %494, 5, !dbg !3666
  %502 = zext i8 %501 to i64, !dbg !3666
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !3667
  %504 = load i32, i32* %503, align 4, !dbg !3667, !tbaa !809
  %505 = and i8 %494, 31, !dbg !3668
  %506 = zext i8 %505 to i32, !dbg !3668
  %507 = shl i32 1, %506, !dbg !3669
  %508 = and i32 %504, %507, !dbg !3669
  %509 = icmp eq i32 %508, 0, !dbg !3669
  %510 = icmp eq i8 %155, 0, !dbg !3670
  %511 = and i1 %510, %509, !dbg !3671
  br i1 %511, label %562, label %524, !dbg !3671

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
  %523 = icmp eq i8 %155, 0, !dbg !3670
  br i1 %523, label %562, label %524, !dbg !3672

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !3673
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !3353
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !3295
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !3661
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !3302
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !3303
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !3674
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !3378
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 %532, metadata !3254, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %531, metadata !3247, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 %530, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %529, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %528, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %527, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %526, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %525, metadata !3236, metadata !DIExpression()), !dbg !3354
  br i1 %110, label %534, label %661, !dbg !3677

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !3253, metadata !DIExpression()), !dbg !3364
  %535 = and i8 %529, 1, !dbg !3679
  %536 = icmp eq i8 %535, 0, !dbg !3679
  %537 = and i1 %114, %536, !dbg !3679
  br i1 %537, label %538, label %554, !dbg !3679

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !3681
  br i1 %539, label %540, label %542, !dbg !3685

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3681
  store i8 39, i8* %541, align 1, !dbg !3681, !tbaa !741
  br label %542, !dbg !3681

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %543, metadata !3237, metadata !DIExpression()), !dbg !3294
  %544 = icmp ult i64 %543, %533, !dbg !3686
  br i1 %544, label %545, label %547, !dbg !3689

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !3686
  store i8 36, i8* %546, align 1, !dbg !3686, !tbaa !741
  br label %547, !dbg !3686

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %548, metadata !3237, metadata !DIExpression()), !dbg !3294
  %549 = icmp ult i64 %548, %533, !dbg !3690
  br i1 %549, label %550, label %552, !dbg !3693

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3690
  store i8 39, i8* %551, align 1, !dbg !3690, !tbaa !741
  br label %552, !dbg !3690

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %553, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 1, metadata !3244, metadata !DIExpression()), !dbg !3302
  br label %554, !dbg !3694

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !3651
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !3353
  call void @llvm.dbg.value(metadata i8 %556, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %555, metadata !3237, metadata !DIExpression()), !dbg !3294
  %557 = icmp ult i64 %555, %533, !dbg !3695
  br i1 %557, label %558, label %560, !dbg !3698

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !3695
  store i8 92, i8* %559, align 1, !dbg !3695, !tbaa !741
  br label %560, !dbg !3695

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %561, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %572, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 %571, metadata !3254, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %570, metadata !3253, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8 %569, metadata !3247, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 %568, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %567, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %566, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %565, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %564, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %563, metadata !3236, metadata !DIExpression()), !dbg !3354
  br label %589, !dbg !3699

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !3673
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !3353
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !3295
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !3661
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !3302
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !3303
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !3702
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !3378
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !3378
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 %571, metadata !3254, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %570, metadata !3253, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8 %569, metadata !3247, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 %568, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %567, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %566, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %565, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %564, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %563, metadata !3236, metadata !DIExpression()), !dbg !3354
  %573 = and i8 %567, 1, !dbg !3699
  %574 = icmp ne i8 %573, 0, !dbg !3699
  %575 = and i8 %570, 1, !dbg !3699
  %576 = icmp eq i8 %575, 0, !dbg !3699
  %577 = and i1 %574, %576, !dbg !3699
  br i1 %577, label %578, label %589, !dbg !3699

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !3703
  br i1 %579, label %580, label %582, !dbg !3707

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3703
  store i8 39, i8* %581, align 1, !dbg !3703, !tbaa !741
  br label %582, !dbg !3703

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %583, metadata !3237, metadata !DIExpression()), !dbg !3294
  %584 = icmp ult i64 %583, %572, !dbg !3708
  br i1 %584, label %585, label %587, !dbg !3711

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !3708
  store i8 39, i8* %586, align 1, !dbg !3708, !tbaa !741
  br label %587, !dbg !3708

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %588, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3244, metadata !DIExpression()), !dbg !3302
  br label %589, !dbg !3712

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !3651
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !3353
  call void @llvm.dbg.value(metadata i8 %598, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %597, metadata !3237, metadata !DIExpression()), !dbg !3294
  %599 = icmp ult i64 %597, %590, !dbg !3713
  br i1 %599, label %600, label %602, !dbg !3716

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !3713
  store i8 %592, i8* %601, align 1, !dbg !3713, !tbaa !741
  br label %602, !dbg !3713

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %603, metadata !3237, metadata !DIExpression()), !dbg !3294
  %604 = and i8 %591, 1, !dbg !3717
  %605 = icmp eq i8 %604, 0, !dbg !3717
  %606 = select i1 %605, i8 0, i8 %128, !dbg !3719
  call void @llvm.dbg.value(metadata i8 %606, metadata !3246, metadata !DIExpression()), !dbg !3304
  br label %607, !dbg !3720

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !3673
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !3353
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !3295
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !3661
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !3302
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !3353
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !3304
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 %614, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %613, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %612, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %611, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %610, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %609, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %608, metadata !3236, metadata !DIExpression()), !dbg !3354
  %616 = add i64 %608, 1, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %616, metadata !3236, metadata !DIExpression()), !dbg !3354
  br label %121, !dbg !3722, !llvm.loop !3723

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %618, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %618, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %125, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %125, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %126, metadata !3244, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %127, metadata !3245, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %128, metadata !3246, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  %619 = icmp eq i64 %123, 0, !dbg !3725
  %620 = and i1 %114, %619, !dbg !3727
  %621 = xor i1 %620, true, !dbg !3727
  %622 = or i1 %110, %621, !dbg !3727
  br i1 %622, label %623, label %661, !dbg !3727

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !3728
  %625 = xor i1 %624, true, !dbg !3728
  %626 = and i8 %127, 1, !dbg !3730
  %627 = icmp eq i8 %626, 0, !dbg !3730
  %628 = or i1 %627, %625, !dbg !3728
  br i1 %628, label %638, label %629, !dbg !3728

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !3731
  %631 = icmp eq i8 %630, 0, !dbg !3731
  br i1 %631, label %634, label %632, !dbg !3734

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %618, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %618, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %618, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %618, metadata !3230, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %95, metadata !3234, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %96, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %124, metadata !3238, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %125, metadata !3230, metadata !DIExpression()), !dbg !3288
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !3735
  br label %671, !dbg !3736

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !3737
  %636 = icmp ne i64 %124, 0, !dbg !3739
  %637 = and i1 %636, %635, !dbg !3740
  br i1 %637, label %27, label %638, !dbg !3740

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %129, metadata !3228, metadata !DIExpression()), !dbg !3286
  %639 = icmp ne i8* %98, null, !dbg !3741
  %640 = and i1 %639, %110, !dbg !3743
  br i1 %640, label %641, label %656, !dbg !3743

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %123, metadata !3237, metadata !DIExpression()), !dbg !3294
  %642 = load i8, i8* %98, align 1, !dbg !3744, !tbaa !741
  %643 = icmp eq i8 %642, 0, !dbg !3747
  br i1 %643, label %656, label %644, !dbg !3747

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %647, metadata !3237, metadata !DIExpression()), !dbg !3294
  %648 = icmp ult i64 %647, %129, !dbg !3748
  br i1 %648, label %649, label %651, !dbg !3751

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !3748
  store i8 %645, i8* %650, align 1, !dbg !3748, !tbaa !741
  br label %651, !dbg !3748

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !3751
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %653, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %652, metadata !3237, metadata !DIExpression()), !dbg !3294
  %654 = load i8, i8* %653, align 1, !dbg !3744, !tbaa !741
  %655 = icmp eq i8 %654, 0, !dbg !3747
  br i1 %655, label %656, label %644, !dbg !3747, !llvm.loop !3753

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !3294
  call void @llvm.dbg.value(metadata i64 %657, metadata !3237, metadata !DIExpression()), !dbg !3294
  %658 = icmp ult i64 %657, %129, !dbg !3755
  br i1 %658, label %659, label %671, !dbg !3757

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !3758
  store i8 0, i8* %660, align 1, !dbg !3759, !tbaa !741
  br label %671, !dbg !3758

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !3228, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %663, metadata !3230, metadata !DIExpression()), !dbg !3288
  %665 = icmp ne i32 %662, 2, !dbg !3760
  %666 = icmp eq i8 %102, 0, !dbg !3762
  %667 = or i1 %665, %666, !dbg !3763
  call void @llvm.dbg.value(metadata i32 4, metadata !3231, metadata !DIExpression()), !dbg !3289
  %668 = select i1 %667, i32 %662, i32 4, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %668, metadata !3231, metadata !DIExpression()), !dbg !3289
  %669 = and i32 %5, -3, !dbg !3764
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !3765
  br label %671, !dbg !3766

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !3767
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !3768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %1, metadata !3773, metadata !DIExpression()), !dbg !3777
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !3778
  call void @llvm.dbg.value(metadata i8* %3, metadata !3774, metadata !DIExpression()), !dbg !3779
  %4 = icmp eq i8* %3, %0, !dbg !3780
  br i1 %4, label %5, label %71, !dbg !3782

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %6, metadata !3775, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %6, metadata !3785, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8* null, metadata !3791, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8 85, metadata !3792, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i8 84, metadata !3793, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 70, metadata !3794, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8 45, metadata !3795, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8 56, metadata !3796, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8 0, metadata !3797, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 0, metadata !3798, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 0, metadata !3799, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8 0, metadata !3800, metadata !DIExpression()), !dbg !3813
  %7 = load i8, i8* %6, align 1, !dbg !3814, !tbaa !741
  %8 = and i8 %7, -33, !dbg !3814
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3814

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3816, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8* null, metadata !3821, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 84, metadata !3822, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 70, metadata !3823, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i8 45, metadata !3824, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 56, metadata !3825, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 0, metadata !3826, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8 0, metadata !3827, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i8 0, metadata !3828, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8 0, metadata !3829, metadata !DIExpression()), !dbg !3842
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3843
  %11 = load i8, i8* %10, align 1, !dbg !3843, !tbaa !741
  %12 = and i8 %11, -33, !dbg !3843
  %13 = icmp eq i8 %12, 84, !dbg !3843
  br i1 %13, label %14, label %68, !dbg !3843

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3845, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8* null, metadata !3850, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8 70, metadata !3851, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8 45, metadata !3852, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8 56, metadata !3853, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8 0, metadata !3854, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i8 0, metadata !3855, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i8 0, metadata !3856, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8 0, metadata !3857, metadata !DIExpression()), !dbg !3869
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3870
  %16 = load i8, i8* %15, align 1, !dbg !3870, !tbaa !741
  %17 = and i8 %16, -33, !dbg !3870
  %18 = icmp eq i8 %17, 70, !dbg !3870
  br i1 %18, label %19, label %68, !dbg !3870

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3872, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8* null, metadata !3877, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i8 45, metadata !3878, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i8 56, metadata !3879, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i8 0, metadata !3880, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8 0, metadata !3881, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8 0, metadata !3882, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 0, metadata !3883, metadata !DIExpression()), !dbg !3894
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3895
  %21 = load i8, i8* %20, align 1, !dbg !3895, !tbaa !741
  %22 = icmp eq i8 %21, 45, !dbg !3895
  br i1 %22, label %23, label %68, !dbg !3897

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3898, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* null, metadata !3903, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i8 56, metadata !3904, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8 0, metadata !3905, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8 0, metadata !3906, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i8 0, metadata !3907, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8 0, metadata !3908, metadata !DIExpression()), !dbg !3918
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3919
  %25 = load i8, i8* %24, align 1, !dbg !3919, !tbaa !741
  %26 = icmp eq i8 %25, 56, !dbg !3919
  br i1 %26, label %27, label %68, !dbg !3921

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3922, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i8* null, metadata !3927, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8 0, metadata !3928, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8 0, metadata !3929, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8 0, metadata !3930, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i8 0, metadata !3931, metadata !DIExpression()), !dbg !3940
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3941
  %29 = load i8, i8* %28, align 1, !dbg !3941, !tbaa !741
  %30 = icmp eq i8 %29, 0, !dbg !3941
  br i1 %30, label %31, label %68, !dbg !3943

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3944, !tbaa !741
  %33 = icmp eq i8 %32, 96, !dbg !3945
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.99, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.100, i64 0, i64 0), !dbg !3944
  br label %71, !dbg !3946

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3816, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i8* null, metadata !3821, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i8 66, metadata !3822, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i8 49, metadata !3823, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8 56, metadata !3824, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i8 48, metadata !3825, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i8 51, metadata !3826, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8 48, metadata !3827, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8 0, metadata !3828, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8 0, metadata !3829, metadata !DIExpression()), !dbg !3959
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3960
  %37 = load i8, i8* %36, align 1, !dbg !3960, !tbaa !741
  %38 = and i8 %37, -33, !dbg !3960
  %39 = icmp eq i8 %38, 66, !dbg !3960
  br i1 %39, label %40, label %68, !dbg !3960

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3845, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i8* null, metadata !3850, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8 49, metadata !3851, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8 56, metadata !3852, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i8 48, metadata !3853, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i8 51, metadata !3854, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i8 48, metadata !3855, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i8 0, metadata !3856, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i8 0, metadata !3857, metadata !DIExpression()), !dbg !3970
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3971
  %42 = load i8, i8* %41, align 1, !dbg !3971, !tbaa !741
  %43 = icmp eq i8 %42, 49, !dbg !3971
  br i1 %43, label %44, label %68, !dbg !3972

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3872, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i8* null, metadata !3877, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i8 56, metadata !3878, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8 48, metadata !3879, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i8 51, metadata !3880, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 48, metadata !3881, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i8 0, metadata !3882, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i8 0, metadata !3883, metadata !DIExpression()), !dbg !3981
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3982
  %46 = load i8, i8* %45, align 1, !dbg !3982, !tbaa !741
  %47 = icmp eq i8 %46, 56, !dbg !3982
  br i1 %47, label %48, label %68, !dbg !3983

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3898, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i8* null, metadata !3903, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i8 48, metadata !3904, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i8 51, metadata !3905, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i8 48, metadata !3906, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i8 0, metadata !3907, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i8 0, metadata !3908, metadata !DIExpression()), !dbg !3991
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3992
  %50 = load i8, i8* %49, align 1, !dbg !3992, !tbaa !741
  %51 = icmp eq i8 %50, 48, !dbg !3992
  br i1 %51, label %52, label %68, !dbg !3993

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3922, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* null, metadata !3927, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i8 51, metadata !3928, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8 48, metadata !3929, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i8 0, metadata !3930, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8 0, metadata !3931, metadata !DIExpression()), !dbg !4000
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !4001
  %54 = load i8, i8* %53, align 1, !dbg !4001, !tbaa !741
  %55 = icmp eq i8 %54, 51, !dbg !4001
  br i1 %55, label %56, label %68, !dbg !4002

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !4003, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i8* null, metadata !4008, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i8 48, metadata !4009, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i8 0, metadata !4010, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i8 0, metadata !4011, metadata !DIExpression()), !dbg !4019
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !4020
  %58 = load i8, i8* %57, align 1, !dbg !4020, !tbaa !741
  %59 = icmp eq i8 %58, 48, !dbg !4020
  br i1 %59, label %60, label %68, !dbg !4022

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !4023, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i8* null, metadata !4028, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i8 0, metadata !4029, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8 0, metadata !4030, metadata !DIExpression()), !dbg !4037
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !4038
  %62 = load i8, i8* %61, align 1, !dbg !4038, !tbaa !741
  %63 = icmp eq i8 %62, 0, !dbg !4038
  br i1 %63, label %64, label %68, !dbg !4040

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !4041, !tbaa !741
  %66 = icmp eq i8 %65, 96, !dbg !4042
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.102, i64 0, i64 0), !dbg !4041
  br label %71, !dbg !4043

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !4044
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.98, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), !dbg !4045
  br label %71, !dbg !4046

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !4047
  ret i8* %72, !dbg !4048
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !4049 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4053, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %1, metadata !4054, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4055, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i8* %0, metadata !4059, metadata !DIExpression()) #11, !dbg !4072
  call void @llvm.dbg.value(metadata i64 %1, metadata !4064, metadata !DIExpression()) #11, !dbg !4074
  call void @llvm.dbg.value(metadata i64* null, metadata !4065, metadata !DIExpression()) #11, !dbg !4075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4066, metadata !DIExpression()) #11, !dbg !4076
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !4077
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !4077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4067, metadata !DIExpression()) #11, !dbg !4078
  %6 = tail call i32* @__errno_location() #18, !dbg !4079
  %7 = load i32, i32* %6, align 4, !dbg !4079, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %7, metadata !4068, metadata !DIExpression()) #11, !dbg !4080
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4081
  %9 = load i32, i32* %8, align 4, !dbg !4081, !tbaa !3161
  %10 = or i32 %9, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i32 %10, metadata !4069, metadata !DIExpression()) #11, !dbg !4083
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4084
  %12 = load i32, i32* %11, align 8, !dbg !4084, !tbaa !3102
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4085
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4086
  %15 = load i8*, i8** %14, align 8, !dbg !4086, !tbaa !3187
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4087
  %17 = load i8*, i8** %16, align 8, !dbg !4087, !tbaa !3190
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !4088
  %19 = add i64 %18, 1, !dbg !4089
  call void @llvm.dbg.value(metadata i64 %19, metadata !4070, metadata !DIExpression()) #11, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %19, metadata !4091, metadata !DIExpression()) #11, !dbg !4096
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !4098
  call void @llvm.dbg.value(metadata i8* %20, metadata !4071, metadata !DIExpression()) #11, !dbg !4099
  %21 = load i32, i32* %11, align 8, !dbg !4100, !tbaa !3102
  %22 = load i8*, i8** %14, align 8, !dbg !4101, !tbaa !3187
  %23 = load i8*, i8** %16, align 8, !dbg !4102, !tbaa !3190
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !4103
  store i32 %7, i32* %6, align 4, !dbg !4104, !tbaa !809
  ret i8* %20, !dbg !4105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !4060 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4059, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 %1, metadata !4064, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i64* %2, metadata !4065, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4066, metadata !DIExpression()), !dbg !4109
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !4110
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !4110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4067, metadata !DIExpression()), !dbg !4111
  %7 = tail call i32* @__errno_location() #18, !dbg !4112
  %8 = load i32, i32* %7, align 4, !dbg !4112, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %8, metadata !4068, metadata !DIExpression()), !dbg !4113
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4114
  %10 = load i32, i32* %9, align 4, !dbg !4114, !tbaa !3161
  %11 = icmp ne i64* %2, null, !dbg !4115
  %12 = xor i1 %11, true, !dbg !4115
  %13 = zext i1 %12 to i32, !dbg !4115
  %14 = or i32 %10, %13, !dbg !4116
  call void @llvm.dbg.value(metadata i32 %14, metadata !4069, metadata !DIExpression()), !dbg !4117
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4118
  %16 = load i32, i32* %15, align 8, !dbg !4118, !tbaa !3102
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4119
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4120
  %19 = load i8*, i8** %18, align 8, !dbg !4120, !tbaa !3187
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4121
  %21 = load i8*, i8** %20, align 8, !dbg !4121, !tbaa !3190
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !4122
  %23 = add i64 %22, 1, !dbg !4123
  call void @llvm.dbg.value(metadata i64 %23, metadata !4070, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %23, metadata !4091, metadata !DIExpression()) #11, !dbg !4125
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %24, metadata !4071, metadata !DIExpression()), !dbg !4128
  %25 = load i32, i32* %15, align 8, !dbg !4129, !tbaa !3102
  %26 = load i8*, i8** %18, align 8, !dbg !4130, !tbaa !3187
  %27 = load i8*, i8** %20, align 8, !dbg !4131, !tbaa !3190
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !4132
  store i32 %8, i32* %7, align 4, !dbg !4133, !tbaa !809
  br i1 %11, label %29, label %30, !dbg !4134

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !4135, !tbaa !2156
  br label %30, !dbg !4137

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !4138
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !4139 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4143, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !4141, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i32 1, metadata !4142, metadata !DIExpression()), !dbg !4145
  %2 = load i32, i32* @nslots, align 4, !dbg !4146, !tbaa !809
  %3 = icmp sgt i32 %2, 1, !dbg !4149
  br i1 %3, label %4, label %12, !dbg !4150

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !4142, metadata !DIExpression()), !dbg !4145
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !4151
  %7 = load i8*, i8** %6, align 8, !dbg !4151, !tbaa !4152
  tail call void @free(i8* %7) #11, !dbg !4154
  %8 = add nuw nsw i64 %5, 1, !dbg !4155
  call void @llvm.dbg.value(metadata i32 undef, metadata !4142, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4145
  %9 = load i32, i32* @nslots, align 4, !dbg !4146, !tbaa !809
  %10 = sext i32 %9 to i64, !dbg !4149
  %11 = icmp slt i64 %8, %10, !dbg !4149
  br i1 %11, label %4, label %12, !dbg !4150, !llvm.loop !4156

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4158
  %14 = load i8*, i8** %13, align 8, !dbg !4158, !tbaa !4152
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4160
  br i1 %15, label %17, label %16, !dbg !4161

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !4162
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4164, !tbaa !4165
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4166, !tbaa !4152
  br label %17, !dbg !4167

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4168
  br i1 %18, label %21, label %19, !dbg !4170

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !4171
  tail call void @free(i8* %20) #11, !dbg !4173
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4174, !tbaa !720
  br label %21, !dbg !4175

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !4176, !tbaa !809
  ret void, !dbg !4177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !4178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i8* %1, metadata !4183, metadata !DIExpression()), !dbg !4185
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4186
  ret i8* %3, !dbg !4187
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !4188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4192, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i8* %1, metadata !4193, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i64 %2, metadata !4194, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4195, metadata !DIExpression()), !dbg !4210
  %5 = tail call i32* @__errno_location() #18, !dbg !4211
  %6 = load i32, i32* %5, align 4, !dbg !4211, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %6, metadata !4196, metadata !DIExpression()), !dbg !4212
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4213, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !4197, metadata !DIExpression()), !dbg !4214
  %8 = icmp slt i32 %0, 0, !dbg !4215
  br i1 %8, label %9, label %10, !dbg !4217

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !4218
  unreachable, !dbg !4218

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4219, !tbaa !809
  %12 = icmp sgt i32 %11, %0, !dbg !4220
  br i1 %12, label %34, label %13, !dbg !4221

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4222
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !4201, metadata !DIExpression()), !dbg !4223
  %15 = icmp eq i32 %0, 2147483647, !dbg !4224
  br i1 %15, label %16, label %17, !dbg !4226

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4227
  unreachable, !dbg !4227

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !4228
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !4228
  %20 = add nsw i32 %0, 1, !dbg !4229
  %21 = sext i32 %20 to i64, !dbg !4230
  %22 = shl nsw i64 %21, 4, !dbg !4231
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !4232
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4232
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !4197, metadata !DIExpression()), !dbg !4214
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4233, !tbaa !720
  br i1 %14, label %25, label %26, !dbg !4234

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !4235, !tbaa.struct !4237
  br label %26, !dbg !4238

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4239, !tbaa !809
  %28 = sext i32 %27 to i64, !dbg !4240
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4240
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4241
  %31 = sub nsw i32 %20, %27, !dbg !4242
  %32 = sext i32 %31 to i64, !dbg !4243
  %33 = shl nsw i64 %32, 4, !dbg !4244
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !4241
  store i32 %20, i32* @nslots, align 4, !dbg !4245, !tbaa !809
  br label %34, !dbg !4246

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !4247
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !4197, metadata !DIExpression()), !dbg !4214
  %36 = sext i32 %0 to i64, !dbg !4248
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4249
  %38 = load i64, i64* %37, align 8, !dbg !4249, !tbaa !4165
  call void @llvm.dbg.value(metadata i64 %38, metadata !4202, metadata !DIExpression()), !dbg !4250
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4251
  %40 = load i8*, i8** %39, align 8, !dbg !4251, !tbaa !4152
  call void @llvm.dbg.value(metadata i8* %40, metadata !4204, metadata !DIExpression()), !dbg !4252
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4253
  %42 = load i32, i32* %41, align 4, !dbg !4253, !tbaa !3161
  %43 = or i32 %42, 1, !dbg !4254
  call void @llvm.dbg.value(metadata i32 %43, metadata !4205, metadata !DIExpression()), !dbg !4255
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4256
  %45 = load i32, i32* %44, align 8, !dbg !4256, !tbaa !3102
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4257
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4258
  %48 = load i8*, i8** %47, align 8, !dbg !4258, !tbaa !3187
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4259
  %50 = load i8*, i8** %49, align 8, !dbg !4259, !tbaa !3190
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !4260
  call void @llvm.dbg.value(metadata i64 %51, metadata !4206, metadata !DIExpression()), !dbg !4261
  %52 = icmp ugt i64 %38, %51, !dbg !4262
  br i1 %52, label %63, label %53, !dbg !4264

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !4265
  call void @llvm.dbg.value(metadata i64 %54, metadata !4202, metadata !DIExpression()), !dbg !4250
  store i64 %54, i64* %37, align 8, !dbg !4267, !tbaa !4165
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4268
  br i1 %55, label %57, label %56, !dbg !4270

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !4271
  br label %57, !dbg !4271

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !4091, metadata !DIExpression()) #11, !dbg !4272
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !4274
  call void @llvm.dbg.value(metadata i8* %58, metadata !4204, metadata !DIExpression()), !dbg !4252
  store i8* %58, i8** %39, align 8, !dbg !4275, !tbaa !4152
  %59 = load i32, i32* %44, align 8, !dbg !4276, !tbaa !3102
  %60 = load i8*, i8** %47, align 8, !dbg !4277, !tbaa !3187
  %61 = load i8*, i8** %49, align 8, !dbg !4278, !tbaa !3190
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !4279
  br label %63, !dbg !4280

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !4281
  call void @llvm.dbg.value(metadata i8* %64, metadata !4204, metadata !DIExpression()), !dbg !4252
  store i32 %6, i32* %5, align 4, !dbg !4282, !tbaa !809
  ret i8* %64, !dbg !4283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4284 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4288, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i8* %1, metadata !4289, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i64 %2, metadata !4290, metadata !DIExpression()), !dbg !4293
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4294
  ret i8* %4, !dbg !4295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !4296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #11, !dbg !4302
  call void @llvm.dbg.value(metadata i8* %0, metadata !4183, metadata !DIExpression()) #11, !dbg !4304
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !4305
  ret i8* %2, !dbg !4306
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !4307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4311, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %1, metadata !4312, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4288, metadata !DIExpression()) #11, !dbg !4315
  call void @llvm.dbg.value(metadata i8* %0, metadata !4289, metadata !DIExpression()) #11, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()) #11, !dbg !4318
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !4319
  ret i8* %3, !dbg !4320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !4321 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4325, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i32 %1, metadata !4326, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8* %2, metadata !4327, metadata !DIExpression()), !dbg !4331
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4332
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4328, metadata !DIExpression(DW_OP_deref)), !dbg !4333
  call void @llvm.dbg.value(metadata i32 %1, metadata !4334, metadata !DIExpression()) #11, !dbg !4340
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !4342, !alias.scope !4343
  %6 = icmp eq i32 %1, 10, !dbg !4346
  br i1 %6, label %7, label %8, !dbg !4348

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !4349, !noalias !4343
  unreachable, !dbg !4349

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4350
  store i32 %1, i32* %9, align 8, !dbg !4351, !tbaa !3102, !alias.scope !4343
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4328, metadata !DIExpression(DW_OP_deref)), !dbg !4333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4339, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4352
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4353
  ret i8* %10, !dbg !4354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !4355 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4359, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 %1, metadata !4360, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i8* %2, metadata !4361, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %3, metadata !4362, metadata !DIExpression()), !dbg !4367
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4368
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4363, metadata !DIExpression(DW_OP_deref)), !dbg !4369
  call void @llvm.dbg.value(metadata i32 %1, metadata !4334, metadata !DIExpression()) #11, !dbg !4370
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !4372, !alias.scope !4373
  %7 = icmp eq i32 %1, 10, !dbg !4376
  br i1 %7, label %8, label %9, !dbg !4377

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !4378, !noalias !4373
  unreachable, !dbg !4378

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4379
  store i32 %1, i32* %10, align 8, !dbg !4380, !tbaa !3102, !alias.scope !4373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4363, metadata !DIExpression(DW_OP_deref)), !dbg !4369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4339, metadata !DIExpression(DW_OP_deref)), !dbg !4372
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !4381
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4382
  ret i8* %11, !dbg !4383
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !4384 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4388, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i8* %1, metadata !4389, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i32 0, metadata !4325, metadata !DIExpression()) #11, !dbg !4392
  call void @llvm.dbg.value(metadata i32 %0, metadata !4326, metadata !DIExpression()) #11, !dbg !4394
  call void @llvm.dbg.value(metadata i8* %1, metadata !4327, metadata !DIExpression()) #11, !dbg !4395
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4396
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4328, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4397
  call void @llvm.dbg.value(metadata i32 %0, metadata !4334, metadata !DIExpression()) #11, !dbg !4398
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !4400, !alias.scope !4401
  %5 = icmp eq i32 %0, 10, !dbg !4404
  br i1 %5, label %6, label %7, !dbg !4405

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !4406, !noalias !4401
  unreachable, !dbg !4406

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4407
  store i32 %0, i32* %8, align 8, !dbg !4408, !tbaa !3102, !alias.scope !4401
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4328, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4339, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4400
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !4409
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4410
  ret i8* %9, !dbg !4411
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4412 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4416, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i8* %1, metadata !4417, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i64 %2, metadata !4418, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i32 0, metadata !4359, metadata !DIExpression()) #11, !dbg !4422
  call void @llvm.dbg.value(metadata i32 %0, metadata !4360, metadata !DIExpression()) #11, !dbg !4424
  call void @llvm.dbg.value(metadata i8* %1, metadata !4361, metadata !DIExpression()) #11, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %2, metadata !4362, metadata !DIExpression()) #11, !dbg !4426
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4427
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4363, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4428
  call void @llvm.dbg.value(metadata i32 %0, metadata !4334, metadata !DIExpression()) #11, !dbg !4429
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !4431, !alias.scope !4432
  %6 = icmp eq i32 %0, 10, !dbg !4435
  br i1 %6, label %7, label %8, !dbg !4436

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !4437, !noalias !4432
  unreachable, !dbg !4437

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4438
  store i32 %0, i32* %9, align 8, !dbg !4439, !tbaa !3102, !alias.scope !4432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4363, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4339, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4431
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !4440
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4441
  ret i8* %10, !dbg !4442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !4443 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4447, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 %1, metadata !4448, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i8 %2, metadata !4449, metadata !DIExpression()), !dbg !4453
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4454
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4455, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4450, metadata !DIExpression(DW_OP_deref)), !dbg !4457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3121, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8 %2, metadata !3122, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 1, metadata !3123, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i8 %2, metadata !3124, metadata !DIExpression()), !dbg !4462
  %6 = lshr i8 %2, 5, !dbg !4463
  %7 = zext i8 %6 to i64, !dbg !4463
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4464
  call void @llvm.dbg.value(metadata i32* %8, metadata !3125, metadata !DIExpression()), !dbg !4465
  %9 = and i8 %2, 31, !dbg !4466
  %10 = zext i8 %9 to i32, !dbg !4466
  call void @llvm.dbg.value(metadata i32 %10, metadata !3127, metadata !DIExpression()), !dbg !4467
  %11 = load i32, i32* %8, align 4, !dbg !4468, !tbaa !809
  %12 = lshr i32 %11, %10, !dbg !4469
  %13 = and i32 %12, 1, !dbg !4470
  call void @llvm.dbg.value(metadata i32 %13, metadata !3128, metadata !DIExpression()), !dbg !4471
  %14 = xor i32 %13, 1, !dbg !4472
  %15 = shl i32 %14, %10, !dbg !4473
  %16 = xor i32 %15, %11, !dbg !4474
  store i32 %16, i32* %8, align 4, !dbg !4474, !tbaa !809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4450, metadata !DIExpression(DW_OP_deref)), !dbg !4457
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4475
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4476
  ret i8* %17, !dbg !4477
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !4478 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4482, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i8 %1, metadata !4483, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i8* %0, metadata !4447, metadata !DIExpression()) #11, !dbg !4486
  call void @llvm.dbg.value(metadata i64 -1, metadata !4448, metadata !DIExpression()) #11, !dbg !4488
  call void @llvm.dbg.value(metadata i8 %1, metadata !4449, metadata !DIExpression()) #11, !dbg !4489
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4491, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4450, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4492
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3121, metadata !DIExpression()) #11, !dbg !4493
  call void @llvm.dbg.value(metadata i8 %1, metadata !3122, metadata !DIExpression()) #11, !dbg !4495
  call void @llvm.dbg.value(metadata i32 1, metadata !3123, metadata !DIExpression()) #11, !dbg !4496
  call void @llvm.dbg.value(metadata i8 %1, metadata !3124, metadata !DIExpression()) #11, !dbg !4497
  %5 = lshr i8 %1, 5, !dbg !4498
  %6 = zext i8 %5 to i64, !dbg !4498
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4499
  call void @llvm.dbg.value(metadata i32* %7, metadata !3125, metadata !DIExpression()) #11, !dbg !4500
  %8 = and i8 %1, 31, !dbg !4501
  %9 = zext i8 %8 to i32, !dbg !4501
  call void @llvm.dbg.value(metadata i32 %9, metadata !3127, metadata !DIExpression()) #11, !dbg !4502
  %10 = load i32, i32* %7, align 4, !dbg !4503, !tbaa !809
  %11 = lshr i32 %10, %9, !dbg !4504
  %12 = and i32 %11, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %12, metadata !3128, metadata !DIExpression()) #11, !dbg !4506
  %13 = xor i32 %12, 1, !dbg !4507
  %14 = shl i32 %13, %9, !dbg !4508
  %15 = xor i32 %14, %10, !dbg !4509
  store i32 %15, i32* %7, align 4, !dbg !4509, !tbaa !809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4450, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4492
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !4510
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4511
  ret i8* %16, !dbg !4512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !4513 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4515, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i8* %0, metadata !4482, metadata !DIExpression()) #11, !dbg !4517
  call void @llvm.dbg.value(metadata i8 58, metadata !4483, metadata !DIExpression()) #11, !dbg !4519
  call void @llvm.dbg.value(metadata i8* %0, metadata !4447, metadata !DIExpression()) #11, !dbg !4520
  call void @llvm.dbg.value(metadata i64 -1, metadata !4448, metadata !DIExpression()) #11, !dbg !4522
  call void @llvm.dbg.value(metadata i8 58, metadata !4449, metadata !DIExpression()) #11, !dbg !4523
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4524
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !4524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4525, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4450, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3121, metadata !DIExpression()) #11, !dbg !4527
  call void @llvm.dbg.value(metadata i8 58, metadata !3122, metadata !DIExpression()) #11, !dbg !4529
  call void @llvm.dbg.value(metadata i32 1, metadata !3123, metadata !DIExpression()) #11, !dbg !4530
  call void @llvm.dbg.value(metadata i8 58, metadata !3124, metadata !DIExpression()) #11, !dbg !4531
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4532
  call void @llvm.dbg.value(metadata i32* %4, metadata !3125, metadata !DIExpression()) #11, !dbg !4533
  call void @llvm.dbg.value(metadata i32 26, metadata !3127, metadata !DIExpression()) #11, !dbg !4534
  %5 = load i32, i32* %4, align 4, !dbg !4535, !tbaa !809
  %6 = or i32 %5, 67108864, !dbg !4536
  store i32 %6, i32* %4, align 4, !dbg !4536, !tbaa !809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4450, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4526
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !4537
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !4538
  ret i8* %7, !dbg !4539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !4540 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4542, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %1, metadata !4543, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i8* %0, metadata !4447, metadata !DIExpression()) #11, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %1, metadata !4448, metadata !DIExpression()) #11, !dbg !4548
  call void @llvm.dbg.value(metadata i8 58, metadata !4449, metadata !DIExpression()) #11, !dbg !4549
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4550
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4551, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4450, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4552
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3121, metadata !DIExpression()) #11, !dbg !4553
  call void @llvm.dbg.value(metadata i8 58, metadata !3122, metadata !DIExpression()) #11, !dbg !4555
  call void @llvm.dbg.value(metadata i32 1, metadata !3123, metadata !DIExpression()) #11, !dbg !4556
  call void @llvm.dbg.value(metadata i8 58, metadata !3124, metadata !DIExpression()) #11, !dbg !4557
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4558
  call void @llvm.dbg.value(metadata i32* %5, metadata !3125, metadata !DIExpression()) #11, !dbg !4559
  call void @llvm.dbg.value(metadata i32 26, metadata !3127, metadata !DIExpression()) #11, !dbg !4560
  %6 = load i32, i32* %5, align 4, !dbg !4561, !tbaa !809
  %7 = or i32 %6, 67108864, !dbg !4562
  store i32 %7, i32* %5, align 4, !dbg !4562, !tbaa !809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4450, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4552
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !4563
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !4564
  ret i8* %8, !dbg !4565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !4566 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4339, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4572
  call void @llvm.dbg.value(metadata i32 %0, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i32 %1, metadata !4569, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i8* %2, metadata !4570, metadata !DIExpression()), !dbg !4576
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4577
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4577
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4578
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4578
  call void @llvm.dbg.value(metadata i32 %1, metadata !4334, metadata !DIExpression()) #11, !dbg !4579
  call void @llvm.dbg.value(metadata i32 0, metadata !4339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4572
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !4572, !alias.scope !4580
  %8 = icmp eq i32 %1, 10, !dbg !4583
  br i1 %8, label %9, label %10, !dbg !4584

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !4585, !noalias !4580
  unreachable, !dbg !4585

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4572
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4578
  store i32 %1, i32* %11, align 8, !dbg !4578
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4578
  %13 = bitcast i32* %12 to i8*, !dbg !4578
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !4578
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4571, metadata !DIExpression(DW_OP_deref)), !dbg !4586
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3121, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i8 58, metadata !3122, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32 1, metadata !3123, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i8 58, metadata !3124, metadata !DIExpression()), !dbg !4591
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4592
  call void @llvm.dbg.value(metadata i32* %14, metadata !3125, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i32 26, metadata !3127, metadata !DIExpression()), !dbg !4594
  %15 = load i32, i32* %14, align 4, !dbg !4595, !tbaa !809
  %16 = or i32 %15, 67108864, !dbg !4596
  store i32 %16, i32* %14, align 4, !dbg !4596, !tbaa !809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4571, metadata !DIExpression(DW_OP_deref)), !dbg !4586
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4597
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4598
  ret i8* %17, !dbg !4599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4600 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4604, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i8* %1, metadata !4605, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i8* %2, metadata !4606, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i8* %3, metadata !4607, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i32 %0, metadata !4612, metadata !DIExpression()) #11, !dbg !4622
  call void @llvm.dbg.value(metadata i8* %1, metadata !4617, metadata !DIExpression()) #11, !dbg !4624
  call void @llvm.dbg.value(metadata i8* %2, metadata !4618, metadata !DIExpression()) #11, !dbg !4625
  call void @llvm.dbg.value(metadata i8* %3, metadata !4619, metadata !DIExpression()) #11, !dbg !4626
  call void @llvm.dbg.value(metadata i64 -1, metadata !4620, metadata !DIExpression()) #11, !dbg !4627
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4628
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4629, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4621, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4630
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3169, metadata !DIExpression()) #11, !dbg !4631
  call void @llvm.dbg.value(metadata i8* %1, metadata !3170, metadata !DIExpression()) #11, !dbg !4633
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()) #11, !dbg !4634
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3169, metadata !DIExpression()) #11, !dbg !4631
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4635
  store i32 10, i32* %7, align 8, !dbg !4636, !tbaa !3102
  %8 = icmp ne i8* %1, null, !dbg !4637
  %9 = icmp ne i8* %2, null, !dbg !4638
  %10 = and i1 %8, %9, !dbg !4639
  br i1 %10, label %12, label %11, !dbg !4639

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4640
  unreachable, !dbg !4640

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4641
  store i8* %1, i8** %13, align 8, !dbg !4642, !tbaa !3187
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4643
  store i8* %2, i8** %14, align 8, !dbg !4644, !tbaa !3190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4621, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4630
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !4645
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4646
  ret i8* %15, !dbg !4647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4613 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4612, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i8* %1, metadata !4617, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i8* %2, metadata !4618, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i8* %3, metadata !4619, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 %4, metadata !4620, metadata !DIExpression()), !dbg !4652
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4653
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !4653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4654, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4621, metadata !DIExpression(DW_OP_deref)), !dbg !4655
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3169, metadata !DIExpression()) #11, !dbg !4656
  call void @llvm.dbg.value(metadata i8* %1, metadata !3170, metadata !DIExpression()) #11, !dbg !4658
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()) #11, !dbg !4659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3169, metadata !DIExpression()) #11, !dbg !4656
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4660
  store i32 10, i32* %8, align 8, !dbg !4661, !tbaa !3102
  %9 = icmp ne i8* %1, null, !dbg !4662
  %10 = icmp ne i8* %2, null, !dbg !4663
  %11 = and i1 %9, %10, !dbg !4664
  br i1 %11, label %13, label %12, !dbg !4664

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !4665
  unreachable, !dbg !4665

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4666
  store i8* %1, i8** %14, align 8, !dbg !4667, !tbaa !3187
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4668
  store i8* %2, i8** %15, align 8, !dbg !4669, !tbaa !3190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4621, metadata !DIExpression(DW_OP_deref)), !dbg !4655
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4670
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !4671
  ret i8* %16, !dbg !4672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4673 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4677, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i8* %1, metadata !4678, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i8* %2, metadata !4679, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i32 0, metadata !4604, metadata !DIExpression()) #11, !dbg !4683
  call void @llvm.dbg.value(metadata i8* %0, metadata !4605, metadata !DIExpression()) #11, !dbg !4685
  call void @llvm.dbg.value(metadata i8* %1, metadata !4606, metadata !DIExpression()) #11, !dbg !4686
  call void @llvm.dbg.value(metadata i8* %2, metadata !4607, metadata !DIExpression()) #11, !dbg !4687
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #11, !dbg !4688
  call void @llvm.dbg.value(metadata i8* %0, metadata !4617, metadata !DIExpression()) #11, !dbg !4690
  call void @llvm.dbg.value(metadata i8* %1, metadata !4618, metadata !DIExpression()) #11, !dbg !4691
  call void @llvm.dbg.value(metadata i8* %2, metadata !4619, metadata !DIExpression()) #11, !dbg !4692
  call void @llvm.dbg.value(metadata i64 -1, metadata !4620, metadata !DIExpression()) #11, !dbg !4693
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4695, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4621, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3169, metadata !DIExpression()) #11, !dbg !4697
  call void @llvm.dbg.value(metadata i8* %0, metadata !3170, metadata !DIExpression()) #11, !dbg !4699
  call void @llvm.dbg.value(metadata i8* %1, metadata !3171, metadata !DIExpression()) #11, !dbg !4700
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3169, metadata !DIExpression()) #11, !dbg !4697
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4701
  store i32 10, i32* %6, align 8, !dbg !4702, !tbaa !3102
  %7 = icmp ne i8* %0, null, !dbg !4703
  %8 = icmp ne i8* %1, null, !dbg !4704
  %9 = and i1 %7, %8, !dbg !4705
  br i1 %9, label %11, label %10, !dbg !4705

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !4706
  unreachable, !dbg !4706

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4707
  store i8* %0, i8** %12, align 8, !dbg !4708, !tbaa !3187
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4709
  store i8* %1, i8** %13, align 8, !dbg !4710, !tbaa !3190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4621, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4696
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !4711
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !4712
  ret i8* %14, !dbg !4713
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4714 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4718, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i8* %1, metadata !4719, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i8* %2, metadata !4720, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i64 %3, metadata !4721, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #11, !dbg !4726
  call void @llvm.dbg.value(metadata i8* %0, metadata !4617, metadata !DIExpression()) #11, !dbg !4728
  call void @llvm.dbg.value(metadata i8* %1, metadata !4618, metadata !DIExpression()) #11, !dbg !4729
  call void @llvm.dbg.value(metadata i8* %2, metadata !4619, metadata !DIExpression()) #11, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %3, metadata !4620, metadata !DIExpression()) #11, !dbg !4731
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !4733, !tbaa.struct !4456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4621, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3169, metadata !DIExpression()) #11, !dbg !4735
  call void @llvm.dbg.value(metadata i8* %0, metadata !3170, metadata !DIExpression()) #11, !dbg !4737
  call void @llvm.dbg.value(metadata i8* %1, metadata !3171, metadata !DIExpression()) #11, !dbg !4738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3169, metadata !DIExpression()) #11, !dbg !4735
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4739
  store i32 10, i32* %7, align 8, !dbg !4740, !tbaa !3102
  %8 = icmp ne i8* %0, null, !dbg !4741
  %9 = icmp ne i8* %1, null, !dbg !4742
  %10 = and i1 %8, %9, !dbg !4743
  br i1 %10, label %12, label %11, !dbg !4743

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !4744
  unreachable, !dbg !4744

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4745
  store i8* %0, i8** %13, align 8, !dbg !4746, !tbaa !3187
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4747
  store i8* %1, i8** %14, align 8, !dbg !4748, !tbaa !3190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4621, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4734
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !4749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !4750
  ret i8* %15, !dbg !4751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4756, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i8* %1, metadata !4757, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %2, metadata !4758, metadata !DIExpression()), !dbg !4761
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4762
  ret i8* %4, !dbg !4763
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !4764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4768, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i64 %1, metadata !4769, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 0, metadata !4756, metadata !DIExpression()) #11, !dbg !4772
  call void @llvm.dbg.value(metadata i8* %0, metadata !4757, metadata !DIExpression()) #11, !dbg !4774
  call void @llvm.dbg.value(metadata i64 %1, metadata !4758, metadata !DIExpression()) #11, !dbg !4775
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4776
  ret i8* %3, !dbg !4777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !4778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4782, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata i8* %1, metadata !4783, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i32 %0, metadata !4756, metadata !DIExpression()) #11, !dbg !4786
  call void @llvm.dbg.value(metadata i8* %1, metadata !4757, metadata !DIExpression()) #11, !dbg !4788
  call void @llvm.dbg.value(metadata i64 -1, metadata !4758, metadata !DIExpression()) #11, !dbg !4789
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4790
  ret i8* %3, !dbg !4791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !4792 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4796, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i32 0, metadata !4782, metadata !DIExpression()) #11, !dbg !4798
  call void @llvm.dbg.value(metadata i8* %0, metadata !4783, metadata !DIExpression()) #11, !dbg !4800
  call void @llvm.dbg.value(metadata i32 0, metadata !4756, metadata !DIExpression()) #11, !dbg !4801
  call void @llvm.dbg.value(metadata i8* %0, metadata !4757, metadata !DIExpression()) #11, !dbg !4803
  call void @llvm.dbg.value(metadata i64 -1, metadata !4758, metadata !DIExpression()) #11, !dbg !4804
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4805
  ret i8* %2, !dbg !4806
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @strnlen1(i8*, i64) local_unnamed_addr #12 !dbg !4807 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4810, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %1, metadata !4811, metadata !DIExpression()), !dbg !4814
  %3 = tail call i8* @memchr(i8* %0, i32 0, i64 %1) #15, !dbg !4815
  call void @llvm.dbg.value(metadata i8* %3, metadata !4812, metadata !DIExpression()), !dbg !4816
  %4 = icmp eq i8* %3, null, !dbg !4817
  %5 = ptrtoint i8* %3 to i64, !dbg !4819
  %6 = ptrtoint i8* %0 to i64, !dbg !4819
  %7 = sub i64 1, %6, !dbg !4819
  %8 = add i64 %7, %5, !dbg !4820
  %9 = select i1 %4, i64 %1, i64 %8, !dbg !4821
  ret i64 %9, !dbg !4822
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #12 !dbg !4823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4828, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i8* %1, metadata !4829, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i8* %0, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %1, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 -1, metadata !4839, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i32 -1, metadata !4840, metadata !DIExpression()), !dbg !4850
  %3 = load i8, i8* %0, align 1, !dbg !4851, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %3, metadata !4841, metadata !DIExpression()), !dbg !4852
  %4 = load i8, i8* %1, align 1, !dbg !4853, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %4, metadata !4842, metadata !DIExpression()), !dbg !4854
  %5 = icmp eq i8 %3, 45, !dbg !4855
  br i1 %5, label %6, label %95, !dbg !4857

; <label>:6:                                      ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !4832, metadata !DIExpression()), !dbg !4846
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !4858
  call void @llvm.dbg.value(metadata i8* %8, metadata !4832, metadata !DIExpression()), !dbg !4846
  %9 = load i8, i8* %8, align 1, !dbg !4860, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %9, metadata !4841, metadata !DIExpression()), !dbg !4852
  %10 = icmp eq i8 %9, 48, !dbg !4861
  br i1 %10, label %6, label %11, !dbg !4862

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4863
  br i1 %12, label %30, label %13, !dbg !4865

; <label>:13:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !4841, metadata !DIExpression()), !dbg !4852
  %14 = zext i8 %9 to i32, !dbg !4866
  %15 = add nsw i32 %14, -48, !dbg !4866
  %16 = icmp ult i32 %15, 10, !dbg !4866
  br i1 %16, label %197, label %17, !dbg !4869

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %1, metadata !4838, metadata !DIExpression()), !dbg !4848
  %18 = icmp eq i8 %4, 48, !dbg !4870
  br i1 %18, label %19, label %24, !dbg !4871

; <label>:19:                                     ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !4838, metadata !DIExpression()), !dbg !4848
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !4872
  %22 = load i8, i8* %21, align 1, !dbg !4873, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %22, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %21, metadata !4838, metadata !DIExpression()), !dbg !4848
  %23 = icmp eq i8 %22, 48, !dbg !4870
  br i1 %23, label %19, label %24, !dbg !4871, !llvm.loop !4874

; <label>:24:                                     ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4877
  call void @llvm.dbg.value(metadata i8 %25, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8 undef, metadata !4842, metadata !DIExpression()), !dbg !4854
  %26 = zext i8 %25 to i32, !dbg !4878
  %27 = add nsw i32 %26, -48, !dbg !4878
  %28 = icmp ult i32 %27, 10, !dbg !4878
  %29 = sext i1 %28 to i32, !dbg !4879
  br label %197, !dbg !4880

; <label>:30:                                     ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !4838, metadata !DIExpression()), !dbg !4848
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !4881
  call void @llvm.dbg.value(metadata i8* %32, metadata !4838, metadata !DIExpression()), !dbg !4848
  %33 = load i8, i8* %32, align 1, !dbg !4882, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %33, metadata !4842, metadata !DIExpression()), !dbg !4854
  %34 = icmp eq i8 %33, 48, !dbg !4883
  br i1 %34, label %30, label %35, !dbg !4884

; <label>:35:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8 %9, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %8, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %32, metadata !4838, metadata !DIExpression()), !dbg !4848
  %36 = zext i8 %9 to i32, !dbg !4885
  %37 = icmp eq i8 %33, %9, !dbg !4886
  %38 = add nsw i32 %36, -48, !dbg !4887
  %39 = icmp ult i32 %38, 10, !dbg !4887
  %40 = and i1 %39, %37, !dbg !4888
  br i1 %40, label %41, label %55, !dbg !4888

; <label>:41:                                     ; preds = %35, %41
  %42 = phi i8* [ %44, %41 ], [ %8, %35 ]
  %43 = phi i8* [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %42, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %43, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %42, metadata !4832, metadata !DIExpression()), !dbg !4846
  %44 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !4889
  %45 = load i8, i8* %44, align 1, !dbg !4891, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %43, metadata !4838, metadata !DIExpression()), !dbg !4848
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !4892
  %47 = load i8, i8* %46, align 1, !dbg !4893, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %47, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8 %45, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %44, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %46, metadata !4838, metadata !DIExpression()), !dbg !4848
  %48 = zext i8 %45 to i32, !dbg !4885
  %49 = icmp eq i8 %47, %45, !dbg !4886
  %50 = add nsw i32 %48, -48, !dbg !4887
  %51 = icmp ult i32 %50, 10, !dbg !4887
  %52 = and i1 %49, %51, !dbg !4888
  br i1 %52, label %41, label %53, !dbg !4888

; <label>:53:                                     ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !4885
  br label %55, !dbg !4894

; <label>:55:                                     ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !4895
  %57 = phi i8* [ %32, %35 ], [ %46, %53 ], !dbg !4898
  %58 = phi i8* [ %8, %35 ], [ %44, %53 ], !dbg !4898
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !4898
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !4885
  call void @llvm.dbg.value(metadata i8* %57, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %58, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8 %59, metadata !4842, metadata !DIExpression()), !dbg !4854
  %61 = zext i8 %59 to i32, !dbg !4894
  %62 = sub nsw i32 %61, %60, !dbg !4899
  call void @llvm.dbg.value(metadata i32 %62, metadata !4843, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i64 0, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i8* %58, metadata !4832, metadata !DIExpression()), !dbg !4846
  %63 = icmp ult i32 %56, 10, !dbg !4895
  br i1 %63, label %68, label %64, !dbg !4902

; <label>:64:                                     ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !4903
  call void @llvm.dbg.value(metadata i64 %65, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 0, metadata !4845, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8 %59, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %57, metadata !4838, metadata !DIExpression()), !dbg !4848
  %66 = add nsw i32 %61, -48, !dbg !4905
  %67 = icmp ult i32 %66, 10, !dbg !4905
  br i1 %67, label %77, label %86, !dbg !4908

; <label>:68:                                     ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi i8* [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i8* %70, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %70, metadata !4832, metadata !DIExpression()), !dbg !4846
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !4909
  %72 = load i8, i8* %71, align 1, !dbg !4910, !tbaa !741
  %73 = add i64 %69, 1, !dbg !4911
  call void @llvm.dbg.value(metadata i64 %73, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i8 %72, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %71, metadata !4832, metadata !DIExpression()), !dbg !4846
  %74 = zext i8 %72 to i32, !dbg !4895
  %75 = add nsw i32 %74, -48, !dbg !4895
  %76 = icmp ult i32 %75, 10, !dbg !4895
  br i1 %76, label %68, label %64, !dbg !4902, !llvm.loop !4912

; <label>:77:                                     ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi i8* [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !4845, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8* %79, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %79, metadata !4838, metadata !DIExpression()), !dbg !4848
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !4915
  %81 = load i8, i8* %80, align 1, !dbg !4916, !tbaa !741
  %82 = add i64 %78, 1, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %82, metadata !4845, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8 %81, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %80, metadata !4838, metadata !DIExpression()), !dbg !4848
  %83 = zext i8 %81 to i32, !dbg !4905
  %84 = add nsw i32 %83, -48, !dbg !4905
  %85 = icmp ult i32 %84, 10, !dbg !4905
  br i1 %85, label %77, label %86, !dbg !4908, !llvm.loop !4918

; <label>:86:                                     ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !4921
  call void @llvm.dbg.value(metadata i64 %87, metadata !4845, metadata !DIExpression()), !dbg !4904
  %88 = icmp eq i64 %65, %87, !dbg !4922
  br i1 %88, label %92, label %89, !dbg !4924

; <label>:89:                                     ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !4925
  %91 = select i1 %90, i32 1, i32 -1, !dbg !4926
  br label %197, !dbg !4927

; <label>:92:                                     ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !4928
  %94 = select i1 %93, i32 0, i32 %62, !dbg !4930
  br label %197, !dbg !4930

; <label>:95:                                     ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !4931
  br i1 %96, label %99, label %97, !dbg !4933

; <label>:97:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %0, metadata !4832, metadata !DIExpression()), !dbg !4846
  %98 = icmp eq i8 %3, 48, !dbg !4934
  br i1 %98, label %125, label %121, !dbg !4936

; <label>:99:                                     ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !4838, metadata !DIExpression()), !dbg !4848
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !4937
  call void @llvm.dbg.value(metadata i8* %101, metadata !4838, metadata !DIExpression()), !dbg !4848
  %102 = load i8, i8* %101, align 1, !dbg !4939, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %102, metadata !4842, metadata !DIExpression()), !dbg !4854
  %103 = icmp eq i8 %102, 48, !dbg !4940
  br i1 %103, label %99, label %104, !dbg !4941

; <label>:104:                                    ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !4842, metadata !DIExpression()), !dbg !4854
  %105 = zext i8 %102 to i32, !dbg !4942
  %106 = add nsw i32 %105, -48, !dbg !4942
  %107 = icmp ult i32 %106, 10, !dbg !4942
  br i1 %107, label %197, label %108, !dbg !4944

; <label>:108:                                    ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %0, metadata !4832, metadata !DIExpression()), !dbg !4846
  %109 = icmp eq i8 %3, 48, !dbg !4945
  br i1 %109, label %110, label %115, !dbg !4946

; <label>:110:                                    ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !4832, metadata !DIExpression()), !dbg !4846
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !4947
  %113 = load i8, i8* %112, align 1, !dbg !4948, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %113, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %112, metadata !4832, metadata !DIExpression()), !dbg !4846
  %114 = icmp eq i8 %113, 48, !dbg !4945
  br i1 %114, label %110, label %115, !dbg !4946, !llvm.loop !4949

; <label>:115:                                    ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !4952
  call void @llvm.dbg.value(metadata i8 %116, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8 undef, metadata !4841, metadata !DIExpression()), !dbg !4852
  %117 = zext i8 %116 to i32, !dbg !4953
  %118 = add nsw i32 %117, -48, !dbg !4953
  %119 = icmp ult i32 %118, 10, !dbg !4953
  %120 = zext i1 %119 to i32, !dbg !4953
  br label %197, !dbg !4954

; <label>:121:                                    ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !4955
  call void @llvm.dbg.value(metadata i8* %122, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8 %123, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8 %4, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %1, metadata !4838, metadata !DIExpression()), !dbg !4848
  %124 = icmp eq i8 %4, 48, !dbg !4956
  br i1 %124, label %138, label %130, !dbg !4957

; <label>:125:                                    ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !4832, metadata !DIExpression()), !dbg !4846
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !4958
  %128 = load i8, i8* %127, align 1, !dbg !4959, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %128, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %127, metadata !4832, metadata !DIExpression()), !dbg !4846
  %129 = icmp eq i8 %128, 48, !dbg !4934
  br i1 %129, label %125, label %121, !dbg !4936, !llvm.loop !4960

; <label>:130:                                    ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !4955
  call void @llvm.dbg.value(metadata i8* %131, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8 %132, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8 %123, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %122, metadata !4832, metadata !DIExpression()), !dbg !4846
  %133 = zext i8 %123 to i32, !dbg !4963
  %134 = icmp eq i8 %123, %132, !dbg !4964
  %135 = add nsw i32 %133, -48, !dbg !4965
  %136 = icmp ult i32 %135, 10, !dbg !4965
  %137 = and i1 %136, %134, !dbg !4966
  br i1 %137, label %143, label %157, !dbg !4966

; <label>:138:                                    ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !4838, metadata !DIExpression()), !dbg !4848
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !4967
  %141 = load i8, i8* %140, align 1, !dbg !4968, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %141, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %140, metadata !4838, metadata !DIExpression()), !dbg !4848
  %142 = icmp eq i8 %141, 48, !dbg !4956
  br i1 %142, label %138, label %130, !dbg !4957, !llvm.loop !4969

; <label>:143:                                    ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %144, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %145, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %144, metadata !4832, metadata !DIExpression()), !dbg !4846
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !4972
  %147 = load i8, i8* %146, align 1, !dbg !4974, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %145, metadata !4838, metadata !DIExpression()), !dbg !4848
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4975
  %149 = load i8, i8* %148, align 1, !dbg !4976, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %149, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8 %147, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %146, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %148, metadata !4838, metadata !DIExpression()), !dbg !4848
  %150 = zext i8 %147 to i32, !dbg !4963
  %151 = icmp eq i8 %147, %149, !dbg !4964
  %152 = add nsw i32 %150, -48, !dbg !4965
  %153 = icmp ult i32 %152, 10, !dbg !4965
  %154 = and i1 %151, %153, !dbg !4966
  br i1 %154, label %143, label %155, !dbg !4966

; <label>:155:                                    ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !4963
  br label %157, !dbg !4977

; <label>:157:                                    ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !4978
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !4981
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !4963
  call void @llvm.dbg.value(metadata i8* %159, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %160, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8 %161, metadata !4842, metadata !DIExpression()), !dbg !4854
  %163 = zext i8 %161 to i32, !dbg !4977
  %164 = sub nsw i32 %162, %163, !dbg !4982
  call void @llvm.dbg.value(metadata i32 %164, metadata !4843, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i64 0, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i8* %160, metadata !4832, metadata !DIExpression()), !dbg !4846
  %165 = icmp ult i32 %158, 10, !dbg !4978
  br i1 %165, label %170, label %166, !dbg !4983

; <label>:166:                                    ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !4984
  call void @llvm.dbg.value(metadata i64 %167, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 0, metadata !4845, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8 %161, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %159, metadata !4838, metadata !DIExpression()), !dbg !4848
  %168 = add nsw i32 %163, -48, !dbg !4985
  %169 = icmp ult i32 %168, 10, !dbg !4985
  br i1 %169, label %179, label %188, !dbg !4988

; <label>:170:                                    ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i8* %172, metadata !4832, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %172, metadata !4832, metadata !DIExpression()), !dbg !4846
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !4989
  %174 = load i8, i8* %173, align 1, !dbg !4990, !tbaa !741
  %175 = add i64 %171, 1, !dbg !4991
  call void @llvm.dbg.value(metadata i64 %175, metadata !4844, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i8 %174, metadata !4841, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %173, metadata !4832, metadata !DIExpression()), !dbg !4846
  %176 = zext i8 %174 to i32, !dbg !4978
  %177 = add nsw i32 %176, -48, !dbg !4978
  %178 = icmp ult i32 %177, 10, !dbg !4978
  br i1 %178, label %170, label %166, !dbg !4983, !llvm.loop !4992

; <label>:179:                                    ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !4845, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8* %181, metadata !4838, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %181, metadata !4838, metadata !DIExpression()), !dbg !4848
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !4995
  %183 = load i8, i8* %182, align 1, !dbg !4996, !tbaa !741
  %184 = add i64 %180, 1, !dbg !4997
  call void @llvm.dbg.value(metadata i64 %184, metadata !4845, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i8 %183, metadata !4842, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %182, metadata !4838, metadata !DIExpression()), !dbg !4848
  %185 = zext i8 %183 to i32, !dbg !4985
  %186 = add nsw i32 %185, -48, !dbg !4985
  %187 = icmp ult i32 %186, 10, !dbg !4985
  br i1 %187, label %179, label %188, !dbg !4988, !llvm.loop !4998

; <label>:188:                                    ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !5001
  call void @llvm.dbg.value(metadata i64 %189, metadata !4845, metadata !DIExpression()), !dbg !4904
  %190 = icmp eq i64 %167, %189, !dbg !5002
  br i1 %190, label %194, label %191, !dbg !5004

; <label>:191:                                    ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !5005
  %193 = select i1 %192, i32 -1, i32 1, !dbg !5006
  br label %197, !dbg !5007

; <label>:194:                                    ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !5008
  %196 = select i1 %195, i32 0, i32 %164, !dbg !5010
  br label %197, !dbg !5010

; <label>:197:                                    ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !5011
  ret i32 %198, !dbg !5013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !5014 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5071, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i8* %1, metadata !5072, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i8* %2, metadata !5073, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i8* %3, metadata !5074, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.value(metadata i8** %4, metadata !5075, metadata !DIExpression()), !dbg !5081
  call void @llvm.dbg.value(metadata i64 %5, metadata !5076, metadata !DIExpression()), !dbg !5082
  %7 = icmp eq i8* %1, null, !dbg !5083
  br i1 %7, label %10, label %8, !dbg !5085

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !5086
  br label %12, !dbg !5086

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.112, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !5087
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.113, i64 0, i64 0), i32 5) #11, !dbg !5088
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !5088
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.114, i64 0, i64 0), i32 5) #11, !dbg !5089
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !5089
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
  ], !dbg !5090

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !5091
  unreachable, !dbg !5091

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.115, i64 0, i64 0), i32 5) #11, !dbg !5093
  %20 = load i8*, i8** %4, align 8, !dbg !5093, !tbaa !720
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !5093
  br label %146, !dbg !5094

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.116, i64 0, i64 0), i32 5) #11, !dbg !5095
  %24 = load i8*, i8** %4, align 8, !dbg !5095, !tbaa !720
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5095
  %26 = load i8*, i8** %25, align 8, !dbg !5095, !tbaa !720
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !5095
  br label %146, !dbg !5096

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.117, i64 0, i64 0), i32 5) #11, !dbg !5097
  %30 = load i8*, i8** %4, align 8, !dbg !5097, !tbaa !720
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5097
  %32 = load i8*, i8** %31, align 8, !dbg !5097, !tbaa !720
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5097
  %34 = load i8*, i8** %33, align 8, !dbg !5097, !tbaa !720
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !5097
  br label %146, !dbg !5098

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.118, i64 0, i64 0), i32 5) #11, !dbg !5099
  %38 = load i8*, i8** %4, align 8, !dbg !5099, !tbaa !720
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5099
  %40 = load i8*, i8** %39, align 8, !dbg !5099, !tbaa !720
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5099
  %42 = load i8*, i8** %41, align 8, !dbg !5099, !tbaa !720
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5099
  %44 = load i8*, i8** %43, align 8, !dbg !5099, !tbaa !720
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !5099
  br label %146, !dbg !5100

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.119, i64 0, i64 0), i32 5) #11, !dbg !5101
  %48 = load i8*, i8** %4, align 8, !dbg !5101, !tbaa !720
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5101
  %50 = load i8*, i8** %49, align 8, !dbg !5101, !tbaa !720
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5101
  %52 = load i8*, i8** %51, align 8, !dbg !5101, !tbaa !720
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5101
  %54 = load i8*, i8** %53, align 8, !dbg !5101, !tbaa !720
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5101
  %56 = load i8*, i8** %55, align 8, !dbg !5101, !tbaa !720
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !5101
  br label %146, !dbg !5102

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.120, i64 0, i64 0), i32 5) #11, !dbg !5103
  %60 = load i8*, i8** %4, align 8, !dbg !5103, !tbaa !720
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5103
  %62 = load i8*, i8** %61, align 8, !dbg !5103, !tbaa !720
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5103
  %64 = load i8*, i8** %63, align 8, !dbg !5103, !tbaa !720
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5103
  %66 = load i8*, i8** %65, align 8, !dbg !5103, !tbaa !720
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5103
  %68 = load i8*, i8** %67, align 8, !dbg !5103, !tbaa !720
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5103
  %70 = load i8*, i8** %69, align 8, !dbg !5103, !tbaa !720
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !5103
  br label %146, !dbg !5104

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.121, i64 0, i64 0), i32 5) #11, !dbg !5105
  %74 = load i8*, i8** %4, align 8, !dbg !5105, !tbaa !720
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5105
  %76 = load i8*, i8** %75, align 8, !dbg !5105, !tbaa !720
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5105
  %78 = load i8*, i8** %77, align 8, !dbg !5105, !tbaa !720
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5105
  %80 = load i8*, i8** %79, align 8, !dbg !5105, !tbaa !720
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5105
  %82 = load i8*, i8** %81, align 8, !dbg !5105, !tbaa !720
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5105
  %84 = load i8*, i8** %83, align 8, !dbg !5105, !tbaa !720
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5105
  %86 = load i8*, i8** %85, align 8, !dbg !5105, !tbaa !720
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !5105
  br label %146, !dbg !5106

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.122, i64 0, i64 0), i32 5) #11, !dbg !5107
  %90 = load i8*, i8** %4, align 8, !dbg !5107, !tbaa !720
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5107
  %92 = load i8*, i8** %91, align 8, !dbg !5107, !tbaa !720
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5107
  %94 = load i8*, i8** %93, align 8, !dbg !5107, !tbaa !720
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5107
  %96 = load i8*, i8** %95, align 8, !dbg !5107, !tbaa !720
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5107
  %98 = load i8*, i8** %97, align 8, !dbg !5107, !tbaa !720
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5107
  %100 = load i8*, i8** %99, align 8, !dbg !5107, !tbaa !720
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5107
  %102 = load i8*, i8** %101, align 8, !dbg !5107, !tbaa !720
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5107
  %104 = load i8*, i8** %103, align 8, !dbg !5107, !tbaa !720
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !5107
  br label %146, !dbg !5108

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.123, i64 0, i64 0), i32 5) #11, !dbg !5109
  %108 = load i8*, i8** %4, align 8, !dbg !5109, !tbaa !720
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5109
  %110 = load i8*, i8** %109, align 8, !dbg !5109, !tbaa !720
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5109
  %112 = load i8*, i8** %111, align 8, !dbg !5109, !tbaa !720
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5109
  %114 = load i8*, i8** %113, align 8, !dbg !5109, !tbaa !720
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5109
  %116 = load i8*, i8** %115, align 8, !dbg !5109, !tbaa !720
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5109
  %118 = load i8*, i8** %117, align 8, !dbg !5109, !tbaa !720
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5109
  %120 = load i8*, i8** %119, align 8, !dbg !5109, !tbaa !720
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5109
  %122 = load i8*, i8** %121, align 8, !dbg !5109, !tbaa !720
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5109
  %124 = load i8*, i8** %123, align 8, !dbg !5109, !tbaa !720
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !5109
  br label %146, !dbg !5110

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.124, i64 0, i64 0), i32 5) #11, !dbg !5111
  %128 = load i8*, i8** %4, align 8, !dbg !5111, !tbaa !720
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5111
  %130 = load i8*, i8** %129, align 8, !dbg !5111, !tbaa !720
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5111
  %132 = load i8*, i8** %131, align 8, !dbg !5111, !tbaa !720
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5111
  %134 = load i8*, i8** %133, align 8, !dbg !5111, !tbaa !720
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5111
  %136 = load i8*, i8** %135, align 8, !dbg !5111, !tbaa !720
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5111
  %138 = load i8*, i8** %137, align 8, !dbg !5111, !tbaa !720
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5111
  %140 = load i8*, i8** %139, align 8, !dbg !5111, !tbaa !720
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5111
  %142 = load i8*, i8** %141, align 8, !dbg !5111, !tbaa !720
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5111
  %144 = load i8*, i8** %143, align 8, !dbg !5111, !tbaa !720
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !5111
  br label %146, !dbg !5112

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !5113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !5114 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5118, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i8* %1, metadata !5119, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i8* %2, metadata !5120, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.value(metadata i8* %3, metadata !5121, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8** %4, metadata !5122, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata i64 0, metadata !5123, metadata !DIExpression()), !dbg !5129
  br label %6, !dbg !5130

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !5132
  call void @llvm.dbg.value(metadata i64 %7, metadata !5123, metadata !DIExpression()), !dbg !5129
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !5134
  %9 = load i8*, i8** %8, align 8, !dbg !5134, !tbaa !720
  %10 = icmp eq i8* %9, null, !dbg !5135
  %11 = add i64 %7, 1, !dbg !5136
  call void @llvm.dbg.value(metadata i64 %11, metadata !5123, metadata !DIExpression()), !dbg !5129
  br i1 %10, label %12, label %6, !dbg !5135, !llvm.loop !5137

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !5123, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata i64 %7, metadata !5123, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata i64 %7, metadata !5123, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata i64 %7, metadata !5123, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata i64 %7, metadata !5123, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata i64 %7, metadata !5123, metadata !DIExpression()), !dbg !5129
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !5139
  ret void, !dbg !5140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !5141 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5152, metadata !DIExpression()), !dbg !5160
  call void @llvm.dbg.value(metadata i8* %1, metadata !5153, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.value(metadata i8* %2, metadata !5154, metadata !DIExpression()), !dbg !5162
  call void @llvm.dbg.value(metadata i8* %3, metadata !5155, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !5156, metadata !DIExpression()), !dbg !5164
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !5165
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !5165
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !5158, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 0, metadata !5157, metadata !DIExpression()), !dbg !5167
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !5157, metadata !DIExpression()), !dbg !5167
  %11 = load i32, i32* %8, align 8, !dbg !5168
  %12 = icmp ult i32 %11, 41, !dbg !5168
  br i1 %12, label %13, label %18, !dbg !5168

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !5168
  %15 = sext i32 %11 to i64, !dbg !5168
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !5168
  %17 = add i32 %11, 8, !dbg !5168
  store i32 %17, i32* %8, align 8, !dbg !5168
  br label %21, !dbg !5168

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !5168
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !5168
  store i8* %20, i8** %10, align 8, !dbg !5168
  br label %21, !dbg !5168

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !5168
  %25 = load i8*, i8** %24, align 8, !dbg !5168
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !5171
  store i8* %25, i8** %26, align 16, !dbg !5172, !tbaa !720
  %27 = icmp eq i8* %25, null, !dbg !5173
  br i1 %27, label %30, label %28, !dbg !5174

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 1, metadata !5157, metadata !DIExpression()), !dbg !5167
  %29 = icmp ult i32 %22, 41, !dbg !5168
  br i1 %29, label %35, label %32, !dbg !5168

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !5175
  call void @llvm.dbg.value(metadata i64 %31, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 %31, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !5176
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !5177
  ret void, !dbg !5177

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !5168
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !5168
  store i8* %34, i8** %10, align 8, !dbg !5168
  br label %40, !dbg !5168

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !5168
  %37 = sext i32 %22 to i64, !dbg !5168
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !5168
  %39 = add i32 %22, 8, !dbg !5168
  store i32 %39, i32* %8, align 8, !dbg !5168
  br label %40, !dbg !5168

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !5168
  %44 = load i8*, i8** %43, align 8, !dbg !5168
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !5171
  store i8* %44, i8** %45, align 8, !dbg !5172, !tbaa !720
  %46 = icmp eq i8* %44, null, !dbg !5173
  br i1 %46, label %30, label %47, !dbg !5174

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 2, metadata !5157, metadata !DIExpression()), !dbg !5167
  %48 = icmp ult i32 %41, 41, !dbg !5168
  br i1 %48, label %52, label %49, !dbg !5168

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !5168
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !5168
  store i8* %51, i8** %10, align 8, !dbg !5168
  br label %57, !dbg !5168

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !5168
  %54 = sext i32 %41 to i64, !dbg !5168
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !5168
  %56 = add i32 %41, 8, !dbg !5168
  store i32 %56, i32* %8, align 8, !dbg !5168
  br label %57, !dbg !5168

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !5168
  %61 = load i8*, i8** %60, align 8, !dbg !5168
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !5171
  store i8* %61, i8** %62, align 16, !dbg !5172, !tbaa !720
  %63 = icmp eq i8* %61, null, !dbg !5173
  br i1 %63, label %30, label %64, !dbg !5174

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 3, metadata !5157, metadata !DIExpression()), !dbg !5167
  %65 = icmp ult i32 %58, 41, !dbg !5168
  br i1 %65, label %69, label %66, !dbg !5168

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !5168
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !5168
  store i8* %68, i8** %10, align 8, !dbg !5168
  br label %74, !dbg !5168

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !5168
  %71 = sext i32 %58 to i64, !dbg !5168
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !5168
  %73 = add i32 %58, 8, !dbg !5168
  store i32 %73, i32* %8, align 8, !dbg !5168
  br label %74, !dbg !5168

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !5168
  %78 = load i8*, i8** %77, align 8, !dbg !5168
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !5171
  store i8* %78, i8** %79, align 8, !dbg !5172, !tbaa !720
  %80 = icmp eq i8* %78, null, !dbg !5173
  br i1 %80, label %30, label %81, !dbg !5174

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 4, metadata !5157, metadata !DIExpression()), !dbg !5167
  %82 = icmp ult i32 %75, 41, !dbg !5168
  br i1 %82, label %86, label %83, !dbg !5168

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !5168
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !5168
  store i8* %85, i8** %10, align 8, !dbg !5168
  br label %91, !dbg !5168

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !5168
  %88 = sext i32 %75 to i64, !dbg !5168
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !5168
  %90 = add i32 %75, 8, !dbg !5168
  store i32 %90, i32* %8, align 8, !dbg !5168
  br label %91, !dbg !5168

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !5168
  %95 = load i8*, i8** %94, align 8, !dbg !5168
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !5171
  store i8* %95, i8** %96, align 16, !dbg !5172, !tbaa !720
  %97 = icmp eq i8* %95, null, !dbg !5173
  br i1 %97, label %30, label %98, !dbg !5174

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 5, metadata !5157, metadata !DIExpression()), !dbg !5167
  %99 = icmp ult i32 %92, 41, !dbg !5168
  br i1 %99, label %103, label %100, !dbg !5168

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !5168
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !5168
  store i8* %102, i8** %10, align 8, !dbg !5168
  br label %108, !dbg !5168

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !5168
  %105 = sext i32 %92 to i64, !dbg !5168
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !5168
  %107 = add i32 %92, 8, !dbg !5168
  store i32 %107, i32* %8, align 8, !dbg !5168
  br label %108, !dbg !5168

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !5168
  %111 = load i8*, i8** %110, align 8, !dbg !5168
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !5171
  store i8* %111, i8** %112, align 8, !dbg !5172, !tbaa !720
  %113 = icmp eq i8* %111, null, !dbg !5173
  br i1 %113, label %30, label %114, !dbg !5174

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 6, metadata !5157, metadata !DIExpression()), !dbg !5167
  %115 = load i8*, i8** %10, align 8, !dbg !5168
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !5168
  store i8* %116, i8** %10, align 8, !dbg !5168
  %117 = bitcast i8* %115 to i8**, !dbg !5168
  %118 = load i8*, i8** %117, align 8, !dbg !5168
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !5171
  store i8* %118, i8** %119, align 16, !dbg !5172, !tbaa !720
  %120 = icmp eq i8* %118, null, !dbg !5173
  br i1 %120, label %30, label %121, !dbg !5174

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 7, metadata !5157, metadata !DIExpression()), !dbg !5167
  %122 = load i8*, i8** %10, align 8, !dbg !5168
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !5168
  store i8* %123, i8** %10, align 8, !dbg !5168
  %124 = bitcast i8* %122 to i8**, !dbg !5168
  %125 = load i8*, i8** %124, align 8, !dbg !5168
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !5171
  store i8* %125, i8** %126, align 8, !dbg !5172, !tbaa !720
  %127 = icmp eq i8* %125, null, !dbg !5173
  br i1 %127, label %30, label %128, !dbg !5174

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 8, metadata !5157, metadata !DIExpression()), !dbg !5167
  %129 = load i8*, i8** %10, align 8, !dbg !5168
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !5168
  store i8* %130, i8** %10, align 8, !dbg !5168
  %131 = bitcast i8* %129 to i8**, !dbg !5168
  %132 = load i8*, i8** %131, align 8, !dbg !5168
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !5171
  store i8* %132, i8** %133, align 16, !dbg !5172, !tbaa !720
  %134 = icmp eq i8* %132, null, !dbg !5173
  br i1 %134, label %30, label %135, !dbg !5174

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !5157, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.value(metadata i64 9, metadata !5157, metadata !DIExpression()), !dbg !5167
  %136 = load i8*, i8** %10, align 8, !dbg !5168
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !5168
  store i8* %137, i8** %10, align 8, !dbg !5168
  %138 = bitcast i8* %136 to i8**, !dbg !5168
  %139 = load i8*, i8** %138, align 8, !dbg !5168
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !5171
  store i8* %139, i8** %140, align 8, !dbg !5172, !tbaa !720
  %141 = icmp eq i8* %139, null, !dbg !5173
  %142 = select i1 %141, i64 9, i64 10, !dbg !5174
  br label %30, !dbg !5174
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !5178 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5182, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i8* %1, metadata !5183, metadata !DIExpression()), !dbg !5192
  call void @llvm.dbg.value(metadata i8* %2, metadata !5184, metadata !DIExpression()), !dbg !5193
  call void @llvm.dbg.value(metadata i8* %3, metadata !5185, metadata !DIExpression()), !dbg !5194
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !5195
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !5195
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !5186, metadata !DIExpression()), !dbg !5196
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !5197
  call void @llvm.va_start(i8* nonnull %6), !dbg !5197
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !5198
  call void @llvm.va_end(i8* nonnull %6), !dbg !5199
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !5200
  ret void, !dbg !5200
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !5201 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.127, i64 0, i64 0), i32 5) #11, !dbg !5202
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.128, i64 0, i64 0)) #11, !dbg !5202
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.129, i64 0, i64 0), i32 5) #11, !dbg !5203
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.130, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.131, i64 0, i64 0)) #11, !dbg !5203
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.132, i64 0, i64 0), i32 5) #11, !dbg !5204
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5204, !tbaa !720
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !5204
  ret void, !dbg !5205
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !5206 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5210, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.value(metadata i64 %1, metadata !5211, metadata !DIExpression()), !dbg !5213
  %3 = udiv i64 9223372036854775807, %1, !dbg !5214
  %4 = icmp ult i64 %3, %0, !dbg !5214
  br i1 %4, label %5, label %6, !dbg !5216

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !5217
  unreachable, !dbg !5217

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5218
  call void @llvm.dbg.value(metadata i64 %7, metadata !5219, metadata !DIExpression()) #11, !dbg !5226
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !5228
  call void @llvm.dbg.value(metadata i8* %8, metadata !5225, metadata !DIExpression()) #11, !dbg !5229
  %9 = icmp eq i8* %8, null, !dbg !5230
  %10 = icmp ne i64 %7, 0, !dbg !5232
  %11 = and i1 %10, %9, !dbg !5233
  br i1 %11, label %12, label %13, !dbg !5233

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !5234
  unreachable, !dbg !5234

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !5235
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !5220 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5219, metadata !DIExpression()), !dbg !5236
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !5237
  call void @llvm.dbg.value(metadata i8* %2, metadata !5225, metadata !DIExpression()), !dbg !5238
  %3 = icmp eq i8* %2, null, !dbg !5239
  %4 = icmp ne i64 %0, 0, !dbg !5240
  %5 = and i1 %4, %3, !dbg !5241
  br i1 %5, label %6, label %7, !dbg !5241

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5242
  unreachable, !dbg !5242

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5243
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !5244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5248, metadata !DIExpression()), !dbg !5251
  call void @llvm.dbg.value(metadata i64 %1, metadata !5249, metadata !DIExpression()), !dbg !5252
  call void @llvm.dbg.value(metadata i64 %2, metadata !5250, metadata !DIExpression()), !dbg !5253
  %4 = udiv i64 9223372036854775807, %2, !dbg !5254
  %5 = icmp ult i64 %4, %1, !dbg !5254
  br i1 %5, label %6, label %7, !dbg !5256

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !5257
  unreachable, !dbg !5257

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !5258
  call void @llvm.dbg.value(metadata i8* %0, metadata !5259, metadata !DIExpression()) #11, !dbg !5265
  call void @llvm.dbg.value(metadata i64 %8, metadata !5264, metadata !DIExpression()) #11, !dbg !5267
  %9 = icmp eq i64 %8, 0, !dbg !5268
  %10 = icmp ne i8* %0, null, !dbg !5270
  %11 = and i1 %10, %9, !dbg !5271
  br i1 %11, label %12, label %13, !dbg !5271

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !5272
  br label %19, !dbg !5274

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !5275
  call void @llvm.dbg.value(metadata i8* %14, metadata !5259, metadata !DIExpression()) #11, !dbg !5265
  %15 = icmp eq i8* %14, null, !dbg !5276
  %16 = icmp ne i64 %8, 0, !dbg !5278
  %17 = and i1 %16, %15, !dbg !5279
  br i1 %17, label %18, label %19, !dbg !5279

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !5280
  unreachable, !dbg !5280

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !5281
  ret i8* %20, !dbg !5282
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !5260 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5259, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.value(metadata i64 %1, metadata !5264, metadata !DIExpression()), !dbg !5284
  %3 = icmp eq i64 %1, 0, !dbg !5285
  %4 = icmp ne i8* %0, null, !dbg !5286
  %5 = and i1 %4, %3, !dbg !5287
  br i1 %5, label %6, label %7, !dbg !5287

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !5288
  br label %13, !dbg !5289

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !5290
  call void @llvm.dbg.value(metadata i8* %8, metadata !5259, metadata !DIExpression()), !dbg !5283
  %9 = icmp eq i8* %8, null, !dbg !5291
  %10 = icmp ne i64 %1, 0, !dbg !5292
  %11 = and i1 %10, %9, !dbg !5293
  br i1 %11, label %12, label %13, !dbg !5293

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !5294
  unreachable, !dbg !5294

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !5295
  ret i8* %14, !dbg !5296
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !263 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !268, metadata !DIExpression()), !dbg !5297
  call void @llvm.dbg.value(metadata i64* %1, metadata !269, metadata !DIExpression()), !dbg !5298
  call void @llvm.dbg.value(metadata i64 %2, metadata !270, metadata !DIExpression()), !dbg !5299
  %4 = load i64, i64* %1, align 8, !dbg !5300, !tbaa !2156
  call void @llvm.dbg.value(metadata i64 %4, metadata !271, metadata !DIExpression()), !dbg !5301
  %5 = icmp eq i8* %0, null, !dbg !5302
  br i1 %5, label %6, label %20, !dbg !5304

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !5305
  br i1 %7, label %8, label %13, !dbg !5308

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !5309
  call void @llvm.dbg.value(metadata i64 %9, metadata !271, metadata !DIExpression()), !dbg !5301
  %10 = icmp ugt i64 %2, 128, !dbg !5311
  %11 = zext i1 %10 to i64, !dbg !5311
  %12 = add nuw nsw i64 %9, %11, !dbg !5312
  call void @llvm.dbg.value(metadata i64 %12, metadata !271, metadata !DIExpression()), !dbg !5301
  br label %13, !dbg !5313

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !5314
  call void @llvm.dbg.value(metadata i64 %14, metadata !271, metadata !DIExpression()), !dbg !5301
  %15 = udiv i64 9223372036854775807, %2, !dbg !5315
  %16 = icmp ult i64 %15, %14, !dbg !5315
  br i1 %16, label %19, label %17, !dbg !5317

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !271, metadata !DIExpression()), !dbg !5301
  store i64 %14, i64* %1, align 8, !dbg !5318, !tbaa !2156
  %18 = mul i64 %14, %2, !dbg !5319
  call void @llvm.dbg.value(metadata i8* %0, metadata !5259, metadata !DIExpression()) #11, !dbg !5320
  call void @llvm.dbg.value(metadata i64 %28, metadata !5264, metadata !DIExpression()) #11, !dbg !5322
  br label %31, !dbg !5323

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !5324
  unreachable, !dbg !5324

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !5325
  %22 = icmp ugt i64 %21, %4, !dbg !5328
  br i1 %22, label %24, label %23, !dbg !5329

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !5330
  unreachable, !dbg !5330

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !5331
  %26 = add i64 %4, 1, !dbg !5332
  %27 = add i64 %26, %25, !dbg !5333
  call void @llvm.dbg.value(metadata i64 %27, metadata !271, metadata !DIExpression()), !dbg !5301
  call void @llvm.dbg.value(metadata i64 %27, metadata !271, metadata !DIExpression()), !dbg !5301
  store i64 %27, i64* %1, align 8, !dbg !5318, !tbaa !2156
  %28 = mul i64 %27, %2, !dbg !5319
  call void @llvm.dbg.value(metadata i8* %0, metadata !5259, metadata !DIExpression()) #11, !dbg !5320
  call void @llvm.dbg.value(metadata i64 %28, metadata !5264, metadata !DIExpression()) #11, !dbg !5322
  %29 = icmp eq i64 %28, 0, !dbg !5334
  br i1 %29, label %30, label %31, !dbg !5323

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !5335
  br label %38, !dbg !5336

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !5337
  call void @llvm.dbg.value(metadata i8* %33, metadata !5259, metadata !DIExpression()) #11, !dbg !5320
  %34 = icmp eq i8* %33, null, !dbg !5338
  %35 = icmp ne i64 %32, 0, !dbg !5339
  %36 = and i1 %35, %34, !dbg !5340
  br i1 %36, label %37, label %38, !dbg !5340

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !5341
  unreachable, !dbg !5341

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !5342
  ret i8* %39, !dbg !5343
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !5344 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5346, metadata !DIExpression()), !dbg !5347
  call void @llvm.dbg.value(metadata i64 %0, metadata !5219, metadata !DIExpression()) #11, !dbg !5348
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !5350
  call void @llvm.dbg.value(metadata i8* %2, metadata !5225, metadata !DIExpression()) #11, !dbg !5351
  %3 = icmp eq i8* %2, null, !dbg !5352
  %4 = icmp ne i64 %0, 0, !dbg !5353
  %5 = and i1 %4, %3, !dbg !5354
  br i1 %5, label %6, label %7, !dbg !5354

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5355
  unreachable, !dbg !5355

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5356
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !5357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5361, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.value(metadata i64* %1, metadata !5362, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.value(metadata i8* %0, metadata !268, metadata !DIExpression()) #11, !dbg !5365
  call void @llvm.dbg.value(metadata i64* %1, metadata !269, metadata !DIExpression()) #11, !dbg !5367
  call void @llvm.dbg.value(metadata i64 1, metadata !270, metadata !DIExpression()) #11, !dbg !5368
  %3 = load i64, i64* %1, align 8, !dbg !5369, !tbaa !2156
  call void @llvm.dbg.value(metadata i64 %3, metadata !271, metadata !DIExpression()) #11, !dbg !5370
  %4 = icmp eq i8* %0, null, !dbg !5371
  br i1 %4, label %5, label %12, !dbg !5372

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5373
  br i1 %6, label %9, label %7, !dbg !5374

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !271, metadata !DIExpression()) #11, !dbg !5370
  %8 = icmp slt i64 %3, 0, !dbg !5375
  br i1 %8, label %11, label %9, !dbg !5376

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !271, metadata !DIExpression()) #11, !dbg !5370
  store i64 %10, i64* %1, align 8, !dbg !5377, !tbaa !2156
  call void @llvm.dbg.value(metadata i8* %0, metadata !5259, metadata !DIExpression()) #11, !dbg !5378
  call void @llvm.dbg.value(metadata i64 %18, metadata !5264, metadata !DIExpression()) #11, !dbg !5380
  br label %21, !dbg !5381

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !5382
  unreachable, !dbg !5382

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !5383
  br i1 %13, label %15, label %14, !dbg !5384

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !5385
  unreachable, !dbg !5385

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !5386
  %17 = add i64 %3, 1, !dbg !5387
  %18 = add i64 %17, %16, !dbg !5388
  call void @llvm.dbg.value(metadata i64 %18, metadata !271, metadata !DIExpression()) #11, !dbg !5370
  call void @llvm.dbg.value(metadata i64 %18, metadata !271, metadata !DIExpression()) #11, !dbg !5370
  store i64 %18, i64* %1, align 8, !dbg !5377, !tbaa !2156
  call void @llvm.dbg.value(metadata i8* %0, metadata !5259, metadata !DIExpression()) #11, !dbg !5378
  call void @llvm.dbg.value(metadata i64 %18, metadata !5264, metadata !DIExpression()) #11, !dbg !5380
  %19 = icmp eq i64 %18, 0, !dbg !5389
  br i1 %19, label %20, label %21, !dbg !5381

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !5390
  br label %28, !dbg !5391

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !5392
  call void @llvm.dbg.value(metadata i8* %23, metadata !5259, metadata !DIExpression()) #11, !dbg !5378
  %24 = icmp eq i8* %23, null, !dbg !5393
  %25 = icmp ne i64 %22, 0, !dbg !5394
  %26 = and i1 %25, %24, !dbg !5395
  br i1 %26, label %27, label %28, !dbg !5395

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !5396
  unreachable, !dbg !5396

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !5397
  ret i8* %29, !dbg !5398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !5399 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.value(metadata i64 %0, metadata !5219, metadata !DIExpression()) #11, !dbg !5403
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !5405
  call void @llvm.dbg.value(metadata i8* %2, metadata !5225, metadata !DIExpression()) #11, !dbg !5406
  %3 = icmp eq i8* %2, null, !dbg !5407
  %4 = icmp ne i64 %0, 0, !dbg !5408
  %5 = and i1 %4, %3, !dbg !5409
  br i1 %5, label %6, label %7, !dbg !5409

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5410
  unreachable, !dbg !5410

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !5411
  ret i8* %2, !dbg !5412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !5413 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5415, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.value(metadata i64 %1, metadata !5416, metadata !DIExpression()), !dbg !5419
  %3 = udiv i64 9223372036854775807, %1, !dbg !5420
  %4 = icmp ult i64 %3, %0, !dbg !5420
  br i1 %4, label %8, label %5, !dbg !5422

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !5423
  call void @llvm.dbg.value(metadata i8* %6, metadata !5417, metadata !DIExpression()), !dbg !5424
  %7 = icmp eq i8* %6, null, !dbg !5425
  br i1 %7, label %8, label %9, !dbg !5426

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !5427
  unreachable, !dbg !5427

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5428
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !5429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5433, metadata !DIExpression()), !dbg !5435
  call void @llvm.dbg.value(metadata i64 %1, metadata !5434, metadata !DIExpression()), !dbg !5436
  call void @llvm.dbg.value(metadata i64 %1, metadata !5219, metadata !DIExpression()) #11, !dbg !5437
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !5439
  call void @llvm.dbg.value(metadata i8* %3, metadata !5225, metadata !DIExpression()) #11, !dbg !5440
  %4 = icmp eq i8* %3, null, !dbg !5441
  %5 = icmp ne i64 %1, 0, !dbg !5442
  %6 = and i1 %5, %4, !dbg !5443
  br i1 %6, label %7, label %8, !dbg !5443

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !5444
  unreachable, !dbg !5444

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !5445
  ret i8* %3, !dbg !5446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !5447 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5449, metadata !DIExpression()), !dbg !5450
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !5451
  %3 = add i64 %2, 1, !dbg !5452
  call void @llvm.dbg.value(metadata i8* %0, metadata !5433, metadata !DIExpression()) #11, !dbg !5453
  call void @llvm.dbg.value(metadata i64 %3, metadata !5434, metadata !DIExpression()) #11, !dbg !5455
  call void @llvm.dbg.value(metadata i64 %3, metadata !5219, metadata !DIExpression()) #11, !dbg !5456
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !5458
  call void @llvm.dbg.value(metadata i8* %4, metadata !5225, metadata !DIExpression()) #11, !dbg !5459
  %5 = icmp eq i8* %4, null, !dbg !5460
  %6 = icmp ne i64 %3, 0, !dbg !5461
  %7 = and i1 %6, %5, !dbg !5462
  br i1 %7, label %8, label %9, !dbg !5462

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !5463
  unreachable, !dbg !5463

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !5464
  ret i8* %4, !dbg !5465
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5466 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5468, !tbaa !809
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.145, i64 0, i64 0), i32 5) #11, !dbg !5469
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i64 0, i64 0), i8* %2) #11, !dbg !5470
  tail call void @abort() #16, !dbg !5471
  unreachable, !dbg !5471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !5472 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5475, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i64 %1, metadata !5476, metadata !DIExpression()), !dbg !5482
  %3 = icmp eq i64 %0, 0, !dbg !5483
  %4 = icmp eq i64 %1, 0, !dbg !5484
  %5 = or i1 %3, %4, !dbg !5485
  br i1 %5, label %12, label %6, !dbg !5485

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5486
  call void @llvm.dbg.value(metadata i64 %7, metadata !5478, metadata !DIExpression()), !dbg !5487
  %8 = udiv i64 %7, %1, !dbg !5488
  %9 = icmp eq i64 %8, %0, !dbg !5490
  br i1 %9, label %12, label %10, !dbg !5491

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !5492
  store i32 12, i32* %11, align 4, !dbg !5494, !tbaa !809
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !5475, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i64 %13, metadata !5476, metadata !DIExpression()), !dbg !5482
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !5495
  call void @llvm.dbg.value(metadata i8* %15, metadata !5477, metadata !DIExpression()), !dbg !5496
  br label %16, !dbg !5497

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !5498
  ret i8* %17, !dbg !5499
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !5500 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5517, metadata !DIExpression()), !dbg !5526
  call void @llvm.dbg.value(metadata i8* %1, metadata !5518, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.value(metadata i64 %2, metadata !5519, metadata !DIExpression()), !dbg !5528
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5520, metadata !DIExpression()), !dbg !5529
  %6 = bitcast i32* %5 to i8*, !dbg !5530
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !5530
  %7 = icmp eq i32* %0, null, !dbg !5531
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5533
  call void @llvm.dbg.value(metadata i32* %8, metadata !5517, metadata !DIExpression()), !dbg !5526
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !5534
  call void @llvm.dbg.value(metadata i64 %9, metadata !5521, metadata !DIExpression()), !dbg !5535
  %10 = icmp ugt i64 %9, -3, !dbg !5536
  %11 = icmp ne i64 %2, 0, !dbg !5537
  %12 = and i1 %11, %10, !dbg !5538
  br i1 %12, label %13, label %18, !dbg !5538

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !5539
  br i1 %14, label %18, label %15, !dbg !5540

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5541, !tbaa !741
  call void @llvm.dbg.value(metadata i8 %16, metadata !5523, metadata !DIExpression()), !dbg !5542
  %17 = zext i8 %16 to i32, !dbg !5543
  store i32 %17, i32* %8, align 4, !dbg !5544, !tbaa !809
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5545
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !5546
  ret i64 %19, !dbg !5546
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5547 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5586, metadata !DIExpression()), !dbg !5591
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5592
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5593, metadata !DIExpression()), !dbg !5596
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5598
  %4 = load i32, i32* %3, align 8, !dbg !5598, !tbaa !5599
  %5 = and i32 %4, 32, !dbg !5598
  %6 = icmp eq i32 %5, 0, !dbg !5600
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5601
  %8 = icmp ne i32 %7, 0, !dbg !5602
  br i1 %6, label %9, label %19, !dbg !5603

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5605
  %11 = xor i1 %8, true, !dbg !5606
  %12 = or i1 %10, %11, !dbg !5606
  %13 = sext i1 %8 to i32, !dbg !5606
  br i1 %12, label %22, label %14, !dbg !5606

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !5607
  %16 = load i32, i32* %15, align 4, !dbg !5607, !tbaa !809
  %17 = icmp ne i32 %16, 9, !dbg !5608
  %18 = sext i1 %17 to i32, !dbg !5609
  br label %22, !dbg !5609

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5610

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !5612
  store i32 0, i32* %21, align 4, !dbg !5614, !tbaa !809
  br label %22, !dbg !5612

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5615
  ret i32 %23, !dbg !5616
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !5617 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5622, metadata !DIExpression()), !dbg !5625
  call void @llvm.dbg.value(metadata i8 1, metadata !5623, metadata !DIExpression()), !dbg !5626
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !5627
  call void @llvm.dbg.value(metadata i8* %2, metadata !5624, metadata !DIExpression()), !dbg !5628
  %3 = icmp eq i8* %2, null, !dbg !5629
  br i1 %3, label %11, label %4, !dbg !5631

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0)) #15, !dbg !5632
  %6 = icmp eq i32 %5, 0, !dbg !5637
  br i1 %6, label %10, label %7, !dbg !5638

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0)) #15, !dbg !5639
  %9 = icmp eq i32 %8, 0, !dbg !5640
  br i1 %9, label %10, label %11, !dbg !5641

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !5623, metadata !DIExpression()), !dbg !5626
  br label %11, !dbg !5642

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5643
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !5644 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5650
  call void @llvm.dbg.value(metadata i8* %1, metadata !5649, metadata !DIExpression()), !dbg !5651
  %2 = icmp eq i8* %1, null, !dbg !5652
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), i8* %1, !dbg !5654
  call void @llvm.dbg.value(metadata i8* %3, metadata !5649, metadata !DIExpression()), !dbg !5651
  %4 = load i8, i8* %3, align 1, !dbg !5655, !tbaa !741
  %5 = icmp eq i8 %4, 0, !dbg !5659
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), i8* %3, !dbg !5660
  call void @llvm.dbg.value(metadata i8* %6, metadata !5649, metadata !DIExpression()), !dbg !5651
  ret i8* %6, !dbg !5661
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local i32 @mb_width_aux(i32) local_unnamed_addr #13 !dbg !5662 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5668, metadata !DIExpression()), !dbg !5670
  %2 = tail call i32 @wcwidth(i32 %0) #11, !dbg !5671
  call void @llvm.dbg.value(metadata i32 %2, metadata !5669, metadata !DIExpression()), !dbg !5672
  %3 = icmp sgt i32 %2, -1, !dbg !5673
  br i1 %3, label %8, label %4, !dbg !5674

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #11, !dbg !5675
  %6 = icmp eq i32 %5, 0, !dbg !5675
  %7 = zext i1 %6 to i32, !dbg !5675
  br label %8, !dbg !5674

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ], !dbg !5674
  ret i32 %9, !dbg !5676
}

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local void @mb_copy(%struct.mbchar*, %struct.mbchar* readonly) local_unnamed_addr #13 !dbg !5677 {
  call void @llvm.dbg.value(metadata %struct.mbchar* %0, metadata !5692, metadata !DIExpression()), !dbg !5694
  call void @llvm.dbg.value(metadata %struct.mbchar* %1, metadata !5693, metadata !DIExpression()), !dbg !5695
  %3 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 0, !dbg !5696
  %4 = load i8*, i8** %3, align 8, !dbg !5696, !tbaa !3010
  %5 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 4, i64 0, !dbg !5698
  %6 = icmp eq i8* %4, %5, !dbg !5699
  br i1 %6, label %7, label %11, !dbg !5700

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 4, i64 0, !dbg !5701
  %9 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !5703
  %10 = load i64, i64* %9, align 8, !dbg !5703, !tbaa !3017
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %4, i64 %10, i1 false), !dbg !5704
  br label %13, !dbg !5705

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !5706
  br label %13

; <label>:13:                                     ; preds = %11, %7
  %14 = phi i64* [ %12, %11 ], [ %9, %7 ], !dbg !5706
  %15 = phi i8* [ %4, %11 ], [ %8, %7 ]
  %16 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 0, !dbg !5707
  store i8* %15, i8** %16, align 8, !dbg !5708
  %17 = load i64, i64* %14, align 8, !dbg !5706, !tbaa !3017
  %18 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 1, !dbg !5709
  store i64 %17, i64* %18, align 8, !dbg !5710, !tbaa !3017
  %19 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 2, !dbg !5711
  %20 = load i8, i8* %19, align 8, !dbg !5711, !tbaa !3027, !range !1950
  %21 = icmp eq i8 %20, 0, !dbg !5711
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 2, !dbg !5713
  store i8 %20, i8* %22, align 8, !dbg !5714, !tbaa !3027
  br i1 %21, label %27, label %23, !dbg !5715

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 3, !dbg !5716
  %25 = load i32, i32* %24, align 4, !dbg !5716, !tbaa !3032
  %26 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 3, !dbg !5717
  store i32 %25, i32* %26, align 4, !dbg !5718, !tbaa !3032
  br label %27, !dbg !5719

; <label>:27:                                     ; preds = %13, %23
  ret void, !dbg !5720
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @is_basic(i8 signext) local_unnamed_addr #14 !dbg !5721 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !5723, metadata !DIExpression()), !dbg !5724
  %2 = zext i8 %0 to i32, !dbg !5725
  %3 = lshr i32 %2, 5, !dbg !5726
  %4 = zext i32 %3 to i64, !dbg !5727
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @is_basic_table, i64 0, i64 %4, !dbg !5727
  %6 = load i32, i32* %5, align 4, !dbg !5727, !tbaa !809
  %7 = and i32 %2, 31, !dbg !5728
  %8 = shl i32 1, %7, !dbg !5729
  %9 = and i32 %6, %8, !dbg !5729
  %10 = icmp ne i32 %9, 0, !dbg !5729
  ret i1 %10, !dbg !5730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !5731 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5770, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.value(metadata i32 0, metadata !5771, metadata !DIExpression()), !dbg !5775
  call void @llvm.dbg.value(metadata i32 0, metadata !5773, metadata !DIExpression()), !dbg !5776
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5777
  call void @llvm.dbg.value(metadata i32 %2, metadata !5772, metadata !DIExpression()), !dbg !5778
  %3 = icmp slt i32 %2, 0, !dbg !5779
  br i1 %3, label %4, label %6, !dbg !5781

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5782
  br label %24, !dbg !5783

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5784
  %8 = icmp eq i32 %7, 0, !dbg !5784
  br i1 %8, label %13, label %9, !dbg !5786

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5787
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !5788
  %12 = icmp eq i64 %11, -1, !dbg !5789
  br i1 %12, label %16, label %13, !dbg !5790

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !5791
  %15 = icmp eq i32 %14, 0, !dbg !5791
  br i1 %15, label %16, label %18, !dbg !5792

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !5771, metadata !DIExpression()), !dbg !5775
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5793
  call void @llvm.dbg.value(metadata i32 %21, metadata !5773, metadata !DIExpression()), !dbg !5776
  br label %24, !dbg !5794

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !5795
  %20 = load i32, i32* %19, align 4, !dbg !5795, !tbaa !809
  call void @llvm.dbg.value(metadata i32 %20, metadata !5771, metadata !DIExpression()), !dbg !5775
  call void @llvm.dbg.value(metadata i32 %20, metadata !5771, metadata !DIExpression()), !dbg !5775
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5793
  call void @llvm.dbg.value(metadata i32 %21, metadata !5773, metadata !DIExpression()), !dbg !5776
  %22 = icmp eq i32 %20, 0, !dbg !5796
  br i1 %22, label %24, label %23, !dbg !5794

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5798, !tbaa !809
  call void @llvm.dbg.value(metadata i32 -1, metadata !5773, metadata !DIExpression()), !dbg !5776
  br label %24, !dbg !5800

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5801
  ret i32 %25, !dbg !5802
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5803 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5842, metadata !DIExpression()), !dbg !5843
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5844
  br i1 %2, label %6, label %3, !dbg !5846

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5847
  %5 = icmp eq i32 %4, 0, !dbg !5847
  br i1 %5, label %6, label %8, !dbg !5848

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5849
  br label %17, !dbg !5850

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5851, metadata !DIExpression()) #11, !dbg !5856
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5858
  %10 = load i32, i32* %9, align 8, !dbg !5858, !tbaa !5599
  %11 = and i32 %10, 256, !dbg !5860
  %12 = icmp eq i32 %11, 0, !dbg !5860
  br i1 %12, label %15, label %13, !dbg !5861

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5862
  br label %15, !dbg !5862

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5863
  br label %17, !dbg !5864

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5865
  ret i32 %18, !dbg !5866
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !5867 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5907, metadata !DIExpression()), !dbg !5913
  call void @llvm.dbg.value(metadata i64 %1, metadata !5908, metadata !DIExpression()), !dbg !5914
  call void @llvm.dbg.value(metadata i32 %2, metadata !5909, metadata !DIExpression()), !dbg !5915
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5916
  %5 = load i8*, i8** %4, align 8, !dbg !5916, !tbaa !5917
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5918
  %7 = load i8*, i8** %6, align 8, !dbg !5918, !tbaa !5919
  %8 = icmp eq i8* %5, %7, !dbg !5920
  br i1 %8, label %9, label %28, !dbg !5921

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5922
  %11 = load i8*, i8** %10, align 8, !dbg !5922, !tbaa !734
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5923
  %13 = load i8*, i8** %12, align 8, !dbg !5923, !tbaa !5924
  %14 = icmp eq i8* %11, %13, !dbg !5925
  br i1 %14, label %15, label %28, !dbg !5926

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5927
  %17 = load i8*, i8** %16, align 8, !dbg !5927, !tbaa !5928
  %18 = icmp eq i8* %17, null, !dbg !5929
  br i1 %18, label %19, label %28, !dbg !5930

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5931
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5932
  call void @llvm.dbg.value(metadata i64 %21, metadata !5910, metadata !DIExpression()), !dbg !5933
  %22 = icmp eq i64 %21, -1, !dbg !5934
  br i1 %22, label %30, label %23, !dbg !5936

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5937
  %25 = load i32, i32* %24, align 8, !dbg !5938, !tbaa !5599
  %26 = and i32 %25, -17, !dbg !5938
  store i32 %26, i32* %24, align 8, !dbg !5938, !tbaa !5599
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5939
  store i64 %21, i64* %27, align 8, !dbg !5940, !tbaa !5941
  br label %30, !dbg !5942

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5943
  br label %30, !dbg !5944

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5945
  ret i32 %31, !dbg !5946
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
attributes #14 = { inlinehint nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !110, !119, !126, !236, !239, !242, !144, !151, !244, !247, !250, !220, !258, !275, !277, !279, !282, !284, !286, !229, !675, !677, !679}
!llvm.ident = !{!681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681, !681}
!llvm.module.flags = !{!682, !683, !684, !685, !686}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "args", scope: !2, file: !3, line: 189, type: !107, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !106)
!3 = !DIFile(filename: "src/expr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !10, !14, !28, !78, !88}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "valtype", file: !3, line: 169, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9}
!8 = !DIEnumerator(name: "integer", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "string", value: 1, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 156, baseType: !6, size: 32, elements: !11)
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "EXPR_INVALID", value: 2, isUnsigned: true)
!13 = !DIEnumerator(name: "EXPR_FAILURE", value: 3, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !15, line: 32, baseType: !6, size: 32, elements: !16)
!15 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!17 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!23 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!25 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!27 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !29, file: !3, line: 989, baseType: !6, size: 32, elements: !71)
!29 = distinct !DISubprogram(name: "eval2", scope: !3, file: !3, line: 978, type: !30, isLocal: true, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !61)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !60}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "VALUE", file: !3, line: 186, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valinfo", file: !3, line: 177, size: 192, elements: !35)
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !3, line: 179, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "TYPE", file: !3, line: 174, baseType: !5)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !34, file: !3, line: 184, baseType: !39, size: 128, offset: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !3, line: 180, size: 128, elements: !40)
!40 = !{!41, !57}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !39, file: !3, line: 182, baseType: !42, size: 128)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_t", file: !43, line: 164, baseType: !44)
!43 = !DIFile(filename: "/usr/include/gmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !55)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mpz_struct", file: !43, line: 158, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 150, size: 128, elements: !47)
!47 = !{!48, !50, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_alloc", scope: !46, file: !43, line: 152, baseType: !49, size: 32)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_size", scope: !46, file: !43, line: 154, baseType: !49, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_d", scope: !46, file: !43, line: 157, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_limb_t", file: !43, line: 141, baseType: !54)
!54 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !39, file: !3, line: 183, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !{!62, !63, !64, !66, !67, !68}
!62 = !DILocalVariable(name: "evaluate", arg: 1, scope: !29, file: !3, line: 978, type: !60)
!63 = !DILocalVariable(name: "l", scope: !29, file: !3, line: 980, type: !32)
!64 = !DILocalVariable(name: "r", scope: !65, file: !3, line: 988, type: !32)
!65 = distinct !DILexicalBlock(scope: !29, file: !3, line: 987, column: 5)
!66 = !DILocalVariable(name: "fxn", scope: !65, file: !3, line: 992, type: !28)
!67 = !DILocalVariable(name: "val", scope: !65, file: !3, line: 993, type: !60)
!68 = !DILocalVariable(name: "cmp", scope: !69, file: !3, line: 1013, type: !49)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 1012, column: 9)
!70 = distinct !DILexicalBlock(scope: !65, file: !3, line: 1011, column: 11)
!71 = !{!72, !73, !74, !75, !76, !77}
!72 = !DIEnumerator(name: "less_than", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "less_equal", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "equal", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "not_equal", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "greater_equal", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "greater_than", value: 5, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !79, file: !3, line: 950, baseType: !6, size: 32, elements: !85)
!79 = distinct !DISubprogram(name: "eval3", scope: !3, file: !3, line: 946, type: !30, isLocal: true, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !80)
!80 = !{!81, !82, !83, !84}
!81 = !DILocalVariable(name: "evaluate", arg: 1, scope: !79, file: !3, line: 946, type: !60)
!82 = !DILocalVariable(name: "l", scope: !79, file: !3, line: 948, type: !32)
!83 = !DILocalVariable(name: "r", scope: !79, file: !3, line: 949, type: !32)
!84 = !DILocalVariable(name: "fxn", scope: !79, file: !3, line: 950, type: !78)
!85 = !{!86, !87}
!86 = !DIEnumerator(name: "plus", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "minus", value: 1, isUnsigned: true)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !89, file: !3, line: 911, baseType: !6, size: 32, elements: !95)
!89 = distinct !DISubprogram(name: "eval4", scope: !3, file: !3, line: 907, type: !30, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DILocalVariable(name: "evaluate", arg: 1, scope: !89, file: !3, line: 907, type: !60)
!92 = !DILocalVariable(name: "l", scope: !89, file: !3, line: 909, type: !32)
!93 = !DILocalVariable(name: "r", scope: !89, file: !3, line: 910, type: !32)
!94 = !DILocalVariable(name: "fxn", scope: !89, file: !3, line: 911, type: !88)
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "multiply", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "divide", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "mod", value: 2, isUnsigned: true)
!99 = !{!100, !102, !103, !104, !54, !6}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 62, baseType: !54)
!105 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!106 = !{!0}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "file_name", scope: !110, file: !116, line: 46, type: !100, isLocal: true, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, globals: !113)
!111 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!112 = !{}
!113 = !{!108, !114}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !110, file: !116, line: 56, type: !60, isLocal: true, isDefinition: true)
!116 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "exit_failure", scope: !119, file: !122, line: 24, type: !123, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, globals: !121)
!120 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!121 = !{!117}
!122 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "long_options", scope: !126, file: !129, line: 33, type: !130, isLocal: true, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, globals: !128)
!127 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!128 = !{!124}
!129 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 768, elements: !140)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !133, line: 50, size: 256, elements: !134)
!133 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!134 = !{!135, !136, !137, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !133, line: 52, baseType: !100, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !132, file: !133, line: 55, baseType: !49, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !132, file: !133, line: 56, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !132, file: !133, line: 57, baseType: !49, size: 32, offset: 192)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "program_name", scope: !144, file: !148, line: 33, type: !100, isLocal: false, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !146, globals: !147)
!145 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!146 = !{!102, !58}
!147 = !{!142}
!148 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !151, file: !179, line: 85, type: !214, isLocal: false, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !174, globals: !176)
!152 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!153 = !{!14, !154, !159}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 242, baseType: !6, size: 32, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!158 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 46, baseType: !6, size: 32, elements: !161)
!160 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!162 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!163 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!164 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!165 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!166 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!167 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!168 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!169 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!170 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!173 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!174 = !{!49, !175, !104, !58}
!175 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!176 = !{!149, !177, !184, !196, !198, !203, !210, !212}
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !151, file: !179, line: 101, type: !180, isLocal: false, isDefinition: true)
!179 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 320, elements: !182)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!182 = !{!183}
!183 = !DISubrange(count: 10)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !151, file: !179, line: 1052, type: !186, isLocal: false, isDefinition: true)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !179, line: 65, size: 448, elements: !187)
!187 = !{!188, !189, !190, !194, !195}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !186, file: !179, line: 68, baseType: !14, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !179, line: 71, baseType: !49, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !186, file: !179, line: 75, baseType: !191, size: 256, offset: 64)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !186, file: !179, line: 78, baseType: !100, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !186, file: !179, line: 81, baseType: !100, size: 64, offset: 384)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !151, file: !179, line: 116, type: !186, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "slot0", scope: !151, file: !179, line: 842, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 256)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "slotvec", scope: !151, file: !179, line: 845, type: !205, isLocal: true, isDefinition: true)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !179, line: 834, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !179, line: 836, baseType: !104, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !206, file: !179, line: 837, baseType: !58, size: 64, offset: 64)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "nslots", scope: !151, file: !179, line: 843, type: !49, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "slotvec0", scope: !151, file: !179, line: 844, type: !206, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 704, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!216 = !{!217}
!217 = !DISubrange(count: 11)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !220, file: !223, line: 26, type: !224, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, globals: !222)
!221 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = !{!218}
!223 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 376, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 47)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "is_basic_table", scope: !229, file: !233, line: 28, type: !234, isLocal: false, isDefinition: true)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !231, globals: !232)
!230 = !DIFile(filename: "./lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!231 = !{!103}
!232 = !{!227}
!233 = !DIFile(filename: "lib/mbchar.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !192)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !238)
!237 = !DIFile(filename: "./lib/mbschr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!238 = !{!103, !58, !104}
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !241)
!240 = !DIFile(filename: "./lib/mbslen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!241 = !{!104, !103}
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !241)
!243 = !DIFile(filename: "./lib/mbuiter.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !246)
!245 = !DIFile(filename: "./lib/strnlen1.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!246 = !{!100, !102}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !249)
!248 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!249 = !{!6}
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, retainedTypes: !257)
!251 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!252 = !{!253}
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 41, baseType: !6, size: 32, elements: !255)
!254 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!255 = !{!256}
!256 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!257 = !{!102}
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !274)
!259 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!260 = !{!261}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !263, file: !262, line: 186, baseType: !6, size: 32, elements: !272)
!262 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!263 = distinct !DISubprogram(name: "x2nrealloc", scope: !262, file: !262, line: 174, type: !264, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !267)
!264 = !DISubroutineType(types: !265)
!265 = !{!102, !102, !266, !104}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!267 = !{!268, !269, !270, !271}
!268 = !DILocalVariable(name: "p", arg: 1, scope: !263, file: !262, line: 174, type: !102)
!269 = !DILocalVariable(name: "pn", arg: 2, scope: !263, file: !262, line: 174, type: !266)
!270 = !DILocalVariable(name: "s", arg: 3, scope: !263, file: !262, line: 174, type: !104)
!271 = !DILocalVariable(name: "n", scope: !263, file: !262, line: 176, type: !104)
!272 = !{!273}
!273 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!274 = !{!104, !58, !102}
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112)
!276 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !257)
!278 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !281)
!280 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!281 = !{!104}
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112)
!283 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112)
!285 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !257)
!287 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!288 = !{!289}
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 41, baseType: !6, size: 32, elements: !291)
!290 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!292 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!293 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!294 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!295 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!296 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!297 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!298 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!299 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!300 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!301 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!302 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!303 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!304 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!305 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!306 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!307 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!308 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!309 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!310 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!311 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!321 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!330 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!331 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!332 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!333 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!334 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!335 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!336 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!337 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!338 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!339 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!340 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!341 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!400 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!403 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!404 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!405 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!406 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!407 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!408 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!487 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!560 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!561 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!562 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!563 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!564 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!565 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!566 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!567 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!568 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!569 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!570 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!571 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!572 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!573 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!574 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!576 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!577 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!578 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!579 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!580 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!581 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!607 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!608 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!609 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!610 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!611 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!616 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!617 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!618 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!619 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112)
!676 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!677 = distinct !DICompileUnit(language: DW_LANG_C99, file: !678, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !257)
!678 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !257)
!680 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!681 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!682 = !{i32 2, !"Dwarf Version", i32 4}
!683 = !{i32 2, !"Debug Info Version", i32 3}
!684 = !{i32 1, !"wchar_size", i32 4}
!685 = !{i32 7, !"PIC Level", i32 2}
!686 = !{i32 7, !"PIE Level", i32 2}
!687 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 339, type: !688, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !49}
!690 = !{!691}
!691 = !DILocalVariable(name: "status", arg: 1, scope: !687, file: !3, line: 339, type: !49)
!692 = !DILocalVariable(name: "infomap", scope: !693, file: !694, line: 632, type: !708)
!693 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !694, file: !694, line: 630, type: !695, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!694 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!695 = !DISubroutineType(types: !696)
!696 = !{null, !100}
!697 = !{!698, !692, !699, !700, !707}
!698 = !DILocalVariable(name: "program", arg: 1, scope: !693, file: !694, line: 630, type: !100)
!699 = !DILocalVariable(name: "node", scope: !693, file: !694, line: 642, type: !100)
!700 = !DILocalVariable(name: "map_prog", scope: !693, file: !694, line: 643, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !693, file: !694, line: 632, size: 128, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !703, file: !694, line: 632, baseType: !100, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !694, line: 632, baseType: !100, size: 64, offset: 64)
!707 = !DILocalVariable(name: "lc_messages", scope: !693, file: !694, line: 655, type: !100)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 896, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 7)
!711 = !DILocation(line: 632, column: 67, scope: !693, inlinedAt: !712)
!712 = distinct !DILocation(line: 411, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 344, column: 5)
!714 = distinct !DILexicalBlock(scope: !687, file: !3, line: 341, column: 7)
!715 = !DILocation(line: 339, column: 12, scope: !687)
!716 = !DILocation(line: 341, column: 14, scope: !714)
!717 = !DILocation(line: 341, column: 7, scope: !687)
!718 = !DILocation(line: 342, column: 5, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 342, column: 5)
!720 = !{!721, !721, i64 0}
!721 = !{!"any pointer", !722, i64 0}
!722 = !{!"omnipotent char", !723, i64 0}
!723 = !{!"Simple C/C++ TBAA"}
!724 = !DILocation(line: 345, column: 7, scope: !713)
!725 = !DILocalVariable(name: "__c", arg: 1, scope: !726, file: !727, line: 108, type: !49)
!726 = distinct !DISubprogram(name: "putchar_unlocked", scope: !727, file: !727, line: 108, type: !728, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !730)
!727 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!728 = !DISubroutineType(types: !729)
!729 = !{!49, !49}
!730 = !{!725}
!731 = !DILocation(line: 108, column: 23, scope: !726, inlinedAt: !732)
!732 = distinct !DILocation(line: 350, column: 7, scope: !713)
!733 = !DILocation(line: 110, column: 10, scope: !726, inlinedAt: !732)
!734 = !{!735, !721, i64 40}
!735 = !{!"_IO_FILE", !736, i64 0, !721, i64 8, !721, i64 16, !721, i64 24, !721, i64 32, !721, i64 40, !721, i64 48, !721, i64 56, !721, i64 64, !721, i64 72, !721, i64 80, !721, i64 88, !721, i64 96, !721, i64 104, !736, i64 112, !736, i64 116, !737, i64 120, !738, i64 128, !722, i64 130, !722, i64 131, !721, i64 136, !737, i64 144, !721, i64 152, !721, i64 160, !721, i64 168, !721, i64 176, !737, i64 184, !736, i64 192, !722, i64 196}
!736 = !{!"int", !722, i64 0}
!737 = !{!"long", !722, i64 0}
!738 = !{!"short", !722, i64 0}
!739 = !{!735, !721, i64 48}
!740 = !{!"branch_weights", i32 2000, i32 1}
!741 = !{!722, !722, i64 0}
!742 = !DILocation(line: 351, column: 7, scope: !713)
!743 = !DILocation(line: 352, column: 7, scope: !713)
!744 = !DILocation(line: 353, column: 7, scope: !713)
!745 = !DILocation(line: 362, column: 7, scope: !713)
!746 = !DILocation(line: 371, column: 7, scope: !713)
!747 = !DILocation(line: 378, column: 7, scope: !713)
!748 = !DILocation(line: 384, column: 7, scope: !713)
!749 = !DILocation(line: 393, column: 7, scope: !713)
!750 = !DILocation(line: 399, column: 7, scope: !713)
!751 = !DILocation(line: 406, column: 7, scope: !713)
!752 = !DILocation(line: 632, column: 3, scope: !693, inlinedAt: !712)
!753 = !DILocation(line: 643, column: 36, scope: !693, inlinedAt: !712)
!754 = !DILocation(line: 643, column: 25, scope: !693, inlinedAt: !712)
!755 = !DILocation(line: 645, column: 33, scope: !693, inlinedAt: !712)
!756 = !DILocation(line: 645, column: 3, scope: !693, inlinedAt: !712)
!757 = !DILocation(line: 646, column: 13, scope: !693, inlinedAt: !712)
!758 = !DILocation(line: 645, column: 20, scope: !693, inlinedAt: !712)
!759 = !{!760, !721, i64 0}
!760 = !{!"infomap", !721, i64 0, !721, i64 8}
!761 = !DILocation(line: 645, column: 10, scope: !693, inlinedAt: !712)
!762 = !DILocation(line: 645, column: 28, scope: !693, inlinedAt: !712)
!763 = distinct !{!763, !764, !765}
!764 = !DILocation(line: 645, column: 3, scope: !693)
!765 = !DILocation(line: 646, column: 13, scope: !693)
!766 = !DILocation(line: 648, column: 17, scope: !767, inlinedAt: !712)
!767 = distinct !DILexicalBlock(scope: !693, file: !694, line: 648, column: 7)
!768 = !{!760, !721, i64 8}
!769 = !DILocation(line: 648, column: 7, scope: !767, inlinedAt: !712)
!770 = !DILocation(line: 648, column: 7, scope: !693, inlinedAt: !712)
!771 = !DILocation(line: 642, column: 15, scope: !693, inlinedAt: !712)
!772 = !DILocation(line: 651, column: 3, scope: !693, inlinedAt: !712)
!773 = !DILocation(line: 655, column: 29, scope: !693, inlinedAt: !712)
!774 = !DILocation(line: 655, column: 15, scope: !693, inlinedAt: !712)
!775 = !DILocation(line: 656, column: 7, scope: !776, inlinedAt: !712)
!776 = distinct !DILexicalBlock(scope: !693, file: !694, line: 656, column: 7)
!777 = !DILocation(line: 656, column: 19, scope: !776, inlinedAt: !712)
!778 = !DILocation(line: 656, column: 22, scope: !776, inlinedAt: !712)
!779 = !DILocation(line: 656, column: 7, scope: !693, inlinedAt: !712)
!780 = !DILocation(line: 662, column: 7, scope: !781, inlinedAt: !712)
!781 = distinct !DILexicalBlock(scope: !776, file: !694, line: 657, column: 5)
!782 = !DILocation(line: 664, column: 5, scope: !781, inlinedAt: !712)
!783 = !DILocation(line: 665, column: 3, scope: !693, inlinedAt: !712)
!784 = !DILocation(line: 667, column: 3, scope: !693, inlinedAt: !712)
!785 = !DILocation(line: 669, column: 1, scope: !693, inlinedAt: !712)
!786 = !DILocation(line: 413, column: 3, scope: !687)
!787 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 427, type: !788, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!49, !49, !107}
!790 = !{!791, !792, !793, !794}
!791 = !DILocalVariable(name: "argc", arg: 1, scope: !787, file: !3, line: 427, type: !49)
!792 = !DILocalVariable(name: "argv", arg: 2, scope: !787, file: !3, line: 427, type: !107)
!793 = !DILocalVariable(name: "v", scope: !787, file: !3, line: 429, type: !32)
!794 = !DILocalVariable(name: "u_argc", scope: !787, file: !3, line: 445, type: !6)
!795 = !DILocation(line: 427, column: 11, scope: !787)
!796 = !DILocation(line: 427, column: 24, scope: !787)
!797 = !DILocation(line: 432, column: 21, scope: !787)
!798 = !DILocation(line: 432, column: 3, scope: !787)
!799 = !DILocation(line: 433, column: 3, scope: !787)
!800 = !DILocation(line: 434, column: 3, scope: !787)
!801 = !DILocation(line: 435, column: 3, scope: !787)
!802 = !DILocalVariable(name: "status", arg: 1, scope: !803, file: !694, line: 99, type: !49)
!803 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !694, file: !694, line: 99, type: !688, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !804)
!804 = !{!802}
!805 = !DILocation(line: 99, column: 30, scope: !803, inlinedAt: !806)
!806 = distinct !DILocation(line: 437, column: 3, scope: !787)
!807 = !DILocation(line: 102, column: 18, scope: !808, inlinedAt: !806)
!808 = distinct !DILexicalBlock(scope: !803, file: !694, line: 101, column: 7)
!809 = !{!736, !736, i64 0}
!810 = !DILocation(line: 438, column: 3, scope: !787)
!811 = !DILocation(line: 440, column: 3, scope: !787)
!812 = !DILocation(line: 445, column: 16, scope: !787)
!813 = !DILocation(line: 446, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !787, file: !3, line: 446, column: 7)
!815 = !DILocation(line: 446, column: 18, scope: !814)
!816 = !DILocation(line: 446, column: 21, scope: !814)
!817 = !DILocation(line: 446, column: 7, scope: !787)
!818 = !DILocation(line: 448, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !3, line: 447, column: 5)
!820 = !DILocation(line: 452, column: 14, scope: !821)
!821 = distinct !DILexicalBlock(scope: !787, file: !3, line: 452, column: 7)
!822 = !DILocation(line: 452, column: 7, scope: !787)
!823 = !DILocation(line: 458, column: 15, scope: !787)
!824 = !DILocation(line: 454, column: 20, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !3, line: 453, column: 5)
!826 = !DILocation(line: 454, column: 7, scope: !825)
!827 = !DILocation(line: 455, column: 7, scope: !825)
!828 = !DILocation(line: 458, column: 8, scope: !787)
!829 = !DILocation(line: 460, column: 7, scope: !787)
!830 = !DILocation(line: 429, column: 10, scope: !787)
!831 = !DILocation(line: 655, column: 11, scope: !832, inlinedAt: !835)
!832 = distinct !DISubprogram(name: "nomoreargs", scope: !3, file: !3, line: 653, type: !833, isLocal: true, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !112)
!833 = !DISubroutineType(types: !834)
!834 = !{!60}
!835 = distinct !DILocation(line: 461, column: 8, scope: !836)
!836 = distinct !DILexicalBlock(scope: !787, file: !3, line: 461, column: 7)
!837 = !DILocation(line: 655, column: 10, scope: !832, inlinedAt: !835)
!838 = !DILocation(line: 655, column: 16, scope: !832, inlinedAt: !835)
!839 = !DILocation(line: 461, column: 7, scope: !787)
!840 = !DILocation(line: 462, column: 5, scope: !836)
!841 = !DILocalVariable(name: "v", arg: 1, scope: !842, file: !3, line: 507, type: !32)
!842 = distinct !DISubprogram(name: "printv", scope: !3, file: !3, line: 507, type: !843, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !32}
!845 = !{!841}
!846 = !DILocation(line: 507, column: 16, scope: !842, inlinedAt: !847)
!847 = distinct !DILocation(line: 465, column: 3, scope: !787)
!848 = !DILocation(line: 509, column: 14, scope: !842, inlinedAt: !847)
!849 = !{!850, !722, i64 0}
!850 = !{!"valinfo", !722, i64 0, !722, i64 8}
!851 = !DILocation(line: 509, column: 3, scope: !842, inlinedAt: !847)
!852 = !DILocation(line: 512, column: 20, scope: !853, inlinedAt: !847)
!853 = distinct !DILexicalBlock(scope: !842, file: !3, line: 510, column: 5)
!854 = !DILocation(line: 512, column: 32, scope: !853, inlinedAt: !847)
!855 = !DILocation(line: 512, column: 7, scope: !853, inlinedAt: !847)
!856 = !DILocation(line: 108, column: 23, scope: !726, inlinedAt: !857)
!857 = distinct !DILocation(line: 513, column: 7, scope: !853, inlinedAt: !847)
!858 = !DILocation(line: 110, column: 10, scope: !726, inlinedAt: !857)
!859 = !DILocation(line: 516, column: 16, scope: !853, inlinedAt: !847)
!860 = !DILocation(line: 516, column: 18, scope: !853, inlinedAt: !847)
!861 = !DILocation(line: 516, column: 7, scope: !853, inlinedAt: !847)
!862 = !DILocation(line: 517, column: 7, scope: !853, inlinedAt: !847)
!863 = !DILocation(line: 519, column: 7, scope: !853, inlinedAt: !847)
!864 = !DILocalVariable(name: "v", arg: 1, scope: !865, file: !3, line: 526, type: !32)
!865 = distinct !DISubprogram(name: "null", scope: !3, file: !3, line: 526, type: !866, isLocal: true, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{!60, !32}
!868 = !{!864, !869}
!869 = !DILocalVariable(name: "cp", scope: !870, file: !3, line: 534, type: !100)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 533, column: 7)
!871 = distinct !DILexicalBlock(scope: !865, file: !3, line: 529, column: 5)
!872 = !DILocation(line: 526, column: 14, scope: !865, inlinedAt: !873)
!873 = distinct !DILocation(line: 467, column: 10, scope: !787)
!874 = !DILocation(line: 528, column: 14, scope: !865, inlinedAt: !873)
!875 = !DILocation(line: 528, column: 3, scope: !865, inlinedAt: !873)
!876 = !DILocation(line: 531, column: 14, scope: !871, inlinedAt: !873)
!877 = !{!878, !736, i64 4}
!878 = !{!"", !736, i64 0, !736, i64 4, !721, i64 8}
!879 = !DILocation(line: 531, column: 7, scope: !871, inlinedAt: !873)
!880 = !DILocation(line: 534, column: 29, scope: !870, inlinedAt: !873)
!881 = !DILocation(line: 534, column: 31, scope: !870, inlinedAt: !873)
!882 = !DILocation(line: 534, column: 21, scope: !870, inlinedAt: !873)
!883 = !DILocation(line: 535, column: 13, scope: !884, inlinedAt: !873)
!884 = distinct !DILexicalBlock(scope: !870, file: !3, line: 535, column: 13)
!885 = !DILocation(line: 535, column: 17, scope: !884, inlinedAt: !873)
!886 = !DILocation(line: 535, column: 13, scope: !870, inlinedAt: !873)
!887 = !DILocation(line: 538, column: 20, scope: !870, inlinedAt: !873)
!888 = !DILocation(line: 538, column: 12, scope: !870, inlinedAt: !873)
!889 = !DILocation(line: 542, column: 17, scope: !890, inlinedAt: !873)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 542, column: 17)
!891 = distinct !DILexicalBlock(scope: !870, file: !3, line: 541, column: 11)
!892 = !DILocation(line: 540, column: 9, scope: !870, inlinedAt: !873)
!893 = !DILocation(line: 0, scope: !870, inlinedAt: !873)
!894 = !DILocation(line: 542, column: 21, scope: !890, inlinedAt: !873)
!895 = !DILocation(line: 542, column: 17, scope: !891, inlinedAt: !873)
!896 = !DILocation(line: 545, column: 17, scope: !870, inlinedAt: !873)
!897 = !DILocation(line: 545, column: 16, scope: !870, inlinedAt: !873)
!898 = !DILocation(line: 544, column: 11, scope: !891, inlinedAt: !873)
!899 = distinct !{!899, !900, !901}
!900 = !DILocation(line: 540, column: 9, scope: !870)
!901 = !DILocation(line: 545, column: 21, scope: !870)
!902 = !DILocation(line: 550, column: 7, scope: !871, inlinedAt: !873)
!903 = !DILocation(line: 467, column: 3, scope: !787)
!904 = distinct !DISubprogram(name: "eval", scope: !3, file: !3, line: 1087, type: !30, isLocal: true, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !905)
!905 = !{!906, !907, !908}
!906 = !DILocalVariable(name: "evaluate", arg: 1, scope: !904, file: !3, line: 1087, type: !60)
!907 = !DILocalVariable(name: "l", scope: !904, file: !3, line: 1089, type: !32)
!908 = !DILocalVariable(name: "r", scope: !904, file: !3, line: 1090, type: !32)
!909 = !DILocation(line: 1087, column: 12, scope: !904)
!910 = !DILocation(line: 1095, column: 7, scope: !904)
!911 = !DILocation(line: 1089, column: 10, scope: !904)
!912 = !DILocalVariable(name: "str", arg: 1, scope: !913, file: !3, line: 638, type: !100)
!913 = distinct !DISubprogram(name: "nextarg", scope: !3, file: !3, line: 638, type: !914, isLocal: true, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!60, !100}
!916 = !{!912, !917}
!917 = !DILocalVariable(name: "r", scope: !918, file: !3, line: 644, type: !60)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 643, column: 5)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 640, column: 7)
!920 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !921)
!921 = distinct !DILocation(line: 1098, column: 11, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1098, column: 11)
!923 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1097, column: 5)
!924 = !DILocation(line: 640, column: 8, scope: !919, inlinedAt: !921)
!925 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !921)
!926 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !921)
!927 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !921)
!928 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !921)
!929 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !921)
!930 = !DILocation(line: 1098, column: 11, scope: !923)
!931 = !DILocation(line: 528, column: 14, scope: !865, inlinedAt: !932)
!932 = distinct !DILocation(line: 1100, column: 34, scope: !933)
!933 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1099, column: 9)
!934 = !DILocation(line: 1100, column: 31, scope: !933)
!935 = !DILocation(line: 526, column: 14, scope: !865, inlinedAt: !932)
!936 = !DILocation(line: 528, column: 3, scope: !865, inlinedAt: !932)
!937 = !DILocation(line: 531, column: 14, scope: !871, inlinedAt: !932)
!938 = !DILocation(line: 531, column: 7, scope: !871, inlinedAt: !932)
!939 = !DILocation(line: 534, column: 29, scope: !870, inlinedAt: !932)
!940 = !DILocation(line: 534, column: 31, scope: !870, inlinedAt: !932)
!941 = !DILocation(line: 534, column: 21, scope: !870, inlinedAt: !932)
!942 = !DILocation(line: 535, column: 13, scope: !884, inlinedAt: !932)
!943 = !DILocation(line: 535, column: 17, scope: !884, inlinedAt: !932)
!944 = !DILocation(line: 535, column: 13, scope: !870, inlinedAt: !932)
!945 = !DILocation(line: 538, column: 20, scope: !870, inlinedAt: !932)
!946 = !DILocation(line: 538, column: 12, scope: !870, inlinedAt: !932)
!947 = !DILocation(line: 542, column: 17, scope: !890, inlinedAt: !932)
!948 = !DILocation(line: 540, column: 9, scope: !870, inlinedAt: !932)
!949 = !DILocation(line: 0, scope: !870, inlinedAt: !932)
!950 = !DILocation(line: 542, column: 21, scope: !890, inlinedAt: !932)
!951 = !DILocation(line: 542, column: 17, scope: !891, inlinedAt: !932)
!952 = !DILocation(line: 545, column: 17, scope: !870, inlinedAt: !932)
!953 = !DILocation(line: 545, column: 16, scope: !870, inlinedAt: !932)
!954 = !DILocation(line: 544, column: 11, scope: !891, inlinedAt: !932)
!955 = !DILocation(line: 550, column: 7, scope: !871, inlinedAt: !932)
!956 = !DILocation(line: 0, scope: !933)
!957 = !DILocation(line: 1100, column: 15, scope: !933)
!958 = !DILocation(line: 1090, column: 10, scope: !904)
!959 = !DILocation(line: 526, column: 14, scope: !865, inlinedAt: !960)
!960 = distinct !DILocation(line: 1101, column: 15, scope: !961)
!961 = distinct !DILexicalBlock(scope: !933, file: !3, line: 1101, column: 15)
!962 = !DILocation(line: 528, column: 14, scope: !865, inlinedAt: !960)
!963 = !DILocation(line: 528, column: 3, scope: !865, inlinedAt: !960)
!964 = !DILocation(line: 534, column: 29, scope: !870, inlinedAt: !960)
!965 = !DILocation(line: 534, column: 31, scope: !870, inlinedAt: !960)
!966 = !DILocation(line: 534, column: 21, scope: !870, inlinedAt: !960)
!967 = !DILocation(line: 535, column: 13, scope: !884, inlinedAt: !960)
!968 = !DILocation(line: 535, column: 17, scope: !884, inlinedAt: !960)
!969 = !DILocation(line: 535, column: 13, scope: !870, inlinedAt: !960)
!970 = !DILocation(line: 538, column: 20, scope: !870, inlinedAt: !960)
!971 = !DILocation(line: 538, column: 12, scope: !870, inlinedAt: !960)
!972 = !DILocation(line: 542, column: 17, scope: !890, inlinedAt: !960)
!973 = !DILocation(line: 540, column: 9, scope: !870, inlinedAt: !960)
!974 = !DILocation(line: 0, scope: !870, inlinedAt: !960)
!975 = !DILocation(line: 542, column: 21, scope: !890, inlinedAt: !960)
!976 = !DILocation(line: 542, column: 17, scope: !891, inlinedAt: !960)
!977 = !DILocation(line: 545, column: 17, scope: !870, inlinedAt: !960)
!978 = !DILocation(line: 545, column: 16, scope: !870, inlinedAt: !960)
!979 = !DILocation(line: 544, column: 11, scope: !891, inlinedAt: !960)
!980 = !DILocation(line: 550, column: 7, scope: !871, inlinedAt: !960)
!981 = !DILocation(line: 531, column: 14, scope: !871, inlinedAt: !960)
!982 = !DILocation(line: 1101, column: 15, scope: !933)
!983 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !988)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 497, column: 7)
!985 = distinct !DISubprogram(name: "freev", scope: !3, file: !3, line: 495, type: !843, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !986)
!986 = !{!987}
!987 = !DILocalVariable(name: "v", arg: 1, scope: !985, file: !3, line: 495, type: !32)
!988 = distinct !DILocation(line: 1103, column: 15, scope: !989)
!989 = distinct !DILexicalBlock(scope: !961, file: !3, line: 1102, column: 13)
!990 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !988)
!991 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !988)
!992 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !988)
!993 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !988)
!994 = !DILocation(line: 526, column: 14, scope: !865, inlinedAt: !995)
!995 = distinct !DILocation(line: 1105, column: 19, scope: !996)
!996 = distinct !DILexicalBlock(scope: !989, file: !3, line: 1105, column: 19)
!997 = !DILocation(line: 528, column: 14, scope: !865, inlinedAt: !995)
!998 = !DILocation(line: 528, column: 3, scope: !865, inlinedAt: !995)
!999 = !DILocation(line: 534, column: 29, scope: !870, inlinedAt: !995)
!1000 = !DILocation(line: 534, column: 31, scope: !870, inlinedAt: !995)
!1001 = !DILocation(line: 534, column: 21, scope: !870, inlinedAt: !995)
!1002 = !DILocation(line: 535, column: 13, scope: !884, inlinedAt: !995)
!1003 = !DILocation(line: 535, column: 17, scope: !884, inlinedAt: !995)
!1004 = !DILocation(line: 535, column: 13, scope: !870, inlinedAt: !995)
!1005 = !DILocation(line: 538, column: 20, scope: !870, inlinedAt: !995)
!1006 = !DILocation(line: 538, column: 12, scope: !870, inlinedAt: !995)
!1007 = !DILocation(line: 542, column: 17, scope: !890, inlinedAt: !995)
!1008 = !DILocation(line: 540, column: 9, scope: !870, inlinedAt: !995)
!1009 = !DILocation(line: 0, scope: !870, inlinedAt: !995)
!1010 = !DILocation(line: 542, column: 21, scope: !890, inlinedAt: !995)
!1011 = !DILocation(line: 542, column: 17, scope: !891, inlinedAt: !995)
!1012 = !DILocation(line: 545, column: 17, scope: !870, inlinedAt: !995)
!1013 = !DILocation(line: 545, column: 16, scope: !870, inlinedAt: !995)
!1014 = !DILocation(line: 544, column: 11, scope: !891, inlinedAt: !995)
!1015 = !DILocation(line: 550, column: 7, scope: !871, inlinedAt: !995)
!1016 = !DILocation(line: 531, column: 14, scope: !871, inlinedAt: !995)
!1017 = !DILocation(line: 1105, column: 19, scope: !989)
!1018 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 1107, column: 19, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !996, file: !3, line: 1106, column: 17)
!1021 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1019)
!1022 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1019)
!1023 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1019)
!1024 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1019)
!1025 = !DILocalVariable(name: "i", arg: 1, scope: !1026, file: !3, line: 473, type: !54)
!1026 = distinct !DISubprogram(name: "int_value", scope: !3, file: !3, line: 473, type: !1027, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!32, !54}
!1029 = !{!1025, !1030}
!1030 = !DILocalVariable(name: "v", scope: !1026, file: !3, line: 475, type: !32)
!1031 = !DILocation(line: 473, column: 30, scope: !1026, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 1108, column: 23, scope: !1020)
!1033 = !DILocation(line: 475, column: 14, scope: !1026, inlinedAt: !1032)
!1034 = !DILocation(line: 475, column: 10, scope: !1026, inlinedAt: !1032)
!1035 = !DILocation(line: 476, column: 6, scope: !1026, inlinedAt: !1032)
!1036 = !DILocation(line: 476, column: 11, scope: !1026, inlinedAt: !1032)
!1037 = !DILocation(line: 477, column: 23, scope: !1026, inlinedAt: !1032)
!1038 = !DILocation(line: 477, column: 20, scope: !1026, inlinedAt: !1032)
!1039 = !DILocation(line: 477, column: 3, scope: !1026, inlinedAt: !1032)
!1040 = !DILocation(line: 1109, column: 17, scope: !1020)
!1041 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 1112, column: 13, scope: !961)
!1043 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1042)
!1044 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1042)
!1045 = !DILocation(line: 0, scope: !984, inlinedAt: !1042)
!1046 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1042)
!1047 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1042)
!1048 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1042)
!1049 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1042)
!1050 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1042)
!1051 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1042)
!1052 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1042)
!1053 = !DILocation(line: 0, scope: !1020)
!1054 = !DILocation(line: 1115, column: 9, scope: !922)
!1055 = !DILocation(line: 0, scope: !904)
!1056 = distinct !{!1056, !1057, !1058}
!1057 = !DILocation(line: 1096, column: 3, scope: !904)
!1058 = !DILocation(line: 1116, column: 5, scope: !904)
!1059 = distinct !DISubprogram(name: "eval1", scope: !3, file: !3, line: 1056, type: !30, isLocal: true, isDefinition: true, scopeLine: 1057, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1059, file: !3, line: 1056, type: !60)
!1062 = !DILocalVariable(name: "l", scope: !1059, file: !3, line: 1058, type: !32)
!1063 = !DILocalVariable(name: "r", scope: !1059, file: !3, line: 1059, type: !32)
!1064 = !DILocation(line: 1056, column: 13, scope: !1059)
!1065 = !DILocation(line: 1064, column: 7, scope: !1059)
!1066 = !DILocation(line: 1058, column: 10, scope: !1059)
!1067 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 1067, column: 11, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1067, column: 11)
!1070 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 1066, column: 5)
!1071 = !DILocation(line: 640, column: 8, scope: !919, inlinedAt: !1068)
!1072 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1068)
!1073 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1068)
!1074 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1068)
!1075 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1068)
!1076 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1068)
!1077 = !DILocation(line: 1067, column: 11, scope: !1070)
!1078 = !DILocation(line: 528, column: 14, scope: !865, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 1069, column: 35, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 1068, column: 9)
!1081 = !DILocation(line: 1069, column: 31, scope: !1080)
!1082 = !DILocation(line: 526, column: 14, scope: !865, inlinedAt: !1079)
!1083 = !DILocation(line: 528, column: 3, scope: !865, inlinedAt: !1079)
!1084 = !DILocation(line: 531, column: 14, scope: !871, inlinedAt: !1079)
!1085 = !DILocation(line: 531, column: 7, scope: !871, inlinedAt: !1079)
!1086 = !DILocation(line: 534, column: 29, scope: !870, inlinedAt: !1079)
!1087 = !DILocation(line: 534, column: 31, scope: !870, inlinedAt: !1079)
!1088 = !DILocation(line: 534, column: 21, scope: !870, inlinedAt: !1079)
!1089 = !DILocation(line: 535, column: 13, scope: !884, inlinedAt: !1079)
!1090 = !DILocation(line: 535, column: 17, scope: !884, inlinedAt: !1079)
!1091 = !DILocation(line: 535, column: 13, scope: !870, inlinedAt: !1079)
!1092 = !DILocation(line: 538, column: 20, scope: !870, inlinedAt: !1079)
!1093 = !DILocation(line: 538, column: 12, scope: !870, inlinedAt: !1079)
!1094 = !DILocation(line: 542, column: 17, scope: !890, inlinedAt: !1079)
!1095 = !DILocation(line: 540, column: 9, scope: !870, inlinedAt: !1079)
!1096 = !DILocation(line: 0, scope: !870, inlinedAt: !1079)
!1097 = !DILocation(line: 542, column: 21, scope: !890, inlinedAt: !1079)
!1098 = !DILocation(line: 542, column: 17, scope: !891, inlinedAt: !1079)
!1099 = !DILocation(line: 545, column: 17, scope: !870, inlinedAt: !1079)
!1100 = !DILocation(line: 545, column: 16, scope: !870, inlinedAt: !1079)
!1101 = !DILocation(line: 544, column: 11, scope: !891, inlinedAt: !1079)
!1102 = !DILocation(line: 550, column: 7, scope: !871, inlinedAt: !1079)
!1103 = !DILocation(line: 0, scope: !871, inlinedAt: !1079)
!1104 = !DILocation(line: 1069, column: 34, scope: !1080)
!1105 = !DILocation(line: 0, scope: !1080)
!1106 = !DILocation(line: 1069, column: 15, scope: !1080)
!1107 = !DILocation(line: 1059, column: 10, scope: !1059)
!1108 = !DILocation(line: 526, column: 14, scope: !865, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 1070, column: 15, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 1070, column: 15)
!1111 = !DILocation(line: 528, column: 14, scope: !865, inlinedAt: !1109)
!1112 = !DILocation(line: 528, column: 3, scope: !865, inlinedAt: !1109)
!1113 = !DILocation(line: 534, column: 29, scope: !870, inlinedAt: !1109)
!1114 = !DILocation(line: 534, column: 31, scope: !870, inlinedAt: !1109)
!1115 = !DILocation(line: 534, column: 21, scope: !870, inlinedAt: !1109)
!1116 = !DILocation(line: 535, column: 13, scope: !884, inlinedAt: !1109)
!1117 = !DILocation(line: 535, column: 17, scope: !884, inlinedAt: !1109)
!1118 = !DILocation(line: 535, column: 13, scope: !870, inlinedAt: !1109)
!1119 = !DILocation(line: 538, column: 20, scope: !870, inlinedAt: !1109)
!1120 = !DILocation(line: 538, column: 12, scope: !870, inlinedAt: !1109)
!1121 = !DILocation(line: 542, column: 17, scope: !890, inlinedAt: !1109)
!1122 = !DILocation(line: 540, column: 9, scope: !870, inlinedAt: !1109)
!1123 = !DILocation(line: 0, scope: !870, inlinedAt: !1109)
!1124 = !DILocation(line: 542, column: 21, scope: !890, inlinedAt: !1109)
!1125 = !DILocation(line: 542, column: 17, scope: !891, inlinedAt: !1109)
!1126 = !DILocation(line: 545, column: 17, scope: !870, inlinedAt: !1109)
!1127 = !DILocation(line: 545, column: 16, scope: !870, inlinedAt: !1109)
!1128 = !DILocation(line: 544, column: 11, scope: !891, inlinedAt: !1109)
!1129 = !DILocation(line: 550, column: 7, scope: !871, inlinedAt: !1109)
!1130 = !DILocation(line: 531, column: 14, scope: !871, inlinedAt: !1109)
!1131 = !DILocation(line: 1070, column: 24, scope: !1110)
!1132 = !DILocation(line: 526, column: 14, scope: !865, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 1070, column: 27, scope: !1110)
!1134 = !DILocation(line: 528, column: 14, scope: !865, inlinedAt: !1133)
!1135 = !DILocation(line: 528, column: 3, scope: !865, inlinedAt: !1133)
!1136 = !DILocation(line: 534, column: 29, scope: !870, inlinedAt: !1133)
!1137 = !DILocation(line: 534, column: 31, scope: !870, inlinedAt: !1133)
!1138 = !DILocation(line: 534, column: 21, scope: !870, inlinedAt: !1133)
!1139 = !DILocation(line: 535, column: 13, scope: !884, inlinedAt: !1133)
!1140 = !DILocation(line: 535, column: 17, scope: !884, inlinedAt: !1133)
!1141 = !DILocation(line: 535, column: 13, scope: !870, inlinedAt: !1133)
!1142 = !DILocation(line: 538, column: 20, scope: !870, inlinedAt: !1133)
!1143 = !DILocation(line: 538, column: 12, scope: !870, inlinedAt: !1133)
!1144 = !DILocation(line: 542, column: 17, scope: !890, inlinedAt: !1133)
!1145 = !DILocation(line: 540, column: 9, scope: !870, inlinedAt: !1133)
!1146 = !DILocation(line: 0, scope: !870, inlinedAt: !1133)
!1147 = !DILocation(line: 542, column: 21, scope: !890, inlinedAt: !1133)
!1148 = !DILocation(line: 542, column: 17, scope: !891, inlinedAt: !1133)
!1149 = !DILocation(line: 545, column: 17, scope: !870, inlinedAt: !1133)
!1150 = !DILocation(line: 545, column: 16, scope: !870, inlinedAt: !1133)
!1151 = !DILocation(line: 544, column: 11, scope: !891, inlinedAt: !1133)
!1152 = !DILocation(line: 550, column: 7, scope: !871, inlinedAt: !1133)
!1153 = !DILocation(line: 531, column: 14, scope: !871, inlinedAt: !1133)
!1154 = !DILocation(line: 1070, column: 15, scope: !1080)
!1155 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 1072, column: 15, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 1071, column: 13)
!1158 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1156)
!1159 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1156)
!1160 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1156)
!1161 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1156)
!1162 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1156)
!1163 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1156)
!1164 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1156)
!1165 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1156)
!1166 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 1073, column: 15, scope: !1157)
!1168 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1167)
!1169 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1167)
!1170 = !DILocation(line: 0, scope: !984, inlinedAt: !1167)
!1171 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1167)
!1172 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1167)
!1173 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1167)
!1174 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1167)
!1175 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1167)
!1176 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1167)
!1177 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1167)
!1178 = !DILocation(line: 473, column: 30, scope: !1026, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 1074, column: 19, scope: !1157)
!1180 = !DILocation(line: 475, column: 14, scope: !1026, inlinedAt: !1179)
!1181 = !DILocation(line: 475, column: 10, scope: !1026, inlinedAt: !1179)
!1182 = !DILocation(line: 476, column: 6, scope: !1026, inlinedAt: !1179)
!1183 = !DILocation(line: 476, column: 11, scope: !1026, inlinedAt: !1179)
!1184 = !DILocation(line: 477, column: 23, scope: !1026, inlinedAt: !1179)
!1185 = !DILocation(line: 477, column: 20, scope: !1026, inlinedAt: !1179)
!1186 = !DILocation(line: 477, column: 3, scope: !1026, inlinedAt: !1179)
!1187 = !DILocation(line: 1075, column: 13, scope: !1157)
!1188 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 1077, column: 13, scope: !1110)
!1190 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1189)
!1191 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1189)
!1192 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1189)
!1193 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1189)
!1194 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1189)
!1195 = !DILocation(line: 0, scope: !1157)
!1196 = !DILocation(line: 1080, column: 9, scope: !1069)
!1197 = !DILocation(line: 0, scope: !1059)
!1198 = distinct !{!1198, !1199, !1200}
!1199 = !DILocation(line: 1065, column: 3, scope: !1059)
!1200 = !DILocation(line: 1081, column: 5, scope: !1059)
!1201 = !DILocation(line: 978, column: 13, scope: !29)
!1202 = !DILocation(line: 985, column: 7, scope: !29)
!1203 = !DILocation(line: 980, column: 10, scope: !29)
!1204 = !DILocation(line: 993, column: 12, scope: !65)
!1205 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 995, column: 11, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !65, file: !3, line: 995, column: 11)
!1208 = !DILocation(line: 640, column: 8, scope: !919, inlinedAt: !1206)
!1209 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1206)
!1210 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1206)
!1211 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1206)
!1212 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1206)
!1213 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1206)
!1214 = !DILocation(line: 995, column: 11, scope: !65)
!1215 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 997, column: 16, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 997, column: 16)
!1218 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1216)
!1219 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1216)
!1220 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1216)
!1221 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1216)
!1222 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1216)
!1223 = !DILocation(line: 997, column: 16, scope: !1207)
!1224 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 999, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 999, column: 16)
!1227 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1225)
!1228 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1225)
!1229 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1225)
!1230 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1225)
!1231 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1225)
!1232 = !DILocation(line: 999, column: 30, scope: !1226)
!1233 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 999, column: 33, scope: !1226)
!1235 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1234)
!1236 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1234)
!1237 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1234)
!1238 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1234)
!1239 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1234)
!1240 = !DILocation(line: 999, column: 16, scope: !1217)
!1241 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 1001, column: 16, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1001, column: 16)
!1244 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1242)
!1245 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1242)
!1246 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1242)
!1247 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1242)
!1248 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1242)
!1249 = !DILocation(line: 1001, column: 16, scope: !1226)
!1250 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 1003, column: 16, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 1003, column: 16)
!1253 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1251)
!1254 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1251)
!1255 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1251)
!1256 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1251)
!1257 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1251)
!1258 = !DILocation(line: 1003, column: 16, scope: !1243)
!1259 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 1005, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1005, column: 16)
!1262 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1260)
!1263 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1260)
!1264 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1260)
!1265 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1260)
!1266 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1260)
!1267 = !DILocation(line: 1005, column: 16, scope: !1252)
!1268 = !DILocation(line: 1009, column: 11, scope: !65)
!1269 = !DILocation(line: 988, column: 14, scope: !65)
!1270 = !DILocation(line: 0, scope: !65)
!1271 = !DILocation(line: 1011, column: 11, scope: !65)
!1272 = !DILocation(line: 0, scope: !984, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 1047, column: 7, scope: !65)
!1274 = !DILocalVariable(name: "v", arg: 1, scope: !1275, file: !3, line: 572, type: !32)
!1275 = distinct !DISubprogram(name: "tostring", scope: !3, file: !3, line: 572, type: !843, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1276)
!1276 = !{!1274, !1277}
!1277 = !DILocalVariable(name: "s", scope: !1278, file: !3, line: 578, type: !58)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 577, column: 7)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 575, column: 5)
!1280 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 1014, column: 11, scope: !69)
!1282 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !1281)
!1283 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !1281)
!1284 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !1281)
!1285 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !1281)
!1286 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !1281)
!1287 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !1281)
!1288 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !1281)
!1289 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !1281)
!1290 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !1281)
!1291 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !1281)
!1292 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !1281)
!1293 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !1281)
!1294 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 1015, column: 11, scope: !69)
!1296 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !1295)
!1297 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !1295)
!1298 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !1295)
!1299 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !1295)
!1300 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !1295)
!1301 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !1295)
!1302 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !1295)
!1303 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !1295)
!1304 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !1295)
!1305 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !1295)
!1306 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !1295)
!1307 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !1295)
!1308 = !DILocation(line: 1017, column: 38, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !69, file: !3, line: 1017, column: 15)
!1310 = !DILocation(line: 1017, column: 40, scope: !1309)
!1311 = !DILocalVariable(name: "cp", arg: 1, scope: !1312, file: !3, line: 557, type: !100)
!1312 = distinct !DISubprogram(name: "looks_like_integer", scope: !3, file: !3, line: 557, type: !914, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1313)
!1313 = !{!1311}
!1314 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 1017, column: 15, scope: !1309)
!1316 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !1315)
!1317 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !1315)
!1318 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !1315)
!1319 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !1315)
!1320 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 562, column: 9)
!1321 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !1315)
!1322 = !DILocation(line: 0, scope: !1312, inlinedAt: !1315)
!1323 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !1315)
!1324 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !1315)
!1325 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !1315)
!1326 = distinct !{!1326, !1327, !1328}
!1327 = !DILocation(line: 561, column: 3, scope: !1312)
!1328 = !DILocation(line: 564, column: 15, scope: !1312)
!1329 = !DILocation(line: 1017, column: 69, scope: !1309)
!1330 = !DILocation(line: 1017, column: 71, scope: !1309)
!1331 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 1017, column: 46, scope: !1309)
!1333 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !1332)
!1334 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !1332)
!1335 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !1332)
!1336 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !1332)
!1337 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !1332)
!1338 = !DILocation(line: 0, scope: !1312, inlinedAt: !1332)
!1339 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !1332)
!1340 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !1332)
!1341 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !1332)
!1342 = !DILocation(line: 1018, column: 19, scope: !1309)
!1343 = !DILocation(line: 1013, column: 15, scope: !69)
!1344 = !DILocation(line: 1018, column: 13, scope: !1309)
!1345 = !DILocation(line: 1022, column: 41, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1020, column: 13)
!1347 = !DILocation(line: 1022, column: 43, scope: !1346)
!1348 = !DILocation(line: 1021, column: 15, scope: !1346)
!1349 = !DILocation(line: 1021, column: 21, scope: !1346)
!1350 = !DILocation(line: 1022, column: 35, scope: !1346)
!1351 = !DILocation(line: 1022, column: 21, scope: !1346)
!1352 = !DILocation(line: 1024, column: 19, scope: !1346)
!1353 = !DILocation(line: 0, scope: !1346)
!1354 = !DILocation(line: 1035, column: 11, scope: !69)
!1355 = !DILocation(line: 1037, column: 44, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !69, file: !3, line: 1036, column: 13)
!1357 = !DILocation(line: 1037, column: 51, scope: !1356)
!1358 = !DILocation(line: 1038, column: 44, scope: !1356)
!1359 = !DILocation(line: 1038, column: 51, scope: !1356)
!1360 = !DILocation(line: 1039, column: 44, scope: !1356)
!1361 = !DILocation(line: 1039, column: 51, scope: !1356)
!1362 = !DILocation(line: 1040, column: 44, scope: !1356)
!1363 = !DILocation(line: 1040, column: 51, scope: !1356)
!1364 = !DILocation(line: 1041, column: 44, scope: !1356)
!1365 = !DILocation(line: 1041, column: 51, scope: !1356)
!1366 = !DILocation(line: 1042, column: 44, scope: !1356)
!1367 = !DILocation(line: 1042, column: 51, scope: !1356)
!1368 = !DILocation(line: 1043, column: 22, scope: !1356)
!1369 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1273)
!1370 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1273)
!1371 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1273)
!1372 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1273)
!1373 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1273)
!1374 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1273)
!1375 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1273)
!1376 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1273)
!1377 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1273)
!1378 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1273)
!1379 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 1048, column: 7, scope: !65)
!1381 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1380)
!1382 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1380)
!1383 = !DILocation(line: 0, scope: !984, inlinedAt: !1380)
!1384 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1380)
!1385 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1380)
!1386 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1380)
!1387 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1380)
!1388 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1380)
!1389 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1380)
!1390 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1380)
!1391 = !DILocation(line: 1049, column: 22, scope: !65)
!1392 = !DILocation(line: 473, column: 30, scope: !1026, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 1049, column: 11, scope: !65)
!1394 = !DILocation(line: 475, column: 14, scope: !1026, inlinedAt: !1393)
!1395 = !DILocation(line: 475, column: 10, scope: !1026, inlinedAt: !1393)
!1396 = !DILocation(line: 476, column: 6, scope: !1026, inlinedAt: !1393)
!1397 = !DILocation(line: 476, column: 11, scope: !1026, inlinedAt: !1393)
!1398 = !DILocation(line: 477, column: 23, scope: !1026, inlinedAt: !1393)
!1399 = !DILocation(line: 477, column: 20, scope: !1026, inlinedAt: !1393)
!1400 = !DILocation(line: 477, column: 3, scope: !1026, inlinedAt: !1393)
!1401 = !DILocation(line: 1051, column: 1, scope: !29)
!1402 = !DILocation(line: 946, column: 13, scope: !79)
!1403 = !DILocation(line: 955, column: 7, scope: !79)
!1404 = !DILocation(line: 948, column: 10, scope: !79)
!1405 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 958, column: 11, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 958, column: 11)
!1408 = distinct !DILexicalBlock(scope: !79, file: !3, line: 957, column: 5)
!1409 = !DILocation(line: 640, column: 8, scope: !919, inlinedAt: !1406)
!1410 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1406)
!1411 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1406)
!1412 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1406)
!1413 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1406)
!1414 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1406)
!1415 = !DILocation(line: 958, column: 11, scope: !1408)
!1416 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 960, column: 16, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 960, column: 16)
!1419 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1417)
!1420 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1417)
!1421 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1417)
!1422 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1417)
!1423 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1417)
!1424 = !DILocation(line: 960, column: 16, scope: !1407)
!1425 = !DILocation(line: 963, column: 9, scope: !1418)
!1426 = !DILocation(line: 0, scope: !1418)
!1427 = !DILocation(line: 950, column: 24, scope: !79)
!1428 = !DILocation(line: 964, column: 11, scope: !1408)
!1429 = !DILocation(line: 949, column: 10, scope: !79)
!1430 = !DILocation(line: 965, column: 11, scope: !1408)
!1431 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 971, column: 7, scope: !1408)
!1433 = !DILocalVariable(name: "v", arg: 1, scope: !1434, file: !3, line: 594, type: !32)
!1434 = distinct !DISubprogram(name: "toarith", scope: !3, file: !3, line: 594, type: !866, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1435)
!1435 = !{!1433, !1436}
!1436 = !DILocalVariable(name: "s", scope: !1437, file: !3, line: 602, type: !58)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 601, column: 7)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 597, column: 5)
!1439 = !DILocation(line: 594, column: 17, scope: !1434, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 967, column: 16, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 967, column: 15)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 966, column: 9)
!1443 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 965, column: 11)
!1444 = !DILocation(line: 596, column: 14, scope: !1434, inlinedAt: !1440)
!1445 = !DILocation(line: 596, column: 3, scope: !1434, inlinedAt: !1440)
!1446 = !DILocation(line: 602, column: 24, scope: !1437, inlinedAt: !1440)
!1447 = !DILocation(line: 602, column: 15, scope: !1437, inlinedAt: !1440)
!1448 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 604, column: 15, scope: !1450, inlinedAt: !1440)
!1450 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 604, column: 13)
!1451 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !1449)
!1452 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !1449)
!1453 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !1449)
!1454 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !1449)
!1455 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !1449)
!1456 = !DILocation(line: 0, scope: !1312, inlinedAt: !1449)
!1457 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !1449)
!1458 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !1449)
!1459 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !1449)
!1460 = !DILocation(line: 606, column: 13, scope: !1461, inlinedAt: !1440)
!1461 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 606, column: 13)
!1462 = !DILocation(line: 608, column: 9, scope: !1437, inlinedAt: !1440)
!1463 = !DILocation(line: 609, column: 17, scope: !1437, inlinedAt: !1440)
!1464 = !DILocation(line: 610, column: 9, scope: !1437, inlinedAt: !1440)
!1465 = !DILocation(line: 613, column: 7, scope: !1438, inlinedAt: !1440)
!1466 = !DILocation(line: 594, column: 17, scope: !1434, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 967, column: 32, scope: !1441)
!1468 = !DILocation(line: 596, column: 14, scope: !1434, inlinedAt: !1467)
!1469 = !DILocation(line: 596, column: 3, scope: !1434, inlinedAt: !1467)
!1470 = !DILocation(line: 602, column: 22, scope: !1437, inlinedAt: !1467)
!1471 = !DILocation(line: 602, column: 24, scope: !1437, inlinedAt: !1467)
!1472 = !DILocation(line: 602, column: 15, scope: !1437, inlinedAt: !1467)
!1473 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 604, column: 15, scope: !1450, inlinedAt: !1467)
!1475 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !1474)
!1476 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !1474)
!1477 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !1474)
!1478 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !1474)
!1479 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !1474)
!1480 = !DILocation(line: 0, scope: !1312, inlinedAt: !1474)
!1481 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !1474)
!1482 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !1474)
!1483 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !1474)
!1484 = !DILocation(line: 606, column: 31, scope: !1461, inlinedAt: !1467)
!1485 = !DILocation(line: 606, column: 13, scope: !1461, inlinedAt: !1467)
!1486 = !DILocation(line: 608, column: 9, scope: !1437, inlinedAt: !1467)
!1487 = !DILocation(line: 609, column: 17, scope: !1437, inlinedAt: !1467)
!1488 = !DILocation(line: 610, column: 9, scope: !1437, inlinedAt: !1467)
!1489 = !DILocation(line: 613, column: 7, scope: !1438, inlinedAt: !1467)
!1490 = !DILocation(line: 968, column: 13, scope: !1441)
!1491 = !DILocation(line: 969, column: 16, scope: !1442)
!1492 = !DILocation(line: 969, column: 12, scope: !1442)
!1493 = !DILocation(line: 969, column: 62, scope: !1442)
!1494 = !DILocation(line: 969, column: 11, scope: !1442)
!1495 = !{void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_add, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_sub}
!1496 = !DILocation(line: 970, column: 9, scope: !1442)
!1497 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1432)
!1498 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1432)
!1499 = !DILocation(line: 0, scope: !984, inlinedAt: !1432)
!1500 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1432)
!1501 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1432)
!1502 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1432)
!1503 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1432)
!1504 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1432)
!1505 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1432)
!1506 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1432)
!1507 = distinct !{!1507, !1508, !1509}
!1508 = !DILocation(line: 956, column: 3, scope: !79)
!1509 = !DILocation(line: 972, column: 5, scope: !79)
!1510 = !DILocation(line: 907, column: 13, scope: !89)
!1511 = !DILocation(line: 916, column: 7, scope: !89)
!1512 = !DILocation(line: 909, column: 10, scope: !89)
!1513 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 919, column: 11, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 919, column: 11)
!1516 = distinct !DILexicalBlock(scope: !89, file: !3, line: 918, column: 5)
!1517 = !DILocation(line: 640, column: 8, scope: !919, inlinedAt: !1514)
!1518 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1514)
!1519 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1514)
!1520 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1514)
!1521 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1514)
!1522 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1514)
!1523 = !DILocation(line: 919, column: 11, scope: !1516)
!1524 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 921, column: 16, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 921, column: 16)
!1527 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1525)
!1528 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1525)
!1529 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1525)
!1530 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1525)
!1531 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1525)
!1532 = !DILocation(line: 921, column: 16, scope: !1515)
!1533 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 923, column: 16, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 923, column: 16)
!1536 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1534)
!1537 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1534)
!1538 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1534)
!1539 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1534)
!1540 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1534)
!1541 = !DILocation(line: 923, column: 16, scope: !1526)
!1542 = !DILocation(line: 926, column: 9, scope: !1535)
!1543 = !DILocation(line: 0, scope: !1535)
!1544 = !DILocation(line: 911, column: 34, scope: !89)
!1545 = !DILocation(line: 927, column: 11, scope: !1516)
!1546 = !DILocation(line: 910, column: 10, scope: !89)
!1547 = !DILocation(line: 928, column: 11, scope: !1516)
!1548 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 939, column: 7, scope: !1516)
!1550 = !DILocation(line: 594, column: 17, scope: !1434, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 930, column: 16, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 930, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 929, column: 9)
!1554 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 928, column: 11)
!1555 = !DILocation(line: 596, column: 14, scope: !1434, inlinedAt: !1551)
!1556 = !DILocation(line: 596, column: 3, scope: !1434, inlinedAt: !1551)
!1557 = !DILocation(line: 602, column: 24, scope: !1437, inlinedAt: !1551)
!1558 = !DILocation(line: 602, column: 15, scope: !1437, inlinedAt: !1551)
!1559 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 604, column: 15, scope: !1450, inlinedAt: !1551)
!1561 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !1560)
!1562 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !1560)
!1563 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !1560)
!1564 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !1560)
!1565 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !1560)
!1566 = !DILocation(line: 0, scope: !1312, inlinedAt: !1560)
!1567 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !1560)
!1568 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !1560)
!1569 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !1560)
!1570 = !DILocation(line: 606, column: 13, scope: !1461, inlinedAt: !1551)
!1571 = !DILocation(line: 608, column: 9, scope: !1437, inlinedAt: !1551)
!1572 = !DILocation(line: 609, column: 17, scope: !1437, inlinedAt: !1551)
!1573 = !DILocation(line: 610, column: 9, scope: !1437, inlinedAt: !1551)
!1574 = !DILocation(line: 613, column: 7, scope: !1438, inlinedAt: !1551)
!1575 = !DILocation(line: 594, column: 17, scope: !1434, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 930, column: 32, scope: !1552)
!1577 = !DILocation(line: 596, column: 14, scope: !1434, inlinedAt: !1576)
!1578 = !DILocation(line: 596, column: 3, scope: !1434, inlinedAt: !1576)
!1579 = !DILocation(line: 602, column: 22, scope: !1437, inlinedAt: !1576)
!1580 = !DILocation(line: 602, column: 24, scope: !1437, inlinedAt: !1576)
!1581 = !DILocation(line: 602, column: 15, scope: !1437, inlinedAt: !1576)
!1582 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 604, column: 15, scope: !1450, inlinedAt: !1576)
!1584 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !1583)
!1585 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !1583)
!1586 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !1583)
!1587 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !1583)
!1588 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !1583)
!1589 = !DILocation(line: 0, scope: !1312, inlinedAt: !1583)
!1590 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !1583)
!1591 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !1583)
!1592 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !1583)
!1593 = !DILocation(line: 606, column: 31, scope: !1461, inlinedAt: !1576)
!1594 = !DILocation(line: 606, column: 13, scope: !1461, inlinedAt: !1576)
!1595 = !DILocation(line: 608, column: 9, scope: !1437, inlinedAt: !1576)
!1596 = !DILocation(line: 609, column: 17, scope: !1437, inlinedAt: !1576)
!1597 = !DILocation(line: 610, column: 9, scope: !1437, inlinedAt: !1576)
!1598 = !DILocation(line: 613, column: 7, scope: !1438, inlinedAt: !1576)
!1599 = !DILocation(line: 931, column: 13, scope: !1552)
!1600 = !DILocation(line: 932, column: 31, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 932, column: 15)
!1602 = !DILocation(line: 932, column: 34, scope: !1601)
!1603 = !DILocation(line: 932, column: 15, scope: !1553)
!1604 = !DILocation(line: 933, column: 13, scope: !1601)
!1605 = !DILocation(line: 935, column: 19, scope: !1553)
!1606 = !DILocation(line: 935, column: 15, scope: !1553)
!1607 = !DILocation(line: 934, column: 13, scope: !1553)
!1608 = !DILocation(line: 937, column: 29, scope: !1553)
!1609 = !DILocation(line: 934, column: 12, scope: !1553)
!1610 = !{void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_mul, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_q, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_r}
!1611 = !DILocation(line: 938, column: 9, scope: !1553)
!1612 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1549)
!1613 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1549)
!1614 = !DILocation(line: 0, scope: !984, inlinedAt: !1549)
!1615 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1549)
!1616 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1549)
!1617 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1549)
!1618 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1549)
!1619 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1549)
!1620 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1549)
!1621 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1549)
!1622 = distinct !{!1622, !1623, !1624}
!1623 = !DILocation(line: 917, column: 3, scope: !89)
!1624 = !DILocation(line: 940, column: 5, scope: !89)
!1625 = distinct !DISubprogram(name: "eval5", scope: !3, file: !3, line: 876, type: !30, isLocal: true, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1629, !1630}
!1627 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1625, file: !3, line: 876, type: !60)
!1628 = !DILocalVariable(name: "l", scope: !1625, file: !3, line: 878, type: !32)
!1629 = !DILocalVariable(name: "r", scope: !1625, file: !3, line: 879, type: !32)
!1630 = !DILocalVariable(name: "v", scope: !1625, file: !3, line: 880, type: !32)
!1631 = !DILocation(line: 876, column: 13, scope: !1625)
!1632 = !DILocation(line: 885, column: 7, scope: !1625)
!1633 = !DILocation(line: 878, column: 10, scope: !1625)
!1634 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 888, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 888, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 887, column: 5)
!1638 = !DILocation(line: 640, column: 8, scope: !919, inlinedAt: !1635)
!1639 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1635)
!1640 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1635)
!1641 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1635)
!1642 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1635)
!1643 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1635)
!1644 = !DILocation(line: 888, column: 11, scope: !1637)
!1645 = !DILocation(line: 890, column: 15, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 889, column: 9)
!1647 = !DILocation(line: 879, column: 10, scope: !1625)
!1648 = !DILocation(line: 891, column: 15, scope: !1646)
!1649 = !DILocation(line: 893, column: 19, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 892, column: 13)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 891, column: 15)
!1652 = !DILocation(line: 880, column: 10, scope: !1625)
!1653 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 894, column: 15, scope: !1650)
!1655 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1654)
!1656 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1654)
!1657 = !DILocation(line: 0, scope: !984, inlinedAt: !1654)
!1658 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1654)
!1659 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1654)
!1660 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1654)
!1661 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1654)
!1662 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1654)
!1663 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1654)
!1664 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1654)
!1665 = !DILocation(line: 896, column: 13, scope: !1650)
!1666 = !DILocation(line: 0, scope: !1625)
!1667 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 897, column: 11, scope: !1646)
!1669 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1668)
!1670 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1668)
!1671 = !DILocation(line: 0, scope: !984, inlinedAt: !1668)
!1672 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1668)
!1673 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1668)
!1674 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1668)
!1675 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1668)
!1676 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1668)
!1677 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1668)
!1678 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1668)
!1679 = distinct !{!1679, !1680, !1681}
!1680 = !DILocation(line: 886, column: 3, scope: !1625)
!1681 = !DILocation(line: 901, column: 5, scope: !1625)
!1682 = !DILocation(line: 0, scope: !1650)
!1683 = !DILocation(line: 900, column: 9, scope: !1636)
!1684 = distinct !DISubprogram(name: "eval6", scope: !3, file: !3, line: 793, type: !30, isLocal: true, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1698, !1703, !1704}
!1686 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1684, file: !3, line: 793, type: !60)
!1687 = !DILocalVariable(name: "l", scope: !1684, file: !3, line: 795, type: !32)
!1688 = !DILocalVariable(name: "r", scope: !1684, file: !3, line: 796, type: !32)
!1689 = !DILocalVariable(name: "v", scope: !1684, file: !3, line: 797, type: !32)
!1690 = !DILocalVariable(name: "i1", scope: !1684, file: !3, line: 798, type: !32)
!1691 = !DILocalVariable(name: "i2", scope: !1684, file: !3, line: 799, type: !32)
!1692 = !DILocalVariable(name: "pos", scope: !1693, file: !3, line: 833, type: !104)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 832, column: 5)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 831, column: 12)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 817, column: 12)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 809, column: 12)
!1697 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 804, column: 7)
!1698 = !DILocalVariable(name: "pos", scope: !1699, file: !3, line: 856, type: !104)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 855, column: 9)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 852, column: 11)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 846, column: 5)
!1702 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 845, column: 12)
!1703 = !DILocalVariable(name: "len", scope: !1699, file: !3, line: 857, type: !104)
!1704 = !DILocalVariable(name: "s", scope: !1699, file: !3, line: 859, type: !58)
!1705 = !DILocation(line: 793, column: 13, scope: !1684)
!1706 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 804, column: 7, scope: !1697)
!1708 = !DILocation(line: 640, column: 8, scope: !919, inlinedAt: !1707)
!1709 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1707)
!1710 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1707)
!1711 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1707)
!1712 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1707)
!1713 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1707)
!1714 = !DILocation(line: 0, scope: !1696)
!1715 = !DILocation(line: 804, column: 7, scope: !1684)
!1716 = !DILocation(line: 664, column: 7, scope: !1717, inlinedAt: !1720)
!1717 = distinct !DISubprogram(name: "require_more_args", scope: !3, file: !3, line: 662, type: !1718, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !112)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null}
!1720 = distinct !DILocation(line: 806, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 805, column: 5)
!1722 = !DILocation(line: 665, column: 5, scope: !1723, inlinedAt: !1720)
!1723 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 664, column: 7)
!1724 = !DILocation(line: 807, column: 30, scope: !1721)
!1725 = !DILocalVariable(name: "s", arg: 1, scope: !1726, file: !3, line: 484, type: !100)
!1726 = distinct !DISubprogram(name: "str_value", scope: !3, file: !3, line: 484, type: !1727, isLocal: true, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!32, !100}
!1729 = !{!1725, !1730}
!1730 = !DILocalVariable(name: "v", scope: !1726, file: !3, line: 486, type: !32)
!1731 = !DILocation(line: 484, column: 24, scope: !1726, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 807, column: 14, scope: !1721)
!1733 = !DILocation(line: 486, column: 14, scope: !1726, inlinedAt: !1732)
!1734 = !DILocation(line: 486, column: 10, scope: !1726, inlinedAt: !1732)
!1735 = !DILocation(line: 487, column: 6, scope: !1726, inlinedAt: !1732)
!1736 = !DILocation(line: 487, column: 11, scope: !1726, inlinedAt: !1732)
!1737 = !DILocation(line: 488, column: 12, scope: !1726, inlinedAt: !1732)
!1738 = !DILocation(line: 488, column: 6, scope: !1726, inlinedAt: !1732)
!1739 = !DILocation(line: 488, column: 8, scope: !1726, inlinedAt: !1732)
!1740 = !DILocation(line: 488, column: 10, scope: !1726, inlinedAt: !1732)
!1741 = !DILocation(line: 807, column: 7, scope: !1721)
!1742 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 809, column: 12, scope: !1696)
!1744 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1743)
!1745 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1743)
!1746 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1743)
!1747 = !DILocation(line: 809, column: 12, scope: !1697)
!1748 = !DILocation(line: 811, column: 11, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 810, column: 5)
!1750 = !DILocation(line: 796, column: 10, scope: !1684)
!1751 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 812, column: 7, scope: !1749)
!1753 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !1752)
!1754 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !1752)
!1755 = !DILocation(line: 813, column: 35, scope: !1749)
!1756 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !1752)
!1757 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !1752)
!1758 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !1752)
!1759 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !1752)
!1760 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !1752)
!1761 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !1752)
!1762 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !1752)
!1763 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !1752)
!1764 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !1752)
!1765 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !1752)
!1766 = !DILocation(line: 813, column: 22, scope: !1749)
!1767 = !DILocation(line: 473, column: 30, scope: !1026, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 813, column: 11, scope: !1749)
!1769 = !DILocation(line: 475, column: 14, scope: !1026, inlinedAt: !1768)
!1770 = !DILocation(line: 475, column: 10, scope: !1026, inlinedAt: !1768)
!1771 = !DILocation(line: 476, column: 6, scope: !1026, inlinedAt: !1768)
!1772 = !DILocation(line: 476, column: 11, scope: !1026, inlinedAt: !1768)
!1773 = !DILocation(line: 477, column: 23, scope: !1026, inlinedAt: !1768)
!1774 = !DILocation(line: 477, column: 20, scope: !1026, inlinedAt: !1768)
!1775 = !DILocation(line: 477, column: 3, scope: !1026, inlinedAt: !1768)
!1776 = !DILocation(line: 797, column: 10, scope: !1684)
!1777 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 814, column: 7, scope: !1749)
!1779 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1778)
!1780 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1778)
!1781 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1778)
!1782 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1778)
!1783 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1778)
!1784 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1778)
!1785 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1778)
!1786 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1778)
!1787 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1778)
!1788 = !DILocation(line: 815, column: 7, scope: !1749)
!1789 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 817, column: 12, scope: !1695)
!1791 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1790)
!1792 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1790)
!1793 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1790)
!1794 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1790)
!1795 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1790)
!1796 = !DILocation(line: 817, column: 12, scope: !1696)
!1797 = !DILocation(line: 819, column: 11, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 818, column: 5)
!1799 = !DILocation(line: 795, column: 10, scope: !1684)
!1800 = !DILocation(line: 820, column: 11, scope: !1798)
!1801 = !DILocation(line: 821, column: 11, scope: !1798)
!1802 = !DILocation(line: 823, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 822, column: 9)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 821, column: 11)
!1805 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 824, column: 11, scope: !1803)
!1807 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1806)
!1808 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1806)
!1809 = !DILocation(line: 0, scope: !984, inlinedAt: !1806)
!1810 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1806)
!1811 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1806)
!1812 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1806)
!1813 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1806)
!1814 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1806)
!1815 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1806)
!1816 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1806)
!1817 = !DILocation(line: 825, column: 9, scope: !1803)
!1818 = !DILocation(line: 0, scope: !1804)
!1819 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 828, column: 7, scope: !1798)
!1821 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !1820)
!1822 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !1820)
!1823 = !DILocation(line: 0, scope: !984, inlinedAt: !1820)
!1824 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !1820)
!1825 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !1820)
!1826 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !1820)
!1827 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !1820)
!1828 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !1820)
!1829 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !1820)
!1830 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !1820)
!1831 = !DILocation(line: 829, column: 7, scope: !1798)
!1832 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 831, column: 12, scope: !1694)
!1834 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !1833)
!1835 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !1833)
!1836 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !1833)
!1837 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !1833)
!1838 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !1833)
!1839 = !DILocation(line: 831, column: 12, scope: !1695)
!1840 = !DILocation(line: 835, column: 11, scope: !1693)
!1841 = !DILocation(line: 836, column: 11, scope: !1693)
!1842 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 837, column: 7, scope: !1693)
!1844 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !1843)
!1845 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !1843)
!1846 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !1843)
!1847 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !1843)
!1848 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !1843)
!1849 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !1843)
!1850 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !1843)
!1851 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !1843)
!1852 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !1843)
!1853 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !1843)
!1854 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !1843)
!1855 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !1843)
!1856 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 838, column: 7, scope: !1693)
!1858 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !1857)
!1859 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !1857)
!1860 = !DILocation(line: 839, column: 44, scope: !1693)
!1861 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !1857)
!1862 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !1857)
!1863 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !1857)
!1864 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !1857)
!1865 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !1857)
!1866 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !1857)
!1867 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !1857)
!1868 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !1857)
!1869 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !1857)
!1870 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !1857)
!1871 = !DILocation(line: 839, column: 34, scope: !1693)
!1872 = !DILocation(line: 839, column: 36, scope: !1693)
!1873 = !DILocalVariable(name: "s", arg: 1, scope: !1874, file: !3, line: 215, type: !100)
!1874 = distinct !DISubprogram(name: "mbs_logical_cspn", scope: !3, file: !3, line: 215, type: !1875, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!104, !100, !100}
!1877 = !{!1873, !1878, !1879, !1880, !1918, !1924}
!1878 = !DILocalVariable(name: "accept", arg: 2, scope: !1874, file: !3, line: 215, type: !100)
!1879 = !DILocalVariable(name: "idx", scope: !1874, file: !3, line: 217, type: !104)
!1880 = !DILocalVariable(name: "iter", scope: !1881, file: !3, line: 225, type: !1883)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 224, column: 5)
!1882 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 223, column: 7)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbui_iterator_t", file: !1884, line: 210, baseType: !1885)
!1884 = !DIFile(filename: "./lib/mbuiter.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbuiter_multi", file: !1884, line: 117, size: 512, elements: !1886)
!1886 = !{!1887, !1888, !1904, !1905}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "in_shift", scope: !1885, file: !1884, line: 119, baseType: !60, size: 8)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1885, file: !1884, line: 120, baseType: !1889, size: 64, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1890, line: 6, baseType: !1891)
!1890 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1892, line: 21, baseType: !1893)
!1892 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1892, line: 13, size: 64, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1893, file: !1892, line: 15, baseType: !49, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1893, file: !1892, line: 20, baseType: !1897, size: 32, offset: 32)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1893, file: !1892, line: 16, size: 32, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1897, file: !1892, line: 18, baseType: !6, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1897, file: !1892, line: 19, baseType: !1901, size: 32)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !1902)
!1902 = !{!1903}
!1903 = !DISubrange(count: 4)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "next_done", scope: !1885, file: !1884, line: 121, baseType: !60, size: 8, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !1885, file: !1884, line: 122, baseType: !1906, size: 384, offset: 128)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1907, line: 169, size: 384, elements: !1908)
!1907 = !DIFile(filename: "./lib/mbchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1908 = !{!1909, !1910, !1911, !1912, !1914}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1906, file: !1907, line: 171, baseType: !100, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1906, file: !1907, line: 172, baseType: !104, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !1906, file: !1907, line: 173, baseType: !60, size: 8, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !1906, file: !1907, line: 174, baseType: !1913, size: 32, offset: 160)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !105, line: 90, baseType: !49)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1906, file: !1907, line: 175, baseType: !1915, size: 192, offset: 192)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 192, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 24)
!1918 = !DILocalVariable(name: "aiter", scope: !1919, file: !3, line: 237, type: !1883)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 236, column: 13)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 230, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 228, column: 9)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 227, column: 7)
!1923 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 227, column: 7)
!1924 = !DILocalVariable(name: "i", scope: !1925, file: !3, line: 254, type: !104)
!1925 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 251, column: 5)
!1926 = !DILocation(line: 215, column: 31, scope: !1874, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 839, column: 13, scope: !1693)
!1928 = !DILocation(line: 215, column: 46, scope: !1874, inlinedAt: !1927)
!1929 = !DILocation(line: 217, column: 10, scope: !1874, inlinedAt: !1927)
!1930 = !DILocation(line: 219, column: 7, scope: !1931, inlinedAt: !1927)
!1931 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 219, column: 7)
!1932 = !DILocation(line: 219, column: 17, scope: !1931, inlinedAt: !1927)
!1933 = !DILocation(line: 219, column: 7, scope: !1874, inlinedAt: !1927)
!1934 = !DILocation(line: 223, column: 7, scope: !1882, inlinedAt: !1927)
!1935 = !DILocation(line: 223, column: 18, scope: !1882, inlinedAt: !1927)
!1936 = !DILocation(line: 223, column: 7, scope: !1874, inlinedAt: !1927)
!1937 = !DILocation(line: 225, column: 7, scope: !1881, inlinedAt: !1927)
!1938 = !DILocation(line: 227, column: 12, scope: !1923, inlinedAt: !1927)
!1939 = !{!1940, !721, i64 16}
!1940 = !{!"mbuiter_multi", !1941, i64 0, !1942, i64 4, !1941, i64 12, !1943, i64 16}
!1941 = !{!"_Bool", !722, i64 0}
!1942 = !{!"", !736, i64 0, !722, i64 4}
!1943 = !{!"mbchar", !721, i64 0, !737, i64 8, !1941, i64 16, !736, i64 20, !722, i64 24}
!1944 = !{!1940, !1941, i64 0}
!1945 = !DILocation(line: 0, scope: !1922, inlinedAt: !1927)
!1946 = !{!1940, !1941, i64 12}
!1947 = !DILocation(line: 225, column: 23, scope: !1881, inlinedAt: !1927)
!1948 = !DILocation(line: 227, column: 33, scope: !1922, inlinedAt: !1927)
!1949 = !{!1940, !1941, i64 32}
!1950 = !{i8 0, i8 2}
!1951 = !DILocation(line: 227, column: 7, scope: !1923, inlinedAt: !1927)
!1952 = !DILocation(line: 229, column: 11, scope: !1921, inlinedAt: !1927)
!1953 = !DILocation(line: 230, column: 15, scope: !1920, inlinedAt: !1927)
!1954 = !{!1940, !737, i64 24}
!1955 = !DILocation(line: 230, column: 40, scope: !1920, inlinedAt: !1927)
!1956 = !DILocation(line: 230, column: 15, scope: !1921, inlinedAt: !1927)
!1957 = !DILocation(line: 232, column: 36, scope: !1958, inlinedAt: !1927)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 232, column: 19)
!1959 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 231, column: 13)
!1960 = !DILocation(line: 232, column: 35, scope: !1958, inlinedAt: !1927)
!1961 = !DILocation(line: 232, column: 19, scope: !1958, inlinedAt: !1927)
!1962 = !DILocation(line: 232, column: 19, scope: !1959, inlinedAt: !1927)
!1963 = !DILocation(line: 237, column: 15, scope: !1919, inlinedAt: !1927)
!1964 = !DILocation(line: 239, column: 20, scope: !1965, inlinedAt: !1927)
!1965 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 239, column: 15)
!1966 = !DILocation(line: 0, scope: !1967, inlinedAt: !1927)
!1967 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 239, column: 15)
!1968 = !DILocation(line: 237, column: 31, scope: !1919, inlinedAt: !1927)
!1969 = !DILocation(line: 240, column: 20, scope: !1967, inlinedAt: !1927)
!1970 = !DILocation(line: 239, column: 15, scope: !1965, inlinedAt: !1927)
!1971 = !DILocation(line: 242, column: 21, scope: !1972, inlinedAt: !1927)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 242, column: 21)
!1973 = !{!1940, !736, i64 36}
!1974 = !DILocation(line: 241, column: 20, scope: !1967, inlinedAt: !1927)
!1975 = !DILocation(line: 242, column: 21, scope: !1967, inlinedAt: !1927)
!1976 = distinct !{!1976, !1977, !1978}
!1977 = !DILocation(line: 239, column: 15, scope: !1965)
!1978 = !DILocation(line: 243, column: 26, scope: !1965)
!1979 = !DILocation(line: 244, column: 13, scope: !1920, inlinedAt: !1927)
!1980 = !DILocation(line: 227, column: 52, scope: !1922, inlinedAt: !1927)
!1981 = distinct !{!1981, !1982, !1983}
!1982 = !DILocation(line: 227, column: 7, scope: !1923)
!1983 = !DILocation(line: 245, column: 9, scope: !1923)
!1984 = !DILocation(line: 0, scope: !1881, inlinedAt: !1927)
!1985 = !DILocation(line: 249, column: 5, scope: !1882, inlinedAt: !1927)
!1986 = !DILocation(line: 254, column: 18, scope: !1925, inlinedAt: !1927)
!1987 = !DILocation(line: 254, column: 14, scope: !1925, inlinedAt: !1927)
!1988 = !DILocation(line: 255, column: 15, scope: !1925, inlinedAt: !1927)
!1989 = !DILocation(line: 255, column: 24, scope: !1925, inlinedAt: !1927)
!1990 = !DILocation(line: 0, scope: !1925, inlinedAt: !1927)
!1991 = !DILocation(line: 833, column: 14, scope: !1693)
!1992 = !DILocation(line: 473, column: 30, scope: !1026, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 840, column: 11, scope: !1693)
!1994 = !DILocation(line: 475, column: 14, scope: !1026, inlinedAt: !1993)
!1995 = !DILocation(line: 475, column: 10, scope: !1026, inlinedAt: !1993)
!1996 = !DILocation(line: 476, column: 6, scope: !1026, inlinedAt: !1993)
!1997 = !DILocation(line: 476, column: 11, scope: !1026, inlinedAt: !1993)
!1998 = !DILocation(line: 477, column: 23, scope: !1026, inlinedAt: !1993)
!1999 = !DILocation(line: 477, column: 20, scope: !1026, inlinedAt: !1993)
!2000 = !DILocation(line: 477, column: 3, scope: !1026, inlinedAt: !1993)
!2001 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 841, column: 7, scope: !1693)
!2003 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !2002)
!2004 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !2002)
!2005 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !2002)
!2006 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !2002)
!2007 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !2002)
!2008 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !2002)
!2009 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !2002)
!2010 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !2002)
!2011 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !2002)
!2012 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 842, column: 7, scope: !1693)
!2014 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !2013)
!2015 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !2013)
!2016 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !2013)
!2017 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !2013)
!2018 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !2013)
!2019 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !2013)
!2020 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !2013)
!2021 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !2013)
!2022 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !2013)
!2023 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 845, column: 12, scope: !1702)
!2025 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !2024)
!2026 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !2024)
!2027 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !2024)
!2028 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !2024)
!2029 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !2024)
!2030 = !DILocation(line: 845, column: 12, scope: !1694)
!2031 = !DILocation(line: 847, column: 11, scope: !1701)
!2032 = !DILocation(line: 848, column: 12, scope: !1701)
!2033 = !DILocation(line: 798, column: 10, scope: !1684)
!2034 = !DILocation(line: 849, column: 12, scope: !1701)
!2035 = !DILocation(line: 799, column: 10, scope: !1684)
!2036 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 850, column: 7, scope: !1701)
!2038 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !2037)
!2039 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !2037)
!2040 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !2037)
!2041 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !2037)
!2042 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !2037)
!2043 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !2037)
!2044 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !2037)
!2045 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !2037)
!2046 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !2037)
!2047 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !2037)
!2048 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !2037)
!2049 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !2037)
!2050 = !DILocation(line: 594, column: 17, scope: !1434, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 852, column: 12, scope: !1700)
!2052 = !DILocation(line: 596, column: 14, scope: !1434, inlinedAt: !2051)
!2053 = !DILocation(line: 596, column: 3, scope: !1434, inlinedAt: !2051)
!2054 = !DILocation(line: 602, column: 22, scope: !1437, inlinedAt: !2051)
!2055 = !DILocation(line: 602, column: 24, scope: !1437, inlinedAt: !2051)
!2056 = !DILocation(line: 602, column: 15, scope: !1437, inlinedAt: !2051)
!2057 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 604, column: 15, scope: !1450, inlinedAt: !2051)
!2059 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !2058)
!2060 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !2058)
!2061 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !2058)
!2062 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !2058)
!2063 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !2058)
!2064 = !DILocation(line: 0, scope: !1312, inlinedAt: !2058)
!2065 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !2058)
!2066 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !2058)
!2067 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !2058)
!2068 = !DILocation(line: 606, column: 31, scope: !1461, inlinedAt: !2051)
!2069 = !DILocation(line: 606, column: 13, scope: !1461, inlinedAt: !2051)
!2070 = !DILocation(line: 608, column: 9, scope: !1437, inlinedAt: !2051)
!2071 = !DILocation(line: 609, column: 17, scope: !1437, inlinedAt: !2051)
!2072 = !DILocation(line: 610, column: 9, scope: !1437, inlinedAt: !2051)
!2073 = !DILocation(line: 613, column: 7, scope: !1438, inlinedAt: !2051)
!2074 = !DILocation(line: 594, column: 17, scope: !1434, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 852, column: 29, scope: !1700)
!2076 = !DILocation(line: 596, column: 14, scope: !1434, inlinedAt: !2075)
!2077 = !DILocation(line: 596, column: 3, scope: !1434, inlinedAt: !2075)
!2078 = !DILocation(line: 602, column: 22, scope: !1437, inlinedAt: !2075)
!2079 = !DILocation(line: 602, column: 24, scope: !1437, inlinedAt: !2075)
!2080 = !DILocation(line: 602, column: 15, scope: !1437, inlinedAt: !2075)
!2081 = !DILocation(line: 557, column: 33, scope: !1312, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 604, column: 15, scope: !1450, inlinedAt: !2075)
!2083 = !DILocation(line: 559, column: 10, scope: !1312, inlinedAt: !2082)
!2084 = !DILocation(line: 559, column: 14, scope: !1312, inlinedAt: !2082)
!2085 = !DILocation(line: 559, column: 6, scope: !1312, inlinedAt: !2082)
!2086 = !DILocation(line: 562, column: 11, scope: !1320, inlinedAt: !2082)
!2087 = !DILocation(line: 561, column: 3, scope: !1312, inlinedAt: !2082)
!2088 = !DILocation(line: 0, scope: !1312, inlinedAt: !2082)
!2089 = !DILocation(line: 562, column: 9, scope: !1312, inlinedAt: !2082)
!2090 = !DILocation(line: 564, column: 11, scope: !1312, inlinedAt: !2082)
!2091 = !DILocation(line: 564, column: 10, scope: !1312, inlinedAt: !2082)
!2092 = !DILocation(line: 606, column: 31, scope: !1461, inlinedAt: !2075)
!2093 = !DILocation(line: 606, column: 13, scope: !1461, inlinedAt: !2075)
!2094 = !DILocation(line: 608, column: 9, scope: !1437, inlinedAt: !2075)
!2095 = !DILocation(line: 609, column: 17, scope: !1437, inlinedAt: !2075)
!2096 = !DILocation(line: 610, column: 9, scope: !1437, inlinedAt: !2075)
!2097 = !DILocation(line: 613, column: 7, scope: !1438, inlinedAt: !2075)
!2098 = !DILocation(line: 484, column: 24, scope: !1726, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 853, column: 13, scope: !1700)
!2100 = !DILocation(line: 486, column: 14, scope: !1726, inlinedAt: !2099)
!2101 = !DILocation(line: 486, column: 10, scope: !1726, inlinedAt: !2099)
!2102 = !DILocation(line: 487, column: 6, scope: !1726, inlinedAt: !2099)
!2103 = !DILocation(line: 487, column: 11, scope: !1726, inlinedAt: !2099)
!2104 = !DILocation(line: 488, column: 12, scope: !1726, inlinedAt: !2099)
!2105 = !DILocation(line: 488, column: 6, scope: !1726, inlinedAt: !2099)
!2106 = !DILocation(line: 488, column: 8, scope: !1726, inlinedAt: !2099)
!2107 = !DILocation(line: 488, column: 10, scope: !1726, inlinedAt: !2099)
!2108 = !DILocation(line: 0, scope: !984, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 863, column: 7, scope: !1701)
!2110 = !DILocation(line: 853, column: 9, scope: !1700)
!2111 = !DILocalVariable(name: "i", arg: 1, scope: !2112, file: !3, line: 621, type: !2115)
!2112 = distinct !DISubprogram(name: "getsize", scope: !3, file: !3, line: 621, type: !2113, isLocal: true, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2116)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!104, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!2116 = !{!2111, !2117}
!2117 = !DILocalVariable(name: "ul", scope: !2118, file: !3, line: 627, type: !54)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 626, column: 5)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 625, column: 7)
!2120 = !DILocation(line: 621, column: 16, scope: !2112, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 856, column: 24, scope: !1699)
!2122 = !DILocation(line: 623, column: 7, scope: !2123, inlinedAt: !2121)
!2123 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 623, column: 7)
!2124 = !DILocation(line: 623, column: 7, scope: !2112, inlinedAt: !2121)
!2125 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !2126, file: !43, line: 1745, type: !2129)
!2126 = distinct !DISubprogram(name: "__gmpz_fits_ulong_p", scope: !43, file: !43, line: 1745, type: !2127, isLocal: false, isDefinition: true, scopeLine: 1746, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2132)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!49, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_srcptr", file: !43, line: 224, baseType: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!2132 = !{!2125, !2133, !2136}
!2133 = !DILocalVariable(name: "__gmp_n", scope: !2126, file: !43, line: 1747, type: !2134)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_size_t", file: !43, line: 175, baseType: !2135)
!2135 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2136 = !DILocalVariable(name: "__gmp_p", scope: !2126, file: !43, line: 1747, type: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_ptr", file: !43, line: 166, baseType: !52)
!2138 = !DILocation(line: 1745, column: 30, scope: !2126, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 625, column: 7, scope: !2119, inlinedAt: !2121)
!2140 = !DILocation(line: 1747, column: 3, scope: !2126, inlinedAt: !2139)
!2141 = !DILocation(line: 625, column: 7, scope: !2112, inlinedAt: !2121)
!2142 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !2143, file: !43, line: 1767, type: !2129)
!2143 = distinct !DISubprogram(name: "__gmpz_get_ui", scope: !43, file: !43, line: 1767, type: !2144, isLocal: false, isDefinition: true, scopeLine: 1768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!54, !2129}
!2146 = !{!2142, !2147, !2148, !2149}
!2147 = !DILocalVariable(name: "__gmp_p", scope: !2143, file: !43, line: 1769, type: !2137)
!2148 = !DILocalVariable(name: "__gmp_n", scope: !2143, file: !43, line: 1770, type: !2134)
!2149 = !DILocalVariable(name: "__gmp_l", scope: !2143, file: !43, line: 1771, type: !53)
!2150 = !DILocation(line: 1767, column: 24, scope: !2143, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 627, column: 30, scope: !2118, inlinedAt: !2121)
!2152 = !DILocation(line: 1769, column: 29, scope: !2143, inlinedAt: !2151)
!2153 = !{!878, !721, i64 8}
!2154 = !DILocation(line: 1769, column: 10, scope: !2143, inlinedAt: !2151)
!2155 = !DILocation(line: 1771, column: 23, scope: !2143, inlinedAt: !2151)
!2156 = !{!737, !737, i64 0}
!2157 = !DILocation(line: 1771, column: 13, scope: !2143, inlinedAt: !2151)
!2158 = !DILocation(line: 1778, column: 19, scope: !2143, inlinedAt: !2151)
!2159 = !DILocation(line: 1778, column: 11, scope: !2143, inlinedAt: !2151)
!2160 = !DILocation(line: 627, column: 25, scope: !2118, inlinedAt: !2121)
!2161 = !DILocation(line: 628, column: 14, scope: !2162, inlinedAt: !2121)
!2162 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 628, column: 11)
!2163 = !DILocation(line: 631, column: 3, scope: !2112, inlinedAt: !2121)
!2164 = !DILocation(line: 0, scope: !2162, inlinedAt: !2121)
!2165 = !DILocation(line: 856, column: 18, scope: !1699)
!2166 = !DILocation(line: 621, column: 16, scope: !2112, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 857, column: 24, scope: !1699)
!2168 = !DILocation(line: 623, column: 7, scope: !2123, inlinedAt: !2167)
!2169 = !DILocation(line: 623, column: 7, scope: !2112, inlinedAt: !2167)
!2170 = !DILocation(line: 1745, column: 30, scope: !2126, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 625, column: 7, scope: !2119, inlinedAt: !2167)
!2172 = !DILocation(line: 1747, column: 3, scope: !2126, inlinedAt: !2171)
!2173 = !DILocation(line: 625, column: 7, scope: !2112, inlinedAt: !2167)
!2174 = !DILocation(line: 1767, column: 24, scope: !2143, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 627, column: 30, scope: !2118, inlinedAt: !2167)
!2176 = !DILocation(line: 1769, column: 29, scope: !2143, inlinedAt: !2175)
!2177 = !DILocation(line: 1769, column: 10, scope: !2143, inlinedAt: !2175)
!2178 = !DILocation(line: 1771, column: 23, scope: !2143, inlinedAt: !2175)
!2179 = !DILocation(line: 1771, column: 13, scope: !2143, inlinedAt: !2175)
!2180 = !DILocation(line: 1778, column: 19, scope: !2143, inlinedAt: !2175)
!2181 = !DILocation(line: 1778, column: 11, scope: !2143, inlinedAt: !2175)
!2182 = !DILocation(line: 627, column: 25, scope: !2118, inlinedAt: !2167)
!2183 = !DILocation(line: 628, column: 14, scope: !2162, inlinedAt: !2167)
!2184 = !DILocation(line: 631, column: 3, scope: !2112, inlinedAt: !2167)
!2185 = !DILocation(line: 0, scope: !2162, inlinedAt: !2167)
!2186 = !DILocation(line: 857, column: 18, scope: !1699)
!2187 = !DILocation(line: 859, column: 44, scope: !1699)
!2188 = !DILocation(line: 859, column: 46, scope: !1699)
!2189 = !DILocalVariable(name: "s", arg: 1, scope: !2190, file: !3, line: 267, type: !100)
!2190 = distinct !DISubprogram(name: "mbs_logical_substr", scope: !3, file: !3, line: 267, type: !2191, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!58, !100, !104, !104}
!2193 = !{!2189, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2204}
!2194 = !DILocalVariable(name: "pos", arg: 2, scope: !2190, file: !3, line: 267, type: !104)
!2195 = !DILocalVariable(name: "len", arg: 3, scope: !2190, file: !3, line: 267, type: !104)
!2196 = !DILocalVariable(name: "v", scope: !2190, file: !3, line: 269, type: !58)
!2197 = !DILocalVariable(name: "vlim", scope: !2190, file: !3, line: 269, type: !58)
!2198 = !DILocalVariable(name: "blen", scope: !2190, file: !3, line: 271, type: !104)
!2199 = !DILocalVariable(name: "llen", scope: !2190, file: !3, line: 272, type: !104)
!2200 = !DILocalVariable(name: "vlen", scope: !2190, file: !3, line: 278, type: !104)
!2201 = !DILocalVariable(name: "iter", scope: !2202, file: !3, line: 294, type: !1883)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 287, column: 5)
!2203 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 280, column: 7)
!2204 = !DILocalVariable(name: "idx", scope: !2202, file: !3, line: 295, type: !104)
!2205 = !DILocation(line: 267, column: 33, scope: !2190, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 859, column: 21, scope: !1699)
!2207 = !DILocation(line: 267, column: 43, scope: !2190, inlinedAt: !2206)
!2208 = !DILocation(line: 267, column: 55, scope: !2190, inlinedAt: !2206)
!2209 = !DILocation(line: 271, column: 17, scope: !2190, inlinedAt: !2206)
!2210 = !DILocation(line: 271, column: 10, scope: !2190, inlinedAt: !2206)
!2211 = !DILocation(line: 272, column: 18, scope: !2190, inlinedAt: !2206)
!2212 = !DILocation(line: 272, column: 29, scope: !2190, inlinedAt: !2206)
!2213 = !DILocation(line: 272, column: 17, scope: !2190, inlinedAt: !2206)
!2214 = !DILocation(line: 272, column: 36, scope: !2190, inlinedAt: !2206)
!2215 = !DILocation(line: 272, column: 10, scope: !2190, inlinedAt: !2206)
!2216 = !DILocation(line: 274, column: 18, scope: !2217, inlinedAt: !2206)
!2217 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 274, column: 7)
!2218 = !DILocation(line: 275, column: 12, scope: !2217, inlinedAt: !2206)
!2219 = !DILocation(line: 275, column: 5, scope: !2217, inlinedAt: !2206)
!2220 = !DILocation(line: 278, column: 17, scope: !2190, inlinedAt: !2206)
!2221 = !DILocation(line: 278, column: 10, scope: !2190, inlinedAt: !2206)
!2222 = !DILocation(line: 280, column: 7, scope: !2203, inlinedAt: !2206)
!2223 = !DILocation(line: 280, column: 18, scope: !2203, inlinedAt: !2206)
!2224 = !DILocation(line: 280, column: 7, scope: !2190, inlinedAt: !2206)
!2225 = !DILocation(line: 283, column: 25, scope: !2226, inlinedAt: !2206)
!2226 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 281, column: 5)
!2227 = !DILocation(line: 283, column: 11, scope: !2226, inlinedAt: !2206)
!2228 = !DILocation(line: 269, column: 9, scope: !2190, inlinedAt: !2206)
!2229 = !DILocation(line: 284, column: 28, scope: !2226, inlinedAt: !2206)
!2230 = !DILocation(line: 284, column: 34, scope: !2226, inlinedAt: !2206)
!2231 = !DILocalVariable(name: "__dest", arg: 1, scope: !2232, file: !2233, line: 45, type: !2236)
!2232 = distinct !DISubprogram(name: "mempcpy", scope: !2233, file: !2233, line: 45, type: !2234, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2240)
!2233 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!102, !2236, !2237, !104}
!2236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!2237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2240 = !{!2231, !2241, !2242}
!2241 = !DILocalVariable(name: "__src", arg: 2, scope: !2232, file: !2233, line: 45, type: !2237)
!2242 = !DILocalVariable(name: "__len", arg: 3, scope: !2232, file: !2233, line: 45, type: !104)
!2243 = !DILocation(line: 45, column: 1, scope: !2232, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 284, column: 14, scope: !2226, inlinedAt: !2206)
!2245 = !DILocation(line: 48, column: 57, scope: !2232, inlinedAt: !2244)
!2246 = !DILocation(line: 48, column: 10, scope: !2232, inlinedAt: !2244)
!2247 = !DILocation(line: 269, column: 13, scope: !2190, inlinedAt: !2206)
!2248 = !DILocation(line: 285, column: 5, scope: !2226, inlinedAt: !2206)
!2249 = !DILocation(line: 292, column: 32, scope: !2202, inlinedAt: !2206)
!2250 = !DILocation(line: 292, column: 18, scope: !2202, inlinedAt: !2206)
!2251 = !DILocation(line: 294, column: 7, scope: !2202, inlinedAt: !2206)
!2252 = !DILocation(line: 295, column: 14, scope: !2202, inlinedAt: !2206)
!2253 = !DILocation(line: 296, column: 12, scope: !2254, inlinedAt: !2206)
!2254 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 296, column: 7)
!2255 = !DILocation(line: 294, column: 23, scope: !2202, inlinedAt: !2206)
!2256 = !DILocation(line: 297, column: 12, scope: !2257, inlinedAt: !2206)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 296, column: 7)
!2258 = !DILocation(line: 297, column: 38, scope: !2257, inlinedAt: !2206)
!2259 = !DILocation(line: 297, column: 30, scope: !2257, inlinedAt: !2206)
!2260 = !DILocation(line: 301, column: 19, scope: !2261, inlinedAt: !2206)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 301, column: 15)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 299, column: 9)
!2263 = !DILocation(line: 301, column: 15, scope: !2262, inlinedAt: !2206)
!2264 = !DILocation(line: 305, column: 11, scope: !2262, inlinedAt: !2206)
!2265 = !DILocation(line: 306, column: 33, scope: !2262, inlinedAt: !2206)
!2266 = !DILocation(line: 306, column: 54, scope: !2262, inlinedAt: !2206)
!2267 = !DILocation(line: 45, column: 1, scope: !2232, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 306, column: 18, scope: !2262, inlinedAt: !2206)
!2269 = !DILocation(line: 48, column: 57, scope: !2232, inlinedAt: !2268)
!2270 = !DILocation(line: 48, column: 10, scope: !2232, inlinedAt: !2268)
!2271 = !DILocation(line: 307, column: 9, scope: !2262, inlinedAt: !2206)
!2272 = !DILocation(line: 0, scope: !2262, inlinedAt: !2206)
!2273 = !DILocation(line: 298, column: 12, scope: !2257, inlinedAt: !2206)
!2274 = !DILocation(line: 298, column: 33, scope: !2257, inlinedAt: !2206)
!2275 = distinct !{!2275, !2276, !2277}
!2276 = !DILocation(line: 296, column: 7, scope: !2254)
!2277 = !DILocation(line: 307, column: 9, scope: !2254)
!2278 = !DILocation(line: 292, column: 12, scope: !2202, inlinedAt: !2206)
!2279 = !DILocation(line: 308, column: 5, scope: !2203, inlinedAt: !2206)
!2280 = !DILocation(line: 0, scope: !2202, inlinedAt: !2206)
!2281 = !DILocation(line: 309, column: 9, scope: !2190, inlinedAt: !2206)
!2282 = !DILocation(line: 0, scope: !2190, inlinedAt: !2206)
!2283 = !DILocation(line: 859, column: 17, scope: !1699)
!2284 = !DILocation(line: 484, column: 24, scope: !1726, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 860, column: 15, scope: !1699)
!2286 = !DILocation(line: 486, column: 14, scope: !1726, inlinedAt: !2285)
!2287 = !DILocation(line: 486, column: 10, scope: !1726, inlinedAt: !2285)
!2288 = !DILocation(line: 487, column: 6, scope: !1726, inlinedAt: !2285)
!2289 = !DILocation(line: 487, column: 11, scope: !1726, inlinedAt: !2285)
!2290 = !DILocation(line: 488, column: 12, scope: !1726, inlinedAt: !2285)
!2291 = !DILocation(line: 488, column: 6, scope: !1726, inlinedAt: !2285)
!2292 = !DILocation(line: 488, column: 8, scope: !1726, inlinedAt: !2285)
!2293 = !DILocation(line: 488, column: 10, scope: !1726, inlinedAt: !2285)
!2294 = !DILocation(line: 861, column: 11, scope: !1699)
!2295 = !DILocation(line: 0, scope: !1700)
!2296 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !2109)
!2297 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !2109)
!2298 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !2109)
!2299 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !2109)
!2300 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !2109)
!2301 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !2109)
!2302 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !2109)
!2303 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !2109)
!2304 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !2109)
!2305 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !2109)
!2306 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 864, column: 7, scope: !1701)
!2308 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !2307)
!2309 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !2307)
!2310 = !DILocation(line: 0, scope: !984, inlinedAt: !2307)
!2311 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !2307)
!2312 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !2307)
!2313 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !2307)
!2314 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !2307)
!2315 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !2307)
!2316 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !2307)
!2317 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !2307)
!2318 = !DILocation(line: 495, column: 15, scope: !985, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 865, column: 7, scope: !1701)
!2320 = !DILocation(line: 497, column: 10, scope: !984, inlinedAt: !2319)
!2321 = !DILocation(line: 497, column: 15, scope: !984, inlinedAt: !2319)
!2322 = !DILocation(line: 0, scope: !984, inlinedAt: !2319)
!2323 = !DILocation(line: 497, column: 7, scope: !985, inlinedAt: !2319)
!2324 = !DILocation(line: 498, column: 16, scope: !984, inlinedAt: !2319)
!2325 = !DILocation(line: 498, column: 5, scope: !984, inlinedAt: !2319)
!2326 = !DILocation(line: 500, column: 16, scope: !984, inlinedAt: !2319)
!2327 = !DILocation(line: 500, column: 5, scope: !984, inlinedAt: !2319)
!2328 = !DILocation(line: 501, column: 9, scope: !985, inlinedAt: !2319)
!2329 = !DILocation(line: 501, column: 3, scope: !985, inlinedAt: !2319)
!2330 = !DILocation(line: 866, column: 7, scope: !1701)
!2331 = !DILocation(line: 655, column: 10, scope: !832, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 664, column: 7, scope: !1723, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 770, column: 3, scope: !2334, inlinedAt: !2338)
!2334 = distinct !DISubprogram(name: "eval7", scope: !3, file: !3, line: 763, type: !30, isLocal: true, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2335)
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "evaluate", arg: 1, scope: !2334, file: !3, line: 763, type: !60)
!2337 = !DILocalVariable(name: "v", scope: !2334, file: !3, line: 765, type: !32)
!2338 = distinct !DILocation(line: 869, column: 12, scope: !1702)
!2339 = !DILocation(line: 763, column: 13, scope: !2334, inlinedAt: !2338)
!2340 = !DILocation(line: 655, column: 16, scope: !832, inlinedAt: !2332)
!2341 = !DILocation(line: 664, column: 7, scope: !1717, inlinedAt: !2333)
!2342 = !DILocation(line: 665, column: 5, scope: !1723, inlinedAt: !2333)
!2343 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 772, column: 7, scope: !2345, inlinedAt: !2338)
!2345 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 772, column: 7)
!2346 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !2344)
!2347 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !2344)
!2348 = !DILocation(line: 772, column: 7, scope: !2334, inlinedAt: !2338)
!2349 = !DILocation(line: 774, column: 11, scope: !2350, inlinedAt: !2338)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 773, column: 5)
!2351 = !DILocation(line: 765, column: 10, scope: !2334, inlinedAt: !2338)
!2352 = !DILocation(line: 655, column: 11, scope: !832, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 775, column: 11, scope: !2354, inlinedAt: !2338)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 775, column: 11)
!2355 = !DILocation(line: 655, column: 10, scope: !832, inlinedAt: !2353)
!2356 = !DILocation(line: 655, column: 16, scope: !832, inlinedAt: !2353)
!2357 = !DILocation(line: 775, column: 11, scope: !2350, inlinedAt: !2338)
!2358 = !DILocation(line: 776, column: 9, scope: !2354, inlinedAt: !2338)
!2359 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 778, column: 12, scope: !2361, inlinedAt: !2338)
!2361 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 778, column: 11)
!2362 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !2360)
!2363 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !2360)
!2364 = !DILocation(line: 778, column: 11, scope: !2350, inlinedAt: !2338)
!2365 = !DILocation(line: 779, column: 9, scope: !2361, inlinedAt: !2338)
!2366 = !DILocation(line: 638, column: 22, scope: !913, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 784, column: 7, scope: !2368, inlinedAt: !2338)
!2368 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 784, column: 7)
!2369 = !DILocation(line: 640, column: 7, scope: !919, inlinedAt: !2367)
!2370 = !DILocation(line: 640, column: 13, scope: !919, inlinedAt: !2367)
!2371 = !DILocation(line: 640, column: 7, scope: !913, inlinedAt: !2367)
!2372 = !DILocation(line: 644, column: 16, scope: !918, inlinedAt: !2367)
!2373 = !DILocation(line: 645, column: 12, scope: !918, inlinedAt: !2367)
!2374 = !DILocation(line: 784, column: 7, scope: !2334, inlinedAt: !2338)
!2375 = !DILocation(line: 785, column: 5, scope: !2368, inlinedAt: !2338)
!2376 = !DILocation(line: 787, column: 26, scope: !2334, inlinedAt: !2338)
!2377 = !DILocation(line: 787, column: 21, scope: !2334, inlinedAt: !2338)
!2378 = !DILocation(line: 484, column: 24, scope: !1726, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 787, column: 10, scope: !2334, inlinedAt: !2338)
!2380 = !DILocation(line: 486, column: 14, scope: !1726, inlinedAt: !2379)
!2381 = !DILocation(line: 486, column: 10, scope: !1726, inlinedAt: !2379)
!2382 = !DILocation(line: 487, column: 6, scope: !1726, inlinedAt: !2379)
!2383 = !DILocation(line: 487, column: 11, scope: !1726, inlinedAt: !2379)
!2384 = !DILocation(line: 488, column: 12, scope: !1726, inlinedAt: !2379)
!2385 = !DILocation(line: 488, column: 6, scope: !1726, inlinedAt: !2379)
!2386 = !DILocation(line: 488, column: 8, scope: !1726, inlinedAt: !2379)
!2387 = !DILocation(line: 488, column: 10, scope: !1726, inlinedAt: !2379)
!2388 = !DILocation(line: 787, column: 3, scope: !2334, inlinedAt: !2338)
!2389 = !DILocation(line: 0, scope: !1702)
!2390 = !DILocation(line: 870, column: 1, scope: !1684)
!2391 = distinct !DISubprogram(name: "docolon", scope: !3, file: !3, line: 691, type: !2392, isLocal: true, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!32, !32, !32}
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2422, !2423, !2432, !2433}
!2395 = !DILocalVariable(name: "sv", arg: 1, scope: !2391, file: !3, line: 691, type: !32)
!2396 = !DILocalVariable(name: "pv", arg: 2, scope: !2391, file: !3, line: 691, type: !32)
!2397 = !DILocalVariable(name: "v", scope: !2391, file: !3, line: 693, type: !32)
!2398 = !DILocalVariable(name: "errmsg", scope: !2391, file: !3, line: 694, type: !100)
!2399 = !DILocalVariable(name: "re_buffer", scope: !2391, file: !3, line: 695, type: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !2401, line: 414, size: 512, elements: !2402)
!2401 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2402 = !{!2403, !2406, !2408, !2409, !2411, !2412, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2400, file: !2401, line: 418, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !2401, line: 418, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !2400, file: !2401, line: 421, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !2401, line: 57, baseType: !54)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2400, file: !2401, line: 424, baseType: !2407, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !2400, file: !2401, line: 427, baseType: !2410, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !2401, line: 73, baseType: !54)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !2400, file: !2401, line: 432, baseType: !58, size: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2400, file: !2401, line: 438, baseType: !2413, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !2400, file: !2401, line: 441, baseType: !104, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !2400, file: !2401, line: 447, baseType: !6, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !2400, file: !2401, line: 458, baseType: !6, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !2400, file: !2401, line: 462, baseType: !6, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !2400, file: !2401, line: 466, baseType: !6, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !2400, file: !2401, line: 470, baseType: !6, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !2400, file: !2401, line: 473, baseType: !6, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !2400, file: !2401, line: 476, baseType: !6, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!2422 = !DILocalVariable(name: "fastmap", scope: !2391, file: !3, line: 696, type: !200)
!2423 = !DILocalVariable(name: "re_regs", scope: !2391, file: !3, line: 697, type: !2424)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !2401, line: 498, size: 192, elements: !2425)
!2425 = !{!2426, !2428, !2431}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !2424, file: !2401, line: 500, baseType: !2427, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !2401, line: 56, baseType: !6)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2424, file: !2401, line: 501, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !2401, line: 491, baseType: !49)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2424, file: !2401, line: 502, baseType: !2429, size: 64, offset: 128)
!2432 = !DILocalVariable(name: "matchlen", scope: !2391, file: !3, line: 698, type: !2430)
!2433 = !DILocalVariable(name: "i", scope: !2434, file: !3, line: 731, type: !104)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 728, column: 9)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 722, column: 11)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 720, column: 5)
!2437 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 719, column: 7)
!2438 = !DILocation(line: 691, column: 17, scope: !2391)
!2439 = !DILocation(line: 691, column: 28, scope: !2391)
!2440 = !DILocation(line: 695, column: 3, scope: !2391)
!2441 = !DILocation(line: 696, column: 3, scope: !2391)
!2442 = !DILocation(line: 696, column: 8, scope: !2391)
!2443 = !DILocation(line: 697, column: 3, scope: !2391)
!2444 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 700, column: 3, scope: !2391)
!2446 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !2445)
!2447 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !2445)
!2448 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !2445)
!2449 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !2445)
!2450 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !2445)
!2451 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !2445)
!2452 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !2445)
!2453 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !2445)
!2454 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !2445)
!2455 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !2445)
!2456 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !2445)
!2457 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !2445)
!2458 = !DILocation(line: 572, column: 18, scope: !1275, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 701, column: 3, scope: !2391)
!2460 = !DILocation(line: 574, column: 14, scope: !1275, inlinedAt: !2459)
!2461 = !DILocation(line: 574, column: 3, scope: !1275, inlinedAt: !2459)
!2462 = !DILocation(line: 713, column: 38, scope: !2391)
!2463 = !DILocation(line: 578, column: 45, scope: !1278, inlinedAt: !2459)
!2464 = !DILocation(line: 578, column: 42, scope: !1278, inlinedAt: !2459)
!2465 = !DILocation(line: 578, column: 19, scope: !1278, inlinedAt: !2459)
!2466 = !DILocation(line: 578, column: 15, scope: !1278, inlinedAt: !2459)
!2467 = !DILocation(line: 579, column: 9, scope: !1278, inlinedAt: !2459)
!2468 = !DILocation(line: 580, column: 14, scope: !1278, inlinedAt: !2459)
!2469 = !DILocation(line: 580, column: 16, scope: !1278, inlinedAt: !2459)
!2470 = !DILocation(line: 581, column: 17, scope: !1278, inlinedAt: !2459)
!2471 = !DILocation(line: 583, column: 7, scope: !1279, inlinedAt: !2459)
!2472 = !DILocation(line: 587, column: 7, scope: !1279, inlinedAt: !2459)
!2473 = !DILocation(line: 703, column: 11, scope: !2391)
!2474 = !DILocation(line: 703, column: 20, scope: !2391)
!2475 = !{!2476, !736, i64 0}
!2476 = !{!"re_registers", !736, i64 0, !721, i64 8, !721, i64 16}
!2477 = !DILocation(line: 704, column: 11, scope: !2391)
!2478 = !DILocation(line: 705, column: 11, scope: !2391)
!2479 = !DILocation(line: 707, column: 20, scope: !2391)
!2480 = !DILocation(line: 704, column: 17, scope: !2391)
!2481 = !DILocation(line: 709, column: 13, scope: !2391)
!2482 = !DILocation(line: 709, column: 21, scope: !2391)
!2483 = !DILocation(line: 708, column: 23, scope: !2391)
!2484 = !{!2485, !721, i64 32}
!2485 = !{!"re_pattern_buffer", !721, i64 0, !737, i64 8, !737, i64 16, !737, i64 24, !721, i64 32, !721, i64 40, !737, i64 48, !736, i64 56, !736, i64 56, !736, i64 56, !736, i64 56, !736, i64 56, !736, i64 56, !736, i64 56}
!2486 = !DILocation(line: 710, column: 13, scope: !2391)
!2487 = !DILocation(line: 710, column: 23, scope: !2391)
!2488 = !{!2485, !721, i64 40}
!2489 = !DILocation(line: 711, column: 21, scope: !2391)
!2490 = !DILocation(line: 713, column: 41, scope: !2391)
!2491 = !DILocation(line: 695, column: 28, scope: !2391)
!2492 = !DILocation(line: 713, column: 12, scope: !2391)
!2493 = !DILocation(line: 694, column: 15, scope: !2391)
!2494 = !DILocation(line: 714, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 714, column: 7)
!2496 = !DILocation(line: 714, column: 7, scope: !2391)
!2497 = !DILocation(line: 715, column: 5, scope: !2495)
!2498 = !DILocation(line: 716, column: 13, scope: !2391)
!2499 = !DILocation(line: 716, column: 28, scope: !2391)
!2500 = !DILocation(line: 718, column: 40, scope: !2391)
!2501 = !DILocation(line: 718, column: 42, scope: !2391)
!2502 = !DILocation(line: 718, column: 45, scope: !2391)
!2503 = !DILocation(line: 697, column: 23, scope: !2391)
!2504 = !DILocation(line: 718, column: 14, scope: !2391)
!2505 = !DILocation(line: 698, column: 12, scope: !2391)
!2506 = !DILocation(line: 719, column: 9, scope: !2437)
!2507 = !DILocation(line: 719, column: 7, scope: !2391)
!2508 = !DILocation(line: 722, column: 21, scope: !2435)
!2509 = !{!2485, !737, i64 48}
!2510 = !DILocation(line: 722, column: 29, scope: !2435)
!2511 = !DILocation(line: 722, column: 11, scope: !2436)
!2512 = !DILocation(line: 724, column: 17, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 723, column: 9)
!2514 = !DILocation(line: 724, column: 27, scope: !2513)
!2515 = !{!2476, !721, i64 16}
!2516 = !DILocation(line: 724, column: 19, scope: !2513)
!2517 = !DILocation(line: 724, column: 11, scope: !2513)
!2518 = !DILocation(line: 724, column: 35, scope: !2513)
!2519 = !DILocation(line: 725, column: 32, scope: !2513)
!2520 = !DILocation(line: 725, column: 44, scope: !2513)
!2521 = !{!2476, !721, i64 8}
!2522 = !DILocation(line: 725, column: 36, scope: !2513)
!2523 = !DILocation(line: 725, column: 34, scope: !2513)
!2524 = !DILocation(line: 484, column: 24, scope: !1726, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 725, column: 15, scope: !2513)
!2526 = !DILocation(line: 486, column: 14, scope: !1726, inlinedAt: !2525)
!2527 = !DILocation(line: 486, column: 10, scope: !1726, inlinedAt: !2525)
!2528 = !DILocation(line: 487, column: 6, scope: !1726, inlinedAt: !2525)
!2529 = !DILocation(line: 487, column: 11, scope: !1726, inlinedAt: !2525)
!2530 = !DILocation(line: 488, column: 12, scope: !1726, inlinedAt: !2525)
!2531 = !DILocation(line: 488, column: 6, scope: !1726, inlinedAt: !2525)
!2532 = !DILocation(line: 488, column: 8, scope: !1726, inlinedAt: !2525)
!2533 = !DILocation(line: 488, column: 10, scope: !1726, inlinedAt: !2525)
!2534 = !DILocation(line: 693, column: 10, scope: !2391)
!2535 = !DILocation(line: 726, column: 9, scope: !2513)
!2536 = !DILocation(line: 731, column: 23, scope: !2434)
!2537 = !DILocation(line: 731, column: 34, scope: !2434)
!2538 = !DILocation(line: 732, column: 25, scope: !2434)
!2539 = !DILocation(line: 733, column: 52, scope: !2434)
!2540 = !DILocation(line: 733, column: 55, scope: !2434)
!2541 = !DILocalVariable(name: "s", arg: 1, scope: !2542, file: !3, line: 322, type: !100)
!2542 = distinct !DISubprogram(name: "mbs_offset_to_chars", scope: !3, file: !3, line: 322, type: !2543, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!104, !100, !104}
!2545 = !{!2541, !2546, !2547, !2548, !2549}
!2546 = !DILocalVariable(name: "ofs", arg: 2, scope: !2542, file: !3, line: 322, type: !104)
!2547 = !DILocalVariable(name: "iter", scope: !2542, file: !3, line: 324, type: !1883)
!2548 = !DILocalVariable(name: "c", scope: !2542, file: !3, line: 325, type: !104)
!2549 = !DILocalVariable(name: "d", scope: !2550, file: !3, line: 328, type: !2553)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 327, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 326, column: 3)
!2552 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 326, column: 3)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !105, line: 51, baseType: !2135)
!2554 = !DILocation(line: 322, column: 34, scope: !2542, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 733, column: 25, scope: !2434)
!2556 = !DILocation(line: 322, column: 44, scope: !2542, inlinedAt: !2555)
!2557 = !DILocation(line: 324, column: 3, scope: !2542, inlinedAt: !2555)
!2558 = !DILocation(line: 325, column: 10, scope: !2542, inlinedAt: !2555)
!2559 = !DILocation(line: 326, column: 8, scope: !2552, inlinedAt: !2555)
!2560 = !DILocation(line: 328, column: 21, scope: !2550, inlinedAt: !2555)
!2561 = !DILocation(line: 0, scope: !2551, inlinedAt: !2555)
!2562 = !DILocation(line: 324, column: 19, scope: !2542, inlinedAt: !2555)
!2563 = !DILocation(line: 326, column: 29, scope: !2551, inlinedAt: !2555)
!2564 = !DILocation(line: 326, column: 3, scope: !2552, inlinedAt: !2555)
!2565 = !DILocation(line: 328, column: 41, scope: !2550, inlinedAt: !2555)
!2566 = !DILocation(line: 328, column: 17, scope: !2550, inlinedAt: !2555)
!2567 = !DILocation(line: 329, column: 13, scope: !2568, inlinedAt: !2555)
!2568 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 329, column: 11)
!2569 = !DILocation(line: 329, column: 11, scope: !2550, inlinedAt: !2555)
!2570 = !DILocation(line: 326, column: 48, scope: !2551, inlinedAt: !2555)
!2571 = distinct !{!2571, !2572, !2573}
!2572 = !DILocation(line: 326, column: 3, scope: !2552)
!2573 = !DILocation(line: 332, column: 5, scope: !2552)
!2574 = !DILocation(line: 334, column: 1, scope: !2542, inlinedAt: !2555)
!2575 = !DILocation(line: 731, column: 18, scope: !2434)
!2576 = !DILocation(line: 473, column: 30, scope: !1026, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 734, column: 15, scope: !2434)
!2578 = !DILocation(line: 475, column: 14, scope: !1026, inlinedAt: !2577)
!2579 = !DILocation(line: 475, column: 10, scope: !1026, inlinedAt: !2577)
!2580 = !DILocation(line: 476, column: 6, scope: !1026, inlinedAt: !2577)
!2581 = !DILocation(line: 476, column: 11, scope: !1026, inlinedAt: !2577)
!2582 = !DILocation(line: 477, column: 23, scope: !1026, inlinedAt: !2577)
!2583 = !DILocation(line: 477, column: 20, scope: !1026, inlinedAt: !2577)
!2584 = !DILocation(line: 477, column: 3, scope: !1026, inlinedAt: !2577)
!2585 = !DILocation(line: 737, column: 12, scope: !2437)
!2586 = !DILocation(line: 740, column: 21, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 740, column: 11)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 738, column: 5)
!2589 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 737, column: 12)
!2590 = !DILocation(line: 740, column: 29, scope: !2587)
!2591 = !DILocation(line: 0, scope: !2587)
!2592 = !DILocation(line: 740, column: 11, scope: !2588)
!2593 = !DILocation(line: 484, column: 24, scope: !1726, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 741, column: 13, scope: !2587)
!2595 = !DILocation(line: 486, column: 10, scope: !1726, inlinedAt: !2594)
!2596 = !DILocation(line: 487, column: 11, scope: !1726, inlinedAt: !2594)
!2597 = !DILocation(line: 488, column: 12, scope: !1726, inlinedAt: !2594)
!2598 = !DILocation(line: 488, column: 6, scope: !1726, inlinedAt: !2594)
!2599 = !DILocation(line: 488, column: 8, scope: !1726, inlinedAt: !2594)
!2600 = !DILocation(line: 488, column: 10, scope: !1726, inlinedAt: !2594)
!2601 = !DILocation(line: 741, column: 9, scope: !2587)
!2602 = !DILocation(line: 473, column: 30, scope: !1026, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 743, column: 13, scope: !2587)
!2604 = !DILocation(line: 475, column: 10, scope: !1026, inlinedAt: !2603)
!2605 = !DILocation(line: 476, column: 11, scope: !1026, inlinedAt: !2603)
!2606 = !DILocation(line: 477, column: 23, scope: !1026, inlinedAt: !2603)
!2607 = !DILocation(line: 477, column: 20, scope: !1026, inlinedAt: !2603)
!2608 = !DILocation(line: 477, column: 3, scope: !1026, inlinedAt: !2603)
!2609 = !DILocation(line: 746, column: 5, scope: !2589)
!2610 = !DILocation(line: 750, column: 19, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 750, column: 7)
!2612 = !DILocation(line: 750, column: 9, scope: !2611)
!2613 = !DILocation(line: 750, column: 7, scope: !2391)
!2614 = !DILocation(line: 752, column: 21, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 751, column: 5)
!2616 = !DILocation(line: 752, column: 7, scope: !2615)
!2617 = !DILocation(line: 753, column: 21, scope: !2615)
!2618 = !DILocation(line: 753, column: 7, scope: !2615)
!2619 = !DILocation(line: 754, column: 5, scope: !2615)
!2620 = !DILocation(line: 755, column: 21, scope: !2391)
!2621 = !DILocation(line: 756, column: 3, scope: !2391)
!2622 = !DILocation(line: 758, column: 1, scope: !2391)
!2623 = !DILocation(line: 757, column: 3, scope: !2391)
!2624 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !116, file: !116, line: 51, type: !695, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2625)
!2625 = !{!2626}
!2626 = !DILocalVariable(name: "file", arg: 1, scope: !2624, file: !116, line: 51, type: !100)
!2627 = !DILocation(line: 51, column: 41, scope: !2624)
!2628 = !DILocation(line: 53, column: 13, scope: !2624)
!2629 = !DILocation(line: 54, column: 1, scope: !2624)
!2630 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !116, file: !116, line: 88, type: !2631, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !60}
!2633 = !{!2634}
!2634 = !DILocalVariable(name: "ignore", arg: 1, scope: !2630, file: !116, line: 88, type: !60)
!2635 = !DILocation(line: 88, column: 37, scope: !2630)
!2636 = !DILocation(line: 90, column: 16, scope: !2630)
!2637 = !{!1941, !1941, i64 0}
!2638 = !DILocation(line: 91, column: 1, scope: !2630)
!2639 = distinct !DISubprogram(name: "close_stdout", scope: !116, file: !116, line: 117, type: !1718, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2640)
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "write_error", scope: !2642, file: !116, line: 122, type: !100)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !116, line: 121, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !116, line: 119, column: 7)
!2644 = !DILocation(line: 119, column: 21, scope: !2643)
!2645 = !DILocation(line: 119, column: 7, scope: !2643)
!2646 = !DILocation(line: 119, column: 29, scope: !2643)
!2647 = !DILocation(line: 120, column: 7, scope: !2643)
!2648 = !DILocation(line: 120, column: 12, scope: !2643)
!2649 = !DILocation(line: 120, column: 25, scope: !2643)
!2650 = !DILocation(line: 120, column: 28, scope: !2643)
!2651 = !DILocation(line: 120, column: 34, scope: !2643)
!2652 = !DILocation(line: 119, column: 7, scope: !2639)
!2653 = !DILocation(line: 122, column: 33, scope: !2642)
!2654 = !DILocation(line: 122, column: 19, scope: !2642)
!2655 = !DILocation(line: 123, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2642, file: !116, line: 123, column: 11)
!2657 = !DILocation(line: 0, scope: !2656)
!2658 = !DILocation(line: 123, column: 11, scope: !2642)
!2659 = !DILocation(line: 124, column: 36, scope: !2656)
!2660 = !DILocation(line: 124, column: 9, scope: !2656)
!2661 = !DILocation(line: 127, column: 9, scope: !2656)
!2662 = !DILocation(line: 129, column: 14, scope: !2642)
!2663 = !DILocation(line: 129, column: 7, scope: !2642)
!2664 = !DILocation(line: 134, column: 42, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2639, file: !116, line: 134, column: 7)
!2666 = !DILocation(line: 134, column: 28, scope: !2665)
!2667 = !DILocation(line: 134, column: 50, scope: !2665)
!2668 = !DILocation(line: 134, column: 7, scope: !2639)
!2669 = !DILocation(line: 135, column: 12, scope: !2665)
!2670 = !DILocation(line: 135, column: 5, scope: !2665)
!2671 = !DILocation(line: 136, column: 1, scope: !2639)
!2672 = distinct !DISubprogram(name: "parse_long_options", scope: !129, file: !129, line: 44, type: !2673, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !126, retainedNodes: !2676)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !49, !107, !100, !100, !100, !2675, null}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685}
!2677 = !DILocalVariable(name: "argc", arg: 1, scope: !2672, file: !129, line: 44, type: !49)
!2678 = !DILocalVariable(name: "argv", arg: 2, scope: !2672, file: !129, line: 45, type: !107)
!2679 = !DILocalVariable(name: "command_name", arg: 3, scope: !2672, file: !129, line: 46, type: !100)
!2680 = !DILocalVariable(name: "package", arg: 4, scope: !2672, file: !129, line: 47, type: !100)
!2681 = !DILocalVariable(name: "version", arg: 5, scope: !2672, file: !129, line: 48, type: !100)
!2682 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2672, file: !129, line: 49, type: !2675)
!2683 = !DILocalVariable(name: "c", scope: !2672, file: !129, line: 52, type: !49)
!2684 = !DILocalVariable(name: "saved_opterr", scope: !2672, file: !129, line: 53, type: !49)
!2685 = !DILocalVariable(name: "authors", scope: !2686, file: !129, line: 71, type: !2690)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !129, line: 70, column: 11)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !129, line: 64, column: 9)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !129, line: 62, column: 5)
!2689 = distinct !DILexicalBlock(scope: !2672, file: !129, line: 60, column: 7)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2691, line: 52, baseType: !2692)
!2691 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2693, line: 48, baseType: !2694)
!2693 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !127, line: 71, baseType: !2695)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2696, size: 192, elements: !55)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !127, line: 71, size: 192, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2696, file: !127, line: 71, baseType: !6, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2696, file: !127, line: 71, baseType: !6, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2696, file: !127, line: 71, baseType: !102, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2696, file: !127, line: 71, baseType: !102, size: 64, offset: 128)
!2702 = !DILocation(line: 44, column: 25, scope: !2672)
!2703 = !DILocation(line: 45, column: 28, scope: !2672)
!2704 = !DILocation(line: 46, column: 33, scope: !2672)
!2705 = !DILocation(line: 47, column: 33, scope: !2672)
!2706 = !DILocation(line: 48, column: 33, scope: !2672)
!2707 = !DILocation(line: 49, column: 28, scope: !2672)
!2708 = !DILocation(line: 55, column: 18, scope: !2672)
!2709 = !DILocation(line: 53, column: 7, scope: !2672)
!2710 = !DILocation(line: 58, column: 10, scope: !2672)
!2711 = !DILocation(line: 60, column: 12, scope: !2689)
!2712 = !DILocation(line: 61, column: 7, scope: !2689)
!2713 = !DILocation(line: 61, column: 15, scope: !2689)
!2714 = !DILocation(line: 52, column: 7, scope: !2672)
!2715 = !DILocation(line: 60, column: 7, scope: !2672)
!2716 = !DILocation(line: 66, column: 11, scope: !2687)
!2717 = !DILocation(line: 67, column: 11, scope: !2687)
!2718 = !DILocation(line: 71, column: 13, scope: !2686)
!2719 = !DILocation(line: 71, column: 21, scope: !2686)
!2720 = !DILocation(line: 72, column: 13, scope: !2686)
!2721 = !DILocation(line: 73, column: 29, scope: !2686)
!2722 = !DILocation(line: 73, column: 13, scope: !2686)
!2723 = !DILocation(line: 74, column: 13, scope: !2686)
!2724 = !DILocation(line: 84, column: 10, scope: !2672)
!2725 = !DILocation(line: 88, column: 10, scope: !2672)
!2726 = !DILocation(line: 89, column: 1, scope: !2672)
!2727 = distinct !DISubprogram(name: "mbschr", scope: !2728, file: !2728, line: 28, type: !2729, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !236, retainedNodes: !2731)
!2728 = !DIFile(filename: "lib/mbschr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!58, !100, !49}
!2731 = !{!2732, !2733, !2734}
!2732 = !DILocalVariable(name: "string", arg: 1, scope: !2727, file: !2728, line: 28, type: !100)
!2733 = !DILocalVariable(name: "c", arg: 2, scope: !2727, file: !2728, line: 28, type: !49)
!2734 = !DILocalVariable(name: "iter", scope: !2735, file: !2728, line: 36, type: !2737)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !2728, line: 35, column: 5)
!2736 = distinct !DILexicalBlock(scope: !2727, file: !2728, line: 30, column: 7)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbui_iterator_t", file: !1884, line: 210, baseType: !2738)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbuiter_multi", file: !1884, line: 117, size: 512, elements: !2739)
!2739 = !{!2740, !2741, !2752, !2753}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "in_shift", scope: !2738, file: !1884, line: 119, baseType: !60, size: 8)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2738, file: !1884, line: 120, baseType: !2742, size: 64, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1890, line: 6, baseType: !2743)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1892, line: 21, baseType: !2744)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1892, line: 13, size: 64, elements: !2745)
!2745 = !{!2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2744, file: !1892, line: 15, baseType: !49, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2744, file: !1892, line: 20, baseType: !2748, size: 32, offset: 32)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !1892, line: 16, size: 32, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2748, file: !1892, line: 18, baseType: !6, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2748, file: !1892, line: 19, baseType: !1901, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "next_done", scope: !2738, file: !1884, line: 121, baseType: !60, size: 8, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2738, file: !1884, line: 122, baseType: !2754, size: 384, offset: 128)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1907, line: 169, size: 384, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2760}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2754, file: !1907, line: 171, baseType: !100, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2754, file: !1907, line: 172, baseType: !104, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !2754, file: !1907, line: 173, baseType: !60, size: 8, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !2754, file: !1907, line: 174, baseType: !1913, size: 32, offset: 160)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2754, file: !1907, line: 175, baseType: !1915, size: 192, offset: 192)
!2761 = !DILocation(line: 28, column: 21, scope: !2727)
!2762 = !DILocation(line: 28, column: 33, scope: !2727)
!2763 = !DILocation(line: 30, column: 7, scope: !2736)
!2764 = !DILocation(line: 30, column: 18, scope: !2736)
!2765 = !DILocation(line: 34, column: 10, scope: !2736)
!2766 = !DILocation(line: 34, column: 28, scope: !2736)
!2767 = !DILocation(line: 34, column: 7, scope: !2736)
!2768 = !DILocation(line: 36, column: 7, scope: !2735)
!2769 = !DILocation(line: 38, column: 12, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2735, file: !2728, line: 38, column: 7)
!2771 = !DILocation(line: 0, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2770, file: !2728, line: 38, column: 7)
!2773 = !DILocation(line: 36, column: 23, scope: !2735)
!2774 = !DILocation(line: 40, column: 16, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !2728, line: 40, column: 15)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !2728, line: 39, column: 9)
!2777 = !DILocation(line: 40, column: 15, scope: !2776)
!2778 = !DILocation(line: 42, column: 15, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !2728, line: 42, column: 15)
!2780 = !DILocation(line: 42, column: 40, scope: !2779)
!2781 = !DILocation(line: 43, column: 15, scope: !2779)
!2782 = !DILocation(line: 43, column: 34, scope: !2779)
!2783 = !DILocation(line: 43, column: 56, scope: !2779)
!2784 = !DILocation(line: 42, column: 15, scope: !2776)
!2785 = !DILocation(line: 38, column: 39, scope: !2772)
!2786 = distinct !{!2786, !2787, !2788}
!2787 = !DILocation(line: 38, column: 7, scope: !2770)
!2788 = !DILocation(line: 45, column: 9, scope: !2770)
!2789 = !DILocation(line: 0, scope: !2735)
!2790 = !DILocation(line: 49, column: 5, scope: !2736)
!2791 = !DILocation(line: 51, column: 12, scope: !2736)
!2792 = !DILocation(line: 51, column: 5, scope: !2736)
!2793 = !DILocation(line: 0, scope: !2736)
!2794 = !DILocation(line: 52, column: 1, scope: !2727)
!2795 = distinct !DISubprogram(name: "mbslen", scope: !2796, file: !2796, line: 29, type: !2797, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !2799)
!2796 = !DIFile(filename: "lib/mbslen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!104, !100}
!2799 = !{!2800, !2801, !2804}
!2800 = !DILocalVariable(name: "string", arg: 1, scope: !2795, file: !2796, line: 29, type: !100)
!2801 = !DILocalVariable(name: "count", scope: !2802, file: !2796, line: 33, type: !104)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !2796, line: 32, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2795, file: !2796, line: 31, column: 7)
!2804 = !DILocalVariable(name: "iter", scope: !2802, file: !2796, line: 34, type: !2805)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbui_iterator_t", file: !1884, line: 210, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbuiter_multi", file: !1884, line: 117, size: 512, elements: !2807)
!2807 = !{!2808, !2809, !2820, !2821}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "in_shift", scope: !2806, file: !1884, line: 119, baseType: !60, size: 8)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2806, file: !1884, line: 120, baseType: !2810, size: 64, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1890, line: 6, baseType: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1892, line: 21, baseType: !2812)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1892, line: 13, size: 64, elements: !2813)
!2813 = !{!2814, !2815}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2812, file: !1892, line: 15, baseType: !49, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2812, file: !1892, line: 20, baseType: !2816, size: 32, offset: 32)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2812, file: !1892, line: 16, size: 32, elements: !2817)
!2817 = !{!2818, !2819}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2816, file: !1892, line: 18, baseType: !6, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2816, file: !1892, line: 19, baseType: !1901, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "next_done", scope: !2806, file: !1884, line: 121, baseType: !60, size: 8, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2806, file: !1884, line: 122, baseType: !2822, size: 384, offset: 128)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1907, line: 169, size: 384, elements: !2823)
!2823 = !{!2824, !2825, !2826, !2827, !2828}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2822, file: !1907, line: 171, baseType: !100, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2822, file: !1907, line: 172, baseType: !104, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !2822, file: !1907, line: 173, baseType: !60, size: 8, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !2822, file: !1907, line: 174, baseType: !1913, size: 32, offset: 160)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2822, file: !1907, line: 175, baseType: !1915, size: 192, offset: 192)
!2829 = !DILocation(line: 29, column: 21, scope: !2795)
!2830 = !DILocation(line: 31, column: 7, scope: !2803)
!2831 = !DILocation(line: 31, column: 18, scope: !2803)
!2832 = !DILocation(line: 31, column: 7, scope: !2795)
!2833 = !DILocation(line: 34, column: 7, scope: !2802)
!2834 = !DILocation(line: 33, column: 14, scope: !2802)
!2835 = !DILocation(line: 37, column: 12, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2802, file: !2796, line: 37, column: 7)
!2837 = !DILocation(line: 0, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2836, file: !2796, line: 37, column: 7)
!2839 = !DILocation(line: 34, column: 23, scope: !2802)
!2840 = !DILocation(line: 37, column: 38, scope: !2838)
!2841 = !DILocation(line: 37, column: 7, scope: !2836)
!2842 = !DILocation(line: 38, column: 14, scope: !2838)
!2843 = !DILocation(line: 37, column: 57, scope: !2838)
!2844 = distinct !{!2844, !2841, !2845}
!2845 = !DILocation(line: 38, column: 14, scope: !2836)
!2846 = !DILocation(line: 41, column: 5, scope: !2803)
!2847 = !DILocation(line: 43, column: 12, scope: !2803)
!2848 = !DILocation(line: 43, column: 5, scope: !2803)
!2849 = !DILocation(line: 0, scope: !2803)
!2850 = !DILocation(line: 44, column: 1, scope: !2795)
!2851 = distinct !DISubprogram(name: "mbuiter_multi_next", scope: !1884, file: !1884, line: 132, type: !2852, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !2878)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !2854}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbuiter_multi", file: !1884, line: 117, size: 512, elements: !2856)
!2856 = !{!2857, !2858, !2869, !2870}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "in_shift", scope: !2855, file: !1884, line: 119, baseType: !60, size: 8)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2855, file: !1884, line: 120, baseType: !2859, size: 64, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1890, line: 6, baseType: !2860)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1892, line: 21, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1892, line: 13, size: 64, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2861, file: !1892, line: 15, baseType: !49, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2861, file: !1892, line: 20, baseType: !2865, size: 32, offset: 32)
!2865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2861, file: !1892, line: 16, size: 32, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2865, file: !1892, line: 18, baseType: !6, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2865, file: !1892, line: 19, baseType: !1901, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "next_done", scope: !2855, file: !1884, line: 121, baseType: !60, size: 8, offset: 96)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2855, file: !1884, line: 122, baseType: !2871, size: 384, offset: 128)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1907, line: 169, size: 384, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876, !2877}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2871, file: !1907, line: 171, baseType: !100, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2871, file: !1907, line: 172, baseType: !104, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !2871, file: !1907, line: 173, baseType: !60, size: 8, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !2871, file: !1907, line: 174, baseType: !1913, size: 32, offset: 160)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2871, file: !1907, line: 175, baseType: !1915, size: 192, offset: 192)
!2878 = !{!2879}
!2879 = !DILocalVariable(name: "iter", arg: 1, scope: !2851, file: !1884, line: 132, type: !2854)
!2880 = !DILocation(line: 132, column: 43, scope: !2851)
!2881 = !DILocation(line: 134, column: 13, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2851, file: !1884, line: 134, column: 7)
!2883 = !DILocation(line: 134, column: 7, scope: !2851)
!2884 = !DILocation(line: 136, column: 13, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2851, file: !1884, line: 136, column: 7)
!2886 = !DILocation(line: 0, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !1884, line: 149, column: 5)
!2888 = distinct !DILexicalBlock(scope: !2851, file: !1884, line: 139, column: 7)
!2889 = !DILocation(line: 136, column: 7, scope: !2851)
!2890 = !DILocation(line: 155, column: 41, scope: !2887)
!2891 = !DILocation(line: 139, column: 17, scope: !2888)
!2892 = !DILocalVariable(name: "c", arg: 1, scope: !2893, file: !1907, line: 316, type: !59)
!2893 = distinct !DISubprogram(name: "is_basic", scope: !1907, file: !1907, line: 316, type: !2894, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!60, !59}
!2896 = !{!2892}
!2897 = !DILocation(line: 316, column: 16, scope: !2893, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 139, column: 7, scope: !2888)
!2899 = !DILocation(line: 318, column: 27, scope: !2893, inlinedAt: !2898)
!2900 = !DILocation(line: 318, column: 45, scope: !2893, inlinedAt: !2898)
!2901 = !DILocation(line: 318, column: 11, scope: !2893, inlinedAt: !2898)
!2902 = !DILocation(line: 318, column: 73, scope: !2893, inlinedAt: !2898)
!2903 = !DILocation(line: 318, column: 10, scope: !2893, inlinedAt: !2898)
!2904 = !DILocation(line: 139, column: 7, scope: !2851)
!2905 = !DILocation(line: 144, column: 17, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2888, file: !1884, line: 140, column: 5)
!2907 = !DILocation(line: 144, column: 23, scope: !2906)
!2908 = !DILocation(line: 145, column: 22, scope: !2906)
!2909 = !DILocation(line: 145, column: 17, scope: !2906)
!2910 = !DILocation(line: 145, column: 20, scope: !2906)
!2911 = !DILocation(line: 146, column: 17, scope: !2906)
!2912 = !DILocation(line: 146, column: 26, scope: !2906)
!2913 = !DILocation(line: 147, column: 5, scope: !2906)
!2914 = !DILocation(line: 150, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !1884, line: 150, column: 7)
!2916 = distinct !DILexicalBlock(scope: !2887, file: !1884, line: 150, column: 7)
!2917 = !DILocation(line: 150, column: 7, scope: !2916)
!2918 = !DILocation(line: 151, column: 22, scope: !2887)
!2919 = !DILocation(line: 151, column: 7, scope: !2887)
!2920 = !DILocation(line: 153, column: 45, scope: !2887)
!2921 = !DILocation(line: 154, column: 59, scope: !2887)
!2922 = !DILocation(line: 154, column: 34, scope: !2887)
!2923 = !DILocation(line: 153, column: 25, scope: !2887)
!2924 = !DILocation(line: 153, column: 17, scope: !2887)
!2925 = !DILocation(line: 153, column: 23, scope: !2887)
!2926 = !DILocation(line: 156, column: 11, scope: !2887)
!2927 = !DILocation(line: 159, column: 27, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !1884, line: 157, column: 9)
!2929 = distinct !DILexicalBlock(scope: !2887, file: !1884, line: 156, column: 11)
!2930 = !DILocation(line: 160, column: 21, scope: !2928)
!2931 = !DILocation(line: 160, column: 30, scope: !2928)
!2932 = !DILocation(line: 163, column: 9, scope: !2928)
!2933 = !DILocation(line: 167, column: 47, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !1884, line: 165, column: 9)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !1884, line: 164, column: 16)
!2936 = !DILocation(line: 167, column: 29, scope: !2934)
!2937 = !DILocation(line: 167, column: 27, scope: !2934)
!2938 = !DILocation(line: 168, column: 21, scope: !2934)
!2939 = !DILocation(line: 168, column: 30, scope: !2934)
!2940 = !DILocation(line: 171, column: 9, scope: !2934)
!2941 = !DILocation(line: 177, column: 31, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !1884, line: 175, column: 13)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !1884, line: 174, column: 15)
!2944 = distinct !DILexicalBlock(scope: !2935, file: !1884, line: 173, column: 9)
!2945 = !DILocation(line: 178, column: 15, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !1884, line: 178, column: 15)
!2947 = distinct !DILexicalBlock(scope: !2942, file: !1884, line: 178, column: 15)
!2948 = !DILocation(line: 178, column: 15, scope: !2947)
!2949 = !DILocation(line: 179, column: 15, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !1884, line: 179, column: 15)
!2951 = distinct !DILexicalBlock(scope: !2942, file: !1884, line: 179, column: 15)
!2952 = !DILocation(line: 179, column: 15, scope: !2951)
!2953 = !DILocation(line: 181, column: 21, scope: !2944)
!2954 = !DILocation(line: 181, column: 30, scope: !2944)
!2955 = !DILocation(line: 185, column: 15, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2944, file: !1884, line: 185, column: 15)
!2957 = !DILocation(line: 185, column: 15, scope: !2944)
!2958 = !DILocation(line: 186, column: 28, scope: !2956)
!2959 = !DILocation(line: 186, column: 13, scope: !2956)
!2960 = !DILocation(line: 189, column: 19, scope: !2851)
!2961 = !DILocation(line: 190, column: 1, scope: !2851)
!2962 = distinct !DISubprogram(name: "mbuiter_multi_reloc", scope: !1884, file: !1884, line: 193, type: !2963, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2854, !2553}
!2965 = !{!2966, !2967}
!2966 = !DILocalVariable(name: "iter", arg: 1, scope: !2962, file: !1884, line: 193, type: !2854)
!2967 = !DILocalVariable(name: "ptrdiff", arg: 2, scope: !2962, file: !1884, line: 193, type: !2553)
!2968 = !DILocation(line: 193, column: 44, scope: !2962)
!2969 = !DILocation(line: 193, column: 60, scope: !2962)
!2970 = !DILocation(line: 195, column: 13, scope: !2962)
!2971 = !DILocation(line: 195, column: 17, scope: !2962)
!2972 = !DILocation(line: 196, column: 1, scope: !2962)
!2973 = distinct !DISubprogram(name: "mbuiter_multi_copy", scope: !1884, file: !1884, line: 199, type: !2974, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !2978)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2854, !2976}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2855)
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "new_iter", arg: 1, scope: !2973, file: !1884, line: 199, type: !2854)
!2980 = !DILocalVariable(name: "old_iter", arg: 2, scope: !2973, file: !1884, line: 199, type: !2976)
!2981 = !DILocation(line: 199, column: 43, scope: !2973)
!2982 = !DILocation(line: 199, column: 81, scope: !2973)
!2983 = !DILocation(line: 201, column: 39, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2973, file: !1884, line: 201, column: 7)
!2985 = !DILocation(line: 201, column: 18, scope: !2984)
!2986 = !DILocation(line: 201, column: 27, scope: !2984)
!2987 = !DILocation(line: 0, scope: !2984)
!2988 = !DILocation(line: 201, column: 7, scope: !2973)
!2989 = !DILocation(line: 202, column: 42, scope: !2984)
!2990 = !DILocation(line: 202, column: 5, scope: !2984)
!2991 = !DILocation(line: 204, column: 5, scope: !2984)
!2992 = !DILocation(line: 205, column: 35, scope: !2973)
!2993 = !DILocation(line: 205, column: 13, scope: !2973)
!2994 = !DILocation(line: 205, column: 23, scope: !2973)
!2995 = !DILocalVariable(name: "new_mbc", arg: 1, scope: !2996, file: !1907, line: 268, type: !2999)
!2996 = distinct !DISubprogram(name: "mb_copy", scope: !1907, file: !1907, line: 268, type: !2997, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !3003)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !2999, !3001}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbchar_t", file: !1907, line: 181, baseType: !2871)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3003 = !{!2995, !3004}
!3004 = !DILocalVariable(name: "old_mbc", arg: 2, scope: !2996, file: !1907, line: 268, type: !3001)
!3005 = !DILocation(line: 268, column: 20, scope: !2996, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 206, column: 3, scope: !2973)
!3007 = !DILocation(line: 268, column: 45, scope: !2996, inlinedAt: !3006)
!3008 = !DILocation(line: 270, column: 16, scope: !3009, inlinedAt: !3006)
!3009 = distinct !DILexicalBlock(scope: !2996, file: !1907, line: 270, column: 7)
!3010 = !{!1943, !721, i64 0}
!3011 = !DILocation(line: 270, column: 24, scope: !3009, inlinedAt: !3006)
!3012 = !DILocation(line: 270, column: 20, scope: !3009, inlinedAt: !3006)
!3013 = !DILocation(line: 270, column: 7, scope: !2996, inlinedAt: !3006)
!3014 = !DILocation(line: 272, column: 16, scope: !3015, inlinedAt: !3006)
!3015 = distinct !DILexicalBlock(scope: !3009, file: !1907, line: 271, column: 5)
!3016 = !DILocation(line: 272, column: 60, scope: !3015, inlinedAt: !3006)
!3017 = !{!1943, !737, i64 8}
!3018 = !DILocation(line: 272, column: 7, scope: !3015, inlinedAt: !3006)
!3019 = !DILocation(line: 274, column: 5, scope: !3015, inlinedAt: !3006)
!3020 = !DILocation(line: 277, column: 29, scope: !2996, inlinedAt: !3006)
!3021 = !DILocation(line: 276, column: 14, scope: !3009, inlinedAt: !3006)
!3022 = !DILocation(line: 276, column: 18, scope: !3009, inlinedAt: !3006)
!3023 = !DILocation(line: 277, column: 12, scope: !2996, inlinedAt: !3006)
!3024 = !DILocation(line: 277, column: 18, scope: !2996, inlinedAt: !3006)
!3025 = !DILocation(line: 278, column: 37, scope: !3026, inlinedAt: !3006)
!3026 = distinct !DILexicalBlock(scope: !2996, file: !1907, line: 278, column: 7)
!3027 = !{!1943, !1941, i64 16}
!3028 = !DILocation(line: 278, column: 17, scope: !3026, inlinedAt: !3006)
!3029 = !DILocation(line: 278, column: 26, scope: !3026, inlinedAt: !3006)
!3030 = !DILocation(line: 278, column: 7, scope: !2996, inlinedAt: !3006)
!3031 = !DILocation(line: 279, column: 28, scope: !3026, inlinedAt: !3006)
!3032 = !{!1943, !736, i64 20}
!3033 = !DILocation(line: 279, column: 14, scope: !3026, inlinedAt: !3006)
!3034 = !DILocation(line: 279, column: 17, scope: !3026, inlinedAt: !3006)
!3035 = !DILocation(line: 279, column: 5, scope: !3026, inlinedAt: !3006)
!3036 = !DILocation(line: 207, column: 1, scope: !2973)
!3037 = distinct !DISubprogram(name: "set_program_name", scope: !148, file: !148, line: 39, type: !695, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !144, retainedNodes: !3038)
!3038 = !{!3039, !3040, !3041}
!3039 = !DILocalVariable(name: "argv0", arg: 1, scope: !3037, file: !148, line: 39, type: !100)
!3040 = !DILocalVariable(name: "slash", scope: !3037, file: !148, line: 46, type: !100)
!3041 = !DILocalVariable(name: "base", scope: !3037, file: !148, line: 47, type: !100)
!3042 = !DILocation(line: 39, column: 31, scope: !3037)
!3043 = !DILocation(line: 51, column: 13, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3037, file: !148, line: 51, column: 7)
!3045 = !DILocation(line: 51, column: 7, scope: !3037)
!3046 = !DILocation(line: 55, column: 14, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !148, line: 52, column: 5)
!3048 = !DILocation(line: 54, column: 7, scope: !3047)
!3049 = !DILocation(line: 56, column: 7, scope: !3047)
!3050 = !DILocation(line: 59, column: 11, scope: !3037)
!3051 = !DILocation(line: 46, column: 15, scope: !3037)
!3052 = !DILocation(line: 60, column: 17, scope: !3037)
!3053 = !DILocation(line: 60, column: 33, scope: !3037)
!3054 = !DILocation(line: 60, column: 11, scope: !3037)
!3055 = !DILocation(line: 47, column: 15, scope: !3037)
!3056 = !DILocation(line: 61, column: 12, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3037, file: !148, line: 61, column: 7)
!3058 = !DILocation(line: 61, column: 20, scope: !3057)
!3059 = !DILocation(line: 61, column: 25, scope: !3057)
!3060 = !DILocation(line: 61, column: 42, scope: !3057)
!3061 = !DILocation(line: 61, column: 28, scope: !3057)
!3062 = !DILocation(line: 61, column: 61, scope: !3057)
!3063 = !DILocation(line: 61, column: 7, scope: !3037)
!3064 = !DILocation(line: 64, column: 11, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !148, line: 64, column: 11)
!3066 = distinct !DILexicalBlock(scope: !3057, file: !148, line: 62, column: 5)
!3067 = !DILocation(line: 64, column: 36, scope: !3065)
!3068 = !DILocation(line: 64, column: 11, scope: !3066)
!3069 = !DILocation(line: 66, column: 24, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3065, file: !148, line: 65, column: 9)
!3071 = !DILocation(line: 70, column: 41, scope: !3070)
!3072 = !DILocation(line: 72, column: 9, scope: !3070)
!3073 = !DILocation(line: 84, column: 16, scope: !3037)
!3074 = !DILocation(line: 90, column: 27, scope: !3037)
!3075 = !DILocation(line: 92, column: 1, scope: !3037)
!3076 = distinct !DISubprogram(name: "clone_quoting_options", scope: !179, file: !179, line: 122, type: !3077, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3080)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!3079, !3079}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3080 = !{!3081, !3082, !3083}
!3081 = !DILocalVariable(name: "o", arg: 1, scope: !3076, file: !179, line: 122, type: !3079)
!3082 = !DILocalVariable(name: "e", scope: !3076, file: !179, line: 124, type: !49)
!3083 = !DILocalVariable(name: "p", scope: !3076, file: !179, line: 125, type: !3079)
!3084 = !DILocation(line: 122, column: 48, scope: !3076)
!3085 = !DILocation(line: 124, column: 11, scope: !3076)
!3086 = !DILocation(line: 124, column: 7, scope: !3076)
!3087 = !DILocation(line: 125, column: 40, scope: !3076)
!3088 = !DILocation(line: 125, column: 31, scope: !3076)
!3089 = !DILocation(line: 125, column: 27, scope: !3076)
!3090 = !DILocation(line: 127, column: 9, scope: !3076)
!3091 = !DILocation(line: 128, column: 3, scope: !3076)
!3092 = distinct !DISubprogram(name: "get_quoting_style", scope: !179, file: !179, line: 133, type: !3093, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3097)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!14, !3095}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!3097 = !{!3098}
!3098 = !DILocalVariable(name: "o", arg: 1, scope: !3092, file: !179, line: 133, type: !3095)
!3099 = !DILocation(line: 133, column: 50, scope: !3092)
!3100 = !DILocation(line: 135, column: 11, scope: !3092)
!3101 = !DILocation(line: 135, column: 46, scope: !3092)
!3102 = !{!3103, !722, i64 0}
!3103 = !{!"quoting_options", !722, i64 0, !736, i64 4, !722, i64 8, !721, i64 40, !721, i64 48}
!3104 = !DILocation(line: 135, column: 3, scope: !3092)
!3105 = distinct !DISubprogram(name: "set_quoting_style", scope: !179, file: !179, line: 141, type: !3106, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !3079, !14}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "o", arg: 1, scope: !3105, file: !179, line: 141, type: !3079)
!3110 = !DILocalVariable(name: "s", arg: 2, scope: !3105, file: !179, line: 141, type: !14)
!3111 = !DILocation(line: 141, column: 44, scope: !3105)
!3112 = !DILocation(line: 141, column: 66, scope: !3105)
!3113 = !DILocation(line: 143, column: 4, scope: !3105)
!3114 = !DILocation(line: 143, column: 39, scope: !3105)
!3115 = !DILocation(line: 143, column: 45, scope: !3105)
!3116 = !DILocation(line: 144, column: 1, scope: !3105)
!3117 = distinct !DISubprogram(name: "set_char_quoting", scope: !179, file: !179, line: 152, type: !3118, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!49, !3079, !59, !49}
!3120 = !{!3121, !3122, !3123, !3124, !3125, !3127, !3128}
!3121 = !DILocalVariable(name: "o", arg: 1, scope: !3117, file: !179, line: 152, type: !3079)
!3122 = !DILocalVariable(name: "c", arg: 2, scope: !3117, file: !179, line: 152, type: !59)
!3123 = !DILocalVariable(name: "i", arg: 3, scope: !3117, file: !179, line: 152, type: !49)
!3124 = !DILocalVariable(name: "uc", scope: !3117, file: !179, line: 154, type: !103)
!3125 = !DILocalVariable(name: "p", scope: !3117, file: !179, line: 155, type: !3126)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!3127 = !DILocalVariable(name: "shift", scope: !3117, file: !179, line: 157, type: !49)
!3128 = !DILocalVariable(name: "r", scope: !3117, file: !179, line: 158, type: !49)
!3129 = !DILocation(line: 152, column: 43, scope: !3117)
!3130 = !DILocation(line: 152, column: 51, scope: !3117)
!3131 = !DILocation(line: 152, column: 58, scope: !3117)
!3132 = !DILocation(line: 154, column: 17, scope: !3117)
!3133 = !DILocation(line: 156, column: 6, scope: !3117)
!3134 = !DILocation(line: 156, column: 62, scope: !3117)
!3135 = !DILocation(line: 156, column: 57, scope: !3117)
!3136 = !DILocation(line: 155, column: 17, scope: !3117)
!3137 = !DILocation(line: 157, column: 15, scope: !3117)
!3138 = !DILocation(line: 157, column: 7, scope: !3117)
!3139 = !DILocation(line: 158, column: 12, scope: !3117)
!3140 = !DILocation(line: 158, column: 15, scope: !3117)
!3141 = !DILocation(line: 158, column: 25, scope: !3117)
!3142 = !DILocation(line: 158, column: 7, scope: !3117)
!3143 = !DILocation(line: 159, column: 13, scope: !3117)
!3144 = !DILocation(line: 159, column: 18, scope: !3117)
!3145 = !DILocation(line: 159, column: 23, scope: !3117)
!3146 = !DILocation(line: 159, column: 6, scope: !3117)
!3147 = !DILocation(line: 160, column: 3, scope: !3117)
!3148 = distinct !DISubprogram(name: "set_quoting_flags", scope: !179, file: !179, line: 168, type: !3149, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!49, !3079, !49}
!3151 = !{!3152, !3153, !3154}
!3152 = !DILocalVariable(name: "o", arg: 1, scope: !3148, file: !179, line: 168, type: !3079)
!3153 = !DILocalVariable(name: "i", arg: 2, scope: !3148, file: !179, line: 168, type: !49)
!3154 = !DILocalVariable(name: "r", scope: !3148, file: !179, line: 170, type: !49)
!3155 = !DILocation(line: 168, column: 44, scope: !3148)
!3156 = !DILocation(line: 168, column: 51, scope: !3148)
!3157 = !DILocation(line: 171, column: 8, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3148, file: !179, line: 171, column: 7)
!3159 = !DILocation(line: 171, column: 7, scope: !3148)
!3160 = !DILocation(line: 173, column: 10, scope: !3148)
!3161 = !{!3103, !736, i64 4}
!3162 = !DILocation(line: 170, column: 7, scope: !3148)
!3163 = !DILocation(line: 174, column: 12, scope: !3148)
!3164 = !DILocation(line: 175, column: 3, scope: !3148)
!3165 = distinct !DISubprogram(name: "set_custom_quoting", scope: !179, file: !179, line: 179, type: !3166, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !3079, !100, !100}
!3168 = !{!3169, !3170, !3171}
!3169 = !DILocalVariable(name: "o", arg: 1, scope: !3165, file: !179, line: 179, type: !3079)
!3170 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3165, file: !179, line: 180, type: !100)
!3171 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3165, file: !179, line: 180, type: !100)
!3172 = !DILocation(line: 179, column: 45, scope: !3165)
!3173 = !DILocation(line: 180, column: 33, scope: !3165)
!3174 = !DILocation(line: 180, column: 57, scope: !3165)
!3175 = !DILocation(line: 182, column: 8, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3165, file: !179, line: 182, column: 7)
!3177 = !DILocation(line: 182, column: 7, scope: !3165)
!3178 = !DILocation(line: 184, column: 6, scope: !3165)
!3179 = !DILocation(line: 184, column: 12, scope: !3165)
!3180 = !DILocation(line: 185, column: 8, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3165, file: !179, line: 185, column: 7)
!3182 = !DILocation(line: 185, column: 23, scope: !3181)
!3183 = !DILocation(line: 185, column: 19, scope: !3181)
!3184 = !DILocation(line: 186, column: 5, scope: !3181)
!3185 = !DILocation(line: 187, column: 6, scope: !3165)
!3186 = !DILocation(line: 187, column: 17, scope: !3165)
!3187 = !{!3103, !721, i64 40}
!3188 = !DILocation(line: 188, column: 6, scope: !3165)
!3189 = !DILocation(line: 188, column: 18, scope: !3165)
!3190 = !{!3103, !721, i64 48}
!3191 = !DILocation(line: 189, column: 1, scope: !3165)
!3192 = distinct !DISubprogram(name: "quotearg_buffer", scope: !179, file: !179, line: 784, type: !3193, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!104, !58, !104, !100, !104, !3095}
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203}
!3196 = !DILocalVariable(name: "buffer", arg: 1, scope: !3192, file: !179, line: 784, type: !58)
!3197 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3192, file: !179, line: 784, type: !104)
!3198 = !DILocalVariable(name: "arg", arg: 3, scope: !3192, file: !179, line: 785, type: !100)
!3199 = !DILocalVariable(name: "argsize", arg: 4, scope: !3192, file: !179, line: 785, type: !104)
!3200 = !DILocalVariable(name: "o", arg: 5, scope: !3192, file: !179, line: 786, type: !3095)
!3201 = !DILocalVariable(name: "p", scope: !3192, file: !179, line: 788, type: !3095)
!3202 = !DILocalVariable(name: "e", scope: !3192, file: !179, line: 789, type: !49)
!3203 = !DILocalVariable(name: "r", scope: !3192, file: !179, line: 790, type: !104)
!3204 = !DILocation(line: 784, column: 24, scope: !3192)
!3205 = !DILocation(line: 784, column: 39, scope: !3192)
!3206 = !DILocation(line: 785, column: 30, scope: !3192)
!3207 = !DILocation(line: 785, column: 42, scope: !3192)
!3208 = !DILocation(line: 786, column: 48, scope: !3192)
!3209 = !DILocation(line: 788, column: 37, scope: !3192)
!3210 = !DILocation(line: 788, column: 33, scope: !3192)
!3211 = !DILocation(line: 789, column: 11, scope: !3192)
!3212 = !DILocation(line: 789, column: 7, scope: !3192)
!3213 = !DILocation(line: 791, column: 43, scope: !3192)
!3214 = !DILocation(line: 791, column: 53, scope: !3192)
!3215 = !DILocation(line: 791, column: 60, scope: !3192)
!3216 = !DILocation(line: 792, column: 43, scope: !3192)
!3217 = !DILocation(line: 792, column: 58, scope: !3192)
!3218 = !DILocation(line: 790, column: 14, scope: !3192)
!3219 = !DILocation(line: 790, column: 10, scope: !3192)
!3220 = !DILocation(line: 793, column: 9, scope: !3192)
!3221 = !DILocation(line: 794, column: 3, scope: !3192)
!3222 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !179, file: !179, line: 256, type: !3223, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3226)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!104, !58, !104, !100, !104, !14, !49, !3225, !100, !100}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3251, !3252, !3253, !3254, !3255, !3258, !3259, !3272, !3274, !3275, !3282}
!3227 = !DILocalVariable(name: "buffer", arg: 1, scope: !3222, file: !179, line: 256, type: !58)
!3228 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3222, file: !179, line: 256, type: !104)
!3229 = !DILocalVariable(name: "arg", arg: 3, scope: !3222, file: !179, line: 257, type: !100)
!3230 = !DILocalVariable(name: "argsize", arg: 4, scope: !3222, file: !179, line: 257, type: !104)
!3231 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3222, file: !179, line: 258, type: !14)
!3232 = !DILocalVariable(name: "flags", arg: 6, scope: !3222, file: !179, line: 258, type: !49)
!3233 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3222, file: !179, line: 259, type: !3225)
!3234 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3222, file: !179, line: 260, type: !100)
!3235 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3222, file: !179, line: 261, type: !100)
!3236 = !DILocalVariable(name: "i", scope: !3222, file: !179, line: 263, type: !104)
!3237 = !DILocalVariable(name: "len", scope: !3222, file: !179, line: 264, type: !104)
!3238 = !DILocalVariable(name: "orig_buffersize", scope: !3222, file: !179, line: 265, type: !104)
!3239 = !DILocalVariable(name: "quote_string", scope: !3222, file: !179, line: 266, type: !100)
!3240 = !DILocalVariable(name: "quote_string_len", scope: !3222, file: !179, line: 267, type: !104)
!3241 = !DILocalVariable(name: "backslash_escapes", scope: !3222, file: !179, line: 268, type: !60)
!3242 = !DILocalVariable(name: "unibyte_locale", scope: !3222, file: !179, line: 269, type: !60)
!3243 = !DILocalVariable(name: "elide_outer_quotes", scope: !3222, file: !179, line: 270, type: !60)
!3244 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3222, file: !179, line: 271, type: !60)
!3245 = !DILocalVariable(name: "encountered_single_quote", scope: !3222, file: !179, line: 272, type: !60)
!3246 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3222, file: !179, line: 273, type: !60)
!3247 = !DILocalVariable(name: "c", scope: !3248, file: !179, line: 402, type: !103)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !179, line: 401, column: 5)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !179, line: 400, column: 3)
!3250 = distinct !DILexicalBlock(scope: !3222, file: !179, line: 400, column: 3)
!3251 = !DILocalVariable(name: "esc", scope: !3248, file: !179, line: 403, type: !103)
!3252 = !DILocalVariable(name: "is_right_quote", scope: !3248, file: !179, line: 404, type: !60)
!3253 = !DILocalVariable(name: "escaping", scope: !3248, file: !179, line: 405, type: !60)
!3254 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3248, file: !179, line: 406, type: !60)
!3255 = !DILocalVariable(name: "m", scope: !3256, file: !179, line: 610, type: !104)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 608, column: 11)
!3257 = distinct !DILexicalBlock(scope: !3248, file: !179, line: 426, column: 9)
!3258 = !DILocalVariable(name: "printable", scope: !3256, file: !179, line: 612, type: !60)
!3259 = !DILocalVariable(name: "mbstate", scope: !3260, file: !179, line: 621, type: !3262)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !179, line: 620, column: 15)
!3261 = distinct !DILexicalBlock(scope: !3256, file: !179, line: 614, column: 17)
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1890, line: 6, baseType: !3263)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1892, line: 21, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1892, line: 13, size: 64, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3264, file: !1892, line: 15, baseType: !49, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3264, file: !1892, line: 20, baseType: !3268, size: 32, offset: 32)
!3268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !1892, line: 16, size: 32, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3268, file: !1892, line: 18, baseType: !6, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3268, file: !1892, line: 19, baseType: !1901, size: 32)
!3272 = !DILocalVariable(name: "w", scope: !3273, file: !179, line: 631, type: !1913)
!3273 = distinct !DILexicalBlock(scope: !3260, file: !179, line: 630, column: 19)
!3274 = !DILocalVariable(name: "bytes", scope: !3273, file: !179, line: 632, type: !104)
!3275 = !DILocalVariable(name: "j", scope: !3276, file: !179, line: 657, type: !104)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !179, line: 656, column: 27)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !179, line: 654, column: 29)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !179, line: 649, column: 23)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !179, line: 641, column: 30)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !179, line: 636, column: 30)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !179, line: 634, column: 25)
!3282 = !DILocalVariable(name: "ilim", scope: !3283, file: !179, line: 684, type: !104)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !179, line: 681, column: 15)
!3284 = distinct !DILexicalBlock(scope: !3256, file: !179, line: 680, column: 17)
!3285 = !DILocation(line: 256, column: 33, scope: !3222)
!3286 = !DILocation(line: 256, column: 48, scope: !3222)
!3287 = !DILocation(line: 257, column: 39, scope: !3222)
!3288 = !DILocation(line: 257, column: 51, scope: !3222)
!3289 = !DILocation(line: 258, column: 46, scope: !3222)
!3290 = !DILocation(line: 258, column: 65, scope: !3222)
!3291 = !DILocation(line: 259, column: 47, scope: !3222)
!3292 = !DILocation(line: 260, column: 39, scope: !3222)
!3293 = !DILocation(line: 261, column: 39, scope: !3222)
!3294 = !DILocation(line: 264, column: 10, scope: !3222)
!3295 = !DILocation(line: 265, column: 10, scope: !3222)
!3296 = !DILocation(line: 266, column: 15, scope: !3222)
!3297 = !DILocation(line: 267, column: 10, scope: !3222)
!3298 = !DILocation(line: 268, column: 8, scope: !3222)
!3299 = !DILocation(line: 269, column: 25, scope: !3222)
!3300 = !DILocation(line: 269, column: 36, scope: !3222)
!3301 = !DILocation(line: 270, column: 8, scope: !3222)
!3302 = !DILocation(line: 271, column: 8, scope: !3222)
!3303 = !DILocation(line: 272, column: 8, scope: !3222)
!3304 = !DILocation(line: 273, column: 8, scope: !3222)
!3305 = !DILocation(line: 273, column: 3, scope: !3222)
!3306 = !DILocation(line: 0, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3222, file: !179, line: 317, column: 5)
!3308 = !DILocation(line: 316, column: 3, scope: !3222)
!3309 = !DILocation(line: 323, column: 11, scope: !3307)
!3310 = !DILocation(line: 323, column: 12, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3307, file: !179, line: 323, column: 11)
!3312 = !DILocation(line: 324, column: 9, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !179, line: 324, column: 9)
!3314 = distinct !DILexicalBlock(scope: !3311, file: !179, line: 324, column: 9)
!3315 = !DILocation(line: 324, column: 9, scope: !3314)
!3316 = !DILocation(line: 362, column: 26, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !179, line: 340, column: 11)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !179, line: 339, column: 13)
!3319 = distinct !DILexicalBlock(scope: !3307, file: !179, line: 338, column: 7)
!3320 = !DILocation(line: 363, column: 27, scope: !3317)
!3321 = !DILocation(line: 364, column: 11, scope: !3317)
!3322 = !DILocation(line: 365, column: 14, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3319, file: !179, line: 365, column: 13)
!3324 = !DILocation(line: 365, column: 13, scope: !3319)
!3325 = !DILocation(line: 366, column: 43, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !179, line: 366, column: 11)
!3327 = distinct !DILexicalBlock(scope: !3323, file: !179, line: 366, column: 11)
!3328 = !DILocation(line: 366, column: 11, scope: !3327)
!3329 = !DILocation(line: 367, column: 13, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !179, line: 367, column: 13)
!3331 = distinct !DILexicalBlock(scope: !3326, file: !179, line: 367, column: 13)
!3332 = !DILocation(line: 367, column: 13, scope: !3331)
!3333 = !DILocation(line: 366, column: 70, scope: !3326)
!3334 = distinct !{!3334, !3328, !3335}
!3335 = !DILocation(line: 367, column: 13, scope: !3327)
!3336 = !DILocation(line: 370, column: 28, scope: !3319)
!3337 = !DILocation(line: 372, column: 7, scope: !3307)
!3338 = !DILocation(line: 376, column: 7, scope: !3307)
!3339 = !DILocation(line: 379, column: 7, scope: !3307)
!3340 = !DILocation(line: 381, column: 12, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3307, file: !179, line: 381, column: 11)
!3342 = !DILocation(line: 381, column: 11, scope: !3307)
!3343 = !DILocation(line: 0, scope: !3341)
!3344 = !DILocation(line: 386, column: 12, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3307, file: !179, line: 386, column: 11)
!3346 = !DILocation(line: 386, column: 11, scope: !3307)
!3347 = !DILocation(line: 387, column: 9, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !179, line: 387, column: 9)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !179, line: 387, column: 9)
!3350 = !DILocation(line: 387, column: 9, scope: !3349)
!3351 = !DILocation(line: 394, column: 7, scope: !3307)
!3352 = !DILocation(line: 397, column: 7, scope: !3307)
!3353 = !DILocation(line: 0, scope: !3222)
!3354 = !DILocation(line: 263, column: 10, scope: !3222)
!3355 = !DILocation(line: 400, column: 8, scope: !3250)
!3356 = !DILocation(line: 0, scope: !3249)
!3357 = !DILocation(line: 400, column: 27, scope: !3249)
!3358 = !DILocation(line: 400, column: 19, scope: !3249)
!3359 = !DILocation(line: 400, column: 41, scope: !3249)
!3360 = !DILocation(line: 400, column: 48, scope: !3249)
!3361 = !DILocation(line: 400, column: 3, scope: !3250)
!3362 = !DILocation(line: 400, column: 60, scope: !3249)
!3363 = !DILocation(line: 404, column: 12, scope: !3248)
!3364 = !DILocation(line: 405, column: 12, scope: !3248)
!3365 = !DILocation(line: 406, column: 12, scope: !3248)
!3366 = !DILocation(line: 409, column: 11, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3248, file: !179, line: 408, column: 11)
!3368 = !DILocation(line: 411, column: 17, scope: !3367)
!3369 = !DILocation(line: 412, column: 39, scope: !3367)
!3370 = !DILocation(line: 416, column: 32, scope: !3367)
!3371 = !DILocation(line: 412, column: 19, scope: !3367)
!3372 = !DILocation(line: 412, column: 15, scope: !3367)
!3373 = !DILocation(line: 417, column: 11, scope: !3367)
!3374 = !DILocation(line: 417, column: 26, scope: !3367)
!3375 = !DILocation(line: 417, column: 14, scope: !3367)
!3376 = !DILocation(line: 417, column: 63, scope: !3367)
!3377 = !DILocation(line: 408, column: 11, scope: !3248)
!3378 = !DILocation(line: 0, scope: !3248)
!3379 = !DILocation(line: 424, column: 11, scope: !3248)
!3380 = !DILocation(line: 402, column: 21, scope: !3248)
!3381 = !DILocation(line: 425, column: 7, scope: !3248)
!3382 = !DILocation(line: 428, column: 15, scope: !3257)
!3383 = !DILocation(line: 430, column: 15, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !179, line: 430, column: 15)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !179, line: 429, column: 13)
!3386 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 428, column: 15)
!3387 = !DILocation(line: 430, column: 15, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !179, line: 430, column: 15)
!3389 = !DILocation(line: 430, column: 15, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !179, line: 430, column: 15)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !179, line: 430, column: 15)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !179, line: 430, column: 15)
!3393 = !DILocation(line: 430, column: 15, scope: !3391)
!3394 = !DILocation(line: 430, column: 15, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !179, line: 430, column: 15)
!3396 = distinct !DILexicalBlock(scope: !3392, file: !179, line: 430, column: 15)
!3397 = !DILocation(line: 430, column: 15, scope: !3396)
!3398 = !DILocation(line: 430, column: 15, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !179, line: 430, column: 15)
!3400 = distinct !DILexicalBlock(scope: !3392, file: !179, line: 430, column: 15)
!3401 = !DILocation(line: 430, column: 15, scope: !3400)
!3402 = !DILocation(line: 430, column: 15, scope: !3392)
!3403 = !DILocation(line: 430, column: 15, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !179, line: 430, column: 15)
!3405 = distinct !DILexicalBlock(scope: !3384, file: !179, line: 430, column: 15)
!3406 = !DILocation(line: 430, column: 15, scope: !3405)
!3407 = !DILocation(line: 438, column: 19, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3385, file: !179, line: 437, column: 19)
!3409 = !DILocation(line: 438, column: 24, scope: !3408)
!3410 = !DILocation(line: 438, column: 28, scope: !3408)
!3411 = !DILocation(line: 438, column: 38, scope: !3408)
!3412 = !DILocation(line: 438, column: 48, scope: !3408)
!3413 = !DILocation(line: 438, column: 59, scope: !3408)
!3414 = !DILocation(line: 440, column: 19, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !179, line: 440, column: 19)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !179, line: 440, column: 19)
!3417 = distinct !DILexicalBlock(scope: !3408, file: !179, line: 439, column: 17)
!3418 = !DILocation(line: 440, column: 19, scope: !3416)
!3419 = !DILocation(line: 441, column: 19, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !179, line: 441, column: 19)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !179, line: 441, column: 19)
!3422 = !DILocation(line: 441, column: 19, scope: !3421)
!3423 = !DILocation(line: 442, column: 17, scope: !3417)
!3424 = !DILocation(line: 449, column: 20, scope: !3386)
!3425 = !DILocation(line: 454, column: 11, scope: !3257)
!3426 = !DILocation(line: 457, column: 19, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 455, column: 13)
!3428 = !DILocation(line: 463, column: 19, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3427, file: !179, line: 462, column: 19)
!3430 = !DILocation(line: 463, column: 24, scope: !3429)
!3431 = !DILocation(line: 463, column: 28, scope: !3429)
!3432 = !DILocation(line: 463, column: 38, scope: !3429)
!3433 = !DILocation(line: 463, column: 47, scope: !3429)
!3434 = !DILocation(line: 463, column: 41, scope: !3429)
!3435 = !DILocation(line: 463, column: 52, scope: !3429)
!3436 = !DILocation(line: 462, column: 19, scope: !3427)
!3437 = !DILocation(line: 464, column: 25, scope: !3429)
!3438 = !DILocation(line: 464, column: 17, scope: !3429)
!3439 = !DILocation(line: 471, column: 25, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3429, file: !179, line: 465, column: 19)
!3441 = !DILocation(line: 475, column: 21, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !179, line: 475, column: 21)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !179, line: 475, column: 21)
!3444 = !DILocation(line: 475, column: 21, scope: !3443)
!3445 = !DILocation(line: 476, column: 21, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !179, line: 476, column: 21)
!3447 = distinct !DILexicalBlock(scope: !3440, file: !179, line: 476, column: 21)
!3448 = !DILocation(line: 476, column: 21, scope: !3447)
!3449 = !DILocation(line: 477, column: 21, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !179, line: 477, column: 21)
!3451 = distinct !DILexicalBlock(scope: !3440, file: !179, line: 477, column: 21)
!3452 = !DILocation(line: 477, column: 21, scope: !3451)
!3453 = !DILocation(line: 478, column: 21, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !179, line: 478, column: 21)
!3455 = distinct !DILexicalBlock(scope: !3440, file: !179, line: 478, column: 21)
!3456 = !DILocation(line: 478, column: 21, scope: !3455)
!3457 = !DILocation(line: 479, column: 21, scope: !3440)
!3458 = !DILocation(line: 403, column: 21, scope: !3248)
!3459 = !DILocation(line: 492, column: 31, scope: !3257)
!3460 = !DILocation(line: 493, column: 31, scope: !3257)
!3461 = !DILocation(line: 495, column: 31, scope: !3257)
!3462 = !DILocation(line: 496, column: 31, scope: !3257)
!3463 = !DILocation(line: 497, column: 31, scope: !3257)
!3464 = !DILocation(line: 500, column: 15, scope: !3257)
!3465 = !DILocation(line: 502, column: 19, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !179, line: 501, column: 13)
!3467 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 500, column: 15)
!3468 = !DILocation(line: 509, column: 33, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 509, column: 15)
!3470 = !DILocation(line: 0, scope: !3257)
!3471 = !DILocation(line: 514, column: 15, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 513, column: 15)
!3473 = !DILocation(line: 518, column: 15, scope: !3257)
!3474 = !DILocation(line: 526, column: 26, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 526, column: 15)
!3476 = !DILocation(line: 526, column: 15, scope: !3257)
!3477 = !DILocation(line: 526, column: 40, scope: !3475)
!3478 = !DILocation(line: 526, column: 47, scope: !3475)
!3479 = !DILocation(line: 530, column: 17, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 530, column: 15)
!3481 = !DILocation(line: 526, column: 18, scope: !3475)
!3482 = !DILocation(line: 526, column: 65, scope: !3475)
!3483 = !DILocation(line: 530, column: 15, scope: !3257)
!3484 = !DILocation(line: 535, column: 11, scope: !3257)
!3485 = !DILocation(line: 549, column: 15, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 548, column: 15)
!3487 = !DILocation(line: 556, column: 15, scope: !3257)
!3488 = !DILocation(line: 558, column: 19, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !179, line: 557, column: 13)
!3490 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 556, column: 15)
!3491 = !DILocation(line: 561, column: 19, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3489, file: !179, line: 561, column: 19)
!3493 = !DILocation(line: 561, column: 35, scope: !3492)
!3494 = !DILocation(line: 561, column: 30, scope: !3492)
!3495 = !DILocation(line: 570, column: 15, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !179, line: 570, column: 15)
!3497 = distinct !DILexicalBlock(scope: !3489, file: !179, line: 570, column: 15)
!3498 = !DILocation(line: 570, column: 15, scope: !3497)
!3499 = !DILocation(line: 571, column: 15, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !179, line: 571, column: 15)
!3501 = distinct !DILexicalBlock(scope: !3489, file: !179, line: 571, column: 15)
!3502 = !DILocation(line: 571, column: 15, scope: !3501)
!3503 = !DILocation(line: 572, column: 15, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !179, line: 572, column: 15)
!3505 = distinct !DILexicalBlock(scope: !3489, file: !179, line: 572, column: 15)
!3506 = !DILocation(line: 572, column: 15, scope: !3505)
!3507 = !DILocation(line: 574, column: 13, scope: !3489)
!3508 = !DILocation(line: 614, column: 17, scope: !3256)
!3509 = !DILocation(line: 610, column: 20, scope: !3256)
!3510 = !DILocation(line: 617, column: 29, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3261, file: !179, line: 615, column: 15)
!3512 = !{!738, !738, i64 0}
!3513 = !DILocation(line: 617, column: 27, scope: !3511)
!3514 = !DILocation(line: 612, column: 18, scope: !3256)
!3515 = !DILocation(line: 618, column: 15, scope: !3511)
!3516 = !DILocation(line: 621, column: 17, scope: !3260)
!3517 = !DILocation(line: 622, column: 17, scope: !3260)
!3518 = !DILocation(line: 626, column: 29, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3260, file: !179, line: 626, column: 21)
!3520 = !DILocation(line: 626, column: 21, scope: !3260)
!3521 = !DILocation(line: 627, column: 29, scope: !3519)
!3522 = !DILocation(line: 627, column: 19, scope: !3519)
!3523 = !DILocation(line: 0, scope: !3367)
!3524 = !DILocation(line: 629, column: 17, scope: !3260)
!3525 = !DILocation(line: 624, column: 19, scope: !3260)
!3526 = !DILocation(line: 625, column: 27, scope: !3260)
!3527 = !DILocation(line: 631, column: 21, scope: !3273)
!3528 = !DILocation(line: 632, column: 56, scope: !3273)
!3529 = !DILocation(line: 632, column: 50, scope: !3273)
!3530 = !DILocation(line: 633, column: 53, scope: !3273)
!3531 = !DILocation(line: 621, column: 27, scope: !3260)
!3532 = !DILocation(line: 631, column: 29, scope: !3273)
!3533 = !DILocation(line: 632, column: 36, scope: !3273)
!3534 = !DILocation(line: 632, column: 28, scope: !3273)
!3535 = !DILocation(line: 634, column: 25, scope: !3273)
!3536 = !DILocation(line: 644, column: 38, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3279, file: !179, line: 642, column: 23)
!3538 = !DILocation(line: 644, column: 48, scope: !3537)
!3539 = !DILocation(line: 644, column: 51, scope: !3537)
!3540 = !DILocation(line: 644, column: 25, scope: !3537)
!3541 = !DILocation(line: 645, column: 28, scope: !3537)
!3542 = !DILocation(line: 644, column: 34, scope: !3537)
!3543 = distinct !{!3543, !3540, !3541}
!3544 = !DILocation(line: 658, column: 43, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !179, line: 658, column: 29)
!3546 = distinct !DILexicalBlock(scope: !3276, file: !179, line: 658, column: 29)
!3547 = !DILocation(line: 655, column: 29, scope: !3277)
!3548 = !DILocation(line: 657, column: 36, scope: !3276)
!3549 = !DILocation(line: 659, column: 49, scope: !3545)
!3550 = !DILocation(line: 659, column: 39, scope: !3545)
!3551 = !DILocation(line: 659, column: 31, scope: !3545)
!3552 = !DILocation(line: 658, column: 53, scope: !3545)
!3553 = !DILocation(line: 658, column: 29, scope: !3546)
!3554 = distinct !{!3554, !3553, !3555}
!3555 = !DILocation(line: 667, column: 33, scope: !3546)
!3556 = !DILocation(line: 674, column: 19, scope: !3260)
!3557 = !DILocation(line: 670, column: 41, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3278, file: !179, line: 670, column: 29)
!3559 = !DILocation(line: 670, column: 31, scope: !3558)
!3560 = !DILocation(line: 670, column: 29, scope: !3278)
!3561 = !DILocation(line: 672, column: 27, scope: !3278)
!3562 = !DILocation(line: 675, column: 26, scope: !3260)
!3563 = !DILocation(line: 675, column: 24, scope: !3260)
!3564 = !DILocation(line: 674, column: 19, scope: !3273)
!3565 = distinct !{!3565, !3524, !3566}
!3566 = !DILocation(line: 675, column: 44, scope: !3260)
!3567 = !DILocation(line: 676, column: 15, scope: !3261)
!3568 = !DILocation(line: 0, scope: !3519)
!3569 = !DILocation(line: 0, scope: !3260)
!3570 = !DILocation(line: 678, column: 40, scope: !3256)
!3571 = !DILocation(line: 680, column: 19, scope: !3284)
!3572 = !DILocation(line: 680, column: 45, scope: !3284)
!3573 = !DILocation(line: 680, column: 23, scope: !3284)
!3574 = !DILocation(line: 684, column: 33, scope: !3283)
!3575 = !DILocation(line: 684, column: 24, scope: !3283)
!3576 = !DILocation(line: 686, column: 17, scope: !3283)
!3577 = !DILocation(line: 0, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !179, line: 687, column: 19)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !179, line: 686, column: 17)
!3580 = distinct !DILexicalBlock(scope: !3283, file: !179, line: 686, column: 17)
!3581 = !DILocation(line: 0, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3578, file: !179, line: 703, column: 21)
!3583 = !DILocation(line: 0, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !179, line: 696, column: 23)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !179, line: 695, column: 30)
!3586 = distinct !DILexicalBlock(scope: !3578, file: !179, line: 688, column: 25)
!3587 = !DILocation(line: 688, column: 43, scope: !3586)
!3588 = !DILocation(line: 690, column: 25, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !179, line: 690, column: 25)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !179, line: 689, column: 23)
!3591 = !DILocation(line: 690, column: 25, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !179, line: 690, column: 25)
!3593 = !DILocation(line: 690, column: 25, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !179, line: 690, column: 25)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !179, line: 690, column: 25)
!3596 = distinct !DILexicalBlock(scope: !3592, file: !179, line: 690, column: 25)
!3597 = !DILocation(line: 690, column: 25, scope: !3595)
!3598 = !DILocation(line: 690, column: 25, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !179, line: 690, column: 25)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !179, line: 690, column: 25)
!3601 = !DILocation(line: 690, column: 25, scope: !3600)
!3602 = !DILocation(line: 690, column: 25, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !179, line: 690, column: 25)
!3604 = distinct !DILexicalBlock(scope: !3596, file: !179, line: 690, column: 25)
!3605 = !DILocation(line: 690, column: 25, scope: !3604)
!3606 = !DILocation(line: 690, column: 25, scope: !3596)
!3607 = !DILocation(line: 690, column: 25, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !179, line: 690, column: 25)
!3609 = distinct !DILexicalBlock(scope: !3589, file: !179, line: 690, column: 25)
!3610 = !DILocation(line: 690, column: 25, scope: !3609)
!3611 = !DILocation(line: 691, column: 25, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !179, line: 691, column: 25)
!3613 = distinct !DILexicalBlock(scope: !3590, file: !179, line: 691, column: 25)
!3614 = !DILocation(line: 691, column: 25, scope: !3613)
!3615 = !DILocation(line: 692, column: 25, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !179, line: 692, column: 25)
!3617 = distinct !DILexicalBlock(scope: !3590, file: !179, line: 692, column: 25)
!3618 = !DILocation(line: 692, column: 25, scope: !3617)
!3619 = !DILocation(line: 693, column: 38, scope: !3590)
!3620 = !DILocation(line: 693, column: 33, scope: !3590)
!3621 = !DILocation(line: 694, column: 23, scope: !3590)
!3622 = !DILocation(line: 695, column: 30, scope: !3585)
!3623 = !DILocation(line: 695, column: 30, scope: !3586)
!3624 = !DILocation(line: 697, column: 25, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !179, line: 697, column: 25)
!3626 = distinct !DILexicalBlock(scope: !3584, file: !179, line: 697, column: 25)
!3627 = !DILocation(line: 697, column: 25, scope: !3626)
!3628 = !DILocation(line: 699, column: 23, scope: !3584)
!3629 = !DILocation(line: 0, scope: !3617)
!3630 = !DILocation(line: 0, scope: !3590)
!3631 = !DILocation(line: 0, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3367, file: !179, line: 418, column: 9)
!3633 = !DILocation(line: 0, scope: !3589)
!3634 = !DILocation(line: 700, column: 35, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3578, file: !179, line: 700, column: 25)
!3636 = !DILocation(line: 700, column: 30, scope: !3635)
!3637 = !DILocation(line: 700, column: 25, scope: !3578)
!3638 = !DILocation(line: 702, column: 21, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !179, line: 702, column: 21)
!3640 = distinct !DILexicalBlock(scope: !3578, file: !179, line: 702, column: 21)
!3641 = !DILocation(line: 702, column: 21, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !179, line: 702, column: 21)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !179, line: 702, column: 21)
!3644 = distinct !DILexicalBlock(scope: !3639, file: !179, line: 702, column: 21)
!3645 = !DILocation(line: 702, column: 21, scope: !3643)
!3646 = !DILocation(line: 702, column: 21, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !179, line: 702, column: 21)
!3648 = distinct !DILexicalBlock(scope: !3644, file: !179, line: 702, column: 21)
!3649 = !DILocation(line: 702, column: 21, scope: !3648)
!3650 = !DILocation(line: 702, column: 21, scope: !3644)
!3651 = !DILocation(line: 0, scope: !3626)
!3652 = !DILocation(line: 703, column: 21, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3582, file: !179, line: 703, column: 21)
!3654 = !DILocation(line: 703, column: 21, scope: !3582)
!3655 = !DILocation(line: 704, column: 25, scope: !3578)
!3656 = !DILocation(line: 686, column: 17, scope: !3579)
!3657 = distinct !{!3657, !3658, !3659}
!3658 = !DILocation(line: 686, column: 17, scope: !3580)
!3659 = !DILocation(line: 705, column: 19, scope: !3580)
!3660 = !DILocation(line: 0, scope: !3250)
!3661 = !DILocation(line: 416, column: 30, scope: !3367)
!3662 = !DILocation(line: 712, column: 34, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3248, file: !179, line: 712, column: 11)
!3664 = !DILocation(line: 714, column: 14, scope: !3663)
!3665 = !DILocation(line: 715, column: 14, scope: !3663)
!3666 = !DILocation(line: 715, column: 35, scope: !3663)
!3667 = !DILocation(line: 715, column: 17, scope: !3663)
!3668 = !DILocation(line: 715, column: 47, scope: !3663)
!3669 = !DILocation(line: 715, column: 65, scope: !3663)
!3670 = !DILocation(line: 716, column: 15, scope: !3663)
!3671 = !DILocation(line: 716, column: 11, scope: !3663)
!3672 = !DILocation(line: 712, column: 11, scope: !3248)
!3673 = !DILocation(line: 400, column: 10, scope: !3250)
!3674 = !DILocation(line: 0, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !179, line: 519, column: 13)
!3676 = distinct !DILexicalBlock(scope: !3257, file: !179, line: 518, column: 15)
!3677 = !DILocation(line: 720, column: 7, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3248, file: !179, line: 720, column: 7)
!3679 = !DILocation(line: 720, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3678, file: !179, line: 720, column: 7)
!3681 = !DILocation(line: 720, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !179, line: 720, column: 7)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !179, line: 720, column: 7)
!3684 = distinct !DILexicalBlock(scope: !3680, file: !179, line: 720, column: 7)
!3685 = !DILocation(line: 720, column: 7, scope: !3683)
!3686 = !DILocation(line: 720, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !179, line: 720, column: 7)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !179, line: 720, column: 7)
!3689 = !DILocation(line: 720, column: 7, scope: !3688)
!3690 = !DILocation(line: 720, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !179, line: 720, column: 7)
!3692 = distinct !DILexicalBlock(scope: !3684, file: !179, line: 720, column: 7)
!3693 = !DILocation(line: 720, column: 7, scope: !3692)
!3694 = !DILocation(line: 720, column: 7, scope: !3684)
!3695 = !DILocation(line: 720, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !179, line: 720, column: 7)
!3697 = distinct !DILexicalBlock(scope: !3678, file: !179, line: 720, column: 7)
!3698 = !DILocation(line: 720, column: 7, scope: !3697)
!3699 = !DILocation(line: 723, column: 7, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !179, line: 723, column: 7)
!3701 = distinct !DILexicalBlock(scope: !3248, file: !179, line: 723, column: 7)
!3702 = !DILocation(line: 424, column: 9, scope: !3248)
!3703 = !DILocation(line: 723, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !179, line: 723, column: 7)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !179, line: 723, column: 7)
!3706 = distinct !DILexicalBlock(scope: !3700, file: !179, line: 723, column: 7)
!3707 = !DILocation(line: 723, column: 7, scope: !3705)
!3708 = !DILocation(line: 723, column: 7, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !179, line: 723, column: 7)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !179, line: 723, column: 7)
!3711 = !DILocation(line: 723, column: 7, scope: !3710)
!3712 = !DILocation(line: 723, column: 7, scope: !3706)
!3713 = !DILocation(line: 724, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !179, line: 724, column: 7)
!3715 = distinct !DILexicalBlock(scope: !3248, file: !179, line: 724, column: 7)
!3716 = !DILocation(line: 724, column: 7, scope: !3715)
!3717 = !DILocation(line: 726, column: 13, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3248, file: !179, line: 726, column: 11)
!3719 = !DILocation(line: 726, column: 11, scope: !3248)
!3720 = !DILocation(line: 728, column: 5, scope: !3249)
!3721 = !DILocation(line: 400, column: 75, scope: !3249)
!3722 = !DILocation(line: 400, column: 3, scope: !3249)
!3723 = distinct !{!3723, !3361, !3724}
!3724 = !DILocation(line: 728, column: 5, scope: !3250)
!3725 = !DILocation(line: 730, column: 11, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3222, file: !179, line: 730, column: 7)
!3727 = !DILocation(line: 730, column: 16, scope: !3726)
!3728 = !DILocation(line: 738, column: 51, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3222, file: !179, line: 738, column: 7)
!3730 = !DILocation(line: 739, column: 10, scope: !3729)
!3731 = !DILocation(line: 741, column: 11, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !179, line: 741, column: 11)
!3733 = distinct !DILexicalBlock(scope: !3729, file: !179, line: 740, column: 5)
!3734 = !DILocation(line: 741, column: 11, scope: !3733)
!3735 = !DILocation(line: 742, column: 16, scope: !3732)
!3736 = !DILocation(line: 742, column: 9, scope: !3732)
!3737 = !DILocation(line: 746, column: 18, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3732, file: !179, line: 746, column: 16)
!3739 = !DILocation(line: 746, column: 32, scope: !3738)
!3740 = !DILocation(line: 746, column: 29, scope: !3738)
!3741 = !DILocation(line: 755, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3222, file: !179, line: 755, column: 7)
!3743 = !DILocation(line: 755, column: 20, scope: !3742)
!3744 = !DILocation(line: 756, column: 12, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !179, line: 756, column: 5)
!3746 = distinct !DILexicalBlock(scope: !3742, file: !179, line: 756, column: 5)
!3747 = !DILocation(line: 756, column: 5, scope: !3746)
!3748 = !DILocation(line: 757, column: 7, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !179, line: 757, column: 7)
!3750 = distinct !DILexicalBlock(scope: !3745, file: !179, line: 757, column: 7)
!3751 = !DILocation(line: 757, column: 7, scope: !3750)
!3752 = !DILocation(line: 756, column: 39, scope: !3745)
!3753 = distinct !{!3753, !3747, !3754}
!3754 = !DILocation(line: 757, column: 7, scope: !3746)
!3755 = !DILocation(line: 759, column: 11, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3222, file: !179, line: 759, column: 7)
!3757 = !DILocation(line: 759, column: 7, scope: !3222)
!3758 = !DILocation(line: 760, column: 5, scope: !3756)
!3759 = !DILocation(line: 760, column: 17, scope: !3756)
!3760 = !DILocation(line: 766, column: 21, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3222, file: !179, line: 766, column: 7)
!3762 = !DILocation(line: 766, column: 54, scope: !3761)
!3763 = !DILocation(line: 766, column: 51, scope: !3761)
!3764 = !DILocation(line: 770, column: 42, scope: !3222)
!3765 = !DILocation(line: 768, column: 10, scope: !3222)
!3766 = !DILocation(line: 768, column: 3, scope: !3222)
!3767 = !DILocation(line: 772, column: 1, scope: !3222)
!3768 = distinct !DISubprogram(name: "gettext_quote", scope: !179, file: !179, line: 207, type: !3769, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!100, !100, !14}
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "msgid", arg: 1, scope: !3768, file: !179, line: 207, type: !100)
!3773 = !DILocalVariable(name: "s", arg: 2, scope: !3768, file: !179, line: 207, type: !14)
!3774 = !DILocalVariable(name: "translation", scope: !3768, file: !179, line: 209, type: !100)
!3775 = !DILocalVariable(name: "locale_code", scope: !3768, file: !179, line: 210, type: !100)
!3776 = !DILocation(line: 207, column: 28, scope: !3768)
!3777 = !DILocation(line: 207, column: 54, scope: !3768)
!3778 = !DILocation(line: 209, column: 29, scope: !3768)
!3779 = !DILocation(line: 209, column: 15, scope: !3768)
!3780 = !DILocation(line: 212, column: 19, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3768, file: !179, line: 212, column: 7)
!3782 = !DILocation(line: 212, column: 7, scope: !3768)
!3783 = !DILocation(line: 233, column: 17, scope: !3768)
!3784 = !DILocation(line: 210, column: 15, scope: !3768)
!3785 = !DILocalVariable(name: "s1", arg: 1, scope: !3786, file: !3787, line: 160, type: !100)
!3786 = distinct !DISubprogram(name: "strcaseeq0", scope: !3787, file: !3787, line: 160, type: !3788, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3790)
!3787 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!49, !100, !100, !59, !59, !59, !59, !59, !59, !59, !59, !59}
!3790 = !{!3785, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800}
!3791 = !DILocalVariable(name: "s2", arg: 2, scope: !3786, file: !3787, line: 160, type: !100)
!3792 = !DILocalVariable(name: "s20", arg: 3, scope: !3786, file: !3787, line: 160, type: !59)
!3793 = !DILocalVariable(name: "s21", arg: 4, scope: !3786, file: !3787, line: 160, type: !59)
!3794 = !DILocalVariable(name: "s22", arg: 5, scope: !3786, file: !3787, line: 160, type: !59)
!3795 = !DILocalVariable(name: "s23", arg: 6, scope: !3786, file: !3787, line: 160, type: !59)
!3796 = !DILocalVariable(name: "s24", arg: 7, scope: !3786, file: !3787, line: 160, type: !59)
!3797 = !DILocalVariable(name: "s25", arg: 8, scope: !3786, file: !3787, line: 160, type: !59)
!3798 = !DILocalVariable(name: "s26", arg: 9, scope: !3786, file: !3787, line: 160, type: !59)
!3799 = !DILocalVariable(name: "s27", arg: 10, scope: !3786, file: !3787, line: 160, type: !59)
!3800 = !DILocalVariable(name: "s28", arg: 11, scope: !3786, file: !3787, line: 160, type: !59)
!3801 = !DILocation(line: 160, column: 25, scope: !3786, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 234, column: 7, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3768, file: !179, line: 234, column: 7)
!3804 = !DILocation(line: 160, column: 41, scope: !3786, inlinedAt: !3802)
!3805 = !DILocation(line: 160, column: 50, scope: !3786, inlinedAt: !3802)
!3806 = !DILocation(line: 160, column: 60, scope: !3786, inlinedAt: !3802)
!3807 = !DILocation(line: 160, column: 70, scope: !3786, inlinedAt: !3802)
!3808 = !DILocation(line: 160, column: 80, scope: !3786, inlinedAt: !3802)
!3809 = !DILocation(line: 160, column: 90, scope: !3786, inlinedAt: !3802)
!3810 = !DILocation(line: 160, column: 100, scope: !3786, inlinedAt: !3802)
!3811 = !DILocation(line: 160, column: 110, scope: !3786, inlinedAt: !3802)
!3812 = !DILocation(line: 160, column: 120, scope: !3786, inlinedAt: !3802)
!3813 = !DILocation(line: 160, column: 130, scope: !3786, inlinedAt: !3802)
!3814 = !DILocation(line: 162, column: 7, scope: !3815, inlinedAt: !3802)
!3815 = distinct !DILexicalBlock(scope: !3786, file: !3787, line: 162, column: 7)
!3816 = !DILocalVariable(name: "s1", arg: 1, scope: !3817, file: !3787, line: 146, type: !100)
!3817 = distinct !DISubprogram(name: "strcaseeq1", scope: !3787, file: !3787, line: 146, type: !3818, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!49, !100, !100, !59, !59, !59, !59, !59, !59, !59, !59}
!3820 = !{!3816, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829}
!3821 = !DILocalVariable(name: "s2", arg: 2, scope: !3817, file: !3787, line: 146, type: !100)
!3822 = !DILocalVariable(name: "s21", arg: 3, scope: !3817, file: !3787, line: 146, type: !59)
!3823 = !DILocalVariable(name: "s22", arg: 4, scope: !3817, file: !3787, line: 146, type: !59)
!3824 = !DILocalVariable(name: "s23", arg: 5, scope: !3817, file: !3787, line: 146, type: !59)
!3825 = !DILocalVariable(name: "s24", arg: 6, scope: !3817, file: !3787, line: 146, type: !59)
!3826 = !DILocalVariable(name: "s25", arg: 7, scope: !3817, file: !3787, line: 146, type: !59)
!3827 = !DILocalVariable(name: "s26", arg: 8, scope: !3817, file: !3787, line: 146, type: !59)
!3828 = !DILocalVariable(name: "s27", arg: 9, scope: !3817, file: !3787, line: 146, type: !59)
!3829 = !DILocalVariable(name: "s28", arg: 10, scope: !3817, file: !3787, line: 146, type: !59)
!3830 = !DILocation(line: 146, column: 25, scope: !3817, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 167, column: 16, scope: !3832, inlinedAt: !3802)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !3787, line: 164, column: 11)
!3833 = distinct !DILexicalBlock(scope: !3815, file: !3787, line: 163, column: 5)
!3834 = !DILocation(line: 146, column: 41, scope: !3817, inlinedAt: !3831)
!3835 = !DILocation(line: 146, column: 50, scope: !3817, inlinedAt: !3831)
!3836 = !DILocation(line: 146, column: 60, scope: !3817, inlinedAt: !3831)
!3837 = !DILocation(line: 146, column: 70, scope: !3817, inlinedAt: !3831)
!3838 = !DILocation(line: 146, column: 80, scope: !3817, inlinedAt: !3831)
!3839 = !DILocation(line: 146, column: 90, scope: !3817, inlinedAt: !3831)
!3840 = !DILocation(line: 146, column: 100, scope: !3817, inlinedAt: !3831)
!3841 = !DILocation(line: 146, column: 110, scope: !3817, inlinedAt: !3831)
!3842 = !DILocation(line: 146, column: 120, scope: !3817, inlinedAt: !3831)
!3843 = !DILocation(line: 148, column: 7, scope: !3844, inlinedAt: !3831)
!3844 = distinct !DILexicalBlock(scope: !3817, file: !3787, line: 148, column: 7)
!3845 = !DILocalVariable(name: "s1", arg: 1, scope: !3846, file: !3787, line: 132, type: !100)
!3846 = distinct !DISubprogram(name: "strcaseeq2", scope: !3787, file: !3787, line: 132, type: !3847, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!49, !100, !100, !59, !59, !59, !59, !59, !59, !59}
!3849 = !{!3845, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857}
!3850 = !DILocalVariable(name: "s2", arg: 2, scope: !3846, file: !3787, line: 132, type: !100)
!3851 = !DILocalVariable(name: "s22", arg: 3, scope: !3846, file: !3787, line: 132, type: !59)
!3852 = !DILocalVariable(name: "s23", arg: 4, scope: !3846, file: !3787, line: 132, type: !59)
!3853 = !DILocalVariable(name: "s24", arg: 5, scope: !3846, file: !3787, line: 132, type: !59)
!3854 = !DILocalVariable(name: "s25", arg: 6, scope: !3846, file: !3787, line: 132, type: !59)
!3855 = !DILocalVariable(name: "s26", arg: 7, scope: !3846, file: !3787, line: 132, type: !59)
!3856 = !DILocalVariable(name: "s27", arg: 8, scope: !3846, file: !3787, line: 132, type: !59)
!3857 = !DILocalVariable(name: "s28", arg: 9, scope: !3846, file: !3787, line: 132, type: !59)
!3858 = !DILocation(line: 132, column: 25, scope: !3846, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 153, column: 16, scope: !3860, inlinedAt: !3831)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !3787, line: 150, column: 11)
!3861 = distinct !DILexicalBlock(scope: !3844, file: !3787, line: 149, column: 5)
!3862 = !DILocation(line: 132, column: 41, scope: !3846, inlinedAt: !3859)
!3863 = !DILocation(line: 132, column: 50, scope: !3846, inlinedAt: !3859)
!3864 = !DILocation(line: 132, column: 60, scope: !3846, inlinedAt: !3859)
!3865 = !DILocation(line: 132, column: 70, scope: !3846, inlinedAt: !3859)
!3866 = !DILocation(line: 132, column: 80, scope: !3846, inlinedAt: !3859)
!3867 = !DILocation(line: 132, column: 90, scope: !3846, inlinedAt: !3859)
!3868 = !DILocation(line: 132, column: 100, scope: !3846, inlinedAt: !3859)
!3869 = !DILocation(line: 132, column: 110, scope: !3846, inlinedAt: !3859)
!3870 = !DILocation(line: 134, column: 7, scope: !3871, inlinedAt: !3859)
!3871 = distinct !DILexicalBlock(scope: !3846, file: !3787, line: 134, column: 7)
!3872 = !DILocalVariable(name: "s1", arg: 1, scope: !3873, file: !3787, line: 118, type: !100)
!3873 = distinct !DISubprogram(name: "strcaseeq3", scope: !3787, file: !3787, line: 118, type: !3874, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!49, !100, !100, !59, !59, !59, !59, !59, !59}
!3876 = !{!3872, !3877, !3878, !3879, !3880, !3881, !3882, !3883}
!3877 = !DILocalVariable(name: "s2", arg: 2, scope: !3873, file: !3787, line: 118, type: !100)
!3878 = !DILocalVariable(name: "s23", arg: 3, scope: !3873, file: !3787, line: 118, type: !59)
!3879 = !DILocalVariable(name: "s24", arg: 4, scope: !3873, file: !3787, line: 118, type: !59)
!3880 = !DILocalVariable(name: "s25", arg: 5, scope: !3873, file: !3787, line: 118, type: !59)
!3881 = !DILocalVariable(name: "s26", arg: 6, scope: !3873, file: !3787, line: 118, type: !59)
!3882 = !DILocalVariable(name: "s27", arg: 7, scope: !3873, file: !3787, line: 118, type: !59)
!3883 = !DILocalVariable(name: "s28", arg: 8, scope: !3873, file: !3787, line: 118, type: !59)
!3884 = !DILocation(line: 118, column: 25, scope: !3873, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 139, column: 16, scope: !3886, inlinedAt: !3859)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3787, line: 136, column: 11)
!3887 = distinct !DILexicalBlock(scope: !3871, file: !3787, line: 135, column: 5)
!3888 = !DILocation(line: 118, column: 41, scope: !3873, inlinedAt: !3885)
!3889 = !DILocation(line: 118, column: 50, scope: !3873, inlinedAt: !3885)
!3890 = !DILocation(line: 118, column: 60, scope: !3873, inlinedAt: !3885)
!3891 = !DILocation(line: 118, column: 70, scope: !3873, inlinedAt: !3885)
!3892 = !DILocation(line: 118, column: 80, scope: !3873, inlinedAt: !3885)
!3893 = !DILocation(line: 118, column: 90, scope: !3873, inlinedAt: !3885)
!3894 = !DILocation(line: 118, column: 100, scope: !3873, inlinedAt: !3885)
!3895 = !DILocation(line: 120, column: 7, scope: !3896, inlinedAt: !3885)
!3896 = distinct !DILexicalBlock(scope: !3873, file: !3787, line: 120, column: 7)
!3897 = !DILocation(line: 120, column: 7, scope: !3873, inlinedAt: !3885)
!3898 = !DILocalVariable(name: "s1", arg: 1, scope: !3899, file: !3787, line: 104, type: !100)
!3899 = distinct !DISubprogram(name: "strcaseeq4", scope: !3787, file: !3787, line: 104, type: !3900, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3902)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!49, !100, !100, !59, !59, !59, !59, !59}
!3902 = !{!3898, !3903, !3904, !3905, !3906, !3907, !3908}
!3903 = !DILocalVariable(name: "s2", arg: 2, scope: !3899, file: !3787, line: 104, type: !100)
!3904 = !DILocalVariable(name: "s24", arg: 3, scope: !3899, file: !3787, line: 104, type: !59)
!3905 = !DILocalVariable(name: "s25", arg: 4, scope: !3899, file: !3787, line: 104, type: !59)
!3906 = !DILocalVariable(name: "s26", arg: 5, scope: !3899, file: !3787, line: 104, type: !59)
!3907 = !DILocalVariable(name: "s27", arg: 6, scope: !3899, file: !3787, line: 104, type: !59)
!3908 = !DILocalVariable(name: "s28", arg: 7, scope: !3899, file: !3787, line: 104, type: !59)
!3909 = !DILocation(line: 104, column: 25, scope: !3899, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 125, column: 16, scope: !3911, inlinedAt: !3885)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3787, line: 122, column: 11)
!3912 = distinct !DILexicalBlock(scope: !3896, file: !3787, line: 121, column: 5)
!3913 = !DILocation(line: 104, column: 41, scope: !3899, inlinedAt: !3910)
!3914 = !DILocation(line: 104, column: 50, scope: !3899, inlinedAt: !3910)
!3915 = !DILocation(line: 104, column: 60, scope: !3899, inlinedAt: !3910)
!3916 = !DILocation(line: 104, column: 70, scope: !3899, inlinedAt: !3910)
!3917 = !DILocation(line: 104, column: 80, scope: !3899, inlinedAt: !3910)
!3918 = !DILocation(line: 104, column: 90, scope: !3899, inlinedAt: !3910)
!3919 = !DILocation(line: 106, column: 7, scope: !3920, inlinedAt: !3910)
!3920 = distinct !DILexicalBlock(scope: !3899, file: !3787, line: 106, column: 7)
!3921 = !DILocation(line: 106, column: 7, scope: !3899, inlinedAt: !3910)
!3922 = !DILocalVariable(name: "s1", arg: 1, scope: !3923, file: !3787, line: 90, type: !100)
!3923 = distinct !DISubprogram(name: "strcaseeq5", scope: !3787, file: !3787, line: 90, type: !3924, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!49, !100, !100, !59, !59, !59, !59}
!3926 = !{!3922, !3927, !3928, !3929, !3930, !3931}
!3927 = !DILocalVariable(name: "s2", arg: 2, scope: !3923, file: !3787, line: 90, type: !100)
!3928 = !DILocalVariable(name: "s25", arg: 3, scope: !3923, file: !3787, line: 90, type: !59)
!3929 = !DILocalVariable(name: "s26", arg: 4, scope: !3923, file: !3787, line: 90, type: !59)
!3930 = !DILocalVariable(name: "s27", arg: 5, scope: !3923, file: !3787, line: 90, type: !59)
!3931 = !DILocalVariable(name: "s28", arg: 6, scope: !3923, file: !3787, line: 90, type: !59)
!3932 = !DILocation(line: 90, column: 25, scope: !3923, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 111, column: 16, scope: !3934, inlinedAt: !3910)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !3787, line: 108, column: 11)
!3935 = distinct !DILexicalBlock(scope: !3920, file: !3787, line: 107, column: 5)
!3936 = !DILocation(line: 90, column: 41, scope: !3923, inlinedAt: !3933)
!3937 = !DILocation(line: 90, column: 50, scope: !3923, inlinedAt: !3933)
!3938 = !DILocation(line: 90, column: 60, scope: !3923, inlinedAt: !3933)
!3939 = !DILocation(line: 90, column: 70, scope: !3923, inlinedAt: !3933)
!3940 = !DILocation(line: 90, column: 80, scope: !3923, inlinedAt: !3933)
!3941 = !DILocation(line: 92, column: 7, scope: !3942, inlinedAt: !3933)
!3942 = distinct !DILexicalBlock(scope: !3923, file: !3787, line: 92, column: 7)
!3943 = !DILocation(line: 92, column: 7, scope: !3923, inlinedAt: !3933)
!3944 = !DILocation(line: 235, column: 12, scope: !3803)
!3945 = !DILocation(line: 235, column: 21, scope: !3803)
!3946 = !DILocation(line: 235, column: 5, scope: !3803)
!3947 = !DILocation(line: 146, column: 25, scope: !3817, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 167, column: 16, scope: !3832, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 236, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3768, file: !179, line: 236, column: 7)
!3951 = !DILocation(line: 146, column: 41, scope: !3817, inlinedAt: !3948)
!3952 = !DILocation(line: 146, column: 50, scope: !3817, inlinedAt: !3948)
!3953 = !DILocation(line: 146, column: 60, scope: !3817, inlinedAt: !3948)
!3954 = !DILocation(line: 146, column: 70, scope: !3817, inlinedAt: !3948)
!3955 = !DILocation(line: 146, column: 80, scope: !3817, inlinedAt: !3948)
!3956 = !DILocation(line: 146, column: 90, scope: !3817, inlinedAt: !3948)
!3957 = !DILocation(line: 146, column: 100, scope: !3817, inlinedAt: !3948)
!3958 = !DILocation(line: 146, column: 110, scope: !3817, inlinedAt: !3948)
!3959 = !DILocation(line: 146, column: 120, scope: !3817, inlinedAt: !3948)
!3960 = !DILocation(line: 148, column: 7, scope: !3844, inlinedAt: !3948)
!3961 = !DILocation(line: 132, column: 25, scope: !3846, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 153, column: 16, scope: !3860, inlinedAt: !3948)
!3963 = !DILocation(line: 132, column: 41, scope: !3846, inlinedAt: !3962)
!3964 = !DILocation(line: 132, column: 50, scope: !3846, inlinedAt: !3962)
!3965 = !DILocation(line: 132, column: 60, scope: !3846, inlinedAt: !3962)
!3966 = !DILocation(line: 132, column: 70, scope: !3846, inlinedAt: !3962)
!3967 = !DILocation(line: 132, column: 80, scope: !3846, inlinedAt: !3962)
!3968 = !DILocation(line: 132, column: 90, scope: !3846, inlinedAt: !3962)
!3969 = !DILocation(line: 132, column: 100, scope: !3846, inlinedAt: !3962)
!3970 = !DILocation(line: 132, column: 110, scope: !3846, inlinedAt: !3962)
!3971 = !DILocation(line: 134, column: 7, scope: !3871, inlinedAt: !3962)
!3972 = !DILocation(line: 134, column: 7, scope: !3846, inlinedAt: !3962)
!3973 = !DILocation(line: 118, column: 25, scope: !3873, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 139, column: 16, scope: !3886, inlinedAt: !3962)
!3975 = !DILocation(line: 118, column: 41, scope: !3873, inlinedAt: !3974)
!3976 = !DILocation(line: 118, column: 50, scope: !3873, inlinedAt: !3974)
!3977 = !DILocation(line: 118, column: 60, scope: !3873, inlinedAt: !3974)
!3978 = !DILocation(line: 118, column: 70, scope: !3873, inlinedAt: !3974)
!3979 = !DILocation(line: 118, column: 80, scope: !3873, inlinedAt: !3974)
!3980 = !DILocation(line: 118, column: 90, scope: !3873, inlinedAt: !3974)
!3981 = !DILocation(line: 118, column: 100, scope: !3873, inlinedAt: !3974)
!3982 = !DILocation(line: 120, column: 7, scope: !3896, inlinedAt: !3974)
!3983 = !DILocation(line: 120, column: 7, scope: !3873, inlinedAt: !3974)
!3984 = !DILocation(line: 104, column: 25, scope: !3899, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 125, column: 16, scope: !3911, inlinedAt: !3974)
!3986 = !DILocation(line: 104, column: 41, scope: !3899, inlinedAt: !3985)
!3987 = !DILocation(line: 104, column: 50, scope: !3899, inlinedAt: !3985)
!3988 = !DILocation(line: 104, column: 60, scope: !3899, inlinedAt: !3985)
!3989 = !DILocation(line: 104, column: 70, scope: !3899, inlinedAt: !3985)
!3990 = !DILocation(line: 104, column: 80, scope: !3899, inlinedAt: !3985)
!3991 = !DILocation(line: 104, column: 90, scope: !3899, inlinedAt: !3985)
!3992 = !DILocation(line: 106, column: 7, scope: !3920, inlinedAt: !3985)
!3993 = !DILocation(line: 106, column: 7, scope: !3899, inlinedAt: !3985)
!3994 = !DILocation(line: 90, column: 25, scope: !3923, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 111, column: 16, scope: !3934, inlinedAt: !3985)
!3996 = !DILocation(line: 90, column: 41, scope: !3923, inlinedAt: !3995)
!3997 = !DILocation(line: 90, column: 50, scope: !3923, inlinedAt: !3995)
!3998 = !DILocation(line: 90, column: 60, scope: !3923, inlinedAt: !3995)
!3999 = !DILocation(line: 90, column: 70, scope: !3923, inlinedAt: !3995)
!4000 = !DILocation(line: 90, column: 80, scope: !3923, inlinedAt: !3995)
!4001 = !DILocation(line: 92, column: 7, scope: !3942, inlinedAt: !3995)
!4002 = !DILocation(line: 92, column: 7, scope: !3923, inlinedAt: !3995)
!4003 = !DILocalVariable(name: "s1", arg: 1, scope: !4004, file: !3787, line: 76, type: !100)
!4004 = distinct !DISubprogram(name: "strcaseeq6", scope: !3787, file: !3787, line: 76, type: !4005, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!49, !100, !100, !59, !59, !59}
!4007 = !{!4003, !4008, !4009, !4010, !4011}
!4008 = !DILocalVariable(name: "s2", arg: 2, scope: !4004, file: !3787, line: 76, type: !100)
!4009 = !DILocalVariable(name: "s26", arg: 3, scope: !4004, file: !3787, line: 76, type: !59)
!4010 = !DILocalVariable(name: "s27", arg: 4, scope: !4004, file: !3787, line: 76, type: !59)
!4011 = !DILocalVariable(name: "s28", arg: 5, scope: !4004, file: !3787, line: 76, type: !59)
!4012 = !DILocation(line: 76, column: 25, scope: !4004, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 97, column: 16, scope: !4014, inlinedAt: !3995)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3787, line: 94, column: 11)
!4015 = distinct !DILexicalBlock(scope: !3942, file: !3787, line: 93, column: 5)
!4016 = !DILocation(line: 76, column: 41, scope: !4004, inlinedAt: !4013)
!4017 = !DILocation(line: 76, column: 50, scope: !4004, inlinedAt: !4013)
!4018 = !DILocation(line: 76, column: 60, scope: !4004, inlinedAt: !4013)
!4019 = !DILocation(line: 76, column: 70, scope: !4004, inlinedAt: !4013)
!4020 = !DILocation(line: 78, column: 7, scope: !4021, inlinedAt: !4013)
!4021 = distinct !DILexicalBlock(scope: !4004, file: !3787, line: 78, column: 7)
!4022 = !DILocation(line: 78, column: 7, scope: !4004, inlinedAt: !4013)
!4023 = !DILocalVariable(name: "s1", arg: 1, scope: !4024, file: !3787, line: 62, type: !100)
!4024 = distinct !DISubprogram(name: "strcaseeq7", scope: !3787, file: !3787, line: 62, type: !4025, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!49, !100, !100, !59, !59}
!4027 = !{!4023, !4028, !4029, !4030}
!4028 = !DILocalVariable(name: "s2", arg: 2, scope: !4024, file: !3787, line: 62, type: !100)
!4029 = !DILocalVariable(name: "s27", arg: 3, scope: !4024, file: !3787, line: 62, type: !59)
!4030 = !DILocalVariable(name: "s28", arg: 4, scope: !4024, file: !3787, line: 62, type: !59)
!4031 = !DILocation(line: 62, column: 25, scope: !4024, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 83, column: 16, scope: !4033, inlinedAt: !4013)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !3787, line: 80, column: 11)
!4034 = distinct !DILexicalBlock(scope: !4021, file: !3787, line: 79, column: 5)
!4035 = !DILocation(line: 62, column: 41, scope: !4024, inlinedAt: !4032)
!4036 = !DILocation(line: 62, column: 50, scope: !4024, inlinedAt: !4032)
!4037 = !DILocation(line: 62, column: 60, scope: !4024, inlinedAt: !4032)
!4038 = !DILocation(line: 64, column: 7, scope: !4039, inlinedAt: !4032)
!4039 = distinct !DILexicalBlock(scope: !4024, file: !3787, line: 64, column: 7)
!4040 = !DILocation(line: 236, column: 7, scope: !3768)
!4041 = !DILocation(line: 237, column: 12, scope: !3950)
!4042 = !DILocation(line: 237, column: 21, scope: !3950)
!4043 = !DILocation(line: 237, column: 5, scope: !3950)
!4044 = !DILocation(line: 239, column: 13, scope: !3768)
!4045 = !DILocation(line: 239, column: 11, scope: !3768)
!4046 = !DILocation(line: 239, column: 3, scope: !3768)
!4047 = !DILocation(line: 0, scope: !3768)
!4048 = !DILocation(line: 240, column: 1, scope: !3768)
!4049 = distinct !DISubprogram(name: "quotearg_alloc", scope: !179, file: !179, line: 799, type: !4050, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!58, !100, !104, !3095}
!4052 = !{!4053, !4054, !4055}
!4053 = !DILocalVariable(name: "arg", arg: 1, scope: !4049, file: !179, line: 799, type: !100)
!4054 = !DILocalVariable(name: "argsize", arg: 2, scope: !4049, file: !179, line: 799, type: !104)
!4055 = !DILocalVariable(name: "o", arg: 3, scope: !4049, file: !179, line: 800, type: !3095)
!4056 = !DILocation(line: 799, column: 29, scope: !4049)
!4057 = !DILocation(line: 799, column: 41, scope: !4049)
!4058 = !DILocation(line: 800, column: 47, scope: !4049)
!4059 = !DILocalVariable(name: "arg", arg: 1, scope: !4060, file: !179, line: 812, type: !100)
!4060 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !179, file: !179, line: 812, type: !4061, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!58, !100, !104, !266, !3095}
!4063 = !{!4059, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071}
!4064 = !DILocalVariable(name: "argsize", arg: 2, scope: !4060, file: !179, line: 812, type: !104)
!4065 = !DILocalVariable(name: "size", arg: 3, scope: !4060, file: !179, line: 812, type: !266)
!4066 = !DILocalVariable(name: "o", arg: 4, scope: !4060, file: !179, line: 813, type: !3095)
!4067 = !DILocalVariable(name: "p", scope: !4060, file: !179, line: 815, type: !3095)
!4068 = !DILocalVariable(name: "e", scope: !4060, file: !179, line: 816, type: !49)
!4069 = !DILocalVariable(name: "flags", scope: !4060, file: !179, line: 818, type: !49)
!4070 = !DILocalVariable(name: "bufsize", scope: !4060, file: !179, line: 819, type: !104)
!4071 = !DILocalVariable(name: "buf", scope: !4060, file: !179, line: 823, type: !58)
!4072 = !DILocation(line: 812, column: 33, scope: !4060, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 802, column: 10, scope: !4049)
!4074 = !DILocation(line: 812, column: 45, scope: !4060, inlinedAt: !4073)
!4075 = !DILocation(line: 812, column: 62, scope: !4060, inlinedAt: !4073)
!4076 = !DILocation(line: 813, column: 51, scope: !4060, inlinedAt: !4073)
!4077 = !DILocation(line: 815, column: 37, scope: !4060, inlinedAt: !4073)
!4078 = !DILocation(line: 815, column: 33, scope: !4060, inlinedAt: !4073)
!4079 = !DILocation(line: 816, column: 11, scope: !4060, inlinedAt: !4073)
!4080 = !DILocation(line: 816, column: 7, scope: !4060, inlinedAt: !4073)
!4081 = !DILocation(line: 818, column: 18, scope: !4060, inlinedAt: !4073)
!4082 = !DILocation(line: 818, column: 24, scope: !4060, inlinedAt: !4073)
!4083 = !DILocation(line: 818, column: 7, scope: !4060, inlinedAt: !4073)
!4084 = !DILocation(line: 819, column: 69, scope: !4060, inlinedAt: !4073)
!4085 = !DILocation(line: 820, column: 53, scope: !4060, inlinedAt: !4073)
!4086 = !DILocation(line: 821, column: 49, scope: !4060, inlinedAt: !4073)
!4087 = !DILocation(line: 822, column: 49, scope: !4060, inlinedAt: !4073)
!4088 = !DILocation(line: 819, column: 20, scope: !4060, inlinedAt: !4073)
!4089 = !DILocation(line: 822, column: 62, scope: !4060, inlinedAt: !4073)
!4090 = !DILocation(line: 819, column: 10, scope: !4060, inlinedAt: !4073)
!4091 = !DILocalVariable(name: "n", arg: 1, scope: !4092, file: !262, line: 216, type: !104)
!4092 = distinct !DISubprogram(name: "xcharalloc", scope: !262, file: !262, line: 216, type: !4093, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!58, !104}
!4095 = !{!4091}
!4096 = !DILocation(line: 216, column: 20, scope: !4092, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 823, column: 15, scope: !4060, inlinedAt: !4073)
!4098 = !DILocation(line: 218, column: 10, scope: !4092, inlinedAt: !4097)
!4099 = !DILocation(line: 823, column: 9, scope: !4060, inlinedAt: !4073)
!4100 = !DILocation(line: 824, column: 60, scope: !4060, inlinedAt: !4073)
!4101 = !DILocation(line: 826, column: 32, scope: !4060, inlinedAt: !4073)
!4102 = !DILocation(line: 826, column: 47, scope: !4060, inlinedAt: !4073)
!4103 = !DILocation(line: 824, column: 3, scope: !4060, inlinedAt: !4073)
!4104 = !DILocation(line: 827, column: 9, scope: !4060, inlinedAt: !4073)
!4105 = !DILocation(line: 802, column: 3, scope: !4049)
!4106 = !DILocation(line: 812, column: 33, scope: !4060)
!4107 = !DILocation(line: 812, column: 45, scope: !4060)
!4108 = !DILocation(line: 812, column: 62, scope: !4060)
!4109 = !DILocation(line: 813, column: 51, scope: !4060)
!4110 = !DILocation(line: 815, column: 37, scope: !4060)
!4111 = !DILocation(line: 815, column: 33, scope: !4060)
!4112 = !DILocation(line: 816, column: 11, scope: !4060)
!4113 = !DILocation(line: 816, column: 7, scope: !4060)
!4114 = !DILocation(line: 818, column: 18, scope: !4060)
!4115 = !DILocation(line: 818, column: 27, scope: !4060)
!4116 = !DILocation(line: 818, column: 24, scope: !4060)
!4117 = !DILocation(line: 818, column: 7, scope: !4060)
!4118 = !DILocation(line: 819, column: 69, scope: !4060)
!4119 = !DILocation(line: 820, column: 53, scope: !4060)
!4120 = !DILocation(line: 821, column: 49, scope: !4060)
!4121 = !DILocation(line: 822, column: 49, scope: !4060)
!4122 = !DILocation(line: 819, column: 20, scope: !4060)
!4123 = !DILocation(line: 822, column: 62, scope: !4060)
!4124 = !DILocation(line: 819, column: 10, scope: !4060)
!4125 = !DILocation(line: 216, column: 20, scope: !4092, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 823, column: 15, scope: !4060)
!4127 = !DILocation(line: 218, column: 10, scope: !4092, inlinedAt: !4126)
!4128 = !DILocation(line: 823, column: 9, scope: !4060)
!4129 = !DILocation(line: 824, column: 60, scope: !4060)
!4130 = !DILocation(line: 826, column: 32, scope: !4060)
!4131 = !DILocation(line: 826, column: 47, scope: !4060)
!4132 = !DILocation(line: 824, column: 3, scope: !4060)
!4133 = !DILocation(line: 827, column: 9, scope: !4060)
!4134 = !DILocation(line: 828, column: 7, scope: !4060)
!4135 = !DILocation(line: 829, column: 11, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4060, file: !179, line: 828, column: 7)
!4137 = !DILocation(line: 829, column: 5, scope: !4136)
!4138 = !DILocation(line: 830, column: 3, scope: !4060)
!4139 = distinct !DISubprogram(name: "quotearg_free", scope: !179, file: !179, line: 848, type: !1718, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4140)
!4140 = !{!4141, !4142}
!4141 = !DILocalVariable(name: "sv", scope: !4139, file: !179, line: 850, type: !205)
!4142 = !DILocalVariable(name: "i", scope: !4139, file: !179, line: 851, type: !49)
!4143 = !DILocation(line: 850, column: 24, scope: !4139)
!4144 = !DILocation(line: 850, column: 19, scope: !4139)
!4145 = !DILocation(line: 851, column: 7, scope: !4139)
!4146 = !DILocation(line: 852, column: 19, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !179, line: 852, column: 3)
!4148 = distinct !DILexicalBlock(scope: !4139, file: !179, line: 852, column: 3)
!4149 = !DILocation(line: 852, column: 17, scope: !4147)
!4150 = !DILocation(line: 852, column: 3, scope: !4148)
!4151 = !DILocation(line: 853, column: 17, scope: !4147)
!4152 = !{!4153, !721, i64 8}
!4153 = !{!"slotvec", !737, i64 0, !721, i64 8}
!4154 = !DILocation(line: 853, column: 5, scope: !4147)
!4155 = !DILocation(line: 852, column: 28, scope: !4147)
!4156 = distinct !{!4156, !4150, !4157}
!4157 = !DILocation(line: 853, column: 20, scope: !4148)
!4158 = !DILocation(line: 854, column: 13, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4139, file: !179, line: 854, column: 7)
!4160 = !DILocation(line: 854, column: 17, scope: !4159)
!4161 = !DILocation(line: 854, column: 7, scope: !4139)
!4162 = !DILocation(line: 856, column: 7, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4159, file: !179, line: 855, column: 5)
!4164 = !DILocation(line: 857, column: 21, scope: !4163)
!4165 = !{!4153, !737, i64 0}
!4166 = !DILocation(line: 858, column: 20, scope: !4163)
!4167 = !DILocation(line: 859, column: 5, scope: !4163)
!4168 = !DILocation(line: 860, column: 10, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4139, file: !179, line: 860, column: 7)
!4170 = !DILocation(line: 860, column: 7, scope: !4139)
!4171 = !DILocation(line: 862, column: 13, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4169, file: !179, line: 861, column: 5)
!4173 = !DILocation(line: 862, column: 7, scope: !4172)
!4174 = !DILocation(line: 863, column: 15, scope: !4172)
!4175 = !DILocation(line: 864, column: 5, scope: !4172)
!4176 = !DILocation(line: 865, column: 10, scope: !4139)
!4177 = !DILocation(line: 866, column: 1, scope: !4139)
!4178 = distinct !DISubprogram(name: "quotearg_n", scope: !179, file: !179, line: 931, type: !4179, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!58, !49, !100}
!4181 = !{!4182, !4183}
!4182 = !DILocalVariable(name: "n", arg: 1, scope: !4178, file: !179, line: 931, type: !49)
!4183 = !DILocalVariable(name: "arg", arg: 2, scope: !4178, file: !179, line: 931, type: !100)
!4184 = !DILocation(line: 931, column: 17, scope: !4178)
!4185 = !DILocation(line: 931, column: 32, scope: !4178)
!4186 = !DILocation(line: 933, column: 10, scope: !4178)
!4187 = !DILocation(line: 933, column: 3, scope: !4178)
!4188 = distinct !DISubprogram(name: "quotearg_n_options", scope: !179, file: !179, line: 877, type: !4189, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!58, !49, !100, !104, !3095}
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4197, !4198, !4201, !4202, !4204, !4205, !4206}
!4192 = !DILocalVariable(name: "n", arg: 1, scope: !4188, file: !179, line: 877, type: !49)
!4193 = !DILocalVariable(name: "arg", arg: 2, scope: !4188, file: !179, line: 877, type: !100)
!4194 = !DILocalVariable(name: "argsize", arg: 3, scope: !4188, file: !179, line: 877, type: !104)
!4195 = !DILocalVariable(name: "options", arg: 4, scope: !4188, file: !179, line: 878, type: !3095)
!4196 = !DILocalVariable(name: "e", scope: !4188, file: !179, line: 880, type: !49)
!4197 = !DILocalVariable(name: "sv", scope: !4188, file: !179, line: 882, type: !205)
!4198 = !DILocalVariable(name: "preallocated", scope: !4199, file: !179, line: 889, type: !60)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !179, line: 888, column: 5)
!4200 = distinct !DILexicalBlock(scope: !4188, file: !179, line: 887, column: 7)
!4201 = !DILocalVariable(name: "nmax", scope: !4199, file: !179, line: 890, type: !49)
!4202 = !DILocalVariable(name: "size", scope: !4203, file: !179, line: 903, type: !104)
!4203 = distinct !DILexicalBlock(scope: !4188, file: !179, line: 902, column: 3)
!4204 = !DILocalVariable(name: "val", scope: !4203, file: !179, line: 904, type: !58)
!4205 = !DILocalVariable(name: "flags", scope: !4203, file: !179, line: 906, type: !49)
!4206 = !DILocalVariable(name: "qsize", scope: !4203, file: !179, line: 907, type: !104)
!4207 = !DILocation(line: 877, column: 25, scope: !4188)
!4208 = !DILocation(line: 877, column: 40, scope: !4188)
!4209 = !DILocation(line: 877, column: 52, scope: !4188)
!4210 = !DILocation(line: 878, column: 51, scope: !4188)
!4211 = !DILocation(line: 880, column: 11, scope: !4188)
!4212 = !DILocation(line: 880, column: 7, scope: !4188)
!4213 = !DILocation(line: 882, column: 24, scope: !4188)
!4214 = !DILocation(line: 882, column: 19, scope: !4188)
!4215 = !DILocation(line: 884, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4188, file: !179, line: 884, column: 7)
!4217 = !DILocation(line: 884, column: 7, scope: !4188)
!4218 = !DILocation(line: 885, column: 5, scope: !4216)
!4219 = !DILocation(line: 887, column: 7, scope: !4200)
!4220 = !DILocation(line: 887, column: 14, scope: !4200)
!4221 = !DILocation(line: 887, column: 7, scope: !4188)
!4222 = !DILocation(line: 889, column: 31, scope: !4199)
!4223 = !DILocation(line: 890, column: 11, scope: !4199)
!4224 = !DILocation(line: 892, column: 16, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4199, file: !179, line: 892, column: 11)
!4226 = !DILocation(line: 892, column: 11, scope: !4199)
!4227 = !DILocation(line: 893, column: 9, scope: !4225)
!4228 = !DILocation(line: 895, column: 32, scope: !4199)
!4229 = !DILocation(line: 895, column: 61, scope: !4199)
!4230 = !DILocation(line: 895, column: 58, scope: !4199)
!4231 = !DILocation(line: 895, column: 66, scope: !4199)
!4232 = !DILocation(line: 895, column: 22, scope: !4199)
!4233 = !DILocation(line: 895, column: 15, scope: !4199)
!4234 = !DILocation(line: 896, column: 11, scope: !4199)
!4235 = !DILocation(line: 897, column: 15, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4199, file: !179, line: 896, column: 11)
!4237 = !{i64 0, i64 8, !2156, i64 8, i64 8, !720}
!4238 = !DILocation(line: 897, column: 9, scope: !4236)
!4239 = !DILocation(line: 898, column: 20, scope: !4199)
!4240 = !DILocation(line: 898, column: 18, scope: !4199)
!4241 = !DILocation(line: 898, column: 7, scope: !4199)
!4242 = !DILocation(line: 898, column: 38, scope: !4199)
!4243 = !DILocation(line: 898, column: 31, scope: !4199)
!4244 = !DILocation(line: 898, column: 48, scope: !4199)
!4245 = !DILocation(line: 899, column: 14, scope: !4199)
!4246 = !DILocation(line: 900, column: 5, scope: !4199)
!4247 = !DILocation(line: 0, scope: !4188)
!4248 = !DILocation(line: 903, column: 19, scope: !4203)
!4249 = !DILocation(line: 903, column: 25, scope: !4203)
!4250 = !DILocation(line: 903, column: 12, scope: !4203)
!4251 = !DILocation(line: 904, column: 23, scope: !4203)
!4252 = !DILocation(line: 904, column: 11, scope: !4203)
!4253 = !DILocation(line: 906, column: 26, scope: !4203)
!4254 = !DILocation(line: 906, column: 32, scope: !4203)
!4255 = !DILocation(line: 906, column: 9, scope: !4203)
!4256 = !DILocation(line: 908, column: 55, scope: !4203)
!4257 = !DILocation(line: 909, column: 46, scope: !4203)
!4258 = !DILocation(line: 910, column: 55, scope: !4203)
!4259 = !DILocation(line: 911, column: 55, scope: !4203)
!4260 = !DILocation(line: 907, column: 20, scope: !4203)
!4261 = !DILocation(line: 907, column: 12, scope: !4203)
!4262 = !DILocation(line: 913, column: 14, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4203, file: !179, line: 913, column: 9)
!4264 = !DILocation(line: 913, column: 9, scope: !4203)
!4265 = !DILocation(line: 915, column: 35, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !179, line: 914, column: 7)
!4267 = !DILocation(line: 915, column: 20, scope: !4266)
!4268 = !DILocation(line: 916, column: 17, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4266, file: !179, line: 916, column: 13)
!4270 = !DILocation(line: 916, column: 13, scope: !4266)
!4271 = !DILocation(line: 917, column: 11, scope: !4269)
!4272 = !DILocation(line: 216, column: 20, scope: !4092, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 918, column: 27, scope: !4266)
!4274 = !DILocation(line: 218, column: 10, scope: !4092, inlinedAt: !4273)
!4275 = !DILocation(line: 918, column: 19, scope: !4266)
!4276 = !DILocation(line: 919, column: 69, scope: !4266)
!4277 = !DILocation(line: 921, column: 44, scope: !4266)
!4278 = !DILocation(line: 922, column: 44, scope: !4266)
!4279 = !DILocation(line: 919, column: 9, scope: !4266)
!4280 = !DILocation(line: 923, column: 7, scope: !4266)
!4281 = !DILocation(line: 0, scope: !4203)
!4282 = !DILocation(line: 925, column: 11, scope: !4203)
!4283 = !DILocation(line: 926, column: 5, scope: !4203)
!4284 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !179, file: !179, line: 937, type: !4285, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!58, !49, !100, !104}
!4287 = !{!4288, !4289, !4290}
!4288 = !DILocalVariable(name: "n", arg: 1, scope: !4284, file: !179, line: 937, type: !49)
!4289 = !DILocalVariable(name: "arg", arg: 2, scope: !4284, file: !179, line: 937, type: !100)
!4290 = !DILocalVariable(name: "argsize", arg: 3, scope: !4284, file: !179, line: 937, type: !104)
!4291 = !DILocation(line: 937, column: 21, scope: !4284)
!4292 = !DILocation(line: 937, column: 36, scope: !4284)
!4293 = !DILocation(line: 937, column: 48, scope: !4284)
!4294 = !DILocation(line: 939, column: 10, scope: !4284)
!4295 = !DILocation(line: 939, column: 3, scope: !4284)
!4296 = distinct !DISubprogram(name: "quotearg", scope: !179, file: !179, line: 943, type: !4297, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!58, !100}
!4299 = !{!4300}
!4300 = !DILocalVariable(name: "arg", arg: 1, scope: !4296, file: !179, line: 943, type: !100)
!4301 = !DILocation(line: 943, column: 23, scope: !4296)
!4302 = !DILocation(line: 931, column: 17, scope: !4178, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 945, column: 10, scope: !4296)
!4304 = !DILocation(line: 931, column: 32, scope: !4178, inlinedAt: !4303)
!4305 = !DILocation(line: 933, column: 10, scope: !4178, inlinedAt: !4303)
!4306 = !DILocation(line: 945, column: 3, scope: !4296)
!4307 = distinct !DISubprogram(name: "quotearg_mem", scope: !179, file: !179, line: 949, type: !4308, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!58, !100, !104}
!4310 = !{!4311, !4312}
!4311 = !DILocalVariable(name: "arg", arg: 1, scope: !4307, file: !179, line: 949, type: !100)
!4312 = !DILocalVariable(name: "argsize", arg: 2, scope: !4307, file: !179, line: 949, type: !104)
!4313 = !DILocation(line: 949, column: 27, scope: !4307)
!4314 = !DILocation(line: 949, column: 39, scope: !4307)
!4315 = !DILocation(line: 937, column: 21, scope: !4284, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 951, column: 10, scope: !4307)
!4317 = !DILocation(line: 937, column: 36, scope: !4284, inlinedAt: !4316)
!4318 = !DILocation(line: 937, column: 48, scope: !4284, inlinedAt: !4316)
!4319 = !DILocation(line: 939, column: 10, scope: !4284, inlinedAt: !4316)
!4320 = !DILocation(line: 951, column: 3, scope: !4307)
!4321 = distinct !DISubprogram(name: "quotearg_n_style", scope: !179, file: !179, line: 955, type: !4322, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!58, !49, !14, !100}
!4324 = !{!4325, !4326, !4327, !4328}
!4325 = !DILocalVariable(name: "n", arg: 1, scope: !4321, file: !179, line: 955, type: !49)
!4326 = !DILocalVariable(name: "s", arg: 2, scope: !4321, file: !179, line: 955, type: !14)
!4327 = !DILocalVariable(name: "arg", arg: 3, scope: !4321, file: !179, line: 955, type: !100)
!4328 = !DILocalVariable(name: "o", scope: !4321, file: !179, line: 957, type: !3096)
!4329 = !DILocation(line: 955, column: 23, scope: !4321)
!4330 = !DILocation(line: 955, column: 45, scope: !4321)
!4331 = !DILocation(line: 955, column: 60, scope: !4321)
!4332 = !DILocation(line: 957, column: 3, scope: !4321)
!4333 = !DILocation(line: 957, column: 32, scope: !4321)
!4334 = !DILocalVariable(name: "style", arg: 1, scope: !4335, file: !179, line: 193, type: !14)
!4335 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !179, file: !179, line: 193, type: !4336, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!186, !14}
!4338 = !{!4334, !4339}
!4339 = !DILocalVariable(name: "o", scope: !4335, file: !179, line: 195, type: !186)
!4340 = !DILocation(line: 193, column: 48, scope: !4335, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 957, column: 36, scope: !4321)
!4342 = !DILocation(line: 195, column: 26, scope: !4335, inlinedAt: !4341)
!4343 = !{!4344}
!4344 = distinct !{!4344, !4345, !"quoting_options_from_style: argument 0"}
!4345 = distinct !{!4345, !"quoting_options_from_style"}
!4346 = !DILocation(line: 196, column: 13, scope: !4347, inlinedAt: !4341)
!4347 = distinct !DILexicalBlock(scope: !4335, file: !179, line: 196, column: 7)
!4348 = !DILocation(line: 196, column: 7, scope: !4335, inlinedAt: !4341)
!4349 = !DILocation(line: 197, column: 5, scope: !4347, inlinedAt: !4341)
!4350 = !DILocation(line: 198, column: 5, scope: !4335, inlinedAt: !4341)
!4351 = !DILocation(line: 198, column: 11, scope: !4335, inlinedAt: !4341)
!4352 = !DILocation(line: 958, column: 10, scope: !4321)
!4353 = !DILocation(line: 959, column: 1, scope: !4321)
!4354 = !DILocation(line: 958, column: 3, scope: !4321)
!4355 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !179, file: !179, line: 962, type: !4356, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!58, !49, !14, !100, !104}
!4358 = !{!4359, !4360, !4361, !4362, !4363}
!4359 = !DILocalVariable(name: "n", arg: 1, scope: !4355, file: !179, line: 962, type: !49)
!4360 = !DILocalVariable(name: "s", arg: 2, scope: !4355, file: !179, line: 962, type: !14)
!4361 = !DILocalVariable(name: "arg", arg: 3, scope: !4355, file: !179, line: 963, type: !100)
!4362 = !DILocalVariable(name: "argsize", arg: 4, scope: !4355, file: !179, line: 963, type: !104)
!4363 = !DILocalVariable(name: "o", scope: !4355, file: !179, line: 965, type: !3096)
!4364 = !DILocation(line: 962, column: 27, scope: !4355)
!4365 = !DILocation(line: 962, column: 49, scope: !4355)
!4366 = !DILocation(line: 963, column: 35, scope: !4355)
!4367 = !DILocation(line: 963, column: 47, scope: !4355)
!4368 = !DILocation(line: 965, column: 3, scope: !4355)
!4369 = !DILocation(line: 965, column: 32, scope: !4355)
!4370 = !DILocation(line: 193, column: 48, scope: !4335, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 965, column: 36, scope: !4355)
!4372 = !DILocation(line: 195, column: 26, scope: !4335, inlinedAt: !4371)
!4373 = !{!4374}
!4374 = distinct !{!4374, !4375, !"quoting_options_from_style: argument 0"}
!4375 = distinct !{!4375, !"quoting_options_from_style"}
!4376 = !DILocation(line: 196, column: 13, scope: !4347, inlinedAt: !4371)
!4377 = !DILocation(line: 196, column: 7, scope: !4335, inlinedAt: !4371)
!4378 = !DILocation(line: 197, column: 5, scope: !4347, inlinedAt: !4371)
!4379 = !DILocation(line: 198, column: 5, scope: !4335, inlinedAt: !4371)
!4380 = !DILocation(line: 198, column: 11, scope: !4335, inlinedAt: !4371)
!4381 = !DILocation(line: 966, column: 10, scope: !4355)
!4382 = !DILocation(line: 967, column: 1, scope: !4355)
!4383 = !DILocation(line: 966, column: 3, scope: !4355)
!4384 = distinct !DISubprogram(name: "quotearg_style", scope: !179, file: !179, line: 970, type: !4385, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4387)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!58, !14, !100}
!4387 = !{!4388, !4389}
!4388 = !DILocalVariable(name: "s", arg: 1, scope: !4384, file: !179, line: 970, type: !14)
!4389 = !DILocalVariable(name: "arg", arg: 2, scope: !4384, file: !179, line: 970, type: !100)
!4390 = !DILocation(line: 970, column: 36, scope: !4384)
!4391 = !DILocation(line: 970, column: 51, scope: !4384)
!4392 = !DILocation(line: 955, column: 23, scope: !4321, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 972, column: 10, scope: !4384)
!4394 = !DILocation(line: 955, column: 45, scope: !4321, inlinedAt: !4393)
!4395 = !DILocation(line: 955, column: 60, scope: !4321, inlinedAt: !4393)
!4396 = !DILocation(line: 957, column: 3, scope: !4321, inlinedAt: !4393)
!4397 = !DILocation(line: 957, column: 32, scope: !4321, inlinedAt: !4393)
!4398 = !DILocation(line: 193, column: 48, scope: !4335, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 957, column: 36, scope: !4321, inlinedAt: !4393)
!4400 = !DILocation(line: 195, column: 26, scope: !4335, inlinedAt: !4399)
!4401 = !{!4402}
!4402 = distinct !{!4402, !4403, !"quoting_options_from_style: argument 0"}
!4403 = distinct !{!4403, !"quoting_options_from_style"}
!4404 = !DILocation(line: 196, column: 13, scope: !4347, inlinedAt: !4399)
!4405 = !DILocation(line: 196, column: 7, scope: !4335, inlinedAt: !4399)
!4406 = !DILocation(line: 197, column: 5, scope: !4347, inlinedAt: !4399)
!4407 = !DILocation(line: 198, column: 5, scope: !4335, inlinedAt: !4399)
!4408 = !DILocation(line: 198, column: 11, scope: !4335, inlinedAt: !4399)
!4409 = !DILocation(line: 958, column: 10, scope: !4321, inlinedAt: !4393)
!4410 = !DILocation(line: 959, column: 1, scope: !4321, inlinedAt: !4393)
!4411 = !DILocation(line: 972, column: 3, scope: !4384)
!4412 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !179, file: !179, line: 976, type: !4413, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!58, !14, !100, !104}
!4415 = !{!4416, !4417, !4418}
!4416 = !DILocalVariable(name: "s", arg: 1, scope: !4412, file: !179, line: 976, type: !14)
!4417 = !DILocalVariable(name: "arg", arg: 2, scope: !4412, file: !179, line: 976, type: !100)
!4418 = !DILocalVariable(name: "argsize", arg: 3, scope: !4412, file: !179, line: 976, type: !104)
!4419 = !DILocation(line: 976, column: 40, scope: !4412)
!4420 = !DILocation(line: 976, column: 55, scope: !4412)
!4421 = !DILocation(line: 976, column: 67, scope: !4412)
!4422 = !DILocation(line: 962, column: 27, scope: !4355, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 978, column: 10, scope: !4412)
!4424 = !DILocation(line: 962, column: 49, scope: !4355, inlinedAt: !4423)
!4425 = !DILocation(line: 963, column: 35, scope: !4355, inlinedAt: !4423)
!4426 = !DILocation(line: 963, column: 47, scope: !4355, inlinedAt: !4423)
!4427 = !DILocation(line: 965, column: 3, scope: !4355, inlinedAt: !4423)
!4428 = !DILocation(line: 965, column: 32, scope: !4355, inlinedAt: !4423)
!4429 = !DILocation(line: 193, column: 48, scope: !4335, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 965, column: 36, scope: !4355, inlinedAt: !4423)
!4431 = !DILocation(line: 195, column: 26, scope: !4335, inlinedAt: !4430)
!4432 = !{!4433}
!4433 = distinct !{!4433, !4434, !"quoting_options_from_style: argument 0"}
!4434 = distinct !{!4434, !"quoting_options_from_style"}
!4435 = !DILocation(line: 196, column: 13, scope: !4347, inlinedAt: !4430)
!4436 = !DILocation(line: 196, column: 7, scope: !4335, inlinedAt: !4430)
!4437 = !DILocation(line: 197, column: 5, scope: !4347, inlinedAt: !4430)
!4438 = !DILocation(line: 198, column: 5, scope: !4335, inlinedAt: !4430)
!4439 = !DILocation(line: 198, column: 11, scope: !4335, inlinedAt: !4430)
!4440 = !DILocation(line: 966, column: 10, scope: !4355, inlinedAt: !4423)
!4441 = !DILocation(line: 967, column: 1, scope: !4355, inlinedAt: !4423)
!4442 = !DILocation(line: 978, column: 3, scope: !4412)
!4443 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !179, file: !179, line: 982, type: !4444, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!58, !100, !104, !59}
!4446 = !{!4447, !4448, !4449, !4450}
!4447 = !DILocalVariable(name: "arg", arg: 1, scope: !4443, file: !179, line: 982, type: !100)
!4448 = !DILocalVariable(name: "argsize", arg: 2, scope: !4443, file: !179, line: 982, type: !104)
!4449 = !DILocalVariable(name: "ch", arg: 3, scope: !4443, file: !179, line: 982, type: !59)
!4450 = !DILocalVariable(name: "options", scope: !4443, file: !179, line: 984, type: !186)
!4451 = !DILocation(line: 982, column: 32, scope: !4443)
!4452 = !DILocation(line: 982, column: 44, scope: !4443)
!4453 = !DILocation(line: 982, column: 58, scope: !4443)
!4454 = !DILocation(line: 984, column: 3, scope: !4443)
!4455 = !DILocation(line: 985, column: 13, scope: !4443)
!4456 = !{i64 0, i64 4, !741, i64 4, i64 4, !809, i64 8, i64 32, !741, i64 40, i64 8, !720, i64 48, i64 8, !720}
!4457 = !DILocation(line: 984, column: 26, scope: !4443)
!4458 = !DILocation(line: 152, column: 43, scope: !3117, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 986, column: 3, scope: !4443)
!4460 = !DILocation(line: 152, column: 51, scope: !3117, inlinedAt: !4459)
!4461 = !DILocation(line: 152, column: 58, scope: !3117, inlinedAt: !4459)
!4462 = !DILocation(line: 154, column: 17, scope: !3117, inlinedAt: !4459)
!4463 = !DILocation(line: 156, column: 62, scope: !3117, inlinedAt: !4459)
!4464 = !DILocation(line: 156, column: 57, scope: !3117, inlinedAt: !4459)
!4465 = !DILocation(line: 155, column: 17, scope: !3117, inlinedAt: !4459)
!4466 = !DILocation(line: 157, column: 15, scope: !3117, inlinedAt: !4459)
!4467 = !DILocation(line: 157, column: 7, scope: !3117, inlinedAt: !4459)
!4468 = !DILocation(line: 158, column: 12, scope: !3117, inlinedAt: !4459)
!4469 = !DILocation(line: 158, column: 15, scope: !3117, inlinedAt: !4459)
!4470 = !DILocation(line: 158, column: 25, scope: !3117, inlinedAt: !4459)
!4471 = !DILocation(line: 158, column: 7, scope: !3117, inlinedAt: !4459)
!4472 = !DILocation(line: 159, column: 18, scope: !3117, inlinedAt: !4459)
!4473 = !DILocation(line: 159, column: 23, scope: !3117, inlinedAt: !4459)
!4474 = !DILocation(line: 159, column: 6, scope: !3117, inlinedAt: !4459)
!4475 = !DILocation(line: 987, column: 10, scope: !4443)
!4476 = !DILocation(line: 988, column: 1, scope: !4443)
!4477 = !DILocation(line: 987, column: 3, scope: !4443)
!4478 = distinct !DISubprogram(name: "quotearg_char", scope: !179, file: !179, line: 991, type: !4479, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4481)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!58, !100, !59}
!4481 = !{!4482, !4483}
!4482 = !DILocalVariable(name: "arg", arg: 1, scope: !4478, file: !179, line: 991, type: !100)
!4483 = !DILocalVariable(name: "ch", arg: 2, scope: !4478, file: !179, line: 991, type: !59)
!4484 = !DILocation(line: 991, column: 28, scope: !4478)
!4485 = !DILocation(line: 991, column: 38, scope: !4478)
!4486 = !DILocation(line: 982, column: 32, scope: !4443, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 993, column: 10, scope: !4478)
!4488 = !DILocation(line: 982, column: 44, scope: !4443, inlinedAt: !4487)
!4489 = !DILocation(line: 982, column: 58, scope: !4443, inlinedAt: !4487)
!4490 = !DILocation(line: 984, column: 3, scope: !4443, inlinedAt: !4487)
!4491 = !DILocation(line: 985, column: 13, scope: !4443, inlinedAt: !4487)
!4492 = !DILocation(line: 984, column: 26, scope: !4443, inlinedAt: !4487)
!4493 = !DILocation(line: 152, column: 43, scope: !3117, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 986, column: 3, scope: !4443, inlinedAt: !4487)
!4495 = !DILocation(line: 152, column: 51, scope: !3117, inlinedAt: !4494)
!4496 = !DILocation(line: 152, column: 58, scope: !3117, inlinedAt: !4494)
!4497 = !DILocation(line: 154, column: 17, scope: !3117, inlinedAt: !4494)
!4498 = !DILocation(line: 156, column: 62, scope: !3117, inlinedAt: !4494)
!4499 = !DILocation(line: 156, column: 57, scope: !3117, inlinedAt: !4494)
!4500 = !DILocation(line: 155, column: 17, scope: !3117, inlinedAt: !4494)
!4501 = !DILocation(line: 157, column: 15, scope: !3117, inlinedAt: !4494)
!4502 = !DILocation(line: 157, column: 7, scope: !3117, inlinedAt: !4494)
!4503 = !DILocation(line: 158, column: 12, scope: !3117, inlinedAt: !4494)
!4504 = !DILocation(line: 158, column: 15, scope: !3117, inlinedAt: !4494)
!4505 = !DILocation(line: 158, column: 25, scope: !3117, inlinedAt: !4494)
!4506 = !DILocation(line: 158, column: 7, scope: !3117, inlinedAt: !4494)
!4507 = !DILocation(line: 159, column: 18, scope: !3117, inlinedAt: !4494)
!4508 = !DILocation(line: 159, column: 23, scope: !3117, inlinedAt: !4494)
!4509 = !DILocation(line: 159, column: 6, scope: !3117, inlinedAt: !4494)
!4510 = !DILocation(line: 987, column: 10, scope: !4443, inlinedAt: !4487)
!4511 = !DILocation(line: 988, column: 1, scope: !4443, inlinedAt: !4487)
!4512 = !DILocation(line: 993, column: 3, scope: !4478)
!4513 = distinct !DISubprogram(name: "quotearg_colon", scope: !179, file: !179, line: 997, type: !4297, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4514)
!4514 = !{!4515}
!4515 = !DILocalVariable(name: "arg", arg: 1, scope: !4513, file: !179, line: 997, type: !100)
!4516 = !DILocation(line: 997, column: 29, scope: !4513)
!4517 = !DILocation(line: 991, column: 28, scope: !4478, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 999, column: 10, scope: !4513)
!4519 = !DILocation(line: 991, column: 38, scope: !4478, inlinedAt: !4518)
!4520 = !DILocation(line: 982, column: 32, scope: !4443, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 993, column: 10, scope: !4478, inlinedAt: !4518)
!4522 = !DILocation(line: 982, column: 44, scope: !4443, inlinedAt: !4521)
!4523 = !DILocation(line: 982, column: 58, scope: !4443, inlinedAt: !4521)
!4524 = !DILocation(line: 984, column: 3, scope: !4443, inlinedAt: !4521)
!4525 = !DILocation(line: 985, column: 13, scope: !4443, inlinedAt: !4521)
!4526 = !DILocation(line: 984, column: 26, scope: !4443, inlinedAt: !4521)
!4527 = !DILocation(line: 152, column: 43, scope: !3117, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 986, column: 3, scope: !4443, inlinedAt: !4521)
!4529 = !DILocation(line: 152, column: 51, scope: !3117, inlinedAt: !4528)
!4530 = !DILocation(line: 152, column: 58, scope: !3117, inlinedAt: !4528)
!4531 = !DILocation(line: 154, column: 17, scope: !3117, inlinedAt: !4528)
!4532 = !DILocation(line: 156, column: 57, scope: !3117, inlinedAt: !4528)
!4533 = !DILocation(line: 155, column: 17, scope: !3117, inlinedAt: !4528)
!4534 = !DILocation(line: 157, column: 7, scope: !3117, inlinedAt: !4528)
!4535 = !DILocation(line: 158, column: 12, scope: !3117, inlinedAt: !4528)
!4536 = !DILocation(line: 159, column: 6, scope: !3117, inlinedAt: !4528)
!4537 = !DILocation(line: 987, column: 10, scope: !4443, inlinedAt: !4521)
!4538 = !DILocation(line: 988, column: 1, scope: !4443, inlinedAt: !4521)
!4539 = !DILocation(line: 999, column: 3, scope: !4513)
!4540 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !179, file: !179, line: 1003, type: !4308, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4541)
!4541 = !{!4542, !4543}
!4542 = !DILocalVariable(name: "arg", arg: 1, scope: !4540, file: !179, line: 1003, type: !100)
!4543 = !DILocalVariable(name: "argsize", arg: 2, scope: !4540, file: !179, line: 1003, type: !104)
!4544 = !DILocation(line: 1003, column: 33, scope: !4540)
!4545 = !DILocation(line: 1003, column: 45, scope: !4540)
!4546 = !DILocation(line: 982, column: 32, scope: !4443, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 1005, column: 10, scope: !4540)
!4548 = !DILocation(line: 982, column: 44, scope: !4443, inlinedAt: !4547)
!4549 = !DILocation(line: 982, column: 58, scope: !4443, inlinedAt: !4547)
!4550 = !DILocation(line: 984, column: 3, scope: !4443, inlinedAt: !4547)
!4551 = !DILocation(line: 985, column: 13, scope: !4443, inlinedAt: !4547)
!4552 = !DILocation(line: 984, column: 26, scope: !4443, inlinedAt: !4547)
!4553 = !DILocation(line: 152, column: 43, scope: !3117, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 986, column: 3, scope: !4443, inlinedAt: !4547)
!4555 = !DILocation(line: 152, column: 51, scope: !3117, inlinedAt: !4554)
!4556 = !DILocation(line: 152, column: 58, scope: !3117, inlinedAt: !4554)
!4557 = !DILocation(line: 154, column: 17, scope: !3117, inlinedAt: !4554)
!4558 = !DILocation(line: 156, column: 57, scope: !3117, inlinedAt: !4554)
!4559 = !DILocation(line: 155, column: 17, scope: !3117, inlinedAt: !4554)
!4560 = !DILocation(line: 157, column: 7, scope: !3117, inlinedAt: !4554)
!4561 = !DILocation(line: 158, column: 12, scope: !3117, inlinedAt: !4554)
!4562 = !DILocation(line: 159, column: 6, scope: !3117, inlinedAt: !4554)
!4563 = !DILocation(line: 987, column: 10, scope: !4443, inlinedAt: !4547)
!4564 = !DILocation(line: 988, column: 1, scope: !4443, inlinedAt: !4547)
!4565 = !DILocation(line: 1005, column: 3, scope: !4540)
!4566 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !179, file: !179, line: 1009, type: !4322, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4567)
!4567 = !{!4568, !4569, !4570, !4571}
!4568 = !DILocalVariable(name: "n", arg: 1, scope: !4566, file: !179, line: 1009, type: !49)
!4569 = !DILocalVariable(name: "s", arg: 2, scope: !4566, file: !179, line: 1009, type: !14)
!4570 = !DILocalVariable(name: "arg", arg: 3, scope: !4566, file: !179, line: 1009, type: !100)
!4571 = !DILocalVariable(name: "options", scope: !4566, file: !179, line: 1011, type: !186)
!4572 = !DILocation(line: 195, column: 26, scope: !4335, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 1012, column: 13, scope: !4566)
!4574 = !DILocation(line: 1009, column: 29, scope: !4566)
!4575 = !DILocation(line: 1009, column: 51, scope: !4566)
!4576 = !DILocation(line: 1009, column: 66, scope: !4566)
!4577 = !DILocation(line: 1011, column: 3, scope: !4566)
!4578 = !DILocation(line: 1012, column: 13, scope: !4566)
!4579 = !DILocation(line: 193, column: 48, scope: !4335, inlinedAt: !4573)
!4580 = !{!4581}
!4581 = distinct !{!4581, !4582, !"quoting_options_from_style: argument 0"}
!4582 = distinct !{!4582, !"quoting_options_from_style"}
!4583 = !DILocation(line: 196, column: 13, scope: !4347, inlinedAt: !4573)
!4584 = !DILocation(line: 196, column: 7, scope: !4335, inlinedAt: !4573)
!4585 = !DILocation(line: 197, column: 5, scope: !4347, inlinedAt: !4573)
!4586 = !DILocation(line: 1011, column: 26, scope: !4566)
!4587 = !DILocation(line: 152, column: 43, scope: !3117, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 1013, column: 3, scope: !4566)
!4589 = !DILocation(line: 152, column: 51, scope: !3117, inlinedAt: !4588)
!4590 = !DILocation(line: 152, column: 58, scope: !3117, inlinedAt: !4588)
!4591 = !DILocation(line: 154, column: 17, scope: !3117, inlinedAt: !4588)
!4592 = !DILocation(line: 156, column: 57, scope: !3117, inlinedAt: !4588)
!4593 = !DILocation(line: 155, column: 17, scope: !3117, inlinedAt: !4588)
!4594 = !DILocation(line: 157, column: 7, scope: !3117, inlinedAt: !4588)
!4595 = !DILocation(line: 158, column: 12, scope: !3117, inlinedAt: !4588)
!4596 = !DILocation(line: 159, column: 6, scope: !3117, inlinedAt: !4588)
!4597 = !DILocation(line: 1014, column: 10, scope: !4566)
!4598 = !DILocation(line: 1015, column: 1, scope: !4566)
!4599 = !DILocation(line: 1014, column: 3, scope: !4566)
!4600 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !179, file: !179, line: 1018, type: !4601, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4603)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!58, !49, !100, !100, !100}
!4603 = !{!4604, !4605, !4606, !4607}
!4604 = !DILocalVariable(name: "n", arg: 1, scope: !4600, file: !179, line: 1018, type: !49)
!4605 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4600, file: !179, line: 1018, type: !100)
!4606 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4600, file: !179, line: 1019, type: !100)
!4607 = !DILocalVariable(name: "arg", arg: 4, scope: !4600, file: !179, line: 1019, type: !100)
!4608 = !DILocation(line: 1018, column: 24, scope: !4600)
!4609 = !DILocation(line: 1018, column: 39, scope: !4600)
!4610 = !DILocation(line: 1019, column: 32, scope: !4600)
!4611 = !DILocation(line: 1019, column: 57, scope: !4600)
!4612 = !DILocalVariable(name: "n", arg: 1, scope: !4613, file: !179, line: 1026, type: !49)
!4613 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !179, file: !179, line: 1026, type: !4614, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!58, !49, !100, !100, !100, !104}
!4616 = !{!4612, !4617, !4618, !4619, !4620, !4621}
!4617 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4613, file: !179, line: 1026, type: !100)
!4618 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4613, file: !179, line: 1027, type: !100)
!4619 = !DILocalVariable(name: "arg", arg: 4, scope: !4613, file: !179, line: 1028, type: !100)
!4620 = !DILocalVariable(name: "argsize", arg: 5, scope: !4613, file: !179, line: 1028, type: !104)
!4621 = !DILocalVariable(name: "o", scope: !4613, file: !179, line: 1030, type: !186)
!4622 = !DILocation(line: 1026, column: 28, scope: !4613, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 1021, column: 10, scope: !4600)
!4624 = !DILocation(line: 1026, column: 43, scope: !4613, inlinedAt: !4623)
!4625 = !DILocation(line: 1027, column: 36, scope: !4613, inlinedAt: !4623)
!4626 = !DILocation(line: 1028, column: 36, scope: !4613, inlinedAt: !4623)
!4627 = !DILocation(line: 1028, column: 48, scope: !4613, inlinedAt: !4623)
!4628 = !DILocation(line: 1030, column: 3, scope: !4613, inlinedAt: !4623)
!4629 = !DILocation(line: 1030, column: 30, scope: !4613, inlinedAt: !4623)
!4630 = !DILocation(line: 1030, column: 26, scope: !4613, inlinedAt: !4623)
!4631 = !DILocation(line: 179, column: 45, scope: !3165, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 1031, column: 3, scope: !4613, inlinedAt: !4623)
!4633 = !DILocation(line: 180, column: 33, scope: !3165, inlinedAt: !4632)
!4634 = !DILocation(line: 180, column: 57, scope: !3165, inlinedAt: !4632)
!4635 = !DILocation(line: 184, column: 6, scope: !3165, inlinedAt: !4632)
!4636 = !DILocation(line: 184, column: 12, scope: !3165, inlinedAt: !4632)
!4637 = !DILocation(line: 185, column: 8, scope: !3181, inlinedAt: !4632)
!4638 = !DILocation(line: 185, column: 23, scope: !3181, inlinedAt: !4632)
!4639 = !DILocation(line: 185, column: 19, scope: !3181, inlinedAt: !4632)
!4640 = !DILocation(line: 186, column: 5, scope: !3181, inlinedAt: !4632)
!4641 = !DILocation(line: 187, column: 6, scope: !3165, inlinedAt: !4632)
!4642 = !DILocation(line: 187, column: 17, scope: !3165, inlinedAt: !4632)
!4643 = !DILocation(line: 188, column: 6, scope: !3165, inlinedAt: !4632)
!4644 = !DILocation(line: 188, column: 18, scope: !3165, inlinedAt: !4632)
!4645 = !DILocation(line: 1032, column: 10, scope: !4613, inlinedAt: !4623)
!4646 = !DILocation(line: 1033, column: 1, scope: !4613, inlinedAt: !4623)
!4647 = !DILocation(line: 1021, column: 3, scope: !4600)
!4648 = !DILocation(line: 1026, column: 28, scope: !4613)
!4649 = !DILocation(line: 1026, column: 43, scope: !4613)
!4650 = !DILocation(line: 1027, column: 36, scope: !4613)
!4651 = !DILocation(line: 1028, column: 36, scope: !4613)
!4652 = !DILocation(line: 1028, column: 48, scope: !4613)
!4653 = !DILocation(line: 1030, column: 3, scope: !4613)
!4654 = !DILocation(line: 1030, column: 30, scope: !4613)
!4655 = !DILocation(line: 1030, column: 26, scope: !4613)
!4656 = !DILocation(line: 179, column: 45, scope: !3165, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 1031, column: 3, scope: !4613)
!4658 = !DILocation(line: 180, column: 33, scope: !3165, inlinedAt: !4657)
!4659 = !DILocation(line: 180, column: 57, scope: !3165, inlinedAt: !4657)
!4660 = !DILocation(line: 184, column: 6, scope: !3165, inlinedAt: !4657)
!4661 = !DILocation(line: 184, column: 12, scope: !3165, inlinedAt: !4657)
!4662 = !DILocation(line: 185, column: 8, scope: !3181, inlinedAt: !4657)
!4663 = !DILocation(line: 185, column: 23, scope: !3181, inlinedAt: !4657)
!4664 = !DILocation(line: 185, column: 19, scope: !3181, inlinedAt: !4657)
!4665 = !DILocation(line: 186, column: 5, scope: !3181, inlinedAt: !4657)
!4666 = !DILocation(line: 187, column: 6, scope: !3165, inlinedAt: !4657)
!4667 = !DILocation(line: 187, column: 17, scope: !3165, inlinedAt: !4657)
!4668 = !DILocation(line: 188, column: 6, scope: !3165, inlinedAt: !4657)
!4669 = !DILocation(line: 188, column: 18, scope: !3165, inlinedAt: !4657)
!4670 = !DILocation(line: 1032, column: 10, scope: !4613)
!4671 = !DILocation(line: 1033, column: 1, scope: !4613)
!4672 = !DILocation(line: 1032, column: 3, scope: !4613)
!4673 = distinct !DISubprogram(name: "quotearg_custom", scope: !179, file: !179, line: 1036, type: !4674, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4676)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!58, !100, !100, !100}
!4676 = !{!4677, !4678, !4679}
!4677 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4673, file: !179, line: 1036, type: !100)
!4678 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4673, file: !179, line: 1036, type: !100)
!4679 = !DILocalVariable(name: "arg", arg: 3, scope: !4673, file: !179, line: 1037, type: !100)
!4680 = !DILocation(line: 1036, column: 30, scope: !4673)
!4681 = !DILocation(line: 1036, column: 54, scope: !4673)
!4682 = !DILocation(line: 1037, column: 30, scope: !4673)
!4683 = !DILocation(line: 1018, column: 24, scope: !4600, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 1039, column: 10, scope: !4673)
!4685 = !DILocation(line: 1018, column: 39, scope: !4600, inlinedAt: !4684)
!4686 = !DILocation(line: 1019, column: 32, scope: !4600, inlinedAt: !4684)
!4687 = !DILocation(line: 1019, column: 57, scope: !4600, inlinedAt: !4684)
!4688 = !DILocation(line: 1026, column: 28, scope: !4613, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 1021, column: 10, scope: !4600, inlinedAt: !4684)
!4690 = !DILocation(line: 1026, column: 43, scope: !4613, inlinedAt: !4689)
!4691 = !DILocation(line: 1027, column: 36, scope: !4613, inlinedAt: !4689)
!4692 = !DILocation(line: 1028, column: 36, scope: !4613, inlinedAt: !4689)
!4693 = !DILocation(line: 1028, column: 48, scope: !4613, inlinedAt: !4689)
!4694 = !DILocation(line: 1030, column: 3, scope: !4613, inlinedAt: !4689)
!4695 = !DILocation(line: 1030, column: 30, scope: !4613, inlinedAt: !4689)
!4696 = !DILocation(line: 1030, column: 26, scope: !4613, inlinedAt: !4689)
!4697 = !DILocation(line: 179, column: 45, scope: !3165, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 1031, column: 3, scope: !4613, inlinedAt: !4689)
!4699 = !DILocation(line: 180, column: 33, scope: !3165, inlinedAt: !4698)
!4700 = !DILocation(line: 180, column: 57, scope: !3165, inlinedAt: !4698)
!4701 = !DILocation(line: 184, column: 6, scope: !3165, inlinedAt: !4698)
!4702 = !DILocation(line: 184, column: 12, scope: !3165, inlinedAt: !4698)
!4703 = !DILocation(line: 185, column: 8, scope: !3181, inlinedAt: !4698)
!4704 = !DILocation(line: 185, column: 23, scope: !3181, inlinedAt: !4698)
!4705 = !DILocation(line: 185, column: 19, scope: !3181, inlinedAt: !4698)
!4706 = !DILocation(line: 186, column: 5, scope: !3181, inlinedAt: !4698)
!4707 = !DILocation(line: 187, column: 6, scope: !3165, inlinedAt: !4698)
!4708 = !DILocation(line: 187, column: 17, scope: !3165, inlinedAt: !4698)
!4709 = !DILocation(line: 188, column: 6, scope: !3165, inlinedAt: !4698)
!4710 = !DILocation(line: 188, column: 18, scope: !3165, inlinedAt: !4698)
!4711 = !DILocation(line: 1032, column: 10, scope: !4613, inlinedAt: !4689)
!4712 = !DILocation(line: 1033, column: 1, scope: !4613, inlinedAt: !4689)
!4713 = !DILocation(line: 1039, column: 3, scope: !4673)
!4714 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !179, file: !179, line: 1043, type: !4715, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4717)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!58, !100, !100, !100, !104}
!4717 = !{!4718, !4719, !4720, !4721}
!4718 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4714, file: !179, line: 1043, type: !100)
!4719 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4714, file: !179, line: 1043, type: !100)
!4720 = !DILocalVariable(name: "arg", arg: 3, scope: !4714, file: !179, line: 1044, type: !100)
!4721 = !DILocalVariable(name: "argsize", arg: 4, scope: !4714, file: !179, line: 1044, type: !104)
!4722 = !DILocation(line: 1043, column: 34, scope: !4714)
!4723 = !DILocation(line: 1043, column: 58, scope: !4714)
!4724 = !DILocation(line: 1044, column: 34, scope: !4714)
!4725 = !DILocation(line: 1044, column: 46, scope: !4714)
!4726 = !DILocation(line: 1026, column: 28, scope: !4613, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 1046, column: 10, scope: !4714)
!4728 = !DILocation(line: 1026, column: 43, scope: !4613, inlinedAt: !4727)
!4729 = !DILocation(line: 1027, column: 36, scope: !4613, inlinedAt: !4727)
!4730 = !DILocation(line: 1028, column: 36, scope: !4613, inlinedAt: !4727)
!4731 = !DILocation(line: 1028, column: 48, scope: !4613, inlinedAt: !4727)
!4732 = !DILocation(line: 1030, column: 3, scope: !4613, inlinedAt: !4727)
!4733 = !DILocation(line: 1030, column: 30, scope: !4613, inlinedAt: !4727)
!4734 = !DILocation(line: 1030, column: 26, scope: !4613, inlinedAt: !4727)
!4735 = !DILocation(line: 179, column: 45, scope: !3165, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 1031, column: 3, scope: !4613, inlinedAt: !4727)
!4737 = !DILocation(line: 180, column: 33, scope: !3165, inlinedAt: !4736)
!4738 = !DILocation(line: 180, column: 57, scope: !3165, inlinedAt: !4736)
!4739 = !DILocation(line: 184, column: 6, scope: !3165, inlinedAt: !4736)
!4740 = !DILocation(line: 184, column: 12, scope: !3165, inlinedAt: !4736)
!4741 = !DILocation(line: 185, column: 8, scope: !3181, inlinedAt: !4736)
!4742 = !DILocation(line: 185, column: 23, scope: !3181, inlinedAt: !4736)
!4743 = !DILocation(line: 185, column: 19, scope: !3181, inlinedAt: !4736)
!4744 = !DILocation(line: 186, column: 5, scope: !3181, inlinedAt: !4736)
!4745 = !DILocation(line: 187, column: 6, scope: !3165, inlinedAt: !4736)
!4746 = !DILocation(line: 187, column: 17, scope: !3165, inlinedAt: !4736)
!4747 = !DILocation(line: 188, column: 6, scope: !3165, inlinedAt: !4736)
!4748 = !DILocation(line: 188, column: 18, scope: !3165, inlinedAt: !4736)
!4749 = !DILocation(line: 1032, column: 10, scope: !4613, inlinedAt: !4727)
!4750 = !DILocation(line: 1033, column: 1, scope: !4613, inlinedAt: !4727)
!4751 = !DILocation(line: 1046, column: 3, scope: !4714)
!4752 = distinct !DISubprogram(name: "quote_n_mem", scope: !179, file: !179, line: 1061, type: !4753, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!100, !49, !100, !104}
!4755 = !{!4756, !4757, !4758}
!4756 = !DILocalVariable(name: "n", arg: 1, scope: !4752, file: !179, line: 1061, type: !49)
!4757 = !DILocalVariable(name: "arg", arg: 2, scope: !4752, file: !179, line: 1061, type: !100)
!4758 = !DILocalVariable(name: "argsize", arg: 3, scope: !4752, file: !179, line: 1061, type: !104)
!4759 = !DILocation(line: 1061, column: 18, scope: !4752)
!4760 = !DILocation(line: 1061, column: 33, scope: !4752)
!4761 = !DILocation(line: 1061, column: 45, scope: !4752)
!4762 = !DILocation(line: 1063, column: 10, scope: !4752)
!4763 = !DILocation(line: 1063, column: 3, scope: !4752)
!4764 = distinct !DISubprogram(name: "quote_mem", scope: !179, file: !179, line: 1067, type: !4765, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4767)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!100, !100, !104}
!4767 = !{!4768, !4769}
!4768 = !DILocalVariable(name: "arg", arg: 1, scope: !4764, file: !179, line: 1067, type: !100)
!4769 = !DILocalVariable(name: "argsize", arg: 2, scope: !4764, file: !179, line: 1067, type: !104)
!4770 = !DILocation(line: 1067, column: 24, scope: !4764)
!4771 = !DILocation(line: 1067, column: 36, scope: !4764)
!4772 = !DILocation(line: 1061, column: 18, scope: !4752, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 1069, column: 10, scope: !4764)
!4774 = !DILocation(line: 1061, column: 33, scope: !4752, inlinedAt: !4773)
!4775 = !DILocation(line: 1061, column: 45, scope: !4752, inlinedAt: !4773)
!4776 = !DILocation(line: 1063, column: 10, scope: !4752, inlinedAt: !4773)
!4777 = !DILocation(line: 1069, column: 3, scope: !4764)
!4778 = distinct !DISubprogram(name: "quote_n", scope: !179, file: !179, line: 1073, type: !4779, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4781)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!100, !49, !100}
!4781 = !{!4782, !4783}
!4782 = !DILocalVariable(name: "n", arg: 1, scope: !4778, file: !179, line: 1073, type: !49)
!4783 = !DILocalVariable(name: "arg", arg: 2, scope: !4778, file: !179, line: 1073, type: !100)
!4784 = !DILocation(line: 1073, column: 14, scope: !4778)
!4785 = !DILocation(line: 1073, column: 29, scope: !4778)
!4786 = !DILocation(line: 1061, column: 18, scope: !4752, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 1075, column: 10, scope: !4778)
!4788 = !DILocation(line: 1061, column: 33, scope: !4752, inlinedAt: !4787)
!4789 = !DILocation(line: 1061, column: 45, scope: !4752, inlinedAt: !4787)
!4790 = !DILocation(line: 1063, column: 10, scope: !4752, inlinedAt: !4787)
!4791 = !DILocation(line: 1075, column: 3, scope: !4778)
!4792 = distinct !DISubprogram(name: "quote", scope: !179, file: !179, line: 1079, type: !4793, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !151, retainedNodes: !4795)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!100, !100}
!4795 = !{!4796}
!4796 = !DILocalVariable(name: "arg", arg: 1, scope: !4792, file: !179, line: 1079, type: !100)
!4797 = !DILocation(line: 1079, column: 20, scope: !4792)
!4798 = !DILocation(line: 1073, column: 14, scope: !4778, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 1081, column: 10, scope: !4792)
!4800 = !DILocation(line: 1073, column: 29, scope: !4778, inlinedAt: !4799)
!4801 = !DILocation(line: 1061, column: 18, scope: !4752, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 1075, column: 10, scope: !4778, inlinedAt: !4799)
!4803 = !DILocation(line: 1061, column: 33, scope: !4752, inlinedAt: !4802)
!4804 = !DILocation(line: 1061, column: 45, scope: !4752, inlinedAt: !4802)
!4805 = !DILocation(line: 1063, column: 10, scope: !4752, inlinedAt: !4802)
!4806 = !DILocation(line: 1081, column: 3, scope: !4792)
!4807 = distinct !DISubprogram(name: "strnlen1", scope: !4808, file: !4808, line: 28, type: !2543, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !244, retainedNodes: !4809)
!4808 = !DIFile(filename: "lib/strnlen1.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4809 = !{!4810, !4811, !4812}
!4810 = !DILocalVariable(name: "string", arg: 1, scope: !4807, file: !4808, line: 28, type: !100)
!4811 = !DILocalVariable(name: "maxlen", arg: 2, scope: !4807, file: !4808, line: 28, type: !104)
!4812 = !DILocalVariable(name: "end", scope: !4807, file: !4808, line: 30, type: !100)
!4813 = !DILocation(line: 28, column: 23, scope: !4807)
!4814 = !DILocation(line: 28, column: 38, scope: !4807)
!4815 = !DILocation(line: 30, column: 36, scope: !4807)
!4816 = !DILocation(line: 30, column: 15, scope: !4807)
!4817 = !DILocation(line: 31, column: 11, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4807, file: !4808, line: 31, column: 7)
!4819 = !DILocation(line: 32, column: 16, scope: !4818)
!4820 = !DILocation(line: 32, column: 25, scope: !4818)
!4821 = !DILocation(line: 31, column: 7, scope: !4807)
!4822 = !DILocation(line: 35, column: 1, scope: !4807)
!4823 = distinct !DISubprogram(name: "strintcmp", scope: !4824, file: !4824, line: 29, type: !4825, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !4827)
!4824 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!49, !100, !100}
!4827 = !{!4828, !4829}
!4828 = !DILocalVariable(name: "a", arg: 1, scope: !4823, file: !4824, line: 29, type: !100)
!4829 = !DILocalVariable(name: "b", arg: 2, scope: !4823, file: !4824, line: 29, type: !100)
!4830 = !DILocation(line: 29, column: 24, scope: !4823)
!4831 = !DILocation(line: 29, column: 39, scope: !4823)
!4832 = !DILocalVariable(name: "a", arg: 1, scope: !4833, file: !4834, line: 114, type: !100)
!4833 = distinct !DISubprogram(name: "numcompare", scope: !4834, file: !4834, line: 114, type: !4835, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !4837)
!4834 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!49, !100, !100, !49, !49}
!4837 = !{!4832, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845}
!4838 = !DILocalVariable(name: "b", arg: 2, scope: !4833, file: !4834, line: 114, type: !100)
!4839 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4833, file: !4834, line: 115, type: !49)
!4840 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4833, file: !4834, line: 115, type: !49)
!4841 = !DILocalVariable(name: "tmpa", scope: !4833, file: !4834, line: 117, type: !103)
!4842 = !DILocalVariable(name: "tmpb", scope: !4833, file: !4834, line: 118, type: !103)
!4843 = !DILocalVariable(name: "tmp", scope: !4833, file: !4834, line: 119, type: !49)
!4844 = !DILocalVariable(name: "log_a", scope: !4833, file: !4834, line: 120, type: !104)
!4845 = !DILocalVariable(name: "log_b", scope: !4833, file: !4834, line: 121, type: !104)
!4846 = !DILocation(line: 114, column: 25, scope: !4833, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 31, column: 10, scope: !4823)
!4848 = !DILocation(line: 114, column: 40, scope: !4833, inlinedAt: !4847)
!4849 = !DILocation(line: 115, column: 17, scope: !4833, inlinedAt: !4847)
!4850 = !DILocation(line: 115, column: 36, scope: !4833, inlinedAt: !4847)
!4851 = !DILocation(line: 117, column: 24, scope: !4833, inlinedAt: !4847)
!4852 = !DILocation(line: 117, column: 17, scope: !4833, inlinedAt: !4847)
!4853 = !DILocation(line: 118, column: 24, scope: !4833, inlinedAt: !4847)
!4854 = !DILocation(line: 118, column: 17, scope: !4833, inlinedAt: !4847)
!4855 = !DILocation(line: 123, column: 12, scope: !4856, inlinedAt: !4847)
!4856 = distinct !DILexicalBlock(scope: !4833, file: !4834, line: 123, column: 7)
!4857 = !DILocation(line: 123, column: 7, scope: !4833, inlinedAt: !4847)
!4858 = !DILocation(line: 126, column: 17, scope: !4859, inlinedAt: !4847)
!4859 = distinct !DILexicalBlock(scope: !4856, file: !4834, line: 124, column: 5)
!4860 = !DILocation(line: 126, column: 16, scope: !4859, inlinedAt: !4847)
!4861 = !DILocation(line: 127, column: 19, scope: !4859, inlinedAt: !4847)
!4862 = !DILocation(line: 127, column: 35, scope: !4859, inlinedAt: !4847)
!4863 = !DILocation(line: 128, column: 16, scope: !4864, inlinedAt: !4847)
!4864 = distinct !DILexicalBlock(scope: !4859, file: !4834, line: 128, column: 11)
!4865 = !DILocation(line: 128, column: 11, scope: !4859, inlinedAt: !4847)
!4866 = !DILocation(line: 134, column: 15, scope: !4867, inlinedAt: !4847)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !4834, line: 134, column: 15)
!4868 = distinct !DILexicalBlock(scope: !4864, file: !4834, line: 129, column: 9)
!4869 = !DILocation(line: 134, column: 15, scope: !4868, inlinedAt: !4847)
!4870 = !DILocation(line: 136, column: 23, scope: !4868, inlinedAt: !4847)
!4871 = !DILocation(line: 136, column: 39, scope: !4868, inlinedAt: !4847)
!4872 = !DILocation(line: 137, column: 21, scope: !4868, inlinedAt: !4847)
!4873 = !DILocation(line: 137, column: 20, scope: !4868, inlinedAt: !4847)
!4874 = distinct !{!4874, !4875, !4876}
!4875 = !DILocation(line: 136, column: 11, scope: !4868)
!4876 = !DILocation(line: 137, column: 23, scope: !4868)
!4877 = !DILocation(line: 0, scope: !4868, inlinedAt: !4847)
!4878 = !DILocation(line: 142, column: 20, scope: !4868, inlinedAt: !4847)
!4879 = !DILocation(line: 142, column: 18, scope: !4868, inlinedAt: !4847)
!4880 = !DILocation(line: 142, column: 11, scope: !4868, inlinedAt: !4847)
!4881 = !DILocation(line: 145, column: 17, scope: !4859, inlinedAt: !4847)
!4882 = !DILocation(line: 145, column: 16, scope: !4859, inlinedAt: !4847)
!4883 = !DILocation(line: 146, column: 19, scope: !4859, inlinedAt: !4847)
!4884 = !DILocation(line: 146, column: 35, scope: !4859, inlinedAt: !4847)
!4885 = !DILocation(line: 148, column: 14, scope: !4859, inlinedAt: !4847)
!4886 = !DILocation(line: 148, column: 19, scope: !4859, inlinedAt: !4847)
!4887 = !DILocation(line: 148, column: 30, scope: !4859, inlinedAt: !4847)
!4888 = !DILocation(line: 148, column: 27, scope: !4859, inlinedAt: !4847)
!4889 = !DILocation(line: 151, column: 21, scope: !4890, inlinedAt: !4847)
!4890 = distinct !DILexicalBlock(scope: !4859, file: !4834, line: 149, column: 9)
!4891 = !DILocation(line: 151, column: 20, scope: !4890, inlinedAt: !4847)
!4892 = !DILocation(line: 154, column: 21, scope: !4890, inlinedAt: !4847)
!4893 = !DILocation(line: 154, column: 20, scope: !4890, inlinedAt: !4847)
!4894 = !DILocation(line: 148, column: 22, scope: !4859, inlinedAt: !4847)
!4895 = !DILocation(line: 164, column: 23, scope: !4896, inlinedAt: !4847)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !4834, line: 164, column: 7)
!4897 = distinct !DILexicalBlock(scope: !4859, file: !4834, line: 164, column: 7)
!4898 = !DILocation(line: 0, scope: !4890, inlinedAt: !4847)
!4899 = !DILocation(line: 162, column: 18, scope: !4859, inlinedAt: !4847)
!4900 = !DILocation(line: 119, column: 7, scope: !4833, inlinedAt: !4847)
!4901 = !DILocation(line: 120, column: 10, scope: !4833, inlinedAt: !4847)
!4902 = !DILocation(line: 164, column: 7, scope: !4897, inlinedAt: !4847)
!4903 = !DILocation(line: 0, scope: !4896, inlinedAt: !4847)
!4904 = !DILocation(line: 121, column: 10, scope: !4833, inlinedAt: !4847)
!4905 = !DILocation(line: 169, column: 23, scope: !4906, inlinedAt: !4847)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !4834, line: 169, column: 7)
!4907 = distinct !DILexicalBlock(scope: !4859, file: !4834, line: 169, column: 7)
!4908 = !DILocation(line: 169, column: 7, scope: !4907, inlinedAt: !4847)
!4909 = !DILocation(line: 166, column: 19, scope: !4896, inlinedAt: !4847)
!4910 = !DILocation(line: 166, column: 18, scope: !4896, inlinedAt: !4847)
!4911 = !DILocation(line: 164, column: 39, scope: !4896, inlinedAt: !4847)
!4912 = distinct !{!4912, !4913, !4914}
!4913 = !DILocation(line: 164, column: 7, scope: !4897)
!4914 = !DILocation(line: 167, column: 37, scope: !4897)
!4915 = !DILocation(line: 171, column: 19, scope: !4906, inlinedAt: !4847)
!4916 = !DILocation(line: 171, column: 18, scope: !4906, inlinedAt: !4847)
!4917 = !DILocation(line: 169, column: 39, scope: !4906, inlinedAt: !4847)
!4918 = distinct !{!4918, !4919, !4920}
!4919 = !DILocation(line: 169, column: 7, scope: !4907)
!4920 = !DILocation(line: 172, column: 37, scope: !4907)
!4921 = !DILocation(line: 0, scope: !4906, inlinedAt: !4847)
!4922 = !DILocation(line: 174, column: 17, scope: !4923, inlinedAt: !4847)
!4923 = distinct !DILexicalBlock(scope: !4859, file: !4834, line: 174, column: 11)
!4924 = !DILocation(line: 174, column: 11, scope: !4859, inlinedAt: !4847)
!4925 = !DILocation(line: 175, column: 22, scope: !4923, inlinedAt: !4847)
!4926 = !DILocation(line: 175, column: 16, scope: !4923, inlinedAt: !4847)
!4927 = !DILocation(line: 175, column: 9, scope: !4923, inlinedAt: !4847)
!4928 = !DILocation(line: 177, column: 12, scope: !4929, inlinedAt: !4847)
!4929 = distinct !DILexicalBlock(scope: !4859, file: !4834, line: 177, column: 11)
!4930 = !DILocation(line: 178, column: 9, scope: !4929, inlinedAt: !4847)
!4931 = !DILocation(line: 182, column: 17, scope: !4932, inlinedAt: !4847)
!4932 = distinct !DILexicalBlock(scope: !4856, file: !4834, line: 182, column: 12)
!4933 = !DILocation(line: 182, column: 12, scope: !4856, inlinedAt: !4847)
!4934 = !DILocation(line: 203, column: 19, scope: !4935, inlinedAt: !4847)
!4935 = distinct !DILexicalBlock(scope: !4932, file: !4834, line: 202, column: 5)
!4936 = !DILocation(line: 203, column: 35, scope: !4935, inlinedAt: !4847)
!4937 = !DILocation(line: 185, column: 17, scope: !4938, inlinedAt: !4847)
!4938 = distinct !DILexicalBlock(scope: !4932, file: !4834, line: 183, column: 5)
!4939 = !DILocation(line: 185, column: 16, scope: !4938, inlinedAt: !4847)
!4940 = !DILocation(line: 186, column: 19, scope: !4938, inlinedAt: !4847)
!4941 = !DILocation(line: 186, column: 35, scope: !4938, inlinedAt: !4847)
!4942 = !DILocation(line: 191, column: 11, scope: !4943, inlinedAt: !4847)
!4943 = distinct !DILexicalBlock(scope: !4938, file: !4834, line: 191, column: 11)
!4944 = !DILocation(line: 191, column: 11, scope: !4938, inlinedAt: !4847)
!4945 = !DILocation(line: 193, column: 19, scope: !4938, inlinedAt: !4847)
!4946 = !DILocation(line: 193, column: 35, scope: !4938, inlinedAt: !4847)
!4947 = !DILocation(line: 194, column: 17, scope: !4938, inlinedAt: !4847)
!4948 = !DILocation(line: 194, column: 16, scope: !4938, inlinedAt: !4847)
!4949 = distinct !{!4949, !4950, !4951}
!4950 = !DILocation(line: 193, column: 7, scope: !4938)
!4951 = !DILocation(line: 194, column: 19, scope: !4938)
!4952 = !DILocation(line: 0, scope: !4938, inlinedAt: !4847)
!4953 = !DILocation(line: 199, column: 14, scope: !4938, inlinedAt: !4847)
!4954 = !DILocation(line: 199, column: 7, scope: !4938, inlinedAt: !4847)
!4955 = !DILocation(line: 0, scope: !4935, inlinedAt: !4847)
!4956 = !DILocation(line: 205, column: 19, scope: !4935, inlinedAt: !4847)
!4957 = !DILocation(line: 205, column: 35, scope: !4935, inlinedAt: !4847)
!4958 = !DILocation(line: 204, column: 17, scope: !4935, inlinedAt: !4847)
!4959 = !DILocation(line: 204, column: 16, scope: !4935, inlinedAt: !4847)
!4960 = distinct !{!4960, !4961, !4962}
!4961 = !DILocation(line: 203, column: 7, scope: !4935)
!4962 = !DILocation(line: 204, column: 19, scope: !4935)
!4963 = !DILocation(line: 208, column: 14, scope: !4935, inlinedAt: !4847)
!4964 = !DILocation(line: 208, column: 19, scope: !4935, inlinedAt: !4847)
!4965 = !DILocation(line: 208, column: 30, scope: !4935, inlinedAt: !4847)
!4966 = !DILocation(line: 208, column: 27, scope: !4935, inlinedAt: !4847)
!4967 = !DILocation(line: 206, column: 17, scope: !4935, inlinedAt: !4847)
!4968 = !DILocation(line: 206, column: 16, scope: !4935, inlinedAt: !4847)
!4969 = distinct !{!4969, !4970, !4971}
!4970 = !DILocation(line: 205, column: 7, scope: !4935)
!4971 = !DILocation(line: 206, column: 19, scope: !4935)
!4972 = !DILocation(line: 211, column: 21, scope: !4973, inlinedAt: !4847)
!4973 = distinct !DILexicalBlock(scope: !4935, file: !4834, line: 209, column: 9)
!4974 = !DILocation(line: 211, column: 20, scope: !4973, inlinedAt: !4847)
!4975 = !DILocation(line: 214, column: 21, scope: !4973, inlinedAt: !4847)
!4976 = !DILocation(line: 214, column: 20, scope: !4973, inlinedAt: !4847)
!4977 = !DILocation(line: 208, column: 22, scope: !4935, inlinedAt: !4847)
!4978 = !DILocation(line: 224, column: 23, scope: !4979, inlinedAt: !4847)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !4834, line: 224, column: 7)
!4980 = distinct !DILexicalBlock(scope: !4935, file: !4834, line: 224, column: 7)
!4981 = !DILocation(line: 0, scope: !4973, inlinedAt: !4847)
!4982 = !DILocation(line: 222, column: 18, scope: !4935, inlinedAt: !4847)
!4983 = !DILocation(line: 224, column: 7, scope: !4980, inlinedAt: !4847)
!4984 = !DILocation(line: 0, scope: !4979, inlinedAt: !4847)
!4985 = !DILocation(line: 229, column: 23, scope: !4986, inlinedAt: !4847)
!4986 = distinct !DILexicalBlock(scope: !4987, file: !4834, line: 229, column: 7)
!4987 = distinct !DILexicalBlock(scope: !4935, file: !4834, line: 229, column: 7)
!4988 = !DILocation(line: 229, column: 7, scope: !4987, inlinedAt: !4847)
!4989 = !DILocation(line: 226, column: 19, scope: !4979, inlinedAt: !4847)
!4990 = !DILocation(line: 226, column: 18, scope: !4979, inlinedAt: !4847)
!4991 = !DILocation(line: 224, column: 39, scope: !4979, inlinedAt: !4847)
!4992 = distinct !{!4992, !4993, !4994}
!4993 = !DILocation(line: 224, column: 7, scope: !4980)
!4994 = !DILocation(line: 227, column: 37, scope: !4980)
!4995 = !DILocation(line: 231, column: 19, scope: !4986, inlinedAt: !4847)
!4996 = !DILocation(line: 231, column: 18, scope: !4986, inlinedAt: !4847)
!4997 = !DILocation(line: 229, column: 39, scope: !4986, inlinedAt: !4847)
!4998 = distinct !{!4998, !4999, !5000}
!4999 = !DILocation(line: 229, column: 7, scope: !4987)
!5000 = !DILocation(line: 232, column: 37, scope: !4987)
!5001 = !DILocation(line: 0, scope: !4986, inlinedAt: !4847)
!5002 = !DILocation(line: 234, column: 17, scope: !5003, inlinedAt: !4847)
!5003 = distinct !DILexicalBlock(scope: !4935, file: !4834, line: 234, column: 11)
!5004 = !DILocation(line: 234, column: 11, scope: !4935, inlinedAt: !4847)
!5005 = !DILocation(line: 235, column: 22, scope: !5003, inlinedAt: !4847)
!5006 = !DILocation(line: 235, column: 16, scope: !5003, inlinedAt: !4847)
!5007 = !DILocation(line: 235, column: 9, scope: !5003, inlinedAt: !4847)
!5008 = !DILocation(line: 237, column: 12, scope: !5009, inlinedAt: !4847)
!5009 = distinct !DILexicalBlock(scope: !4935, file: !4834, line: 237, column: 11)
!5010 = !DILocation(line: 238, column: 9, scope: !5009, inlinedAt: !4847)
!5011 = !DILocation(line: 0, scope: !5012, inlinedAt: !4847)
!5012 = distinct !DILexicalBlock(scope: !4935, file: !4834, line: 218, column: 11)
!5013 = !DILocation(line: 31, column: 3, scope: !4823)
!5014 = distinct !DISubprogram(name: "version_etc_arn", scope: !254, file: !254, line: 62, type: !5015, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !5070)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{null, !5017, !100, !100, !100, !5069, !104}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !5019, line: 7, baseType: !5020)
!5019 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5021, line: 49, size: 1728, elements: !5022)
!5021 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5038, !5040, !5041, !5042, !5045, !5046, !5048, !5050, !5053, !5055, !5058, !5061, !5062, !5063, !5064, !5065}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5020, file: !5021, line: 51, baseType: !49, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5020, file: !5021, line: 54, baseType: !58, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5020, file: !5021, line: 55, baseType: !58, size: 64, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5020, file: !5021, line: 56, baseType: !58, size: 64, offset: 192)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5020, file: !5021, line: 57, baseType: !58, size: 64, offset: 256)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5020, file: !5021, line: 58, baseType: !58, size: 64, offset: 320)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5020, file: !5021, line: 59, baseType: !58, size: 64, offset: 384)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5020, file: !5021, line: 60, baseType: !58, size: 64, offset: 448)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5020, file: !5021, line: 61, baseType: !58, size: 64, offset: 512)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5020, file: !5021, line: 64, baseType: !58, size: 64, offset: 576)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5020, file: !5021, line: 65, baseType: !58, size: 64, offset: 640)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5020, file: !5021, line: 66, baseType: !58, size: 64, offset: 704)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5020, file: !5021, line: 68, baseType: !5036, size: 64, offset: 768)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5021, line: 36, flags: DIFlagFwdDecl)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5020, file: !5021, line: 70, baseType: !5039, size: 64, offset: 832)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5020, file: !5021, line: 72, baseType: !49, size: 32, offset: 896)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5020, file: !5021, line: 73, baseType: !49, size: 32, offset: 928)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5020, file: !5021, line: 74, baseType: !5043, size: 64, offset: 960)
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !5044, line: 150, baseType: !2135)
!5044 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5020, file: !5021, line: 77, baseType: !175, size: 16, offset: 1024)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5020, file: !5021, line: 78, baseType: !5047, size: 8, offset: 1040)
!5047 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5020, file: !5021, line: 79, baseType: !5049, size: 8, offset: 1048)
!5049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 8, elements: !55)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5020, file: !5021, line: 81, baseType: !5051, size: 64, offset: 1088)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !5021, line: 43, baseType: null)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5020, file: !5021, line: 89, baseType: !5054, size: 64, offset: 1152)
!5054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !5044, line: 151, baseType: !2135)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5020, file: !5021, line: 91, baseType: !5056, size: 64, offset: 1216)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !5021, line: 37, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5020, file: !5021, line: 92, baseType: !5059, size: 64, offset: 1280)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !5021, line: 38, flags: DIFlagFwdDecl)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5020, file: !5021, line: 93, baseType: !5039, size: 64, offset: 1344)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5020, file: !5021, line: 94, baseType: !102, size: 64, offset: 1408)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5020, file: !5021, line: 95, baseType: !104, size: 64, offset: 1472)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5020, file: !5021, line: 96, baseType: !49, size: 32, offset: 1536)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5020, file: !5021, line: 98, baseType: !5066, size: 160, offset: 1568)
!5066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 160, elements: !5067)
!5067 = !{!5068}
!5068 = !DISubrange(count: 20)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!5070 = !{!5071, !5072, !5073, !5074, !5075, !5076}
!5071 = !DILocalVariable(name: "stream", arg: 1, scope: !5014, file: !254, line: 62, type: !5017)
!5072 = !DILocalVariable(name: "command_name", arg: 2, scope: !5014, file: !254, line: 63, type: !100)
!5073 = !DILocalVariable(name: "package", arg: 3, scope: !5014, file: !254, line: 63, type: !100)
!5074 = !DILocalVariable(name: "version", arg: 4, scope: !5014, file: !254, line: 64, type: !100)
!5075 = !DILocalVariable(name: "authors", arg: 5, scope: !5014, file: !254, line: 65, type: !5069)
!5076 = !DILocalVariable(name: "n_authors", arg: 6, scope: !5014, file: !254, line: 65, type: !104)
!5077 = !DILocation(line: 62, column: 24, scope: !5014)
!5078 = !DILocation(line: 63, column: 30, scope: !5014)
!5079 = !DILocation(line: 63, column: 56, scope: !5014)
!5080 = !DILocation(line: 64, column: 30, scope: !5014)
!5081 = !DILocation(line: 65, column: 39, scope: !5014)
!5082 = !DILocation(line: 65, column: 55, scope: !5014)
!5083 = !DILocation(line: 67, column: 7, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5014, file: !254, line: 67, column: 7)
!5085 = !DILocation(line: 67, column: 7, scope: !5014)
!5086 = !DILocation(line: 68, column: 5, scope: !5084)
!5087 = !DILocation(line: 70, column: 5, scope: !5084)
!5088 = !DILocation(line: 84, column: 3, scope: !5014)
!5089 = !DILocation(line: 86, column: 3, scope: !5014)
!5090 = !DILocation(line: 95, column: 3, scope: !5014)
!5091 = !DILocation(line: 99, column: 7, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5014, file: !254, line: 96, column: 5)
!5093 = !DILocation(line: 102, column: 7, scope: !5092)
!5094 = !DILocation(line: 103, column: 7, scope: !5092)
!5095 = !DILocation(line: 106, column: 7, scope: !5092)
!5096 = !DILocation(line: 107, column: 7, scope: !5092)
!5097 = !DILocation(line: 110, column: 7, scope: !5092)
!5098 = !DILocation(line: 112, column: 7, scope: !5092)
!5099 = !DILocation(line: 117, column: 7, scope: !5092)
!5100 = !DILocation(line: 119, column: 7, scope: !5092)
!5101 = !DILocation(line: 124, column: 7, scope: !5092)
!5102 = !DILocation(line: 126, column: 7, scope: !5092)
!5103 = !DILocation(line: 131, column: 7, scope: !5092)
!5104 = !DILocation(line: 134, column: 7, scope: !5092)
!5105 = !DILocation(line: 139, column: 7, scope: !5092)
!5106 = !DILocation(line: 142, column: 7, scope: !5092)
!5107 = !DILocation(line: 147, column: 7, scope: !5092)
!5108 = !DILocation(line: 151, column: 7, scope: !5092)
!5109 = !DILocation(line: 156, column: 7, scope: !5092)
!5110 = !DILocation(line: 160, column: 7, scope: !5092)
!5111 = !DILocation(line: 167, column: 7, scope: !5092)
!5112 = !DILocation(line: 171, column: 7, scope: !5092)
!5113 = !DILocation(line: 173, column: 1, scope: !5014)
!5114 = distinct !DISubprogram(name: "version_etc_ar", scope: !254, file: !254, line: 180, type: !5115, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !5117)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{null, !5017, !100, !100, !100, !5069}
!5117 = !{!5118, !5119, !5120, !5121, !5122, !5123}
!5118 = !DILocalVariable(name: "stream", arg: 1, scope: !5114, file: !254, line: 180, type: !5017)
!5119 = !DILocalVariable(name: "command_name", arg: 2, scope: !5114, file: !254, line: 181, type: !100)
!5120 = !DILocalVariable(name: "package", arg: 3, scope: !5114, file: !254, line: 181, type: !100)
!5121 = !DILocalVariable(name: "version", arg: 4, scope: !5114, file: !254, line: 182, type: !100)
!5122 = !DILocalVariable(name: "authors", arg: 5, scope: !5114, file: !254, line: 182, type: !5069)
!5123 = !DILocalVariable(name: "n_authors", scope: !5114, file: !254, line: 184, type: !104)
!5124 = !DILocation(line: 180, column: 23, scope: !5114)
!5125 = !DILocation(line: 181, column: 29, scope: !5114)
!5126 = !DILocation(line: 181, column: 55, scope: !5114)
!5127 = !DILocation(line: 182, column: 29, scope: !5114)
!5128 = !DILocation(line: 182, column: 59, scope: !5114)
!5129 = !DILocation(line: 184, column: 10, scope: !5114)
!5130 = !DILocation(line: 186, column: 8, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5114, file: !254, line: 186, column: 3)
!5132 = !DILocation(line: 0, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5131, file: !254, line: 186, column: 3)
!5134 = !DILocation(line: 186, column: 23, scope: !5133)
!5135 = !DILocation(line: 186, column: 3, scope: !5131)
!5136 = !DILocation(line: 186, column: 52, scope: !5133)
!5137 = distinct !{!5137, !5135, !5138}
!5138 = !DILocation(line: 187, column: 5, scope: !5131)
!5139 = !DILocation(line: 188, column: 3, scope: !5114)
!5140 = !DILocation(line: 189, column: 1, scope: !5114)
!5141 = distinct !DISubprogram(name: "version_etc_va", scope: !254, file: !254, line: 196, type: !5142, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !5151)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !5017, !100, !100, !100, !5144}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !251, line: 189, size: 192, elements: !5146)
!5146 = !{!5147, !5148, !5149, !5150}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5145, file: !251, line: 189, baseType: !6, size: 32)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5145, file: !251, line: 189, baseType: !6, size: 32, offset: 32)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5145, file: !251, line: 189, baseType: !102, size: 64, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5145, file: !251, line: 189, baseType: !102, size: 64, offset: 128)
!5151 = !{!5152, !5153, !5154, !5155, !5156, !5157, !5158}
!5152 = !DILocalVariable(name: "stream", arg: 1, scope: !5141, file: !254, line: 196, type: !5017)
!5153 = !DILocalVariable(name: "command_name", arg: 2, scope: !5141, file: !254, line: 197, type: !100)
!5154 = !DILocalVariable(name: "package", arg: 3, scope: !5141, file: !254, line: 197, type: !100)
!5155 = !DILocalVariable(name: "version", arg: 4, scope: !5141, file: !254, line: 198, type: !100)
!5156 = !DILocalVariable(name: "authors", arg: 5, scope: !5141, file: !254, line: 198, type: !5144)
!5157 = !DILocalVariable(name: "n_authors", scope: !5141, file: !254, line: 200, type: !104)
!5158 = !DILocalVariable(name: "authtab", scope: !5141, file: !254, line: 201, type: !5159)
!5159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 640, elements: !182)
!5160 = !DILocation(line: 196, column: 23, scope: !5141)
!5161 = !DILocation(line: 197, column: 29, scope: !5141)
!5162 = !DILocation(line: 197, column: 55, scope: !5141)
!5163 = !DILocation(line: 198, column: 29, scope: !5141)
!5164 = !DILocation(line: 198, column: 46, scope: !5141)
!5165 = !DILocation(line: 201, column: 3, scope: !5141)
!5166 = !DILocation(line: 201, column: 15, scope: !5141)
!5167 = !DILocation(line: 200, column: 10, scope: !5141)
!5168 = !DILocation(line: 205, column: 35, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !254, line: 203, column: 3)
!5170 = distinct !DILexicalBlock(scope: !5141, file: !254, line: 203, column: 3)
!5171 = !DILocation(line: 205, column: 14, scope: !5169)
!5172 = !DILocation(line: 205, column: 33, scope: !5169)
!5173 = !DILocation(line: 205, column: 67, scope: !5169)
!5174 = !DILocation(line: 203, column: 3, scope: !5170)
!5175 = !DILocation(line: 0, scope: !5169)
!5176 = !DILocation(line: 208, column: 3, scope: !5141)
!5177 = !DILocation(line: 210, column: 1, scope: !5141)
!5178 = distinct !DISubprogram(name: "version_etc", scope: !254, file: !254, line: 227, type: !5179, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !5181)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{null, !5017, !100, !100, !100, null}
!5181 = !{!5182, !5183, !5184, !5185, !5186}
!5182 = !DILocalVariable(name: "stream", arg: 1, scope: !5178, file: !254, line: 227, type: !5017)
!5183 = !DILocalVariable(name: "command_name", arg: 2, scope: !5178, file: !254, line: 228, type: !100)
!5184 = !DILocalVariable(name: "package", arg: 3, scope: !5178, file: !254, line: 228, type: !100)
!5185 = !DILocalVariable(name: "version", arg: 4, scope: !5178, file: !254, line: 229, type: !100)
!5186 = !DILocalVariable(name: "authors", scope: !5178, file: !254, line: 231, type: !5187)
!5187 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2691, line: 52, baseType: !5188)
!5188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2693, line: 48, baseType: !5189)
!5189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !251, line: 231, baseType: !5190)
!5190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5145, size: 192, elements: !55)
!5191 = !DILocation(line: 227, column: 20, scope: !5178)
!5192 = !DILocation(line: 228, column: 26, scope: !5178)
!5193 = !DILocation(line: 228, column: 52, scope: !5178)
!5194 = !DILocation(line: 229, column: 26, scope: !5178)
!5195 = !DILocation(line: 231, column: 3, scope: !5178)
!5196 = !DILocation(line: 231, column: 11, scope: !5178)
!5197 = !DILocation(line: 233, column: 3, scope: !5178)
!5198 = !DILocation(line: 234, column: 3, scope: !5178)
!5199 = !DILocation(line: 235, column: 3, scope: !5178)
!5200 = !DILocation(line: 236, column: 1, scope: !5178)
!5201 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !254, file: !254, line: 239, type: !1718, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !112)
!5202 = !DILocation(line: 245, column: 3, scope: !5201)
!5203 = !DILocation(line: 251, column: 3, scope: !5201)
!5204 = !DILocation(line: 256, column: 3, scope: !5201)
!5205 = !DILocation(line: 258, column: 1, scope: !5201)
!5206 = distinct !DISubprogram(name: "xnmalloc", scope: !262, file: !262, line: 99, type: !5207, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5209)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!102, !104, !104}
!5209 = !{!5210, !5211}
!5210 = !DILocalVariable(name: "n", arg: 1, scope: !5206, file: !262, line: 99, type: !104)
!5211 = !DILocalVariable(name: "s", arg: 2, scope: !5206, file: !262, line: 99, type: !104)
!5212 = !DILocation(line: 99, column: 18, scope: !5206)
!5213 = !DILocation(line: 99, column: 28, scope: !5206)
!5214 = !DILocation(line: 101, column: 7, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5206, file: !262, line: 101, column: 7)
!5216 = !DILocation(line: 101, column: 7, scope: !5206)
!5217 = !DILocation(line: 102, column: 5, scope: !5215)
!5218 = !DILocation(line: 103, column: 21, scope: !5206)
!5219 = !DILocalVariable(name: "n", arg: 1, scope: !5220, file: !5221, line: 39, type: !104)
!5220 = distinct !DISubprogram(name: "xmalloc", scope: !5221, file: !5221, line: 39, type: !5222, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5224)
!5221 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!102, !104}
!5224 = !{!5219, !5225}
!5225 = !DILocalVariable(name: "p", scope: !5220, file: !5221, line: 41, type: !102)
!5226 = !DILocation(line: 39, column: 17, scope: !5220, inlinedAt: !5227)
!5227 = distinct !DILocation(line: 103, column: 10, scope: !5206)
!5228 = !DILocation(line: 41, column: 13, scope: !5220, inlinedAt: !5227)
!5229 = !DILocation(line: 41, column: 9, scope: !5220, inlinedAt: !5227)
!5230 = !DILocation(line: 42, column: 8, scope: !5231, inlinedAt: !5227)
!5231 = distinct !DILexicalBlock(scope: !5220, file: !5221, line: 42, column: 7)
!5232 = !DILocation(line: 42, column: 15, scope: !5231, inlinedAt: !5227)
!5233 = !DILocation(line: 42, column: 10, scope: !5231, inlinedAt: !5227)
!5234 = !DILocation(line: 43, column: 5, scope: !5231, inlinedAt: !5227)
!5235 = !DILocation(line: 103, column: 3, scope: !5206)
!5236 = !DILocation(line: 39, column: 17, scope: !5220)
!5237 = !DILocation(line: 41, column: 13, scope: !5220)
!5238 = !DILocation(line: 41, column: 9, scope: !5220)
!5239 = !DILocation(line: 42, column: 8, scope: !5231)
!5240 = !DILocation(line: 42, column: 15, scope: !5231)
!5241 = !DILocation(line: 42, column: 10, scope: !5231)
!5242 = !DILocation(line: 43, column: 5, scope: !5231)
!5243 = !DILocation(line: 44, column: 3, scope: !5220)
!5244 = distinct !DISubprogram(name: "xnrealloc", scope: !262, file: !262, line: 112, type: !5245, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5247)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!102, !102, !104, !104}
!5247 = !{!5248, !5249, !5250}
!5248 = !DILocalVariable(name: "p", arg: 1, scope: !5244, file: !262, line: 112, type: !102)
!5249 = !DILocalVariable(name: "n", arg: 2, scope: !5244, file: !262, line: 112, type: !104)
!5250 = !DILocalVariable(name: "s", arg: 3, scope: !5244, file: !262, line: 112, type: !104)
!5251 = !DILocation(line: 112, column: 18, scope: !5244)
!5252 = !DILocation(line: 112, column: 28, scope: !5244)
!5253 = !DILocation(line: 112, column: 38, scope: !5244)
!5254 = !DILocation(line: 114, column: 7, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5244, file: !262, line: 114, column: 7)
!5256 = !DILocation(line: 114, column: 7, scope: !5244)
!5257 = !DILocation(line: 115, column: 5, scope: !5255)
!5258 = !DILocation(line: 116, column: 25, scope: !5244)
!5259 = !DILocalVariable(name: "p", arg: 1, scope: !5260, file: !5221, line: 51, type: !102)
!5260 = distinct !DISubprogram(name: "xrealloc", scope: !5221, file: !5221, line: 51, type: !5261, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5263)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!102, !102, !104}
!5263 = !{!5259, !5264}
!5264 = !DILocalVariable(name: "n", arg: 2, scope: !5260, file: !5221, line: 51, type: !104)
!5265 = !DILocation(line: 51, column: 17, scope: !5260, inlinedAt: !5266)
!5266 = distinct !DILocation(line: 116, column: 10, scope: !5244)
!5267 = !DILocation(line: 51, column: 27, scope: !5260, inlinedAt: !5266)
!5268 = !DILocation(line: 53, column: 8, scope: !5269, inlinedAt: !5266)
!5269 = distinct !DILexicalBlock(scope: !5260, file: !5221, line: 53, column: 7)
!5270 = !DILocation(line: 53, column: 13, scope: !5269, inlinedAt: !5266)
!5271 = !DILocation(line: 53, column: 10, scope: !5269, inlinedAt: !5266)
!5272 = !DILocation(line: 57, column: 7, scope: !5273, inlinedAt: !5266)
!5273 = distinct !DILexicalBlock(scope: !5269, file: !5221, line: 54, column: 5)
!5274 = !DILocation(line: 58, column: 7, scope: !5273, inlinedAt: !5266)
!5275 = !DILocation(line: 61, column: 7, scope: !5260, inlinedAt: !5266)
!5276 = !DILocation(line: 62, column: 8, scope: !5277, inlinedAt: !5266)
!5277 = distinct !DILexicalBlock(scope: !5260, file: !5221, line: 62, column: 7)
!5278 = !DILocation(line: 62, column: 13, scope: !5277, inlinedAt: !5266)
!5279 = !DILocation(line: 62, column: 10, scope: !5277, inlinedAt: !5266)
!5280 = !DILocation(line: 63, column: 5, scope: !5277, inlinedAt: !5266)
!5281 = !DILocation(line: 0, scope: !5260, inlinedAt: !5266)
!5282 = !DILocation(line: 116, column: 3, scope: !5244)
!5283 = !DILocation(line: 51, column: 17, scope: !5260)
!5284 = !DILocation(line: 51, column: 27, scope: !5260)
!5285 = !DILocation(line: 53, column: 8, scope: !5269)
!5286 = !DILocation(line: 53, column: 13, scope: !5269)
!5287 = !DILocation(line: 53, column: 10, scope: !5269)
!5288 = !DILocation(line: 57, column: 7, scope: !5273)
!5289 = !DILocation(line: 58, column: 7, scope: !5273)
!5290 = !DILocation(line: 61, column: 7, scope: !5260)
!5291 = !DILocation(line: 62, column: 8, scope: !5277)
!5292 = !DILocation(line: 62, column: 13, scope: !5277)
!5293 = !DILocation(line: 62, column: 10, scope: !5277)
!5294 = !DILocation(line: 63, column: 5, scope: !5277)
!5295 = !DILocation(line: 0, scope: !5260)
!5296 = !DILocation(line: 65, column: 1, scope: !5260)
!5297 = !DILocation(line: 174, column: 19, scope: !263)
!5298 = !DILocation(line: 174, column: 30, scope: !263)
!5299 = !DILocation(line: 174, column: 41, scope: !263)
!5300 = !DILocation(line: 176, column: 14, scope: !263)
!5301 = !DILocation(line: 176, column: 10, scope: !263)
!5302 = !DILocation(line: 178, column: 9, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !263, file: !262, line: 178, column: 7)
!5304 = !DILocation(line: 178, column: 7, scope: !263)
!5305 = !DILocation(line: 180, column: 13, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !262, line: 180, column: 11)
!5307 = distinct !DILexicalBlock(scope: !5303, file: !262, line: 179, column: 5)
!5308 = !DILocation(line: 180, column: 11, scope: !5307)
!5309 = !DILocation(line: 188, column: 30, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5306, file: !262, line: 181, column: 9)
!5311 = !DILocation(line: 189, column: 16, scope: !5310)
!5312 = !DILocation(line: 189, column: 13, scope: !5310)
!5313 = !DILocation(line: 190, column: 9, scope: !5310)
!5314 = !DILocation(line: 0, scope: !5310)
!5315 = !DILocation(line: 191, column: 11, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5307, file: !262, line: 191, column: 11)
!5317 = !DILocation(line: 191, column: 11, scope: !5307)
!5318 = !DILocation(line: 206, column: 7, scope: !263)
!5319 = !DILocation(line: 207, column: 25, scope: !263)
!5320 = !DILocation(line: 51, column: 17, scope: !5260, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 207, column: 10, scope: !263)
!5322 = !DILocation(line: 51, column: 27, scope: !5260, inlinedAt: !5321)
!5323 = !DILocation(line: 53, column: 10, scope: !5269, inlinedAt: !5321)
!5324 = !DILocation(line: 192, column: 9, scope: !5316)
!5325 = !DILocation(line: 200, column: 69, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5327, file: !262, line: 200, column: 11)
!5327 = distinct !DILexicalBlock(scope: !5303, file: !262, line: 195, column: 5)
!5328 = !DILocation(line: 201, column: 11, scope: !5326)
!5329 = !DILocation(line: 200, column: 11, scope: !5327)
!5330 = !DILocation(line: 202, column: 9, scope: !5326)
!5331 = !DILocation(line: 203, column: 14, scope: !5327)
!5332 = !DILocation(line: 203, column: 18, scope: !5327)
!5333 = !DILocation(line: 203, column: 9, scope: !5327)
!5334 = !DILocation(line: 53, column: 8, scope: !5269, inlinedAt: !5321)
!5335 = !DILocation(line: 57, column: 7, scope: !5273, inlinedAt: !5321)
!5336 = !DILocation(line: 58, column: 7, scope: !5273, inlinedAt: !5321)
!5337 = !DILocation(line: 61, column: 7, scope: !5260, inlinedAt: !5321)
!5338 = !DILocation(line: 62, column: 8, scope: !5277, inlinedAt: !5321)
!5339 = !DILocation(line: 62, column: 13, scope: !5277, inlinedAt: !5321)
!5340 = !DILocation(line: 62, column: 10, scope: !5277, inlinedAt: !5321)
!5341 = !DILocation(line: 63, column: 5, scope: !5277, inlinedAt: !5321)
!5342 = !DILocation(line: 0, scope: !5260, inlinedAt: !5321)
!5343 = !DILocation(line: 207, column: 3, scope: !263)
!5344 = distinct !DISubprogram(name: "xcharalloc", scope: !262, file: !262, line: 216, type: !4093, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5345)
!5345 = !{!5346}
!5346 = !DILocalVariable(name: "n", arg: 1, scope: !5344, file: !262, line: 216, type: !104)
!5347 = !DILocation(line: 216, column: 20, scope: !5344)
!5348 = !DILocation(line: 39, column: 17, scope: !5220, inlinedAt: !5349)
!5349 = distinct !DILocation(line: 218, column: 10, scope: !5344)
!5350 = !DILocation(line: 41, column: 13, scope: !5220, inlinedAt: !5349)
!5351 = !DILocation(line: 41, column: 9, scope: !5220, inlinedAt: !5349)
!5352 = !DILocation(line: 42, column: 8, scope: !5231, inlinedAt: !5349)
!5353 = !DILocation(line: 42, column: 15, scope: !5231, inlinedAt: !5349)
!5354 = !DILocation(line: 42, column: 10, scope: !5231, inlinedAt: !5349)
!5355 = !DILocation(line: 43, column: 5, scope: !5231, inlinedAt: !5349)
!5356 = !DILocation(line: 218, column: 3, scope: !5344)
!5357 = distinct !DISubprogram(name: "x2realloc", scope: !5221, file: !5221, line: 74, type: !5358, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5360)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!102, !102, !266}
!5360 = !{!5361, !5362}
!5361 = !DILocalVariable(name: "p", arg: 1, scope: !5357, file: !5221, line: 74, type: !102)
!5362 = !DILocalVariable(name: "pn", arg: 2, scope: !5357, file: !5221, line: 74, type: !266)
!5363 = !DILocation(line: 74, column: 18, scope: !5357)
!5364 = !DILocation(line: 74, column: 29, scope: !5357)
!5365 = !DILocation(line: 174, column: 19, scope: !263, inlinedAt: !5366)
!5366 = distinct !DILocation(line: 76, column: 10, scope: !5357)
!5367 = !DILocation(line: 174, column: 30, scope: !263, inlinedAt: !5366)
!5368 = !DILocation(line: 174, column: 41, scope: !263, inlinedAt: !5366)
!5369 = !DILocation(line: 176, column: 14, scope: !263, inlinedAt: !5366)
!5370 = !DILocation(line: 176, column: 10, scope: !263, inlinedAt: !5366)
!5371 = !DILocation(line: 178, column: 9, scope: !5303, inlinedAt: !5366)
!5372 = !DILocation(line: 178, column: 7, scope: !263, inlinedAt: !5366)
!5373 = !DILocation(line: 180, column: 13, scope: !5306, inlinedAt: !5366)
!5374 = !DILocation(line: 180, column: 11, scope: !5307, inlinedAt: !5366)
!5375 = !DILocation(line: 191, column: 11, scope: !5316, inlinedAt: !5366)
!5376 = !DILocation(line: 191, column: 11, scope: !5307, inlinedAt: !5366)
!5377 = !DILocation(line: 206, column: 7, scope: !263, inlinedAt: !5366)
!5378 = !DILocation(line: 51, column: 17, scope: !5260, inlinedAt: !5379)
!5379 = distinct !DILocation(line: 207, column: 10, scope: !263, inlinedAt: !5366)
!5380 = !DILocation(line: 51, column: 27, scope: !5260, inlinedAt: !5379)
!5381 = !DILocation(line: 53, column: 10, scope: !5269, inlinedAt: !5379)
!5382 = !DILocation(line: 192, column: 9, scope: !5316, inlinedAt: !5366)
!5383 = !DILocation(line: 201, column: 11, scope: !5326, inlinedAt: !5366)
!5384 = !DILocation(line: 200, column: 11, scope: !5327, inlinedAt: !5366)
!5385 = !DILocation(line: 202, column: 9, scope: !5326, inlinedAt: !5366)
!5386 = !DILocation(line: 203, column: 14, scope: !5327, inlinedAt: !5366)
!5387 = !DILocation(line: 203, column: 18, scope: !5327, inlinedAt: !5366)
!5388 = !DILocation(line: 203, column: 9, scope: !5327, inlinedAt: !5366)
!5389 = !DILocation(line: 53, column: 8, scope: !5269, inlinedAt: !5379)
!5390 = !DILocation(line: 57, column: 7, scope: !5273, inlinedAt: !5379)
!5391 = !DILocation(line: 58, column: 7, scope: !5273, inlinedAt: !5379)
!5392 = !DILocation(line: 61, column: 7, scope: !5260, inlinedAt: !5379)
!5393 = !DILocation(line: 62, column: 8, scope: !5277, inlinedAt: !5379)
!5394 = !DILocation(line: 62, column: 13, scope: !5277, inlinedAt: !5379)
!5395 = !DILocation(line: 62, column: 10, scope: !5277, inlinedAt: !5379)
!5396 = !DILocation(line: 63, column: 5, scope: !5277, inlinedAt: !5379)
!5397 = !DILocation(line: 0, scope: !5260, inlinedAt: !5379)
!5398 = !DILocation(line: 76, column: 3, scope: !5357)
!5399 = distinct !DISubprogram(name: "xzalloc", scope: !5221, file: !5221, line: 84, type: !5222, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5400)
!5400 = !{!5401}
!5401 = !DILocalVariable(name: "s", arg: 1, scope: !5399, file: !5221, line: 84, type: !104)
!5402 = !DILocation(line: 84, column: 17, scope: !5399)
!5403 = !DILocation(line: 39, column: 17, scope: !5220, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 86, column: 18, scope: !5399)
!5405 = !DILocation(line: 41, column: 13, scope: !5220, inlinedAt: !5404)
!5406 = !DILocation(line: 41, column: 9, scope: !5220, inlinedAt: !5404)
!5407 = !DILocation(line: 42, column: 8, scope: !5231, inlinedAt: !5404)
!5408 = !DILocation(line: 42, column: 15, scope: !5231, inlinedAt: !5404)
!5409 = !DILocation(line: 42, column: 10, scope: !5231, inlinedAt: !5404)
!5410 = !DILocation(line: 43, column: 5, scope: !5231, inlinedAt: !5404)
!5411 = !DILocation(line: 86, column: 10, scope: !5399)
!5412 = !DILocation(line: 86, column: 3, scope: !5399)
!5413 = distinct !DISubprogram(name: "xcalloc", scope: !5221, file: !5221, line: 93, type: !5207, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5414)
!5414 = !{!5415, !5416, !5417}
!5415 = !DILocalVariable(name: "n", arg: 1, scope: !5413, file: !5221, line: 93, type: !104)
!5416 = !DILocalVariable(name: "s", arg: 2, scope: !5413, file: !5221, line: 93, type: !104)
!5417 = !DILocalVariable(name: "p", scope: !5413, file: !5221, line: 95, type: !102)
!5418 = !DILocation(line: 93, column: 17, scope: !5413)
!5419 = !DILocation(line: 93, column: 27, scope: !5413)
!5420 = !DILocation(line: 100, column: 7, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5413, file: !5221, line: 100, column: 7)
!5422 = !DILocation(line: 101, column: 7, scope: !5421)
!5423 = !DILocation(line: 101, column: 18, scope: !5421)
!5424 = !DILocation(line: 95, column: 9, scope: !5413)
!5425 = !DILocation(line: 101, column: 16, scope: !5421)
!5426 = !DILocation(line: 100, column: 7, scope: !5413)
!5427 = !DILocation(line: 102, column: 5, scope: !5421)
!5428 = !DILocation(line: 103, column: 3, scope: !5413)
!5429 = distinct !DISubprogram(name: "xmemdup", scope: !5221, file: !5221, line: 111, type: !5430, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5432)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!102, !2238, !104}
!5432 = !{!5433, !5434}
!5433 = !DILocalVariable(name: "p", arg: 1, scope: !5429, file: !5221, line: 111, type: !2238)
!5434 = !DILocalVariable(name: "s", arg: 2, scope: !5429, file: !5221, line: 111, type: !104)
!5435 = !DILocation(line: 111, column: 22, scope: !5429)
!5436 = !DILocation(line: 111, column: 32, scope: !5429)
!5437 = !DILocation(line: 39, column: 17, scope: !5220, inlinedAt: !5438)
!5438 = distinct !DILocation(line: 113, column: 18, scope: !5429)
!5439 = !DILocation(line: 41, column: 13, scope: !5220, inlinedAt: !5438)
!5440 = !DILocation(line: 41, column: 9, scope: !5220, inlinedAt: !5438)
!5441 = !DILocation(line: 42, column: 8, scope: !5231, inlinedAt: !5438)
!5442 = !DILocation(line: 42, column: 15, scope: !5231, inlinedAt: !5438)
!5443 = !DILocation(line: 42, column: 10, scope: !5231, inlinedAt: !5438)
!5444 = !DILocation(line: 43, column: 5, scope: !5231, inlinedAt: !5438)
!5445 = !DILocation(line: 113, column: 10, scope: !5429)
!5446 = !DILocation(line: 113, column: 3, scope: !5429)
!5447 = distinct !DISubprogram(name: "xstrdup", scope: !5221, file: !5221, line: 119, type: !4297, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5448)
!5448 = !{!5449}
!5449 = !DILocalVariable(name: "string", arg: 1, scope: !5447, file: !5221, line: 119, type: !100)
!5450 = !DILocation(line: 119, column: 22, scope: !5447)
!5451 = !DILocation(line: 121, column: 27, scope: !5447)
!5452 = !DILocation(line: 121, column: 43, scope: !5447)
!5453 = !DILocation(line: 111, column: 22, scope: !5429, inlinedAt: !5454)
!5454 = distinct !DILocation(line: 121, column: 10, scope: !5447)
!5455 = !DILocation(line: 111, column: 32, scope: !5429, inlinedAt: !5454)
!5456 = !DILocation(line: 39, column: 17, scope: !5220, inlinedAt: !5457)
!5457 = distinct !DILocation(line: 113, column: 18, scope: !5429, inlinedAt: !5454)
!5458 = !DILocation(line: 41, column: 13, scope: !5220, inlinedAt: !5457)
!5459 = !DILocation(line: 41, column: 9, scope: !5220, inlinedAt: !5457)
!5460 = !DILocation(line: 42, column: 8, scope: !5231, inlinedAt: !5457)
!5461 = !DILocation(line: 42, column: 15, scope: !5231, inlinedAt: !5457)
!5462 = !DILocation(line: 42, column: 10, scope: !5231, inlinedAt: !5457)
!5463 = !DILocation(line: 43, column: 5, scope: !5231, inlinedAt: !5457)
!5464 = !DILocation(line: 113, column: 10, scope: !5429, inlinedAt: !5454)
!5465 = !DILocation(line: 121, column: 3, scope: !5447)
!5466 = distinct !DISubprogram(name: "xalloc_die", scope: !5467, file: !5467, line: 32, type: !1718, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !275, retainedNodes: !112)
!5467 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5468 = !DILocation(line: 34, column: 10, scope: !5466)
!5469 = !DILocation(line: 34, column: 33, scope: !5466)
!5470 = !DILocation(line: 34, column: 3, scope: !5466)
!5471 = !DILocation(line: 40, column: 3, scope: !5466)
!5472 = distinct !DISubprogram(name: "rpl_calloc", scope: !5473, file: !5473, line: 42, type: !5207, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !277, retainedNodes: !5474)
!5473 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5474 = !{!5475, !5476, !5477, !5478}
!5475 = !DILocalVariable(name: "n", arg: 1, scope: !5472, file: !5473, line: 42, type: !104)
!5476 = !DILocalVariable(name: "s", arg: 2, scope: !5472, file: !5473, line: 42, type: !104)
!5477 = !DILocalVariable(name: "result", scope: !5472, file: !5473, line: 44, type: !102)
!5478 = !DILocalVariable(name: "bytes", scope: !5479, file: !5473, line: 56, type: !104)
!5479 = distinct !DILexicalBlock(scope: !5480, file: !5473, line: 53, column: 5)
!5480 = distinct !DILexicalBlock(scope: !5472, file: !5473, line: 47, column: 7)
!5481 = !DILocation(line: 42, column: 20, scope: !5472)
!5482 = !DILocation(line: 42, column: 30, scope: !5472)
!5483 = !DILocation(line: 47, column: 9, scope: !5480)
!5484 = !DILocation(line: 47, column: 19, scope: !5480)
!5485 = !DILocation(line: 47, column: 14, scope: !5480)
!5486 = !DILocation(line: 56, column: 24, scope: !5479)
!5487 = !DILocation(line: 56, column: 14, scope: !5479)
!5488 = !DILocation(line: 57, column: 17, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5479, file: !5473, line: 57, column: 11)
!5490 = !DILocation(line: 57, column: 21, scope: !5489)
!5491 = !DILocation(line: 57, column: 11, scope: !5479)
!5492 = !DILocation(line: 59, column: 11, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5489, file: !5473, line: 58, column: 9)
!5494 = !DILocation(line: 59, column: 17, scope: !5493)
!5495 = !DILocation(line: 65, column: 12, scope: !5472)
!5496 = !DILocation(line: 44, column: 9, scope: !5472)
!5497 = !DILocation(line: 72, column: 3, scope: !5472)
!5498 = !DILocation(line: 0, scope: !5493)
!5499 = !DILocation(line: 73, column: 1, scope: !5472)
!5500 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5501, file: !5501, line: 385, type: !5502, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !279, retainedNodes: !5516)
!5501 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!104, !5504, !100, !104, !5505}
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1890, line: 6, baseType: !5507)
!5507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1892, line: 21, baseType: !5508)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1892, line: 13, size: 64, elements: !5509)
!5509 = !{!5510, !5511}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5508, file: !1892, line: 15, baseType: !49, size: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5508, file: !1892, line: 20, baseType: !5512, size: 32, offset: 32)
!5512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5508, file: !1892, line: 16, size: 32, elements: !5513)
!5513 = !{!5514, !5515}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5512, file: !1892, line: 18, baseType: !6, size: 32)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5512, file: !1892, line: 19, baseType: !1901, size: 32)
!5516 = !{!5517, !5518, !5519, !5520, !5521, !5522, !5523}
!5517 = !DILocalVariable(name: "pwc", arg: 1, scope: !5500, file: !5501, line: 385, type: !5504)
!5518 = !DILocalVariable(name: "s", arg: 2, scope: !5500, file: !5501, line: 385, type: !100)
!5519 = !DILocalVariable(name: "n", arg: 3, scope: !5500, file: !5501, line: 385, type: !104)
!5520 = !DILocalVariable(name: "ps", arg: 4, scope: !5500, file: !5501, line: 385, type: !5505)
!5521 = !DILocalVariable(name: "ret", scope: !5500, file: !5501, line: 387, type: !104)
!5522 = !DILocalVariable(name: "wc", scope: !5500, file: !5501, line: 388, type: !1913)
!5523 = !DILocalVariable(name: "uc", scope: !5524, file: !5501, line: 449, type: !103)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !5501, line: 448, column: 5)
!5525 = distinct !DILexicalBlock(scope: !5500, file: !5501, line: 447, column: 7)
!5526 = !DILocation(line: 385, column: 23, scope: !5500)
!5527 = !DILocation(line: 385, column: 40, scope: !5500)
!5528 = !DILocation(line: 385, column: 50, scope: !5500)
!5529 = !DILocation(line: 385, column: 64, scope: !5500)
!5530 = !DILocation(line: 388, column: 3, scope: !5500)
!5531 = !DILocation(line: 404, column: 9, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5500, file: !5501, line: 404, column: 7)
!5533 = !DILocation(line: 404, column: 7, scope: !5500)
!5534 = !DILocation(line: 439, column: 9, scope: !5500)
!5535 = !DILocation(line: 387, column: 10, scope: !5500)
!5536 = !DILocation(line: 447, column: 19, scope: !5525)
!5537 = !DILocation(line: 447, column: 31, scope: !5525)
!5538 = !DILocation(line: 447, column: 26, scope: !5525)
!5539 = !DILocation(line: 447, column: 41, scope: !5525)
!5540 = !DILocation(line: 447, column: 7, scope: !5500)
!5541 = !DILocation(line: 449, column: 26, scope: !5524)
!5542 = !DILocation(line: 449, column: 21, scope: !5524)
!5543 = !DILocation(line: 450, column: 14, scope: !5524)
!5544 = !DILocation(line: 450, column: 12, scope: !5524)
!5545 = !DILocation(line: 0, scope: !5524)
!5546 = !DILocation(line: 456, column: 1, scope: !5500)
!5547 = distinct !DISubprogram(name: "close_stream", scope: !5548, file: !5548, line: 56, type: !5549, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !282, retainedNodes: !5585)
!5548 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!49, !5551}
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !5019, line: 7, baseType: !5553)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5021, line: 49, size: 1728, elements: !5554)
!5554 = !{!5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5553, file: !5021, line: 51, baseType: !49, size: 32)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5553, file: !5021, line: 54, baseType: !58, size: 64, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5553, file: !5021, line: 55, baseType: !58, size: 64, offset: 128)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5553, file: !5021, line: 56, baseType: !58, size: 64, offset: 192)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5553, file: !5021, line: 57, baseType: !58, size: 64, offset: 256)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5553, file: !5021, line: 58, baseType: !58, size: 64, offset: 320)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5553, file: !5021, line: 59, baseType: !58, size: 64, offset: 384)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5553, file: !5021, line: 60, baseType: !58, size: 64, offset: 448)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5553, file: !5021, line: 61, baseType: !58, size: 64, offset: 512)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5553, file: !5021, line: 64, baseType: !58, size: 64, offset: 576)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5553, file: !5021, line: 65, baseType: !58, size: 64, offset: 640)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5553, file: !5021, line: 66, baseType: !58, size: 64, offset: 704)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5553, file: !5021, line: 68, baseType: !5036, size: 64, offset: 768)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5553, file: !5021, line: 70, baseType: !5569, size: 64, offset: 832)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5553, file: !5021, line: 72, baseType: !49, size: 32, offset: 896)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5553, file: !5021, line: 73, baseType: !49, size: 32, offset: 928)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5553, file: !5021, line: 74, baseType: !5043, size: 64, offset: 960)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5553, file: !5021, line: 77, baseType: !175, size: 16, offset: 1024)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5553, file: !5021, line: 78, baseType: !5047, size: 8, offset: 1040)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5553, file: !5021, line: 79, baseType: !5049, size: 8, offset: 1048)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5553, file: !5021, line: 81, baseType: !5051, size: 64, offset: 1088)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5553, file: !5021, line: 89, baseType: !5054, size: 64, offset: 1152)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5553, file: !5021, line: 91, baseType: !5056, size: 64, offset: 1216)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5553, file: !5021, line: 92, baseType: !5059, size: 64, offset: 1280)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5553, file: !5021, line: 93, baseType: !5569, size: 64, offset: 1344)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5553, file: !5021, line: 94, baseType: !102, size: 64, offset: 1408)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5553, file: !5021, line: 95, baseType: !104, size: 64, offset: 1472)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5553, file: !5021, line: 96, baseType: !49, size: 32, offset: 1536)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5553, file: !5021, line: 98, baseType: !5066, size: 160, offset: 1568)
!5585 = !{!5586, !5587, !5589, !5590}
!5586 = !DILocalVariable(name: "stream", arg: 1, scope: !5547, file: !5548, line: 56, type: !5551)
!5587 = !DILocalVariable(name: "some_pending", scope: !5547, file: !5548, line: 58, type: !5588)
!5588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!5589 = !DILocalVariable(name: "prev_fail", scope: !5547, file: !5548, line: 59, type: !5588)
!5590 = !DILocalVariable(name: "fclose_fail", scope: !5547, file: !5548, line: 60, type: !5588)
!5591 = !DILocation(line: 56, column: 21, scope: !5547)
!5592 = !DILocation(line: 58, column: 30, scope: !5547)
!5593 = !DILocalVariable(name: "__stream", arg: 1, scope: !5594, file: !727, line: 135, type: !5551)
!5594 = distinct !DISubprogram(name: "ferror_unlocked", scope: !727, file: !727, line: 135, type: !5549, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !282, retainedNodes: !5595)
!5595 = !{!5593}
!5596 = !DILocation(line: 135, column: 1, scope: !5594, inlinedAt: !5597)
!5597 = distinct !DILocation(line: 59, column: 27, scope: !5547)
!5598 = !DILocation(line: 137, column: 10, scope: !5594, inlinedAt: !5597)
!5599 = !{!735, !736, i64 0}
!5600 = !DILocation(line: 59, column: 43, scope: !5547)
!5601 = !DILocation(line: 60, column: 29, scope: !5547)
!5602 = !DILocation(line: 60, column: 45, scope: !5547)
!5603 = !DILocation(line: 70, column: 17, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5547, file: !5548, line: 70, column: 7)
!5605 = !DILocation(line: 58, column: 50, scope: !5547)
!5606 = !DILocation(line: 70, column: 33, scope: !5604)
!5607 = !DILocation(line: 70, column: 53, scope: !5604)
!5608 = !DILocation(line: 70, column: 59, scope: !5604)
!5609 = !DILocation(line: 70, column: 7, scope: !5547)
!5610 = !DILocation(line: 72, column: 11, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5604, file: !5548, line: 71, column: 5)
!5612 = !DILocation(line: 73, column: 9, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5611, file: !5548, line: 72, column: 11)
!5614 = !DILocation(line: 73, column: 15, scope: !5613)
!5615 = !DILocation(line: 0, scope: !5547)
!5616 = !DILocation(line: 78, column: 1, scope: !5547)
!5617 = distinct !DISubprogram(name: "hard_locale", scope: !5618, file: !5618, line: 38, type: !5619, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !284, retainedNodes: !5621)
!5618 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5619 = !DISubroutineType(types: !5620)
!5620 = !{!60, !49}
!5621 = !{!5622, !5623, !5624}
!5622 = !DILocalVariable(name: "category", arg: 1, scope: !5617, file: !5618, line: 38, type: !49)
!5623 = !DILocalVariable(name: "hard", scope: !5617, file: !5618, line: 40, type: !60)
!5624 = !DILocalVariable(name: "p", scope: !5617, file: !5618, line: 41, type: !100)
!5625 = !DILocation(line: 38, column: 18, scope: !5617)
!5626 = !DILocation(line: 40, column: 8, scope: !5617)
!5627 = !DILocation(line: 41, column: 19, scope: !5617)
!5628 = !DILocation(line: 41, column: 15, scope: !5617)
!5629 = !DILocation(line: 43, column: 7, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5617, file: !5618, line: 43, column: 7)
!5631 = !DILocation(line: 43, column: 7, scope: !5617)
!5632 = !DILocation(line: 47, column: 15, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5634, file: !5618, line: 47, column: 15)
!5634 = distinct !DILexicalBlock(scope: !5635, file: !5618, line: 46, column: 9)
!5635 = distinct !DILexicalBlock(scope: !5636, file: !5618, line: 45, column: 11)
!5636 = distinct !DILexicalBlock(scope: !5630, file: !5618, line: 44, column: 5)
!5637 = !DILocation(line: 47, column: 31, scope: !5633)
!5638 = !DILocation(line: 47, column: 36, scope: !5633)
!5639 = !DILocation(line: 47, column: 39, scope: !5633)
!5640 = !DILocation(line: 47, column: 59, scope: !5633)
!5641 = !DILocation(line: 47, column: 15, scope: !5634)
!5642 = !DILocation(line: 48, column: 13, scope: !5633)
!5643 = !DILocation(line: 71, column: 3, scope: !5617)
!5644 = distinct !DISubprogram(name: "locale_charset", scope: !5645, file: !5645, line: 687, type: !5646, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !5648)
!5645 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!100}
!5648 = !{!5649}
!5649 = !DILocalVariable(name: "codeset", scope: !5644, file: !5645, line: 689, type: !100)
!5650 = !DILocation(line: 696, column: 13, scope: !5644)
!5651 = !DILocation(line: 689, column: 15, scope: !5644)
!5652 = !DILocation(line: 754, column: 15, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5644, file: !5645, line: 754, column: 7)
!5654 = !DILocation(line: 754, column: 7, scope: !5644)
!5655 = !DILocation(line: 907, column: 13, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !5645, line: 907, column: 13)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !5645, line: 897, column: 7)
!5658 = distinct !DILexicalBlock(scope: !5644, file: !5645, line: 856, column: 3)
!5659 = !DILocation(line: 907, column: 24, scope: !5656)
!5660 = !DILocation(line: 907, column: 13, scope: !5657)
!5661 = !DILocation(line: 995, column: 3, scope: !5644)
!5662 = distinct !DISubprogram(name: "mb_width_aux", scope: !1907, file: !1907, line: 247, type: !5663, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !229, retainedNodes: !5667)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!49, !5665}
!5665 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !5666, line: 20, baseType: !6)
!5666 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5667 = !{!5668, !5669}
!5668 = !DILocalVariable(name: "wc", arg: 1, scope: !5662, file: !1907, line: 247, type: !5665)
!5669 = !DILocalVariable(name: "w", scope: !5662, file: !1907, line: 249, type: !49)
!5670 = !DILocation(line: 247, column: 22, scope: !5662)
!5671 = !DILocation(line: 249, column: 11, scope: !5662)
!5672 = !DILocation(line: 249, column: 7, scope: !5662)
!5673 = !DILocation(line: 252, column: 13, scope: !5662)
!5674 = !DILocation(line: 252, column: 11, scope: !5662)
!5675 = !DILocation(line: 252, column: 24, scope: !5662)
!5676 = !DILocation(line: 252, column: 3, scope: !5662)
!5677 = distinct !DISubprogram(name: "mb_copy", scope: !1907, file: !1907, line: 268, type: !5678, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !229, retainedNodes: !5691)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !5680, !5689}
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbchar_t", file: !1907, line: 181, baseType: !5682)
!5682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1907, line: 169, size: 384, elements: !5683)
!5683 = !{!5684, !5685, !5686, !5687, !5688}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5682, file: !1907, line: 171, baseType: !100, size: 64)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !5682, file: !1907, line: 172, baseType: !104, size: 64, offset: 64)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !5682, file: !1907, line: 173, baseType: !60, size: 8, offset: 128)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !5682, file: !1907, line: 174, baseType: !1913, size: 32, offset: 160)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5682, file: !1907, line: 175, baseType: !1915, size: 192, offset: 192)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5681)
!5691 = !{!5692, !5693}
!5692 = !DILocalVariable(name: "new_mbc", arg: 1, scope: !5677, file: !1907, line: 268, type: !5680)
!5693 = !DILocalVariable(name: "old_mbc", arg: 2, scope: !5677, file: !1907, line: 268, type: !5689)
!5694 = !DILocation(line: 268, column: 20, scope: !5677)
!5695 = !DILocation(line: 268, column: 45, scope: !5677)
!5696 = !DILocation(line: 270, column: 16, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5677, file: !1907, line: 270, column: 7)
!5698 = !DILocation(line: 270, column: 24, scope: !5697)
!5699 = !DILocation(line: 270, column: 20, scope: !5697)
!5700 = !DILocation(line: 270, column: 7, scope: !5677)
!5701 = !DILocation(line: 272, column: 16, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5697, file: !1907, line: 271, column: 5)
!5703 = !DILocation(line: 272, column: 60, scope: !5702)
!5704 = !DILocation(line: 272, column: 7, scope: !5702)
!5705 = !DILocation(line: 274, column: 5, scope: !5702)
!5706 = !DILocation(line: 277, column: 29, scope: !5677)
!5707 = !DILocation(line: 276, column: 14, scope: !5697)
!5708 = !DILocation(line: 276, column: 18, scope: !5697)
!5709 = !DILocation(line: 277, column: 12, scope: !5677)
!5710 = !DILocation(line: 277, column: 18, scope: !5677)
!5711 = !DILocation(line: 278, column: 37, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5677, file: !1907, line: 278, column: 7)
!5713 = !DILocation(line: 278, column: 17, scope: !5712)
!5714 = !DILocation(line: 278, column: 26, scope: !5712)
!5715 = !DILocation(line: 278, column: 7, scope: !5677)
!5716 = !DILocation(line: 279, column: 28, scope: !5712)
!5717 = !DILocation(line: 279, column: 14, scope: !5712)
!5718 = !DILocation(line: 279, column: 17, scope: !5712)
!5719 = !DILocation(line: 279, column: 5, scope: !5712)
!5720 = !DILocation(line: 280, column: 1, scope: !5677)
!5721 = distinct !DISubprogram(name: "is_basic", scope: !1907, file: !1907, line: 316, type: !2894, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !229, retainedNodes: !5722)
!5722 = !{!5723}
!5723 = !DILocalVariable(name: "c", arg: 1, scope: !5721, file: !1907, line: 316, type: !59)
!5724 = !DILocation(line: 316, column: 16, scope: !5721)
!5725 = !DILocation(line: 318, column: 27, scope: !5721)
!5726 = !DILocation(line: 318, column: 45, scope: !5721)
!5727 = !DILocation(line: 318, column: 11, scope: !5721)
!5728 = !DILocation(line: 318, column: 73, scope: !5721)
!5729 = !DILocation(line: 318, column: 10, scope: !5721)
!5730 = !DILocation(line: 318, column: 3, scope: !5721)
!5731 = distinct !DISubprogram(name: "rpl_fclose", scope: !5732, file: !5732, line: 58, type: !5733, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !675, retainedNodes: !5769)
!5732 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5733 = !DISubroutineType(types: !5734)
!5734 = !{!49, !5735}
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !5019, line: 7, baseType: !5737)
!5737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5021, line: 49, size: 1728, elements: !5738)
!5738 = !{!5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5737, file: !5021, line: 51, baseType: !49, size: 32)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5737, file: !5021, line: 54, baseType: !58, size: 64, offset: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5737, file: !5021, line: 55, baseType: !58, size: 64, offset: 128)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5737, file: !5021, line: 56, baseType: !58, size: 64, offset: 192)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5737, file: !5021, line: 57, baseType: !58, size: 64, offset: 256)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5737, file: !5021, line: 58, baseType: !58, size: 64, offset: 320)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5737, file: !5021, line: 59, baseType: !58, size: 64, offset: 384)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5737, file: !5021, line: 60, baseType: !58, size: 64, offset: 448)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5737, file: !5021, line: 61, baseType: !58, size: 64, offset: 512)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5737, file: !5021, line: 64, baseType: !58, size: 64, offset: 576)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5737, file: !5021, line: 65, baseType: !58, size: 64, offset: 640)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5737, file: !5021, line: 66, baseType: !58, size: 64, offset: 704)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5737, file: !5021, line: 68, baseType: !5036, size: 64, offset: 768)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5737, file: !5021, line: 70, baseType: !5753, size: 64, offset: 832)
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5737, file: !5021, line: 72, baseType: !49, size: 32, offset: 896)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5737, file: !5021, line: 73, baseType: !49, size: 32, offset: 928)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5737, file: !5021, line: 74, baseType: !5043, size: 64, offset: 960)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5737, file: !5021, line: 77, baseType: !175, size: 16, offset: 1024)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5737, file: !5021, line: 78, baseType: !5047, size: 8, offset: 1040)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5737, file: !5021, line: 79, baseType: !5049, size: 8, offset: 1048)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5737, file: !5021, line: 81, baseType: !5051, size: 64, offset: 1088)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5737, file: !5021, line: 89, baseType: !5054, size: 64, offset: 1152)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5737, file: !5021, line: 91, baseType: !5056, size: 64, offset: 1216)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5737, file: !5021, line: 92, baseType: !5059, size: 64, offset: 1280)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5737, file: !5021, line: 93, baseType: !5753, size: 64, offset: 1344)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5737, file: !5021, line: 94, baseType: !102, size: 64, offset: 1408)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5737, file: !5021, line: 95, baseType: !104, size: 64, offset: 1472)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5737, file: !5021, line: 96, baseType: !49, size: 32, offset: 1536)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5737, file: !5021, line: 98, baseType: !5066, size: 160, offset: 1568)
!5769 = !{!5770, !5771, !5772, !5773}
!5770 = !DILocalVariable(name: "fp", arg: 1, scope: !5731, file: !5732, line: 58, type: !5735)
!5771 = !DILocalVariable(name: "saved_errno", scope: !5731, file: !5732, line: 60, type: !49)
!5772 = !DILocalVariable(name: "fd", scope: !5731, file: !5732, line: 61, type: !49)
!5773 = !DILocalVariable(name: "result", scope: !5731, file: !5732, line: 62, type: !49)
!5774 = !DILocation(line: 58, column: 19, scope: !5731)
!5775 = !DILocation(line: 60, column: 7, scope: !5731)
!5776 = !DILocation(line: 62, column: 7, scope: !5731)
!5777 = !DILocation(line: 65, column: 8, scope: !5731)
!5778 = !DILocation(line: 61, column: 7, scope: !5731)
!5779 = !DILocation(line: 66, column: 10, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5731, file: !5732, line: 66, column: 7)
!5781 = !DILocation(line: 66, column: 7, scope: !5731)
!5782 = !DILocation(line: 67, column: 12, scope: !5780)
!5783 = !DILocation(line: 67, column: 5, scope: !5780)
!5784 = !DILocation(line: 72, column: 9, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5731, file: !5732, line: 72, column: 7)
!5786 = !DILocation(line: 72, column: 23, scope: !5785)
!5787 = !DILocation(line: 72, column: 33, scope: !5785)
!5788 = !DILocation(line: 72, column: 26, scope: !5785)
!5789 = !DILocation(line: 72, column: 59, scope: !5785)
!5790 = !DILocation(line: 73, column: 7, scope: !5785)
!5791 = !DILocation(line: 73, column: 10, scope: !5785)
!5792 = !DILocation(line: 72, column: 7, scope: !5731)
!5793 = !DILocation(line: 100, column: 12, scope: !5731)
!5794 = !DILocation(line: 105, column: 7, scope: !5731)
!5795 = !DILocation(line: 74, column: 19, scope: !5785)
!5796 = !DILocation(line: 105, column: 19, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5731, file: !5732, line: 105, column: 7)
!5798 = !DILocation(line: 107, column: 13, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5797, file: !5732, line: 106, column: 5)
!5800 = !DILocation(line: 109, column: 5, scope: !5799)
!5801 = !DILocation(line: 0, scope: !5731)
!5802 = !DILocation(line: 112, column: 1, scope: !5731)
!5803 = distinct !DISubprogram(name: "rpl_fflush", scope: !5804, file: !5804, line: 129, type: !5805, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !677, retainedNodes: !5841)
!5804 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5805 = !DISubroutineType(types: !5806)
!5806 = !{!49, !5807}
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5808, size: 64)
!5808 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !5019, line: 7, baseType: !5809)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5021, line: 49, size: 1728, elements: !5810)
!5810 = !{!5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5826, !5827, !5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5809, file: !5021, line: 51, baseType: !49, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5809, file: !5021, line: 54, baseType: !58, size: 64, offset: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5809, file: !5021, line: 55, baseType: !58, size: 64, offset: 128)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5809, file: !5021, line: 56, baseType: !58, size: 64, offset: 192)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5809, file: !5021, line: 57, baseType: !58, size: 64, offset: 256)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5809, file: !5021, line: 58, baseType: !58, size: 64, offset: 320)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5809, file: !5021, line: 59, baseType: !58, size: 64, offset: 384)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5809, file: !5021, line: 60, baseType: !58, size: 64, offset: 448)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5809, file: !5021, line: 61, baseType: !58, size: 64, offset: 512)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5809, file: !5021, line: 64, baseType: !58, size: 64, offset: 576)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5809, file: !5021, line: 65, baseType: !58, size: 64, offset: 640)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5809, file: !5021, line: 66, baseType: !58, size: 64, offset: 704)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5809, file: !5021, line: 68, baseType: !5036, size: 64, offset: 768)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5809, file: !5021, line: 70, baseType: !5825, size: 64, offset: 832)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5809, file: !5021, line: 72, baseType: !49, size: 32, offset: 896)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5809, file: !5021, line: 73, baseType: !49, size: 32, offset: 928)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5809, file: !5021, line: 74, baseType: !5043, size: 64, offset: 960)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5809, file: !5021, line: 77, baseType: !175, size: 16, offset: 1024)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5809, file: !5021, line: 78, baseType: !5047, size: 8, offset: 1040)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5809, file: !5021, line: 79, baseType: !5049, size: 8, offset: 1048)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5809, file: !5021, line: 81, baseType: !5051, size: 64, offset: 1088)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5809, file: !5021, line: 89, baseType: !5054, size: 64, offset: 1152)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5809, file: !5021, line: 91, baseType: !5056, size: 64, offset: 1216)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5809, file: !5021, line: 92, baseType: !5059, size: 64, offset: 1280)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5809, file: !5021, line: 93, baseType: !5825, size: 64, offset: 1344)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5809, file: !5021, line: 94, baseType: !102, size: 64, offset: 1408)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5809, file: !5021, line: 95, baseType: !104, size: 64, offset: 1472)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5809, file: !5021, line: 96, baseType: !49, size: 32, offset: 1536)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5809, file: !5021, line: 98, baseType: !5066, size: 160, offset: 1568)
!5841 = !{!5842}
!5842 = !DILocalVariable(name: "stream", arg: 1, scope: !5803, file: !5804, line: 129, type: !5807)
!5843 = !DILocation(line: 129, column: 19, scope: !5803)
!5844 = !DILocation(line: 150, column: 14, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5803, file: !5804, line: 150, column: 7)
!5846 = !DILocation(line: 150, column: 22, scope: !5845)
!5847 = !DILocation(line: 150, column: 27, scope: !5845)
!5848 = !DILocation(line: 150, column: 7, scope: !5803)
!5849 = !DILocation(line: 151, column: 12, scope: !5845)
!5850 = !DILocation(line: 151, column: 5, scope: !5845)
!5851 = !DILocalVariable(name: "fp", arg: 1, scope: !5852, file: !5804, line: 41, type: !5807)
!5852 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5804, file: !5804, line: 41, type: !5853, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !677, retainedNodes: !5855)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !5807}
!5855 = !{!5851}
!5856 = !DILocation(line: 41, column: 48, scope: !5852, inlinedAt: !5857)
!5857 = distinct !DILocation(line: 156, column: 3, scope: !5803)
!5858 = !DILocation(line: 43, column: 11, scope: !5859, inlinedAt: !5857)
!5859 = distinct !DILexicalBlock(scope: !5852, file: !5804, line: 43, column: 7)
!5860 = !DILocation(line: 43, column: 18, scope: !5859, inlinedAt: !5857)
!5861 = !DILocation(line: 43, column: 7, scope: !5852, inlinedAt: !5857)
!5862 = !DILocation(line: 45, column: 5, scope: !5859, inlinedAt: !5857)
!5863 = !DILocation(line: 158, column: 10, scope: !5803)
!5864 = !DILocation(line: 158, column: 3, scope: !5803)
!5865 = !DILocation(line: 0, scope: !5803)
!5866 = !DILocation(line: 232, column: 1, scope: !5803)
!5867 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5868, file: !5868, line: 28, type: !5869, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !679, retainedNodes: !5906)
!5868 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!49, !5871, !5905, !49}
!5871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5872, size: 64)
!5872 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !5019, line: 7, baseType: !5873)
!5873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5021, line: 49, size: 1728, elements: !5874)
!5874 = !{!5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904}
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5873, file: !5021, line: 51, baseType: !49, size: 32)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5873, file: !5021, line: 54, baseType: !58, size: 64, offset: 64)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5873, file: !5021, line: 55, baseType: !58, size: 64, offset: 128)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5873, file: !5021, line: 56, baseType: !58, size: 64, offset: 192)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5873, file: !5021, line: 57, baseType: !58, size: 64, offset: 256)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5873, file: !5021, line: 58, baseType: !58, size: 64, offset: 320)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5873, file: !5021, line: 59, baseType: !58, size: 64, offset: 384)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5873, file: !5021, line: 60, baseType: !58, size: 64, offset: 448)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5873, file: !5021, line: 61, baseType: !58, size: 64, offset: 512)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5873, file: !5021, line: 64, baseType: !58, size: 64, offset: 576)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5873, file: !5021, line: 65, baseType: !58, size: 64, offset: 640)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5873, file: !5021, line: 66, baseType: !58, size: 64, offset: 704)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5873, file: !5021, line: 68, baseType: !5036, size: 64, offset: 768)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5873, file: !5021, line: 70, baseType: !5889, size: 64, offset: 832)
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5873, file: !5021, line: 72, baseType: !49, size: 32, offset: 896)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5873, file: !5021, line: 73, baseType: !49, size: 32, offset: 928)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5873, file: !5021, line: 74, baseType: !5043, size: 64, offset: 960)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5873, file: !5021, line: 77, baseType: !175, size: 16, offset: 1024)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5873, file: !5021, line: 78, baseType: !5047, size: 8, offset: 1040)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5873, file: !5021, line: 79, baseType: !5049, size: 8, offset: 1048)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5873, file: !5021, line: 81, baseType: !5051, size: 64, offset: 1088)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5873, file: !5021, line: 89, baseType: !5054, size: 64, offset: 1152)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5873, file: !5021, line: 91, baseType: !5056, size: 64, offset: 1216)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5873, file: !5021, line: 92, baseType: !5059, size: 64, offset: 1280)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5873, file: !5021, line: 93, baseType: !5889, size: 64, offset: 1344)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5873, file: !5021, line: 94, baseType: !102, size: 64, offset: 1408)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5873, file: !5021, line: 95, baseType: !104, size: 64, offset: 1472)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5873, file: !5021, line: 96, baseType: !49, size: 32, offset: 1536)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5873, file: !5021, line: 98, baseType: !5066, size: 160, offset: 1568)
!5905 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2691, line: 63, baseType: !5043)
!5906 = !{!5907, !5908, !5909, !5910}
!5907 = !DILocalVariable(name: "fp", arg: 1, scope: !5867, file: !5868, line: 28, type: !5871)
!5908 = !DILocalVariable(name: "offset", arg: 2, scope: !5867, file: !5868, line: 28, type: !5905)
!5909 = !DILocalVariable(name: "whence", arg: 3, scope: !5867, file: !5868, line: 28, type: !49)
!5910 = !DILocalVariable(name: "pos", scope: !5911, file: !5868, line: 117, type: !5905)
!5911 = distinct !DILexicalBlock(scope: !5912, file: !5868, line: 113, column: 5)
!5912 = distinct !DILexicalBlock(scope: !5867, file: !5868, line: 52, column: 7)
!5913 = !DILocation(line: 28, column: 15, scope: !5867)
!5914 = !DILocation(line: 28, column: 25, scope: !5867)
!5915 = !DILocation(line: 28, column: 37, scope: !5867)
!5916 = !DILocation(line: 52, column: 11, scope: !5912)
!5917 = !{!735, !721, i64 16}
!5918 = !DILocation(line: 52, column: 31, scope: !5912)
!5919 = !{!735, !721, i64 8}
!5920 = !DILocation(line: 52, column: 24, scope: !5912)
!5921 = !DILocation(line: 53, column: 7, scope: !5912)
!5922 = !DILocation(line: 53, column: 14, scope: !5912)
!5923 = !DILocation(line: 53, column: 35, scope: !5912)
!5924 = !{!735, !721, i64 32}
!5925 = !DILocation(line: 53, column: 28, scope: !5912)
!5926 = !DILocation(line: 54, column: 7, scope: !5912)
!5927 = !DILocation(line: 54, column: 14, scope: !5912)
!5928 = !{!735, !721, i64 72}
!5929 = !DILocation(line: 54, column: 28, scope: !5912)
!5930 = !DILocation(line: 52, column: 7, scope: !5867)
!5931 = !DILocation(line: 117, column: 26, scope: !5911)
!5932 = !DILocation(line: 117, column: 19, scope: !5911)
!5933 = !DILocation(line: 117, column: 13, scope: !5911)
!5934 = !DILocation(line: 118, column: 15, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5911, file: !5868, line: 118, column: 11)
!5936 = !DILocation(line: 118, column: 11, scope: !5911)
!5937 = !DILocation(line: 129, column: 11, scope: !5911)
!5938 = !DILocation(line: 129, column: 18, scope: !5911)
!5939 = !DILocation(line: 130, column: 11, scope: !5911)
!5940 = !DILocation(line: 130, column: 19, scope: !5911)
!5941 = !{!735, !737, i64 144}
!5942 = !DILocation(line: 161, column: 7, scope: !5911)
!5943 = !DILocation(line: 163, column: 10, scope: !5867)
!5944 = !DILocation(line: 163, column: 3, scope: !5867)
!5945 = !DILocation(line: 0, scope: !5867)
!5946 = !DILocation(line: 164, column: 1, scope: !5867)
