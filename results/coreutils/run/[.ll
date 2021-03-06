; ModuleID = 'coreutils-8.30/src/[.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1
@.str.6 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1
@.str.7 = private unnamed_addr constant [250 x i8] c"\0A  -n STRING            the length of STRING is nonzero\0A  STRING               equivalent to -n STRING\0A  -z STRING            the length of STRING is zero\0A  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A\00", align 1
@.str.8 = private unnamed_addr constant [376 x i8] c"\0A  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1
@.str.9 = private unnamed_addr constant [189 x i8] c"\0A  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1
@.str.10 = private unnamed_addr constant [171 x i8] c"\0A  -b FILE     FILE exists and is block special\0A  -c FILE     FILE exists and is character special\0A  -d FILE     FILE exists and is a directory\0A  -e FILE     FILE exists\0A\00", align 1
@.str.11 = private unnamed_addr constant [275 x i8] c"  -f FILE     FILE exists and is a regular file\0A  -g FILE     FILE exists and is set-group-ID\0A  -G FILE     FILE exists and is owned by the effective group ID\0A  -h FILE     FILE exists and is a symbolic link (same as -L)\0A  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1
@.str.12 = private unnamed_addr constant [289 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A  -O FILE     FILE exists and is owned by the effective user ID\0A  -p FILE     FILE exists and is a named pipe\0A  -r FILE     FILE exists and read permission is granted\0A  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1
@.str.13 = private unnamed_addr constant [287 x i8] c"  -S FILE     FILE exists and is a socket\0A  -t FD       file descriptor FD is opened on a terminal\0A  -u FILE     FILE exists and its set-user-ID bit is set\0A  -w FILE     FILE exists and write permission is granted\0A  -x FILE     FILE exists and execute (or search) permission is granted\0A\00", align 1
@.str.14 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1
@.str.15 = private unnamed_addr constant [122 x i8] c"\0ANOTE: Binary -a and -o are inherently ambiguous.  Use 'test EXPR1 && test\0AEXPR2' or 'test EXPR1 || test EXPR2' instead.\0A\00", align 1
@.str.16 = private unnamed_addr constant [136 x i8] c"\0ANOTE: [ honors the --help and --version options, but test does not.\0Atest treats each of those as it treats any other nonempty STRING.\0A\00", align 1
@.str.17 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@.str.23 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@argc = internal unnamed_addr global i32 0, align 4, !dbg !40
@pos = internal unnamed_addr global i32 0, align 4, !dbg !38
@.str.30 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), align 8, !dbg !43
@.str.73 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !51
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !56
@.str.76 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !60
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !67
@.str.87 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.99, i32 0, i32 0), i8* null], align 16, !dbg !74
@.str.90 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.91 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.92 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.93 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.94 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.95 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.96 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.97 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.98 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.99 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !103
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !110
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !122
@.str.11.100 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.101 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.102 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.103 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.104 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.105 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.106 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !129
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !136
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !124
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !138
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.118 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.121 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.122 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.123 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.124 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.125 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.126 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.127 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.128 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.129 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.130 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.131 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.132 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.135 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.136 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.137 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.138 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.139 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.140 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !144
@.str.1.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.164 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.168 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !605 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !610, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 %0, metadata !609, metadata !DIExpression()), !dbg !633
  %3 = icmp eq i32 %0, 0, !dbg !634
  br i1 %3, label %9, label %4, !dbg !635

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !636, !tbaa !638
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !636
  %7 = load i8*, i8** @program_name, align 8, !dbg !636, !tbaa !638
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !636
  br label %96, !dbg !636

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !642
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !638
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !642
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !643
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !638
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !643
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !644
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !638
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !644
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !645
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !638
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !645
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !646
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !638
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !646
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !647
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !638
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !647
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !648
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !638
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !648
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !649
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !638
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !649
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !650
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !638
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !650
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !651
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !638
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !651
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !652
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !638
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !652
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.12, i64 0, i64 0), i32 5) #11, !dbg !653
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !638
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !653
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !654
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !638
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !654
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !655
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !638
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !655
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !656
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !638
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !656
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !657
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !638
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56), !dbg !657
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !658
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !658
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %59) #11, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !616, metadata !DIExpression()) #11, !dbg !659
  %61 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !660
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %61) #11, !dbg !660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %61, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !617, metadata !DIExpression()) #11, !dbg !661
  %62 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !662
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !618, metadata !DIExpression()) #11, !dbg !663
  br label %63, !dbg !664

; <label>:63:                                     ; preds = %68, %9
  %64 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %65 = phi %struct.infomap* [ %69, %68 ], [ %62, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !618, metadata !DIExpression()) #11, !dbg !663
  %66 = tail call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %64) #14, !dbg !664
  %67 = icmp eq i32 %66, 0, !dbg !664
  br i1 %67, label %73, label %68, !dbg !665

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 1, !dbg !666
  call void @llvm.dbg.value(metadata %struct.infomap* %69, metadata !618, metadata !DIExpression()) #11, !dbg !663
  %70 = getelementptr inbounds %struct.infomap, %struct.infomap* %69, i64 0, i32 0, !dbg !667
  %71 = load i8*, i8** %70, align 8, !dbg !667, !tbaa !668
  %72 = icmp eq i8* %71, null, !dbg !670
  br i1 %72, label %73, label %63, !dbg !671, !llvm.loop !672

; <label>:73:                                     ; preds = %68, %63
  %74 = phi %struct.infomap* [ %69, %68 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !618, metadata !DIExpression()) #11, !dbg !663
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !618, metadata !DIExpression()) #11, !dbg !663
  %75 = getelementptr inbounds %struct.infomap, %struct.infomap* %74, i64 0, i32 1, !dbg !675
  %76 = load i8*, i8** %75, align 8, !dbg !675, !tbaa !677
  %77 = icmp eq i8* %76, null, !dbg !678
  %78 = select i1 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %76, !dbg !679
  call void @llvm.dbg.value(metadata i8* %78, metadata !617, metadata !DIExpression()) #11, !dbg !661
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !680
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0)) #11, !dbg !680
  %81 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !681
  call void @llvm.dbg.value(metadata i8* %81, metadata !625, metadata !DIExpression()) #11, !dbg !682
  %82 = icmp eq i8* %81, null, !dbg !683
  br i1 %82, label %89, label %83, !dbg !685

; <label>:83:                                     ; preds = %73
  %84 = tail call i32 @strncmp(i8* nonnull %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #14, !dbg !686
  %85 = icmp eq i32 %84, 0, !dbg !686
  br i1 %85, label %89, label %86, !dbg !687

; <label>:86:                                     ; preds = %83
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !688
  %88 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !688
  br label %89, !dbg !690

; <label>:89:                                     ; preds = %73, %83, %86
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !691
  %91 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !691
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !692
  %93 = icmp eq i8* %78, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), !dbg !692
  %94 = select i1 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), !dbg !692
  %95 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %92, i8* %78, i8* %94) #11, !dbg !692
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %61) #11, !dbg !693
  br label %96

; <label>:96:                                     ; preds = %89, %4
  tail call void @exit(i32 %0) #15, !dbg !694
  unreachable, !dbg !694
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !699, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i8** %1, metadata !700, metadata !DIExpression()), !dbg !703
  %3 = load i8*, i8** %1, align 8, !dbg !704, !tbaa !638
  tail call void @set_program_name(i8* %3) #11, !dbg !705
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !706
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !707
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !708
  call void @llvm.dbg.value(metadata i32 2, metadata !709, metadata !DIExpression()), !dbg !712
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !714, !tbaa !716
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !718
  store i8** %1, i8*** @argv, align 8, !dbg !719, !tbaa !638
  %8 = icmp eq i32 %0, 2, !dbg !720
  br i1 %8, label %9, label %21, !dbg !724

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !725
  %11 = load i8*, i8** %10, align 8, !dbg !725, !tbaa !638
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #14, !dbg !725
  %13 = icmp eq i32 %12, 0, !dbg !725
  br i1 %13, label %14, label %15, !dbg !728

; <label>:14:                                     ; preds = %9
  tail call void @usage(i32 0) #16, !dbg !729
  unreachable, !dbg !729

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #14, !dbg !730
  %17 = icmp eq i32 %16, 0, !dbg !730
  br i1 %17, label %18, label %23, !dbg !732

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !638
  %20 = load i8*, i8** @Version, align 8, !dbg !735, !tbaa !638
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* null) #11, !dbg !736
  br label %52, !dbg !737

; <label>:21:                                     ; preds = %2
  %22 = icmp slt i32 %0, 2, !dbg !738
  br i1 %22, label %30, label %23, !dbg !740

; <label>:23:                                     ; preds = %15, %21
  %24 = add nsw i32 %0, -1, !dbg !741
  %25 = sext i32 %24 to i64, !dbg !741
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !741
  %27 = load i8*, i8** %26, align 8, !dbg !741, !tbaa !638
  %28 = tail call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #14, !dbg !741
  %29 = icmp eq i32 %28, 0, !dbg !741
  br i1 %29, label %33, label %30, !dbg !742

; <label>:30:                                     ; preds = %23, %21
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !743
  %32 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #11, !dbg !744
  tail call void (i8*, ...) @test_syntax_error(i8* %31, i8* %32) #16, !dbg !745
  unreachable, !dbg !745

; <label>:33:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i32 %24, metadata !699, metadata !DIExpression()), !dbg !702
  store i32 %24, i32* @argc, align 4, !dbg !746, !tbaa !716
  store i32 1, i32* @pos, align 4, !dbg !747, !tbaa !716
  %34 = icmp slt i32 %0, 3, !dbg !748
  br i1 %34, label %52, label %35, !dbg !750

; <label>:35:                                     ; preds = %33
  %36 = add nsw i32 %0, -2, !dbg !751
  %37 = tail call fastcc zeroext i1 @posixtest(i32 %36), !dbg !752
  %38 = load i32, i32* @pos, align 4, !dbg !753, !tbaa !716
  %39 = load i32, i32* @argc, align 4, !dbg !755, !tbaa !716
  %40 = icmp eq i32 %38, %39, !dbg !756
  br i1 %40, label %49, label %41, !dbg !757

; <label>:41:                                     ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !758
  %43 = load i8**, i8*** @argv, align 8, !dbg !759, !tbaa !638
  %44 = load i32, i32* @pos, align 4, !dbg !760, !tbaa !716
  %45 = sext i32 %44 to i64, !dbg !759
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45, !dbg !759
  %47 = load i8*, i8** %46, align 8, !dbg !759, !tbaa !638
  %48 = tail call i8* @quote(i8* %47) #11, !dbg !761
  tail call void (i8*, ...) @test_syntax_error(i8* %42, i8* %48) #16, !dbg !762
  unreachable, !dbg !762

; <label>:49:                                     ; preds = %35
  %50 = xor i1 %37, true, !dbg !763
  %51 = zext i1 %50 to i32, !dbg !763
  br label %52, !dbg !763

; <label>:52:                                     ; preds = %33, %49, %18
  %53 = phi i32 [ 0, %18 ], [ %51, %49 ], [ 1, %33 ], !dbg !764
  ret i32 %53, !dbg !765
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8*, ...) unnamed_addr #0 !dbg !766 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !770, metadata !DIExpression()), !dbg !786
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #11, !dbg !787
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !771, metadata !DIExpression()), !dbg !788
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !789
  call void @llvm.va_start(i8* nonnull %3), !dbg !789
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !790
  call void @exit(i32 2) #15, !dbg !791
  unreachable, !dbg !791
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32) unnamed_addr #7 !dbg !792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !796, metadata !DIExpression()), !dbg !798
  switch i32 %0, label %46 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ], !dbg !799

; <label>:2:                                      ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !800, !tbaa !638
  %4 = load i32, i32* @pos, align 4, !dbg !806, !tbaa !716
  %5 = add nsw i32 %4, 1, !dbg !806
  store i32 %5, i32* @pos, align 4, !dbg !806, !tbaa !716
  %6 = sext i32 %4 to i64, !dbg !800
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !800
  %8 = load i8*, i8** %7, align 8, !dbg !800, !tbaa !638
  %9 = load i8, i8* %8, align 1, !dbg !800, !tbaa !807
  %10 = icmp ne i8 %9, 0, !dbg !808
  br label %95, !dbg !809

; <label>:11:                                     ; preds = %1
  %12 = tail call fastcc zeroext i1 @two_arguments(), !dbg !810
  br label %95, !dbg !811

; <label>:13:                                     ; preds = %1
  %14 = tail call fastcc zeroext i1 @three_arguments(), !dbg !812
  br label %95, !dbg !813

; <label>:15:                                     ; preds = %1
  %16 = load i8**, i8*** @argv, align 8, !dbg !814, !tbaa !638
  %17 = load i32, i32* @pos, align 4, !dbg !814, !tbaa !716
  %18 = sext i32 %17 to i64, !dbg !814
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18, !dbg !814
  %20 = load i8*, i8** %19, align 8, !dbg !814, !tbaa !638
  %21 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !814
  %22 = icmp eq i32 %21, 0, !dbg !814
  br i1 %22, label %23, label %31, !dbg !816

; <label>:23:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !822
  %24 = add nsw i32 %17, 1, !dbg !825
  store i32 %24, i32* @pos, align 4, !dbg !825, !tbaa !716
  %25 = load i32, i32* @argc, align 4, !dbg !826
  %26 = icmp slt i32 %24, %25, !dbg !828
  br i1 %26, label %28, label %27, !dbg !829

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !830
  unreachable, !dbg !830

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc zeroext i1 @three_arguments(), !dbg !831
  %30 = xor i1 %29, true, !dbg !832
  br label %95, !dbg !833

; <label>:31:                                     ; preds = %15
  %32 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !834
  %33 = icmp eq i32 %32, 0, !dbg !834
  br i1 %33, label %34, label %51, !dbg !836

; <label>:34:                                     ; preds = %31
  %35 = add nsw i32 %17, 3, !dbg !837
  %36 = sext i32 %35 to i64, !dbg !837
  %37 = getelementptr inbounds i8*, i8** %16, i64 %36, !dbg !837
  %38 = load i8*, i8** %37, align 8, !dbg !837, !tbaa !638
  %39 = tail call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !837
  %40 = icmp eq i32 %39, 0, !dbg !837
  br i1 %40, label %41, label %51, !dbg !838

; <label>:41:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !839
  %42 = add nsw i32 %17, 1, !dbg !842
  store i32 %42, i32* @pos, align 4, !dbg !842, !tbaa !716
  %43 = tail call fastcc zeroext i1 @two_arguments(), !dbg !843
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !844
  %44 = load i32, i32* @pos, align 4, !dbg !846, !tbaa !716
  %45 = add nsw i32 %44, 1, !dbg !846
  store i32 %45, i32* @pos, align 4, !dbg !846, !tbaa !716
  br label %95, !dbg !847

; <label>:46:                                     ; preds = %1
  %47 = icmp slt i32 %0, 1, !dbg !848
  br i1 %47, label %50, label %48, !dbg !850

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* @pos, align 4, !dbg !851, !tbaa !716
  br label %51, !dbg !850

; <label>:50:                                     ; preds = %46
  tail call void @abort() #15, !dbg !855
  unreachable, !dbg !855

; <label>:51:                                     ; preds = %48, %31, %34
  %52 = phi i32 [ %49, %48 ], [ %17, %31 ], [ %17, %34 ], !dbg !851
  %53 = load i32, i32* @argc, align 4, !dbg !856, !tbaa !716
  %54 = icmp slt i32 %52, %53, !dbg !857
  br i1 %54, label %55, label %60, !dbg !858

; <label>:55:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8 1, metadata !859, metadata !DIExpression()) #11, !dbg !862
  %56 = tail call fastcc zeroext i1 @term() #11, !dbg !869
  %57 = load i32, i32* @pos, align 4, !dbg !871, !tbaa !716
  %58 = load i32, i32* @argc, align 4, !dbg !873, !tbaa !716
  %59 = icmp slt i32 %57, %58, !dbg !874
  br i1 %59, label %61, label %81, !dbg !875

; <label>:60:                                     ; preds = %51
  tail call fastcc void @beyond() #15, !dbg !876
  unreachable, !dbg !876

; <label>:61:                                     ; preds = %55, %89
  %62 = phi i32 [ %92, %89 ], [ %57, %55 ]
  %63 = phi i1 [ %91, %89 ], [ %56, %55 ]
  %64 = phi i1 [ %86, %89 ], [ false, %55 ]
  br label %65, !dbg !875

; <label>:65:                                     ; preds = %61, %74
  %66 = phi i32 [ %62, %61 ], [ %78, %74 ]
  %67 = phi i1 [ %63, %61 ], [ %77, %74 ]
  %68 = load i8**, i8*** @argv, align 8, !dbg !877, !tbaa !638
  %69 = sext i32 %66 to i64, !dbg !877
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69, !dbg !877
  %71 = load i8*, i8** %70, align 8, !dbg !877, !tbaa !638
  %72 = tail call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !877
  %73 = icmp eq i32 %72, 0, !dbg !877
  br i1 %73, label %74, label %85, !dbg !878

; <label>:74:                                     ; preds = %65
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()) #11, !dbg !879
  %75 = add nsw i32 %66, 1, !dbg !881
  store i32 %75, i32* @pos, align 4, !dbg !881, !tbaa !716
  %76 = tail call fastcc zeroext i1 @term() #11, !dbg !869
  %77 = and i1 %67, %76, !dbg !882
  %78 = load i32, i32* @pos, align 4, !dbg !871, !tbaa !716
  %79 = load i32, i32* @argc, align 4, !dbg !873, !tbaa !716
  %80 = icmp slt i32 %78, %79, !dbg !874
  br i1 %80, label %65, label %81, !dbg !875, !llvm.loop !883

; <label>:81:                                     ; preds = %89, %74, %55
  %82 = phi i1 [ false, %55 ], [ %64, %74 ], [ %86, %89 ], !dbg !886
  %83 = phi i1 [ %56, %55 ], [ %77, %74 ], [ %91, %89 ], !dbg !882
  %84 = or i1 %82, %83, !dbg !887
  br label %95

; <label>:85:                                     ; preds = %65
  %86 = or i1 %64, %67, !dbg !887
  %87 = tail call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !888
  %88 = icmp eq i32 %87, 0, !dbg !888
  br i1 %88, label %89, label %95, !dbg !890

; <label>:89:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()) #11, !dbg !891
  %90 = add nsw i32 %66, 1, !dbg !893
  store i32 %90, i32* @pos, align 4, !dbg !893, !tbaa !716
  call void @llvm.dbg.value(metadata i8 1, metadata !859, metadata !DIExpression()) #11, !dbg !862
  %91 = tail call fastcc zeroext i1 @term() #11, !dbg !869
  %92 = load i32, i32* @pos, align 4, !dbg !871, !tbaa !716
  %93 = load i32, i32* @argc, align 4, !dbg !873, !tbaa !716
  %94 = icmp slt i32 %92, %93, !dbg !874
  br i1 %94, label %61, label %81, !dbg !875, !llvm.loop !894

; <label>:95:                                     ; preds = %85, %81, %41, %28, %13, %11, %2
  %96 = phi i1 [ %30, %28 ], [ %43, %41 ], [ %14, %13 ], [ %12, %11 ], [ %10, %2 ], [ %84, %81 ], [ %86, %85 ]
  ret i1 %96, !dbg !897
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @two_arguments() unnamed_addr #7 !dbg !898 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !901, !tbaa !638
  %2 = load i32, i32* @pos, align 4, !dbg !901, !tbaa !716
  %3 = sext i32 %2 to i64, !dbg !901
  %4 = getelementptr inbounds i8*, i8** %1, i64 %3, !dbg !901
  %5 = load i8*, i8** %4, align 8, !dbg !901, !tbaa !638
  %6 = tail call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !901
  %7 = icmp eq i32 %6, 0, !dbg !901
  br i1 %7, label %8, label %16, !dbg !903

; <label>:8:                                      ; preds = %0
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !904
  %9 = add nsw i32 %2, 1, !dbg !907
  %10 = add nsw i32 %2, 2, !dbg !908
  store i32 %10, i32* @pos, align 4, !dbg !908, !tbaa !716
  %11 = sext i32 %9 to i64, !dbg !910
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !910
  %13 = load i8*, i8** %12, align 8, !dbg !910, !tbaa !638
  %14 = load i8, i8* %13, align 1, !dbg !910, !tbaa !807
  %15 = icmp eq i8 %14, 0, !dbg !911
  br label %40, !dbg !912

; <label>:16:                                     ; preds = %0
  %17 = load i8, i8* %5, align 1, !dbg !913, !tbaa !807
  %18 = icmp eq i8 %17, 45, !dbg !915
  br i1 %18, label %19, label %39, !dbg !916

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !917
  %21 = load i8, i8* %20, align 1, !dbg !917, !tbaa !807
  %22 = icmp eq i8 %21, 0, !dbg !918
  br i1 %22, label %39, label %23, !dbg !919

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !920
  %25 = load i8, i8* %24, align 1, !dbg !920, !tbaa !807
  %26 = icmp eq i8 %25, 0, !dbg !921
  br i1 %26, label %27, label %39, !dbg !922

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %5, metadata !923, metadata !DIExpression()), !dbg !928
  %28 = sext i8 %21 to i32, !dbg !932
  switch i32 %28, label %31 [
    i32 97, label %29
    i32 98, label %29
    i32 99, label %29
    i32 100, label %29
    i32 101, label %29
    i32 102, label %29
    i32 103, label %29
    i32 104, label %29
    i32 107, label %29
    i32 110, label %29
    i32 111, label %29
    i32 112, label %29
    i32 114, label %29
    i32 115, label %29
    i32 116, label %29
    i32 117, label %29
    i32 119, label %29
    i32 120, label %29
    i32 122, label %29
    i32 71, label %29
    i32 76, label %29
    i32 79, label %29
    i32 83, label %29
    i32 78, label %29
  ], !dbg !933

; <label>:29:                                     ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = tail call fastcc zeroext i1 @unary_operator(), !dbg !934
  br label %40

; <label>:31:                                     ; preds = %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !935
  %33 = load i8**, i8*** @argv, align 8, !dbg !936, !tbaa !638
  %34 = load i32, i32* @pos, align 4, !dbg !937, !tbaa !716
  %35 = sext i32 %34 to i64, !dbg !936
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35, !dbg !936
  %37 = load i8*, i8** %36, align 8, !dbg !936, !tbaa !638
  %38 = tail call i8* @quote(i8* %37) #11, !dbg !938
  tail call void (i8*, ...) @test_syntax_error(i8* %32, i8* %38) #16, !dbg !939
  unreachable, !dbg !939

; <label>:39:                                     ; preds = %19, %23, %16
  tail call fastcc void @beyond() #16, !dbg !940
  unreachable, !dbg !940

; <label>:40:                                     ; preds = %29, %8
  %41 = phi i1 [ %15, %8 ], [ %30, %29 ]
  ret i1 %41, !dbg !941
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #7 !dbg !942 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !945, !tbaa !638
  %2 = load i32, i32* @pos, align 4, !dbg !947, !tbaa !716
  %3 = add nsw i32 %2, 1, !dbg !948
  %4 = sext i32 %3 to i64, !dbg !945
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !945
  %6 = load i8*, i8** %5, align 8, !dbg !945, !tbaa !638
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !949
  br i1 %7, label %8, label %10, !dbg !950

; <label>:8:                                      ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !951
  br label %95, !dbg !952

; <label>:10:                                     ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !953
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !953
  %13 = load i8*, i8** %12, align 8, !dbg !953, !tbaa !638
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !953
  %15 = icmp eq i32 %14, 0, !dbg !953
  br i1 %15, label %16, label %23, !dbg !955

; <label>:16:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !956
  store i32 %3, i32* @pos, align 4, !dbg !959, !tbaa !716
  %17 = load i32, i32* @argc, align 4, !dbg !960
  %18 = icmp slt i32 %3, %17, !dbg !961
  br i1 %18, label %20, label %19, !dbg !962

; <label>:19:                                     ; preds = %16
  tail call fastcc void @beyond() #15, !dbg !963
  unreachable, !dbg !963

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc zeroext i1 @two_arguments(), !dbg !964
  %22 = xor i1 %21, true, !dbg !965
  br label %95, !dbg !966

; <label>:23:                                     ; preds = %10
  %24 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !967
  %25 = icmp eq i32 %24, 0, !dbg !967
  br i1 %25, label %26, label %37, !dbg !969

; <label>:26:                                     ; preds = %23
  %27 = add nsw i32 %2, 2, !dbg !970
  %28 = sext i32 %27 to i64, !dbg !970
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !970
  %30 = load i8*, i8** %29, align 8, !dbg !970, !tbaa !638
  %31 = tail call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !970
  %32 = icmp eq i32 %31, 0, !dbg !970
  br i1 %32, label %33, label %37, !dbg !971

; <label>:33:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !972
  %34 = load i8, i8* %6, align 1, !dbg !975, !tbaa !807
  %35 = icmp ne i8 %34, 0, !dbg !977
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !978
  %36 = add nsw i32 %2, 3, !dbg !980
  store i32 %36, i32* @pos, align 4, !dbg !980, !tbaa !716
  br label %95, !dbg !981

; <label>:37:                                     ; preds = %26, %23
  %38 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !982
  %39 = icmp eq i32 %38, 0, !dbg !982
  br i1 %39, label %43, label %40, !dbg !984

; <label>:40:                                     ; preds = %37
  %41 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !985
  %42 = icmp eq i32 %41, 0, !dbg !985
  br i1 %42, label %43, label %86, !dbg !986

; <label>:43:                                     ; preds = %40, %37
  %44 = load i32, i32* @argc, align 4, !dbg !987, !tbaa !716
  %45 = icmp slt i32 %2, %44, !dbg !989
  br i1 %45, label %46, label %51, !dbg !990

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8 1, metadata !859, metadata !DIExpression()) #11, !dbg !991
  %47 = tail call fastcc zeroext i1 @term() #11, !dbg !994
  %48 = load i32, i32* @pos, align 4, !dbg !995, !tbaa !716
  %49 = load i32, i32* @argc, align 4, !dbg !996, !tbaa !716
  %50 = icmp slt i32 %48, %49, !dbg !997
  br i1 %50, label %52, label %72, !dbg !998

; <label>:51:                                     ; preds = %43
  tail call fastcc void @beyond() #15, !dbg !999
  unreachable, !dbg !999

; <label>:52:                                     ; preds = %46, %80
  %53 = phi i32 [ %83, %80 ], [ %48, %46 ]
  %54 = phi i1 [ %82, %80 ], [ %47, %46 ]
  %55 = phi i1 [ %77, %80 ], [ false, %46 ]
  br label %56, !dbg !998

; <label>:56:                                     ; preds = %52, %65
  %57 = phi i32 [ %53, %52 ], [ %69, %65 ]
  %58 = phi i1 [ %54, %52 ], [ %68, %65 ]
  %59 = load i8**, i8*** @argv, align 8, !dbg !1000, !tbaa !638
  %60 = sext i32 %57 to i64, !dbg !1000
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60, !dbg !1000
  %62 = load i8*, i8** %61, align 8, !dbg !1000, !tbaa !638
  %63 = tail call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !1000
  %64 = icmp eq i32 %63, 0, !dbg !1000
  br i1 %64, label %65, label %76, !dbg !1001

; <label>:65:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()) #11, !dbg !1002
  %66 = add nsw i32 %57, 1, !dbg !1004
  store i32 %66, i32* @pos, align 4, !dbg !1004, !tbaa !716
  %67 = tail call fastcc zeroext i1 @term() #11, !dbg !994
  %68 = and i1 %58, %67, !dbg !1005
  %69 = load i32, i32* @pos, align 4, !dbg !995, !tbaa !716
  %70 = load i32, i32* @argc, align 4, !dbg !996, !tbaa !716
  %71 = icmp slt i32 %69, %70, !dbg !997
  br i1 %71, label %56, label %72, !dbg !998, !llvm.loop !883

; <label>:72:                                     ; preds = %80, %65, %46
  %73 = phi i1 [ false, %46 ], [ %55, %65 ], [ %77, %80 ], !dbg !1006
  %74 = phi i1 [ %47, %46 ], [ %68, %65 ], [ %82, %80 ], !dbg !1005
  %75 = or i1 %73, %74, !dbg !1007
  br label %95

; <label>:76:                                     ; preds = %56
  %77 = or i1 %55, %58, !dbg !1007
  %78 = tail call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !1008
  %79 = icmp eq i32 %78, 0, !dbg !1008
  br i1 %79, label %80, label %95, !dbg !1009

; <label>:80:                                     ; preds = %76
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()) #11, !dbg !1010
  %81 = add nsw i32 %57, 1, !dbg !1012
  store i32 %81, i32* @pos, align 4, !dbg !1012, !tbaa !716
  call void @llvm.dbg.value(metadata i8 1, metadata !859, metadata !DIExpression()) #11, !dbg !991
  %82 = tail call fastcc zeroext i1 @term() #11, !dbg !994
  %83 = load i32, i32* @pos, align 4, !dbg !995, !tbaa !716
  %84 = load i32, i32* @argc, align 4, !dbg !996, !tbaa !716
  %85 = icmp slt i32 %83, %84, !dbg !997
  br i1 %85, label %52, label %72, !dbg !998, !llvm.loop !894

; <label>:86:                                     ; preds = %40
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1013
  %88 = load i8**, i8*** @argv, align 8, !dbg !1014, !tbaa !638
  %89 = load i32, i32* @pos, align 4, !dbg !1015, !tbaa !716
  %90 = add nsw i32 %89, 1, !dbg !1016
  %91 = sext i32 %90 to i64, !dbg !1014
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91, !dbg !1014
  %93 = load i8*, i8** %92, align 8, !dbg !1014, !tbaa !638
  %94 = tail call i8* @quote(i8* %93) #11, !dbg !1017
  tail call void (i8*, ...) @test_syntax_error(i8* %87, i8* %94) #16, !dbg !1018
  unreachable, !dbg !1018

; <label>:95:                                     ; preds = %76, %72, %20, %33, %8
  %96 = phi i1 [ %9, %8 ], [ %22, %20 ], [ %35, %33 ], [ %75, %72 ], [ %77, %76 ]
  ret i1 %96, !dbg !1019
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1020 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i32 5) #11, !dbg !1023
  %2 = load i8**, i8*** @argv, align 8, !dbg !1024, !tbaa !638
  %3 = load i32, i32* @argc, align 4, !dbg !1025, !tbaa !716
  %4 = add nsw i32 %3, -1, !dbg !1026
  %5 = sext i32 %4 to i64, !dbg !1024
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1024
  %7 = load i8*, i8** %6, align 8, !dbg !1024, !tbaa !638
  %8 = tail call i8* @quote(i8* %7) #11, !dbg !1027
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #16, !dbg !1028
  unreachable, !dbg !1028
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #7 !dbg !1029 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1032, metadata !DIExpression()), !dbg !1036
  %1 = load i32, i32* @pos, align 4, !dbg !1037, !tbaa !716
  %2 = load i32, i32* @argc, align 4, !dbg !1038, !tbaa !716
  %3 = icmp sgt i32 %2, %1, !dbg !1039
  br i1 %3, label %4, label %30, !dbg !1040

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !638
  %6 = sext i32 %1 to i64, !dbg !1041
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !1041
  %8 = load i8*, i8** %7, align 8, !dbg !1041, !tbaa !638
  %9 = load i8, i8* %8, align 1, !dbg !1041, !tbaa !807
  %10 = icmp eq i8 %9, 33, !dbg !1042
  br i1 %10, label %11, label %31, !dbg !1043

; <label>:11:                                     ; preds = %4, %23
  %12 = phi i8 [ %28, %23 ], [ %9, %4 ]
  %13 = phi i8* [ %27, %23 ], [ %8, %4 ]
  %14 = phi i1 [ %24, %23 ], [ false, %4 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %4 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1044
  %17 = load i8, i8* %16, align 1, !dbg !1044, !tbaa !807
  %18 = icmp eq i8 %17, 0, !dbg !1045
  br i1 %18, label %19, label %102, !dbg !1046

; <label>:19:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1047
  %20 = add nsw i32 %15, 1, !dbg !1050
  store i32 %20, i32* @pos, align 4, !dbg !1050, !tbaa !716
  %21 = icmp slt i32 %20, %2, !dbg !1051
  br i1 %21, label %23, label %22, !dbg !1052

; <label>:22:                                     ; preds = %19
  tail call fastcc void @beyond() #15, !dbg !1053
  unreachable, !dbg !1053

; <label>:23:                                     ; preds = %19
  %24 = xor i1 %14, true, !dbg !1054
  %25 = sext i32 %20 to i64, !dbg !1041
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !1041
  %27 = load i8*, i8** %26, align 8, !dbg !1041, !tbaa !638
  %28 = load i8, i8* %27, align 1, !dbg !1041, !tbaa !807
  %29 = icmp eq i8 %28, 33, !dbg !1042
  br i1 %29, label %11, label %31, !dbg !1043

; <label>:30:                                     ; preds = %0
  tail call fastcc void @beyond() #16, !dbg !1055
  unreachable, !dbg !1055

; <label>:31:                                     ; preds = %23, %4
  %32 = phi i32 [ %1, %4 ], [ %20, %23 ]
  %33 = phi i1 [ false, %4 ], [ %24, %23 ]
  %34 = phi i8* [ %8, %4 ], [ %27, %23 ], !dbg !1041
  %35 = phi i8 [ %9, %4 ], [ %28, %23 ], !dbg !1041
  %36 = icmp eq i8 %35, 40, !dbg !1057
  br i1 %36, label %37, label %102, !dbg !1058

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1059
  %39 = load i8, i8* %38, align 1, !dbg !1059, !tbaa !807
  %40 = icmp eq i8 %39, 0, !dbg !1060
  br i1 %40, label %41, label %102, !dbg !1061

; <label>:41:                                     ; preds = %37
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1062
  %42 = add nsw i32 %32, 1, !dbg !1064
  store i32 %42, i32* @pos, align 4, !dbg !1064, !tbaa !716
  %43 = icmp sgt i32 %2, %42, !dbg !1065
  br i1 %43, label %44, label %51, !dbg !1066

; <label>:44:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 1, metadata !1033, metadata !DIExpression()), !dbg !1067
  %45 = add i32 %32, 2, !dbg !1068
  %46 = icmp slt i32 %45, %2, !dbg !1071
  br i1 %46, label %47, label %72, !dbg !1072

; <label>:47:                                     ; preds = %44
  %48 = sext i32 %45 to i64, !dbg !1073
  %49 = sext i32 %42 to i64, !dbg !1073
  %50 = sext i32 %2 to i64, !dbg !1073
  br label %52, !dbg !1073

; <label>:51:                                     ; preds = %41
  tail call fastcc void @beyond() #15, !dbg !1074
  unreachable, !dbg !1074

; <label>:52:                                     ; preds = %47, %64
  %53 = phi i64 [ 1, %47 ], [ %65, %64 ]
  %54 = phi i64 [ %48, %47 ], [ %69, %64 ]
  %55 = phi i32 [ 1, %47 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !1033, metadata !DIExpression()), !dbg !1067
  %56 = getelementptr inbounds i8*, i8** %5, i64 %54, !dbg !1073
  %57 = load i8*, i8** %56, align 8, !dbg !1073, !tbaa !638
  %58 = tail call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !1073
  %59 = icmp eq i32 %58, 0, !dbg !1073
  br i1 %59, label %70, label %60, !dbg !1075

; <label>:60:                                     ; preds = %52
  %61 = icmp eq i64 %53, 4, !dbg !1076
  br i1 %61, label %62, label %64, !dbg !1078

; <label>:62:                                     ; preds = %60
  %63 = sub nsw i32 %2, %42, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %63, metadata !1033, metadata !DIExpression()), !dbg !1067
  br label %72, !dbg !1081

; <label>:64:                                     ; preds = %60
  %65 = add nuw nsw i64 %53, 1, !dbg !1082
  %66 = add nuw nsw i32 %55, 1, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %66, metadata !1033, metadata !DIExpression()), !dbg !1067
  %67 = add nsw i64 %65, %49, !dbg !1068
  %68 = icmp slt i64 %67, %50, !dbg !1071
  %69 = add nsw i64 %54, 1, !dbg !1068
  br i1 %68, label %52, label %72, !dbg !1072, !llvm.loop !1083

; <label>:70:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %53, metadata !1033, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %53, metadata !1033, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %53, metadata !1033, metadata !DIExpression()), !dbg !1067
  %71 = trunc i64 %53 to i32, !dbg !1075
  br label %72, !dbg !1085

; <label>:72:                                     ; preds = %64, %70, %44, %62
  %73 = phi i32 [ %63, %62 ], [ 1, %44 ], [ %71, %70 ], [ %66, %64 ], !dbg !1086
  call void @llvm.dbg.value(metadata i32 %73, metadata !1033, metadata !DIExpression()), !dbg !1067
  %74 = tail call fastcc zeroext i1 @posixtest(i32 %73), !dbg !1085
  %75 = load i8**, i8*** @argv, align 8, !dbg !1087, !tbaa !638
  %76 = load i32, i32* @pos, align 4, !dbg !1089, !tbaa !716
  %77 = sext i32 %76 to i64, !dbg !1087
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77, !dbg !1087
  %79 = load i8*, i8** %78, align 8, !dbg !1087, !tbaa !638
  %80 = icmp eq i8* %79, null, !dbg !1090
  br i1 %80, label %81, label %84, !dbg !1091

; <label>:81:                                     ; preds = %72
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i32 5) #11, !dbg !1092
  %83 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #11, !dbg !1093
  tail call void (i8*, ...) @test_syntax_error(i8* %82, i8* %83) #16, !dbg !1094
  unreachable, !dbg !1094

; <label>:84:                                     ; preds = %72
  %85 = load i8, i8* %79, align 1, !dbg !1095, !tbaa !807
  %86 = icmp eq i8 %85, 41, !dbg !1097
  br i1 %86, label %87, label %91, !dbg !1098

; <label>:87:                                     ; preds = %84
  %88 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1099
  %89 = load i8, i8* %88, align 1, !dbg !1099, !tbaa !807
  %90 = icmp eq i8 %89, 0, !dbg !1099
  br i1 %90, label %100, label %91, !dbg !1100

; <label>:91:                                     ; preds = %87, %84
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0), i32 5) #11, !dbg !1101
  %93 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #11, !dbg !1102
  %94 = load i8**, i8*** @argv, align 8, !dbg !1103, !tbaa !638
  %95 = load i32, i32* @pos, align 4, !dbg !1104, !tbaa !716
  %96 = sext i32 %95 to i64, !dbg !1103
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96, !dbg !1103
  %98 = load i8*, i8** %97, align 8, !dbg !1103, !tbaa !638
  %99 = tail call i8* @quote_n(i32 1, i8* %98) #11, !dbg !1105
  tail call void (i8*, ...) @test_syntax_error(i8* %92, i8* %93, i8* %99) #16, !dbg !1106
  unreachable, !dbg !1106

; <label>:100:                                    ; preds = %87
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !1107
  %101 = add nsw i32 %76, 1, !dbg !1109
  store i32 %101, i32* @pos, align 4, !dbg !1109, !tbaa !716
  br label %155, !dbg !1110

; <label>:102:                                    ; preds = %11, %37, %31
  %103 = phi i32 [ %32, %37 ], [ %32, %31 ], [ %15, %11 ]
  %104 = phi i1 [ %33, %37 ], [ %33, %31 ], [ %14, %11 ]
  %105 = phi i8* [ %34, %37 ], [ %34, %31 ], [ %13, %11 ]
  %106 = phi i8 [ %35, %37 ], [ %35, %31 ], [ %12, %11 ]
  %107 = sub nsw i32 %2, %103, !dbg !1111
  %108 = icmp sgt i32 %107, 3, !dbg !1113
  br i1 %108, label %109, label %120, !dbg !1114

; <label>:109:                                    ; preds = %102
  %110 = tail call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #14, !dbg !1115
  %111 = icmp eq i32 %110, 0, !dbg !1115
  br i1 %111, label %112, label %122, !dbg !1116

; <label>:112:                                    ; preds = %109
  %113 = add nsw i32 %103, 2, !dbg !1117
  %114 = sext i32 %113 to i64, !dbg !1118
  %115 = getelementptr inbounds i8*, i8** %5, i64 %114, !dbg !1118
  %116 = load i8*, i8** %115, align 8, !dbg !1118, !tbaa !638
  %117 = tail call fastcc zeroext i1 @binop(i8* %116), !dbg !1119
  br i1 %117, label %118, label %122, !dbg !1120

; <label>:118:                                    ; preds = %112
  %119 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1121
  br label %155, !dbg !1122

; <label>:120:                                    ; preds = %102
  %121 = icmp eq i32 %107, 3, !dbg !1123
  br i1 %121, label %122, label %130, !dbg !1125

; <label>:122:                                    ; preds = %109, %112, %120
  %123 = add nsw i32 %103, 1, !dbg !1126
  %124 = sext i32 %123 to i64, !dbg !1127
  %125 = getelementptr inbounds i8*, i8** %5, i64 %124, !dbg !1127
  %126 = load i8*, i8** %125, align 8, !dbg !1127, !tbaa !638
  %127 = tail call fastcc zeroext i1 @binop(i8* %126), !dbg !1128
  br i1 %127, label %128, label %130, !dbg !1129

; <label>:128:                                    ; preds = %122
  %129 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1130
  br label %155, !dbg !1131

; <label>:130:                                    ; preds = %122, %120
  %131 = icmp eq i8 %106, 45, !dbg !1132
  br i1 %131, label %132, label %152, !dbg !1134

; <label>:132:                                    ; preds = %130
  %133 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !1135
  %134 = load i8, i8* %133, align 1, !dbg !1135, !tbaa !807
  %135 = icmp eq i8 %134, 0, !dbg !1135
  br i1 %135, label %152, label %136, !dbg !1136

; <label>:136:                                    ; preds = %132
  %137 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !1137
  %138 = load i8, i8* %137, align 1, !dbg !1137, !tbaa !807
  %139 = icmp eq i8 %138, 0, !dbg !1138
  br i1 %139, label %140, label %152, !dbg !1139

; <label>:140:                                    ; preds = %136
  call void @llvm.dbg.value(metadata i8* undef, metadata !923, metadata !DIExpression()), !dbg !1140
  %141 = sext i8 %134 to i32, !dbg !1144
  switch i32 %141, label %144 [
    i32 97, label %142
    i32 98, label %142
    i32 99, label %142
    i32 100, label %142
    i32 101, label %142
    i32 102, label %142
    i32 103, label %142
    i32 104, label %142
    i32 107, label %142
    i32 110, label %142
    i32 111, label %142
    i32 112, label %142
    i32 114, label %142
    i32 115, label %142
    i32 116, label %142
    i32 117, label %142
    i32 119, label %142
    i32 120, label %142
    i32 122, label %142
    i32 71, label %142
    i32 76, label %142
    i32 79, label %142
    i32 83, label %142
    i32 78, label %142
  ], !dbg !1145

; <label>:142:                                    ; preds = %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140
  %143 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1146
  br label %155, !dbg !1147

; <label>:144:                                    ; preds = %140
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1148
  %146 = load i8**, i8*** @argv, align 8, !dbg !1149, !tbaa !638
  %147 = load i32, i32* @pos, align 4, !dbg !1150, !tbaa !716
  %148 = sext i32 %147 to i64, !dbg !1149
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148, !dbg !1149
  %150 = load i8*, i8** %149, align 8, !dbg !1149, !tbaa !638
  %151 = tail call i8* @quote(i8* %150) #11, !dbg !1151
  tail call void (i8*, ...) @test_syntax_error(i8* %145, i8* %151) #16, !dbg !1152
  unreachable, !dbg !1152

; <label>:152:                                    ; preds = %132, %136, %130
  %153 = icmp ne i8 %106, 0, !dbg !1153
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !1155
  %154 = add nsw i32 %103, 1, !dbg !1157
  store i32 %154, i32* @pos, align 4, !dbg !1157, !tbaa !716
  br label %155

; <label>:155:                                    ; preds = %118, %142, %152, %128, %100
  %156 = phi i1 [ %33, %100 ], [ %104, %118 ], [ %104, %128 ], [ %104, %142 ], [ %104, %152 ]
  %157 = phi i1 [ %74, %100 ], [ %119, %118 ], [ %129, %128 ], [ %143, %142 ], [ %153, %152 ]
  %158 = xor i1 %156, %157, !dbg !1158
  ret i1 %158, !dbg !1159
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* nocapture readonly) unnamed_addr #8 !dbg !1160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1162, metadata !DIExpression()), !dbg !1163
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #14, !dbg !1164
  %3 = icmp eq i32 %2, 0, !dbg !1164
  br i1 %3, label %37, label %4, !dbg !1165

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #14, !dbg !1166
  %6 = icmp eq i32 %5, 0, !dbg !1166
  br i1 %6, label %37, label %7, !dbg !1167

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #14, !dbg !1168
  %9 = icmp eq i32 %8, 0, !dbg !1168
  br i1 %9, label %37, label %10, !dbg !1169

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #14, !dbg !1170
  %12 = icmp eq i32 %11, 0, !dbg !1170
  br i1 %12, label %37, label %13, !dbg !1171

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #14, !dbg !1172
  %15 = icmp eq i32 %14, 0, !dbg !1172
  br i1 %15, label %37, label %16, !dbg !1173

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #14, !dbg !1174
  %18 = icmp eq i32 %17, 0, !dbg !1174
  br i1 %18, label %37, label %19, !dbg !1175

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #14, !dbg !1176
  %21 = icmp eq i32 %20, 0, !dbg !1176
  br i1 %21, label %37, label %22, !dbg !1177

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !1178
  %24 = icmp eq i32 %23, 0, !dbg !1178
  br i1 %24, label %37, label %25, !dbg !1179

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #14, !dbg !1180
  %27 = icmp eq i32 %26, 0, !dbg !1180
  br i1 %27, label %37, label %28, !dbg !1181

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)) #14, !dbg !1182
  %30 = icmp eq i32 %29, 0, !dbg !1182
  br i1 %30, label %37, label %31, !dbg !1183

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #14, !dbg !1184
  %33 = icmp eq i32 %32, 0, !dbg !1184
  br i1 %33, label %37, label %34, !dbg !1185

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0)) #14, !dbg !1186
  %36 = icmp eq i32 %35, 0, !dbg !1186
  br label %37, !dbg !1185

; <label>:37:                                     ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !1187
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext) unnamed_addr #7 !dbg !1188 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !1192, metadata !DIExpression()), !dbg !1267
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !1268
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #11, !dbg !1268
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !1268
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #11, !dbg !1268
  %12 = load i32, i32* @pos, align 4, !dbg !1269, !tbaa !716
  br i1 %0, label %13, label %15, !dbg !1270

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !1271
  %14 = add nsw i32 %12, 1, !dbg !1274
  store i32 %14, i32* @pos, align 4, !dbg !1274, !tbaa !716
  br label %15, !dbg !1275

; <label>:15:                                     ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !1276
  %17 = add nsw i32 %16, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %17, metadata !1193, metadata !DIExpression()), !dbg !1278
  %18 = load i32, i32* @argc, align 4, !dbg !1279, !tbaa !716
  %19 = add nsw i32 %18, -2, !dbg !1281
  %20 = icmp slt i32 %17, %19, !dbg !1282
  %21 = load i8**, i8*** @argv, align 8, !dbg !1283, !tbaa !638
  br i1 %20, label %22, label %30, !dbg !1284

; <label>:22:                                     ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !1285
  %24 = sext i32 %23 to i64, !dbg !1285
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !1285
  %26 = load i8*, i8** %25, align 8, !dbg !1285, !tbaa !638
  %27 = tail call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #14, !dbg !1285
  %28 = icmp eq i32 %27, 0, !dbg !1285
  br i1 %28, label %29, label %30, !dbg !1286

; <label>:29:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1234, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i1 false, metadata !817, metadata !DIExpression()), !dbg !1288
  store i32 %17, i32* @pos, align 4, !dbg !1291, !tbaa !716
  br label %30, !dbg !1292

; <label>:30:                                     ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  %33 = sext i32 %17 to i64, !dbg !1293
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !1293
  %35 = load i8*, i8** %34, align 8, !dbg !1293, !tbaa !638
  %36 = load i8, i8* %35, align 1, !dbg !1293, !tbaa !807
  switch i8 %36, label %265 [
    i8 45, label %37
    i8 61, label %247
  ], !dbg !1294

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1295
  %39 = load i8, i8* %38, align 1, !dbg !1295, !tbaa !807
  switch i8 %39, label %107 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !1296

; <label>:40:                                     ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1297
  %42 = load i8, i8* %41, align 1, !dbg !1297, !tbaa !807
  switch i8 %42, label %107 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !1298

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1299
  %45 = load i8, i8* %44, align 1, !dbg !1299, !tbaa !807
  %46 = icmp eq i8 %45, 113, !dbg !1300
  br i1 %46, label %51, label %107, !dbg !1301

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1302
  %49 = load i8, i8* %48, align 1, !dbg !1302, !tbaa !807
  %50 = icmp eq i8 %49, 101, !dbg !1303
  br i1 %50, label %51, label %107, !dbg !1304

; <label>:51:                                     ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1305
  %53 = load i8, i8* %52, align 1, !dbg !1305, !tbaa !807
  %54 = icmp eq i8 %53, 0, !dbg !1305
  br i1 %54, label %55, label %107, !dbg !1306

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #11, !dbg !1307
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1235, metadata !DIExpression()), !dbg !1308
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #11, !dbg !1309
  call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1243, metadata !DIExpression()), !dbg !1310
  %58 = sext i32 %16 to i64, !dbg !1311
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58, !dbg !1311
  %60 = load i8*, i8** %59, align 8, !dbg !1311, !tbaa !638
  br i1 %0, label %61, label %64, !dbg !1312

; <label>:61:                                     ; preds = %55
  %62 = tail call i64 @strlen(i8* %60) #14, !dbg !1313
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #11, !dbg !1314
  br label %66, !dbg !1312

; <label>:64:                                     ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !1315
  br label %66, !dbg !1312

; <label>:66:                                     ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !1312
  call void @llvm.dbg.value(metadata i8* %67, metadata !1244, metadata !DIExpression()), !dbg !1316
  %68 = load i8**, i8*** @argv, align 8, !dbg !1311, !tbaa !638
  br i1 %32, label %69, label %76, !dbg !1317

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !1318
  %71 = sext i32 %70 to i64, !dbg !1319
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !1319
  %73 = load i8*, i8** %72, align 8, !dbg !1319, !tbaa !638
  %74 = call i64 @strlen(i8* %73) #14, !dbg !1320
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #11, !dbg !1321
  br label %82, !dbg !1317

; <label>:76:                                     ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !1322
  %78 = sext i32 %77 to i64, !dbg !1323
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !1323
  %80 = load i8*, i8** %79, align 8, !dbg !1323, !tbaa !638
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !1324
  br label %82, !dbg !1317

; <label>:82:                                     ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8* %83, metadata !1245, metadata !DIExpression()), !dbg !1325
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #14, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %84, metadata !1246, metadata !DIExpression()), !dbg !1327
  %85 = load i8**, i8*** @argv, align 8, !dbg !1328, !tbaa !638
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !1328
  %87 = load i8*, i8** %86, align 8, !dbg !1328, !tbaa !638
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !1328
  %89 = load i8, i8* %88, align 1, !dbg !1328, !tbaa !807
  %90 = icmp eq i8 %89, 101, !dbg !1329
  %91 = load i32, i32* @pos, align 4, !dbg !1330, !tbaa !716
  %92 = add nsw i32 %91, 3, !dbg !1330
  store i32 %92, i32* @pos, align 4, !dbg !1330, !tbaa !716
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1331
  %94 = load i8, i8* %93, align 1, !dbg !1331, !tbaa !807
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !1331

; <label>:95:                                     ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !1332
  %97 = icmp slt i32 %84, %96, !dbg !1333
  br label %105, !dbg !1331

; <label>:98:                                     ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !1334
  %100 = icmp sgt i32 %84, %99, !dbg !1335
  br label %105, !dbg !1336

; <label>:101:                                    ; preds = %82
  %102 = icmp ne i32 %84, 0, !dbg !1337
  %103 = xor i1 %102, %90, !dbg !1338
  %104 = xor i1 %103, true, !dbg !1338
  br label %105, !dbg !1336

; <label>:105:                                    ; preds = %98, %101, %95
  %106 = phi i1 [ %97, %95 ], [ %100, %98 ], [ %104, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #11, !dbg !1339
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #11, !dbg !1339
  br label %280

; <label>:107:                                    ; preds = %37, %40, %43, %51, %47
  %108 = sext i8 %39 to i32, !dbg !1340
  switch i32 %108, label %241 [
    i32 110, label %109
    i32 101, label %156
    i32 111, label %195
  ], !dbg !1341

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1342
  %111 = load i8, i8* %110, align 1, !dbg !1342, !tbaa !807
  %112 = icmp eq i8 %111, 116, !dbg !1343
  br i1 %112, label %113, label %241, !dbg !1344

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1345
  %115 = load i8, i8* %114, align 1, !dbg !1345, !tbaa !807
  %116 = icmp eq i8 %115, 0, !dbg !1345
  br i1 %116, label %117, label %241, !dbg !1346

; <label>:117:                                    ; preds = %113
  %118 = add nsw i32 %31, 3, !dbg !1347
  store i32 %118, i32* @pos, align 4, !dbg !1347, !tbaa !716
  %119 = or i1 %32, %0, !dbg !1348
  br i1 %119, label %120, label %122, !dbg !1348

; <label>:120:                                    ; preds = %117
  %121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1350
  tail call void (i8*, ...) @test_syntax_error(i8* %121, i8* null) #16, !dbg !1351
  unreachable, !dbg !1351

; <label>:122:                                    ; preds = %117
  %123 = sext i32 %16 to i64, !dbg !1352
  %124 = getelementptr inbounds i8*, i8** %21, i64 %123, !dbg !1352
  %125 = load i8*, i8** %124, align 8, !dbg !1352, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1248, metadata !DIExpression(DW_OP_deref)), !dbg !1353
  call void @llvm.dbg.value(metadata i8* %125, metadata !1354, metadata !DIExpression()) #11, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1360, metadata !DIExpression()) #11, !dbg !1365
  %126 = bitcast %struct.stat* %4 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %126) #11, !dbg !1366
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %125, metadata !1368, metadata !DIExpression()) #11, !dbg !1376
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1375, metadata !DIExpression()) #11, !dbg !1376
  %127 = call i32 @__xstat(i32 1, i8* nonnull %125, %struct.stat* nonnull %4) #11, !dbg !1378
  %128 = icmp eq i32 %127, 0, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1380, metadata !DIExpression()) #11, !dbg !1388
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !1391
  %130 = load i64, i64* %129, align 8, !dbg !1391
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !1391
  %132 = load i64, i64* %131, align 8, !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %126) #11, !dbg !1392
  %133 = load i8**, i8*** @argv, align 8, !dbg !1393, !tbaa !638
  %134 = add nsw i32 %16, 2, !dbg !1394
  %135 = sext i32 %134 to i64, !dbg !1393
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135, !dbg !1393
  %137 = load i8*, i8** %136, align 8, !dbg !1393, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1252, metadata !DIExpression(DW_OP_deref)), !dbg !1395
  call void @llvm.dbg.value(metadata i8* %137, metadata !1354, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1360, metadata !DIExpression()) #11, !dbg !1398
  %138 = bitcast %struct.stat* %3 to i8*, !dbg !1399
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %138) #11, !dbg !1399
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1400
  call void @llvm.dbg.value(metadata i8* %137, metadata !1368, metadata !DIExpression()) #11, !dbg !1401
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1375, metadata !DIExpression()) #11, !dbg !1401
  %139 = call i32 @__xstat(i32 1, i8* nonnull %137, %struct.stat* nonnull %3) #11, !dbg !1403
  %140 = icmp eq i32 %139, 0, !dbg !1404
  br i1 %140, label %142, label %141, !dbg !1405

; <label>:141:                                    ; preds = %122
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #11, !dbg !1406
  br label %280, !dbg !1407

; <label>:142:                                    ; preds = %122
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1380, metadata !DIExpression()) #11, !dbg !1408
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !1410
  %144 = load i64, i64* %143, align 8, !dbg !1410
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !1410
  %146 = load i64, i64* %145, align 8, !dbg !1410
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #11, !dbg !1406
  %147 = xor i1 %128, true, !dbg !1407
  %148 = icmp slt i64 %130, %144, !dbg !1411
  %149 = or i1 %148, %147, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %130, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %132, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %144, metadata !1418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %146, metadata !1418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1421
  br i1 %149, label %280, label %150, !dbg !1407

; <label>:150:                                    ; preds = %142
  %151 = icmp sgt i64 %130, %144, !dbg !1422
  br i1 %151, label %280, label %152, !dbg !1424

; <label>:152:                                    ; preds = %150
  %153 = sub nsw i64 %132, %146, !dbg !1425
  %154 = trunc i64 %153 to i32, !dbg !1426
  %155 = icmp sgt i32 %154, 0, !dbg !1427
  br label %280, !dbg !1427

; <label>:156:                                    ; preds = %107
  %157 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1428
  %158 = load i8, i8* %157, align 1, !dbg !1428, !tbaa !807
  %159 = icmp eq i8 %158, 102, !dbg !1430
  br i1 %159, label %160, label %241, !dbg !1431

; <label>:160:                                    ; preds = %156
  %161 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1432
  %162 = load i8, i8* %161, align 1, !dbg !1432, !tbaa !807
  %163 = icmp eq i8 %162, 0, !dbg !1432
  br i1 %163, label %164, label %241, !dbg !1433

; <label>:164:                                    ; preds = %160
  %165 = add nsw i32 %31, 3, !dbg !1434
  store i32 %165, i32* @pos, align 4, !dbg !1434, !tbaa !716
  %166 = or i1 %32, %0, !dbg !1436
  br i1 %166, label %167, label %169, !dbg !1436

; <label>:167:                                    ; preds = %164
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i64 0, i64 0), i32 5) #11, !dbg !1438
  tail call void (i8*, ...) @test_syntax_error(i8* %168, i8* null) #16, !dbg !1439
  unreachable, !dbg !1439

; <label>:169:                                    ; preds = %164
  %170 = sext i32 %16 to i64, !dbg !1440
  %171 = getelementptr inbounds i8*, i8** %21, i64 %170, !dbg !1440
  %172 = load i8*, i8** %171, align 8, !dbg !1440, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1194, metadata !DIExpression(DW_OP_deref)), !dbg !1441
  call void @llvm.dbg.value(metadata i8* %172, metadata !1368, metadata !DIExpression()) #11, !dbg !1442
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1375, metadata !DIExpression()) #11, !dbg !1442
  %173 = call i32 @__xstat(i32 1, i8* nonnull %172, %struct.stat* nonnull %6) #11, !dbg !1444
  %174 = icmp eq i32 %173, 0, !dbg !1445
  br i1 %174, label %175, label %280, !dbg !1446

; <label>:175:                                    ; preds = %169
  %176 = load i8**, i8*** @argv, align 8, !dbg !1447, !tbaa !638
  %177 = add nsw i32 %16, 2, !dbg !1448
  %178 = sext i32 %177 to i64, !dbg !1447
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178, !dbg !1447
  %180 = load i8*, i8** %179, align 8, !dbg !1447, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1233, metadata !DIExpression(DW_OP_deref)), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %180, metadata !1368, metadata !DIExpression()) #11, !dbg !1450
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1375, metadata !DIExpression()) #11, !dbg !1450
  %181 = call i32 @__xstat(i32 1, i8* nonnull %180, %struct.stat* nonnull %7) #11, !dbg !1452
  %182 = icmp eq i32 %181, 0, !dbg !1453
  br i1 %182, label %183, label %280, !dbg !1454

; <label>:183:                                    ; preds = %175
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !1455
  %185 = load i64, i64* %184, align 8, !dbg !1455, !tbaa !1456
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !1460
  %187 = load i64, i64* %186, align 8, !dbg !1460, !tbaa !1456
  %188 = icmp eq i64 %185, %187, !dbg !1461
  br i1 %188, label %189, label %280, !dbg !1462

; <label>:189:                                    ; preds = %183
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !1463
  %191 = load i64, i64* %190, align 8, !dbg !1463, !tbaa !1464
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !1465
  %193 = load i64, i64* %192, align 8, !dbg !1465, !tbaa !1464
  %194 = icmp eq i64 %191, %193, !dbg !1466
  br label %280

; <label>:195:                                    ; preds = %107
  %196 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1467
  %197 = load i8, i8* %196, align 1, !dbg !1467, !tbaa !807
  %198 = icmp eq i8 %197, 116, !dbg !1468
  br i1 %198, label %199, label %241, !dbg !1469

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1470
  %201 = load i8, i8* %200, align 1, !dbg !1470, !tbaa !807
  %202 = icmp eq i8 %201, 0, !dbg !1471
  br i1 %202, label %203, label %241, !dbg !1472

; <label>:203:                                    ; preds = %199
  %204 = add nsw i32 %31, 3, !dbg !1473
  store i32 %204, i32* @pos, align 4, !dbg !1473, !tbaa !716
  %205 = or i1 %32, %0, !dbg !1474
  br i1 %205, label %206, label %208, !dbg !1474

; <label>:206:                                    ; preds = %203
  %207 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 5) #11, !dbg !1476
  tail call void (i8*, ...) @test_syntax_error(i8* %207, i8* null) #16, !dbg !1477
  unreachable, !dbg !1477

; <label>:208:                                    ; preds = %203
  %209 = sext i32 %16 to i64, !dbg !1478
  %210 = getelementptr inbounds i8*, i8** %21, i64 %209, !dbg !1478
  %211 = load i8*, i8** %210, align 8, !dbg !1478, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1255, metadata !DIExpression(DW_OP_deref)), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %211, metadata !1354, metadata !DIExpression()) #11, !dbg !1480
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1360, metadata !DIExpression()) #11, !dbg !1482
  %212 = bitcast %struct.stat* %2 to i8*, !dbg !1483
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %212) #11, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1484
  call void @llvm.dbg.value(metadata i8* %211, metadata !1368, metadata !DIExpression()) #11, !dbg !1485
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1375, metadata !DIExpression()) #11, !dbg !1485
  %213 = call i32 @__xstat(i32 1, i8* nonnull %211, %struct.stat* nonnull %2) #11, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1380, metadata !DIExpression()) #11, !dbg !1488
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1490
  %215 = load i64, i64* %214, align 8, !dbg !1490
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !1490
  %217 = load i64, i64* %216, align 8, !dbg !1490
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %212) #11, !dbg !1491
  %218 = load i8**, i8*** @argv, align 8, !dbg !1492, !tbaa !638
  %219 = add nsw i32 %16, 2, !dbg !1493
  %220 = sext i32 %219 to i64, !dbg !1492
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220, !dbg !1492
  %222 = load i8*, i8** %221, align 8, !dbg !1492, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1258, metadata !DIExpression(DW_OP_deref)), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %222, metadata !1354, metadata !DIExpression()) #11, !dbg !1495
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1360, metadata !DIExpression()) #11, !dbg !1497
  %223 = bitcast %struct.stat* %5 to i8*, !dbg !1498
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %223) #11, !dbg !1498
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %222, metadata !1368, metadata !DIExpression()) #11, !dbg !1500
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1375, metadata !DIExpression()) #11, !dbg !1500
  %224 = call i32 @__xstat(i32 1, i8* nonnull %222, %struct.stat* nonnull %5) #11, !dbg !1502
  %225 = icmp eq i32 %224, 0, !dbg !1503
  br i1 %225, label %227, label %226, !dbg !1504

; <label>:226:                                    ; preds = %208
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #11, !dbg !1505
  br label %280, !dbg !1506

; <label>:227:                                    ; preds = %208
  %228 = icmp ne i32 %213, 0, !dbg !1507
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1361, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1499
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1380, metadata !DIExpression()) #11, !dbg !1508
  %229 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !1510
  %230 = load i64, i64* %229, align 8, !dbg !1510
  %231 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !1510
  %232 = load i64, i64* %231, align 8, !dbg !1510
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #11, !dbg !1505
  %233 = icmp slt i64 %215, %230, !dbg !1511
  %234 = or i1 %228, %233, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %215, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1513
  call void @llvm.dbg.value(metadata i64 %217, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1513
  call void @llvm.dbg.value(metadata i64 %230, metadata !1418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1514
  call void @llvm.dbg.value(metadata i64 %232, metadata !1418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1514
  br i1 %234, label %280, label %235, !dbg !1506

; <label>:235:                                    ; preds = %227
  %236 = icmp sgt i64 %215, %230, !dbg !1515
  br i1 %236, label %280, label %237, !dbg !1516

; <label>:237:                                    ; preds = %235
  %238 = sub nsw i64 %217, %232, !dbg !1517
  %239 = trunc i64 %238 to i32, !dbg !1518
  %240 = icmp slt i32 %239, 0, !dbg !1519
  br label %280, !dbg !1519

; <label>:241:                                    ; preds = %113, %160, %195, %199, %156, %109, %107
  %242 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i32 5) #11, !dbg !1520
  %243 = load i8**, i8*** @argv, align 8, !dbg !1521, !tbaa !638
  %244 = getelementptr inbounds i8*, i8** %243, i64 %33, !dbg !1521
  %245 = load i8*, i8** %244, align 8, !dbg !1521, !tbaa !638
  %246 = tail call i8* @quote(i8* %245) #11, !dbg !1522
  tail call void (i8*, ...) @test_syntax_error(i8* %242, i8* %246) #16, !dbg !1523
  unreachable, !dbg !1523

; <label>:247:                                    ; preds = %30
  %248 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1524
  %249 = load i8, i8* %248, align 1, !dbg !1524, !tbaa !807
  switch i8 %249, label %265 [
    i8 0, label %254
    i8 61, label %250
  ], !dbg !1525

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1526
  %252 = load i8, i8* %251, align 1, !dbg !1526, !tbaa !807
  %253 = icmp eq i8 %252, 0, !dbg !1526
  br i1 %253, label %254, label %265, !dbg !1527

; <label>:254:                                    ; preds = %247, %250
  %255 = sext i32 %31 to i64, !dbg !1528
  %256 = getelementptr inbounds i8*, i8** %21, i64 %255, !dbg !1528
  %257 = load i8*, i8** %256, align 8, !dbg !1528, !tbaa !638
  %258 = add nsw i32 %31, 2, !dbg !1528
  %259 = sext i32 %258 to i64, !dbg !1528
  %260 = getelementptr inbounds i8*, i8** %21, i64 %259, !dbg !1528
  %261 = load i8*, i8** %260, align 8, !dbg !1528, !tbaa !638
  %262 = tail call i32 @strcmp(i8* %257, i8* %261) #14, !dbg !1528
  %263 = icmp eq i32 %262, 0, !dbg !1528
  %264 = add nsw i32 %31, 3, !dbg !1529
  store i32 %264, i32* @pos, align 4, !dbg !1529, !tbaa !716
  br label %280

; <label>:265:                                    ; preds = %247, %30, %250
  %266 = tail call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #14, !dbg !1530
  %267 = icmp eq i32 %266, 0, !dbg !1530
  br i1 %267, label %268, label %279, !dbg !1531

; <label>:268:                                    ; preds = %265
  %269 = sext i32 %31 to i64, !dbg !1532
  %270 = getelementptr inbounds i8*, i8** %21, i64 %269, !dbg !1532
  %271 = load i8*, i8** %270, align 8, !dbg !1532, !tbaa !638
  %272 = add nsw i32 %31, 2, !dbg !1532
  %273 = sext i32 %272 to i64, !dbg !1532
  %274 = getelementptr inbounds i8*, i8** %21, i64 %273, !dbg !1532
  %275 = load i8*, i8** %274, align 8, !dbg !1532, !tbaa !638
  %276 = tail call i32 @strcmp(i8* %271, i8* %275) #14, !dbg !1532
  %277 = icmp ne i32 %276, 0, !dbg !1532
  %278 = add nsw i32 %31, 3, !dbg !1533
  store i32 %278, i32* @pos, align 4, !dbg !1533, !tbaa !716
  br label %280

; <label>:279:                                    ; preds = %265
  tail call void @abort() #15, !dbg !1534
  unreachable, !dbg !1534

; <label>:280:                                    ; preds = %227, %142, %237, %235, %152, %150, %226, %141, %169, %175, %183, %189, %268, %254, %105
  %281 = phi i1 [ %106, %105 ], [ %277, %268 ], [ %263, %254 ], [ false, %183 ], [ false, %175 ], [ false, %169 ], [ %194, %189 ], [ false, %142 ], [ %128, %141 ], [ true, %227 ], [ false, %226 ], [ %155, %152 ], [ true, %150 ], [ %240, %237 ], [ false, %235 ], !dbg !1535
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #11, !dbg !1536
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #11, !dbg !1536
  ret i1 %281, !dbg !1536
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #7 !dbg !1537 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1553
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #11, !dbg !1553
  %3 = load i8**, i8*** @argv, align 8, !dbg !1554, !tbaa !638
  %4 = load i32, i32* @pos, align 4, !dbg !1555, !tbaa !716
  %5 = sext i32 %4 to i64, !dbg !1554
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1554
  %7 = load i8*, i8** %6, align 8, !dbg !1554, !tbaa !638
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1554
  %9 = load i8, i8* %8, align 1, !dbg !1554, !tbaa !807
  %10 = sext i8 %9 to i32, !dbg !1554
  switch i32 %10, label %336 [
    i32 97, label %11
    i32 101, label %11
    i32 114, label %23
    i32 119, label %35
    i32 120, label %47
    i32 79, label %59
    i32 71, label %82
    i32 102, label %105
    i32 100, label %122
    i32 115, label %139
    i32 83, label %155
    i32 99, label %172
    i32 98, label %189
    i32 112, label %206
    i32 76, label %223
    i32 104, label %223
    i32 117, label %240
    i32 103, label %257
    i32 107, label %274
    i32 116, label %291
    i32 110, label %312
    i32 122, label %324
  ], !dbg !1556

; <label>:11:                                     ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1557
  %12 = add nsw i32 %4, 1, !dbg !1561
  store i32 %12, i32* @pos, align 4, !dbg !1561, !tbaa !716
  %13 = load i32, i32* @argc, align 4, !dbg !1562
  %14 = icmp slt i32 %12, %13, !dbg !1563
  br i1 %14, label %16, label %15, !dbg !1564

; <label>:15:                                     ; preds = %11
  tail call fastcc void @beyond() #15, !dbg !1565
  unreachable, !dbg !1565

; <label>:16:                                     ; preds = %11
  %17 = add nsw i32 %4, 2, !dbg !1566
  store i32 %17, i32* @pos, align 4, !dbg !1566, !tbaa !716
  %18 = sext i32 %12 to i64, !dbg !1567
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18, !dbg !1567
  %20 = load i8*, i8** %19, align 8, !dbg !1567, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %20, metadata !1368, metadata !DIExpression()) #11, !dbg !1569
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1569
  %21 = call i32 @__xstat(i32 1, i8* nonnull %20, %struct.stat* nonnull %1) #11, !dbg !1571
  %22 = icmp eq i32 %21, 0, !dbg !1572
  br label %336, !dbg !1573

; <label>:23:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1574
  %24 = add nsw i32 %4, 1, !dbg !1577
  store i32 %24, i32* @pos, align 4, !dbg !1577, !tbaa !716
  %25 = load i32, i32* @argc, align 4, !dbg !1578
  %26 = icmp slt i32 %24, %25, !dbg !1579
  br i1 %26, label %28, label %27, !dbg !1580

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !1581
  unreachable, !dbg !1581

; <label>:28:                                     ; preds = %23
  %29 = add nsw i32 %4, 2, !dbg !1582
  store i32 %29, i32* @pos, align 4, !dbg !1582, !tbaa !716
  %30 = sext i32 %24 to i64, !dbg !1583
  %31 = getelementptr inbounds i8*, i8** %3, i64 %30, !dbg !1583
  %32 = load i8*, i8** %31, align 8, !dbg !1583, !tbaa !638
  %33 = tail call i32 @euidaccess(i8* %32, i32 4) #11, !dbg !1584
  %34 = icmp eq i32 %33, 0, !dbg !1585
  br label %336, !dbg !1586

; <label>:35:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1587
  %36 = add nsw i32 %4, 1, !dbg !1590
  store i32 %36, i32* @pos, align 4, !dbg !1590, !tbaa !716
  %37 = load i32, i32* @argc, align 4, !dbg !1591
  %38 = icmp slt i32 %36, %37, !dbg !1592
  br i1 %38, label %40, label %39, !dbg !1593

; <label>:39:                                     ; preds = %35
  tail call fastcc void @beyond() #15, !dbg !1594
  unreachable, !dbg !1594

; <label>:40:                                     ; preds = %35
  %41 = add nsw i32 %4, 2, !dbg !1595
  store i32 %41, i32* @pos, align 4, !dbg !1595, !tbaa !716
  %42 = sext i32 %36 to i64, !dbg !1596
  %43 = getelementptr inbounds i8*, i8** %3, i64 %42, !dbg !1596
  %44 = load i8*, i8** %43, align 8, !dbg !1596, !tbaa !638
  %45 = tail call i32 @euidaccess(i8* %44, i32 2) #11, !dbg !1597
  %46 = icmp eq i32 %45, 0, !dbg !1598
  br label %336, !dbg !1599

; <label>:47:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1600
  %48 = add nsw i32 %4, 1, !dbg !1603
  store i32 %48, i32* @pos, align 4, !dbg !1603, !tbaa !716
  %49 = load i32, i32* @argc, align 4, !dbg !1604
  %50 = icmp slt i32 %48, %49, !dbg !1605
  br i1 %50, label %52, label %51, !dbg !1606

; <label>:51:                                     ; preds = %47
  tail call fastcc void @beyond() #15, !dbg !1607
  unreachable, !dbg !1607

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %4, 2, !dbg !1608
  store i32 %53, i32* @pos, align 4, !dbg !1608, !tbaa !716
  %54 = sext i32 %48 to i64, !dbg !1609
  %55 = getelementptr inbounds i8*, i8** %3, i64 %54, !dbg !1609
  %56 = load i8*, i8** %55, align 8, !dbg !1609, !tbaa !638
  %57 = tail call i32 @euidaccess(i8* %56, i32 1) #11, !dbg !1610
  %58 = icmp eq i32 %57, 0, !dbg !1611
  br label %336, !dbg !1612

; <label>:59:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1613
  %60 = add nsw i32 %4, 1, !dbg !1616
  store i32 %60, i32* @pos, align 4, !dbg !1616, !tbaa !716
  %61 = load i32, i32* @argc, align 4, !dbg !1617
  %62 = icmp slt i32 %60, %61, !dbg !1618
  br i1 %62, label %64, label %63, !dbg !1619

; <label>:63:                                     ; preds = %59
  tail call fastcc void @beyond() #15, !dbg !1620
  unreachable, !dbg !1620

; <label>:64:                                     ; preds = %59
  %65 = add nsw i32 %4, 2, !dbg !1621
  store i32 %65, i32* @pos, align 4, !dbg !1621, !tbaa !716
  %66 = sext i32 %60 to i64, !dbg !1622
  %67 = getelementptr inbounds i8*, i8** %3, i64 %66, !dbg !1622
  %68 = load i8*, i8** %67, align 8, !dbg !1622, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %68, metadata !1368, metadata !DIExpression()) #11, !dbg !1624
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1624
  %69 = call i32 @__xstat(i32 1, i8* nonnull %68, %struct.stat* nonnull %1) #11, !dbg !1626
  %70 = icmp eq i32 %69, 0, !dbg !1627
  br i1 %70, label %71, label %336, !dbg !1628

; <label>:71:                                     ; preds = %64
  %72 = tail call i32* @__errno_location() #17, !dbg !1629
  store i32 0, i32* %72, align 4, !dbg !1630, !tbaa !716
  %73 = call i32 @geteuid() #11, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %73, metadata !1540, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 -1, metadata !1545, metadata !DIExpression()), !dbg !1633
  %74 = icmp eq i32 %73, -1, !dbg !1634
  br i1 %74, label %75, label %78, !dbg !1635

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %72, align 4, !dbg !1636, !tbaa !716
  %77 = icmp eq i32 %76, 0, !dbg !1636
  br i1 %77, label %78, label %336, !dbg !1637

; <label>:78:                                     ; preds = %75, %71
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1638
  %80 = load i32, i32* %79, align 4, !dbg !1638, !tbaa !1639
  %81 = icmp eq i32 %73, %80, !dbg !1640
  br label %336

; <label>:82:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1641
  %83 = add nsw i32 %4, 1, !dbg !1644
  store i32 %83, i32* @pos, align 4, !dbg !1644, !tbaa !716
  %84 = load i32, i32* @argc, align 4, !dbg !1645
  %85 = icmp slt i32 %83, %84, !dbg !1646
  br i1 %85, label %87, label %86, !dbg !1647

; <label>:86:                                     ; preds = %82
  tail call fastcc void @beyond() #15, !dbg !1648
  unreachable, !dbg !1648

; <label>:87:                                     ; preds = %82
  %88 = add nsw i32 %4, 2, !dbg !1649
  store i32 %88, i32* @pos, align 4, !dbg !1649, !tbaa !716
  %89 = sext i32 %83 to i64, !dbg !1650
  %90 = getelementptr inbounds i8*, i8** %3, i64 %89, !dbg !1650
  %91 = load i8*, i8** %90, align 8, !dbg !1650, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %91, metadata !1368, metadata !DIExpression()) #11, !dbg !1652
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1652
  %92 = call i32 @__xstat(i32 1, i8* nonnull %91, %struct.stat* nonnull %1) #11, !dbg !1654
  %93 = icmp eq i32 %92, 0, !dbg !1655
  br i1 %93, label %94, label %336, !dbg !1656

; <label>:94:                                     ; preds = %87
  %95 = tail call i32* @__errno_location() #17, !dbg !1657
  store i32 0, i32* %95, align 4, !dbg !1658, !tbaa !716
  %96 = call i32 @getegid() #11, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %96, metadata !1546, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 -1, metadata !1549, metadata !DIExpression()), !dbg !1661
  %97 = icmp eq i32 %96, -1, !dbg !1662
  br i1 %97, label %98, label %101, !dbg !1663

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %95, align 4, !dbg !1664, !tbaa !716
  %100 = icmp eq i32 %99, 0, !dbg !1664
  br i1 %100, label %101, label %336, !dbg !1665

; <label>:101:                                    ; preds = %98, %94
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1666
  %103 = load i32, i32* %102, align 8, !dbg !1666, !tbaa !1667
  %104 = icmp eq i32 %96, %103, !dbg !1668
  br label %336

; <label>:105:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1669
  %106 = add nsw i32 %4, 1, !dbg !1672
  store i32 %106, i32* @pos, align 4, !dbg !1672, !tbaa !716
  %107 = load i32, i32* @argc, align 4, !dbg !1673
  %108 = icmp slt i32 %106, %107, !dbg !1674
  br i1 %108, label %110, label %109, !dbg !1675

; <label>:109:                                    ; preds = %105
  tail call fastcc void @beyond() #15, !dbg !1676
  unreachable, !dbg !1676

; <label>:110:                                    ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !1677
  store i32 %111, i32* @pos, align 4, !dbg !1677, !tbaa !716
  %112 = sext i32 %106 to i64, !dbg !1678
  %113 = getelementptr inbounds i8*, i8** %3, i64 %112, !dbg !1678
  %114 = load i8*, i8** %113, align 8, !dbg !1678, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %114, metadata !1368, metadata !DIExpression()) #11, !dbg !1679
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1679
  %115 = call i32 @__xstat(i32 1, i8* nonnull %114, %struct.stat* nonnull %1) #11, !dbg !1681
  %116 = icmp eq i32 %115, 0, !dbg !1682
  br i1 %116, label %117, label %336, !dbg !1683

; <label>:117:                                    ; preds = %110
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1684
  %119 = load i32, i32* %118, align 8, !dbg !1684, !tbaa !1685
  %120 = and i32 %119, 61440, !dbg !1684
  %121 = icmp eq i32 %120, 32768, !dbg !1684
  br label %336

; <label>:122:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1686
  %123 = add nsw i32 %4, 1, !dbg !1689
  store i32 %123, i32* @pos, align 4, !dbg !1689, !tbaa !716
  %124 = load i32, i32* @argc, align 4, !dbg !1690
  %125 = icmp slt i32 %123, %124, !dbg !1691
  br i1 %125, label %127, label %126, !dbg !1692

; <label>:126:                                    ; preds = %122
  tail call fastcc void @beyond() #15, !dbg !1693
  unreachable, !dbg !1693

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1694
  store i32 %128, i32* @pos, align 4, !dbg !1694, !tbaa !716
  %129 = sext i32 %123 to i64, !dbg !1695
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1695
  %131 = load i8*, i8** %130, align 8, !dbg !1695, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %131, metadata !1368, metadata !DIExpression()) #11, !dbg !1696
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1696
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #11, !dbg !1698
  %133 = icmp eq i32 %132, 0, !dbg !1699
  br i1 %133, label %134, label %336, !dbg !1700

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1701
  %136 = load i32, i32* %135, align 8, !dbg !1701, !tbaa !1685
  %137 = and i32 %136, 61440, !dbg !1701
  %138 = icmp eq i32 %137, 16384, !dbg !1701
  br label %336

; <label>:139:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1702
  %140 = add nsw i32 %4, 1, !dbg !1705
  store i32 %140, i32* @pos, align 4, !dbg !1705, !tbaa !716
  %141 = load i32, i32* @argc, align 4, !dbg !1706
  %142 = icmp slt i32 %140, %141, !dbg !1707
  br i1 %142, label %144, label %143, !dbg !1708

; <label>:143:                                    ; preds = %139
  tail call fastcc void @beyond() #15, !dbg !1709
  unreachable, !dbg !1709

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !1710
  store i32 %145, i32* @pos, align 4, !dbg !1710, !tbaa !716
  %146 = sext i32 %140 to i64, !dbg !1711
  %147 = getelementptr inbounds i8*, i8** %3, i64 %146, !dbg !1711
  %148 = load i8*, i8** %147, align 8, !dbg !1711, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %148, metadata !1368, metadata !DIExpression()) #11, !dbg !1712
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1712
  %149 = call i32 @__xstat(i32 1, i8* nonnull %148, %struct.stat* nonnull %1) #11, !dbg !1714
  %150 = icmp eq i32 %149, 0, !dbg !1715
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1716
  %152 = load i64, i64* %151, align 8, !dbg !1716
  %153 = icmp sgt i64 %152, 0, !dbg !1717
  %154 = and i1 %150, %153, !dbg !1718
  br label %336, !dbg !1719

; <label>:155:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1720
  %156 = add nsw i32 %4, 1, !dbg !1723
  store i32 %156, i32* @pos, align 4, !dbg !1723, !tbaa !716
  %157 = load i32, i32* @argc, align 4, !dbg !1724
  %158 = icmp slt i32 %156, %157, !dbg !1725
  br i1 %158, label %160, label %159, !dbg !1726

; <label>:159:                                    ; preds = %155
  tail call fastcc void @beyond() #15, !dbg !1727
  unreachable, !dbg !1727

; <label>:160:                                    ; preds = %155
  %161 = add nsw i32 %4, 2, !dbg !1728
  store i32 %161, i32* @pos, align 4, !dbg !1728, !tbaa !716
  %162 = sext i32 %156 to i64, !dbg !1729
  %163 = getelementptr inbounds i8*, i8** %3, i64 %162, !dbg !1729
  %164 = load i8*, i8** %163, align 8, !dbg !1729, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %164, metadata !1368, metadata !DIExpression()) #11, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1730
  %165 = call i32 @__xstat(i32 1, i8* nonnull %164, %struct.stat* nonnull %1) #11, !dbg !1732
  %166 = icmp eq i32 %165, 0, !dbg !1733
  br i1 %166, label %167, label %336, !dbg !1734

; <label>:167:                                    ; preds = %160
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1735
  %169 = load i32, i32* %168, align 8, !dbg !1735, !tbaa !1685
  %170 = and i32 %169, 61440, !dbg !1735
  %171 = icmp eq i32 %170, 49152, !dbg !1735
  br label %336

; <label>:172:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1736
  %173 = add nsw i32 %4, 1, !dbg !1739
  store i32 %173, i32* @pos, align 4, !dbg !1739, !tbaa !716
  %174 = load i32, i32* @argc, align 4, !dbg !1740
  %175 = icmp slt i32 %173, %174, !dbg !1741
  br i1 %175, label %177, label %176, !dbg !1742

; <label>:176:                                    ; preds = %172
  tail call fastcc void @beyond() #15, !dbg !1743
  unreachable, !dbg !1743

; <label>:177:                                    ; preds = %172
  %178 = add nsw i32 %4, 2, !dbg !1744
  store i32 %178, i32* @pos, align 4, !dbg !1744, !tbaa !716
  %179 = sext i32 %173 to i64, !dbg !1745
  %180 = getelementptr inbounds i8*, i8** %3, i64 %179, !dbg !1745
  %181 = load i8*, i8** %180, align 8, !dbg !1745, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %181, metadata !1368, metadata !DIExpression()) #11, !dbg !1746
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1746
  %182 = call i32 @__xstat(i32 1, i8* nonnull %181, %struct.stat* nonnull %1) #11, !dbg !1748
  %183 = icmp eq i32 %182, 0, !dbg !1749
  br i1 %183, label %184, label %336, !dbg !1750

; <label>:184:                                    ; preds = %177
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1751
  %186 = load i32, i32* %185, align 8, !dbg !1751, !tbaa !1685
  %187 = and i32 %186, 61440, !dbg !1751
  %188 = icmp eq i32 %187, 8192, !dbg !1751
  br label %336

; <label>:189:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1752
  %190 = add nsw i32 %4, 1, !dbg !1755
  store i32 %190, i32* @pos, align 4, !dbg !1755, !tbaa !716
  %191 = load i32, i32* @argc, align 4, !dbg !1756
  %192 = icmp slt i32 %190, %191, !dbg !1757
  br i1 %192, label %194, label %193, !dbg !1758

; <label>:193:                                    ; preds = %189
  tail call fastcc void @beyond() #15, !dbg !1759
  unreachable, !dbg !1759

; <label>:194:                                    ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1760
  store i32 %195, i32* @pos, align 4, !dbg !1760, !tbaa !716
  %196 = sext i32 %190 to i64, !dbg !1761
  %197 = getelementptr inbounds i8*, i8** %3, i64 %196, !dbg !1761
  %198 = load i8*, i8** %197, align 8, !dbg !1761, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %198, metadata !1368, metadata !DIExpression()) #11, !dbg !1762
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1762
  %199 = call i32 @__xstat(i32 1, i8* nonnull %198, %struct.stat* nonnull %1) #11, !dbg !1764
  %200 = icmp eq i32 %199, 0, !dbg !1765
  br i1 %200, label %201, label %336, !dbg !1766

; <label>:201:                                    ; preds = %194
  %202 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1767
  %203 = load i32, i32* %202, align 8, !dbg !1767, !tbaa !1685
  %204 = and i32 %203, 61440, !dbg !1767
  %205 = icmp eq i32 %204, 24576, !dbg !1767
  br label %336

; <label>:206:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1768
  %207 = add nsw i32 %4, 1, !dbg !1771
  store i32 %207, i32* @pos, align 4, !dbg !1771, !tbaa !716
  %208 = load i32, i32* @argc, align 4, !dbg !1772
  %209 = icmp slt i32 %207, %208, !dbg !1773
  br i1 %209, label %211, label %210, !dbg !1774

; <label>:210:                                    ; preds = %206
  tail call fastcc void @beyond() #15, !dbg !1775
  unreachable, !dbg !1775

; <label>:211:                                    ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1776
  store i32 %212, i32* @pos, align 4, !dbg !1776, !tbaa !716
  %213 = sext i32 %207 to i64, !dbg !1777
  %214 = getelementptr inbounds i8*, i8** %3, i64 %213, !dbg !1777
  %215 = load i8*, i8** %214, align 8, !dbg !1777, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %215, metadata !1368, metadata !DIExpression()) #11, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1778
  %216 = call i32 @__xstat(i32 1, i8* nonnull %215, %struct.stat* nonnull %1) #11, !dbg !1780
  %217 = icmp eq i32 %216, 0, !dbg !1781
  br i1 %217, label %218, label %336, !dbg !1782

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1783
  %220 = load i32, i32* %219, align 8, !dbg !1783, !tbaa !1685
  %221 = and i32 %220, 61440, !dbg !1783
  %222 = icmp eq i32 %221, 4096, !dbg !1783
  br label %336

; <label>:223:                                    ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1784
  %224 = add nsw i32 %4, 1, !dbg !1787
  store i32 %224, i32* @pos, align 4, !dbg !1787, !tbaa !716
  %225 = load i32, i32* @argc, align 4, !dbg !1788
  %226 = icmp slt i32 %224, %225, !dbg !1789
  br i1 %226, label %228, label %227, !dbg !1790

; <label>:227:                                    ; preds = %223
  tail call fastcc void @beyond() #15, !dbg !1791
  unreachable, !dbg !1791

; <label>:228:                                    ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !1792
  store i32 %229, i32* @pos, align 4, !dbg !1792, !tbaa !716
  %230 = sext i32 %224 to i64, !dbg !1793
  %231 = getelementptr inbounds i8*, i8** %3, i64 %230, !dbg !1793
  %232 = load i8*, i8** %231, align 8, !dbg !1793, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %232, metadata !1794, metadata !DIExpression()) #11, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1797, metadata !DIExpression()) #11, !dbg !1798
  %233 = call i32 @__lxstat(i32 1, i8* nonnull %232, %struct.stat* nonnull %1) #11, !dbg !1800
  %234 = icmp eq i32 %233, 0, !dbg !1801
  br i1 %234, label %235, label %336, !dbg !1802

; <label>:235:                                    ; preds = %228
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1803
  %237 = load i32, i32* %236, align 8, !dbg !1803, !tbaa !1685
  %238 = and i32 %237, 61440, !dbg !1803
  %239 = icmp eq i32 %238, 40960, !dbg !1803
  br label %336

; <label>:240:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1804
  %241 = add nsw i32 %4, 1, !dbg !1807
  store i32 %241, i32* @pos, align 4, !dbg !1807, !tbaa !716
  %242 = load i32, i32* @argc, align 4, !dbg !1808
  %243 = icmp slt i32 %241, %242, !dbg !1809
  br i1 %243, label %245, label %244, !dbg !1810

; <label>:244:                                    ; preds = %240
  tail call fastcc void @beyond() #15, !dbg !1811
  unreachable, !dbg !1811

; <label>:245:                                    ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !1812
  store i32 %246, i32* @pos, align 4, !dbg !1812, !tbaa !716
  %247 = sext i32 %241 to i64, !dbg !1813
  %248 = getelementptr inbounds i8*, i8** %3, i64 %247, !dbg !1813
  %249 = load i8*, i8** %248, align 8, !dbg !1813, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %249, metadata !1368, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1814
  %250 = call i32 @__xstat(i32 1, i8* nonnull %249, %struct.stat* nonnull %1) #11, !dbg !1816
  %251 = icmp eq i32 %250, 0, !dbg !1817
  br i1 %251, label %252, label %336, !dbg !1818

; <label>:252:                                    ; preds = %245
  %253 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1819
  %254 = load i32, i32* %253, align 8, !dbg !1819, !tbaa !1685
  %255 = and i32 %254, 2048, !dbg !1820
  %256 = icmp ne i32 %255, 0, !dbg !1818
  br label %336

; <label>:257:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1821
  %258 = add nsw i32 %4, 1, !dbg !1824
  store i32 %258, i32* @pos, align 4, !dbg !1824, !tbaa !716
  %259 = load i32, i32* @argc, align 4, !dbg !1825
  %260 = icmp slt i32 %258, %259, !dbg !1826
  br i1 %260, label %262, label %261, !dbg !1827

; <label>:261:                                    ; preds = %257
  tail call fastcc void @beyond() #15, !dbg !1828
  unreachable, !dbg !1828

; <label>:262:                                    ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !1829
  store i32 %263, i32* @pos, align 4, !dbg !1829, !tbaa !716
  %264 = sext i32 %258 to i64, !dbg !1830
  %265 = getelementptr inbounds i8*, i8** %3, i64 %264, !dbg !1830
  %266 = load i8*, i8** %265, align 8, !dbg !1830, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %266, metadata !1368, metadata !DIExpression()) #11, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1831
  %267 = call i32 @__xstat(i32 1, i8* nonnull %266, %struct.stat* nonnull %1) #11, !dbg !1833
  %268 = icmp eq i32 %267, 0, !dbg !1834
  br i1 %268, label %269, label %336, !dbg !1835

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1836
  %271 = load i32, i32* %270, align 8, !dbg !1836, !tbaa !1685
  %272 = and i32 %271, 1024, !dbg !1837
  %273 = icmp ne i32 %272, 0, !dbg !1835
  br label %336

; <label>:274:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1838
  %275 = add nsw i32 %4, 1, !dbg !1841
  store i32 %275, i32* @pos, align 4, !dbg !1841, !tbaa !716
  %276 = load i32, i32* @argc, align 4, !dbg !1842
  %277 = icmp slt i32 %275, %276, !dbg !1843
  br i1 %277, label %279, label %278, !dbg !1844

; <label>:278:                                    ; preds = %274
  tail call fastcc void @beyond() #15, !dbg !1845
  unreachable, !dbg !1845

; <label>:279:                                    ; preds = %274
  %280 = add nsw i32 %4, 2, !dbg !1846
  store i32 %280, i32* @pos, align 4, !dbg !1846, !tbaa !716
  %281 = sext i32 %275 to i64, !dbg !1847
  %282 = getelementptr inbounds i8*, i8** %3, i64 %281, !dbg !1847
  %283 = load i8*, i8** %282, align 8, !dbg !1847, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1539, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %283, metadata !1368, metadata !DIExpression()) #11, !dbg !1848
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1375, metadata !DIExpression()) #11, !dbg !1848
  %284 = call i32 @__xstat(i32 1, i8* nonnull %283, %struct.stat* nonnull %1) #11, !dbg !1850
  %285 = icmp eq i32 %284, 0, !dbg !1851
  br i1 %285, label %286, label %336, !dbg !1852

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1853
  %288 = load i32, i32* %287, align 8, !dbg !1853, !tbaa !1685
  %289 = and i32 %288, 512, !dbg !1854
  %290 = icmp ne i32 %289, 0, !dbg !1852
  br label %336

; <label>:291:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1855
  %292 = add nsw i32 %4, 1, !dbg !1858
  store i32 %292, i32* @pos, align 4, !dbg !1858, !tbaa !716
  %293 = load i32, i32* @argc, align 4, !dbg !1859
  %294 = icmp slt i32 %292, %293, !dbg !1860
  br i1 %294, label %296, label %295, !dbg !1861

; <label>:295:                                    ; preds = %291
  tail call fastcc void @beyond() #15, !dbg !1862
  unreachable, !dbg !1862

; <label>:296:                                    ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !1863
  store i32 %297, i32* @pos, align 4, !dbg !1863, !tbaa !716
  %298 = sext i32 %292 to i64, !dbg !1864
  %299 = getelementptr inbounds i8*, i8** %3, i64 %298, !dbg !1864
  %300 = load i8*, i8** %299, align 8, !dbg !1864, !tbaa !638
  %301 = tail call fastcc i8* @find_int(i8* %300), !dbg !1865
  call void @llvm.dbg.value(metadata i8* %301, metadata !1552, metadata !DIExpression()), !dbg !1866
  %302 = tail call i32* @__errno_location() #17, !dbg !1867
  store i32 0, i32* %302, align 4, !dbg !1868, !tbaa !716
  %303 = tail call i64 @strtol(i8* nocapture %301, i8** null, i32 10) #11, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %303, metadata !1550, metadata !DIExpression()), !dbg !1870
  %304 = load i32, i32* %302, align 4, !dbg !1871, !tbaa !716
  %305 = icmp ne i32 %304, 34, !dbg !1872
  %306 = icmp ult i64 %303, 2147483648, !dbg !1873
  %307 = and i1 %306, %305, !dbg !1873
  br i1 %307, label %308, label %336, !dbg !1873

; <label>:308:                                    ; preds = %296
  %309 = trunc i64 %303 to i32, !dbg !1874
  %310 = tail call i32 @isatty(i32 %309) #11, !dbg !1875
  %311 = icmp ne i32 %310, 0, !dbg !1876
  br label %336

; <label>:312:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1877
  %313 = add nsw i32 %4, 1, !dbg !1880
  store i32 %313, i32* @pos, align 4, !dbg !1880, !tbaa !716
  %314 = load i32, i32* @argc, align 4, !dbg !1881
  %315 = icmp slt i32 %313, %314, !dbg !1882
  br i1 %315, label %317, label %316, !dbg !1883

; <label>:316:                                    ; preds = %312
  tail call fastcc void @beyond() #15, !dbg !1884
  unreachable, !dbg !1884

; <label>:317:                                    ; preds = %312
  %318 = add nsw i32 %4, 2, !dbg !1885
  store i32 %318, i32* @pos, align 4, !dbg !1885, !tbaa !716
  %319 = sext i32 %313 to i64, !dbg !1886
  %320 = getelementptr inbounds i8*, i8** %3, i64 %319, !dbg !1886
  %321 = load i8*, i8** %320, align 8, !dbg !1886, !tbaa !638
  %322 = load i8, i8* %321, align 1, !dbg !1886, !tbaa !807
  %323 = icmp ne i8 %322, 0, !dbg !1887
  br label %336, !dbg !1888

; <label>:324:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !817, metadata !DIExpression()) #11, !dbg !1889
  %325 = add nsw i32 %4, 1, !dbg !1892
  store i32 %325, i32* @pos, align 4, !dbg !1892, !tbaa !716
  %326 = load i32, i32* @argc, align 4, !dbg !1893
  %327 = icmp slt i32 %325, %326, !dbg !1894
  br i1 %327, label %329, label %328, !dbg !1895

; <label>:328:                                    ; preds = %324
  tail call fastcc void @beyond() #15, !dbg !1896
  unreachable, !dbg !1896

; <label>:329:                                    ; preds = %324
  %330 = add nsw i32 %4, 2, !dbg !1897
  store i32 %330, i32* @pos, align 4, !dbg !1897, !tbaa !716
  %331 = sext i32 %325 to i64, !dbg !1898
  %332 = getelementptr inbounds i8*, i8** %3, i64 %331, !dbg !1898
  %333 = load i8*, i8** %332, align 8, !dbg !1898, !tbaa !638
  %334 = load i8, i8* %333, align 1, !dbg !1898, !tbaa !807
  %335 = icmp eq i8 %334, 0, !dbg !1899
  br label %336, !dbg !1900

; <label>:336:                                    ; preds = %296, %308, %279, %286, %262, %269, %245, %252, %228, %235, %211, %218, %194, %201, %177, %184, %160, %167, %127, %134, %110, %117, %101, %98, %87, %78, %75, %64, %0, %329, %317, %144, %52, %40, %28, %16
  %337 = phi i1 [ %335, %329 ], [ %323, %317 ], [ %154, %144 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ], [ %22, %16 ], [ false, %0 ], [ false, %64 ], [ false, %75 ], [ %81, %78 ], [ false, %87 ], [ false, %98 ], [ %104, %101 ], [ false, %110 ], [ %121, %117 ], [ false, %127 ], [ %138, %134 ], [ false, %160 ], [ %171, %167 ], [ false, %177 ], [ %188, %184 ], [ false, %194 ], [ %205, %201 ], [ false, %211 ], [ %222, %218 ], [ false, %228 ], [ %239, %235 ], [ false, %245 ], [ %256, %252 ], [ false, %262 ], [ %273, %269 ], [ false, %279 ], [ %290, %286 ], [ false, %296 ], [ %311, %308 ], !dbg !1901
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #11, !dbg !1902
  ret i1 %337, !dbg !1902
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8*) unnamed_addr #7 !dbg !1903 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1907, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8* %0, metadata !1908, metadata !DIExpression()), !dbg !1911
  %2 = tail call i16** @__ctype_b_loc() #17, !dbg !1912
  %3 = load i16*, i16** %2, align 8, !tbaa !638
  br label %4, !dbg !1915

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8* %5, metadata !1908, metadata !DIExpression()), !dbg !1911
  %6 = load i8, i8* %5, align 1, !dbg !1912, !tbaa !807
  %7 = zext i8 %6 to i64, !dbg !1912
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1912
  %9 = load i16, i16* %8, align 2, !dbg !1912, !tbaa !1917
  %10 = and i16 %9, 1, !dbg !1912
  %11 = icmp eq i16 %10, 0, !dbg !1919
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %12, metadata !1908, metadata !DIExpression()), !dbg !1911
  br i1 %11, label %13, label %4, !dbg !1919, !llvm.loop !1921

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %5, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %5, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %5, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %5, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %5, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %5, metadata !1908, metadata !DIExpression()), !dbg !1911
  %14 = icmp eq i8 %6, 43, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %12, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %12, metadata !1909, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8* %5, metadata !1909, metadata !DIExpression()), !dbg !1925
  %15 = icmp eq i8 %6, 45, !dbg !1926
  %16 = zext i1 %15 to i64, !dbg !1928
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1928
  call void @llvm.dbg.value(metadata i8* %17, metadata !1908, metadata !DIExpression()), !dbg !1911
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1929
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %19, metadata !1909, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8* %18, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %18, metadata !1908, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1911
  %20 = load i8, i8* %18, align 1, !dbg !1930, !tbaa !807
  %21 = sext i8 %20 to i32, !dbg !1930
  %22 = add nsw i32 %21, -48, !dbg !1930
  %23 = icmp ult i32 %22, 10, !dbg !1930
  br i1 %23, label %24, label %50, !dbg !1932

; <label>:24:                                     ; preds = %13, %24
  %25 = phi i8* [ %26, %24 ], [ %18, %13 ]
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1933
  call void @llvm.dbg.value(metadata i8* %26, metadata !1908, metadata !DIExpression()), !dbg !1911
  %27 = load i8, i8* %26, align 1, !dbg !1935, !tbaa !807
  %28 = sext i8 %27 to i32, !dbg !1935
  %29 = add nsw i32 %28, -48, !dbg !1935
  %30 = icmp ult i32 %29, 10, !dbg !1935
  br i1 %30, label %24, label %31, !dbg !1936, !llvm.loop !1937

; <label>:31:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %26, metadata !1908, metadata !DIExpression()), !dbg !1911
  %32 = zext i8 %27 to i64, !dbg !1939
  %33 = getelementptr inbounds i16, i16* %3, i64 %32, !dbg !1939
  %34 = load i16, i16* %33, align 2, !dbg !1939, !tbaa !1917
  %35 = and i16 %34, 1, !dbg !1939
  %36 = icmp eq i16 %35, 0, !dbg !1940
  br i1 %36, label %46, label %37, !dbg !1940

; <label>:37:                                     ; preds = %31, %37
  %38 = phi i8* [ %39, %37 ], [ %26, %31 ]
  call void @llvm.dbg.value(metadata i8* %38, metadata !1908, metadata !DIExpression()), !dbg !1911
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1941
  %40 = load i8, i8* %39, align 1, !dbg !1939, !tbaa !807
  call void @llvm.dbg.value(metadata i8* %39, metadata !1908, metadata !DIExpression()), !dbg !1911
  %41 = zext i8 %40 to i64, !dbg !1939
  %42 = getelementptr inbounds i16, i16* %3, i64 %41, !dbg !1939
  %43 = load i16, i16* %42, align 2, !dbg !1939, !tbaa !1917
  %44 = and i16 %43, 1, !dbg !1939
  %45 = icmp eq i16 %44, 0, !dbg !1940
  br i1 %45, label %46, label %37, !dbg !1940, !llvm.loop !1942

; <label>:46:                                     ; preds = %37, %31
  %47 = phi i8 [ %27, %31 ], [ %40, %37 ], !dbg !1939
  %48 = icmp eq i8 %47, 0, !dbg !1943
  br i1 %48, label %49, label %50, !dbg !1945

; <label>:49:                                     ; preds = %46
  ret i8* %19, !dbg !1946

; <label>:50:                                     ; preds = %46, %13
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i32 5) #11, !dbg !1947
  %52 = tail call i8* @quote(i8* %0) #11, !dbg !1948
  tail call void (i8*, ...) @test_syntax_error(i8* %51, i8* %52) #16, !dbg !1949
  unreachable, !dbg !1949
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1952, metadata !DIExpression()), !dbg !1953
  store i8* %0, i8** @file_name, align 8, !dbg !1954, !tbaa !638
  ret void, !dbg !1955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1956 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1958, metadata !DIExpression()), !dbg !1959
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1960, !tbaa !1961
  ret void, !dbg !1963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1964 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1969, !tbaa !638
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1970
  %3 = icmp eq i32 %2, 0, !dbg !1971
  br i1 %3, label %22, label %4, !dbg !1972

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1973, !tbaa !1961, !range !1974
  %6 = icmp eq i8 %5, 0, !dbg !1973
  br i1 %6, label %11, label %7, !dbg !1975

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1976
  %9 = load i32, i32* %8, align 4, !dbg !1976, !tbaa !716
  %10 = icmp eq i32 %9, 32, !dbg !1977
  br i1 %10, label %22, label %11, !dbg !1978

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i32 5) #11, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %12, metadata !1966, metadata !DIExpression()), !dbg !1980
  %13 = load i8*, i8** @file_name, align 8, !dbg !1981, !tbaa !638
  %14 = icmp eq i8* %13, null, !dbg !1981
  %15 = tail call i32* @__errno_location() #17, !dbg !1983
  %16 = load i32, i32* %15, align 4, !dbg !1983, !tbaa !716
  br i1 %14, label %19, label %17, !dbg !1984

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1985
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1986
  br label %20, !dbg !1986

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.78, i64 0, i64 0), i8* %12) #11, !dbg !1987
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1988, !tbaa !716
  tail call void @_exit(i32 %21) #15, !dbg !1989
  unreachable, !dbg !1989

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1990, !tbaa !638
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1992
  %25 = icmp eq i32 %24, 0, !dbg !1993
  br i1 %25, label %28, label %26, !dbg !1994

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1995, !tbaa !716
  tail call void @_exit(i32 %27) #15, !dbg !1996
  unreachable, !dbg !1996

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1997
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1998 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2003, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* %1, metadata !2004, metadata !DIExpression()), !dbg !2007
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %3, metadata !2005, metadata !DIExpression()), !dbg !2009
  store i8 0, i8* %3, align 1, !dbg !2010, !tbaa !807
  br label %4, !dbg !2011

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2012
  call void @llvm.dbg.value(metadata i8* %6, metadata !2005, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %5, metadata !2003, metadata !DIExpression()), !dbg !2006
  %7 = urem i64 %5, 10, !dbg !2015
  %8 = trunc i64 %7 to i8, !dbg !2016
  %9 = or i8 %8, 48, !dbg !2016
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2017
  call void @llvm.dbg.value(metadata i8* %10, metadata !2005, metadata !DIExpression()), !dbg !2009
  store i8 %9, i8* %10, align 1, !dbg !2018, !tbaa !807
  %11 = udiv i64 %5, 10, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %11, metadata !2003, metadata !DIExpression()), !dbg !2006
  %12 = icmp ugt i64 %5, 9, !dbg !2020
  br i1 %12, label %4, label %13, !dbg !2021, !llvm.loop !2022

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2005, metadata !DIExpression()), !dbg !2009
  ret i8* %10, !dbg !2025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2026 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2028, metadata !DIExpression()), !dbg !2031
  %2 = icmp eq i8* %0, null, !dbg !2032
  br i1 %2, label %3, label %6, !dbg !2034

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2035, !tbaa !638
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.87, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2037
  tail call void @abort() #15, !dbg !2038
  unreachable, !dbg !2038

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %7, metadata !2029, metadata !DIExpression()), !dbg !2040
  %8 = icmp eq i8* %7, null, !dbg !2041
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2042
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %10, metadata !2030, metadata !DIExpression()), !dbg !2044
  %11 = ptrtoint i8* %10 to i64, !dbg !2045
  %12 = ptrtoint i8* %0 to i64, !dbg !2045
  %13 = sub i64 %11, %12, !dbg !2045
  %14 = icmp sgt i64 %13, 6, !dbg !2047
  br i1 %14, label %15, label %24, !dbg !2048

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2049
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.88, i64 0, i64 0), i64 7) #14, !dbg !2050
  %18 = icmp eq i32 %17, 0, !dbg !2051
  br i1 %18, label %19, label %24, !dbg !2052

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2028, metadata !DIExpression()), !dbg !2031
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i64 3) #14, !dbg !2053
  %21 = icmp eq i32 %20, 0, !dbg !2056
  br i1 %21, label %22, label %24, !dbg !2057

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2058
  call void @llvm.dbg.value(metadata i8* %23, metadata !2028, metadata !DIExpression()), !dbg !2031
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2060, !tbaa !638
  br label %24, !dbg !2061

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2028, metadata !DIExpression()), !dbg !2031
  store i8* %25, i8** @program_name, align 8, !dbg !2062, !tbaa !638
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2063, !tbaa !638
  ret void, !dbg !2064
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2065 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2070, metadata !DIExpression()), !dbg !2073
  %2 = tail call i32* @__errno_location() #17, !dbg !2074
  %3 = load i32, i32* %2, align 4, !dbg !2074, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %3, metadata !2071, metadata !DIExpression()), !dbg !2075
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2076
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2076
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2076
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2077
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2072, metadata !DIExpression()), !dbg !2078
  store i32 %3, i32* %2, align 4, !dbg !2079, !tbaa !716
  ret %struct.quoting_options* %8, !dbg !2080
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #8 !dbg !2081 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2087, metadata !DIExpression()), !dbg !2088
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2089
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2089
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2090
  %5 = load i32, i32* %4, align 8, !dbg !2090, !tbaa !2091
  ret i32 %5, !dbg !2093
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2094 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2098, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 %1, metadata !2099, metadata !DIExpression()), !dbg !2101
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2102
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2102
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2103
  store i32 %1, i32* %5, align 8, !dbg !2104, !tbaa !2091
  ret void, !dbg !2105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2106 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2110, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 %1, metadata !2111, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 %2, metadata !2112, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 %1, metadata !2113, metadata !DIExpression()), !dbg !2122
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2123
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2123
  %6 = lshr i8 %1, 5, !dbg !2124
  %7 = zext i8 %6 to i64, !dbg !2124
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2125
  call void @llvm.dbg.value(metadata i32* %8, metadata !2115, metadata !DIExpression()), !dbg !2126
  %9 = and i8 %1, 31, !dbg !2127
  %10 = zext i8 %9 to i32, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %10, metadata !2117, metadata !DIExpression()), !dbg !2128
  %11 = load i32, i32* %8, align 4, !dbg !2129, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !2130
  %13 = and i32 %12, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %13, metadata !2118, metadata !DIExpression()), !dbg !2132
  %14 = and i32 %2, 1, !dbg !2133
  %15 = xor i32 %13, %14, !dbg !2134
  %16 = shl i32 %15, %10, !dbg !2135
  %17 = xor i32 %16, %11, !dbg !2136
  store i32 %17, i32* %8, align 4, !dbg !2136, !tbaa !716
  ret i32 %13, !dbg !2137
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2138 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2142, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %1, metadata !2143, metadata !DIExpression()), !dbg !2146
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2147
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2142, metadata !DIExpression()), !dbg !2145
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2150
  %6 = load i32, i32* %5, align 4, !dbg !2150, !tbaa !2151
  call void @llvm.dbg.value(metadata i32 %6, metadata !2144, metadata !DIExpression()), !dbg !2152
  store i32 %1, i32* %5, align 4, !dbg !2153, !tbaa !2151
  ret i32 %6, !dbg !2154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2155 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()), !dbg !2164
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2165
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2159, metadata !DIExpression()), !dbg !2162
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2168
  store i32 10, i32* %6, align 8, !dbg !2169, !tbaa !2091
  %7 = icmp ne i8* %1, null, !dbg !2170
  %8 = icmp ne i8* %2, null, !dbg !2172
  %9 = and i1 %7, %8, !dbg !2173
  br i1 %9, label %11, label %10, !dbg !2173

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2174
  unreachable, !dbg !2174

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2175
  store i8* %1, i8** %12, align 8, !dbg !2176, !tbaa !2177
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2178
  store i8* %2, i8** %13, align 8, !dbg !2179, !tbaa !2180
  ret void, !dbg !2181
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2186, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %1, metadata !2187, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %2, metadata !2188, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %3, metadata !2189, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2190, metadata !DIExpression()), !dbg !2198
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2199
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2191, metadata !DIExpression()), !dbg !2200
  %8 = tail call i32* @__errno_location() #17, !dbg !2201
  %9 = load i32, i32* %8, align 4, !dbg !2201, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %9, metadata !2192, metadata !DIExpression()), !dbg !2202
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2203
  %11 = load i32, i32* %10, align 8, !dbg !2203, !tbaa !2091
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2204
  %13 = load i32, i32* %12, align 4, !dbg !2204, !tbaa !2151
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2205
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2206
  %16 = load i8*, i8** %15, align 8, !dbg !2206, !tbaa !2177
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2207
  %18 = load i8*, i8** %17, align 8, !dbg !2207, !tbaa !2180
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %19, metadata !2193, metadata !DIExpression()), !dbg !2209
  store i32 %9, i32* %8, align 4, !dbg !2210, !tbaa !716
  ret i64 %19, !dbg !2211
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2212 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2218, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %1, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %2, metadata !2220, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %3, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 %4, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %5, metadata !2223, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32* %6, metadata !2224, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %7, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %8, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 0, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* null, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 0, metadata !2231, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2232, metadata !DIExpression()), !dbg !2295
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2296
  %14 = icmp eq i64 %13, 1, !dbg !2297
  %15 = lshr i32 %5, 1, !dbg !2298
  %16 = trunc i32 %15 to i8, !dbg !2298
  %17 = and i8 %16, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i8 %17, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 1, metadata !2237, metadata !DIExpression()), !dbg !2301
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2302

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2292
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2293
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2294
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2295
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2303
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2299
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2300
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2301
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %39, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %38, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %37, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %36, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %35, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %34, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %33, metadata !2231, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %32, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %31, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8* %30, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %29, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %28, metadata !2222, metadata !DIExpression()), !dbg !2286
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
  ], !dbg !2305

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 1, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %36, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 5, metadata !2222, metadata !DIExpression()), !dbg !2286
  br label %93, !dbg !2306

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 5, metadata !2222, metadata !DIExpression()), !dbg !2286
  %43 = and i8 %36, 1, !dbg !2307
  %44 = icmp eq i8 %43, 0, !dbg !2307
  br i1 %44, label %45, label %93, !dbg !2306

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2309
  br i1 %46, label %93, label %47, !dbg !2312

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2309, !tbaa !807
  br label %93, !dbg !2309

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.100, i64 0, i64 0), i32 %28), !dbg !2313
  call void @llvm.dbg.value(metadata i8* %49, metadata !2225, metadata !DIExpression()), !dbg !2289
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), i32 %28), !dbg !2317
  call void @llvm.dbg.value(metadata i8* %50, metadata !2226, metadata !DIExpression()), !dbg !2290
  br label %51, !dbg !2318

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %52, metadata !2225, metadata !DIExpression()), !dbg !2289
  %54 = and i8 %36, 1, !dbg !2319
  %55 = icmp eq i8 %54, 0, !dbg !2319
  br i1 %55, label %56, label %71, !dbg !2321

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 0, metadata !2228, metadata !DIExpression()), !dbg !2291
  %57 = load i8, i8* %52, align 1, !dbg !2322, !tbaa !807
  %58 = icmp eq i8 %57, 0, !dbg !2325
  br i1 %58, label %71, label %59, !dbg !2325

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %62, metadata !2228, metadata !DIExpression()), !dbg !2291
  %63 = icmp ult i64 %62, %40, !dbg !2326
  br i1 %63, label %64, label %66, !dbg !2329

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2326
  store i8 %60, i8* %65, align 1, !dbg !2326, !tbaa !807
  br label %66, !dbg !2326

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2329
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2330
  call void @llvm.dbg.value(metadata i8* %68, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %67, metadata !2228, metadata !DIExpression()), !dbg !2291
  %69 = load i8, i8* %68, align 1, !dbg !2322, !tbaa !807
  %70 = icmp eq i8 %69, 0, !dbg !2325
  br i1 %70, label %71, label %59, !dbg !2325, !llvm.loop !2331

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2291
  call void @llvm.dbg.value(metadata i64 %72, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 1, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %53, metadata !2230, metadata !DIExpression()), !dbg !2293
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %73, metadata !2231, metadata !DIExpression()), !dbg !2294
  br label %93, !dbg !2334

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2232, metadata !DIExpression()), !dbg !2295
  br label %75, !dbg !2335

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2303
  call void @llvm.dbg.value(metadata i8 %76, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2234, metadata !DIExpression()), !dbg !2298
  br label %77, !dbg !2336

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2295
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2303
  call void @llvm.dbg.value(metadata i8 %79, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %78, metadata !2232, metadata !DIExpression()), !dbg !2295
  %80 = and i8 %79, 1, !dbg !2337
  %81 = icmp eq i8 %80, 0, !dbg !2337
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2339
  br label %83, !dbg !2339

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2340
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2298
  call void @llvm.dbg.value(metadata i8 %85, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %84, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2222, metadata !DIExpression()), !dbg !2286
  %86 = and i8 %85, 1, !dbg !2341
  %87 = icmp eq i8 %86, 0, !dbg !2341
  br i1 %87, label %88, label %93, !dbg !2343

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2344
  br i1 %89, label %93, label %90, !dbg !2347

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2344, !tbaa !807
  br label %93, !dbg !2344

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2234, metadata !DIExpression()), !dbg !2298
  br label %93, !dbg !2348

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2349
  unreachable, !dbg !2349

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2291
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %41 ], !dbg !2303
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2303
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2303
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8 %101, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %99, metadata !2231, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %97, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %94, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 0, metadata !2227, metadata !DIExpression()), !dbg !2351
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
  br label %121, !dbg !2352

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2353
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2291
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2292
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2299
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2300
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2301
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %125, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %122, metadata !2227, metadata !DIExpression()), !dbg !2351
  %130 = icmp eq i64 %125, -1, !dbg !2354
  br i1 %130, label %131, label %135, !dbg !2355

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2356
  %133 = load i8, i8* %132, align 1, !dbg !2356, !tbaa !807
  %134 = icmp eq i8 %133, 0, !dbg !2357
  br i1 %134, label %617, label %137, !dbg !2358

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2359
  br i1 %136, label %617, label %137, !dbg !2358

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2243, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 0, metadata !2244, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2245, metadata !DIExpression()), !dbg !2362
  br i1 %107, label %138, label %153, !dbg !2363

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2365
  %140 = and i1 %108, %130, !dbg !2366
  br i1 %140, label %141, label %143, !dbg !2366

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %142, metadata !2221, metadata !DIExpression()), !dbg !2285
  br label %143, !dbg !2368

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2221, metadata !DIExpression()), !dbg !2285
  %145 = icmp ugt i64 %139, %144, !dbg !2369
  br i1 %145, label %153, label %146, !dbg !2370

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2371
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2372
  %149 = icmp ne i32 %148, 0, !dbg !2373
  %150 = or i1 %149, %110, !dbg !2374
  %151 = xor i1 %149, true, !dbg !2374
  %152 = zext i1 %151 to i8, !dbg !2374
  br i1 %150, label %153, label %661, !dbg !2374

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2375
  call void @llvm.dbg.value(metadata i8 %155, metadata !2243, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i64 %154, metadata !2221, metadata !DIExpression()), !dbg !2285
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2376
  %157 = load i8, i8* %156, align 1, !dbg !2376, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %157, metadata !2238, metadata !DIExpression()), !dbg !2377
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
  ], !dbg !2378

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2379

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2380

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2244, metadata !DIExpression()), !dbg !2361
  %161 = and i8 %126, 1, !dbg !2384
  %162 = icmp eq i8 %161, 0, !dbg !2384
  %163 = and i1 %114, %162, !dbg !2384
  br i1 %163, label %164, label %180, !dbg !2384

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2386
  br i1 %165, label %166, label %168, !dbg !2390

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2386
  store i8 39, i8* %167, align 1, !dbg !2386, !tbaa !807
  br label %168, !dbg !2386

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %169, metadata !2228, metadata !DIExpression()), !dbg !2291
  %170 = icmp ult i64 %169, %129, !dbg !2391
  br i1 %170, label %171, label %173, !dbg !2394

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2391
  store i8 36, i8* %172, align 1, !dbg !2391, !tbaa !807
  br label %173, !dbg !2391

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %174, metadata !2228, metadata !DIExpression()), !dbg !2291
  %175 = icmp ult i64 %174, %129, !dbg !2395
  br i1 %175, label %176, label %178, !dbg !2398

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2395
  store i8 39, i8* %177, align 1, !dbg !2395, !tbaa !807
  br label %178, !dbg !2395

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %179, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 1, metadata !2235, metadata !DIExpression()), !dbg !2299
  br label %180, !dbg !2399

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2350
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8 %182, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %181, metadata !2228, metadata !DIExpression()), !dbg !2291
  %183 = icmp ult i64 %181, %129, !dbg !2400
  br i1 %183, label %184, label %186, !dbg !2403

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2400
  store i8 92, i8* %185, align 1, !dbg !2400, !tbaa !807
  br label %186, !dbg !2400

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %187, metadata !2228, metadata !DIExpression()), !dbg !2291
  br i1 %104, label %188, label %478, !dbg !2404

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2406
  %190 = icmp ult i64 %189, %154, !dbg !2407
  br i1 %190, label %191, label %467, !dbg !2408

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2409
  %193 = load i8, i8* %192, align 1, !dbg !2409, !tbaa !807
  %194 = add i8 %193, -48, !dbg !2410
  %195 = icmp ult i8 %194, 10, !dbg !2410
  br i1 %195, label %196, label %467, !dbg !2410

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2411
  br i1 %197, label %198, label %200, !dbg !2415

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2411
  store i8 48, i8* %199, align 1, !dbg !2411, !tbaa !807
  br label %200, !dbg !2411

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %201, metadata !2228, metadata !DIExpression()), !dbg !2291
  %202 = icmp ult i64 %201, %129, !dbg !2416
  br i1 %202, label %203, label %205, !dbg !2419

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2416
  store i8 48, i8* %204, align 1, !dbg !2416, !tbaa !807
  br label %205, !dbg !2416

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %206, metadata !2228, metadata !DIExpression()), !dbg !2291
  br label %467, !dbg !2420

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2421

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2422

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2423

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2425

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2427
  %213 = icmp ult i64 %212, %154, !dbg !2428
  br i1 %213, label %214, label %467, !dbg !2429

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2430
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2431
  %217 = load i8, i8* %216, align 1, !dbg !2431, !tbaa !807
  %218 = icmp eq i8 %217, 63, !dbg !2432
  br i1 %218, label %219, label %467, !dbg !2433

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2434
  %221 = load i8, i8* %220, align 1, !dbg !2434, !tbaa !807
  %222 = sext i8 %221 to i32, !dbg !2434
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
  ], !dbg !2435

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2436

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2238, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %212, metadata !2227, metadata !DIExpression()), !dbg !2351
  %225 = icmp ult i64 %123, %129, !dbg !2438
  br i1 %225, label %226, label %228, !dbg !2441

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2438
  store i8 63, i8* %227, align 1, !dbg !2438, !tbaa !807
  br label %228, !dbg !2438

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %229, metadata !2228, metadata !DIExpression()), !dbg !2291
  %230 = icmp ult i64 %229, %129, !dbg !2442
  br i1 %230, label %231, label %233, !dbg !2445

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2442
  store i8 34, i8* %232, align 1, !dbg !2442, !tbaa !807
  br label %233, !dbg !2442

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %234, metadata !2228, metadata !DIExpression()), !dbg !2291
  %235 = icmp ult i64 %234, %129, !dbg !2446
  br i1 %235, label %236, label %238, !dbg !2449

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2446
  store i8 34, i8* %237, align 1, !dbg !2446, !tbaa !807
  br label %238, !dbg !2446

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %239, metadata !2228, metadata !DIExpression()), !dbg !2291
  %240 = icmp ult i64 %239, %129, !dbg !2450
  br i1 %240, label %241, label %243, !dbg !2453

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2450
  store i8 63, i8* %242, align 1, !dbg !2450, !tbaa !807
  br label %243, !dbg !2450

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %244, metadata !2228, metadata !DIExpression()), !dbg !2291
  br label %467, !dbg !2454

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2242, metadata !DIExpression()), !dbg !2455
  br label %255, !dbg !2456

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2242, metadata !DIExpression()), !dbg !2455
  br label %255, !dbg !2457

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2242, metadata !DIExpression()), !dbg !2455
  br label %253, !dbg !2458

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2242, metadata !DIExpression()), !dbg !2455
  br label %253, !dbg !2459

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2242, metadata !DIExpression()), !dbg !2455
  br label %255, !dbg !2460

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2242, metadata !DIExpression()), !dbg !2455
  br i1 %114, label %251, label %252, !dbg !2461

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2462

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2465

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2467
  call void @llvm.dbg.value(metadata i8 %254, metadata !2242, metadata !DIExpression()), !dbg !2455
  br i1 %113, label %255, label %661, !dbg !2468

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2467
  call void @llvm.dbg.value(metadata i8 %256, metadata !2242, metadata !DIExpression()), !dbg !2455
  br i1 %103, label %524, label %478, !dbg !2470

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2471
  br i1 %258, label %259, label %264, !dbg !2473

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2474, !tbaa !807
  %261 = icmp ne i8 %260, 0, !dbg !2475
  %262 = icmp ne i64 %122, 0, !dbg !2476
  %263 = or i1 %262, %261, !dbg !2478
  br i1 %263, label %467, label %270, !dbg !2478

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2479
  %266 = icmp ne i64 %122, 0, !dbg !2476
  %267 = or i1 %266, %265, !dbg !2473
  br i1 %267, label %467, label %270, !dbg !2473

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2476
  br i1 %269, label %270, label %467, !dbg !2480

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2245, metadata !DIExpression()), !dbg !2362
  br label %271, !dbg !2481

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2467
  call void @llvm.dbg.value(metadata i8 %272, metadata !2245, metadata !DIExpression()), !dbg !2362
  br i1 %113, label %467, label %661, !dbg !2482

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 1, metadata !2245, metadata !DIExpression()), !dbg !2362
  br i1 %114, label %274, label %467, !dbg !2484

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2485

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2488
  %277 = icmp ne i64 %124, 0, !dbg !2490
  %278 = or i1 %277, %276, !dbg !2491
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2491
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %280, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %279, metadata !2229, metadata !DIExpression()), !dbg !2292
  %281 = icmp ult i64 %123, %280, !dbg !2492
  br i1 %281, label %282, label %284, !dbg !2495

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2492
  store i8 39, i8* %283, align 1, !dbg !2492, !tbaa !807
  br label %284, !dbg !2492

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %285, metadata !2228, metadata !DIExpression()), !dbg !2291
  %286 = icmp ult i64 %285, %280, !dbg !2496
  br i1 %286, label %287, label %289, !dbg !2499

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2496
  store i8 92, i8* %288, align 1, !dbg !2496, !tbaa !807
  br label %289, !dbg !2496

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %290, metadata !2228, metadata !DIExpression()), !dbg !2291
  %291 = icmp ult i64 %290, %280, !dbg !2500
  br i1 %291, label %292, label %294, !dbg !2503

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2500
  store i8 39, i8* %293, align 1, !dbg !2500, !tbaa !807
  br label %294, !dbg !2500

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %295, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2299
  br label %467, !dbg !2504

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2505

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2246, metadata !DIExpression()), !dbg !2506
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2507
  %299 = load i16*, i16** %298, align 8, !dbg !2507, !tbaa !638
  %300 = zext i8 %157 to i64, !dbg !2507
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2507
  %302 = load i16, i16* %301, align 2, !dbg !2507, !tbaa !1917
  %303 = lshr i16 %302, 14, !dbg !2509
  %304 = trunc i16 %303 to i8, !dbg !2509
  %305 = and i8 %304, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i8 %305, metadata !2249, metadata !DIExpression()), !dbg !2510
  br label %359, !dbg !2511

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2512
  store i64 0, i64* %10, align 8, !dbg !2513
  call void @llvm.dbg.value(metadata i64 0, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 1, metadata !2249, metadata !DIExpression()), !dbg !2510
  %307 = icmp eq i64 %154, -1, !dbg !2514
  br i1 %307, label %308, label %310, !dbg !2516

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %309, metadata !2221, metadata !DIExpression()), !dbg !2285
  br label %310, !dbg !2518

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2519
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  br label %312, !dbg !2520

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2521
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2522
  call void @llvm.dbg.value(metadata i8 %314, metadata !2249, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2523
  %315 = add i64 %313, %122, !dbg !2524
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2525
  %317 = sub i64 %311, %315, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2250, metadata !DIExpression(DW_OP_deref)), !dbg !2527
  call void @llvm.dbg.value(metadata i32* %12, metadata !2268, metadata !DIExpression(DW_OP_deref)), !dbg !2528
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %318, metadata !2271, metadata !DIExpression()), !dbg !2530
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2531

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  %320 = icmp ugt i64 %311, %315, !dbg !2532
  br i1 %320, label %321, label %344, !dbg !2534

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2246, metadata !DIExpression()), !dbg !2506
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2535
  %325 = load i8, i8* %324, align 1, !dbg !2535, !tbaa !807
  %326 = icmp eq i8 %325, 0, !dbg !2534
  br i1 %326, label %344, label %327, !dbg !2536

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %328, metadata !2246, metadata !DIExpression()), !dbg !2506
  %329 = add i64 %328, %122, !dbg !2538
  %330 = icmp ult i64 %329, %311, !dbg !2532
  br i1 %330, label %321, label %344, !dbg !2534, !llvm.loop !2539

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2540
  %333 = and i1 %116, %332, !dbg !2543
  call void @llvm.dbg.value(metadata i64 1, metadata !2272, metadata !DIExpression()), !dbg !2544
  br i1 %333, label %334, label %347, !dbg !2543

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2272, metadata !DIExpression()), !dbg !2544
  %336 = add i64 %335, %315, !dbg !2545
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2546
  %338 = load i8, i8* %337, align 1, !dbg !2546, !tbaa !807
  %339 = sext i8 %338 to i32, !dbg !2546
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2547

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %341, metadata !2272, metadata !DIExpression()), !dbg !2544
  %342 = icmp ult i64 %341, %318, !dbg !2540
  br i1 %342, label %334, label %347, !dbg !2549, !llvm.loop !2550

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 %314, metadata !2249, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %313, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 %314, metadata !2249, metadata !DIExpression()), !dbg !2510
  br label %344, !dbg !2552

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2249, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %352, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2552
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2553, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %348, metadata !2268, metadata !DIExpression()), !dbg !2528
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2555
  %350 = icmp eq i32 %349, 0, !dbg !2555
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2556
  call void @llvm.dbg.value(metadata i8 %351, metadata !2249, metadata !DIExpression()), !dbg !2510
  %352 = add i64 %318, %313, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %352, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 %351, metadata !2249, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %352, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2552
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2250, metadata !DIExpression(DW_OP_deref)), !dbg !2527
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2558
  %354 = icmp eq i32 %353, 0, !dbg !2559
  br i1 %354, label %312, label %355, !dbg !2560, !llvm.loop !2561

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2563
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 2, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 2, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 2, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 2, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 2, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 %94, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %94, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %94, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %94, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %94, metadata !2222, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2232, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %311, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %351, metadata !2249, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %352, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2563
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2564
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2565
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2565
  call void @llvm.dbg.value(metadata i8 %362, metadata !2249, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %361, metadata !2246, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %360, metadata !2221, metadata !DIExpression()), !dbg !2285
  %363 = and i8 %362, 1, !dbg !2566
  %364 = icmp ne i8 %363, 0, !dbg !2566
  call void @llvm.dbg.value(metadata i8 %363, metadata !2245, metadata !DIExpression()), !dbg !2362
  %365 = icmp ult i64 %361, 2, !dbg !2567
  %366 = or i1 %364, %115, !dbg !2568
  %367 = and i1 %365, %366, !dbg !2569
  br i1 %367, label %467, label %368, !dbg !2569

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %369, metadata !2279, metadata !DIExpression()), !dbg !2571
  br label %370, !dbg !2572

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2573
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2577
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2299
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2573
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2579
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2361
  call void @llvm.dbg.value(metadata i8 %376, metadata !2244, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %375, metadata !2243, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %374, metadata !2238, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 %373, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %372, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %371, metadata !2227, metadata !DIExpression()), !dbg !2351
  br i1 %366, label %423, label %377, !dbg !2583

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2584

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2244, metadata !DIExpression()), !dbg !2361
  %379 = and i8 %373, 1, !dbg !2587
  %380 = icmp eq i8 %379, 0, !dbg !2587
  %381 = and i1 %114, %380, !dbg !2587
  br i1 %381, label %382, label %398, !dbg !2587

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2589
  br i1 %383, label %384, label %386, !dbg !2593

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2589
  store i8 39, i8* %385, align 1, !dbg !2589, !tbaa !807
  br label %386, !dbg !2589

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %387, metadata !2228, metadata !DIExpression()), !dbg !2291
  %388 = icmp ult i64 %387, %129, !dbg !2594
  br i1 %388, label %389, label %391, !dbg !2597

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2594
  store i8 36, i8* %390, align 1, !dbg !2594, !tbaa !807
  br label %391, !dbg !2594

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %392, metadata !2228, metadata !DIExpression()), !dbg !2291
  %393 = icmp ult i64 %392, %129, !dbg !2598
  br i1 %393, label %394, label %396, !dbg !2601

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2598
  store i8 39, i8* %395, align 1, !dbg !2598, !tbaa !807
  br label %396, !dbg !2598

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %397, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 1, metadata !2235, metadata !DIExpression()), !dbg !2299
  br label %398, !dbg !2602

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2350
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8 %400, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %399, metadata !2228, metadata !DIExpression()), !dbg !2291
  %401 = icmp ult i64 %399, %129, !dbg !2603
  br i1 %401, label %402, label %404, !dbg !2606

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2603
  store i8 92, i8* %403, align 1, !dbg !2603, !tbaa !807
  br label %404, !dbg !2603

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %405, metadata !2228, metadata !DIExpression()), !dbg !2291
  %406 = icmp ult i64 %405, %129, !dbg !2607
  br i1 %406, label %407, label %411, !dbg !2610

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2607
  %409 = or i8 %408, 48, !dbg !2607
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2607
  store i8 %409, i8* %410, align 1, !dbg !2607, !tbaa !807
  br label %411, !dbg !2607

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %412, metadata !2228, metadata !DIExpression()), !dbg !2291
  %413 = icmp ult i64 %412, %129, !dbg !2611
  br i1 %413, label %414, label %419, !dbg !2614

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2611
  %416 = and i8 %415, 7, !dbg !2611
  %417 = or i8 %416, 48, !dbg !2611
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2611
  store i8 %417, i8* %418, align 1, !dbg !2611, !tbaa !807
  br label %419, !dbg !2611

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %420, metadata !2228, metadata !DIExpression()), !dbg !2291
  %421 = and i8 %374, 7, !dbg !2615
  %422 = or i8 %421, 48, !dbg !2616
  call void @llvm.dbg.value(metadata i8 %422, metadata !2238, metadata !DIExpression()), !dbg !2377
  br label %432, !dbg !2617

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2618
  %425 = icmp eq i8 %424, 0, !dbg !2618
  br i1 %425, label %432, label %426, !dbg !2619

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2620
  br i1 %427, label %428, label %430, !dbg !2623

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2620
  store i8 92, i8* %429, align 1, !dbg !2620, !tbaa !807
  br label %430, !dbg !2620

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %431, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2243, metadata !DIExpression()), !dbg !2360
  br label %432, !dbg !2624

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2625
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2299
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2626
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2627
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2629
  call void @llvm.dbg.value(metadata i8 %437, metadata !2244, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %436, metadata !2243, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %435, metadata !2238, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 %434, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %433, metadata !2228, metadata !DIExpression()), !dbg !2291
  %438 = add i64 %371, 1, !dbg !2630
  %439 = icmp ugt i64 %369, %438, !dbg !2632
  br i1 %439, label %440, label %562, !dbg !2633

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2634
  %442 = icmp ne i8 %441, 0, !dbg !2634
  %443 = and i8 %437, 1, !dbg !2634
  %444 = icmp eq i8 %443, 0, !dbg !2634
  %445 = and i1 %442, %444, !dbg !2634
  br i1 %445, label %446, label %457, !dbg !2634

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2637
  br i1 %447, label %448, label %450, !dbg !2641

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2637
  store i8 39, i8* %449, align 1, !dbg !2637, !tbaa !807
  br label %450, !dbg !2637

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %451, metadata !2228, metadata !DIExpression()), !dbg !2291
  %452 = icmp ult i64 %451, %129, !dbg !2642
  br i1 %452, label %453, label %455, !dbg !2645

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2642
  store i8 39, i8* %454, align 1, !dbg !2642, !tbaa !807
  br label %455, !dbg !2642

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2645
  call void @llvm.dbg.value(metadata i64 %456, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2299
  br label %457, !dbg !2646

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2647
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8 %459, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %458, metadata !2228, metadata !DIExpression()), !dbg !2291
  %460 = icmp ult i64 %458, %129, !dbg !2648
  br i1 %460, label %461, label %463, !dbg !2650

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2648
  store i8 %435, i8* %462, align 1, !dbg !2648, !tbaa !807
  br label %463, !dbg !2648

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %464, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %438, metadata !2227, metadata !DIExpression()), !dbg !2351
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2651
  %466 = load i8, i8* %465, align 1, !dbg !2651, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %466, metadata !2238, metadata !DIExpression()), !dbg !2377
  br label %370, !dbg !2652, !llvm.loop !2653

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2656
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2350
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2292
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2657
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2350
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2350
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2375
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2375
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2375
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %476, metadata !2245, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %475, metadata !2244, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %155, metadata !2243, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %474, metadata !2238, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 %473, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %472, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %471, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %470, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %469, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %468, metadata !2227, metadata !DIExpression()), !dbg !2351
  br i1 %105, label %489, label %478, !dbg !2658

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
  br i1 %112, label %490, label %512, !dbg !2660

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2661

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
  %501 = lshr i8 %494, 5, !dbg !2662
  %502 = zext i8 %501 to i64, !dbg !2662
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2663
  %504 = load i32, i32* %503, align 4, !dbg !2663, !tbaa !716
  %505 = and i8 %494, 31, !dbg !2664
  %506 = zext i8 %505 to i32, !dbg !2664
  %507 = shl i32 1, %506, !dbg !2665
  %508 = and i32 %504, %507, !dbg !2665
  %509 = icmp eq i32 %508, 0, !dbg !2665
  %510 = icmp eq i8 %155, 0, !dbg !2666
  %511 = and i1 %510, %509, !dbg !2667
  br i1 %511, label %562, label %524, !dbg !2667

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
  %523 = icmp eq i8 %155, 0, !dbg !2666
  br i1 %523, label %562, label %524, !dbg !2668

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2669
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2350
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2292
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2657
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2299
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2300
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2670
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2375
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %532, metadata !2245, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %531, metadata !2238, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 %530, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %529, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %528, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %527, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %526, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %525, metadata !2227, metadata !DIExpression()), !dbg !2351
  br i1 %110, label %534, label %661, !dbg !2673

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2244, metadata !DIExpression()), !dbg !2361
  %535 = and i8 %529, 1, !dbg !2675
  %536 = icmp eq i8 %535, 0, !dbg !2675
  %537 = and i1 %114, %536, !dbg !2675
  br i1 %537, label %538, label %554, !dbg !2675

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2677
  br i1 %539, label %540, label %542, !dbg !2681

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2677
  store i8 39, i8* %541, align 1, !dbg !2677, !tbaa !807
  br label %542, !dbg !2677

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %543, metadata !2228, metadata !DIExpression()), !dbg !2291
  %544 = icmp ult i64 %543, %533, !dbg !2682
  br i1 %544, label %545, label %547, !dbg !2685

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2682
  store i8 36, i8* %546, align 1, !dbg !2682, !tbaa !807
  br label %547, !dbg !2682

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %548, metadata !2228, metadata !DIExpression()), !dbg !2291
  %549 = icmp ult i64 %548, %533, !dbg !2686
  br i1 %549, label %550, label %552, !dbg !2689

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2686
  store i8 39, i8* %551, align 1, !dbg !2686, !tbaa !807
  br label %552, !dbg !2686

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %553, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 1, metadata !2235, metadata !DIExpression()), !dbg !2299
  br label %554, !dbg !2690

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2647
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8 %556, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %555, metadata !2228, metadata !DIExpression()), !dbg !2291
  %557 = icmp ult i64 %555, %533, !dbg !2691
  br i1 %557, label %558, label %560, !dbg !2694

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2691
  store i8 92, i8* %559, align 1, !dbg !2691, !tbaa !807
  br label %560, !dbg !2691

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %561, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %572, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %571, metadata !2245, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %570, metadata !2244, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %569, metadata !2238, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 %568, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %567, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %566, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %565, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %564, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %563, metadata !2227, metadata !DIExpression()), !dbg !2351
  br label %589, !dbg !2695

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2669
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2350
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2292
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2657
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2299
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2300
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2698
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2375
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2375
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %571, metadata !2245, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %570, metadata !2244, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %569, metadata !2238, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 %568, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %567, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %566, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %565, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %564, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %563, metadata !2227, metadata !DIExpression()), !dbg !2351
  %573 = and i8 %567, 1, !dbg !2695
  %574 = icmp ne i8 %573, 0, !dbg !2695
  %575 = and i8 %570, 1, !dbg !2695
  %576 = icmp eq i8 %575, 0, !dbg !2695
  %577 = and i1 %574, %576, !dbg !2695
  br i1 %577, label %578, label %589, !dbg !2695

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2699
  br i1 %579, label %580, label %582, !dbg !2703

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2699
  store i8 39, i8* %581, align 1, !dbg !2699, !tbaa !807
  br label %582, !dbg !2699

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %583, metadata !2228, metadata !DIExpression()), !dbg !2291
  %584 = icmp ult i64 %583, %572, !dbg !2704
  br i1 %584, label %585, label %587, !dbg !2707

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2704
  store i8 39, i8* %586, align 1, !dbg !2704, !tbaa !807
  br label %587, !dbg !2704

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2707
  call void @llvm.dbg.value(metadata i64 %588, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2299
  br label %589, !dbg !2708

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2647
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8 %598, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %597, metadata !2228, metadata !DIExpression()), !dbg !2291
  %599 = icmp ult i64 %597, %590, !dbg !2709
  br i1 %599, label %600, label %602, !dbg !2712

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2709
  store i8 %592, i8* %601, align 1, !dbg !2709, !tbaa !807
  br label %602, !dbg !2709

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %603, metadata !2228, metadata !DIExpression()), !dbg !2291
  %604 = and i8 %591, 1, !dbg !2713
  %605 = icmp eq i8 %604, 0, !dbg !2713
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2715
  call void @llvm.dbg.value(metadata i8 %606, metadata !2237, metadata !DIExpression()), !dbg !2301
  br label %607, !dbg !2716

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2669
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2350
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2292
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2657
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2299
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2350
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2301
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %614, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %613, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %612, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %611, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %610, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %609, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %608, metadata !2227, metadata !DIExpression()), !dbg !2351
  %616 = add i64 %608, 1, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %616, metadata !2227, metadata !DIExpression()), !dbg !2351
  br label %121, !dbg !2718, !llvm.loop !2719

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %618, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %618, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %125, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %125, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %126, metadata !2235, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %127, metadata !2236, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %128, metadata !2237, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  %619 = icmp eq i64 %123, 0, !dbg !2721
  %620 = and i1 %114, %619, !dbg !2723
  %621 = xor i1 %620, true, !dbg !2723
  %622 = or i1 %110, %621, !dbg !2723
  br i1 %622, label %623, label %661, !dbg !2723

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2724
  %625 = xor i1 %624, true, !dbg !2724
  %626 = and i8 %127, 1, !dbg !2726
  %627 = icmp eq i8 %626, 0, !dbg !2726
  %628 = or i1 %627, %625, !dbg !2724
  br i1 %628, label %638, label %629, !dbg !2724

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2727
  %631 = icmp eq i8 %630, 0, !dbg !2727
  br i1 %631, label %634, label %632, !dbg !2730

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %618, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %618, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %618, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %618, metadata !2221, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %95, metadata !2225, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %96, metadata !2226, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %124, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %125, metadata !2221, metadata !DIExpression()), !dbg !2285
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2731
  br label %671, !dbg !2732

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2733
  %636 = icmp ne i64 %124, 0, !dbg !2735
  %637 = and i1 %636, %635, !dbg !2736
  br i1 %637, label %27, label %638, !dbg !2736

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %129, metadata !2219, metadata !DIExpression()), !dbg !2283
  %639 = icmp ne i8* %98, null, !dbg !2737
  %640 = and i1 %639, %110, !dbg !2739
  br i1 %640, label %641, label %656, !dbg !2739

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %123, metadata !2228, metadata !DIExpression()), !dbg !2291
  %642 = load i8, i8* %98, align 1, !dbg !2740, !tbaa !807
  %643 = icmp eq i8 %642, 0, !dbg !2743
  br i1 %643, label %656, label %644, !dbg !2743

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %647, metadata !2228, metadata !DIExpression()), !dbg !2291
  %648 = icmp ult i64 %647, %129, !dbg !2744
  br i1 %648, label %649, label %651, !dbg !2747

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2744
  store i8 %645, i8* %650, align 1, !dbg !2744, !tbaa !807
  br label %651, !dbg !2744

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2747
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %653, metadata !2230, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %652, metadata !2228, metadata !DIExpression()), !dbg !2291
  %654 = load i8, i8* %653, align 1, !dbg !2740, !tbaa !807
  %655 = icmp eq i8 %654, 0, !dbg !2743
  br i1 %655, label %656, label %644, !dbg !2743, !llvm.loop !2749

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2291
  call void @llvm.dbg.value(metadata i64 %657, metadata !2228, metadata !DIExpression()), !dbg !2291
  %658 = icmp ult i64 %657, %129, !dbg !2751
  br i1 %658, label %659, label %671, !dbg !2753

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2754
  store i8 0, i8* %660, align 1, !dbg !2755, !tbaa !807
  br label %671, !dbg !2754

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2219, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %663, metadata !2221, metadata !DIExpression()), !dbg !2285
  %665 = icmp ne i32 %662, 2, !dbg !2756
  %666 = icmp eq i8 %102, 0, !dbg !2758
  %667 = or i1 %665, %666, !dbg !2759
  call void @llvm.dbg.value(metadata i32 4, metadata !2222, metadata !DIExpression()), !dbg !2286
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2759
  call void @llvm.dbg.value(metadata i32 %668, metadata !2222, metadata !DIExpression()), !dbg !2286
  %669 = and i32 %5, -3, !dbg !2760
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2761
  br label %671, !dbg !2762

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2763
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2768, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %1, metadata !2769, metadata !DIExpression()), !dbg !2773
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %3, metadata !2770, metadata !DIExpression()), !dbg !2775
  %4 = icmp eq i8* %3, %0, !dbg !2776
  br i1 %4, label %5, label %71, !dbg !2778

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %6, metadata !2771, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %6, metadata !2781, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* null, metadata !2787, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 85, metadata !2788, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8 84, metadata !2789, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 70, metadata !2790, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8 45, metadata !2791, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8 56, metadata !2792, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 0, metadata !2793, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8 0, metadata !2794, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8 0, metadata !2795, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 0, metadata !2796, metadata !DIExpression()), !dbg !2809
  %7 = load i8, i8* %6, align 1, !dbg !2810, !tbaa !807
  %8 = and i8 %7, -33, !dbg !2810
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2810

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2812, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* null, metadata !2817, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8 84, metadata !2818, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 70, metadata !2819, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8 45, metadata !2820, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 56, metadata !2821, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 0, metadata !2822, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 0, metadata !2823, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8 0, metadata !2825, metadata !DIExpression()), !dbg !2838
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2839
  %11 = load i8, i8* %10, align 1, !dbg !2839, !tbaa !807
  %12 = and i8 %11, -33, !dbg !2839
  %13 = icmp eq i8 %12, 84, !dbg !2839
  br i1 %13, label %14, label %68, !dbg !2839

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2841, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* null, metadata !2846, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 70, metadata !2847, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 45, metadata !2848, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 56, metadata !2849, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8 0, metadata !2850, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 0, metadata !2851, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 0, metadata !2852, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2865
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2866
  %16 = load i8, i8* %15, align 1, !dbg !2866, !tbaa !807
  %17 = and i8 %16, -33, !dbg !2866
  %18 = icmp eq i8 %17, 70, !dbg !2866
  br i1 %18, label %19, label %68, !dbg !2866

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2868, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* null, metadata !2873, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 45, metadata !2874, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 56, metadata !2875, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 0, metadata !2876, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2878, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 0, metadata !2879, metadata !DIExpression()), !dbg !2890
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2891
  %21 = load i8, i8* %20, align 1, !dbg !2891, !tbaa !807
  %22 = icmp eq i8 %21, 45, !dbg !2891
  br i1 %22, label %23, label %68, !dbg !2893

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2894, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* null, metadata !2899, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8 56, metadata !2900, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 0, metadata !2901, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8 0, metadata !2902, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 0, metadata !2904, metadata !DIExpression()), !dbg !2914
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2915
  %25 = load i8, i8* %24, align 1, !dbg !2915, !tbaa !807
  %26 = icmp eq i8 %25, 56, !dbg !2915
  br i1 %26, label %27, label %68, !dbg !2917

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2918, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* null, metadata !2923, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 0, metadata !2924, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 0, metadata !2925, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 0, metadata !2926, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !2936
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2937
  %29 = load i8, i8* %28, align 1, !dbg !2937, !tbaa !807
  %30 = icmp eq i8 %29, 0, !dbg !2937
  br i1 %30, label %31, label %68, !dbg !2939

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2940, !tbaa !807
  %33 = icmp eq i8 %32, 96, !dbg !2941
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.103, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.104, i64 0, i64 0), !dbg !2940
  br label %71, !dbg !2942

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2812, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* null, metadata !2817, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 66, metadata !2818, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 49, metadata !2819, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 56, metadata !2820, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 48, metadata !2821, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8 51, metadata !2822, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 48, metadata !2823, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 0, metadata !2825, metadata !DIExpression()), !dbg !2955
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2956
  %37 = load i8, i8* %36, align 1, !dbg !2956, !tbaa !807
  %38 = and i8 %37, -33, !dbg !2956
  %39 = icmp eq i8 %38, 66, !dbg !2956
  br i1 %39, label %40, label %68, !dbg !2956

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2841, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8* null, metadata !2846, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 49, metadata !2847, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 56, metadata !2848, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8 48, metadata !2849, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8 51, metadata !2850, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 48, metadata !2851, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8 0, metadata !2852, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2966
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2967
  %42 = load i8, i8* %41, align 1, !dbg !2967, !tbaa !807
  %43 = icmp eq i8 %42, 49, !dbg !2967
  br i1 %43, label %44, label %68, !dbg !2968

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2868, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* null, metadata !2873, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 56, metadata !2874, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 48, metadata !2875, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 51, metadata !2876, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 48, metadata !2877, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 0, metadata !2878, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 0, metadata !2879, metadata !DIExpression()), !dbg !2977
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2978
  %46 = load i8, i8* %45, align 1, !dbg !2978, !tbaa !807
  %47 = icmp eq i8 %46, 56, !dbg !2978
  br i1 %47, label %48, label %68, !dbg !2979

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2894, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8* null, metadata !2899, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 48, metadata !2900, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 51, metadata !2901, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 48, metadata !2902, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 0, metadata !2904, metadata !DIExpression()), !dbg !2987
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2988
  %50 = load i8, i8* %49, align 1, !dbg !2988, !tbaa !807
  %51 = icmp eq i8 %50, 48, !dbg !2988
  br i1 %51, label %52, label %68, !dbg !2989

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2918, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* null, metadata !2923, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 51, metadata !2924, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8 48, metadata !2925, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 0, metadata !2926, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !2996
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2997
  %54 = load i8, i8* %53, align 1, !dbg !2997, !tbaa !807
  %55 = icmp eq i8 %54, 51, !dbg !2997
  br i1 %55, label %56, label %68, !dbg !2998

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2999, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i8* null, metadata !3004, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8 48, metadata !3005, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3015
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3016
  %58 = load i8, i8* %57, align 1, !dbg !3016, !tbaa !807
  %59 = icmp eq i8 %58, 48, !dbg !3016
  br i1 %59, label %60, label %68, !dbg !3018

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3019, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* null, metadata !3024, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 0, metadata !3025, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 0, metadata !3026, metadata !DIExpression()), !dbg !3033
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3034
  %62 = load i8, i8* %61, align 1, !dbg !3034, !tbaa !807
  %63 = icmp eq i8 %62, 0, !dbg !3034
  br i1 %63, label %64, label %68, !dbg !3036

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3037, !tbaa !807
  %66 = icmp eq i8 %65, 96, !dbg !3038
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.106, i64 0, i64 0), !dbg !3037
  br label %71, !dbg !3039

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3040
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), !dbg !3041
  br label %71, !dbg !3042

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3043
  ret i8* %72, !dbg !3044
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3045 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3049, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %0, metadata !3055, metadata !DIExpression()) #11, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()) #11, !dbg !3070
  call void @llvm.dbg.value(metadata i64* null, metadata !3061, metadata !DIExpression()) #11, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3062, metadata !DIExpression()) #11, !dbg !3072
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3073
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3073
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3063, metadata !DIExpression()) #11, !dbg !3074
  %6 = tail call i32* @__errno_location() #17, !dbg !3075
  %7 = load i32, i32* %6, align 4, !dbg !3075, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %7, metadata !3064, metadata !DIExpression()) #11, !dbg !3076
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3077
  %9 = load i32, i32* %8, align 4, !dbg !3077, !tbaa !2151
  %10 = or i32 %9, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %10, metadata !3065, metadata !DIExpression()) #11, !dbg !3079
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3080
  %12 = load i32, i32* %11, align 8, !dbg !3080, !tbaa !2091
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3081
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3082
  %15 = load i8*, i8** %14, align 8, !dbg !3082, !tbaa !2177
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3083
  %17 = load i8*, i8** %16, align 8, !dbg !3083, !tbaa !2180
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !3084
  %19 = add i64 %18, 1, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %19, metadata !3066, metadata !DIExpression()) #11, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %19, metadata !3087, metadata !DIExpression()) #11, !dbg !3092
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %20, metadata !3067, metadata !DIExpression()) #11, !dbg !3095
  %21 = load i32, i32* %11, align 8, !dbg !3096, !tbaa !2091
  %22 = load i8*, i8** %14, align 8, !dbg !3097, !tbaa !2177
  %23 = load i8*, i8** %16, align 8, !dbg !3098, !tbaa !2180
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !3099
  store i32 %7, i32* %6, align 4, !dbg !3100, !tbaa !716
  ret i8* %20, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3056 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3055, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64* %2, metadata !3061, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3062, metadata !DIExpression()), !dbg !3105
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3106
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3063, metadata !DIExpression()), !dbg !3107
  %7 = tail call i32* @__errno_location() #17, !dbg !3108
  %8 = load i32, i32* %7, align 4, !dbg !3108, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %8, metadata !3064, metadata !DIExpression()), !dbg !3109
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3110
  %10 = load i32, i32* %9, align 4, !dbg !3110, !tbaa !2151
  %11 = icmp ne i64* %2, null, !dbg !3111
  %12 = xor i1 %11, true, !dbg !3111
  %13 = zext i1 %12 to i32, !dbg !3111
  %14 = or i32 %10, %13, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %14, metadata !3065, metadata !DIExpression()), !dbg !3113
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3114
  %16 = load i32, i32* %15, align 8, !dbg !3114, !tbaa !2091
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3115
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3116
  %19 = load i8*, i8** %18, align 8, !dbg !3116, !tbaa !2177
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3117
  %21 = load i8*, i8** %20, align 8, !dbg !3117, !tbaa !2180
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3118
  %23 = add i64 %22, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %23, metadata !3066, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %23, metadata !3087, metadata !DIExpression()) #11, !dbg !3121
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3123
  call void @llvm.dbg.value(metadata i8* %24, metadata !3067, metadata !DIExpression()), !dbg !3124
  %25 = load i32, i32* %15, align 8, !dbg !3125, !tbaa !2091
  %26 = load i8*, i8** %18, align 8, !dbg !3126, !tbaa !2177
  %27 = load i8*, i8** %20, align 8, !dbg !3127, !tbaa !2180
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3128
  store i32 %8, i32* %7, align 4, !dbg !3129, !tbaa !716
  br i1 %11, label %29, label %30, !dbg !3130

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3131, !tbaa !3133
  br label %30, !dbg !3134

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3136 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3140, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 1, metadata !3139, metadata !DIExpression()), !dbg !3142
  %2 = load i32, i32* @nslots, align 4, !dbg !3143, !tbaa !716
  %3 = icmp sgt i32 %2, 1, !dbg !3146
  br i1 %3, label %4, label %12, !dbg !3147

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3139, metadata !DIExpression()), !dbg !3142
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3148
  %7 = load i8*, i8** %6, align 8, !dbg !3148, !tbaa !3149
  tail call void @free(i8* %7) #11, !dbg !3151
  %8 = add nuw nsw i64 %5, 1, !dbg !3152
  call void @llvm.dbg.value(metadata i32 undef, metadata !3139, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3142
  %9 = load i32, i32* @nslots, align 4, !dbg !3143, !tbaa !716
  %10 = sext i32 %9 to i64, !dbg !3146
  %11 = icmp slt i64 %8, %10, !dbg !3146
  br i1 %11, label %4, label %12, !dbg !3147, !llvm.loop !3153

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3155
  %14 = load i8*, i8** %13, align 8, !dbg !3155, !tbaa !3149
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3157
  br i1 %15, label %17, label %16, !dbg !3158

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !3159
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3161, !tbaa !3162
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3163, !tbaa !3149
  br label %17, !dbg !3164

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3165
  br i1 %18, label %21, label %19, !dbg !3167

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3168
  tail call void @free(i8* %20) #11, !dbg !3170
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3171, !tbaa !638
  br label %21, !dbg !3172

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3173, !tbaa !716
  ret void, !dbg !3174
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %1, metadata !3180, metadata !DIExpression()), !dbg !3182
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3183
  ret i8* %3, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3189, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %1, metadata !3190, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %2, metadata !3191, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3192, metadata !DIExpression()), !dbg !3207
  %5 = tail call i32* @__errno_location() #17, !dbg !3208
  %6 = load i32, i32* %5, align 4, !dbg !3208, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %6, metadata !3193, metadata !DIExpression()), !dbg !3209
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3210, !tbaa !638
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3194, metadata !DIExpression()), !dbg !3211
  %8 = icmp slt i32 %0, 0, !dbg !3212
  br i1 %8, label %9, label %10, !dbg !3214

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3215
  unreachable, !dbg !3215

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3216, !tbaa !716
  %12 = icmp sgt i32 %11, %0, !dbg !3217
  br i1 %12, label %34, label %13, !dbg !3218

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3219
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3198, metadata !DIExpression()), !dbg !3220
  %15 = icmp eq i32 %0, 2147483647, !dbg !3221
  br i1 %15, label %16, label %17, !dbg !3223

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3224
  unreachable, !dbg !3224

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3225
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3225
  %20 = add nsw i32 %0, 1, !dbg !3226
  %21 = sext i32 %20 to i64, !dbg !3227
  %22 = shl nsw i64 %21, 4, !dbg !3228
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3229
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3229
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3194, metadata !DIExpression()), !dbg !3211
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3230, !tbaa !638
  br i1 %14, label %25, label %26, !dbg !3231

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3232, !tbaa.struct !3234
  br label %26, !dbg !3235

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3236, !tbaa !716
  %28 = sext i32 %27 to i64, !dbg !3237
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3237
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3238
  %31 = sub nsw i32 %20, %27, !dbg !3239
  %32 = sext i32 %31 to i64, !dbg !3240
  %33 = shl nsw i64 %32, 4, !dbg !3241
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3238
  store i32 %20, i32* @nslots, align 4, !dbg !3242, !tbaa !716
  br label %34, !dbg !3243

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3244
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3194, metadata !DIExpression()), !dbg !3211
  %36 = sext i32 %0 to i64, !dbg !3245
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3246
  %38 = load i64, i64* %37, align 8, !dbg !3246, !tbaa !3162
  call void @llvm.dbg.value(metadata i64 %38, metadata !3199, metadata !DIExpression()), !dbg !3247
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3248
  %40 = load i8*, i8** %39, align 8, !dbg !3248, !tbaa !3149
  call void @llvm.dbg.value(metadata i8* %40, metadata !3201, metadata !DIExpression()), !dbg !3249
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3250
  %42 = load i32, i32* %41, align 4, !dbg !3250, !tbaa !2151
  %43 = or i32 %42, 1, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %43, metadata !3202, metadata !DIExpression()), !dbg !3252
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3253
  %45 = load i32, i32* %44, align 8, !dbg !3253, !tbaa !2091
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3254
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3255
  %48 = load i8*, i8** %47, align 8, !dbg !3255, !tbaa !2177
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3256
  %50 = load i8*, i8** %49, align 8, !dbg !3256, !tbaa !2180
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %51, metadata !3203, metadata !DIExpression()), !dbg !3258
  %52 = icmp ugt i64 %38, %51, !dbg !3259
  br i1 %52, label %63, label %53, !dbg !3261

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %54, metadata !3199, metadata !DIExpression()), !dbg !3247
  store i64 %54, i64* %37, align 8, !dbg !3264, !tbaa !3162
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3265
  br i1 %55, label %57, label %56, !dbg !3267

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3268
  br label %57, !dbg !3268

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3087, metadata !DIExpression()) #11, !dbg !3269
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3271
  call void @llvm.dbg.value(metadata i8* %58, metadata !3201, metadata !DIExpression()), !dbg !3249
  store i8* %58, i8** %39, align 8, !dbg !3272, !tbaa !3149
  %59 = load i32, i32* %44, align 8, !dbg !3273, !tbaa !2091
  %60 = load i8*, i8** %47, align 8, !dbg !3274, !tbaa !2177
  %61 = load i8*, i8** %49, align 8, !dbg !3275, !tbaa !2180
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3276
  br label %63, !dbg !3277

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3278
  call void @llvm.dbg.value(metadata i8* %64, metadata !3201, metadata !DIExpression()), !dbg !3249
  store i32 %6, i32* %5, align 4, !dbg !3279, !tbaa !716
  ret i8* %64, !dbg !3280
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %2, metadata !3287, metadata !DIExpression()), !dbg !3290
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3291
  ret i8* %4, !dbg !3292
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 0, metadata !3179, metadata !DIExpression()) #11, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %0, metadata !3180, metadata !DIExpression()) #11, !dbg !3301
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3302
  ret i8* %2, !dbg !3303
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3304 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()) #11, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3286, metadata !DIExpression()) #11, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %1, metadata !3287, metadata !DIExpression()) #11, !dbg !3315
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3316
  ret i8* %3, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3318 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %1, metadata !3323, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8* %2, metadata !3324, metadata !DIExpression()), !dbg !3328
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3329
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3325, metadata !DIExpression(DW_OP_deref)), !dbg !3330
  call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()) #11, !dbg !3337
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3339, !alias.scope !3340
  %6 = icmp eq i32 %1, 10, !dbg !3343
  br i1 %6, label %7, label %8, !dbg !3345

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3346, !noalias !3340
  unreachable, !dbg !3346

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3347
  store i32 %1, i32* %9, align 8, !dbg !3348, !tbaa !2091, !alias.scope !3340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3325, metadata !DIExpression(DW_OP_deref)), !dbg !3330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3336, metadata !DIExpression(DW_OP_deref)), !dbg !3339
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3349
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3350
  ret i8* %10, !dbg !3351
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3352 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3356, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %1, metadata !3357, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %2, metadata !3358, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %3, metadata !3359, metadata !DIExpression()), !dbg !3364
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3365
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()) #11, !dbg !3367
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3369, !alias.scope !3370
  %7 = icmp eq i32 %1, 10, !dbg !3373
  br i1 %7, label %8, label %9, !dbg !3374

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3375, !noalias !3370
  unreachable, !dbg !3375

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3376
  store i32 %1, i32* %10, align 8, !dbg !3377, !tbaa !2091, !alias.scope !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3336, metadata !DIExpression(DW_OP_deref)), !dbg !3369
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3378
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3379
  ret i8* %11, !dbg !3380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3381 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 0, metadata !3322, metadata !DIExpression()) #11, !dbg !3389
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()) #11, !dbg !3391
  call void @llvm.dbg.value(metadata i8* %1, metadata !3324, metadata !DIExpression()) #11, !dbg !3392
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3393
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3393
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3325, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()) #11, !dbg !3395
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3397, !alias.scope !3398
  %5 = icmp eq i32 %0, 10, !dbg !3401
  br i1 %5, label %6, label %7, !dbg !3402

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3403, !noalias !3398
  unreachable, !dbg !3403

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3404
  store i32 %0, i32* %8, align 8, !dbg !3405, !tbaa !2091, !alias.scope !3398
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3325, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3394
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3336, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3397
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3406
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3407
  ret i8* %9, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3409 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3414, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %2, metadata !3415, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #11, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %0, metadata !3357, metadata !DIExpression()) #11, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %1, metadata !3358, metadata !DIExpression()) #11, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %2, metadata !3359, metadata !DIExpression()) #11, !dbg !3423
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3424
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3424
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3360, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()) #11, !dbg !3426
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3428, !alias.scope !3429
  %6 = icmp eq i32 %0, 10, !dbg !3432
  br i1 %6, label %7, label %8, !dbg !3433

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3434, !noalias !3429
  unreachable, !dbg !3434

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3435
  store i32 %0, i32* %9, align 8, !dbg !3436, !tbaa !2091, !alias.scope !3429
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3360, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3425
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3336, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3428
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3438
  ret i8* %10, !dbg !3439
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3440 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3444, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 %2, metadata !3446, metadata !DIExpression()), !dbg !3450
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3451
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3452, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3447, metadata !DIExpression(DW_OP_deref)), !dbg !3454
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2110, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8 %2, metadata !2111, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 1, metadata !2112, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8 %2, metadata !2113, metadata !DIExpression()), !dbg !3459
  %6 = lshr i8 %2, 5, !dbg !3460
  %7 = zext i8 %6 to i64, !dbg !3460
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3461
  call void @llvm.dbg.value(metadata i32* %8, metadata !2115, metadata !DIExpression()), !dbg !3462
  %9 = and i8 %2, 31, !dbg !3463
  %10 = zext i8 %9 to i32, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %10, metadata !2117, metadata !DIExpression()), !dbg !3464
  %11 = load i32, i32* %8, align 4, !dbg !3465, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !3466
  %13 = and i32 %12, 1, !dbg !3467
  call void @llvm.dbg.value(metadata i32 %13, metadata !2118, metadata !DIExpression()), !dbg !3468
  %14 = xor i32 %13, 1, !dbg !3469
  %15 = shl i32 %14, %10, !dbg !3470
  %16 = xor i32 %15, %11, !dbg !3471
  store i32 %16, i32* %8, align 4, !dbg !3471, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3447, metadata !DIExpression(DW_OP_deref)), !dbg !3454
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3472
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3473
  ret i8* %17, !dbg !3474
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3475 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 %1, metadata !3480, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8* %0, metadata !3444, metadata !DIExpression()) #11, !dbg !3483
  call void @llvm.dbg.value(metadata i64 -1, metadata !3445, metadata !DIExpression()) #11, !dbg !3485
  call void @llvm.dbg.value(metadata i8 %1, metadata !3446, metadata !DIExpression()) #11, !dbg !3486
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3488, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3447, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3489
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2110, metadata !DIExpression()) #11, !dbg !3490
  call void @llvm.dbg.value(metadata i8 %1, metadata !2111, metadata !DIExpression()) #11, !dbg !3492
  call void @llvm.dbg.value(metadata i32 1, metadata !2112, metadata !DIExpression()) #11, !dbg !3493
  call void @llvm.dbg.value(metadata i8 %1, metadata !2113, metadata !DIExpression()) #11, !dbg !3494
  %5 = lshr i8 %1, 5, !dbg !3495
  %6 = zext i8 %5 to i64, !dbg !3495
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3496
  call void @llvm.dbg.value(metadata i32* %7, metadata !2115, metadata !DIExpression()) #11, !dbg !3497
  %8 = and i8 %1, 31, !dbg !3498
  %9 = zext i8 %8 to i32, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %9, metadata !2117, metadata !DIExpression()) #11, !dbg !3499
  %10 = load i32, i32* %7, align 4, !dbg !3500, !tbaa !716
  %11 = lshr i32 %10, %9, !dbg !3501
  %12 = and i32 %11, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i32 %12, metadata !2118, metadata !DIExpression()) #11, !dbg !3503
  %13 = xor i32 %12, 1, !dbg !3504
  %14 = shl i32 %13, %9, !dbg !3505
  %15 = xor i32 %14, %10, !dbg !3506
  store i32 %15, i32* %7, align 4, !dbg !3506, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3447, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3489
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3507
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3508
  ret i8* %16, !dbg !3509
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3510 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3512, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8* %0, metadata !3479, metadata !DIExpression()) #11, !dbg !3514
  call void @llvm.dbg.value(metadata i8 58, metadata !3480, metadata !DIExpression()) #11, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %0, metadata !3444, metadata !DIExpression()) #11, !dbg !3517
  call void @llvm.dbg.value(metadata i64 -1, metadata !3445, metadata !DIExpression()) #11, !dbg !3519
  call void @llvm.dbg.value(metadata i8 58, metadata !3446, metadata !DIExpression()) #11, !dbg !3520
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3521
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3522, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3447, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3523
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2110, metadata !DIExpression()) #11, !dbg !3524
  call void @llvm.dbg.value(metadata i8 58, metadata !2111, metadata !DIExpression()) #11, !dbg !3526
  call void @llvm.dbg.value(metadata i32 1, metadata !2112, metadata !DIExpression()) #11, !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !2113, metadata !DIExpression()) #11, !dbg !3528
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3529
  call void @llvm.dbg.value(metadata i32* %4, metadata !2115, metadata !DIExpression()) #11, !dbg !3530
  call void @llvm.dbg.value(metadata i32 26, metadata !2117, metadata !DIExpression()) #11, !dbg !3531
  %5 = load i32, i32* %4, align 4, !dbg !3532, !tbaa !716
  %6 = or i32 %5, 67108864, !dbg !3533
  store i32 %6, i32* %4, align 4, !dbg !3533, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3447, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3523
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3534
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3535
  ret i8* %7, !dbg !3536
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3537 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3539, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i64 %1, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* %0, metadata !3444, metadata !DIExpression()) #11, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()) #11, !dbg !3545
  call void @llvm.dbg.value(metadata i8 58, metadata !3446, metadata !DIExpression()) #11, !dbg !3546
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3548, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3447, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3549
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2110, metadata !DIExpression()) #11, !dbg !3550
  call void @llvm.dbg.value(metadata i8 58, metadata !2111, metadata !DIExpression()) #11, !dbg !3552
  call void @llvm.dbg.value(metadata i32 1, metadata !2112, metadata !DIExpression()) #11, !dbg !3553
  call void @llvm.dbg.value(metadata i8 58, metadata !2113, metadata !DIExpression()) #11, !dbg !3554
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32* %5, metadata !2115, metadata !DIExpression()) #11, !dbg !3556
  call void @llvm.dbg.value(metadata i32 26, metadata !2117, metadata !DIExpression()) #11, !dbg !3557
  %6 = load i32, i32* %5, align 4, !dbg !3558, !tbaa !716
  %7 = or i32 %6, 67108864, !dbg !3559
  store i32 %7, i32* %5, align 4, !dbg !3559, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3447, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3549
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3560
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3561
  ret i8* %8, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3563 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3336, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3569
  call void @llvm.dbg.value(metadata i32 %0, metadata !3565, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 %1, metadata !3566, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %2, metadata !3567, metadata !DIExpression()), !dbg !3573
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3574
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3574
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3575
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3575
  call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()) #11, !dbg !3576
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3569
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3569, !alias.scope !3577
  %8 = icmp eq i32 %1, 10, !dbg !3580
  br i1 %8, label %9, label %10, !dbg !3581

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3582, !noalias !3577
  unreachable, !dbg !3582

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3569
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3575
  store i32 %1, i32* %11, align 8, !dbg !3575
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3575
  %13 = bitcast i32* %12 to i8*, !dbg !3575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3575
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3568, metadata !DIExpression(DW_OP_deref)), !dbg !3583
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2110, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8 58, metadata !2111, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 1, metadata !2112, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 58, metadata !2113, metadata !DIExpression()), !dbg !3588
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3589
  call void @llvm.dbg.value(metadata i32* %14, metadata !2115, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i32 26, metadata !2117, metadata !DIExpression()), !dbg !3591
  %15 = load i32, i32* %14, align 4, !dbg !3592, !tbaa !716
  %16 = or i32 %15, 67108864, !dbg !3593
  store i32 %16, i32* %14, align 4, !dbg !3593, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3568, metadata !DIExpression(DW_OP_deref)), !dbg !3583
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3594
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3595
  ret i8* %17, !dbg !3596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3597 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3601, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %1, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8* %2, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i8* %3, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()) #11, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %1, metadata !3614, metadata !DIExpression()) #11, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %2, metadata !3615, metadata !DIExpression()) #11, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %3, metadata !3616, metadata !DIExpression()) #11, !dbg !3623
  call void @llvm.dbg.value(metadata i64 -1, metadata !3617, metadata !DIExpression()) #11, !dbg !3624
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3625
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3626, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3618, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3627
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2159, metadata !DIExpression()) #11, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()) #11, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()) #11, !dbg !3631
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2159, metadata !DIExpression()) #11, !dbg !3628
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3632
  store i32 10, i32* %7, align 8, !dbg !3633, !tbaa !2091
  %8 = icmp ne i8* %1, null, !dbg !3634
  %9 = icmp ne i8* %2, null, !dbg !3635
  %10 = and i1 %8, %9, !dbg !3636
  br i1 %10, label %12, label %11, !dbg !3636

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3637
  unreachable, !dbg !3637

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3638
  store i8* %1, i8** %13, align 8, !dbg !3639, !tbaa !2177
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3640
  store i8* %2, i8** %14, align 8, !dbg !3641, !tbaa !2180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3618, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3627
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3642
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3643
  ret i8* %15, !dbg !3644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3610 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i8* %1, metadata !3614, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %2, metadata !3615, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %3, metadata !3616, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %4, metadata !3617, metadata !DIExpression()), !dbg !3649
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3650
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3651, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3618, metadata !DIExpression(DW_OP_deref)), !dbg !3652
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2159, metadata !DIExpression()) #11, !dbg !3653
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()) #11, !dbg !3655
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()) #11, !dbg !3656
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2159, metadata !DIExpression()) #11, !dbg !3653
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3657
  store i32 10, i32* %8, align 8, !dbg !3658, !tbaa !2091
  %9 = icmp ne i8* %1, null, !dbg !3659
  %10 = icmp ne i8* %2, null, !dbg !3660
  %11 = and i1 %9, %10, !dbg !3661
  br i1 %11, label %13, label %12, !dbg !3661

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3662
  unreachable, !dbg !3662

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3663
  store i8* %1, i8** %14, align 8, !dbg !3664, !tbaa !2177
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3665
  store i8* %2, i8** %15, align 8, !dbg !3666, !tbaa !2180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3618, metadata !DIExpression(DW_OP_deref)), !dbg !3652
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3667
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3668
  ret i8* %16, !dbg !3669
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3670 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8* %1, metadata !3675, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %2, metadata !3676, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32 0, metadata !3601, metadata !DIExpression()) #11, !dbg !3680
  call void @llvm.dbg.value(metadata i8* %0, metadata !3602, metadata !DIExpression()) #11, !dbg !3682
  call void @llvm.dbg.value(metadata i8* %1, metadata !3603, metadata !DIExpression()) #11, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()) #11, !dbg !3684
  call void @llvm.dbg.value(metadata i32 0, metadata !3609, metadata !DIExpression()) #11, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %0, metadata !3614, metadata !DIExpression()) #11, !dbg !3687
  call void @llvm.dbg.value(metadata i8* %1, metadata !3615, metadata !DIExpression()) #11, !dbg !3688
  call void @llvm.dbg.value(metadata i8* %2, metadata !3616, metadata !DIExpression()) #11, !dbg !3689
  call void @llvm.dbg.value(metadata i64 -1, metadata !3617, metadata !DIExpression()) #11, !dbg !3690
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3691
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3692, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3618, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2159, metadata !DIExpression()) #11, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %0, metadata !2160, metadata !DIExpression()) #11, !dbg !3696
  call void @llvm.dbg.value(metadata i8* %1, metadata !2161, metadata !DIExpression()) #11, !dbg !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2159, metadata !DIExpression()) #11, !dbg !3694
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3698
  store i32 10, i32* %6, align 8, !dbg !3699, !tbaa !2091
  %7 = icmp ne i8* %0, null, !dbg !3700
  %8 = icmp ne i8* %1, null, !dbg !3701
  %9 = and i1 %7, %8, !dbg !3702
  br i1 %9, label %11, label %10, !dbg !3702

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3703
  unreachable, !dbg !3703

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3704
  store i8* %0, i8** %12, align 8, !dbg !3705, !tbaa !2177
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3706
  store i8* %1, i8** %13, align 8, !dbg !3707, !tbaa !2180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3618, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3693
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3708
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3709
  ret i8* %14, !dbg !3710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3711 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %1, metadata !3716, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %2, metadata !3717, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %3, metadata !3718, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 0, metadata !3609, metadata !DIExpression()) #11, !dbg !3723
  call void @llvm.dbg.value(metadata i8* %0, metadata !3614, metadata !DIExpression()) #11, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %1, metadata !3615, metadata !DIExpression()) #11, !dbg !3726
  call void @llvm.dbg.value(metadata i8* %2, metadata !3616, metadata !DIExpression()) #11, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %3, metadata !3617, metadata !DIExpression()) #11, !dbg !3728
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3729
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3730, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3618, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2159, metadata !DIExpression()) #11, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %0, metadata !2160, metadata !DIExpression()) #11, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2161, metadata !DIExpression()) #11, !dbg !3735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2159, metadata !DIExpression()) #11, !dbg !3732
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3736
  store i32 10, i32* %7, align 8, !dbg !3737, !tbaa !2091
  %8 = icmp ne i8* %0, null, !dbg !3738
  %9 = icmp ne i8* %1, null, !dbg !3739
  %10 = and i1 %8, %9, !dbg !3740
  br i1 %10, label %12, label %11, !dbg !3740

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3741
  unreachable, !dbg !3741

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3742
  store i8* %0, i8** %13, align 8, !dbg !3743, !tbaa !2177
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3744
  store i8* %1, i8** %14, align 8, !dbg !3745, !tbaa !2180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3618, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3731
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3746
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3747
  ret i8* %15, !dbg !3748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3753, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i8* %1, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %2, metadata !3755, metadata !DIExpression()), !dbg !3758
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3759
  ret i8* %4, !dbg !3760
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3761 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %1, metadata !3766, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 0, metadata !3753, metadata !DIExpression()) #11, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %0, metadata !3754, metadata !DIExpression()) #11, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %1, metadata !3755, metadata !DIExpression()) #11, !dbg !3772
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3773
  ret i8* %3, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %1, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %0, metadata !3753, metadata !DIExpression()) #11, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %1, metadata !3754, metadata !DIExpression()) #11, !dbg !3785
  call void @llvm.dbg.value(metadata i64 -1, metadata !3755, metadata !DIExpression()) #11, !dbg !3786
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3787
  ret i8* %3, !dbg !3788
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3791, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i32 0, metadata !3779, metadata !DIExpression()) #11, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %0, metadata !3780, metadata !DIExpression()) #11, !dbg !3795
  call void @llvm.dbg.value(metadata i32 0, metadata !3753, metadata !DIExpression()) #11, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %0, metadata !3754, metadata !DIExpression()) #11, !dbg !3798
  call void @llvm.dbg.value(metadata i64 -1, metadata !3755, metadata !DIExpression()) #11, !dbg !3799
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3800
  ret i8* %2, !dbg !3801
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #8 !dbg !3802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3807, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8* %1, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 -1, metadata !3818, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32 -1, metadata !3819, metadata !DIExpression()), !dbg !3829
  %3 = load i8, i8* %0, align 1, !dbg !3830, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %3, metadata !3820, metadata !DIExpression()), !dbg !3831
  %4 = load i8, i8* %1, align 1, !dbg !3832, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %4, metadata !3821, metadata !DIExpression()), !dbg !3833
  %5 = icmp eq i8 %3, 45, !dbg !3834
  br i1 %5, label %6, label %95, !dbg !3836

; <label>:6:                                      ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !3811, metadata !DIExpression()), !dbg !3825
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %8, metadata !3811, metadata !DIExpression()), !dbg !3825
  %9 = load i8, i8* %8, align 1, !dbg !3839, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %9, metadata !3820, metadata !DIExpression()), !dbg !3831
  %10 = icmp eq i8 %9, 48, !dbg !3840
  br i1 %10, label %6, label %11, !dbg !3841

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !3842
  br i1 %12, label %30, label %13, !dbg !3844

; <label>:13:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !3820, metadata !DIExpression()), !dbg !3831
  %14 = zext i8 %9 to i32, !dbg !3845
  %15 = add nsw i32 %14, -48, !dbg !3845
  %16 = icmp ult i32 %15, 10, !dbg !3845
  br i1 %16, label %197, label %17, !dbg !3848

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()), !dbg !3827
  %18 = icmp eq i8 %4, 48, !dbg !3849
  br i1 %18, label %19, label %24, !dbg !3850

; <label>:19:                                     ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !3817, metadata !DIExpression()), !dbg !3827
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3851
  %22 = load i8, i8* %21, align 1, !dbg !3852, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %22, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %21, metadata !3817, metadata !DIExpression()), !dbg !3827
  %23 = icmp eq i8 %22, 48, !dbg !3849
  br i1 %23, label %19, label %24, !dbg !3850, !llvm.loop !3853

; <label>:24:                                     ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !3856
  call void @llvm.dbg.value(metadata i8 %25, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 undef, metadata !3821, metadata !DIExpression()), !dbg !3833
  %26 = zext i8 %25 to i32, !dbg !3857
  %27 = add nsw i32 %26, -48, !dbg !3857
  %28 = icmp ult i32 %27, 10, !dbg !3857
  %29 = sext i1 %28 to i32, !dbg !3858
  br label %197, !dbg !3859

; <label>:30:                                     ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !3817, metadata !DIExpression()), !dbg !3827
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %32, metadata !3817, metadata !DIExpression()), !dbg !3827
  %33 = load i8, i8* %32, align 1, !dbg !3861, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %33, metadata !3821, metadata !DIExpression()), !dbg !3833
  %34 = icmp eq i8 %33, 48, !dbg !3862
  br i1 %34, label %30, label %35, !dbg !3863

; <label>:35:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 %9, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %8, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %32, metadata !3817, metadata !DIExpression()), !dbg !3827
  %36 = zext i8 %9 to i32, !dbg !3864
  %37 = icmp eq i8 %33, %9, !dbg !3865
  %38 = add nsw i32 %36, -48, !dbg !3866
  %39 = icmp ult i32 %38, 10, !dbg !3866
  %40 = and i1 %39, %37, !dbg !3867
  br i1 %40, label %41, label %55, !dbg !3867

; <label>:41:                                     ; preds = %35, %41
  %42 = phi i8* [ %44, %41 ], [ %8, %35 ]
  %43 = phi i8* [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %42, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %43, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %42, metadata !3811, metadata !DIExpression()), !dbg !3825
  %44 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3868
  %45 = load i8, i8* %44, align 1, !dbg !3870, !tbaa !807
  call void @llvm.dbg.value(metadata i8* %43, metadata !3817, metadata !DIExpression()), !dbg !3827
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !3871
  %47 = load i8, i8* %46, align 1, !dbg !3872, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %47, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 %45, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %44, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %46, metadata !3817, metadata !DIExpression()), !dbg !3827
  %48 = zext i8 %45 to i32, !dbg !3864
  %49 = icmp eq i8 %47, %45, !dbg !3865
  %50 = add nsw i32 %48, -48, !dbg !3866
  %51 = icmp ult i32 %50, 10, !dbg !3866
  %52 = and i1 %49, %51, !dbg !3867
  br i1 %52, label %41, label %53, !dbg !3867

; <label>:53:                                     ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !3864
  br label %55, !dbg !3873

; <label>:55:                                     ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !3874
  %57 = phi i8* [ %32, %35 ], [ %46, %53 ], !dbg !3877
  %58 = phi i8* [ %8, %35 ], [ %44, %53 ], !dbg !3877
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !3877
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !3864
  call void @llvm.dbg.value(metadata i8* %57, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %58, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 %59, metadata !3821, metadata !DIExpression()), !dbg !3833
  %61 = zext i8 %59 to i32, !dbg !3873
  %62 = sub nsw i32 %61, %60, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %62, metadata !3822, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 0, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8* %58, metadata !3811, metadata !DIExpression()), !dbg !3825
  %63 = icmp ult i32 %56, 10, !dbg !3874
  br i1 %63, label %68, label %64, !dbg !3881

; <label>:64:                                     ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !3882
  call void @llvm.dbg.value(metadata i64 %65, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 0, metadata !3824, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 %59, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %57, metadata !3817, metadata !DIExpression()), !dbg !3827
  %66 = add nsw i32 %61, -48, !dbg !3884
  %67 = icmp ult i32 %66, 10, !dbg !3884
  br i1 %67, label %77, label %86, !dbg !3887

; <label>:68:                                     ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi i8* [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8* %70, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %70, metadata !3811, metadata !DIExpression()), !dbg !3825
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !3888
  %72 = load i8, i8* %71, align 1, !dbg !3889, !tbaa !807
  %73 = add i64 %69, 1, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %73, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8 %72, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %71, metadata !3811, metadata !DIExpression()), !dbg !3825
  %74 = zext i8 %72 to i32, !dbg !3874
  %75 = add nsw i32 %74, -48, !dbg !3874
  %76 = icmp ult i32 %75, 10, !dbg !3874
  br i1 %76, label %68, label %64, !dbg !3881, !llvm.loop !3891

; <label>:77:                                     ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi i8* [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !3824, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8* %79, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %79, metadata !3817, metadata !DIExpression()), !dbg !3827
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3894
  %81 = load i8, i8* %80, align 1, !dbg !3895, !tbaa !807
  %82 = add i64 %78, 1, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %82, metadata !3824, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 %81, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %80, metadata !3817, metadata !DIExpression()), !dbg !3827
  %83 = zext i8 %81 to i32, !dbg !3884
  %84 = add nsw i32 %83, -48, !dbg !3884
  %85 = icmp ult i32 %84, 10, !dbg !3884
  br i1 %85, label %77, label %86, !dbg !3887, !llvm.loop !3897

; <label>:86:                                     ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !3900
  call void @llvm.dbg.value(metadata i64 %87, metadata !3824, metadata !DIExpression()), !dbg !3883
  %88 = icmp eq i64 %65, %87, !dbg !3901
  br i1 %88, label %92, label %89, !dbg !3903

; <label>:89:                                     ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !3904
  %91 = select i1 %90, i32 1, i32 -1, !dbg !3905
  br label %197, !dbg !3906

; <label>:92:                                     ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !3907
  %94 = select i1 %93, i32 0, i32 %62, !dbg !3909
  br label %197, !dbg !3909

; <label>:95:                                     ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !3910
  br i1 %96, label %99, label %97, !dbg !3912

; <label>:97:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()), !dbg !3825
  %98 = icmp eq i8 %3, 48, !dbg !3913
  br i1 %98, label %125, label %121, !dbg !3915

; <label>:99:                                     ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !3817, metadata !DIExpression()), !dbg !3827
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !3916
  call void @llvm.dbg.value(metadata i8* %101, metadata !3817, metadata !DIExpression()), !dbg !3827
  %102 = load i8, i8* %101, align 1, !dbg !3918, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %102, metadata !3821, metadata !DIExpression()), !dbg !3833
  %103 = icmp eq i8 %102, 48, !dbg !3919
  br i1 %103, label %99, label %104, !dbg !3920

; <label>:104:                                    ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !3821, metadata !DIExpression()), !dbg !3833
  %105 = zext i8 %102 to i32, !dbg !3921
  %106 = add nsw i32 %105, -48, !dbg !3921
  %107 = icmp ult i32 %106, 10, !dbg !3921
  br i1 %107, label %197, label %108, !dbg !3923

; <label>:108:                                    ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()), !dbg !3825
  %109 = icmp eq i8 %3, 48, !dbg !3924
  br i1 %109, label %110, label %115, !dbg !3925

; <label>:110:                                    ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !3811, metadata !DIExpression()), !dbg !3825
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !3926
  %113 = load i8, i8* %112, align 1, !dbg !3927, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %113, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %112, metadata !3811, metadata !DIExpression()), !dbg !3825
  %114 = icmp eq i8 %113, 48, !dbg !3924
  br i1 %114, label %110, label %115, !dbg !3925, !llvm.loop !3928

; <label>:115:                                    ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !3931
  call void @llvm.dbg.value(metadata i8 %116, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8 undef, metadata !3820, metadata !DIExpression()), !dbg !3831
  %117 = zext i8 %116 to i32, !dbg !3932
  %118 = add nsw i32 %117, -48, !dbg !3932
  %119 = icmp ult i32 %118, 10, !dbg !3932
  %120 = zext i1 %119 to i32, !dbg !3932
  br label %197, !dbg !3933

; <label>:121:                                    ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !3934
  call void @llvm.dbg.value(metadata i8* %122, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 %123, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8 %4, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()), !dbg !3827
  %124 = icmp eq i8 %4, 48, !dbg !3935
  br i1 %124, label %138, label %130, !dbg !3936

; <label>:125:                                    ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !3811, metadata !DIExpression()), !dbg !3825
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !3937
  %128 = load i8, i8* %127, align 1, !dbg !3938, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %128, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %127, metadata !3811, metadata !DIExpression()), !dbg !3825
  %129 = icmp eq i8 %128, 48, !dbg !3913
  br i1 %129, label %125, label %121, !dbg !3915, !llvm.loop !3939

; <label>:130:                                    ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !3934
  call void @llvm.dbg.value(metadata i8* %131, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8 %132, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 %123, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %122, metadata !3811, metadata !DIExpression()), !dbg !3825
  %133 = zext i8 %123 to i32, !dbg !3942
  %134 = icmp eq i8 %123, %132, !dbg !3943
  %135 = add nsw i32 %133, -48, !dbg !3944
  %136 = icmp ult i32 %135, 10, !dbg !3944
  %137 = and i1 %136, %134, !dbg !3945
  br i1 %137, label %143, label %157, !dbg !3945

; <label>:138:                                    ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !3817, metadata !DIExpression()), !dbg !3827
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !3946
  %141 = load i8, i8* %140, align 1, !dbg !3947, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %141, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %140, metadata !3817, metadata !DIExpression()), !dbg !3827
  %142 = icmp eq i8 %141, 48, !dbg !3935
  br i1 %142, label %138, label %130, !dbg !3936, !llvm.loop !3948

; <label>:143:                                    ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %144, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %145, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %144, metadata !3811, metadata !DIExpression()), !dbg !3825
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !3951
  %147 = load i8, i8* %146, align 1, !dbg !3953, !tbaa !807
  call void @llvm.dbg.value(metadata i8* %145, metadata !3817, metadata !DIExpression()), !dbg !3827
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3954
  %149 = load i8, i8* %148, align 1, !dbg !3955, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %149, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 %147, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %146, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %148, metadata !3817, metadata !DIExpression()), !dbg !3827
  %150 = zext i8 %147 to i32, !dbg !3942
  %151 = icmp eq i8 %147, %149, !dbg !3943
  %152 = add nsw i32 %150, -48, !dbg !3944
  %153 = icmp ult i32 %152, 10, !dbg !3944
  %154 = and i1 %151, %153, !dbg !3945
  br i1 %154, label %143, label %155, !dbg !3945

; <label>:155:                                    ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !3942
  br label %157, !dbg !3956

; <label>:157:                                    ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !3957
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !3960
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !3942
  call void @llvm.dbg.value(metadata i8* %159, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %160, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 %161, metadata !3821, metadata !DIExpression()), !dbg !3833
  %163 = zext i8 %161 to i32, !dbg !3956
  %164 = sub nsw i32 %162, %163, !dbg !3961
  call void @llvm.dbg.value(metadata i32 %164, metadata !3822, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 0, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8* %160, metadata !3811, metadata !DIExpression()), !dbg !3825
  %165 = icmp ult i32 %158, 10, !dbg !3957
  br i1 %165, label %170, label %166, !dbg !3962

; <label>:166:                                    ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !3963
  call void @llvm.dbg.value(metadata i64 %167, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 0, metadata !3824, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 %161, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %159, metadata !3817, metadata !DIExpression()), !dbg !3827
  %168 = add nsw i32 %163, -48, !dbg !3964
  %169 = icmp ult i32 %168, 10, !dbg !3964
  br i1 %169, label %179, label %188, !dbg !3967

; <label>:170:                                    ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8* %172, metadata !3811, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* %172, metadata !3811, metadata !DIExpression()), !dbg !3825
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !3968
  %174 = load i8, i8* %173, align 1, !dbg !3969, !tbaa !807
  %175 = add i64 %171, 1, !dbg !3970
  call void @llvm.dbg.value(metadata i64 %175, metadata !3823, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8 %174, metadata !3820, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %173, metadata !3811, metadata !DIExpression()), !dbg !3825
  %176 = zext i8 %174 to i32, !dbg !3957
  %177 = add nsw i32 %176, -48, !dbg !3957
  %178 = icmp ult i32 %177, 10, !dbg !3957
  br i1 %178, label %170, label %166, !dbg !3962, !llvm.loop !3971

; <label>:179:                                    ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !3824, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8* %181, metadata !3817, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %181, metadata !3817, metadata !DIExpression()), !dbg !3827
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3974
  %183 = load i8, i8* %182, align 1, !dbg !3975, !tbaa !807
  %184 = add i64 %180, 1, !dbg !3976
  call void @llvm.dbg.value(metadata i64 %184, metadata !3824, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 %183, metadata !3821, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %182, metadata !3817, metadata !DIExpression()), !dbg !3827
  %185 = zext i8 %183 to i32, !dbg !3964
  %186 = add nsw i32 %185, -48, !dbg !3964
  %187 = icmp ult i32 %186, 10, !dbg !3964
  br i1 %187, label %179, label %188, !dbg !3967, !llvm.loop !3977

; <label>:188:                                    ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !3980
  call void @llvm.dbg.value(metadata i64 %189, metadata !3824, metadata !DIExpression()), !dbg !3883
  %190 = icmp eq i64 %167, %189, !dbg !3981
  br i1 %190, label %194, label %191, !dbg !3983

; <label>:191:                                    ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !3984
  %193 = select i1 %192, i32 -1, i32 1, !dbg !3985
  br label %197, !dbg !3986

; <label>:194:                                    ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !3987
  %196 = select i1 %195, i32 0, i32 %164, !dbg !3989
  br label %197, !dbg !3989

; <label>:197:                                    ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !3990
  ret i32 %198, !dbg !3992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !3993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4005, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %1, metadata !4006, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* %2, metadata !4007, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, metadata !4008, metadata !DIExpression()), !dbg !4012
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !4013
  ret void, !dbg !4014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !4015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4019, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 %1, metadata !4020, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %2, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 %3, metadata !4022, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i8* %4, metadata !4023, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !4024, metadata !DIExpression()), !dbg !4031
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #11, !dbg !4032
  call void @llvm.dbg.value(metadata i8* %7, metadata !4025, metadata !DIExpression()), !dbg !4033
  %8 = icmp eq i8* %7, null, !dbg !4034
  br i1 %8, label %13, label %9, !dbg !4036

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !4037
  br i1 %10, label %12, label %11, !dbg !4040

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* nonnull %7) #11, !dbg !4041
  br label %17, !dbg !4041

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* nonnull %7) #11, !dbg !4042
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #17, !dbg !4043
  %15 = load i32, i32* %14, align 4, !dbg !4043, !tbaa !716
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #11, !dbg !4045
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #11, !dbg !4046
  tail call void @abort() #15, !dbg !4047
  unreachable, !dbg !4047

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #11, !dbg !4048
  ret void, !dbg !4049
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !4050 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4105, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i8* %1, metadata !4106, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i8* %2, metadata !4107, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i8* %3, metadata !4108, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i8** %4, metadata !4109, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %5, metadata !4110, metadata !DIExpression()), !dbg !4116
  %7 = icmp eq i8* %1, null, !dbg !4117
  br i1 %7, label %10, label %8, !dbg !4119

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4120
  br label %12, !dbg !4120

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.120, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4121
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.121, i64 0, i64 0), i32 5) #11, !dbg !4122
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !4122
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.122, i64 0, i64 0), i32 5) #11, !dbg !4123
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4123
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
  ], !dbg !4124

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4125
  unreachable, !dbg !4125

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.123, i64 0, i64 0), i32 5) #11, !dbg !4127
  %20 = load i8*, i8** %4, align 8, !dbg !4127, !tbaa !638
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4127
  br label %146, !dbg !4128

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.124, i64 0, i64 0), i32 5) #11, !dbg !4129
  %24 = load i8*, i8** %4, align 8, !dbg !4129, !tbaa !638
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4129
  %26 = load i8*, i8** %25, align 8, !dbg !4129, !tbaa !638
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4129
  br label %146, !dbg !4130

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.125, i64 0, i64 0), i32 5) #11, !dbg !4131
  %30 = load i8*, i8** %4, align 8, !dbg !4131, !tbaa !638
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4131
  %32 = load i8*, i8** %31, align 8, !dbg !4131, !tbaa !638
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4131
  %34 = load i8*, i8** %33, align 8, !dbg !4131, !tbaa !638
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4131
  br label %146, !dbg !4132

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.126, i64 0, i64 0), i32 5) #11, !dbg !4133
  %38 = load i8*, i8** %4, align 8, !dbg !4133, !tbaa !638
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4133
  %40 = load i8*, i8** %39, align 8, !dbg !4133, !tbaa !638
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4133
  %42 = load i8*, i8** %41, align 8, !dbg !4133, !tbaa !638
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4133
  %44 = load i8*, i8** %43, align 8, !dbg !4133, !tbaa !638
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4133
  br label %146, !dbg !4134

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.127, i64 0, i64 0), i32 5) #11, !dbg !4135
  %48 = load i8*, i8** %4, align 8, !dbg !4135, !tbaa !638
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4135
  %50 = load i8*, i8** %49, align 8, !dbg !4135, !tbaa !638
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4135
  %52 = load i8*, i8** %51, align 8, !dbg !4135, !tbaa !638
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4135
  %54 = load i8*, i8** %53, align 8, !dbg !4135, !tbaa !638
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4135
  %56 = load i8*, i8** %55, align 8, !dbg !4135, !tbaa !638
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4135
  br label %146, !dbg !4136

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.128, i64 0, i64 0), i32 5) #11, !dbg !4137
  %60 = load i8*, i8** %4, align 8, !dbg !4137, !tbaa !638
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4137
  %62 = load i8*, i8** %61, align 8, !dbg !4137, !tbaa !638
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4137
  %64 = load i8*, i8** %63, align 8, !dbg !4137, !tbaa !638
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4137
  %66 = load i8*, i8** %65, align 8, !dbg !4137, !tbaa !638
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4137
  %68 = load i8*, i8** %67, align 8, !dbg !4137, !tbaa !638
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4137
  %70 = load i8*, i8** %69, align 8, !dbg !4137, !tbaa !638
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4137
  br label %146, !dbg !4138

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.129, i64 0, i64 0), i32 5) #11, !dbg !4139
  %74 = load i8*, i8** %4, align 8, !dbg !4139, !tbaa !638
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4139
  %76 = load i8*, i8** %75, align 8, !dbg !4139, !tbaa !638
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4139
  %78 = load i8*, i8** %77, align 8, !dbg !4139, !tbaa !638
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4139
  %80 = load i8*, i8** %79, align 8, !dbg !4139, !tbaa !638
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4139
  %82 = load i8*, i8** %81, align 8, !dbg !4139, !tbaa !638
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4139
  %84 = load i8*, i8** %83, align 8, !dbg !4139, !tbaa !638
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4139
  %86 = load i8*, i8** %85, align 8, !dbg !4139, !tbaa !638
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4139
  br label %146, !dbg !4140

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.130, i64 0, i64 0), i32 5) #11, !dbg !4141
  %90 = load i8*, i8** %4, align 8, !dbg !4141, !tbaa !638
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4141
  %92 = load i8*, i8** %91, align 8, !dbg !4141, !tbaa !638
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4141
  %94 = load i8*, i8** %93, align 8, !dbg !4141, !tbaa !638
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4141
  %96 = load i8*, i8** %95, align 8, !dbg !4141, !tbaa !638
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4141
  %98 = load i8*, i8** %97, align 8, !dbg !4141, !tbaa !638
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4141
  %100 = load i8*, i8** %99, align 8, !dbg !4141, !tbaa !638
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4141
  %102 = load i8*, i8** %101, align 8, !dbg !4141, !tbaa !638
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4141
  %104 = load i8*, i8** %103, align 8, !dbg !4141, !tbaa !638
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4141
  br label %146, !dbg !4142

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.131, i64 0, i64 0), i32 5) #11, !dbg !4143
  %108 = load i8*, i8** %4, align 8, !dbg !4143, !tbaa !638
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4143
  %110 = load i8*, i8** %109, align 8, !dbg !4143, !tbaa !638
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4143
  %112 = load i8*, i8** %111, align 8, !dbg !4143, !tbaa !638
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4143
  %114 = load i8*, i8** %113, align 8, !dbg !4143, !tbaa !638
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4143
  %116 = load i8*, i8** %115, align 8, !dbg !4143, !tbaa !638
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4143
  %118 = load i8*, i8** %117, align 8, !dbg !4143, !tbaa !638
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4143
  %120 = load i8*, i8** %119, align 8, !dbg !4143, !tbaa !638
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4143
  %122 = load i8*, i8** %121, align 8, !dbg !4143, !tbaa !638
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4143
  %124 = load i8*, i8** %123, align 8, !dbg !4143, !tbaa !638
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4143
  br label %146, !dbg !4144

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.132, i64 0, i64 0), i32 5) #11, !dbg !4145
  %128 = load i8*, i8** %4, align 8, !dbg !4145, !tbaa !638
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4145
  %130 = load i8*, i8** %129, align 8, !dbg !4145, !tbaa !638
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4145
  %132 = load i8*, i8** %131, align 8, !dbg !4145, !tbaa !638
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4145
  %134 = load i8*, i8** %133, align 8, !dbg !4145, !tbaa !638
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4145
  %136 = load i8*, i8** %135, align 8, !dbg !4145, !tbaa !638
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4145
  %138 = load i8*, i8** %137, align 8, !dbg !4145, !tbaa !638
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4145
  %140 = load i8*, i8** %139, align 8, !dbg !4145, !tbaa !638
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4145
  %142 = load i8*, i8** %141, align 8, !dbg !4145, !tbaa !638
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4145
  %144 = load i8*, i8** %143, align 8, !dbg !4145, !tbaa !638
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4145
  br label %146, !dbg !4146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4148 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4152, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i8* %1, metadata !4153, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* %2, metadata !4154, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i8* %3, metadata !4155, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i8** %4, metadata !4156, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 0, metadata !4157, metadata !DIExpression()), !dbg !4163
  br label %6, !dbg !4164

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4166
  call void @llvm.dbg.value(metadata i64 %7, metadata !4157, metadata !DIExpression()), !dbg !4163
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4168
  %9 = load i8*, i8** %8, align 8, !dbg !4168, !tbaa !638
  %10 = icmp eq i8* %9, null, !dbg !4169
  %11 = add i64 %7, 1, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %11, metadata !4157, metadata !DIExpression()), !dbg !4163
  br i1 %10, label %12, label %6, !dbg !4169, !llvm.loop !4171

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %7, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %7, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %7, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %7, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %7, metadata !4157, metadata !DIExpression()), !dbg !4163
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4173
  ret void, !dbg !4174
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4175 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4186, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i8* %1, metadata !4187, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i8* %2, metadata !4188, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i8* %3, metadata !4189, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4190, metadata !DIExpression()), !dbg !4198
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4199
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4199
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4192, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 0, metadata !4191, metadata !DIExpression()), !dbg !4201
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4191, metadata !DIExpression()), !dbg !4201
  %11 = load i32, i32* %8, align 8, !dbg !4202
  %12 = icmp ult i32 %11, 41, !dbg !4202
  br i1 %12, label %13, label %18, !dbg !4202

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4202
  %15 = sext i32 %11 to i64, !dbg !4202
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4202
  %17 = add i32 %11, 8, !dbg !4202
  store i32 %17, i32* %8, align 8, !dbg !4202
  br label %21, !dbg !4202

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4202
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4202
  store i8* %20, i8** %10, align 8, !dbg !4202
  br label %21, !dbg !4202

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4202
  %25 = load i8*, i8** %24, align 8, !dbg !4202
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4205
  store i8* %25, i8** %26, align 16, !dbg !4206, !tbaa !638
  %27 = icmp eq i8* %25, null, !dbg !4207
  br i1 %27, label %30, label %28, !dbg !4208

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 1, metadata !4191, metadata !DIExpression()), !dbg !4201
  %29 = icmp ult i32 %22, 41, !dbg !4202
  br i1 %29, label %35, label %32, !dbg !4202

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4209
  call void @llvm.dbg.value(metadata i64 %31, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %31, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4210
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !4211
  ret void, !dbg !4211

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4202
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4202
  store i8* %34, i8** %10, align 8, !dbg !4202
  br label %40, !dbg !4202

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4202
  %37 = sext i32 %22 to i64, !dbg !4202
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4202
  %39 = add i32 %22, 8, !dbg !4202
  store i32 %39, i32* %8, align 8, !dbg !4202
  br label %40, !dbg !4202

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4202
  %44 = load i8*, i8** %43, align 8, !dbg !4202
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4205
  store i8* %44, i8** %45, align 8, !dbg !4206, !tbaa !638
  %46 = icmp eq i8* %44, null, !dbg !4207
  br i1 %46, label %30, label %47, !dbg !4208

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 2, metadata !4191, metadata !DIExpression()), !dbg !4201
  %48 = icmp ult i32 %41, 41, !dbg !4202
  br i1 %48, label %52, label %49, !dbg !4202

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4202
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4202
  store i8* %51, i8** %10, align 8, !dbg !4202
  br label %57, !dbg !4202

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4202
  %54 = sext i32 %41 to i64, !dbg !4202
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4202
  %56 = add i32 %41, 8, !dbg !4202
  store i32 %56, i32* %8, align 8, !dbg !4202
  br label %57, !dbg !4202

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4202
  %61 = load i8*, i8** %60, align 8, !dbg !4202
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4205
  store i8* %61, i8** %62, align 16, !dbg !4206, !tbaa !638
  %63 = icmp eq i8* %61, null, !dbg !4207
  br i1 %63, label %30, label %64, !dbg !4208

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 3, metadata !4191, metadata !DIExpression()), !dbg !4201
  %65 = icmp ult i32 %58, 41, !dbg !4202
  br i1 %65, label %69, label %66, !dbg !4202

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4202
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4202
  store i8* %68, i8** %10, align 8, !dbg !4202
  br label %74, !dbg !4202

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4202
  %71 = sext i32 %58 to i64, !dbg !4202
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4202
  %73 = add i32 %58, 8, !dbg !4202
  store i32 %73, i32* %8, align 8, !dbg !4202
  br label %74, !dbg !4202

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4202
  %78 = load i8*, i8** %77, align 8, !dbg !4202
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4205
  store i8* %78, i8** %79, align 8, !dbg !4206, !tbaa !638
  %80 = icmp eq i8* %78, null, !dbg !4207
  br i1 %80, label %30, label %81, !dbg !4208

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 4, metadata !4191, metadata !DIExpression()), !dbg !4201
  %82 = icmp ult i32 %75, 41, !dbg !4202
  br i1 %82, label %86, label %83, !dbg !4202

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4202
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4202
  store i8* %85, i8** %10, align 8, !dbg !4202
  br label %91, !dbg !4202

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4202
  %88 = sext i32 %75 to i64, !dbg !4202
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4202
  %90 = add i32 %75, 8, !dbg !4202
  store i32 %90, i32* %8, align 8, !dbg !4202
  br label %91, !dbg !4202

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4202
  %95 = load i8*, i8** %94, align 8, !dbg !4202
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4205
  store i8* %95, i8** %96, align 16, !dbg !4206, !tbaa !638
  %97 = icmp eq i8* %95, null, !dbg !4207
  br i1 %97, label %30, label %98, !dbg !4208

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 5, metadata !4191, metadata !DIExpression()), !dbg !4201
  %99 = icmp ult i32 %92, 41, !dbg !4202
  br i1 %99, label %103, label %100, !dbg !4202

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4202
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4202
  store i8* %102, i8** %10, align 8, !dbg !4202
  br label %108, !dbg !4202

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4202
  %105 = sext i32 %92 to i64, !dbg !4202
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4202
  %107 = add i32 %92, 8, !dbg !4202
  store i32 %107, i32* %8, align 8, !dbg !4202
  br label %108, !dbg !4202

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4202
  %111 = load i8*, i8** %110, align 8, !dbg !4202
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4205
  store i8* %111, i8** %112, align 8, !dbg !4206, !tbaa !638
  %113 = icmp eq i8* %111, null, !dbg !4207
  br i1 %113, label %30, label %114, !dbg !4208

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 6, metadata !4191, metadata !DIExpression()), !dbg !4201
  %115 = load i8*, i8** %10, align 8, !dbg !4202
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4202
  store i8* %116, i8** %10, align 8, !dbg !4202
  %117 = bitcast i8* %115 to i8**, !dbg !4202
  %118 = load i8*, i8** %117, align 8, !dbg !4202
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4205
  store i8* %118, i8** %119, align 16, !dbg !4206, !tbaa !638
  %120 = icmp eq i8* %118, null, !dbg !4207
  br i1 %120, label %30, label %121, !dbg !4208

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 7, metadata !4191, metadata !DIExpression()), !dbg !4201
  %122 = load i8*, i8** %10, align 8, !dbg !4202
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4202
  store i8* %123, i8** %10, align 8, !dbg !4202
  %124 = bitcast i8* %122 to i8**, !dbg !4202
  %125 = load i8*, i8** %124, align 8, !dbg !4202
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4205
  store i8* %125, i8** %126, align 8, !dbg !4206, !tbaa !638
  %127 = icmp eq i8* %125, null, !dbg !4207
  br i1 %127, label %30, label %128, !dbg !4208

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 8, metadata !4191, metadata !DIExpression()), !dbg !4201
  %129 = load i8*, i8** %10, align 8, !dbg !4202
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4202
  store i8* %130, i8** %10, align 8, !dbg !4202
  %131 = bitcast i8* %129 to i8**, !dbg !4202
  %132 = load i8*, i8** %131, align 8, !dbg !4202
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4205
  store i8* %132, i8** %133, align 16, !dbg !4206, !tbaa !638
  %134 = icmp eq i8* %132, null, !dbg !4207
  br i1 %134, label %30, label %135, !dbg !4208

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4191, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 9, metadata !4191, metadata !DIExpression()), !dbg !4201
  %136 = load i8*, i8** %10, align 8, !dbg !4202
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4202
  store i8* %137, i8** %10, align 8, !dbg !4202
  %138 = bitcast i8* %136 to i8**, !dbg !4202
  %139 = load i8*, i8** %138, align 8, !dbg !4202
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4205
  store i8* %139, i8** %140, align 8, !dbg !4206, !tbaa !638
  %141 = icmp eq i8* %139, null, !dbg !4207
  %142 = select i1 %141, i64 9, i64 10, !dbg !4208
  br label %30, !dbg !4208
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4212 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4216, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i8* %1, metadata !4217, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i8* %2, metadata !4218, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i8* %3, metadata !4219, metadata !DIExpression()), !dbg !4228
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4229
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4229
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4220, metadata !DIExpression()), !dbg !4230
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4231
  call void @llvm.va_start(i8* nonnull %6), !dbg !4231
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4232
  call void @llvm.va_end(i8* nonnull %6), !dbg !4233
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !4234
  ret void, !dbg !4234
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4235 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.135, i64 0, i64 0), i32 5) #11, !dbg !4236
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.136, i64 0, i64 0)) #11, !dbg !4236
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.137, i64 0, i64 0), i32 5) #11, !dbg !4237
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.138, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.139, i64 0, i64 0)) #11, !dbg !4237
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.140, i64 0, i64 0), i32 5) #11, !dbg !4238
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4238, !tbaa !638
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4238
  ret void, !dbg !4239
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4240 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %1, metadata !4245, metadata !DIExpression()), !dbg !4247
  %3 = udiv i64 9223372036854775807, %1, !dbg !4248
  %4 = icmp ult i64 %3, %0, !dbg !4248
  br i1 %4, label %5, label %6, !dbg !4250

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4251
  unreachable, !dbg !4251

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4252
  call void @llvm.dbg.value(metadata i64 %7, metadata !4253, metadata !DIExpression()) #11, !dbg !4260
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4262
  call void @llvm.dbg.value(metadata i8* %8, metadata !4259, metadata !DIExpression()) #11, !dbg !4263
  %9 = icmp eq i8* %8, null, !dbg !4264
  %10 = icmp ne i64 %7, 0, !dbg !4266
  %11 = and i1 %10, %9, !dbg !4267
  br i1 %11, label %12, label %13, !dbg !4267

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4268
  unreachable, !dbg !4268

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4269
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4254 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()), !dbg !4270
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4271
  call void @llvm.dbg.value(metadata i8* %2, metadata !4259, metadata !DIExpression()), !dbg !4272
  %3 = icmp eq i8* %2, null, !dbg !4273
  %4 = icmp ne i64 %0, 0, !dbg !4274
  %5 = and i1 %4, %3, !dbg !4275
  br i1 %5, label %6, label %7, !dbg !4275

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4276
  unreachable, !dbg !4276

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4277
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4282, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %1, metadata !4283, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i64 %2, metadata !4284, metadata !DIExpression()), !dbg !4287
  %4 = udiv i64 9223372036854775807, %2, !dbg !4288
  %5 = icmp ult i64 %4, %1, !dbg !4288
  br i1 %5, label %6, label %7, !dbg !4290

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4291
  unreachable, !dbg !4291

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4292
  call void @llvm.dbg.value(metadata i8* %0, metadata !4293, metadata !DIExpression()) #11, !dbg !4299
  call void @llvm.dbg.value(metadata i64 %8, metadata !4298, metadata !DIExpression()) #11, !dbg !4301
  %9 = icmp eq i64 %8, 0, !dbg !4302
  %10 = icmp ne i8* %0, null, !dbg !4304
  %11 = and i1 %10, %9, !dbg !4305
  br i1 %11, label %12, label %13, !dbg !4305

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4306
  br label %19, !dbg !4308

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4309
  call void @llvm.dbg.value(metadata i8* %14, metadata !4293, metadata !DIExpression()) #11, !dbg !4299
  %15 = icmp eq i8* %14, null, !dbg !4310
  %16 = icmp ne i64 %8, 0, !dbg !4312
  %17 = and i1 %16, %15, !dbg !4313
  br i1 %17, label %18, label %19, !dbg !4313

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4314
  unreachable, !dbg !4314

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4315
  ret i8* %20, !dbg !4316
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4294 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4293, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4318
  %3 = icmp eq i64 %1, 0, !dbg !4319
  %4 = icmp ne i8* %0, null, !dbg !4320
  %5 = and i1 %4, %3, !dbg !4321
  br i1 %5, label %6, label %7, !dbg !4321

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4322
  br label %13, !dbg !4323

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4324
  call void @llvm.dbg.value(metadata i8* %8, metadata !4293, metadata !DIExpression()), !dbg !4317
  %9 = icmp eq i8* %8, null, !dbg !4325
  %10 = icmp ne i64 %1, 0, !dbg !4326
  %11 = and i1 %10, %9, !dbg !4327
  br i1 %11, label %12, label %13, !dbg !4327

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4328
  unreachable, !dbg !4328

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4329
  ret i8* %14, !dbg !4330
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %2, metadata !185, metadata !DIExpression()), !dbg !4333
  %4 = load i64, i64* %1, align 8, !dbg !4334, !tbaa !3133
  call void @llvm.dbg.value(metadata i64 %4, metadata !186, metadata !DIExpression()), !dbg !4335
  %5 = icmp eq i8* %0, null, !dbg !4336
  br i1 %5, label %6, label %20, !dbg !4338

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4339
  br i1 %7, label %8, label %13, !dbg !4342

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4343
  call void @llvm.dbg.value(metadata i64 %9, metadata !186, metadata !DIExpression()), !dbg !4335
  %10 = icmp ugt i64 %2, 128, !dbg !4345
  %11 = zext i1 %10 to i64, !dbg !4345
  %12 = add nuw nsw i64 %9, %11, !dbg !4346
  call void @llvm.dbg.value(metadata i64 %12, metadata !186, metadata !DIExpression()), !dbg !4335
  br label %13, !dbg !4347

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4348
  call void @llvm.dbg.value(metadata i64 %14, metadata !186, metadata !DIExpression()), !dbg !4335
  %15 = udiv i64 9223372036854775807, %2, !dbg !4349
  %16 = icmp ult i64 %15, %14, !dbg !4349
  br i1 %16, label %19, label %17, !dbg !4351

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !4335
  store i64 %14, i64* %1, align 8, !dbg !4352, !tbaa !3133
  %18 = mul i64 %14, %2, !dbg !4353
  call void @llvm.dbg.value(metadata i8* %0, metadata !4293, metadata !DIExpression()) #11, !dbg !4354
  call void @llvm.dbg.value(metadata i64 %28, metadata !4298, metadata !DIExpression()) #11, !dbg !4356
  br label %31, !dbg !4357

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4358
  unreachable, !dbg !4358

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4359
  %22 = icmp ugt i64 %21, %4, !dbg !4362
  br i1 %22, label %24, label %23, !dbg !4363

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4364
  unreachable, !dbg !4364

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4365
  %26 = add i64 %4, 1, !dbg !4366
  %27 = add i64 %26, %25, !dbg !4367
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !4335
  store i64 %27, i64* %1, align 8, !dbg !4352, !tbaa !3133
  %28 = mul i64 %27, %2, !dbg !4353
  call void @llvm.dbg.value(metadata i8* %0, metadata !4293, metadata !DIExpression()) #11, !dbg !4354
  call void @llvm.dbg.value(metadata i64 %28, metadata !4298, metadata !DIExpression()) #11, !dbg !4356
  %29 = icmp eq i64 %28, 0, !dbg !4368
  br i1 %29, label %30, label %31, !dbg !4357

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !4369
  br label %38, !dbg !4370

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !4371
  call void @llvm.dbg.value(metadata i8* %33, metadata !4293, metadata !DIExpression()) #11, !dbg !4354
  %34 = icmp eq i8* %33, null, !dbg !4372
  %35 = icmp ne i64 %32, 0, !dbg !4373
  %36 = and i1 %35, %34, !dbg !4374
  br i1 %36, label %37, label %38, !dbg !4374

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4375
  unreachable, !dbg !4375

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4376
  ret i8* %39, !dbg !4377
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4378 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4380, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()) #11, !dbg !4382
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4384
  call void @llvm.dbg.value(metadata i8* %2, metadata !4259, metadata !DIExpression()) #11, !dbg !4385
  %3 = icmp eq i8* %2, null, !dbg !4386
  %4 = icmp ne i64 %0, 0, !dbg !4387
  %5 = and i1 %4, %3, !dbg !4388
  br i1 %5, label %6, label %7, !dbg !4388

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4389
  unreachable, !dbg !4389

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4391 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4395, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i64* %1, metadata !4396, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()) #11, !dbg !4399
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()) #11, !dbg !4401
  call void @llvm.dbg.value(metadata i64 1, metadata !185, metadata !DIExpression()) #11, !dbg !4402
  %3 = load i64, i64* %1, align 8, !dbg !4403, !tbaa !3133
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #11, !dbg !4404
  %4 = icmp eq i8* %0, null, !dbg !4405
  br i1 %4, label %5, label %12, !dbg !4406

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4407
  br i1 %6, label %9, label %7, !dbg !4408

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #11, !dbg !4404
  %8 = icmp slt i64 %3, 0, !dbg !4409
  br i1 %8, label %11, label %9, !dbg !4410

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #11, !dbg !4404
  store i64 %10, i64* %1, align 8, !dbg !4411, !tbaa !3133
  call void @llvm.dbg.value(metadata i8* %0, metadata !4293, metadata !DIExpression()) #11, !dbg !4412
  call void @llvm.dbg.value(metadata i64 %18, metadata !4298, metadata !DIExpression()) #11, !dbg !4414
  br label %21, !dbg !4415

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4416
  unreachable, !dbg !4416

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4417
  br i1 %13, label %15, label %14, !dbg !4418

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4419
  unreachable, !dbg !4419

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4420
  %17 = add i64 %3, 1, !dbg !4421
  %18 = add i64 %17, %16, !dbg !4422
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #11, !dbg !4404
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #11, !dbg !4404
  store i64 %18, i64* %1, align 8, !dbg !4411, !tbaa !3133
  call void @llvm.dbg.value(metadata i8* %0, metadata !4293, metadata !DIExpression()) #11, !dbg !4412
  call void @llvm.dbg.value(metadata i64 %18, metadata !4298, metadata !DIExpression()) #11, !dbg !4414
  %19 = icmp eq i64 %18, 0, !dbg !4423
  br i1 %19, label %20, label %21, !dbg !4415

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !4424
  br label %28, !dbg !4425

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !4426
  call void @llvm.dbg.value(metadata i8* %23, metadata !4293, metadata !DIExpression()) #11, !dbg !4412
  %24 = icmp eq i8* %23, null, !dbg !4427
  %25 = icmp ne i64 %22, 0, !dbg !4428
  %26 = and i1 %25, %24, !dbg !4429
  br i1 %26, label %27, label %28, !dbg !4429

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4430
  unreachable, !dbg !4430

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4431
  ret i8* %29, !dbg !4432
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4433 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4435, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()) #11, !dbg !4437
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4439
  call void @llvm.dbg.value(metadata i8* %2, metadata !4259, metadata !DIExpression()) #11, !dbg !4440
  %3 = icmp eq i8* %2, null, !dbg !4441
  %4 = icmp ne i64 %0, 0, !dbg !4442
  %5 = and i1 %4, %3, !dbg !4443
  br i1 %5, label %6, label %7, !dbg !4443

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4444
  unreachable, !dbg !4444

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4445
  ret i8* %2, !dbg !4446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4447 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4449, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 %1, metadata !4450, metadata !DIExpression()), !dbg !4453
  %3 = udiv i64 9223372036854775807, %1, !dbg !4454
  %4 = icmp ult i64 %3, %0, !dbg !4454
  br i1 %4, label %8, label %5, !dbg !4456

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4457
  call void @llvm.dbg.value(metadata i8* %6, metadata !4451, metadata !DIExpression()), !dbg !4458
  %7 = icmp eq i8* %6, null, !dbg !4459
  br i1 %7, label %8, label %9, !dbg !4460

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4461
  unreachable, !dbg !4461

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4469, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %1, metadata !4470, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %1, metadata !4253, metadata !DIExpression()) #11, !dbg !4473
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4475
  call void @llvm.dbg.value(metadata i8* %3, metadata !4259, metadata !DIExpression()) #11, !dbg !4476
  %4 = icmp eq i8* %3, null, !dbg !4477
  %5 = icmp ne i64 %1, 0, !dbg !4478
  %6 = and i1 %5, %4, !dbg !4479
  br i1 %6, label %7, label %8, !dbg !4479

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4480
  unreachable, !dbg !4480

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4481
  ret i8* %3, !dbg !4482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4485, metadata !DIExpression()), !dbg !4486
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4487
  %3 = add i64 %2, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i8* %0, metadata !4469, metadata !DIExpression()) #11, !dbg !4489
  call void @llvm.dbg.value(metadata i64 %3, metadata !4470, metadata !DIExpression()) #11, !dbg !4491
  call void @llvm.dbg.value(metadata i64 %3, metadata !4253, metadata !DIExpression()) #11, !dbg !4492
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4494
  call void @llvm.dbg.value(metadata i8* %4, metadata !4259, metadata !DIExpression()) #11, !dbg !4495
  %5 = icmp eq i8* %4, null, !dbg !4496
  %6 = icmp ne i64 %3, 0, !dbg !4497
  %7 = and i1 %6, %5, !dbg !4498
  br i1 %7, label %8, label %9, !dbg !4498

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4499
  unreachable, !dbg !4499

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4500
  ret i8* %4, !dbg !4501
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4502 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4504, !tbaa !716
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.151, i64 0, i64 0), i32 5) #11, !dbg !4505
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.152, i64 0, i64 0), i8* %2) #11, !dbg !4506
  tail call void @abort() #15, !dbg !4507
  unreachable, !dbg !4507
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !4508 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4520, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4521, metadata !DIExpression()), !dbg !4527
  %4 = bitcast i8** %3 to i8*, !dbg !4528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !4528
  call void @llvm.dbg.value(metadata i64 0, metadata !4523, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i8* %0, metadata !4525, metadata !DIExpression()), !dbg !4530
  br label %5, !dbg !4531

; <label>:5:                                      ; preds = %13, %2
  %6 = phi i64 [ 0, %2 ], [ %15, %13 ], !dbg !4533
  %7 = phi i8* [ %0, %2 ], [ %14, %13 ], !dbg !4533
  call void @llvm.dbg.value(metadata i8* %7, metadata !4525, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i64 %6, metadata !4523, metadata !DIExpression()), !dbg !4529
  %8 = load i8, i8* %7, align 1, !dbg !4536, !tbaa !807
  switch i8 %8, label %18 [
    i8 0, label %16
    i8 37, label %9
  ], !dbg !4538

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !4539
  call void @llvm.dbg.value(metadata i8* %10, metadata !4525, metadata !DIExpression()), !dbg !4530
  %11 = load i8, i8* %10, align 1, !dbg !4540, !tbaa !807
  %12 = icmp eq i8 %11, 115, !dbg !4542
  br i1 %12, label %13, label %18, !dbg !4543

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !4544
  call void @llvm.dbg.value(metadata i8* %14, metadata !4525, metadata !DIExpression()), !dbg !4530
  %15 = add i64 %6, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 %15, metadata !4523, metadata !DIExpression()), !dbg !4529
  br label %5, !dbg !4546, !llvm.loop !4547

; <label>:16:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i64 %6, metadata !4523, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %6, metadata !4523, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %6, metadata !4523, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %6, metadata !4523, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %6, metadata !4523, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %6, metadata !4523, metadata !DIExpression()), !dbg !4529
  %17 = tail call fastcc i8* @xstrcat(i64 %6, %struct.__va_list_tag* %1), !dbg !4550
  br label %28

; <label>:18:                                     ; preds = %5, %9
  call void @llvm.dbg.value(metadata i8** %3, metadata !4522, metadata !DIExpression(DW_OP_deref)), !dbg !4551
  call void @llvm.dbg.value(metadata i8** %3, metadata !4552, metadata !DIExpression()) #11, !dbg !4562
  call void @llvm.dbg.value(metadata i8* %0, metadata !4560, metadata !DIExpression()) #11, !dbg !4562
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4561, metadata !DIExpression()) #11, !dbg !4562
  %19 = call i32 @__vasprintf_chk(i8** nonnull %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #11, !dbg !4565
  %20 = icmp slt i32 %19, 0, !dbg !4566
  br i1 %20, label %21, label %26, !dbg !4567

; <label>:21:                                     ; preds = %18
  %22 = tail call i32* @__errno_location() #17, !dbg !4568
  %23 = load i32, i32* %22, align 4, !dbg !4568, !tbaa !716
  %24 = icmp eq i32 %23, 12, !dbg !4571
  br i1 %24, label %25, label %28, !dbg !4572

; <label>:25:                                     ; preds = %21
  call void @xalloc_die() #15, !dbg !4573
  unreachable, !dbg !4573

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %3, align 8, !dbg !4574, !tbaa !638
  call void @llvm.dbg.value(metadata i8* %27, metadata !4522, metadata !DIExpression()), !dbg !4551
  br label %28, !dbg !4575

; <label>:28:                                     ; preds = %16, %21, %26
  %29 = phi i8* [ %27, %26 ], [ %17, %16 ], [ null, %21 ], !dbg !4576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !4577
  ret i8* %29, !dbg !4577
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @xstrcat(i64, %struct.__va_list_tag*) unnamed_addr #7 !dbg !4578 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !4582, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4583, metadata !DIExpression()), !dbg !4603
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4604
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4604
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4585, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i64 0, metadata !4590, metadata !DIExpression()), !dbg !4606
  %5 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4607
  call void @llvm.va_copy(i8* nonnull %4, i8* %5), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %0, metadata !4591, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 0, metadata !4590, metadata !DIExpression()), !dbg !4606
  %6 = icmp eq i64 %0, 0, !dbg !4609
  br i1 %6, label %7, label %9, !dbg !4610

; <label>:7:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i64 %35, metadata !4590, metadata !DIExpression()), !dbg !4606
  call void @llvm.va_end(i8* nonnull %4), !dbg !4611
  %8 = call noalias i8* @xmalloc(i64 1) #11, !dbg !4612
  call void @llvm.dbg.value(metadata i8* %44, metadata !4584, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i8* %44, metadata !4592, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %0, metadata !4591, metadata !DIExpression()), !dbg !4608
  br label %70, !dbg !4615

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %13 = load i32, i32* %10, align 16, !dbg !4616
  br label %14, !dbg !4610

; <label>:14:                                     ; preds = %9, %27
  %15 = phi i32 [ %13, %9 ], [ %28, %27 ], !dbg !4616
  %16 = phi i64 [ 0, %9 ], [ %35, %27 ]
  %17 = phi i64 [ %0, %9 ], [ %36, %27 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !4590, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i64 %17, metadata !4591, metadata !DIExpression()), !dbg !4608
  %18 = icmp ult i32 %15, 41, !dbg !4616
  br i1 %18, label %19, label %24, !dbg !4616

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %11, align 16, !dbg !4616
  %21 = sext i32 %15 to i64, !dbg !4616
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !4616
  %23 = add i32 %15, 8, !dbg !4616
  store i32 %23, i32* %10, align 16, !dbg !4616
  br label %27, !dbg !4616

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %12, align 8, !dbg !4616
  %26 = getelementptr i8, i8* %25, i64 8, !dbg !4616
  store i8* %26, i8** %12, align 8, !dbg !4616
  br label %27, !dbg !4616

; <label>:27:                                     ; preds = %24, %19
  %28 = phi i32 [ %23, %19 ], [ %15, %24 ]
  %29 = phi i8* [ %22, %19 ], [ %25, %24 ]
  %30 = bitcast i8* %29 to i8**, !dbg !4616
  %31 = load i8*, i8** %30, align 8, !dbg !4616
  call void @llvm.dbg.value(metadata i8* %31, metadata !4593, metadata !DIExpression()), !dbg !4617
  %32 = call i64 @strlen(i8* %31) #14, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %16, metadata !4619, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %32, metadata !4625, metadata !DIExpression()), !dbg !4629
  %33 = add i64 %32, %16, !dbg !4630
  call void @llvm.dbg.value(metadata i64 %33, metadata !4626, metadata !DIExpression()), !dbg !4631
  %34 = icmp ult i64 %33, %16, !dbg !4632
  %35 = select i1 %34, i64 -1, i64 %33, !dbg !4633
  %36 = add i64 %17, -1, !dbg !4634
  call void @llvm.dbg.value(metadata i64 %35, metadata !4590, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i64 %36, metadata !4591, metadata !DIExpression()), !dbg !4608
  %37 = icmp eq i64 %36, 0, !dbg !4609
  br i1 %37, label %38, label %14, !dbg !4610, !llvm.loop !4635

; <label>:38:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i64 %35, metadata !4590, metadata !DIExpression()), !dbg !4606
  call void @llvm.va_end(i8* nonnull %4), !dbg !4611
  %39 = icmp ugt i64 %35, 2147483647, !dbg !4637
  br i1 %39, label %40, label %42, !dbg !4639

; <label>:40:                                     ; preds = %38
  %41 = tail call i32* @__errno_location() #17, !dbg !4640
  store i32 75, i32* %41, align 4, !dbg !4642, !tbaa !716
  br label %73, !dbg !4643

; <label>:42:                                     ; preds = %38
  %43 = add i64 %35, 1, !dbg !4612
  %44 = call noalias i8* @xmalloc(i64 %43) #11, !dbg !4612
  call void @llvm.dbg.value(metadata i8* %44, metadata !4584, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i8* %44, metadata !4592, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %0, metadata !4591, metadata !DIExpression()), !dbg !4608
  br i1 %6, label %70, label %45, !dbg !4615

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %49, !dbg !4615

; <label>:49:                                     ; preds = %45, %62
  %50 = phi i64 [ %0, %45 ], [ %68, %62 ]
  %51 = phi i8* [ %44, %45 ], [ %67, %62 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !4591, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i8* %51, metadata !4592, metadata !DIExpression()), !dbg !4614
  %52 = load i32, i32* %46, align 8, !dbg !4644
  %53 = icmp ult i32 %52, 41, !dbg !4644
  br i1 %53, label %54, label %59, !dbg !4644

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %47, align 8, !dbg !4644
  %56 = sext i32 %52 to i64, !dbg !4644
  %57 = getelementptr i8, i8* %55, i64 %56, !dbg !4644
  %58 = add i32 %52, 8, !dbg !4644
  store i32 %58, i32* %46, align 8, !dbg !4644
  br label %62, !dbg !4644

; <label>:59:                                     ; preds = %49
  %60 = load i8*, i8** %48, align 8, !dbg !4644
  %61 = getelementptr i8, i8* %60, i64 8, !dbg !4644
  store i8* %61, i8** %48, align 8, !dbg !4644
  br label %62, !dbg !4644

; <label>:62:                                     ; preds = %59, %54
  %63 = phi i8* [ %57, %54 ], [ %60, %59 ]
  %64 = bitcast i8* %63 to i8**, !dbg !4644
  %65 = load i8*, i8** %64, align 8, !dbg !4644
  call void @llvm.dbg.value(metadata i8* %65, metadata !4597, metadata !DIExpression()), !dbg !4645
  %66 = call i64 @strlen(i8* %65) #14, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %66, metadata !4601, metadata !DIExpression()), !dbg !4647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 %65, i64 %66, i1 false), !dbg !4648
  %67 = getelementptr inbounds i8, i8* %51, i64 %66, !dbg !4649
  %68 = add i64 %50, -1, !dbg !4650
  call void @llvm.dbg.value(metadata i64 %68, metadata !4591, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i8* %67, metadata !4592, metadata !DIExpression()), !dbg !4614
  %69 = icmp eq i64 %68, 0, !dbg !4651
  br i1 %69, label %70, label %49, !dbg !4615, !llvm.loop !4652

; <label>:70:                                     ; preds = %62, %7, %42
  %71 = phi i8* [ %44, %42 ], [ %8, %7 ], [ %44, %62 ]
  %72 = phi i8* [ %44, %42 ], [ %8, %7 ], [ %67, %62 ], !dbg !4654
  call void @llvm.dbg.value(metadata i8* %72, metadata !4592, metadata !DIExpression()), !dbg !4614
  store i8 0, i8* %72, align 1, !dbg !4655, !tbaa !807
  br label %73, !dbg !4656

; <label>:73:                                     ; preds = %70, %40
  %74 = phi i8* [ null, %40 ], [ %71, %70 ], !dbg !4657
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4658
  ret i8* %74, !dbg !4658
}

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4659 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4662, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %1, metadata !4663, metadata !DIExpression()), !dbg !4669
  %3 = icmp eq i64 %0, 0, !dbg !4670
  %4 = icmp eq i64 %1, 0, !dbg !4671
  %5 = or i1 %3, %4, !dbg !4672
  br i1 %5, label %12, label %6, !dbg !4672

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4673
  call void @llvm.dbg.value(metadata i64 %7, metadata !4665, metadata !DIExpression()), !dbg !4674
  %8 = udiv i64 %7, %1, !dbg !4675
  %9 = icmp eq i64 %8, %0, !dbg !4677
  br i1 %9, label %12, label %10, !dbg !4678

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4679
  store i32 12, i32* %11, align 4, !dbg !4681, !tbaa !716
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4662, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %13, metadata !4663, metadata !DIExpression()), !dbg !4669
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4682
  call void @llvm.dbg.value(metadata i8* %15, metadata !4664, metadata !DIExpression()), !dbg !4683
  br label %16, !dbg !4684

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4685
  ret i8* %17, !dbg !4686
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4687 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4704, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i8* %1, metadata !4705, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i64 %2, metadata !4706, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4707, metadata !DIExpression()), !dbg !4716
  %6 = bitcast i32* %5 to i8*, !dbg !4717
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4717
  %7 = icmp eq i32* %0, null, !dbg !4718
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4720
  call void @llvm.dbg.value(metadata i32* %8, metadata !4704, metadata !DIExpression()), !dbg !4713
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4721
  call void @llvm.dbg.value(metadata i64 %9, metadata !4708, metadata !DIExpression()), !dbg !4722
  %10 = icmp ugt i64 %9, -3, !dbg !4723
  %11 = icmp ne i64 %2, 0, !dbg !4724
  %12 = and i1 %11, %10, !dbg !4725
  br i1 %12, label %13, label %18, !dbg !4725

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4726
  br i1 %14, label %18, label %15, !dbg !4727

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4728, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %16, metadata !4710, metadata !DIExpression()), !dbg !4729
  %17 = zext i8 %16 to i32, !dbg !4730
  store i32 %17, i32* %8, align 4, !dbg !4731, !tbaa !716
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4732
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4733
  ret i64 %19, !dbg !4733
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4734 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4773, metadata !DIExpression()), !dbg !4778
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4779
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4780, metadata !DIExpression()), !dbg !4784
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4786
  %4 = load i32, i32* %3, align 8, !dbg !4786, !tbaa !4787
  %5 = and i32 %4, 32, !dbg !4786
  %6 = icmp eq i32 %5, 0, !dbg !4789
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4790
  %8 = icmp ne i32 %7, 0, !dbg !4791
  br i1 %6, label %9, label %19, !dbg !4792

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4794
  %11 = xor i1 %8, true, !dbg !4795
  %12 = or i1 %10, %11, !dbg !4795
  %13 = sext i1 %8 to i32, !dbg !4795
  br i1 %12, label %22, label %14, !dbg !4795

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4796
  %16 = load i32, i32* %15, align 4, !dbg !4796, !tbaa !716
  %17 = icmp ne i32 %16, 9, !dbg !4797
  %18 = sext i1 %17 to i32, !dbg !4798
  br label %22, !dbg !4798

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4799

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4801
  store i32 0, i32* %21, align 4, !dbg !4803, !tbaa !716
  br label %22, !dbg !4801

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4804
  ret i32 %23, !dbg !4805
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4806 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4809, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i8 1, metadata !4810, metadata !DIExpression()), !dbg !4813
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4814
  call void @llvm.dbg.value(metadata i8* %2, metadata !4811, metadata !DIExpression()), !dbg !4815
  %3 = icmp eq i8* %2, null, !dbg !4816
  br i1 %3, label %11, label %4, !dbg !4818

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i64 0, i64 0)) #14, !dbg !4819
  %6 = icmp eq i32 %5, 0, !dbg !4824
  br i1 %6, label %10, label %7, !dbg !4825

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.164, i64 0, i64 0)) #14, !dbg !4826
  %9 = icmp eq i32 %8, 0, !dbg !4827
  br i1 %9, label %10, label %11, !dbg !4828

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4810, metadata !DIExpression()), !dbg !4813
  br label %11, !dbg !4829

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4830
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4831 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4837
  call void @llvm.dbg.value(metadata i8* %1, metadata !4836, metadata !DIExpression()), !dbg !4838
  %2 = icmp eq i8* %1, null, !dbg !4839
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), i8* %1, !dbg !4841
  call void @llvm.dbg.value(metadata i8* %3, metadata !4836, metadata !DIExpression()), !dbg !4838
  %4 = load i8, i8* %3, align 1, !dbg !4842, !tbaa !807
  %5 = icmp eq i8 %4, 0, !dbg !4846
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.168, i64 0, i64 0), i8* %3, !dbg !4847
  call void @llvm.dbg.value(metadata i8* %6, metadata !4836, metadata !DIExpression()), !dbg !4838
  ret i8* %6, !dbg !4848
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4849 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4888, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i32 0, metadata !4889, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 0, metadata !4891, metadata !DIExpression()), !dbg !4894
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4895
  call void @llvm.dbg.value(metadata i32 %2, metadata !4890, metadata !DIExpression()), !dbg !4896
  %3 = icmp slt i32 %2, 0, !dbg !4897
  br i1 %3, label %4, label %6, !dbg !4899

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4900
  br label %24, !dbg !4901

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4902
  %8 = icmp eq i32 %7, 0, !dbg !4902
  br i1 %8, label %13, label %9, !dbg !4904

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4905
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4906
  %12 = icmp eq i64 %11, -1, !dbg !4907
  br i1 %12, label %16, label %13, !dbg !4908

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4909
  %15 = icmp eq i32 %14, 0, !dbg !4909
  br i1 %15, label %16, label %18, !dbg !4910

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4889, metadata !DIExpression()), !dbg !4893
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %21, metadata !4891, metadata !DIExpression()), !dbg !4894
  br label %24, !dbg !4912

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4913
  %20 = load i32, i32* %19, align 4, !dbg !4913, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %20, metadata !4889, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 %20, metadata !4889, metadata !DIExpression()), !dbg !4893
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %21, metadata !4891, metadata !DIExpression()), !dbg !4894
  %22 = icmp eq i32 %20, 0, !dbg !4914
  br i1 %22, label %24, label %23, !dbg !4912

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4916, !tbaa !716
  call void @llvm.dbg.value(metadata i32 -1, metadata !4891, metadata !DIExpression()), !dbg !4894
  br label %24, !dbg !4918

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4919
  ret i32 %25, !dbg !4920
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4921 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4960, metadata !DIExpression()), !dbg !4961
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4962
  br i1 %2, label %6, label %3, !dbg !4964

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4965
  %5 = icmp eq i32 %4, 0, !dbg !4965
  br i1 %5, label %6, label %8, !dbg !4966

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4967
  br label %17, !dbg !4968

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4969, metadata !DIExpression()) #11, !dbg !4974
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4976
  %10 = load i32, i32* %9, align 8, !dbg !4976, !tbaa !4787
  %11 = and i32 %10, 256, !dbg !4978
  %12 = icmp eq i32 %11, 0, !dbg !4978
  br i1 %12, label %15, label %13, !dbg !4979

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4980
  br label %15, !dbg !4980

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4981
  br label %17, !dbg !4982

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4983
  ret i32 %18, !dbg !4984
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4985 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5025, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.value(metadata i64 %1, metadata !5026, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i32 %2, metadata !5027, metadata !DIExpression()), !dbg !5033
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5034
  %5 = load i8*, i8** %4, align 8, !dbg !5034, !tbaa !5035
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5036
  %7 = load i8*, i8** %6, align 8, !dbg !5036, !tbaa !5037
  %8 = icmp eq i8* %5, %7, !dbg !5038
  br i1 %8, label %9, label %28, !dbg !5039

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5040
  %11 = load i8*, i8** %10, align 8, !dbg !5040, !tbaa !5041
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5042
  %13 = load i8*, i8** %12, align 8, !dbg !5042, !tbaa !5043
  %14 = icmp eq i8* %11, %13, !dbg !5044
  br i1 %14, label %15, label %28, !dbg !5045

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5046
  %17 = load i8*, i8** %16, align 8, !dbg !5046, !tbaa !5047
  %18 = icmp eq i8* %17, null, !dbg !5048
  br i1 %18, label %19, label %28, !dbg !5049

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5050
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5051
  call void @llvm.dbg.value(metadata i64 %21, metadata !5028, metadata !DIExpression()), !dbg !5052
  %22 = icmp eq i64 %21, -1, !dbg !5053
  br i1 %22, label %30, label %23, !dbg !5055

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5056
  %25 = load i32, i32* %24, align 8, !dbg !5057, !tbaa !4787
  %26 = and i32 %25, -17, !dbg !5057
  store i32 %26, i32* %24, align 8, !dbg !5057, !tbaa !4787
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5058
  store i64 %21, i64* %27, align 8, !dbg !5059, !tbaa !5060
  br label %30, !dbg !5061

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5062
  br label %30, !dbg !5063

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5064
  ret i32 %31, !dbg !5065
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
attributes #8 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !45, !53, !62, !153, !69, !76, !160, !163, !165, !146, !173, !190, !192, !195, !197, !200, !202, !204, !593, !595, !597}
!llvm.ident = !{!599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599}
!llvm.module.flags = !{!600, !601, !602, !603, !604}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !6, line: 73, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !37)
!3 = !DIFile(filename: "src/lbracket.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !12, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 59, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "TEST_TRUE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "TEST_FALSE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TEST_FAILURE", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!15 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!18 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 41, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!29 = !{!30}
!30 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000, isUnsigned: true)
!31 = !{!32, !34, !35, !36, !7}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !{!38, !40, !0}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !6, line: 71, type: !35, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !6, line: 72, type: !35, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "Version", scope: !45, file: !46, line: 2, type: !49, isLocal: false, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !48)
!46 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!47 = !{}
!48 = !{!43}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "file_name", scope: !53, file: !58, line: 46, type: !49, isLocal: true, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !55)
!54 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!55 = !{!51, !56}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !53, file: !58, line: 56, type: !59, isLocal: true, isDefinition: true)
!58 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "exit_failure", scope: !62, file: !65, line: 24, type: !66, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !64)
!63 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!64 = !{!60}
!65 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "program_name", scope: !69, file: !73, line: 33, type: !49, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !71, globals: !72)
!70 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!71 = !{!34, !32}
!72 = !{!67}
!73 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !76, file: !105, line: 85, type: !140, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !98, globals: !102)
!77 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!78 = !{!79, !93, !12}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !80, line: 32, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!82 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!87 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!88 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!89 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!90 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!91 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!92 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !80, line: 242, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!98 = !{!35, !36, !99, !32}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !{!74, !103, !110, !122, !124, !129, !136, !138}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !76, file: !105, line: 101, type: !106, isLocal: false, isDefinition: true)
!105 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 320, elements: !108)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!108 = !{!109}
!109 = !DISubrange(count: 10)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !76, file: !105, line: 1052, type: !112, isLocal: false, isDefinition: true)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !105, line: 65, size: 448, elements: !113)
!113 = !{!114, !115, !116, !120, !121}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !112, file: !105, line: 68, baseType: !79, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !105, line: 71, baseType: !35, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !112, file: !105, line: 75, baseType: !117, size: 256, offset: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !112, file: !105, line: 78, baseType: !49, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !112, file: !105, line: 81, baseType: !49, size: 64, offset: 384)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !76, file: !105, line: 116, type: !112, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "slot0", scope: !76, file: !105, line: 842, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 256)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slotvec", scope: !76, file: !105, line: 845, type: !131, isLocal: true, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !105, line: 834, size: 128, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !132, file: !105, line: 836, baseType: !99, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !132, file: !105, line: 837, baseType: !32, size: 64, offset: 64)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "nslots", scope: !76, file: !105, line: 843, type: !35, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "slotvec0", scope: !76, file: !105, line: 844, type: !132, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 704, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!142 = !{!143}
!143 = !DISubrange(count: 11)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !146, file: !149, line: 26, type: !150, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !148)
!147 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!148 = !{!144}
!149 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 376, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 47)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !155)
!154 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !157, line: 102, baseType: !158)
!157 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !159, line: 72, baseType: !101)
!159 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !162)
!161 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!162 = !{!7}
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47)
!164 = !DIFile(filename: "./lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !172)
!166 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!167 = !{!168}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 41, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!170 = !{!171}
!171 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!172 = !{!34}
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !189)
!174 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!176}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !178, file: !177, line: 186, baseType: !7, size: 32, elements: !187)
!177 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = distinct !DISubprogram(name: "x2nrealloc", scope: !177, file: !177, line: 174, type: !179, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !182)
!179 = !DISubroutineType(types: !180)
!180 = !{!34, !34, !181, !99}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(name: "p", arg: 1, scope: !178, file: !177, line: 174, type: !34)
!184 = !DILocalVariable(name: "pn", arg: 2, scope: !178, file: !177, line: 174, type: !181)
!185 = !DILocalVariable(name: "s", arg: 3, scope: !178, file: !177, line: 174, type: !99)
!186 = !DILocalVariable(name: "n", scope: !178, file: !177, line: 176, type: !99)
!187 = !{!188}
!188 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!189 = !{!99, !32, !34}
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47)
!191 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !194)
!193 = !DIFile(filename: "./lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = !{!32}
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !172)
!196 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !199)
!198 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = !{!99}
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47)
!201 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47)
!203 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !172)
!205 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = !{!207}
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 41, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!210 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!213 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!214 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!215 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!216 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!222 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!223 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!248 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!249 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!250 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!251 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!252 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!253 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!254 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!255 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!256 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!257 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!258 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!259 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!318 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!405 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!478 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!479 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!480 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!481 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!482 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!483 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!484 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!486 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!487 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!488 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!489 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!490 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!491 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!492 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!525 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!526 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!527 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!528 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!529 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!534 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!535 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!536 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!537 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47)
!594 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !172)
!596 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !172)
!598 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!599 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!600 = !{i32 2, !"Dwarf Version", i32 4}
!601 = !{i32 2, !"Debug Info Version", i32 3}
!602 = !{i32 1, !"wchar_size", i32 4}
!603 = !{i32 7, !"PIC Level", i32 2}
!604 = !{i32 7, !"PIE Level", i32 2}
!605 = distinct !DISubprogram(name: "usage", scope: !6, file: !6, line: 703, type: !606, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !35}
!608 = !{!609}
!609 = !DILocalVariable(name: "status", arg: 1, scope: !605, file: !6, line: 703, type: !35)
!610 = !DILocalVariable(name: "infomap", scope: !611, file: !612, line: 632, type: !626)
!611 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !612, file: !612, line: 630, type: !613, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !615)
!612 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!613 = !DISubroutineType(types: !614)
!614 = !{null, !49}
!615 = !{!616, !610, !617, !618, !625}
!616 = !DILocalVariable(name: "program", arg: 1, scope: !611, file: !612, line: 630, type: !49)
!617 = !DILocalVariable(name: "node", scope: !611, file: !612, line: 642, type: !49)
!618 = !DILocalVariable(name: "map_prog", scope: !611, file: !612, line: 643, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !611, file: !612, line: 632, size: 128, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !621, file: !612, line: 632, baseType: !49, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !612, line: 632, baseType: !49, size: 64, offset: 64)
!625 = !DILocalVariable(name: "lc_messages", scope: !611, file: !612, line: 655, type: !49)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 896, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 7)
!629 = !DILocation(line: 632, column: 67, scope: !611, inlinedAt: !630)
!630 = distinct !DILocation(line: 802, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !6, line: 708, column: 5)
!632 = distinct !DILexicalBlock(scope: !605, file: !6, line: 705, column: 7)
!633 = !DILocation(line: 703, column: 12, scope: !605)
!634 = !DILocation(line: 705, column: 14, scope: !632)
!635 = !DILocation(line: 705, column: 7, scope: !605)
!636 = !DILocation(line: 706, column: 5, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !6, line: 706, column: 5)
!638 = !{!639, !639, i64 0}
!639 = !{!"any pointer", !640, i64 0}
!640 = !{!"omnipotent char", !641, i64 0}
!641 = !{!"Simple C/C++ TBAA"}
!642 = !DILocation(line: 709, column: 7, scope: !631)
!643 = !DILocation(line: 716, column: 7, scope: !631)
!644 = !DILocation(line: 720, column: 7, scope: !631)
!645 = !DILocation(line: 721, column: 7, scope: !631)
!646 = !DILocation(line: 722, column: 7, scope: !631)
!647 = !DILocation(line: 727, column: 7, scope: !631)
!648 = !DILocation(line: 734, column: 7, scope: !631)
!649 = !DILocation(line: 742, column: 7, scope: !631)
!650 = !DILocation(line: 751, column: 7, scope: !631)
!651 = !DILocation(line: 757, column: 7, scope: !631)
!652 = !DILocation(line: 764, column: 7, scope: !631)
!653 = !DILocation(line: 771, column: 7, scope: !631)
!654 = !DILocation(line: 778, column: 7, scope: !631)
!655 = !DILocation(line: 785, column: 7, scope: !631)
!656 = !DILocation(line: 791, column: 7, scope: !631)
!657 = !DILocation(line: 796, column: 7, scope: !631)
!658 = !DILocation(line: 801, column: 7, scope: !631)
!659 = !DILocation(line: 630, column: 34, scope: !611, inlinedAt: !630)
!660 = !DILocation(line: 632, column: 3, scope: !611, inlinedAt: !630)
!661 = !DILocation(line: 642, column: 15, scope: !611, inlinedAt: !630)
!662 = !DILocation(line: 643, column: 36, scope: !611, inlinedAt: !630)
!663 = !DILocation(line: 643, column: 25, scope: !611, inlinedAt: !630)
!664 = !DILocation(line: 645, column: 33, scope: !611, inlinedAt: !630)
!665 = !DILocation(line: 645, column: 3, scope: !611, inlinedAt: !630)
!666 = !DILocation(line: 646, column: 13, scope: !611, inlinedAt: !630)
!667 = !DILocation(line: 645, column: 20, scope: !611, inlinedAt: !630)
!668 = !{!669, !639, i64 0}
!669 = !{!"infomap", !639, i64 0, !639, i64 8}
!670 = !DILocation(line: 645, column: 10, scope: !611, inlinedAt: !630)
!671 = !DILocation(line: 645, column: 28, scope: !611, inlinedAt: !630)
!672 = distinct !{!672, !673, !674}
!673 = !DILocation(line: 645, column: 3, scope: !611)
!674 = !DILocation(line: 646, column: 13, scope: !611)
!675 = !DILocation(line: 648, column: 17, scope: !676, inlinedAt: !630)
!676 = distinct !DILexicalBlock(scope: !611, file: !612, line: 648, column: 7)
!677 = !{!669, !639, i64 8}
!678 = !DILocation(line: 648, column: 7, scope: !676, inlinedAt: !630)
!679 = !DILocation(line: 648, column: 7, scope: !611, inlinedAt: !630)
!680 = !DILocation(line: 651, column: 3, scope: !611, inlinedAt: !630)
!681 = !DILocation(line: 655, column: 29, scope: !611, inlinedAt: !630)
!682 = !DILocation(line: 655, column: 15, scope: !611, inlinedAt: !630)
!683 = !DILocation(line: 656, column: 7, scope: !684, inlinedAt: !630)
!684 = distinct !DILexicalBlock(scope: !611, file: !612, line: 656, column: 7)
!685 = !DILocation(line: 656, column: 19, scope: !684, inlinedAt: !630)
!686 = !DILocation(line: 656, column: 22, scope: !684, inlinedAt: !630)
!687 = !DILocation(line: 656, column: 7, scope: !611, inlinedAt: !630)
!688 = !DILocation(line: 662, column: 7, scope: !689, inlinedAt: !630)
!689 = distinct !DILexicalBlock(scope: !684, file: !612, line: 657, column: 5)
!690 = !DILocation(line: 664, column: 5, scope: !689, inlinedAt: !630)
!691 = !DILocation(line: 665, column: 3, scope: !611, inlinedAt: !630)
!692 = !DILocation(line: 667, column: 3, scope: !611, inlinedAt: !630)
!693 = !DILocation(line: 669, column: 1, scope: !611, inlinedAt: !630)
!694 = !DILocation(line: 804, column: 3, scope: !605)
!695 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 823, type: !696, isLocal: false, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!35, !35, !42}
!698 = !{!699, !700, !701}
!699 = !DILocalVariable(name: "margc", arg: 1, scope: !695, file: !6, line: 823, type: !35)
!700 = !DILocalVariable(name: "margv", arg: 2, scope: !695, file: !6, line: 823, type: !42)
!701 = !DILocalVariable(name: "value", scope: !695, file: !6, line: 825, type: !59)
!702 = !DILocation(line: 823, column: 11, scope: !695)
!703 = !DILocation(line: 823, column: 25, scope: !695)
!704 = !DILocation(line: 836, column: 21, scope: !695)
!705 = !DILocation(line: 836, column: 3, scope: !695)
!706 = !DILocation(line: 837, column: 3, scope: !695)
!707 = !DILocation(line: 838, column: 3, scope: !695)
!708 = !DILocation(line: 839, column: 3, scope: !695)
!709 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !612, line: 99, type: !35)
!710 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !612, file: !612, line: 99, type: !606, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !711)
!711 = !{!709}
!712 = !DILocation(line: 99, column: 30, scope: !710, inlinedAt: !713)
!713 = distinct !DILocation(line: 841, column: 3, scope: !695)
!714 = !DILocation(line: 102, column: 18, scope: !715, inlinedAt: !713)
!715 = distinct !DILexicalBlock(scope: !710, file: !612, line: 101, column: 7)
!716 = !{!717, !717, i64 0}
!717 = !{!"int", !640, i64 0}
!718 = !DILocation(line: 842, column: 3, scope: !695)
!719 = !DILocation(line: 845, column: 8, scope: !695)
!720 = !DILocation(line: 855, column: 17, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !6, line: 855, column: 11)
!722 = distinct !DILexicalBlock(scope: !723, file: !6, line: 848, column: 5)
!723 = distinct !DILexicalBlock(scope: !695, file: !6, line: 847, column: 7)
!724 = !DILocation(line: 855, column: 11, scope: !722)
!725 = !DILocation(line: 857, column: 15, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !6, line: 857, column: 15)
!727 = distinct !DILexicalBlock(scope: !721, file: !6, line: 856, column: 9)
!728 = !DILocation(line: 857, column: 15, scope: !727)
!729 = !DILocation(line: 858, column: 13, scope: !726)
!730 = !DILocation(line: 860, column: 15, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !6, line: 860, column: 15)
!732 = !DILocation(line: 860, column: 15, scope: !727)
!733 = !DILocation(line: 862, column: 28, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !6, line: 861, column: 13)
!735 = !DILocation(line: 862, column: 64, scope: !734)
!736 = !DILocation(line: 862, column: 15, scope: !734)
!737 = !DILocation(line: 864, column: 15, scope: !734)
!738 = !DILocation(line: 867, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !722, file: !6, line: 867, column: 11)
!740 = !DILocation(line: 867, column: 21, scope: !739)
!741 = !DILocation(line: 867, column: 25, scope: !739)
!742 = !DILocation(line: 867, column: 11, scope: !722)
!743 = !DILocation(line: 868, column: 28, scope: !739)
!744 = !DILocation(line: 868, column: 45, scope: !739)
!745 = !DILocation(line: 868, column: 9, scope: !739)
!746 = !DILocation(line: 873, column: 8, scope: !695)
!747 = !DILocation(line: 874, column: 7, scope: !695)
!748 = !DILocation(line: 876, column: 11, scope: !749)
!749 = distinct !DILexicalBlock(scope: !695, file: !6, line: 876, column: 7)
!750 = !DILocation(line: 876, column: 7, scope: !695)
!751 = !DILocation(line: 879, column: 27, scope: !695)
!752 = !DILocation(line: 879, column: 11, scope: !695)
!753 = !DILocation(line: 881, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !695, file: !6, line: 881, column: 7)
!755 = !DILocation(line: 881, column: 14, scope: !754)
!756 = !DILocation(line: 881, column: 11, scope: !754)
!757 = !DILocation(line: 881, column: 7, scope: !695)
!758 = !DILocation(line: 882, column: 24, scope: !754)
!759 = !DILocation(line: 882, column: 55, scope: !754)
!760 = !DILocation(line: 882, column: 60, scope: !754)
!761 = !DILocation(line: 882, column: 48, scope: !754)
!762 = !DILocation(line: 882, column: 5, scope: !754)
!763 = !DILocation(line: 884, column: 3, scope: !695)
!764 = !DILocation(line: 0, scope: !695)
!765 = !DILocation(line: 885, column: 1, scope: !695)
!766 = distinct !DISubprogram(name: "test_syntax_error", scope: !6, file: !6, line: 92, type: !767, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !49, null}
!769 = !{!770, !771}
!770 = !DILocalVariable(name: "format", arg: 1, scope: !766, file: !6, line: 92, type: !49)
!771 = !DILocalVariable(name: "ap", scope: !766, file: !6, line: 94, type: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !773, line: 52, baseType: !774)
!773 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !775, line: 48, baseType: !776)
!775 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 94, baseType: !777)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 192, elements: !784)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 94, size: 192, elements: !779)
!779 = !{!780, !781, !782, !783}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !778, file: !3, line: 94, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !778, file: !3, line: 94, baseType: !7, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !778, file: !3, line: 94, baseType: !34, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !778, file: !3, line: 94, baseType: !34, size: 64, offset: 128)
!784 = !{!785}
!785 = !DISubrange(count: 1)
!786 = !DILocation(line: 92, column: 32, scope: !766)
!787 = !DILocation(line: 94, column: 3, scope: !766)
!788 = !DILocation(line: 94, column: 11, scope: !766)
!789 = !DILocation(line: 95, column: 3, scope: !766)
!790 = !DILocation(line: 96, column: 3, scope: !766)
!791 = !DILocation(line: 97, column: 3, scope: !766)
!792 = distinct !DISubprogram(name: "posixtest", scope: !6, file: !6, line: 657, type: !793, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!59, !35}
!795 = !{!796, !797}
!796 = !DILocalVariable(name: "nargs", arg: 1, scope: !792, file: !6, line: 657, type: !35)
!797 = !DILocalVariable(name: "value", scope: !792, file: !6, line: 659, type: !59)
!798 = !DILocation(line: 657, column: 16, scope: !792)
!799 = !DILocation(line: 661, column: 3, scope: !792)
!800 = !DILocation(line: 603, column: 10, scope: !801, inlinedAt: !804)
!801 = distinct !DISubprogram(name: "one_argument", scope: !6, file: !6, line: 601, type: !802, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !47)
!802 = !DISubroutineType(types: !803)
!803 = !{!59}
!804 = distinct !DILocation(line: 664, column: 17, scope: !805)
!805 = distinct !DILexicalBlock(scope: !792, file: !6, line: 662, column: 5)
!806 = !DILocation(line: 603, column: 18, scope: !801, inlinedAt: !804)
!807 = !{!640, !640, i64 0}
!808 = !DILocation(line: 603, column: 25, scope: !801, inlinedAt: !804)
!809 = !DILocation(line: 665, column: 9, scope: !805)
!810 = !DILocation(line: 668, column: 17, scope: !805)
!811 = !DILocation(line: 669, column: 9, scope: !805)
!812 = !DILocation(line: 672, column: 17, scope: !805)
!813 = !DILocation(line: 673, column: 9, scope: !805)
!814 = !DILocation(line: 676, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !805, file: !6, line: 676, column: 13)
!816 = !DILocation(line: 676, column: 13, scope: !805)
!817 = !DILocalVariable(name: "f", arg: 1, scope: !818, file: !6, line: 105, type: !59)
!818 = distinct !DISubprogram(name: "advance", scope: !6, file: !6, line: 105, type: !819, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !59}
!821 = !{!817}
!822 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !823)
!823 = distinct !DILocation(line: 678, column: 13, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !6, line: 677, column: 11)
!825 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !823)
!826 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !823)
!827 = distinct !DILexicalBlock(scope: !818, file: !6, line: 109, column: 7)
!828 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !823)
!829 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !823)
!830 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !823)
!831 = !DILocation(line: 679, column: 22, scope: !824)
!832 = !DILocation(line: 679, column: 21, scope: !824)
!833 = !DILocation(line: 680, column: 13, scope: !824)
!834 = !DILocation(line: 682, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !805, file: !6, line: 682, column: 13)
!836 = !DILocation(line: 682, column: 36, scope: !835)
!837 = !DILocation(line: 682, column: 39, scope: !835)
!838 = !DILocation(line: 682, column: 13, scope: !805)
!839 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !840)
!840 = distinct !DILocation(line: 684, column: 13, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !6, line: 683, column: 11)
!842 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !840)
!843 = !DILocation(line: 685, column: 21, scope: !841)
!844 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !845)
!845 = distinct !DILocation(line: 686, column: 13, scope: !841)
!846 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !845)
!847 = !DILocation(line: 687, column: 13, scope: !841)
!848 = !DILocation(line: 692, column: 19, scope: !849)
!849 = distinct !DILexicalBlock(scope: !805, file: !6, line: 692, column: 13)
!850 = !DILocation(line: 692, column: 13, scope: !805)
!851 = !DILocation(line: 574, column: 7, scope: !852, inlinedAt: !854)
!852 = distinct !DILexicalBlock(scope: !853, file: !6, line: 574, column: 7)
!853 = distinct !DISubprogram(name: "expr", scope: !6, file: !6, line: 572, type: !802, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !47)
!854 = distinct !DILocation(line: 694, column: 17, scope: !805)
!855 = !DILocation(line: 693, column: 11, scope: !849)
!856 = !DILocation(line: 574, column: 14, scope: !852, inlinedAt: !854)
!857 = !DILocation(line: 574, column: 11, scope: !852, inlinedAt: !854)
!858 = !DILocation(line: 574, column: 7, scope: !853, inlinedAt: !854)
!859 = !DILocalVariable(name: "value", scope: !860, file: !6, line: 537, type: !59)
!860 = distinct !DISubprogram(name: "and", scope: !6, file: !6, line: 535, type: !802, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !861)
!861 = !{!859}
!862 = !DILocation(line: 537, column: 8, scope: !860, inlinedAt: !863)
!863 = distinct !DILocation(line: 560, column: 16, scope: !864, inlinedAt: !868)
!864 = distinct !DILexicalBlock(scope: !865, file: !6, line: 559, column: 5)
!865 = distinct !DISubprogram(name: "or", scope: !6, file: !6, line: 554, type: !802, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !866)
!866 = !{!867}
!867 = !DILocalVariable(name: "value", scope: !865, file: !6, line: 556, type: !59)
!868 = distinct !DILocation(line: 577, column: 10, scope: !853, inlinedAt: !854)
!869 = !DILocation(line: 541, column: 16, scope: !870, inlinedAt: !863)
!870 = distinct !DILexicalBlock(scope: !860, file: !6, line: 540, column: 5)
!871 = !DILocation(line: 542, column: 14, scope: !872, inlinedAt: !863)
!872 = distinct !DILexicalBlock(scope: !870, file: !6, line: 542, column: 11)
!873 = !DILocation(line: 542, column: 20, scope: !872, inlinedAt: !863)
!874 = !DILocation(line: 542, column: 18, scope: !872, inlinedAt: !863)
!875 = !DILocation(line: 542, column: 25, scope: !872, inlinedAt: !863)
!876 = !DILocation(line: 575, column: 5, scope: !852, inlinedAt: !854)
!877 = !DILocation(line: 542, column: 28, scope: !872, inlinedAt: !863)
!878 = !DILocation(line: 542, column: 11, scope: !870, inlinedAt: !863)
!879 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !880)
!880 = distinct !DILocation(line: 544, column: 7, scope: !870, inlinedAt: !863)
!881 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !880)
!882 = !DILocation(line: 541, column: 13, scope: !870, inlinedAt: !863)
!883 = distinct !{!883, !884, !885}
!884 = !DILocation(line: 539, column: 3, scope: !860)
!885 = !DILocation(line: 545, column: 5, scope: !860)
!886 = !DILocation(line: 0, scope: !864, inlinedAt: !868)
!887 = !DILocation(line: 560, column: 13, scope: !864, inlinedAt: !868)
!888 = !DILocation(line: 561, column: 28, scope: !889, inlinedAt: !868)
!889 = distinct !DILexicalBlock(scope: !864, file: !6, line: 561, column: 11)
!890 = !DILocation(line: 561, column: 11, scope: !864, inlinedAt: !868)
!891 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !892)
!892 = distinct !DILocation(line: 563, column: 7, scope: !864, inlinedAt: !868)
!893 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !892)
!894 = distinct !{!894, !895, !896}
!895 = !DILocation(line: 558, column: 3, scope: !865)
!896 = !DILocation(line: 564, column: 5, scope: !865)
!897 = !DILocation(line: 697, column: 3, scope: !792)
!898 = distinct !DISubprogram(name: "two_arguments", scope: !6, file: !6, line: 607, type: !802, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !899)
!899 = !{!900}
!900 = !DILocalVariable(name: "value", scope: !898, file: !6, line: 609, type: !59)
!901 = !DILocation(line: 611, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !6, line: 611, column: 7)
!903 = !DILocation(line: 611, column: 7, scope: !898)
!904 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !905)
!905 = distinct !DILocation(line: 613, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !6, line: 612, column: 5)
!907 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !905)
!908 = !DILocation(line: 603, column: 18, scope: !801, inlinedAt: !909)
!909 = distinct !DILocation(line: 614, column: 17, scope: !906)
!910 = !DILocation(line: 603, column: 10, scope: !801, inlinedAt: !909)
!911 = !DILocation(line: 603, column: 25, scope: !801, inlinedAt: !909)
!912 = !DILocation(line: 615, column: 5, scope: !906)
!913 = !DILocation(line: 616, column: 12, scope: !914)
!914 = distinct !DILexicalBlock(scope: !902, file: !6, line: 616, column: 12)
!915 = !DILocation(line: 616, column: 25, scope: !914)
!916 = !DILocation(line: 617, column: 12, scope: !914)
!917 = !DILocation(line: 617, column: 15, scope: !914)
!918 = !DILocation(line: 617, column: 28, scope: !914)
!919 = !DILocation(line: 618, column: 12, scope: !914)
!920 = !DILocation(line: 618, column: 15, scope: !914)
!921 = !DILocation(line: 618, column: 28, scope: !914)
!922 = !DILocation(line: 616, column: 12, scope: !902)
!923 = !DILocalVariable(name: "op", arg: 1, scope: !924, file: !6, line: 582, type: !49)
!924 = distinct !DISubprogram(name: "test_unop", scope: !6, file: !6, line: 582, type: !925, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!59, !49}
!927 = !{!923}
!928 = !DILocation(line: 582, column: 24, scope: !924, inlinedAt: !929)
!929 = distinct !DILocation(line: 620, column: 11, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !6, line: 620, column: 11)
!931 = distinct !DILexicalBlock(scope: !914, file: !6, line: 619, column: 5)
!932 = !DILocation(line: 587, column: 11, scope: !924, inlinedAt: !929)
!933 = !DILocation(line: 587, column: 3, scope: !924, inlinedAt: !929)
!934 = !DILocation(line: 621, column: 17, scope: !930)
!935 = !DILocation(line: 623, column: 28, scope: !930)
!936 = !DILocation(line: 623, column: 69, scope: !930)
!937 = !DILocation(line: 623, column: 74, scope: !930)
!938 = !DILocation(line: 623, column: 62, scope: !930)
!939 = !DILocation(line: 623, column: 9, scope: !930)
!940 = !DILocation(line: 626, column: 5, scope: !914)
!941 = !DILocation(line: 627, column: 3, scope: !898)
!942 = distinct !DISubprogram(name: "three_arguments", scope: !6, file: !6, line: 631, type: !802, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !943)
!943 = !{!944}
!944 = !DILocalVariable(name: "value", scope: !942, file: !6, line: 633, type: !59)
!945 = !DILocation(line: 635, column: 14, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !6, line: 635, column: 7)
!947 = !DILocation(line: 635, column: 19, scope: !946)
!948 = !DILocation(line: 635, column: 23, scope: !946)
!949 = !DILocation(line: 635, column: 7, scope: !946)
!950 = !DILocation(line: 635, column: 7, scope: !942)
!951 = !DILocation(line: 636, column: 13, scope: !946)
!952 = !DILocation(line: 636, column: 5, scope: !946)
!953 = !DILocation(line: 637, column: 12, scope: !954)
!954 = distinct !DILexicalBlock(scope: !946, file: !6, line: 637, column: 12)
!955 = !DILocation(line: 637, column: 12, scope: !946)
!956 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !957)
!957 = distinct !DILocation(line: 639, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !6, line: 638, column: 5)
!959 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !957)
!960 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !957)
!961 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !957)
!962 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !957)
!963 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !957)
!964 = !DILocation(line: 640, column: 16, scope: !958)
!965 = !DILocation(line: 640, column: 15, scope: !958)
!966 = !DILocation(line: 641, column: 5, scope: !958)
!967 = !DILocation(line: 642, column: 12, scope: !968)
!968 = distinct !DILexicalBlock(scope: !954, file: !6, line: 642, column: 12)
!969 = !DILocation(line: 642, column: 35, scope: !968)
!970 = !DILocation(line: 642, column: 38, scope: !968)
!971 = !DILocation(line: 642, column: 12, scope: !954)
!972 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !973)
!973 = distinct !DILocation(line: 644, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !6, line: 643, column: 5)
!975 = !DILocation(line: 603, column: 10, scope: !801, inlinedAt: !976)
!976 = distinct !DILocation(line: 645, column: 15, scope: !974)
!977 = !DILocation(line: 603, column: 25, scope: !801, inlinedAt: !976)
!978 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !979)
!979 = distinct !DILocation(line: 646, column: 7, scope: !974)
!980 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !979)
!981 = !DILocation(line: 647, column: 5, scope: !974)
!982 = !DILocation(line: 648, column: 12, scope: !983)
!983 = distinct !DILexicalBlock(scope: !968, file: !6, line: 648, column: 12)
!984 = !DILocation(line: 648, column: 40, scope: !983)
!985 = !DILocation(line: 648, column: 43, scope: !983)
!986 = !DILocation(line: 648, column: 12, scope: !968)
!987 = !DILocation(line: 574, column: 14, scope: !852, inlinedAt: !988)
!988 = distinct !DILocation(line: 649, column: 13, scope: !983)
!989 = !DILocation(line: 574, column: 11, scope: !852, inlinedAt: !988)
!990 = !DILocation(line: 574, column: 7, scope: !853, inlinedAt: !988)
!991 = !DILocation(line: 537, column: 8, scope: !860, inlinedAt: !992)
!992 = distinct !DILocation(line: 560, column: 16, scope: !864, inlinedAt: !993)
!993 = distinct !DILocation(line: 577, column: 10, scope: !853, inlinedAt: !988)
!994 = !DILocation(line: 541, column: 16, scope: !870, inlinedAt: !992)
!995 = !DILocation(line: 542, column: 14, scope: !872, inlinedAt: !992)
!996 = !DILocation(line: 542, column: 20, scope: !872, inlinedAt: !992)
!997 = !DILocation(line: 542, column: 18, scope: !872, inlinedAt: !992)
!998 = !DILocation(line: 542, column: 25, scope: !872, inlinedAt: !992)
!999 = !DILocation(line: 575, column: 5, scope: !852, inlinedAt: !988)
!1000 = !DILocation(line: 542, column: 28, scope: !872, inlinedAt: !992)
!1001 = !DILocation(line: 542, column: 11, scope: !870, inlinedAt: !992)
!1002 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 544, column: 7, scope: !870, inlinedAt: !992)
!1004 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1003)
!1005 = !DILocation(line: 541, column: 13, scope: !870, inlinedAt: !992)
!1006 = !DILocation(line: 0, scope: !864, inlinedAt: !993)
!1007 = !DILocation(line: 560, column: 13, scope: !864, inlinedAt: !993)
!1008 = !DILocation(line: 561, column: 28, scope: !889, inlinedAt: !993)
!1009 = !DILocation(line: 561, column: 11, scope: !864, inlinedAt: !993)
!1010 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 563, column: 7, scope: !864, inlinedAt: !993)
!1012 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1011)
!1013 = !DILocation(line: 651, column: 24, scope: !983)
!1014 = !DILocation(line: 651, column: 66, scope: !983)
!1015 = !DILocation(line: 651, column: 71, scope: !983)
!1016 = !DILocation(line: 651, column: 74, scope: !983)
!1017 = !DILocation(line: 651, column: 59, scope: !983)
!1018 = !DILocation(line: 651, column: 5, scope: !983)
!1019 = !DILocation(line: 652, column: 3, scope: !942)
!1020 = distinct !DISubprogram(name: "beyond", scope: !6, file: !6, line: 125, type: !1021, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !47)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null}
!1023 = !DILocation(line: 127, column: 22, scope: !1020)
!1024 = !DILocation(line: 127, column: 61, scope: !1020)
!1025 = !DILocation(line: 127, column: 66, scope: !1020)
!1026 = !DILocation(line: 127, column: 71, scope: !1020)
!1027 = !DILocation(line: 127, column: 54, scope: !1020)
!1028 = !DILocation(line: 127, column: 3, scope: !1020)
!1029 = distinct !DISubprogram(name: "term", scope: !6, file: !6, line: 212, type: !802, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DILocalVariable(name: "value", scope: !1029, file: !6, line: 214, type: !59)
!1032 = !DILocalVariable(name: "negated", scope: !1029, file: !6, line: 215, type: !59)
!1033 = !DILocalVariable(name: "nargs", scope: !1034, file: !6, line: 230, type: !35)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !6, line: 229, column: 5)
!1035 = distinct !DILexicalBlock(scope: !1029, file: !6, line: 228, column: 7)
!1036 = !DILocation(line: 215, column: 8, scope: !1029)
!1037 = !DILocation(line: 218, column: 10, scope: !1029)
!1038 = !DILocation(line: 218, column: 16, scope: !1029)
!1039 = !DILocation(line: 218, column: 14, scope: !1029)
!1040 = !DILocation(line: 218, column: 21, scope: !1029)
!1041 = !DILocation(line: 218, column: 24, scope: !1029)
!1042 = !DILocation(line: 218, column: 37, scope: !1029)
!1043 = !DILocation(line: 218, column: 44, scope: !1029)
!1044 = !DILocation(line: 218, column: 47, scope: !1029)
!1045 = !DILocation(line: 218, column: 60, scope: !1029)
!1046 = !DILocation(line: 218, column: 3, scope: !1029)
!1047 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 220, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1029, file: !6, line: 219, column: 5)
!1050 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1048)
!1051 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1048)
!1052 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1048)
!1053 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1048)
!1054 = !DILocation(line: 221, column: 17, scope: !1049)
!1055 = !DILocation(line: 225, column: 5, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1029, file: !6, line: 224, column: 7)
!1057 = !DILocation(line: 228, column: 20, scope: !1035)
!1058 = !DILocation(line: 228, column: 27, scope: !1035)
!1059 = !DILocation(line: 228, column: 30, scope: !1035)
!1060 = !DILocation(line: 228, column: 43, scope: !1035)
!1061 = !DILocation(line: 228, column: 7, scope: !1029)
!1062 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 232, column: 7, scope: !1034)
!1064 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1063)
!1065 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1063)
!1066 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1063)
!1067 = !DILocation(line: 230, column: 11, scope: !1034)
!1068 = !DILocation(line: 235, column: 16, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !6, line: 234, column: 7)
!1070 = distinct !DILexicalBlock(scope: !1034, file: !6, line: 234, column: 7)
!1071 = !DILocation(line: 235, column: 24, scope: !1069)
!1072 = !DILocation(line: 235, column: 31, scope: !1069)
!1073 = !DILocation(line: 235, column: 36, scope: !1069)
!1074 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1063)
!1075 = !DILocation(line: 234, column: 7, scope: !1070)
!1076 = !DILocation(line: 237, column: 19, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1069, file: !6, line: 237, column: 13)
!1078 = !DILocation(line: 237, column: 13, scope: !1069)
!1079 = !DILocation(line: 239, column: 26, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !6, line: 238, column: 11)
!1081 = !DILocation(line: 240, column: 13, scope: !1080)
!1082 = !DILocation(line: 236, column: 17, scope: !1069)
!1083 = distinct !{!1083, !1075, !1084}
!1084 = !DILocation(line: 241, column: 11, scope: !1070)
!1085 = !DILocation(line: 243, column: 15, scope: !1034)
!1086 = !DILocation(line: 0, scope: !1070)
!1087 = !DILocation(line: 244, column: 11, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1034, file: !6, line: 244, column: 11)
!1089 = !DILocation(line: 244, column: 16, scope: !1088)
!1090 = !DILocation(line: 244, column: 21, scope: !1088)
!1091 = !DILocation(line: 244, column: 11, scope: !1034)
!1092 = !DILocation(line: 245, column: 28, scope: !1088)
!1093 = !DILocation(line: 245, column: 46, scope: !1088)
!1094 = !DILocation(line: 245, column: 9, scope: !1088)
!1095 = !DILocation(line: 247, column: 13, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !6, line: 247, column: 13)
!1097 = !DILocation(line: 247, column: 26, scope: !1096)
!1098 = !DILocation(line: 247, column: 33, scope: !1096)
!1099 = !DILocation(line: 247, column: 36, scope: !1096)
!1100 = !DILocation(line: 247, column: 13, scope: !1088)
!1101 = !DILocation(line: 248, column: 30, scope: !1096)
!1102 = !DILocation(line: 249, column: 30, scope: !1096)
!1103 = !DILocation(line: 249, column: 60, scope: !1096)
!1104 = !DILocation(line: 249, column: 65, scope: !1096)
!1105 = !DILocation(line: 249, column: 48, scope: !1096)
!1106 = !DILocation(line: 248, column: 11, scope: !1096)
!1107 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 250, column: 7, scope: !1034)
!1109 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1108)
!1110 = !DILocation(line: 251, column: 5, scope: !1034)
!1111 = !DILocation(line: 254, column: 22, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1035, file: !6, line: 254, column: 12)
!1113 = !DILocation(line: 254, column: 14, scope: !1112)
!1114 = !DILocation(line: 254, column: 28, scope: !1112)
!1115 = !DILocation(line: 254, column: 31, scope: !1112)
!1116 = !DILocation(line: 254, column: 55, scope: !1112)
!1117 = !DILocation(line: 254, column: 74, scope: !1112)
!1118 = !DILocation(line: 254, column: 65, scope: !1112)
!1119 = !DILocation(line: 254, column: 58, scope: !1112)
!1120 = !DILocation(line: 254, column: 12, scope: !1035)
!1121 = !DILocation(line: 255, column: 13, scope: !1112)
!1122 = !DILocation(line: 255, column: 5, scope: !1112)
!1123 = !DILocation(line: 256, column: 14, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1112, file: !6, line: 256, column: 12)
!1125 = !DILocation(line: 256, column: 28, scope: !1124)
!1126 = !DILocation(line: 256, column: 47, scope: !1124)
!1127 = !DILocation(line: 256, column: 38, scope: !1124)
!1128 = !DILocation(line: 256, column: 31, scope: !1124)
!1129 = !DILocation(line: 256, column: 12, scope: !1112)
!1130 = !DILocation(line: 257, column: 13, scope: !1124)
!1131 = !DILocation(line: 257, column: 5, scope: !1124)
!1132 = !DILocation(line: 260, column: 25, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1124, file: !6, line: 260, column: 12)
!1134 = !DILocation(line: 260, column: 32, scope: !1133)
!1135 = !DILocation(line: 260, column: 35, scope: !1133)
!1136 = !DILocation(line: 260, column: 48, scope: !1133)
!1137 = !DILocation(line: 260, column: 51, scope: !1133)
!1138 = !DILocation(line: 260, column: 64, scope: !1133)
!1139 = !DILocation(line: 260, column: 12, scope: !1124)
!1140 = !DILocation(line: 582, column: 24, scope: !924, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 262, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !6, line: 262, column: 11)
!1143 = distinct !DILexicalBlock(scope: !1133, file: !6, line: 261, column: 5)
!1144 = !DILocation(line: 587, column: 11, scope: !924, inlinedAt: !1141)
!1145 = !DILocation(line: 587, column: 3, scope: !924, inlinedAt: !1141)
!1146 = !DILocation(line: 263, column: 17, scope: !1142)
!1147 = !DILocation(line: 266, column: 5, scope: !1143)
!1148 = !DILocation(line: 265, column: 28, scope: !1142)
!1149 = !DILocation(line: 265, column: 69, scope: !1142)
!1150 = !DILocation(line: 265, column: 74, scope: !1142)
!1151 = !DILocation(line: 265, column: 62, scope: !1142)
!1152 = !DILocation(line: 265, column: 9, scope: !1142)
!1153 = !DILocation(line: 269, column: 29, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1133, file: !6, line: 268, column: 5)
!1155 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 270, column: 7, scope: !1154)
!1157 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1156)
!1158 = !DILocation(line: 273, column: 18, scope: !1029)
!1159 = !DILocation(line: 273, column: 3, scope: !1029)
!1160 = distinct !DISubprogram(name: "binop", scope: !6, file: !6, line: 184, type: !925, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1161)
!1161 = !{!1162}
!1162 = !DILocalVariable(name: "s", arg: 1, scope: !1160, file: !6, line: 184, type: !49)
!1163 = !DILocation(line: 184, column: 20, scope: !1160)
!1164 = !DILocation(line: 186, column: 12, scope: !1160)
!1165 = !DILocation(line: 186, column: 30, scope: !1160)
!1166 = !DILocation(line: 186, column: 34, scope: !1160)
!1167 = !DILocation(line: 186, column: 52, scope: !1160)
!1168 = !DILocation(line: 186, column: 56, scope: !1160)
!1169 = !DILocation(line: 186, column: 73, scope: !1160)
!1170 = !DILocation(line: 187, column: 12, scope: !1160)
!1171 = !DILocation(line: 187, column: 32, scope: !1160)
!1172 = !DILocation(line: 188, column: 12, scope: !1160)
!1173 = !DILocation(line: 188, column: 30, scope: !1160)
!1174 = !DILocation(line: 188, column: 34, scope: !1160)
!1175 = !DILocation(line: 188, column: 52, scope: !1160)
!1176 = !DILocation(line: 188, column: 56, scope: !1160)
!1177 = !DILocation(line: 188, column: 74, scope: !1160)
!1178 = !DILocation(line: 189, column: 12, scope: !1160)
!1179 = !DILocation(line: 189, column: 30, scope: !1160)
!1180 = !DILocation(line: 189, column: 34, scope: !1160)
!1181 = !DILocation(line: 189, column: 52, scope: !1160)
!1182 = !DILocation(line: 189, column: 56, scope: !1160)
!1183 = !DILocation(line: 189, column: 74, scope: !1160)
!1184 = !DILocation(line: 190, column: 12, scope: !1160)
!1185 = !DILocation(line: 190, column: 30, scope: !1160)
!1186 = !DILocation(line: 190, column: 34, scope: !1160)
!1187 = !DILocation(line: 186, column: 3, scope: !1160)
!1188 = distinct !DISubprogram(name: "binary_operator", scope: !6, file: !6, line: 277, type: !1189, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!59, !59}
!1191 = !{!1192, !1193, !1194, !1233, !1234, !1235, !1243, !1244, !1245, !1246, !1247, !1248, !1252, !1253, !1254, !1255, !1258, !1259, !1260, !1261, !1264}
!1192 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1188, file: !6, line: 277, type: !59)
!1193 = !DILocalVariable(name: "op", scope: !1188, file: !6, line: 279, type: !35)
!1194 = !DILocalVariable(name: "stat_buf", scope: !1188, file: !6, line: 280, type: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1196, line: 46, size: 1152, elements: !1197)
!1196 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1197 = !{!1198, !1200, !1202, !1204, !1206, !1208, !1210, !1211, !1212, !1215, !1217, !1219, !1227, !1228, !1229}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1195, file: !1196, line: 48, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !159, line: 143, baseType: !101)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1195, file: !1196, line: 53, baseType: !1201, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !159, line: 146, baseType: !101)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1195, file: !1196, line: 61, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !159, line: 149, baseType: !101)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1195, file: !1196, line: 62, baseType: !1205, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !159, line: 148, baseType: !7)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1195, file: !1196, line: 64, baseType: !1207, size: 32, offset: 224)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !159, line: 144, baseType: !7)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1195, file: !1196, line: 65, baseType: !1209, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !159, line: 145, baseType: !7)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1195, file: !1196, line: 67, baseType: !35, size: 32, offset: 288)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1195, file: !1196, line: 69, baseType: !1199, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1195, file: !1196, line: 74, baseType: !1213, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !159, line: 150, baseType: !1214)
!1214 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1195, file: !1196, line: 78, baseType: !1216, size: 64, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !159, line: 172, baseType: !1214)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1195, file: !1196, line: 80, baseType: !1218, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !159, line: 177, baseType: !1214)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1195, file: !1196, line: 91, baseType: !1220, size: 128, offset: 576)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1221, line: 9, size: 128, elements: !1222)
!1221 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1222 = !{!1223, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1220, file: !1221, line: 11, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !159, line: 158, baseType: !1214)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1220, file: !1221, line: 12, baseType: !1226, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !159, line: 194, baseType: !1214)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1195, file: !1196, line: 92, baseType: !1220, size: 128, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1195, file: !1196, line: 93, baseType: !1220, size: 128, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1195, file: !1196, line: 106, baseType: !1230, size: 192, offset: 960)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 192, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 3)
!1233 = !DILocalVariable(name: "stat_spare", scope: !1188, file: !6, line: 280, type: !1195)
!1234 = !DILocalVariable(name: "r_is_l", scope: !1188, file: !6, line: 282, type: !59)
!1235 = !DILocalVariable(name: "lbuf", scope: !1236, file: !6, line: 305, type: !1240)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !6, line: 304, column: 9)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !6, line: 299, column: 11)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !6, line: 297, column: 5)
!1239 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 296, column: 7)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 168, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 21)
!1243 = !DILocalVariable(name: "rbuf", scope: !1236, file: !6, line: 306, type: !1240)
!1244 = !DILocalVariable(name: "l", scope: !1236, file: !6, line: 307, type: !49)
!1245 = !DILocalVariable(name: "r", scope: !1236, file: !6, line: 310, type: !49)
!1246 = !DILocalVariable(name: "cmp", scope: !1236, file: !6, line: 313, type: !35)
!1247 = !DILocalVariable(name: "xe_operator", scope: !1236, file: !6, line: 314, type: !59)
!1248 = !DILocalVariable(name: "lt", scope: !1249, file: !6, line: 330, type: !1220)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !6, line: 328, column: 13)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 327, column: 15)
!1251 = distinct !DILexicalBlock(scope: !1238, file: !6, line: 322, column: 9)
!1252 = !DILocalVariable(name: "rt", scope: !1249, file: !6, line: 330, type: !1220)
!1253 = !DILocalVariable(name: "le", scope: !1249, file: !6, line: 331, type: !59)
!1254 = !DILocalVariable(name: "re", scope: !1249, file: !6, line: 331, type: !59)
!1255 = !DILocalVariable(name: "lt", scope: !1256, file: !6, line: 359, type: !1220)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !6, line: 357, column: 13)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 356, column: 15)
!1258 = !DILocalVariable(name: "rt", scope: !1256, file: !6, line: 359, type: !1220)
!1259 = !DILocalVariable(name: "le", scope: !1256, file: !6, line: 360, type: !59)
!1260 = !DILocalVariable(name: "re", scope: !1256, file: !6, line: 360, type: !59)
!1261 = !DILocalVariable(name: "value", scope: !1262, file: !6, line: 378, type: !59)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !6, line: 377, column: 5)
!1263 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 375, column: 7)
!1264 = !DILocalVariable(name: "value", scope: !1265, file: !6, line: 385, type: !59)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !6, line: 384, column: 5)
!1266 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 383, column: 7)
!1267 = !DILocation(line: 277, column: 23, scope: !1188)
!1268 = !DILocation(line: 280, column: 3, scope: !1188)
!1269 = !DILocation(line: 0, scope: !1188)
!1270 = !DILocation(line: 284, column: 7, scope: !1188)
!1271 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 285, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 284, column: 7)
!1274 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1272)
!1275 = !DILocation(line: 285, column: 5, scope: !1273)
!1276 = !DILocation(line: 286, column: 8, scope: !1188)
!1277 = !DILocation(line: 286, column: 12, scope: !1188)
!1278 = !DILocation(line: 279, column: 7, scope: !1188)
!1279 = !DILocation(line: 288, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 288, column: 7)
!1281 = !DILocation(line: 288, column: 18, scope: !1280)
!1282 = !DILocation(line: 288, column: 11, scope: !1280)
!1283 = !DILocation(line: 0, scope: !1239)
!1284 = !DILocation(line: 288, column: 23, scope: !1280)
!1285 = !DILocation(line: 288, column: 26, scope: !1280)
!1286 = !DILocation(line: 288, column: 7, scope: !1188)
!1287 = !DILocation(line: 282, column: 8, scope: !1188)
!1288 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 291, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1280, file: !6, line: 289, column: 5)
!1291 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1289)
!1292 = !DILocation(line: 292, column: 5, scope: !1290)
!1293 = !DILocation(line: 296, column: 7, scope: !1239)
!1294 = !DILocation(line: 296, column: 7, scope: !1188)
!1295 = !DILocation(line: 299, column: 14, scope: !1237)
!1296 = !DILocation(line: 299, column: 33, scope: !1237)
!1297 = !DILocation(line: 300, column: 17, scope: !1237)
!1298 = !DILocation(line: 300, column: 36, scope: !1237)
!1299 = !DILocation(line: 301, column: 38, scope: !1237)
!1300 = !DILocation(line: 301, column: 50, scope: !1237)
!1301 = !DILocation(line: 302, column: 12, scope: !1237)
!1302 = !DILocation(line: 302, column: 38, scope: !1237)
!1303 = !DILocation(line: 302, column: 50, scope: !1237)
!1304 = !DILocation(line: 303, column: 11, scope: !1237)
!1305 = !DILocation(line: 303, column: 15, scope: !1237)
!1306 = !DILocation(line: 299, column: 11, scope: !1238)
!1307 = !DILocation(line: 305, column: 11, scope: !1236)
!1308 = !DILocation(line: 305, column: 16, scope: !1236)
!1309 = !DILocation(line: 306, column: 11, scope: !1236)
!1310 = !DILocation(line: 306, column: 16, scope: !1236)
!1311 = !DILocation(line: 0, scope: !1236)
!1312 = !DILocation(line: 307, column: 28, scope: !1236)
!1313 = !DILocation(line: 308, column: 41, scope: !1236)
!1314 = !DILocation(line: 308, column: 30, scope: !1236)
!1315 = !DILocation(line: 309, column: 30, scope: !1236)
!1316 = !DILocation(line: 307, column: 23, scope: !1236)
!1317 = !DILocation(line: 310, column: 28, scope: !1236)
!1318 = !DILocation(line: 311, column: 57, scope: !1236)
!1319 = !DILocation(line: 311, column: 49, scope: !1236)
!1320 = !DILocation(line: 311, column: 41, scope: !1236)
!1321 = !DILocation(line: 311, column: 30, scope: !1236)
!1322 = !DILocation(line: 312, column: 48, scope: !1236)
!1323 = !DILocation(line: 312, column: 40, scope: !1236)
!1324 = !DILocation(line: 312, column: 30, scope: !1236)
!1325 = !DILocation(line: 310, column: 23, scope: !1236)
!1326 = !DILocation(line: 313, column: 21, scope: !1236)
!1327 = !DILocation(line: 313, column: 15, scope: !1236)
!1328 = !DILocation(line: 314, column: 31, scope: !1236)
!1329 = !DILocation(line: 314, column: 43, scope: !1236)
!1330 = !DILocation(line: 315, column: 15, scope: !1236)
!1331 = !DILocation(line: 316, column: 19, scope: !1236)
!1332 = !DILocation(line: 316, column: 46, scope: !1236)
!1333 = !DILocation(line: 316, column: 44, scope: !1236)
!1334 = !DILocation(line: 317, column: 48, scope: !1236)
!1335 = !DILocation(line: 317, column: 46, scope: !1236)
!1336 = !DILocation(line: 317, column: 21, scope: !1236)
!1337 = !DILocation(line: 318, column: 26, scope: !1236)
!1338 = !DILocation(line: 318, column: 32, scope: !1236)
!1339 = !DILocation(line: 319, column: 9, scope: !1237)
!1340 = !DILocation(line: 321, column: 15, scope: !1238)
!1341 = !DILocation(line: 321, column: 7, scope: !1238)
!1342 = !DILocation(line: 327, column: 15, scope: !1250)
!1343 = !DILocation(line: 327, column: 27, scope: !1250)
!1344 = !DILocation(line: 327, column: 34, scope: !1250)
!1345 = !DILocation(line: 327, column: 38, scope: !1250)
!1346 = !DILocation(line: 327, column: 15, scope: !1251)
!1347 = !DILocation(line: 332, column: 19, scope: !1249)
!1348 = !DILocation(line: 333, column: 26, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1249, file: !6, line: 333, column: 19)
!1350 = !DILocation(line: 334, column: 36, scope: !1349)
!1351 = !DILocation(line: 334, column: 17, scope: !1349)
!1352 = !DILocation(line: 335, column: 31, scope: !1249)
!1353 = !DILocation(line: 330, column: 31, scope: !1249)
!1354 = !DILocalVariable(name: "filename", arg: 1, scope: !1355, file: !6, line: 169, type: !49)
!1355 = distinct !DISubprogram(name: "get_mtime", scope: !6, file: !6, line: 169, type: !1356, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1359)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!59, !49, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1359 = !{!1354, !1360, !1361, !1362}
!1360 = !DILocalVariable(name: "mtime", arg: 2, scope: !1355, file: !6, line: 169, type: !1358)
!1361 = !DILocalVariable(name: "finfo", scope: !1355, file: !6, line: 171, type: !1195)
!1362 = !DILocalVariable(name: "ok", scope: !1355, file: !6, line: 172, type: !59)
!1363 = !DILocation(line: 169, column: 24, scope: !1355, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 335, column: 20, scope: !1249)
!1365 = !DILocation(line: 169, column: 51, scope: !1355, inlinedAt: !1364)
!1366 = !DILocation(line: 171, column: 3, scope: !1355, inlinedAt: !1364)
!1367 = !DILocation(line: 171, column: 15, scope: !1355, inlinedAt: !1364)
!1368 = !DILocalVariable(name: "__path", arg: 1, scope: !1369, file: !1370, line: 453, type: !49)
!1369 = distinct !DISubprogram(name: "stat", scope: !1370, file: !1370, line: 453, type: !1371, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1374)
!1370 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!35, !49, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1374 = !{!1368, !1375}
!1375 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1369, file: !1370, line: 453, type: !1373)
!1376 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 172, column: 14, scope: !1355, inlinedAt: !1364)
!1378 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1377)
!1379 = !DILocation(line: 172, column: 38, scope: !1355, inlinedAt: !1364)
!1380 = !DILocalVariable(name: "st", arg: 1, scope: !1381, file: !1382, line: 146, type: !1385)
!1381 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1382, file: !1382, line: 146, type: !1383, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1387)
!1382 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1220, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!1387 = !{!1380}
!1388 = !DILocation(line: 146, column: 36, scope: !1381, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 178, column: 14, scope: !1390, inlinedAt: !1364)
!1390 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 177, column: 7)
!1391 = !DILocation(line: 149, column: 10, scope: !1381, inlinedAt: !1389)
!1392 = !DILocation(line: 180, column: 1, scope: !1355, inlinedAt: !1364)
!1393 = !DILocation(line: 336, column: 31, scope: !1249)
!1394 = !DILocation(line: 336, column: 39, scope: !1249)
!1395 = !DILocation(line: 330, column: 35, scope: !1249)
!1396 = !DILocation(line: 169, column: 24, scope: !1355, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 336, column: 20, scope: !1249)
!1398 = !DILocation(line: 169, column: 51, scope: !1355, inlinedAt: !1397)
!1399 = !DILocation(line: 171, column: 3, scope: !1355, inlinedAt: !1397)
!1400 = !DILocation(line: 171, column: 15, scope: !1355, inlinedAt: !1397)
!1401 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 172, column: 14, scope: !1355, inlinedAt: !1397)
!1403 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1402)
!1404 = !DILocation(line: 172, column: 38, scope: !1355, inlinedAt: !1397)
!1405 = !DILocation(line: 177, column: 7, scope: !1355, inlinedAt: !1397)
!1406 = !DILocation(line: 180, column: 1, scope: !1355, inlinedAt: !1397)
!1407 = !DILocation(line: 337, column: 25, scope: !1249)
!1408 = !DILocation(line: 146, column: 36, scope: !1381, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 178, column: 14, scope: !1390, inlinedAt: !1397)
!1410 = !DILocation(line: 149, column: 10, scope: !1381, inlinedAt: !1409)
!1411 = !DILocation(line: 84, column: 16, scope: !1412, inlinedAt: !1419)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !28, line: 84, column: 7)
!1413 = distinct !DISubprogram(name: "timespec_cmp", scope: !28, file: !28, line: 82, type: !1414, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1416)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!35, !1220, !1220}
!1416 = !{!1417, !1418}
!1417 = !DILocalVariable(name: "a", arg: 1, scope: !1413, file: !28, line: 82, type: !1220)
!1418 = !DILocalVariable(name: "b", arg: 2, scope: !1413, file: !28, line: 82, type: !1220)
!1419 = distinct !DILocation(line: 337, column: 36, scope: !1249)
!1420 = !DILocation(line: 82, column: 31, scope: !1413, inlinedAt: !1419)
!1421 = !DILocation(line: 82, column: 50, scope: !1413, inlinedAt: !1419)
!1422 = !DILocation(line: 86, column: 16, scope: !1423, inlinedAt: !1419)
!1423 = distinct !DILexicalBlock(scope: !1413, file: !28, line: 86, column: 7)
!1424 = !DILocation(line: 86, column: 7, scope: !1413, inlinedAt: !1419)
!1425 = !DILocation(line: 94, column: 20, scope: !1413, inlinedAt: !1419)
!1426 = !DILocation(line: 94, column: 10, scope: !1413, inlinedAt: !1419)
!1427 = !DILocation(line: 94, column: 3, scope: !1413, inlinedAt: !1419)
!1428 = !DILocation(line: 342, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 342, column: 15)
!1430 = !DILocation(line: 342, column: 27, scope: !1429)
!1431 = !DILocation(line: 342, column: 34, scope: !1429)
!1432 = !DILocation(line: 342, column: 38, scope: !1429)
!1433 = !DILocation(line: 342, column: 15, scope: !1251)
!1434 = !DILocation(line: 345, column: 19, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1429, file: !6, line: 343, column: 13)
!1436 = !DILocation(line: 346, column: 26, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1435, file: !6, line: 346, column: 19)
!1438 = !DILocation(line: 347, column: 36, scope: !1437)
!1439 = !DILocation(line: 347, column: 17, scope: !1437)
!1440 = !DILocation(line: 348, column: 29, scope: !1435)
!1441 = !DILocation(line: 280, column: 15, scope: !1188)
!1442 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 348, column: 23, scope: !1435)
!1444 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1443)
!1445 = !DILocation(line: 348, column: 54, scope: !1435)
!1446 = !DILocation(line: 349, column: 23, scope: !1435)
!1447 = !DILocation(line: 349, column: 32, scope: !1435)
!1448 = !DILocation(line: 349, column: 40, scope: !1435)
!1449 = !DILocation(line: 280, column: 25, scope: !1188)
!1450 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 349, column: 26, scope: !1435)
!1452 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1451)
!1453 = !DILocation(line: 349, column: 59, scope: !1435)
!1454 = !DILocation(line: 350, column: 23, scope: !1435)
!1455 = !DILocation(line: 350, column: 35, scope: !1435)
!1456 = !{!1457, !1458, i64 0}
!1457 = !{!"stat", !1458, i64 0, !1458, i64 8, !1458, i64 16, !717, i64 24, !717, i64 28, !717, i64 32, !717, i64 36, !1458, i64 40, !1458, i64 48, !1458, i64 56, !1458, i64 64, !1459, i64 72, !1459, i64 88, !1459, i64 104, !640, i64 120}
!1458 = !{!"long", !640, i64 0}
!1459 = !{!"timespec", !1458, i64 0, !1458, i64 8}
!1460 = !DILocation(line: 350, column: 56, scope: !1435)
!1461 = !DILocation(line: 350, column: 42, scope: !1435)
!1462 = !DILocation(line: 351, column: 23, scope: !1435)
!1463 = !DILocation(line: 351, column: 35, scope: !1435)
!1464 = !{!1457, !1458, i64 8}
!1465 = !DILocation(line: 351, column: 56, scope: !1435)
!1466 = !DILocation(line: 351, column: 42, scope: !1435)
!1467 = !DILocation(line: 356, column: 22, scope: !1257)
!1468 = !DILocation(line: 356, column: 19, scope: !1257)
!1469 = !DILocation(line: 356, column: 34, scope: !1257)
!1470 = !DILocation(line: 356, column: 47, scope: !1257)
!1471 = !DILocation(line: 356, column: 44, scope: !1257)
!1472 = !DILocation(line: 356, column: 15, scope: !1251)
!1473 = !DILocation(line: 361, column: 19, scope: !1256)
!1474 = !DILocation(line: 362, column: 26, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1256, file: !6, line: 362, column: 19)
!1476 = !DILocation(line: 363, column: 36, scope: !1475)
!1477 = !DILocation(line: 363, column: 17, scope: !1475)
!1478 = !DILocation(line: 364, column: 31, scope: !1256)
!1479 = !DILocation(line: 359, column: 31, scope: !1256)
!1480 = !DILocation(line: 169, column: 24, scope: !1355, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 364, column: 20, scope: !1256)
!1482 = !DILocation(line: 169, column: 51, scope: !1355, inlinedAt: !1481)
!1483 = !DILocation(line: 171, column: 3, scope: !1355, inlinedAt: !1481)
!1484 = !DILocation(line: 171, column: 15, scope: !1355, inlinedAt: !1481)
!1485 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 172, column: 14, scope: !1355, inlinedAt: !1481)
!1487 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1486)
!1488 = !DILocation(line: 146, column: 36, scope: !1381, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 178, column: 14, scope: !1390, inlinedAt: !1481)
!1490 = !DILocation(line: 149, column: 10, scope: !1381, inlinedAt: !1489)
!1491 = !DILocation(line: 180, column: 1, scope: !1355, inlinedAt: !1481)
!1492 = !DILocation(line: 365, column: 31, scope: !1256)
!1493 = !DILocation(line: 365, column: 39, scope: !1256)
!1494 = !DILocation(line: 359, column: 35, scope: !1256)
!1495 = !DILocation(line: 169, column: 24, scope: !1355, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 365, column: 20, scope: !1256)
!1497 = !DILocation(line: 169, column: 51, scope: !1355, inlinedAt: !1496)
!1498 = !DILocation(line: 171, column: 3, scope: !1355, inlinedAt: !1496)
!1499 = !DILocation(line: 171, column: 15, scope: !1355, inlinedAt: !1496)
!1500 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 172, column: 14, scope: !1355, inlinedAt: !1496)
!1502 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1501)
!1503 = !DILocation(line: 172, column: 38, scope: !1355, inlinedAt: !1496)
!1504 = !DILocation(line: 177, column: 7, scope: !1355, inlinedAt: !1496)
!1505 = !DILocation(line: 180, column: 1, scope: !1355, inlinedAt: !1496)
!1506 = !DILocation(line: 366, column: 25, scope: !1256)
!1507 = !DILocation(line: 172, column: 38, scope: !1355, inlinedAt: !1481)
!1508 = !DILocation(line: 146, column: 36, scope: !1381, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 178, column: 14, scope: !1390, inlinedAt: !1496)
!1510 = !DILocation(line: 149, column: 10, scope: !1381, inlinedAt: !1509)
!1511 = !DILocation(line: 84, column: 16, scope: !1412, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 366, column: 36, scope: !1256)
!1513 = !DILocation(line: 82, column: 31, scope: !1413, inlinedAt: !1512)
!1514 = !DILocation(line: 82, column: 50, scope: !1413, inlinedAt: !1512)
!1515 = !DILocation(line: 86, column: 16, scope: !1423, inlinedAt: !1512)
!1516 = !DILocation(line: 86, column: 7, scope: !1413, inlinedAt: !1512)
!1517 = !DILocation(line: 94, column: 20, scope: !1413, inlinedAt: !1512)
!1518 = !DILocation(line: 94, column: 10, scope: !1413, inlinedAt: !1512)
!1519 = !DILocation(line: 94, column: 3, scope: !1413, inlinedAt: !1512)
!1520 = !DILocation(line: 372, column: 26, scope: !1238)
!1521 = !DILocation(line: 372, column: 67, scope: !1238)
!1522 = !DILocation(line: 372, column: 60, scope: !1238)
!1523 = !DILocation(line: 372, column: 7, scope: !1238)
!1524 = !DILocation(line: 376, column: 12, scope: !1263)
!1525 = !DILocation(line: 376, column: 24, scope: !1263)
!1526 = !DILocation(line: 376, column: 53, scope: !1263)
!1527 = !DILocation(line: 375, column: 7, scope: !1188)
!1528 = !DILocation(line: 378, column: 20, scope: !1262)
!1529 = !DILocation(line: 379, column: 11, scope: !1262)
!1530 = !DILocation(line: 383, column: 7, scope: !1266)
!1531 = !DILocation(line: 383, column: 7, scope: !1188)
!1532 = !DILocation(line: 385, column: 21, scope: !1265)
!1533 = !DILocation(line: 386, column: 11, scope: !1265)
!1534 = !DILocation(line: 391, column: 3, scope: !1188)
!1535 = !DILocation(line: 0, scope: !1262)
!1536 = !DILocation(line: 392, column: 1, scope: !1188)
!1537 = distinct !DISubprogram(name: "unary_operator", scope: !6, file: !6, line: 395, type: !802, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1538)
!1538 = !{!1539, !1540, !1545, !1546, !1549, !1550, !1552}
!1539 = !DILocalVariable(name: "stat_buf", scope: !1537, file: !6, line: 397, type: !1195)
!1540 = !DILocalVariable(name: "euid", scope: !1541, file: !6, line: 432, type: !1543)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !6, line: 427, column: 7)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !6, line: 400, column: 5)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1544, line: 79, baseType: !1207)
!1544 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1545 = !DILocalVariable(name: "NO_UID", scope: !1541, file: !6, line: 433, type: !1543)
!1546 = !DILocalVariable(name: "egid", scope: !1547, file: !6, line: 443, type: !1548)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !6, line: 438, column: 7)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1544, line: 64, baseType: !1209)
!1549 = !DILocalVariable(name: "NO_GID", scope: !1547, file: !6, line: 444, type: !1548)
!1550 = !DILocalVariable(name: "fd", scope: !1551, file: !6, line: 510, type: !1214)
!1551 = distinct !DILexicalBlock(scope: !1542, file: !6, line: 509, column: 7)
!1552 = !DILocalVariable(name: "arg", scope: !1551, file: !6, line: 511, type: !49)
!1553 = !DILocation(line: 397, column: 3, scope: !1537)
!1554 = !DILocation(line: 399, column: 11, scope: !1537)
!1555 = !DILocation(line: 399, column: 16, scope: !1537)
!1556 = !DILocation(line: 399, column: 3, scope: !1537)
!1557 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1560)
!1559 = distinct !DISubprogram(name: "unary_advance", scope: !6, file: !6, line: 114, type: !1021, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !47)
!1560 = distinct !DILocation(line: 411, column: 7, scope: !1542)
!1561 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1558)
!1562 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1558)
!1563 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1558)
!1564 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1558)
!1565 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1558)
!1566 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1560)
!1567 = !DILocation(line: 412, column: 20, scope: !1542)
!1568 = !DILocation(line: 397, column: 15, scope: !1537)
!1569 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 412, column: 14, scope: !1542)
!1571 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1570)
!1572 = !DILocation(line: 412, column: 46, scope: !1542)
!1573 = !DILocation(line: 412, column: 7, scope: !1542)
!1574 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 415, column: 7, scope: !1542)
!1577 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1575)
!1578 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1575)
!1579 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1575)
!1580 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1575)
!1581 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1575)
!1582 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1576)
!1583 = !DILocation(line: 416, column: 26, scope: !1542)
!1584 = !DILocation(line: 416, column: 14, scope: !1542)
!1585 = !DILocation(line: 416, column: 47, scope: !1542)
!1586 = !DILocation(line: 416, column: 7, scope: !1542)
!1587 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 419, column: 7, scope: !1542)
!1590 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1588)
!1591 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1588)
!1592 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1588)
!1593 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1588)
!1594 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1588)
!1595 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1589)
!1596 = !DILocation(line: 420, column: 26, scope: !1542)
!1597 = !DILocation(line: 420, column: 14, scope: !1542)
!1598 = !DILocation(line: 420, column: 47, scope: !1542)
!1599 = !DILocation(line: 420, column: 7, scope: !1542)
!1600 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 423, column: 7, scope: !1542)
!1603 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1601)
!1604 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1601)
!1605 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1601)
!1606 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1601)
!1607 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1601)
!1608 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1602)
!1609 = !DILocation(line: 424, column: 26, scope: !1542)
!1610 = !DILocation(line: 424, column: 14, scope: !1542)
!1611 = !DILocation(line: 424, column: 47, scope: !1542)
!1612 = !DILocation(line: 424, column: 7, scope: !1542)
!1613 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 428, column: 9, scope: !1541)
!1616 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1614)
!1617 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1614)
!1618 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1614)
!1619 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1614)
!1620 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1614)
!1621 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1615)
!1622 = !DILocation(line: 429, column: 19, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1541, file: !6, line: 429, column: 13)
!1624 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 429, column: 13, scope: !1623)
!1626 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1625)
!1627 = !DILocation(line: 429, column: 45, scope: !1623)
!1628 = !DILocation(line: 429, column: 13, scope: !1541)
!1629 = !DILocation(line: 431, column: 9, scope: !1541)
!1630 = !DILocation(line: 431, column: 15, scope: !1541)
!1631 = !DILocation(line: 432, column: 22, scope: !1541)
!1632 = !DILocation(line: 432, column: 15, scope: !1541)
!1633 = !DILocation(line: 433, column: 15, scope: !1541)
!1634 = !DILocation(line: 434, column: 24, scope: !1541)
!1635 = !DILocation(line: 434, column: 34, scope: !1541)
!1636 = !DILocation(line: 434, column: 37, scope: !1541)
!1637 = !DILocation(line: 434, column: 44, scope: !1541)
!1638 = !DILocation(line: 434, column: 64, scope: !1541)
!1639 = !{!1457, !717, i64 28}
!1640 = !DILocation(line: 434, column: 52, scope: !1541)
!1641 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 439, column: 9, scope: !1547)
!1644 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1642)
!1645 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1642)
!1646 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1642)
!1647 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1642)
!1648 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1642)
!1649 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1643)
!1650 = !DILocation(line: 440, column: 19, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1547, file: !6, line: 440, column: 13)
!1652 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 440, column: 13, scope: !1651)
!1654 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1653)
!1655 = !DILocation(line: 440, column: 45, scope: !1651)
!1656 = !DILocation(line: 440, column: 13, scope: !1547)
!1657 = !DILocation(line: 442, column: 9, scope: !1547)
!1658 = !DILocation(line: 442, column: 15, scope: !1547)
!1659 = !DILocation(line: 443, column: 22, scope: !1547)
!1660 = !DILocation(line: 443, column: 15, scope: !1547)
!1661 = !DILocation(line: 444, column: 15, scope: !1547)
!1662 = !DILocation(line: 445, column: 24, scope: !1547)
!1663 = !DILocation(line: 445, column: 34, scope: !1547)
!1664 = !DILocation(line: 445, column: 37, scope: !1547)
!1665 = !DILocation(line: 445, column: 44, scope: !1547)
!1666 = !DILocation(line: 445, column: 64, scope: !1547)
!1667 = !{!1457, !717, i64 32}
!1668 = !DILocation(line: 445, column: 52, scope: !1547)
!1669 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 449, column: 7, scope: !1542)
!1672 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1670)
!1673 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1670)
!1674 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1670)
!1675 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1670)
!1676 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1670)
!1677 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1671)
!1678 = !DILocation(line: 452, column: 21, scope: !1542)
!1679 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 452, column: 15, scope: !1542)
!1681 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1680)
!1682 = !DILocation(line: 452, column: 47, scope: !1542)
!1683 = !DILocation(line: 453, column: 15, scope: !1542)
!1684 = !DILocation(line: 453, column: 18, scope: !1542)
!1685 = !{!1457, !717, i64 24}
!1686 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 456, column: 7, scope: !1542)
!1689 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1687)
!1690 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1687)
!1691 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1687)
!1692 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1687)
!1693 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1687)
!1694 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1688)
!1695 = !DILocation(line: 457, column: 21, scope: !1542)
!1696 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 457, column: 15, scope: !1542)
!1698 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1697)
!1699 = !DILocation(line: 457, column: 47, scope: !1542)
!1700 = !DILocation(line: 458, column: 15, scope: !1542)
!1701 = !DILocation(line: 458, column: 18, scope: !1542)
!1702 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 461, column: 7, scope: !1542)
!1705 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1703)
!1706 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1703)
!1707 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1703)
!1708 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1703)
!1709 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1703)
!1710 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1704)
!1711 = !DILocation(line: 462, column: 21, scope: !1542)
!1712 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 462, column: 15, scope: !1542)
!1714 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1713)
!1715 = !DILocation(line: 462, column: 47, scope: !1542)
!1716 = !DILocation(line: 463, column: 31, scope: !1542)
!1717 = !DILocation(line: 463, column: 20, scope: !1542)
!1718 = !DILocation(line: 463, column: 15, scope: !1542)
!1719 = !DILocation(line: 462, column: 7, scope: !1542)
!1720 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 466, column: 7, scope: !1542)
!1723 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1721)
!1724 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1721)
!1725 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1721)
!1726 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1721)
!1727 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1721)
!1728 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1722)
!1729 = !DILocation(line: 467, column: 21, scope: !1542)
!1730 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 467, column: 15, scope: !1542)
!1732 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1731)
!1733 = !DILocation(line: 467, column: 47, scope: !1542)
!1734 = !DILocation(line: 468, column: 15, scope: !1542)
!1735 = !DILocation(line: 468, column: 18, scope: !1542)
!1736 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 471, column: 7, scope: !1542)
!1739 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1737)
!1740 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1737)
!1741 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1737)
!1742 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1737)
!1743 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1737)
!1744 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1738)
!1745 = !DILocation(line: 472, column: 21, scope: !1542)
!1746 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 472, column: 15, scope: !1542)
!1748 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1747)
!1749 = !DILocation(line: 472, column: 47, scope: !1542)
!1750 = !DILocation(line: 473, column: 15, scope: !1542)
!1751 = !DILocation(line: 473, column: 18, scope: !1542)
!1752 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 476, column: 7, scope: !1542)
!1755 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1753)
!1756 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1753)
!1757 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1753)
!1758 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1753)
!1759 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1753)
!1760 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1754)
!1761 = !DILocation(line: 477, column: 21, scope: !1542)
!1762 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 477, column: 15, scope: !1542)
!1764 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1763)
!1765 = !DILocation(line: 477, column: 47, scope: !1542)
!1766 = !DILocation(line: 478, column: 15, scope: !1542)
!1767 = !DILocation(line: 478, column: 18, scope: !1542)
!1768 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 481, column: 7, scope: !1542)
!1771 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1769)
!1772 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1769)
!1773 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1769)
!1774 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1769)
!1775 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1769)
!1776 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1770)
!1777 = !DILocation(line: 482, column: 21, scope: !1542)
!1778 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 482, column: 15, scope: !1542)
!1780 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1779)
!1781 = !DILocation(line: 482, column: 47, scope: !1542)
!1782 = !DILocation(line: 483, column: 15, scope: !1542)
!1783 = !DILocation(line: 483, column: 18, scope: !1542)
!1784 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 489, column: 7, scope: !1542)
!1787 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1785)
!1788 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1785)
!1789 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1785)
!1790 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1785)
!1791 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1785)
!1792 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1786)
!1793 = !DILocation(line: 490, column: 22, scope: !1542)
!1794 = !DILocalVariable(name: "__path", arg: 1, scope: !1795, file: !1370, line: 460, type: !49)
!1795 = distinct !DISubprogram(name: "lstat", scope: !1370, file: !1370, line: 460, type: !1371, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1796)
!1796 = !{!1794, !1797}
!1797 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1795, file: !1370, line: 460, type: !1373)
!1798 = !DILocation(line: 460, column: 1, scope: !1795, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 490, column: 15, scope: !1542)
!1800 = !DILocation(line: 462, column: 10, scope: !1795, inlinedAt: !1799)
!1801 = !DILocation(line: 490, column: 48, scope: !1542)
!1802 = !DILocation(line: 491, column: 15, scope: !1542)
!1803 = !DILocation(line: 491, column: 18, scope: !1542)
!1804 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 494, column: 7, scope: !1542)
!1807 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1805)
!1808 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1805)
!1809 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1805)
!1810 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1805)
!1811 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1805)
!1812 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1806)
!1813 = !DILocation(line: 495, column: 21, scope: !1542)
!1814 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 495, column: 15, scope: !1542)
!1816 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1815)
!1817 = !DILocation(line: 495, column: 47, scope: !1542)
!1818 = !DILocation(line: 496, column: 15, scope: !1542)
!1819 = !DILocation(line: 496, column: 28, scope: !1542)
!1820 = !DILocation(line: 496, column: 36, scope: !1542)
!1821 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 499, column: 7, scope: !1542)
!1824 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1822)
!1825 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1822)
!1826 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1822)
!1827 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1822)
!1828 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1822)
!1829 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1823)
!1830 = !DILocation(line: 500, column: 21, scope: !1542)
!1831 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 500, column: 15, scope: !1542)
!1833 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1832)
!1834 = !DILocation(line: 500, column: 47, scope: !1542)
!1835 = !DILocation(line: 501, column: 15, scope: !1542)
!1836 = !DILocation(line: 501, column: 28, scope: !1542)
!1837 = !DILocation(line: 501, column: 36, scope: !1542)
!1838 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 504, column: 7, scope: !1542)
!1841 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1839)
!1842 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1839)
!1843 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1839)
!1844 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1839)
!1845 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1839)
!1846 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1840)
!1847 = !DILocation(line: 505, column: 21, scope: !1542)
!1848 = !DILocation(line: 453, column: 1, scope: !1369, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 505, column: 15, scope: !1542)
!1850 = !DILocation(line: 455, column: 10, scope: !1369, inlinedAt: !1849)
!1851 = !DILocation(line: 505, column: 47, scope: !1542)
!1852 = !DILocation(line: 506, column: 15, scope: !1542)
!1853 = !DILocation(line: 506, column: 28, scope: !1542)
!1854 = !DILocation(line: 506, column: 36, scope: !1542)
!1855 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 512, column: 9, scope: !1551)
!1858 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1856)
!1859 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1856)
!1860 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1856)
!1861 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1856)
!1862 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1856)
!1863 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1857)
!1864 = !DILocation(line: 513, column: 25, scope: !1551)
!1865 = !DILocation(line: 513, column: 15, scope: !1551)
!1866 = !DILocation(line: 511, column: 21, scope: !1551)
!1867 = !DILocation(line: 514, column: 9, scope: !1551)
!1868 = !DILocation(line: 514, column: 15, scope: !1551)
!1869 = !DILocation(line: 515, column: 14, scope: !1551)
!1870 = !DILocation(line: 510, column: 18, scope: !1551)
!1871 = !DILocation(line: 516, column: 17, scope: !1551)
!1872 = !DILocation(line: 516, column: 23, scope: !1551)
!1873 = !DILocation(line: 516, column: 33, scope: !1551)
!1874 = !DILocation(line: 516, column: 72, scope: !1551)
!1875 = !DILocation(line: 516, column: 64, scope: !1551)
!1876 = !DILocation(line: 516, column: 61, scope: !1551)
!1877 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 520, column: 7, scope: !1542)
!1880 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1878)
!1881 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1878)
!1882 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1878)
!1883 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1878)
!1884 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1878)
!1885 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1879)
!1886 = !DILocation(line: 521, column: 14, scope: !1542)
!1887 = !DILocation(line: 521, column: 31, scope: !1542)
!1888 = !DILocation(line: 521, column: 7, scope: !1542)
!1889 = !DILocation(line: 105, column: 15, scope: !818, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 116, column: 3, scope: !1559, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 524, column: 7, scope: !1542)
!1892 = !DILocation(line: 107, column: 3, scope: !818, inlinedAt: !1890)
!1893 = !DILocation(line: 109, column: 19, scope: !827, inlinedAt: !1890)
!1894 = !DILocation(line: 109, column: 16, scope: !827, inlinedAt: !1890)
!1895 = !DILocation(line: 109, column: 9, scope: !827, inlinedAt: !1890)
!1896 = !DILocation(line: 110, column: 5, scope: !827, inlinedAt: !1890)
!1897 = !DILocation(line: 117, column: 3, scope: !1559, inlinedAt: !1891)
!1898 = !DILocation(line: 525, column: 14, scope: !1542)
!1899 = !DILocation(line: 525, column: 31, scope: !1542)
!1900 = !DILocation(line: 525, column: 7, scope: !1542)
!1901 = !DILocation(line: 0, scope: !1542)
!1902 = !DILocation(line: 527, column: 1, scope: !1537)
!1903 = distinct !DISubprogram(name: "find_int", scope: !6, file: !6, line: 134, type: !1904, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!49, !49}
!1906 = !{!1907, !1908, !1909}
!1907 = !DILocalVariable(name: "string", arg: 1, scope: !1903, file: !6, line: 134, type: !49)
!1908 = !DILocalVariable(name: "p", scope: !1903, file: !6, line: 136, type: !49)
!1909 = !DILocalVariable(name: "number_start", scope: !1903, file: !6, line: 137, type: !49)
!1910 = !DILocation(line: 134, column: 23, scope: !1903)
!1911 = !DILocation(line: 136, column: 15, scope: !1903)
!1912 = !DILocation(line: 139, column: 20, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !6, line: 139, column: 3)
!1914 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 139, column: 3)
!1915 = !DILocation(line: 139, column: 8, scope: !1914)
!1916 = !DILocation(line: 0, scope: !1913)
!1917 = !{!1918, !1918, i64 0}
!1918 = !{!"short", !640, i64 0}
!1919 = !DILocation(line: 139, column: 3, scope: !1914)
!1920 = !DILocation(line: 139, column: 46, scope: !1913)
!1921 = distinct !{!1921, !1919, !1922}
!1922 = !DILocation(line: 140, column: 5, scope: !1914)
!1923 = !DILocation(line: 142, column: 10, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 142, column: 7)
!1925 = !DILocation(line: 137, column: 15, scope: !1903)
!1926 = !DILocation(line: 150, column: 16, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1924, file: !6, line: 148, column: 5)
!1928 = !DILocation(line: 150, column: 9, scope: !1927)
!1929 = !DILocation(line: 142, column: 7, scope: !1903)
!1930 = !DILocation(line: 153, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 153, column: 7)
!1932 = !DILocation(line: 153, column: 7, scope: !1903)
!1933 = !DILocation(line: 0, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !6, line: 154, column: 5)
!1935 = !DILocation(line: 155, column: 14, scope: !1934)
!1936 = !DILocation(line: 155, column: 7, scope: !1934)
!1937 = distinct !{!1937, !1936, !1938}
!1938 = !DILocation(line: 156, column: 10, scope: !1934)
!1939 = !DILocation(line: 157, column: 14, scope: !1934)
!1940 = !DILocation(line: 157, column: 7, scope: !1934)
!1941 = !DILocation(line: 158, column: 10, scope: !1934)
!1942 = distinct !{!1942, !1940, !1941}
!1943 = !DILocation(line: 159, column: 12, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1934, file: !6, line: 159, column: 11)
!1945 = !DILocation(line: 159, column: 11, scope: !1934)
!1946 = !DILocation(line: 160, column: 9, scope: !1944)
!1947 = !DILocation(line: 163, column: 22, scope: !1903)
!1948 = !DILocation(line: 163, column: 47, scope: !1903)
!1949 = !DILocation(line: 163, column: 3, scope: !1903)
!1950 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !58, file: !58, line: 51, type: !613, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !53, retainedNodes: !1951)
!1951 = !{!1952}
!1952 = !DILocalVariable(name: "file", arg: 1, scope: !1950, file: !58, line: 51, type: !49)
!1953 = !DILocation(line: 51, column: 41, scope: !1950)
!1954 = !DILocation(line: 53, column: 13, scope: !1950)
!1955 = !DILocation(line: 54, column: 1, scope: !1950)
!1956 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !58, file: !58, line: 88, type: !819, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !53, retainedNodes: !1957)
!1957 = !{!1958}
!1958 = !DILocalVariable(name: "ignore", arg: 1, scope: !1956, file: !58, line: 88, type: !59)
!1959 = !DILocation(line: 88, column: 37, scope: !1956)
!1960 = !DILocation(line: 90, column: 16, scope: !1956)
!1961 = !{!1962, !1962, i64 0}
!1962 = !{!"_Bool", !640, i64 0}
!1963 = !DILocation(line: 91, column: 1, scope: !1956)
!1964 = distinct !DISubprogram(name: "close_stdout", scope: !58, file: !58, line: 117, type: !1021, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !53, retainedNodes: !1965)
!1965 = !{!1966}
!1966 = !DILocalVariable(name: "write_error", scope: !1967, file: !58, line: 122, type: !49)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !58, line: 121, column: 5)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !58, line: 119, column: 7)
!1969 = !DILocation(line: 119, column: 21, scope: !1968)
!1970 = !DILocation(line: 119, column: 7, scope: !1968)
!1971 = !DILocation(line: 119, column: 29, scope: !1968)
!1972 = !DILocation(line: 120, column: 7, scope: !1968)
!1973 = !DILocation(line: 120, column: 12, scope: !1968)
!1974 = !{i8 0, i8 2}
!1975 = !DILocation(line: 120, column: 25, scope: !1968)
!1976 = !DILocation(line: 120, column: 28, scope: !1968)
!1977 = !DILocation(line: 120, column: 34, scope: !1968)
!1978 = !DILocation(line: 119, column: 7, scope: !1964)
!1979 = !DILocation(line: 122, column: 33, scope: !1967)
!1980 = !DILocation(line: 122, column: 19, scope: !1967)
!1981 = !DILocation(line: 123, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1967, file: !58, line: 123, column: 11)
!1983 = !DILocation(line: 0, scope: !1982)
!1984 = !DILocation(line: 123, column: 11, scope: !1967)
!1985 = !DILocation(line: 124, column: 36, scope: !1982)
!1986 = !DILocation(line: 124, column: 9, scope: !1982)
!1987 = !DILocation(line: 127, column: 9, scope: !1982)
!1988 = !DILocation(line: 129, column: 14, scope: !1967)
!1989 = !DILocation(line: 129, column: 7, scope: !1967)
!1990 = !DILocation(line: 134, column: 42, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1964, file: !58, line: 134, column: 7)
!1992 = !DILocation(line: 134, column: 28, scope: !1991)
!1993 = !DILocation(line: 134, column: 50, scope: !1991)
!1994 = !DILocation(line: 134, column: 7, scope: !1964)
!1995 = !DILocation(line: 135, column: 12, scope: !1991)
!1996 = !DILocation(line: 135, column: 5, scope: !1991)
!1997 = !DILocation(line: 136, column: 1, scope: !1964)
!1998 = distinct !DISubprogram(name: "umaxtostr", scope: !1999, file: !1999, line: 36, type: !2000, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !153, retainedNodes: !2002)
!1999 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!32, !156, !32}
!2002 = !{!2003, !2004, !2005}
!2003 = !DILocalVariable(name: "i", arg: 1, scope: !1998, file: !1999, line: 36, type: !156)
!2004 = !DILocalVariable(name: "buf", arg: 2, scope: !1998, file: !1999, line: 36, type: !32)
!2005 = !DILocalVariable(name: "p", scope: !1998, file: !1999, line: 38, type: !32)
!2006 = !DILocation(line: 36, column: 19, scope: !1998)
!2007 = !DILocation(line: 36, column: 28, scope: !1998)
!2008 = !DILocation(line: 38, column: 17, scope: !1998)
!2009 = !DILocation(line: 38, column: 9, scope: !1998)
!2010 = !DILocation(line: 39, column: 6, scope: !1998)
!2011 = !DILocation(line: 41, column: 7, scope: !1998)
!2012 = !DILocation(line: 0, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !1999, line: 50, column: 5)
!2014 = distinct !DILexicalBlock(scope: !1998, file: !1999, line: 41, column: 7)
!2015 = !DILocation(line: 52, column: 24, scope: !2013)
!2016 = !DILocation(line: 52, column: 16, scope: !2013)
!2017 = !DILocation(line: 52, column: 10, scope: !2013)
!2018 = !DILocation(line: 52, column: 14, scope: !2013)
!2019 = !DILocation(line: 53, column: 17, scope: !2013)
!2020 = !DILocation(line: 53, column: 24, scope: !2013)
!2021 = !DILocation(line: 52, column: 9, scope: !2013)
!2022 = distinct !{!2022, !2023, !2024}
!2023 = !DILocation(line: 51, column: 7, scope: !2013)
!2024 = !DILocation(line: 53, column: 28, scope: !2013)
!2025 = !DILocation(line: 56, column: 3, scope: !1998)
!2026 = distinct !DISubprogram(name: "set_program_name", scope: !73, file: !73, line: 39, type: !613, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !69, retainedNodes: !2027)
!2027 = !{!2028, !2029, !2030}
!2028 = !DILocalVariable(name: "argv0", arg: 1, scope: !2026, file: !73, line: 39, type: !49)
!2029 = !DILocalVariable(name: "slash", scope: !2026, file: !73, line: 46, type: !49)
!2030 = !DILocalVariable(name: "base", scope: !2026, file: !73, line: 47, type: !49)
!2031 = !DILocation(line: 39, column: 31, scope: !2026)
!2032 = !DILocation(line: 51, column: 13, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2026, file: !73, line: 51, column: 7)
!2034 = !DILocation(line: 51, column: 7, scope: !2026)
!2035 = !DILocation(line: 55, column: 14, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2033, file: !73, line: 52, column: 5)
!2037 = !DILocation(line: 54, column: 7, scope: !2036)
!2038 = !DILocation(line: 56, column: 7, scope: !2036)
!2039 = !DILocation(line: 59, column: 11, scope: !2026)
!2040 = !DILocation(line: 46, column: 15, scope: !2026)
!2041 = !DILocation(line: 60, column: 17, scope: !2026)
!2042 = !DILocation(line: 60, column: 33, scope: !2026)
!2043 = !DILocation(line: 60, column: 11, scope: !2026)
!2044 = !DILocation(line: 47, column: 15, scope: !2026)
!2045 = !DILocation(line: 61, column: 12, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2026, file: !73, line: 61, column: 7)
!2047 = !DILocation(line: 61, column: 20, scope: !2046)
!2048 = !DILocation(line: 61, column: 25, scope: !2046)
!2049 = !DILocation(line: 61, column: 42, scope: !2046)
!2050 = !DILocation(line: 61, column: 28, scope: !2046)
!2051 = !DILocation(line: 61, column: 61, scope: !2046)
!2052 = !DILocation(line: 61, column: 7, scope: !2026)
!2053 = !DILocation(line: 64, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !73, line: 64, column: 11)
!2055 = distinct !DILexicalBlock(scope: !2046, file: !73, line: 62, column: 5)
!2056 = !DILocation(line: 64, column: 36, scope: !2054)
!2057 = !DILocation(line: 64, column: 11, scope: !2055)
!2058 = !DILocation(line: 66, column: 24, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !73, line: 65, column: 9)
!2060 = !DILocation(line: 70, column: 41, scope: !2059)
!2061 = !DILocation(line: 72, column: 9, scope: !2059)
!2062 = !DILocation(line: 84, column: 16, scope: !2026)
!2063 = !DILocation(line: 90, column: 27, scope: !2026)
!2064 = !DILocation(line: 92, column: 1, scope: !2026)
!2065 = distinct !DISubprogram(name: "clone_quoting_options", scope: !105, file: !105, line: 122, type: !2066, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2069)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!2068, !2068}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!2069 = !{!2070, !2071, !2072}
!2070 = !DILocalVariable(name: "o", arg: 1, scope: !2065, file: !105, line: 122, type: !2068)
!2071 = !DILocalVariable(name: "e", scope: !2065, file: !105, line: 124, type: !35)
!2072 = !DILocalVariable(name: "p", scope: !2065, file: !105, line: 125, type: !2068)
!2073 = !DILocation(line: 122, column: 48, scope: !2065)
!2074 = !DILocation(line: 124, column: 11, scope: !2065)
!2075 = !DILocation(line: 124, column: 7, scope: !2065)
!2076 = !DILocation(line: 125, column: 40, scope: !2065)
!2077 = !DILocation(line: 125, column: 31, scope: !2065)
!2078 = !DILocation(line: 125, column: 27, scope: !2065)
!2079 = !DILocation(line: 127, column: 9, scope: !2065)
!2080 = !DILocation(line: 128, column: 3, scope: !2065)
!2081 = distinct !DISubprogram(name: "get_quoting_style", scope: !105, file: !105, line: 133, type: !2082, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2086)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!79, !2084}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "o", arg: 1, scope: !2081, file: !105, line: 133, type: !2084)
!2088 = !DILocation(line: 133, column: 50, scope: !2081)
!2089 = !DILocation(line: 135, column: 11, scope: !2081)
!2090 = !DILocation(line: 135, column: 46, scope: !2081)
!2091 = !{!2092, !640, i64 0}
!2092 = !{!"quoting_options", !640, i64 0, !717, i64 4, !640, i64 8, !639, i64 40, !639, i64 48}
!2093 = !DILocation(line: 135, column: 3, scope: !2081)
!2094 = distinct !DISubprogram(name: "set_quoting_style", scope: !105, file: !105, line: 141, type: !2095, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !2068, !79}
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "o", arg: 1, scope: !2094, file: !105, line: 141, type: !2068)
!2099 = !DILocalVariable(name: "s", arg: 2, scope: !2094, file: !105, line: 141, type: !79)
!2100 = !DILocation(line: 141, column: 44, scope: !2094)
!2101 = !DILocation(line: 141, column: 66, scope: !2094)
!2102 = !DILocation(line: 143, column: 4, scope: !2094)
!2103 = !DILocation(line: 143, column: 39, scope: !2094)
!2104 = !DILocation(line: 143, column: 45, scope: !2094)
!2105 = !DILocation(line: 144, column: 1, scope: !2094)
!2106 = distinct !DISubprogram(name: "set_char_quoting", scope: !105, file: !105, line: 152, type: !2107, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!35, !2068, !33, !35}
!2109 = !{!2110, !2111, !2112, !2113, !2115, !2117, !2118}
!2110 = !DILocalVariable(name: "o", arg: 1, scope: !2106, file: !105, line: 152, type: !2068)
!2111 = !DILocalVariable(name: "c", arg: 2, scope: !2106, file: !105, line: 152, type: !33)
!2112 = !DILocalVariable(name: "i", arg: 3, scope: !2106, file: !105, line: 152, type: !35)
!2113 = !DILocalVariable(name: "uc", scope: !2106, file: !105, line: 154, type: !2114)
!2114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2115 = !DILocalVariable(name: "p", scope: !2106, file: !105, line: 155, type: !2116)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2117 = !DILocalVariable(name: "shift", scope: !2106, file: !105, line: 157, type: !35)
!2118 = !DILocalVariable(name: "r", scope: !2106, file: !105, line: 158, type: !35)
!2119 = !DILocation(line: 152, column: 43, scope: !2106)
!2120 = !DILocation(line: 152, column: 51, scope: !2106)
!2121 = !DILocation(line: 152, column: 58, scope: !2106)
!2122 = !DILocation(line: 154, column: 17, scope: !2106)
!2123 = !DILocation(line: 156, column: 6, scope: !2106)
!2124 = !DILocation(line: 156, column: 62, scope: !2106)
!2125 = !DILocation(line: 156, column: 57, scope: !2106)
!2126 = !DILocation(line: 155, column: 17, scope: !2106)
!2127 = !DILocation(line: 157, column: 15, scope: !2106)
!2128 = !DILocation(line: 157, column: 7, scope: !2106)
!2129 = !DILocation(line: 158, column: 12, scope: !2106)
!2130 = !DILocation(line: 158, column: 15, scope: !2106)
!2131 = !DILocation(line: 158, column: 25, scope: !2106)
!2132 = !DILocation(line: 158, column: 7, scope: !2106)
!2133 = !DILocation(line: 159, column: 13, scope: !2106)
!2134 = !DILocation(line: 159, column: 18, scope: !2106)
!2135 = !DILocation(line: 159, column: 23, scope: !2106)
!2136 = !DILocation(line: 159, column: 6, scope: !2106)
!2137 = !DILocation(line: 160, column: 3, scope: !2106)
!2138 = distinct !DISubprogram(name: "set_quoting_flags", scope: !105, file: !105, line: 168, type: !2139, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!35, !2068, !35}
!2141 = !{!2142, !2143, !2144}
!2142 = !DILocalVariable(name: "o", arg: 1, scope: !2138, file: !105, line: 168, type: !2068)
!2143 = !DILocalVariable(name: "i", arg: 2, scope: !2138, file: !105, line: 168, type: !35)
!2144 = !DILocalVariable(name: "r", scope: !2138, file: !105, line: 170, type: !35)
!2145 = !DILocation(line: 168, column: 44, scope: !2138)
!2146 = !DILocation(line: 168, column: 51, scope: !2138)
!2147 = !DILocation(line: 171, column: 8, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2138, file: !105, line: 171, column: 7)
!2149 = !DILocation(line: 171, column: 7, scope: !2138)
!2150 = !DILocation(line: 173, column: 10, scope: !2138)
!2151 = !{!2092, !717, i64 4}
!2152 = !DILocation(line: 170, column: 7, scope: !2138)
!2153 = !DILocation(line: 174, column: 12, scope: !2138)
!2154 = !DILocation(line: 175, column: 3, scope: !2138)
!2155 = distinct !DISubprogram(name: "set_custom_quoting", scope: !105, file: !105, line: 179, type: !2156, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !2068, !49, !49}
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "o", arg: 1, scope: !2155, file: !105, line: 179, type: !2068)
!2160 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2155, file: !105, line: 180, type: !49)
!2161 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2155, file: !105, line: 180, type: !49)
!2162 = !DILocation(line: 179, column: 45, scope: !2155)
!2163 = !DILocation(line: 180, column: 33, scope: !2155)
!2164 = !DILocation(line: 180, column: 57, scope: !2155)
!2165 = !DILocation(line: 182, column: 8, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2155, file: !105, line: 182, column: 7)
!2167 = !DILocation(line: 182, column: 7, scope: !2155)
!2168 = !DILocation(line: 184, column: 6, scope: !2155)
!2169 = !DILocation(line: 184, column: 12, scope: !2155)
!2170 = !DILocation(line: 185, column: 8, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2155, file: !105, line: 185, column: 7)
!2172 = !DILocation(line: 185, column: 23, scope: !2171)
!2173 = !DILocation(line: 185, column: 19, scope: !2171)
!2174 = !DILocation(line: 186, column: 5, scope: !2171)
!2175 = !DILocation(line: 187, column: 6, scope: !2155)
!2176 = !DILocation(line: 187, column: 17, scope: !2155)
!2177 = !{!2092, !639, i64 40}
!2178 = !DILocation(line: 188, column: 6, scope: !2155)
!2179 = !DILocation(line: 188, column: 18, scope: !2155)
!2180 = !{!2092, !639, i64 48}
!2181 = !DILocation(line: 189, column: 1, scope: !2155)
!2182 = distinct !DISubprogram(name: "quotearg_buffer", scope: !105, file: !105, line: 784, type: !2183, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!99, !32, !99, !49, !99, !2084}
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2186 = !DILocalVariable(name: "buffer", arg: 1, scope: !2182, file: !105, line: 784, type: !32)
!2187 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2182, file: !105, line: 784, type: !99)
!2188 = !DILocalVariable(name: "arg", arg: 3, scope: !2182, file: !105, line: 785, type: !49)
!2189 = !DILocalVariable(name: "argsize", arg: 4, scope: !2182, file: !105, line: 785, type: !99)
!2190 = !DILocalVariable(name: "o", arg: 5, scope: !2182, file: !105, line: 786, type: !2084)
!2191 = !DILocalVariable(name: "p", scope: !2182, file: !105, line: 788, type: !2084)
!2192 = !DILocalVariable(name: "e", scope: !2182, file: !105, line: 789, type: !35)
!2193 = !DILocalVariable(name: "r", scope: !2182, file: !105, line: 790, type: !99)
!2194 = !DILocation(line: 784, column: 24, scope: !2182)
!2195 = !DILocation(line: 784, column: 39, scope: !2182)
!2196 = !DILocation(line: 785, column: 30, scope: !2182)
!2197 = !DILocation(line: 785, column: 42, scope: !2182)
!2198 = !DILocation(line: 786, column: 48, scope: !2182)
!2199 = !DILocation(line: 788, column: 37, scope: !2182)
!2200 = !DILocation(line: 788, column: 33, scope: !2182)
!2201 = !DILocation(line: 789, column: 11, scope: !2182)
!2202 = !DILocation(line: 789, column: 7, scope: !2182)
!2203 = !DILocation(line: 791, column: 43, scope: !2182)
!2204 = !DILocation(line: 791, column: 53, scope: !2182)
!2205 = !DILocation(line: 791, column: 60, scope: !2182)
!2206 = !DILocation(line: 792, column: 43, scope: !2182)
!2207 = !DILocation(line: 792, column: 58, scope: !2182)
!2208 = !DILocation(line: 790, column: 14, scope: !2182)
!2209 = !DILocation(line: 790, column: 10, scope: !2182)
!2210 = !DILocation(line: 793, column: 9, scope: !2182)
!2211 = !DILocation(line: 794, column: 3, scope: !2182)
!2212 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !105, file: !105, line: 256, type: !2213, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2217)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!99, !32, !99, !49, !99, !79, !35, !2215, !49, !49}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2242, !2243, !2244, !2245, !2246, !2249, !2250, !2268, !2271, !2272, !2279}
!2218 = !DILocalVariable(name: "buffer", arg: 1, scope: !2212, file: !105, line: 256, type: !32)
!2219 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2212, file: !105, line: 256, type: !99)
!2220 = !DILocalVariable(name: "arg", arg: 3, scope: !2212, file: !105, line: 257, type: !49)
!2221 = !DILocalVariable(name: "argsize", arg: 4, scope: !2212, file: !105, line: 257, type: !99)
!2222 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2212, file: !105, line: 258, type: !79)
!2223 = !DILocalVariable(name: "flags", arg: 6, scope: !2212, file: !105, line: 258, type: !35)
!2224 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2212, file: !105, line: 259, type: !2215)
!2225 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2212, file: !105, line: 260, type: !49)
!2226 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2212, file: !105, line: 261, type: !49)
!2227 = !DILocalVariable(name: "i", scope: !2212, file: !105, line: 263, type: !99)
!2228 = !DILocalVariable(name: "len", scope: !2212, file: !105, line: 264, type: !99)
!2229 = !DILocalVariable(name: "orig_buffersize", scope: !2212, file: !105, line: 265, type: !99)
!2230 = !DILocalVariable(name: "quote_string", scope: !2212, file: !105, line: 266, type: !49)
!2231 = !DILocalVariable(name: "quote_string_len", scope: !2212, file: !105, line: 267, type: !99)
!2232 = !DILocalVariable(name: "backslash_escapes", scope: !2212, file: !105, line: 268, type: !59)
!2233 = !DILocalVariable(name: "unibyte_locale", scope: !2212, file: !105, line: 269, type: !59)
!2234 = !DILocalVariable(name: "elide_outer_quotes", scope: !2212, file: !105, line: 270, type: !59)
!2235 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2212, file: !105, line: 271, type: !59)
!2236 = !DILocalVariable(name: "encountered_single_quote", scope: !2212, file: !105, line: 272, type: !59)
!2237 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2212, file: !105, line: 273, type: !59)
!2238 = !DILocalVariable(name: "c", scope: !2239, file: !105, line: 402, type: !2114)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !105, line: 401, column: 5)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !105, line: 400, column: 3)
!2241 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 400, column: 3)
!2242 = !DILocalVariable(name: "esc", scope: !2239, file: !105, line: 403, type: !2114)
!2243 = !DILocalVariable(name: "is_right_quote", scope: !2239, file: !105, line: 404, type: !59)
!2244 = !DILocalVariable(name: "escaping", scope: !2239, file: !105, line: 405, type: !59)
!2245 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2239, file: !105, line: 406, type: !59)
!2246 = !DILocalVariable(name: "m", scope: !2247, file: !105, line: 610, type: !99)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 608, column: 11)
!2248 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 426, column: 9)
!2249 = !DILocalVariable(name: "printable", scope: !2247, file: !105, line: 612, type: !59)
!2250 = !DILocalVariable(name: "mbstate", scope: !2251, file: !105, line: 621, type: !2253)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !105, line: 620, column: 15)
!2252 = distinct !DILexicalBlock(scope: !2247, file: !105, line: 614, column: 17)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2254, line: 6, baseType: !2255)
!2254 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2256, line: 21, baseType: !2257)
!2256 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2256, line: 13, size: 64, elements: !2258)
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2257, file: !2256, line: 15, baseType: !35, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2257, file: !2256, line: 20, baseType: !2261, size: 32, offset: 32)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !2256, line: 16, size: 32, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2261, file: !2256, line: 18, baseType: !7, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2261, file: !2256, line: 19, baseType: !2265, size: 32)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !2266)
!2266 = !{!2267}
!2267 = !DISubrange(count: 4)
!2268 = !DILocalVariable(name: "w", scope: !2269, file: !105, line: 631, type: !2270)
!2269 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 630, column: 19)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !100, line: 90, baseType: !35)
!2271 = !DILocalVariable(name: "bytes", scope: !2269, file: !105, line: 632, type: !99)
!2272 = !DILocalVariable(name: "j", scope: !2273, file: !105, line: 657, type: !99)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !105, line: 656, column: 27)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !105, line: 654, column: 29)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !105, line: 649, column: 23)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !105, line: 641, column: 30)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !105, line: 636, column: 30)
!2278 = distinct !DILexicalBlock(scope: !2269, file: !105, line: 634, column: 25)
!2279 = !DILocalVariable(name: "ilim", scope: !2280, file: !105, line: 684, type: !99)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !105, line: 681, column: 15)
!2281 = distinct !DILexicalBlock(scope: !2247, file: !105, line: 680, column: 17)
!2282 = !DILocation(line: 256, column: 33, scope: !2212)
!2283 = !DILocation(line: 256, column: 48, scope: !2212)
!2284 = !DILocation(line: 257, column: 39, scope: !2212)
!2285 = !DILocation(line: 257, column: 51, scope: !2212)
!2286 = !DILocation(line: 258, column: 46, scope: !2212)
!2287 = !DILocation(line: 258, column: 65, scope: !2212)
!2288 = !DILocation(line: 259, column: 47, scope: !2212)
!2289 = !DILocation(line: 260, column: 39, scope: !2212)
!2290 = !DILocation(line: 261, column: 39, scope: !2212)
!2291 = !DILocation(line: 264, column: 10, scope: !2212)
!2292 = !DILocation(line: 265, column: 10, scope: !2212)
!2293 = !DILocation(line: 266, column: 15, scope: !2212)
!2294 = !DILocation(line: 267, column: 10, scope: !2212)
!2295 = !DILocation(line: 268, column: 8, scope: !2212)
!2296 = !DILocation(line: 269, column: 25, scope: !2212)
!2297 = !DILocation(line: 269, column: 36, scope: !2212)
!2298 = !DILocation(line: 270, column: 8, scope: !2212)
!2299 = !DILocation(line: 271, column: 8, scope: !2212)
!2300 = !DILocation(line: 272, column: 8, scope: !2212)
!2301 = !DILocation(line: 273, column: 8, scope: !2212)
!2302 = !DILocation(line: 273, column: 3, scope: !2212)
!2303 = !DILocation(line: 0, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 317, column: 5)
!2305 = !DILocation(line: 316, column: 3, scope: !2212)
!2306 = !DILocation(line: 323, column: 11, scope: !2304)
!2307 = !DILocation(line: 323, column: 12, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !105, line: 323, column: 11)
!2309 = !DILocation(line: 324, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !105, line: 324, column: 9)
!2311 = distinct !DILexicalBlock(scope: !2308, file: !105, line: 324, column: 9)
!2312 = !DILocation(line: 324, column: 9, scope: !2311)
!2313 = !DILocation(line: 362, column: 26, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !105, line: 340, column: 11)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !105, line: 339, column: 13)
!2316 = distinct !DILexicalBlock(scope: !2304, file: !105, line: 338, column: 7)
!2317 = !DILocation(line: 363, column: 27, scope: !2314)
!2318 = !DILocation(line: 364, column: 11, scope: !2314)
!2319 = !DILocation(line: 365, column: 14, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !105, line: 365, column: 13)
!2321 = !DILocation(line: 365, column: 13, scope: !2316)
!2322 = !DILocation(line: 366, column: 43, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !105, line: 366, column: 11)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !105, line: 366, column: 11)
!2325 = !DILocation(line: 366, column: 11, scope: !2324)
!2326 = !DILocation(line: 367, column: 13, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !105, line: 367, column: 13)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !105, line: 367, column: 13)
!2329 = !DILocation(line: 367, column: 13, scope: !2328)
!2330 = !DILocation(line: 366, column: 70, scope: !2323)
!2331 = distinct !{!2331, !2325, !2332}
!2332 = !DILocation(line: 367, column: 13, scope: !2324)
!2333 = !DILocation(line: 370, column: 28, scope: !2316)
!2334 = !DILocation(line: 372, column: 7, scope: !2304)
!2335 = !DILocation(line: 376, column: 7, scope: !2304)
!2336 = !DILocation(line: 379, column: 7, scope: !2304)
!2337 = !DILocation(line: 381, column: 12, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2304, file: !105, line: 381, column: 11)
!2339 = !DILocation(line: 381, column: 11, scope: !2304)
!2340 = !DILocation(line: 0, scope: !2338)
!2341 = !DILocation(line: 386, column: 12, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2304, file: !105, line: 386, column: 11)
!2343 = !DILocation(line: 386, column: 11, scope: !2304)
!2344 = !DILocation(line: 387, column: 9, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !105, line: 387, column: 9)
!2346 = distinct !DILexicalBlock(scope: !2342, file: !105, line: 387, column: 9)
!2347 = !DILocation(line: 387, column: 9, scope: !2346)
!2348 = !DILocation(line: 394, column: 7, scope: !2304)
!2349 = !DILocation(line: 397, column: 7, scope: !2304)
!2350 = !DILocation(line: 0, scope: !2212)
!2351 = !DILocation(line: 263, column: 10, scope: !2212)
!2352 = !DILocation(line: 400, column: 8, scope: !2241)
!2353 = !DILocation(line: 0, scope: !2240)
!2354 = !DILocation(line: 400, column: 27, scope: !2240)
!2355 = !DILocation(line: 400, column: 19, scope: !2240)
!2356 = !DILocation(line: 400, column: 41, scope: !2240)
!2357 = !DILocation(line: 400, column: 48, scope: !2240)
!2358 = !DILocation(line: 400, column: 3, scope: !2241)
!2359 = !DILocation(line: 400, column: 60, scope: !2240)
!2360 = !DILocation(line: 404, column: 12, scope: !2239)
!2361 = !DILocation(line: 405, column: 12, scope: !2239)
!2362 = !DILocation(line: 406, column: 12, scope: !2239)
!2363 = !DILocation(line: 409, column: 11, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 408, column: 11)
!2365 = !DILocation(line: 411, column: 17, scope: !2364)
!2366 = !DILocation(line: 412, column: 39, scope: !2364)
!2367 = !DILocation(line: 416, column: 32, scope: !2364)
!2368 = !DILocation(line: 412, column: 19, scope: !2364)
!2369 = !DILocation(line: 412, column: 15, scope: !2364)
!2370 = !DILocation(line: 417, column: 11, scope: !2364)
!2371 = !DILocation(line: 417, column: 26, scope: !2364)
!2372 = !DILocation(line: 417, column: 14, scope: !2364)
!2373 = !DILocation(line: 417, column: 63, scope: !2364)
!2374 = !DILocation(line: 408, column: 11, scope: !2239)
!2375 = !DILocation(line: 0, scope: !2239)
!2376 = !DILocation(line: 424, column: 11, scope: !2239)
!2377 = !DILocation(line: 402, column: 21, scope: !2239)
!2378 = !DILocation(line: 425, column: 7, scope: !2239)
!2379 = !DILocation(line: 428, column: 15, scope: !2248)
!2380 = !DILocation(line: 430, column: 15, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !105, line: 430, column: 15)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !105, line: 429, column: 13)
!2383 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 428, column: 15)
!2384 = !DILocation(line: 430, column: 15, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !105, line: 430, column: 15)
!2386 = !DILocation(line: 430, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !105, line: 430, column: 15)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !105, line: 430, column: 15)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !105, line: 430, column: 15)
!2390 = !DILocation(line: 430, column: 15, scope: !2388)
!2391 = !DILocation(line: 430, column: 15, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !105, line: 430, column: 15)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !105, line: 430, column: 15)
!2394 = !DILocation(line: 430, column: 15, scope: !2393)
!2395 = !DILocation(line: 430, column: 15, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !105, line: 430, column: 15)
!2397 = distinct !DILexicalBlock(scope: !2389, file: !105, line: 430, column: 15)
!2398 = !DILocation(line: 430, column: 15, scope: !2397)
!2399 = !DILocation(line: 430, column: 15, scope: !2389)
!2400 = !DILocation(line: 430, column: 15, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !105, line: 430, column: 15)
!2402 = distinct !DILexicalBlock(scope: !2381, file: !105, line: 430, column: 15)
!2403 = !DILocation(line: 430, column: 15, scope: !2402)
!2404 = !DILocation(line: 438, column: 19, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2382, file: !105, line: 437, column: 19)
!2406 = !DILocation(line: 438, column: 24, scope: !2405)
!2407 = !DILocation(line: 438, column: 28, scope: !2405)
!2408 = !DILocation(line: 438, column: 38, scope: !2405)
!2409 = !DILocation(line: 438, column: 48, scope: !2405)
!2410 = !DILocation(line: 438, column: 59, scope: !2405)
!2411 = !DILocation(line: 440, column: 19, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !105, line: 440, column: 19)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !105, line: 440, column: 19)
!2414 = distinct !DILexicalBlock(scope: !2405, file: !105, line: 439, column: 17)
!2415 = !DILocation(line: 440, column: 19, scope: !2413)
!2416 = !DILocation(line: 441, column: 19, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !105, line: 441, column: 19)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !105, line: 441, column: 19)
!2419 = !DILocation(line: 441, column: 19, scope: !2418)
!2420 = !DILocation(line: 442, column: 17, scope: !2414)
!2421 = !DILocation(line: 449, column: 20, scope: !2383)
!2422 = !DILocation(line: 454, column: 11, scope: !2248)
!2423 = !DILocation(line: 457, column: 19, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 455, column: 13)
!2425 = !DILocation(line: 463, column: 19, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2424, file: !105, line: 462, column: 19)
!2427 = !DILocation(line: 463, column: 24, scope: !2426)
!2428 = !DILocation(line: 463, column: 28, scope: !2426)
!2429 = !DILocation(line: 463, column: 38, scope: !2426)
!2430 = !DILocation(line: 463, column: 47, scope: !2426)
!2431 = !DILocation(line: 463, column: 41, scope: !2426)
!2432 = !DILocation(line: 463, column: 52, scope: !2426)
!2433 = !DILocation(line: 462, column: 19, scope: !2424)
!2434 = !DILocation(line: 464, column: 25, scope: !2426)
!2435 = !DILocation(line: 464, column: 17, scope: !2426)
!2436 = !DILocation(line: 471, column: 25, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !105, line: 465, column: 19)
!2438 = !DILocation(line: 475, column: 21, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !105, line: 475, column: 21)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !105, line: 475, column: 21)
!2441 = !DILocation(line: 475, column: 21, scope: !2440)
!2442 = !DILocation(line: 476, column: 21, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !105, line: 476, column: 21)
!2444 = distinct !DILexicalBlock(scope: !2437, file: !105, line: 476, column: 21)
!2445 = !DILocation(line: 476, column: 21, scope: !2444)
!2446 = !DILocation(line: 477, column: 21, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !105, line: 477, column: 21)
!2448 = distinct !DILexicalBlock(scope: !2437, file: !105, line: 477, column: 21)
!2449 = !DILocation(line: 477, column: 21, scope: !2448)
!2450 = !DILocation(line: 478, column: 21, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !105, line: 478, column: 21)
!2452 = distinct !DILexicalBlock(scope: !2437, file: !105, line: 478, column: 21)
!2453 = !DILocation(line: 478, column: 21, scope: !2452)
!2454 = !DILocation(line: 479, column: 21, scope: !2437)
!2455 = !DILocation(line: 403, column: 21, scope: !2239)
!2456 = !DILocation(line: 492, column: 31, scope: !2248)
!2457 = !DILocation(line: 493, column: 31, scope: !2248)
!2458 = !DILocation(line: 495, column: 31, scope: !2248)
!2459 = !DILocation(line: 496, column: 31, scope: !2248)
!2460 = !DILocation(line: 497, column: 31, scope: !2248)
!2461 = !DILocation(line: 500, column: 15, scope: !2248)
!2462 = !DILocation(line: 502, column: 19, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !105, line: 501, column: 13)
!2464 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 500, column: 15)
!2465 = !DILocation(line: 509, column: 33, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 509, column: 15)
!2467 = !DILocation(line: 0, scope: !2248)
!2468 = !DILocation(line: 514, column: 15, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 513, column: 15)
!2470 = !DILocation(line: 518, column: 15, scope: !2248)
!2471 = !DILocation(line: 526, column: 26, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 526, column: 15)
!2473 = !DILocation(line: 526, column: 15, scope: !2248)
!2474 = !DILocation(line: 526, column: 40, scope: !2472)
!2475 = !DILocation(line: 526, column: 47, scope: !2472)
!2476 = !DILocation(line: 530, column: 17, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 530, column: 15)
!2478 = !DILocation(line: 526, column: 18, scope: !2472)
!2479 = !DILocation(line: 526, column: 65, scope: !2472)
!2480 = !DILocation(line: 530, column: 15, scope: !2248)
!2481 = !DILocation(line: 535, column: 11, scope: !2248)
!2482 = !DILocation(line: 549, column: 15, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 548, column: 15)
!2484 = !DILocation(line: 556, column: 15, scope: !2248)
!2485 = !DILocation(line: 558, column: 19, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !105, line: 557, column: 13)
!2487 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 556, column: 15)
!2488 = !DILocation(line: 561, column: 19, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !105, line: 561, column: 19)
!2490 = !DILocation(line: 561, column: 35, scope: !2489)
!2491 = !DILocation(line: 561, column: 30, scope: !2489)
!2492 = !DILocation(line: 570, column: 15, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !105, line: 570, column: 15)
!2494 = distinct !DILexicalBlock(scope: !2486, file: !105, line: 570, column: 15)
!2495 = !DILocation(line: 570, column: 15, scope: !2494)
!2496 = !DILocation(line: 571, column: 15, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !105, line: 571, column: 15)
!2498 = distinct !DILexicalBlock(scope: !2486, file: !105, line: 571, column: 15)
!2499 = !DILocation(line: 571, column: 15, scope: !2498)
!2500 = !DILocation(line: 572, column: 15, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !105, line: 572, column: 15)
!2502 = distinct !DILexicalBlock(scope: !2486, file: !105, line: 572, column: 15)
!2503 = !DILocation(line: 572, column: 15, scope: !2502)
!2504 = !DILocation(line: 574, column: 13, scope: !2486)
!2505 = !DILocation(line: 614, column: 17, scope: !2247)
!2506 = !DILocation(line: 610, column: 20, scope: !2247)
!2507 = !DILocation(line: 617, column: 29, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2252, file: !105, line: 615, column: 15)
!2509 = !DILocation(line: 617, column: 27, scope: !2508)
!2510 = !DILocation(line: 612, column: 18, scope: !2247)
!2511 = !DILocation(line: 618, column: 15, scope: !2508)
!2512 = !DILocation(line: 621, column: 17, scope: !2251)
!2513 = !DILocation(line: 622, column: 17, scope: !2251)
!2514 = !DILocation(line: 626, column: 29, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 626, column: 21)
!2516 = !DILocation(line: 626, column: 21, scope: !2251)
!2517 = !DILocation(line: 627, column: 29, scope: !2515)
!2518 = !DILocation(line: 627, column: 19, scope: !2515)
!2519 = !DILocation(line: 0, scope: !2364)
!2520 = !DILocation(line: 629, column: 17, scope: !2251)
!2521 = !DILocation(line: 624, column: 19, scope: !2251)
!2522 = !DILocation(line: 625, column: 27, scope: !2251)
!2523 = !DILocation(line: 631, column: 21, scope: !2269)
!2524 = !DILocation(line: 632, column: 56, scope: !2269)
!2525 = !DILocation(line: 632, column: 50, scope: !2269)
!2526 = !DILocation(line: 633, column: 53, scope: !2269)
!2527 = !DILocation(line: 621, column: 27, scope: !2251)
!2528 = !DILocation(line: 631, column: 29, scope: !2269)
!2529 = !DILocation(line: 632, column: 36, scope: !2269)
!2530 = !DILocation(line: 632, column: 28, scope: !2269)
!2531 = !DILocation(line: 634, column: 25, scope: !2269)
!2532 = !DILocation(line: 644, column: 38, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2276, file: !105, line: 642, column: 23)
!2534 = !DILocation(line: 644, column: 48, scope: !2533)
!2535 = !DILocation(line: 644, column: 51, scope: !2533)
!2536 = !DILocation(line: 644, column: 25, scope: !2533)
!2537 = !DILocation(line: 645, column: 28, scope: !2533)
!2538 = !DILocation(line: 644, column: 34, scope: !2533)
!2539 = distinct !{!2539, !2536, !2537}
!2540 = !DILocation(line: 658, column: 43, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !105, line: 658, column: 29)
!2542 = distinct !DILexicalBlock(scope: !2273, file: !105, line: 658, column: 29)
!2543 = !DILocation(line: 655, column: 29, scope: !2274)
!2544 = !DILocation(line: 657, column: 36, scope: !2273)
!2545 = !DILocation(line: 659, column: 49, scope: !2541)
!2546 = !DILocation(line: 659, column: 39, scope: !2541)
!2547 = !DILocation(line: 659, column: 31, scope: !2541)
!2548 = !DILocation(line: 658, column: 53, scope: !2541)
!2549 = !DILocation(line: 658, column: 29, scope: !2542)
!2550 = distinct !{!2550, !2549, !2551}
!2551 = !DILocation(line: 667, column: 33, scope: !2542)
!2552 = !DILocation(line: 674, column: 19, scope: !2251)
!2553 = !DILocation(line: 670, column: 41, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2275, file: !105, line: 670, column: 29)
!2555 = !DILocation(line: 670, column: 31, scope: !2554)
!2556 = !DILocation(line: 670, column: 29, scope: !2275)
!2557 = !DILocation(line: 672, column: 27, scope: !2275)
!2558 = !DILocation(line: 675, column: 26, scope: !2251)
!2559 = !DILocation(line: 675, column: 24, scope: !2251)
!2560 = !DILocation(line: 674, column: 19, scope: !2269)
!2561 = distinct !{!2561, !2520, !2562}
!2562 = !DILocation(line: 675, column: 44, scope: !2251)
!2563 = !DILocation(line: 676, column: 15, scope: !2252)
!2564 = !DILocation(line: 0, scope: !2515)
!2565 = !DILocation(line: 0, scope: !2251)
!2566 = !DILocation(line: 678, column: 40, scope: !2247)
!2567 = !DILocation(line: 680, column: 19, scope: !2281)
!2568 = !DILocation(line: 680, column: 45, scope: !2281)
!2569 = !DILocation(line: 680, column: 23, scope: !2281)
!2570 = !DILocation(line: 684, column: 33, scope: !2280)
!2571 = !DILocation(line: 684, column: 24, scope: !2280)
!2572 = !DILocation(line: 686, column: 17, scope: !2280)
!2573 = !DILocation(line: 0, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !105, line: 687, column: 19)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !105, line: 686, column: 17)
!2576 = distinct !DILexicalBlock(scope: !2280, file: !105, line: 686, column: 17)
!2577 = !DILocation(line: 0, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !105, line: 703, column: 21)
!2579 = !DILocation(line: 0, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !105, line: 696, column: 23)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !105, line: 695, column: 30)
!2582 = distinct !DILexicalBlock(scope: !2574, file: !105, line: 688, column: 25)
!2583 = !DILocation(line: 688, column: 43, scope: !2582)
!2584 = !DILocation(line: 690, column: 25, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !105, line: 690, column: 25)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !105, line: 689, column: 23)
!2587 = !DILocation(line: 690, column: 25, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !105, line: 690, column: 25)
!2589 = !DILocation(line: 690, column: 25, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !105, line: 690, column: 25)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !105, line: 690, column: 25)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !105, line: 690, column: 25)
!2593 = !DILocation(line: 690, column: 25, scope: !2591)
!2594 = !DILocation(line: 690, column: 25, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !105, line: 690, column: 25)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !105, line: 690, column: 25)
!2597 = !DILocation(line: 690, column: 25, scope: !2596)
!2598 = !DILocation(line: 690, column: 25, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !105, line: 690, column: 25)
!2600 = distinct !DILexicalBlock(scope: !2592, file: !105, line: 690, column: 25)
!2601 = !DILocation(line: 690, column: 25, scope: !2600)
!2602 = !DILocation(line: 690, column: 25, scope: !2592)
!2603 = !DILocation(line: 690, column: 25, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !105, line: 690, column: 25)
!2605 = distinct !DILexicalBlock(scope: !2585, file: !105, line: 690, column: 25)
!2606 = !DILocation(line: 690, column: 25, scope: !2605)
!2607 = !DILocation(line: 691, column: 25, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !105, line: 691, column: 25)
!2609 = distinct !DILexicalBlock(scope: !2586, file: !105, line: 691, column: 25)
!2610 = !DILocation(line: 691, column: 25, scope: !2609)
!2611 = !DILocation(line: 692, column: 25, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !105, line: 692, column: 25)
!2613 = distinct !DILexicalBlock(scope: !2586, file: !105, line: 692, column: 25)
!2614 = !DILocation(line: 692, column: 25, scope: !2613)
!2615 = !DILocation(line: 693, column: 38, scope: !2586)
!2616 = !DILocation(line: 693, column: 33, scope: !2586)
!2617 = !DILocation(line: 694, column: 23, scope: !2586)
!2618 = !DILocation(line: 695, column: 30, scope: !2581)
!2619 = !DILocation(line: 695, column: 30, scope: !2582)
!2620 = !DILocation(line: 697, column: 25, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !105, line: 697, column: 25)
!2622 = distinct !DILexicalBlock(scope: !2580, file: !105, line: 697, column: 25)
!2623 = !DILocation(line: 697, column: 25, scope: !2622)
!2624 = !DILocation(line: 699, column: 23, scope: !2580)
!2625 = !DILocation(line: 0, scope: !2613)
!2626 = !DILocation(line: 0, scope: !2586)
!2627 = !DILocation(line: 0, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2364, file: !105, line: 418, column: 9)
!2629 = !DILocation(line: 0, scope: !2585)
!2630 = !DILocation(line: 700, column: 35, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2574, file: !105, line: 700, column: 25)
!2632 = !DILocation(line: 700, column: 30, scope: !2631)
!2633 = !DILocation(line: 700, column: 25, scope: !2574)
!2634 = !DILocation(line: 702, column: 21, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !105, line: 702, column: 21)
!2636 = distinct !DILexicalBlock(scope: !2574, file: !105, line: 702, column: 21)
!2637 = !DILocation(line: 702, column: 21, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !105, line: 702, column: 21)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !105, line: 702, column: 21)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !105, line: 702, column: 21)
!2641 = !DILocation(line: 702, column: 21, scope: !2639)
!2642 = !DILocation(line: 702, column: 21, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !105, line: 702, column: 21)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !105, line: 702, column: 21)
!2645 = !DILocation(line: 702, column: 21, scope: !2644)
!2646 = !DILocation(line: 702, column: 21, scope: !2640)
!2647 = !DILocation(line: 0, scope: !2622)
!2648 = !DILocation(line: 703, column: 21, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2578, file: !105, line: 703, column: 21)
!2650 = !DILocation(line: 703, column: 21, scope: !2578)
!2651 = !DILocation(line: 704, column: 25, scope: !2574)
!2652 = !DILocation(line: 686, column: 17, scope: !2575)
!2653 = distinct !{!2653, !2654, !2655}
!2654 = !DILocation(line: 686, column: 17, scope: !2576)
!2655 = !DILocation(line: 705, column: 19, scope: !2576)
!2656 = !DILocation(line: 0, scope: !2241)
!2657 = !DILocation(line: 416, column: 30, scope: !2364)
!2658 = !DILocation(line: 712, column: 34, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 712, column: 11)
!2660 = !DILocation(line: 714, column: 14, scope: !2659)
!2661 = !DILocation(line: 715, column: 14, scope: !2659)
!2662 = !DILocation(line: 715, column: 35, scope: !2659)
!2663 = !DILocation(line: 715, column: 17, scope: !2659)
!2664 = !DILocation(line: 715, column: 47, scope: !2659)
!2665 = !DILocation(line: 715, column: 65, scope: !2659)
!2666 = !DILocation(line: 716, column: 15, scope: !2659)
!2667 = !DILocation(line: 716, column: 11, scope: !2659)
!2668 = !DILocation(line: 712, column: 11, scope: !2239)
!2669 = !DILocation(line: 400, column: 10, scope: !2241)
!2670 = !DILocation(line: 0, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !105, line: 519, column: 13)
!2672 = distinct !DILexicalBlock(scope: !2248, file: !105, line: 518, column: 15)
!2673 = !DILocation(line: 720, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 720, column: 7)
!2675 = !DILocation(line: 720, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2674, file: !105, line: 720, column: 7)
!2677 = !DILocation(line: 720, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !105, line: 720, column: 7)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !105, line: 720, column: 7)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !105, line: 720, column: 7)
!2681 = !DILocation(line: 720, column: 7, scope: !2679)
!2682 = !DILocation(line: 720, column: 7, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !105, line: 720, column: 7)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !105, line: 720, column: 7)
!2685 = !DILocation(line: 720, column: 7, scope: !2684)
!2686 = !DILocation(line: 720, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !105, line: 720, column: 7)
!2688 = distinct !DILexicalBlock(scope: !2680, file: !105, line: 720, column: 7)
!2689 = !DILocation(line: 720, column: 7, scope: !2688)
!2690 = !DILocation(line: 720, column: 7, scope: !2680)
!2691 = !DILocation(line: 720, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !105, line: 720, column: 7)
!2693 = distinct !DILexicalBlock(scope: !2674, file: !105, line: 720, column: 7)
!2694 = !DILocation(line: 720, column: 7, scope: !2693)
!2695 = !DILocation(line: 723, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !105, line: 723, column: 7)
!2697 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 723, column: 7)
!2698 = !DILocation(line: 424, column: 9, scope: !2239)
!2699 = !DILocation(line: 723, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !105, line: 723, column: 7)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !105, line: 723, column: 7)
!2702 = distinct !DILexicalBlock(scope: !2696, file: !105, line: 723, column: 7)
!2703 = !DILocation(line: 723, column: 7, scope: !2701)
!2704 = !DILocation(line: 723, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !105, line: 723, column: 7)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !105, line: 723, column: 7)
!2707 = !DILocation(line: 723, column: 7, scope: !2706)
!2708 = !DILocation(line: 723, column: 7, scope: !2702)
!2709 = !DILocation(line: 724, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !105, line: 724, column: 7)
!2711 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 724, column: 7)
!2712 = !DILocation(line: 724, column: 7, scope: !2711)
!2713 = !DILocation(line: 726, column: 13, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 726, column: 11)
!2715 = !DILocation(line: 726, column: 11, scope: !2239)
!2716 = !DILocation(line: 728, column: 5, scope: !2240)
!2717 = !DILocation(line: 400, column: 75, scope: !2240)
!2718 = !DILocation(line: 400, column: 3, scope: !2240)
!2719 = distinct !{!2719, !2358, !2720}
!2720 = !DILocation(line: 728, column: 5, scope: !2241)
!2721 = !DILocation(line: 730, column: 11, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 730, column: 7)
!2723 = !DILocation(line: 730, column: 16, scope: !2722)
!2724 = !DILocation(line: 738, column: 51, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 738, column: 7)
!2726 = !DILocation(line: 739, column: 10, scope: !2725)
!2727 = !DILocation(line: 741, column: 11, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !105, line: 741, column: 11)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !105, line: 740, column: 5)
!2730 = !DILocation(line: 741, column: 11, scope: !2729)
!2731 = !DILocation(line: 742, column: 16, scope: !2728)
!2732 = !DILocation(line: 742, column: 9, scope: !2728)
!2733 = !DILocation(line: 746, column: 18, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2728, file: !105, line: 746, column: 16)
!2735 = !DILocation(line: 746, column: 32, scope: !2734)
!2736 = !DILocation(line: 746, column: 29, scope: !2734)
!2737 = !DILocation(line: 755, column: 7, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 755, column: 7)
!2739 = !DILocation(line: 755, column: 20, scope: !2738)
!2740 = !DILocation(line: 756, column: 12, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !105, line: 756, column: 5)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !105, line: 756, column: 5)
!2743 = !DILocation(line: 756, column: 5, scope: !2742)
!2744 = !DILocation(line: 757, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !105, line: 757, column: 7)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !105, line: 757, column: 7)
!2747 = !DILocation(line: 757, column: 7, scope: !2746)
!2748 = !DILocation(line: 756, column: 39, scope: !2741)
!2749 = distinct !{!2749, !2743, !2750}
!2750 = !DILocation(line: 757, column: 7, scope: !2742)
!2751 = !DILocation(line: 759, column: 11, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 759, column: 7)
!2753 = !DILocation(line: 759, column: 7, scope: !2212)
!2754 = !DILocation(line: 760, column: 5, scope: !2752)
!2755 = !DILocation(line: 760, column: 17, scope: !2752)
!2756 = !DILocation(line: 766, column: 21, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2212, file: !105, line: 766, column: 7)
!2758 = !DILocation(line: 766, column: 54, scope: !2757)
!2759 = !DILocation(line: 766, column: 51, scope: !2757)
!2760 = !DILocation(line: 770, column: 42, scope: !2212)
!2761 = !DILocation(line: 768, column: 10, scope: !2212)
!2762 = !DILocation(line: 768, column: 3, scope: !2212)
!2763 = !DILocation(line: 772, column: 1, scope: !2212)
!2764 = distinct !DISubprogram(name: "gettext_quote", scope: !105, file: !105, line: 207, type: !2765, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!49, !49, !79}
!2767 = !{!2768, !2769, !2770, !2771}
!2768 = !DILocalVariable(name: "msgid", arg: 1, scope: !2764, file: !105, line: 207, type: !49)
!2769 = !DILocalVariable(name: "s", arg: 2, scope: !2764, file: !105, line: 207, type: !79)
!2770 = !DILocalVariable(name: "translation", scope: !2764, file: !105, line: 209, type: !49)
!2771 = !DILocalVariable(name: "locale_code", scope: !2764, file: !105, line: 210, type: !49)
!2772 = !DILocation(line: 207, column: 28, scope: !2764)
!2773 = !DILocation(line: 207, column: 54, scope: !2764)
!2774 = !DILocation(line: 209, column: 29, scope: !2764)
!2775 = !DILocation(line: 209, column: 15, scope: !2764)
!2776 = !DILocation(line: 212, column: 19, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2764, file: !105, line: 212, column: 7)
!2778 = !DILocation(line: 212, column: 7, scope: !2764)
!2779 = !DILocation(line: 233, column: 17, scope: !2764)
!2780 = !DILocation(line: 210, column: 15, scope: !2764)
!2781 = !DILocalVariable(name: "s1", arg: 1, scope: !2782, file: !2783, line: 160, type: !49)
!2782 = distinct !DISubprogram(name: "strcaseeq0", scope: !2783, file: !2783, line: 160, type: !2784, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2786)
!2783 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33, !33, !33, !33}
!2786 = !{!2781, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2787 = !DILocalVariable(name: "s2", arg: 2, scope: !2782, file: !2783, line: 160, type: !49)
!2788 = !DILocalVariable(name: "s20", arg: 3, scope: !2782, file: !2783, line: 160, type: !33)
!2789 = !DILocalVariable(name: "s21", arg: 4, scope: !2782, file: !2783, line: 160, type: !33)
!2790 = !DILocalVariable(name: "s22", arg: 5, scope: !2782, file: !2783, line: 160, type: !33)
!2791 = !DILocalVariable(name: "s23", arg: 6, scope: !2782, file: !2783, line: 160, type: !33)
!2792 = !DILocalVariable(name: "s24", arg: 7, scope: !2782, file: !2783, line: 160, type: !33)
!2793 = !DILocalVariable(name: "s25", arg: 8, scope: !2782, file: !2783, line: 160, type: !33)
!2794 = !DILocalVariable(name: "s26", arg: 9, scope: !2782, file: !2783, line: 160, type: !33)
!2795 = !DILocalVariable(name: "s27", arg: 10, scope: !2782, file: !2783, line: 160, type: !33)
!2796 = !DILocalVariable(name: "s28", arg: 11, scope: !2782, file: !2783, line: 160, type: !33)
!2797 = !DILocation(line: 160, column: 25, scope: !2782, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 234, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2764, file: !105, line: 234, column: 7)
!2800 = !DILocation(line: 160, column: 41, scope: !2782, inlinedAt: !2798)
!2801 = !DILocation(line: 160, column: 50, scope: !2782, inlinedAt: !2798)
!2802 = !DILocation(line: 160, column: 60, scope: !2782, inlinedAt: !2798)
!2803 = !DILocation(line: 160, column: 70, scope: !2782, inlinedAt: !2798)
!2804 = !DILocation(line: 160, column: 80, scope: !2782, inlinedAt: !2798)
!2805 = !DILocation(line: 160, column: 90, scope: !2782, inlinedAt: !2798)
!2806 = !DILocation(line: 160, column: 100, scope: !2782, inlinedAt: !2798)
!2807 = !DILocation(line: 160, column: 110, scope: !2782, inlinedAt: !2798)
!2808 = !DILocation(line: 160, column: 120, scope: !2782, inlinedAt: !2798)
!2809 = !DILocation(line: 160, column: 130, scope: !2782, inlinedAt: !2798)
!2810 = !DILocation(line: 162, column: 7, scope: !2811, inlinedAt: !2798)
!2811 = distinct !DILexicalBlock(scope: !2782, file: !2783, line: 162, column: 7)
!2812 = !DILocalVariable(name: "s1", arg: 1, scope: !2813, file: !2783, line: 146, type: !49)
!2813 = distinct !DISubprogram(name: "strcaseeq1", scope: !2783, file: !2783, line: 146, type: !2814, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33, !33, !33}
!2816 = !{!2812, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825}
!2817 = !DILocalVariable(name: "s2", arg: 2, scope: !2813, file: !2783, line: 146, type: !49)
!2818 = !DILocalVariable(name: "s21", arg: 3, scope: !2813, file: !2783, line: 146, type: !33)
!2819 = !DILocalVariable(name: "s22", arg: 4, scope: !2813, file: !2783, line: 146, type: !33)
!2820 = !DILocalVariable(name: "s23", arg: 5, scope: !2813, file: !2783, line: 146, type: !33)
!2821 = !DILocalVariable(name: "s24", arg: 6, scope: !2813, file: !2783, line: 146, type: !33)
!2822 = !DILocalVariable(name: "s25", arg: 7, scope: !2813, file: !2783, line: 146, type: !33)
!2823 = !DILocalVariable(name: "s26", arg: 8, scope: !2813, file: !2783, line: 146, type: !33)
!2824 = !DILocalVariable(name: "s27", arg: 9, scope: !2813, file: !2783, line: 146, type: !33)
!2825 = !DILocalVariable(name: "s28", arg: 10, scope: !2813, file: !2783, line: 146, type: !33)
!2826 = !DILocation(line: 146, column: 25, scope: !2813, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 167, column: 16, scope: !2828, inlinedAt: !2798)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !2783, line: 164, column: 11)
!2829 = distinct !DILexicalBlock(scope: !2811, file: !2783, line: 163, column: 5)
!2830 = !DILocation(line: 146, column: 41, scope: !2813, inlinedAt: !2827)
!2831 = !DILocation(line: 146, column: 50, scope: !2813, inlinedAt: !2827)
!2832 = !DILocation(line: 146, column: 60, scope: !2813, inlinedAt: !2827)
!2833 = !DILocation(line: 146, column: 70, scope: !2813, inlinedAt: !2827)
!2834 = !DILocation(line: 146, column: 80, scope: !2813, inlinedAt: !2827)
!2835 = !DILocation(line: 146, column: 90, scope: !2813, inlinedAt: !2827)
!2836 = !DILocation(line: 146, column: 100, scope: !2813, inlinedAt: !2827)
!2837 = !DILocation(line: 146, column: 110, scope: !2813, inlinedAt: !2827)
!2838 = !DILocation(line: 146, column: 120, scope: !2813, inlinedAt: !2827)
!2839 = !DILocation(line: 148, column: 7, scope: !2840, inlinedAt: !2827)
!2840 = distinct !DILexicalBlock(scope: !2813, file: !2783, line: 148, column: 7)
!2841 = !DILocalVariable(name: "s1", arg: 1, scope: !2842, file: !2783, line: 132, type: !49)
!2842 = distinct !DISubprogram(name: "strcaseeq2", scope: !2783, file: !2783, line: 132, type: !2843, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33, !33}
!2845 = !{!2841, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853}
!2846 = !DILocalVariable(name: "s2", arg: 2, scope: !2842, file: !2783, line: 132, type: !49)
!2847 = !DILocalVariable(name: "s22", arg: 3, scope: !2842, file: !2783, line: 132, type: !33)
!2848 = !DILocalVariable(name: "s23", arg: 4, scope: !2842, file: !2783, line: 132, type: !33)
!2849 = !DILocalVariable(name: "s24", arg: 5, scope: !2842, file: !2783, line: 132, type: !33)
!2850 = !DILocalVariable(name: "s25", arg: 6, scope: !2842, file: !2783, line: 132, type: !33)
!2851 = !DILocalVariable(name: "s26", arg: 7, scope: !2842, file: !2783, line: 132, type: !33)
!2852 = !DILocalVariable(name: "s27", arg: 8, scope: !2842, file: !2783, line: 132, type: !33)
!2853 = !DILocalVariable(name: "s28", arg: 9, scope: !2842, file: !2783, line: 132, type: !33)
!2854 = !DILocation(line: 132, column: 25, scope: !2842, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 153, column: 16, scope: !2856, inlinedAt: !2827)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !2783, line: 150, column: 11)
!2857 = distinct !DILexicalBlock(scope: !2840, file: !2783, line: 149, column: 5)
!2858 = !DILocation(line: 132, column: 41, scope: !2842, inlinedAt: !2855)
!2859 = !DILocation(line: 132, column: 50, scope: !2842, inlinedAt: !2855)
!2860 = !DILocation(line: 132, column: 60, scope: !2842, inlinedAt: !2855)
!2861 = !DILocation(line: 132, column: 70, scope: !2842, inlinedAt: !2855)
!2862 = !DILocation(line: 132, column: 80, scope: !2842, inlinedAt: !2855)
!2863 = !DILocation(line: 132, column: 90, scope: !2842, inlinedAt: !2855)
!2864 = !DILocation(line: 132, column: 100, scope: !2842, inlinedAt: !2855)
!2865 = !DILocation(line: 132, column: 110, scope: !2842, inlinedAt: !2855)
!2866 = !DILocation(line: 134, column: 7, scope: !2867, inlinedAt: !2855)
!2867 = distinct !DILexicalBlock(scope: !2842, file: !2783, line: 134, column: 7)
!2868 = !DILocalVariable(name: "s1", arg: 1, scope: !2869, file: !2783, line: 118, type: !49)
!2869 = distinct !DISubprogram(name: "strcaseeq3", scope: !2783, file: !2783, line: 118, type: !2870, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33}
!2872 = !{!2868, !2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2873 = !DILocalVariable(name: "s2", arg: 2, scope: !2869, file: !2783, line: 118, type: !49)
!2874 = !DILocalVariable(name: "s23", arg: 3, scope: !2869, file: !2783, line: 118, type: !33)
!2875 = !DILocalVariable(name: "s24", arg: 4, scope: !2869, file: !2783, line: 118, type: !33)
!2876 = !DILocalVariable(name: "s25", arg: 5, scope: !2869, file: !2783, line: 118, type: !33)
!2877 = !DILocalVariable(name: "s26", arg: 6, scope: !2869, file: !2783, line: 118, type: !33)
!2878 = !DILocalVariable(name: "s27", arg: 7, scope: !2869, file: !2783, line: 118, type: !33)
!2879 = !DILocalVariable(name: "s28", arg: 8, scope: !2869, file: !2783, line: 118, type: !33)
!2880 = !DILocation(line: 118, column: 25, scope: !2869, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 139, column: 16, scope: !2882, inlinedAt: !2855)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !2783, line: 136, column: 11)
!2883 = distinct !DILexicalBlock(scope: !2867, file: !2783, line: 135, column: 5)
!2884 = !DILocation(line: 118, column: 41, scope: !2869, inlinedAt: !2881)
!2885 = !DILocation(line: 118, column: 50, scope: !2869, inlinedAt: !2881)
!2886 = !DILocation(line: 118, column: 60, scope: !2869, inlinedAt: !2881)
!2887 = !DILocation(line: 118, column: 70, scope: !2869, inlinedAt: !2881)
!2888 = !DILocation(line: 118, column: 80, scope: !2869, inlinedAt: !2881)
!2889 = !DILocation(line: 118, column: 90, scope: !2869, inlinedAt: !2881)
!2890 = !DILocation(line: 118, column: 100, scope: !2869, inlinedAt: !2881)
!2891 = !DILocation(line: 120, column: 7, scope: !2892, inlinedAt: !2881)
!2892 = distinct !DILexicalBlock(scope: !2869, file: !2783, line: 120, column: 7)
!2893 = !DILocation(line: 120, column: 7, scope: !2869, inlinedAt: !2881)
!2894 = !DILocalVariable(name: "s1", arg: 1, scope: !2895, file: !2783, line: 104, type: !49)
!2895 = distinct !DISubprogram(name: "strcaseeq4", scope: !2783, file: !2783, line: 104, type: !2896, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!35, !49, !49, !33, !33, !33, !33, !33}
!2898 = !{!2894, !2899, !2900, !2901, !2902, !2903, !2904}
!2899 = !DILocalVariable(name: "s2", arg: 2, scope: !2895, file: !2783, line: 104, type: !49)
!2900 = !DILocalVariable(name: "s24", arg: 3, scope: !2895, file: !2783, line: 104, type: !33)
!2901 = !DILocalVariable(name: "s25", arg: 4, scope: !2895, file: !2783, line: 104, type: !33)
!2902 = !DILocalVariable(name: "s26", arg: 5, scope: !2895, file: !2783, line: 104, type: !33)
!2903 = !DILocalVariable(name: "s27", arg: 6, scope: !2895, file: !2783, line: 104, type: !33)
!2904 = !DILocalVariable(name: "s28", arg: 7, scope: !2895, file: !2783, line: 104, type: !33)
!2905 = !DILocation(line: 104, column: 25, scope: !2895, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 125, column: 16, scope: !2907, inlinedAt: !2881)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !2783, line: 122, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2892, file: !2783, line: 121, column: 5)
!2909 = !DILocation(line: 104, column: 41, scope: !2895, inlinedAt: !2906)
!2910 = !DILocation(line: 104, column: 50, scope: !2895, inlinedAt: !2906)
!2911 = !DILocation(line: 104, column: 60, scope: !2895, inlinedAt: !2906)
!2912 = !DILocation(line: 104, column: 70, scope: !2895, inlinedAt: !2906)
!2913 = !DILocation(line: 104, column: 80, scope: !2895, inlinedAt: !2906)
!2914 = !DILocation(line: 104, column: 90, scope: !2895, inlinedAt: !2906)
!2915 = !DILocation(line: 106, column: 7, scope: !2916, inlinedAt: !2906)
!2916 = distinct !DILexicalBlock(scope: !2895, file: !2783, line: 106, column: 7)
!2917 = !DILocation(line: 106, column: 7, scope: !2895, inlinedAt: !2906)
!2918 = !DILocalVariable(name: "s1", arg: 1, scope: !2919, file: !2783, line: 90, type: !49)
!2919 = distinct !DISubprogram(name: "strcaseeq5", scope: !2783, file: !2783, line: 90, type: !2920, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!35, !49, !49, !33, !33, !33, !33}
!2922 = !{!2918, !2923, !2924, !2925, !2926, !2927}
!2923 = !DILocalVariable(name: "s2", arg: 2, scope: !2919, file: !2783, line: 90, type: !49)
!2924 = !DILocalVariable(name: "s25", arg: 3, scope: !2919, file: !2783, line: 90, type: !33)
!2925 = !DILocalVariable(name: "s26", arg: 4, scope: !2919, file: !2783, line: 90, type: !33)
!2926 = !DILocalVariable(name: "s27", arg: 5, scope: !2919, file: !2783, line: 90, type: !33)
!2927 = !DILocalVariable(name: "s28", arg: 6, scope: !2919, file: !2783, line: 90, type: !33)
!2928 = !DILocation(line: 90, column: 25, scope: !2919, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 111, column: 16, scope: !2930, inlinedAt: !2906)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !2783, line: 108, column: 11)
!2931 = distinct !DILexicalBlock(scope: !2916, file: !2783, line: 107, column: 5)
!2932 = !DILocation(line: 90, column: 41, scope: !2919, inlinedAt: !2929)
!2933 = !DILocation(line: 90, column: 50, scope: !2919, inlinedAt: !2929)
!2934 = !DILocation(line: 90, column: 60, scope: !2919, inlinedAt: !2929)
!2935 = !DILocation(line: 90, column: 70, scope: !2919, inlinedAt: !2929)
!2936 = !DILocation(line: 90, column: 80, scope: !2919, inlinedAt: !2929)
!2937 = !DILocation(line: 92, column: 7, scope: !2938, inlinedAt: !2929)
!2938 = distinct !DILexicalBlock(scope: !2919, file: !2783, line: 92, column: 7)
!2939 = !DILocation(line: 92, column: 7, scope: !2919, inlinedAt: !2929)
!2940 = !DILocation(line: 235, column: 12, scope: !2799)
!2941 = !DILocation(line: 235, column: 21, scope: !2799)
!2942 = !DILocation(line: 235, column: 5, scope: !2799)
!2943 = !DILocation(line: 146, column: 25, scope: !2813, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 167, column: 16, scope: !2828, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 236, column: 7, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2764, file: !105, line: 236, column: 7)
!2947 = !DILocation(line: 146, column: 41, scope: !2813, inlinedAt: !2944)
!2948 = !DILocation(line: 146, column: 50, scope: !2813, inlinedAt: !2944)
!2949 = !DILocation(line: 146, column: 60, scope: !2813, inlinedAt: !2944)
!2950 = !DILocation(line: 146, column: 70, scope: !2813, inlinedAt: !2944)
!2951 = !DILocation(line: 146, column: 80, scope: !2813, inlinedAt: !2944)
!2952 = !DILocation(line: 146, column: 90, scope: !2813, inlinedAt: !2944)
!2953 = !DILocation(line: 146, column: 100, scope: !2813, inlinedAt: !2944)
!2954 = !DILocation(line: 146, column: 110, scope: !2813, inlinedAt: !2944)
!2955 = !DILocation(line: 146, column: 120, scope: !2813, inlinedAt: !2944)
!2956 = !DILocation(line: 148, column: 7, scope: !2840, inlinedAt: !2944)
!2957 = !DILocation(line: 132, column: 25, scope: !2842, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 153, column: 16, scope: !2856, inlinedAt: !2944)
!2959 = !DILocation(line: 132, column: 41, scope: !2842, inlinedAt: !2958)
!2960 = !DILocation(line: 132, column: 50, scope: !2842, inlinedAt: !2958)
!2961 = !DILocation(line: 132, column: 60, scope: !2842, inlinedAt: !2958)
!2962 = !DILocation(line: 132, column: 70, scope: !2842, inlinedAt: !2958)
!2963 = !DILocation(line: 132, column: 80, scope: !2842, inlinedAt: !2958)
!2964 = !DILocation(line: 132, column: 90, scope: !2842, inlinedAt: !2958)
!2965 = !DILocation(line: 132, column: 100, scope: !2842, inlinedAt: !2958)
!2966 = !DILocation(line: 132, column: 110, scope: !2842, inlinedAt: !2958)
!2967 = !DILocation(line: 134, column: 7, scope: !2867, inlinedAt: !2958)
!2968 = !DILocation(line: 134, column: 7, scope: !2842, inlinedAt: !2958)
!2969 = !DILocation(line: 118, column: 25, scope: !2869, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 139, column: 16, scope: !2882, inlinedAt: !2958)
!2971 = !DILocation(line: 118, column: 41, scope: !2869, inlinedAt: !2970)
!2972 = !DILocation(line: 118, column: 50, scope: !2869, inlinedAt: !2970)
!2973 = !DILocation(line: 118, column: 60, scope: !2869, inlinedAt: !2970)
!2974 = !DILocation(line: 118, column: 70, scope: !2869, inlinedAt: !2970)
!2975 = !DILocation(line: 118, column: 80, scope: !2869, inlinedAt: !2970)
!2976 = !DILocation(line: 118, column: 90, scope: !2869, inlinedAt: !2970)
!2977 = !DILocation(line: 118, column: 100, scope: !2869, inlinedAt: !2970)
!2978 = !DILocation(line: 120, column: 7, scope: !2892, inlinedAt: !2970)
!2979 = !DILocation(line: 120, column: 7, scope: !2869, inlinedAt: !2970)
!2980 = !DILocation(line: 104, column: 25, scope: !2895, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 125, column: 16, scope: !2907, inlinedAt: !2970)
!2982 = !DILocation(line: 104, column: 41, scope: !2895, inlinedAt: !2981)
!2983 = !DILocation(line: 104, column: 50, scope: !2895, inlinedAt: !2981)
!2984 = !DILocation(line: 104, column: 60, scope: !2895, inlinedAt: !2981)
!2985 = !DILocation(line: 104, column: 70, scope: !2895, inlinedAt: !2981)
!2986 = !DILocation(line: 104, column: 80, scope: !2895, inlinedAt: !2981)
!2987 = !DILocation(line: 104, column: 90, scope: !2895, inlinedAt: !2981)
!2988 = !DILocation(line: 106, column: 7, scope: !2916, inlinedAt: !2981)
!2989 = !DILocation(line: 106, column: 7, scope: !2895, inlinedAt: !2981)
!2990 = !DILocation(line: 90, column: 25, scope: !2919, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 111, column: 16, scope: !2930, inlinedAt: !2981)
!2992 = !DILocation(line: 90, column: 41, scope: !2919, inlinedAt: !2991)
!2993 = !DILocation(line: 90, column: 50, scope: !2919, inlinedAt: !2991)
!2994 = !DILocation(line: 90, column: 60, scope: !2919, inlinedAt: !2991)
!2995 = !DILocation(line: 90, column: 70, scope: !2919, inlinedAt: !2991)
!2996 = !DILocation(line: 90, column: 80, scope: !2919, inlinedAt: !2991)
!2997 = !DILocation(line: 92, column: 7, scope: !2938, inlinedAt: !2991)
!2998 = !DILocation(line: 92, column: 7, scope: !2919, inlinedAt: !2991)
!2999 = !DILocalVariable(name: "s1", arg: 1, scope: !3000, file: !2783, line: 76, type: !49)
!3000 = distinct !DISubprogram(name: "strcaseeq6", scope: !2783, file: !2783, line: 76, type: !3001, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!35, !49, !49, !33, !33, !33}
!3003 = !{!2999, !3004, !3005, !3006, !3007}
!3004 = !DILocalVariable(name: "s2", arg: 2, scope: !3000, file: !2783, line: 76, type: !49)
!3005 = !DILocalVariable(name: "s26", arg: 3, scope: !3000, file: !2783, line: 76, type: !33)
!3006 = !DILocalVariable(name: "s27", arg: 4, scope: !3000, file: !2783, line: 76, type: !33)
!3007 = !DILocalVariable(name: "s28", arg: 5, scope: !3000, file: !2783, line: 76, type: !33)
!3008 = !DILocation(line: 76, column: 25, scope: !3000, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 97, column: 16, scope: !3010, inlinedAt: !2991)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !2783, line: 94, column: 11)
!3011 = distinct !DILexicalBlock(scope: !2938, file: !2783, line: 93, column: 5)
!3012 = !DILocation(line: 76, column: 41, scope: !3000, inlinedAt: !3009)
!3013 = !DILocation(line: 76, column: 50, scope: !3000, inlinedAt: !3009)
!3014 = !DILocation(line: 76, column: 60, scope: !3000, inlinedAt: !3009)
!3015 = !DILocation(line: 76, column: 70, scope: !3000, inlinedAt: !3009)
!3016 = !DILocation(line: 78, column: 7, scope: !3017, inlinedAt: !3009)
!3017 = distinct !DILexicalBlock(scope: !3000, file: !2783, line: 78, column: 7)
!3018 = !DILocation(line: 78, column: 7, scope: !3000, inlinedAt: !3009)
!3019 = !DILocalVariable(name: "s1", arg: 1, scope: !3020, file: !2783, line: 62, type: !49)
!3020 = distinct !DISubprogram(name: "strcaseeq7", scope: !2783, file: !2783, line: 62, type: !3021, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!35, !49, !49, !33, !33}
!3023 = !{!3019, !3024, !3025, !3026}
!3024 = !DILocalVariable(name: "s2", arg: 2, scope: !3020, file: !2783, line: 62, type: !49)
!3025 = !DILocalVariable(name: "s27", arg: 3, scope: !3020, file: !2783, line: 62, type: !33)
!3026 = !DILocalVariable(name: "s28", arg: 4, scope: !3020, file: !2783, line: 62, type: !33)
!3027 = !DILocation(line: 62, column: 25, scope: !3020, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 83, column: 16, scope: !3029, inlinedAt: !3009)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !2783, line: 80, column: 11)
!3030 = distinct !DILexicalBlock(scope: !3017, file: !2783, line: 79, column: 5)
!3031 = !DILocation(line: 62, column: 41, scope: !3020, inlinedAt: !3028)
!3032 = !DILocation(line: 62, column: 50, scope: !3020, inlinedAt: !3028)
!3033 = !DILocation(line: 62, column: 60, scope: !3020, inlinedAt: !3028)
!3034 = !DILocation(line: 64, column: 7, scope: !3035, inlinedAt: !3028)
!3035 = distinct !DILexicalBlock(scope: !3020, file: !2783, line: 64, column: 7)
!3036 = !DILocation(line: 236, column: 7, scope: !2764)
!3037 = !DILocation(line: 237, column: 12, scope: !2946)
!3038 = !DILocation(line: 237, column: 21, scope: !2946)
!3039 = !DILocation(line: 237, column: 5, scope: !2946)
!3040 = !DILocation(line: 239, column: 13, scope: !2764)
!3041 = !DILocation(line: 239, column: 11, scope: !2764)
!3042 = !DILocation(line: 239, column: 3, scope: !2764)
!3043 = !DILocation(line: 0, scope: !2764)
!3044 = !DILocation(line: 240, column: 1, scope: !2764)
!3045 = distinct !DISubprogram(name: "quotearg_alloc", scope: !105, file: !105, line: 799, type: !3046, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!32, !49, !99, !2084}
!3048 = !{!3049, !3050, !3051}
!3049 = !DILocalVariable(name: "arg", arg: 1, scope: !3045, file: !105, line: 799, type: !49)
!3050 = !DILocalVariable(name: "argsize", arg: 2, scope: !3045, file: !105, line: 799, type: !99)
!3051 = !DILocalVariable(name: "o", arg: 3, scope: !3045, file: !105, line: 800, type: !2084)
!3052 = !DILocation(line: 799, column: 29, scope: !3045)
!3053 = !DILocation(line: 799, column: 41, scope: !3045)
!3054 = !DILocation(line: 800, column: 47, scope: !3045)
!3055 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !105, line: 812, type: !49)
!3056 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !105, file: !105, line: 812, type: !3057, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!32, !49, !99, !181, !2084}
!3059 = !{!3055, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067}
!3060 = !DILocalVariable(name: "argsize", arg: 2, scope: !3056, file: !105, line: 812, type: !99)
!3061 = !DILocalVariable(name: "size", arg: 3, scope: !3056, file: !105, line: 812, type: !181)
!3062 = !DILocalVariable(name: "o", arg: 4, scope: !3056, file: !105, line: 813, type: !2084)
!3063 = !DILocalVariable(name: "p", scope: !3056, file: !105, line: 815, type: !2084)
!3064 = !DILocalVariable(name: "e", scope: !3056, file: !105, line: 816, type: !35)
!3065 = !DILocalVariable(name: "flags", scope: !3056, file: !105, line: 818, type: !35)
!3066 = !DILocalVariable(name: "bufsize", scope: !3056, file: !105, line: 819, type: !99)
!3067 = !DILocalVariable(name: "buf", scope: !3056, file: !105, line: 823, type: !32)
!3068 = !DILocation(line: 812, column: 33, scope: !3056, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 802, column: 10, scope: !3045)
!3070 = !DILocation(line: 812, column: 45, scope: !3056, inlinedAt: !3069)
!3071 = !DILocation(line: 812, column: 62, scope: !3056, inlinedAt: !3069)
!3072 = !DILocation(line: 813, column: 51, scope: !3056, inlinedAt: !3069)
!3073 = !DILocation(line: 815, column: 37, scope: !3056, inlinedAt: !3069)
!3074 = !DILocation(line: 815, column: 33, scope: !3056, inlinedAt: !3069)
!3075 = !DILocation(line: 816, column: 11, scope: !3056, inlinedAt: !3069)
!3076 = !DILocation(line: 816, column: 7, scope: !3056, inlinedAt: !3069)
!3077 = !DILocation(line: 818, column: 18, scope: !3056, inlinedAt: !3069)
!3078 = !DILocation(line: 818, column: 24, scope: !3056, inlinedAt: !3069)
!3079 = !DILocation(line: 818, column: 7, scope: !3056, inlinedAt: !3069)
!3080 = !DILocation(line: 819, column: 69, scope: !3056, inlinedAt: !3069)
!3081 = !DILocation(line: 820, column: 53, scope: !3056, inlinedAt: !3069)
!3082 = !DILocation(line: 821, column: 49, scope: !3056, inlinedAt: !3069)
!3083 = !DILocation(line: 822, column: 49, scope: !3056, inlinedAt: !3069)
!3084 = !DILocation(line: 819, column: 20, scope: !3056, inlinedAt: !3069)
!3085 = !DILocation(line: 822, column: 62, scope: !3056, inlinedAt: !3069)
!3086 = !DILocation(line: 819, column: 10, scope: !3056, inlinedAt: !3069)
!3087 = !DILocalVariable(name: "n", arg: 1, scope: !3088, file: !177, line: 216, type: !99)
!3088 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !3089, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!32, !99}
!3091 = !{!3087}
!3092 = !DILocation(line: 216, column: 20, scope: !3088, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 823, column: 15, scope: !3056, inlinedAt: !3069)
!3094 = !DILocation(line: 218, column: 10, scope: !3088, inlinedAt: !3093)
!3095 = !DILocation(line: 823, column: 9, scope: !3056, inlinedAt: !3069)
!3096 = !DILocation(line: 824, column: 60, scope: !3056, inlinedAt: !3069)
!3097 = !DILocation(line: 826, column: 32, scope: !3056, inlinedAt: !3069)
!3098 = !DILocation(line: 826, column: 47, scope: !3056, inlinedAt: !3069)
!3099 = !DILocation(line: 824, column: 3, scope: !3056, inlinedAt: !3069)
!3100 = !DILocation(line: 827, column: 9, scope: !3056, inlinedAt: !3069)
!3101 = !DILocation(line: 802, column: 3, scope: !3045)
!3102 = !DILocation(line: 812, column: 33, scope: !3056)
!3103 = !DILocation(line: 812, column: 45, scope: !3056)
!3104 = !DILocation(line: 812, column: 62, scope: !3056)
!3105 = !DILocation(line: 813, column: 51, scope: !3056)
!3106 = !DILocation(line: 815, column: 37, scope: !3056)
!3107 = !DILocation(line: 815, column: 33, scope: !3056)
!3108 = !DILocation(line: 816, column: 11, scope: !3056)
!3109 = !DILocation(line: 816, column: 7, scope: !3056)
!3110 = !DILocation(line: 818, column: 18, scope: !3056)
!3111 = !DILocation(line: 818, column: 27, scope: !3056)
!3112 = !DILocation(line: 818, column: 24, scope: !3056)
!3113 = !DILocation(line: 818, column: 7, scope: !3056)
!3114 = !DILocation(line: 819, column: 69, scope: !3056)
!3115 = !DILocation(line: 820, column: 53, scope: !3056)
!3116 = !DILocation(line: 821, column: 49, scope: !3056)
!3117 = !DILocation(line: 822, column: 49, scope: !3056)
!3118 = !DILocation(line: 819, column: 20, scope: !3056)
!3119 = !DILocation(line: 822, column: 62, scope: !3056)
!3120 = !DILocation(line: 819, column: 10, scope: !3056)
!3121 = !DILocation(line: 216, column: 20, scope: !3088, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 823, column: 15, scope: !3056)
!3123 = !DILocation(line: 218, column: 10, scope: !3088, inlinedAt: !3122)
!3124 = !DILocation(line: 823, column: 9, scope: !3056)
!3125 = !DILocation(line: 824, column: 60, scope: !3056)
!3126 = !DILocation(line: 826, column: 32, scope: !3056)
!3127 = !DILocation(line: 826, column: 47, scope: !3056)
!3128 = !DILocation(line: 824, column: 3, scope: !3056)
!3129 = !DILocation(line: 827, column: 9, scope: !3056)
!3130 = !DILocation(line: 828, column: 7, scope: !3056)
!3131 = !DILocation(line: 829, column: 11, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3056, file: !105, line: 828, column: 7)
!3133 = !{!1458, !1458, i64 0}
!3134 = !DILocation(line: 829, column: 5, scope: !3132)
!3135 = !DILocation(line: 830, column: 3, scope: !3056)
!3136 = distinct !DISubprogram(name: "quotearg_free", scope: !105, file: !105, line: 848, type: !1021, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3137)
!3137 = !{!3138, !3139}
!3138 = !DILocalVariable(name: "sv", scope: !3136, file: !105, line: 850, type: !131)
!3139 = !DILocalVariable(name: "i", scope: !3136, file: !105, line: 851, type: !35)
!3140 = !DILocation(line: 850, column: 24, scope: !3136)
!3141 = !DILocation(line: 850, column: 19, scope: !3136)
!3142 = !DILocation(line: 851, column: 7, scope: !3136)
!3143 = !DILocation(line: 852, column: 19, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !105, line: 852, column: 3)
!3145 = distinct !DILexicalBlock(scope: !3136, file: !105, line: 852, column: 3)
!3146 = !DILocation(line: 852, column: 17, scope: !3144)
!3147 = !DILocation(line: 852, column: 3, scope: !3145)
!3148 = !DILocation(line: 853, column: 17, scope: !3144)
!3149 = !{!3150, !639, i64 8}
!3150 = !{!"slotvec", !1458, i64 0, !639, i64 8}
!3151 = !DILocation(line: 853, column: 5, scope: !3144)
!3152 = !DILocation(line: 852, column: 28, scope: !3144)
!3153 = distinct !{!3153, !3147, !3154}
!3154 = !DILocation(line: 853, column: 20, scope: !3145)
!3155 = !DILocation(line: 854, column: 13, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3136, file: !105, line: 854, column: 7)
!3157 = !DILocation(line: 854, column: 17, scope: !3156)
!3158 = !DILocation(line: 854, column: 7, scope: !3136)
!3159 = !DILocation(line: 856, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3156, file: !105, line: 855, column: 5)
!3161 = !DILocation(line: 857, column: 21, scope: !3160)
!3162 = !{!3150, !1458, i64 0}
!3163 = !DILocation(line: 858, column: 20, scope: !3160)
!3164 = !DILocation(line: 859, column: 5, scope: !3160)
!3165 = !DILocation(line: 860, column: 10, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3136, file: !105, line: 860, column: 7)
!3167 = !DILocation(line: 860, column: 7, scope: !3136)
!3168 = !DILocation(line: 862, column: 13, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3166, file: !105, line: 861, column: 5)
!3170 = !DILocation(line: 862, column: 7, scope: !3169)
!3171 = !DILocation(line: 863, column: 15, scope: !3169)
!3172 = !DILocation(line: 864, column: 5, scope: !3169)
!3173 = !DILocation(line: 865, column: 10, scope: !3136)
!3174 = !DILocation(line: 866, column: 1, scope: !3136)
!3175 = distinct !DISubprogram(name: "quotearg_n", scope: !105, file: !105, line: 931, type: !3176, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!32, !35, !49}
!3178 = !{!3179, !3180}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !105, line: 931, type: !35)
!3180 = !DILocalVariable(name: "arg", arg: 2, scope: !3175, file: !105, line: 931, type: !49)
!3181 = !DILocation(line: 931, column: 17, scope: !3175)
!3182 = !DILocation(line: 931, column: 32, scope: !3175)
!3183 = !DILocation(line: 933, column: 10, scope: !3175)
!3184 = !DILocation(line: 933, column: 3, scope: !3175)
!3185 = distinct !DISubprogram(name: "quotearg_n_options", scope: !105, file: !105, line: 877, type: !3186, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!32, !35, !49, !99, !2084}
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194, !3195, !3198, !3199, !3201, !3202, !3203}
!3189 = !DILocalVariable(name: "n", arg: 1, scope: !3185, file: !105, line: 877, type: !35)
!3190 = !DILocalVariable(name: "arg", arg: 2, scope: !3185, file: !105, line: 877, type: !49)
!3191 = !DILocalVariable(name: "argsize", arg: 3, scope: !3185, file: !105, line: 877, type: !99)
!3192 = !DILocalVariable(name: "options", arg: 4, scope: !3185, file: !105, line: 878, type: !2084)
!3193 = !DILocalVariable(name: "e", scope: !3185, file: !105, line: 880, type: !35)
!3194 = !DILocalVariable(name: "sv", scope: !3185, file: !105, line: 882, type: !131)
!3195 = !DILocalVariable(name: "preallocated", scope: !3196, file: !105, line: 889, type: !59)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !105, line: 888, column: 5)
!3197 = distinct !DILexicalBlock(scope: !3185, file: !105, line: 887, column: 7)
!3198 = !DILocalVariable(name: "nmax", scope: !3196, file: !105, line: 890, type: !35)
!3199 = !DILocalVariable(name: "size", scope: !3200, file: !105, line: 903, type: !99)
!3200 = distinct !DILexicalBlock(scope: !3185, file: !105, line: 902, column: 3)
!3201 = !DILocalVariable(name: "val", scope: !3200, file: !105, line: 904, type: !32)
!3202 = !DILocalVariable(name: "flags", scope: !3200, file: !105, line: 906, type: !35)
!3203 = !DILocalVariable(name: "qsize", scope: !3200, file: !105, line: 907, type: !99)
!3204 = !DILocation(line: 877, column: 25, scope: !3185)
!3205 = !DILocation(line: 877, column: 40, scope: !3185)
!3206 = !DILocation(line: 877, column: 52, scope: !3185)
!3207 = !DILocation(line: 878, column: 51, scope: !3185)
!3208 = !DILocation(line: 880, column: 11, scope: !3185)
!3209 = !DILocation(line: 880, column: 7, scope: !3185)
!3210 = !DILocation(line: 882, column: 24, scope: !3185)
!3211 = !DILocation(line: 882, column: 19, scope: !3185)
!3212 = !DILocation(line: 884, column: 9, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3185, file: !105, line: 884, column: 7)
!3214 = !DILocation(line: 884, column: 7, scope: !3185)
!3215 = !DILocation(line: 885, column: 5, scope: !3213)
!3216 = !DILocation(line: 887, column: 7, scope: !3197)
!3217 = !DILocation(line: 887, column: 14, scope: !3197)
!3218 = !DILocation(line: 887, column: 7, scope: !3185)
!3219 = !DILocation(line: 889, column: 31, scope: !3196)
!3220 = !DILocation(line: 890, column: 11, scope: !3196)
!3221 = !DILocation(line: 892, column: 16, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3196, file: !105, line: 892, column: 11)
!3223 = !DILocation(line: 892, column: 11, scope: !3196)
!3224 = !DILocation(line: 893, column: 9, scope: !3222)
!3225 = !DILocation(line: 895, column: 32, scope: !3196)
!3226 = !DILocation(line: 895, column: 61, scope: !3196)
!3227 = !DILocation(line: 895, column: 58, scope: !3196)
!3228 = !DILocation(line: 895, column: 66, scope: !3196)
!3229 = !DILocation(line: 895, column: 22, scope: !3196)
!3230 = !DILocation(line: 895, column: 15, scope: !3196)
!3231 = !DILocation(line: 896, column: 11, scope: !3196)
!3232 = !DILocation(line: 897, column: 15, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3196, file: !105, line: 896, column: 11)
!3234 = !{i64 0, i64 8, !3133, i64 8, i64 8, !638}
!3235 = !DILocation(line: 897, column: 9, scope: !3233)
!3236 = !DILocation(line: 898, column: 20, scope: !3196)
!3237 = !DILocation(line: 898, column: 18, scope: !3196)
!3238 = !DILocation(line: 898, column: 7, scope: !3196)
!3239 = !DILocation(line: 898, column: 38, scope: !3196)
!3240 = !DILocation(line: 898, column: 31, scope: !3196)
!3241 = !DILocation(line: 898, column: 48, scope: !3196)
!3242 = !DILocation(line: 899, column: 14, scope: !3196)
!3243 = !DILocation(line: 900, column: 5, scope: !3196)
!3244 = !DILocation(line: 0, scope: !3185)
!3245 = !DILocation(line: 903, column: 19, scope: !3200)
!3246 = !DILocation(line: 903, column: 25, scope: !3200)
!3247 = !DILocation(line: 903, column: 12, scope: !3200)
!3248 = !DILocation(line: 904, column: 23, scope: !3200)
!3249 = !DILocation(line: 904, column: 11, scope: !3200)
!3250 = !DILocation(line: 906, column: 26, scope: !3200)
!3251 = !DILocation(line: 906, column: 32, scope: !3200)
!3252 = !DILocation(line: 906, column: 9, scope: !3200)
!3253 = !DILocation(line: 908, column: 55, scope: !3200)
!3254 = !DILocation(line: 909, column: 46, scope: !3200)
!3255 = !DILocation(line: 910, column: 55, scope: !3200)
!3256 = !DILocation(line: 911, column: 55, scope: !3200)
!3257 = !DILocation(line: 907, column: 20, scope: !3200)
!3258 = !DILocation(line: 907, column: 12, scope: !3200)
!3259 = !DILocation(line: 913, column: 14, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3200, file: !105, line: 913, column: 9)
!3261 = !DILocation(line: 913, column: 9, scope: !3200)
!3262 = !DILocation(line: 915, column: 35, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !105, line: 914, column: 7)
!3264 = !DILocation(line: 915, column: 20, scope: !3263)
!3265 = !DILocation(line: 916, column: 17, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !105, line: 916, column: 13)
!3267 = !DILocation(line: 916, column: 13, scope: !3263)
!3268 = !DILocation(line: 917, column: 11, scope: !3266)
!3269 = !DILocation(line: 216, column: 20, scope: !3088, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 918, column: 27, scope: !3263)
!3271 = !DILocation(line: 218, column: 10, scope: !3088, inlinedAt: !3270)
!3272 = !DILocation(line: 918, column: 19, scope: !3263)
!3273 = !DILocation(line: 919, column: 69, scope: !3263)
!3274 = !DILocation(line: 921, column: 44, scope: !3263)
!3275 = !DILocation(line: 922, column: 44, scope: !3263)
!3276 = !DILocation(line: 919, column: 9, scope: !3263)
!3277 = !DILocation(line: 923, column: 7, scope: !3263)
!3278 = !DILocation(line: 0, scope: !3200)
!3279 = !DILocation(line: 925, column: 11, scope: !3200)
!3280 = !DILocation(line: 926, column: 5, scope: !3200)
!3281 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !105, file: !105, line: 937, type: !3282, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!32, !35, !49, !99}
!3284 = !{!3285, !3286, !3287}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !105, line: 937, type: !35)
!3286 = !DILocalVariable(name: "arg", arg: 2, scope: !3281, file: !105, line: 937, type: !49)
!3287 = !DILocalVariable(name: "argsize", arg: 3, scope: !3281, file: !105, line: 937, type: !99)
!3288 = !DILocation(line: 937, column: 21, scope: !3281)
!3289 = !DILocation(line: 937, column: 36, scope: !3281)
!3290 = !DILocation(line: 937, column: 48, scope: !3281)
!3291 = !DILocation(line: 939, column: 10, scope: !3281)
!3292 = !DILocation(line: 939, column: 3, scope: !3281)
!3293 = distinct !DISubprogram(name: "quotearg", scope: !105, file: !105, line: 943, type: !3294, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!32, !49}
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "arg", arg: 1, scope: !3293, file: !105, line: 943, type: !49)
!3298 = !DILocation(line: 943, column: 23, scope: !3293)
!3299 = !DILocation(line: 931, column: 17, scope: !3175, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 945, column: 10, scope: !3293)
!3301 = !DILocation(line: 931, column: 32, scope: !3175, inlinedAt: !3300)
!3302 = !DILocation(line: 933, column: 10, scope: !3175, inlinedAt: !3300)
!3303 = !DILocation(line: 945, column: 3, scope: !3293)
!3304 = distinct !DISubprogram(name: "quotearg_mem", scope: !105, file: !105, line: 949, type: !3305, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!32, !49, !99}
!3307 = !{!3308, !3309}
!3308 = !DILocalVariable(name: "arg", arg: 1, scope: !3304, file: !105, line: 949, type: !49)
!3309 = !DILocalVariable(name: "argsize", arg: 2, scope: !3304, file: !105, line: 949, type: !99)
!3310 = !DILocation(line: 949, column: 27, scope: !3304)
!3311 = !DILocation(line: 949, column: 39, scope: !3304)
!3312 = !DILocation(line: 937, column: 21, scope: !3281, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 951, column: 10, scope: !3304)
!3314 = !DILocation(line: 937, column: 36, scope: !3281, inlinedAt: !3313)
!3315 = !DILocation(line: 937, column: 48, scope: !3281, inlinedAt: !3313)
!3316 = !DILocation(line: 939, column: 10, scope: !3281, inlinedAt: !3313)
!3317 = !DILocation(line: 951, column: 3, scope: !3304)
!3318 = distinct !DISubprogram(name: "quotearg_n_style", scope: !105, file: !105, line: 955, type: !3319, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!32, !35, !79, !49}
!3321 = !{!3322, !3323, !3324, !3325}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !105, line: 955, type: !35)
!3323 = !DILocalVariable(name: "s", arg: 2, scope: !3318, file: !105, line: 955, type: !79)
!3324 = !DILocalVariable(name: "arg", arg: 3, scope: !3318, file: !105, line: 955, type: !49)
!3325 = !DILocalVariable(name: "o", scope: !3318, file: !105, line: 957, type: !2085)
!3326 = !DILocation(line: 955, column: 23, scope: !3318)
!3327 = !DILocation(line: 955, column: 45, scope: !3318)
!3328 = !DILocation(line: 955, column: 60, scope: !3318)
!3329 = !DILocation(line: 957, column: 3, scope: !3318)
!3330 = !DILocation(line: 957, column: 32, scope: !3318)
!3331 = !DILocalVariable(name: "style", arg: 1, scope: !3332, file: !105, line: 193, type: !79)
!3332 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !105, file: !105, line: 193, type: !3333, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!112, !79}
!3335 = !{!3331, !3336}
!3336 = !DILocalVariable(name: "o", scope: !3332, file: !105, line: 195, type: !112)
!3337 = !DILocation(line: 193, column: 48, scope: !3332, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 957, column: 36, scope: !3318)
!3339 = !DILocation(line: 195, column: 26, scope: !3332, inlinedAt: !3338)
!3340 = !{!3341}
!3341 = distinct !{!3341, !3342, !"quoting_options_from_style: argument 0"}
!3342 = distinct !{!3342, !"quoting_options_from_style"}
!3343 = !DILocation(line: 196, column: 13, scope: !3344, inlinedAt: !3338)
!3344 = distinct !DILexicalBlock(scope: !3332, file: !105, line: 196, column: 7)
!3345 = !DILocation(line: 196, column: 7, scope: !3332, inlinedAt: !3338)
!3346 = !DILocation(line: 197, column: 5, scope: !3344, inlinedAt: !3338)
!3347 = !DILocation(line: 198, column: 5, scope: !3332, inlinedAt: !3338)
!3348 = !DILocation(line: 198, column: 11, scope: !3332, inlinedAt: !3338)
!3349 = !DILocation(line: 958, column: 10, scope: !3318)
!3350 = !DILocation(line: 959, column: 1, scope: !3318)
!3351 = !DILocation(line: 958, column: 3, scope: !3318)
!3352 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !105, file: !105, line: 962, type: !3353, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!32, !35, !79, !49, !99}
!3355 = !{!3356, !3357, !3358, !3359, !3360}
!3356 = !DILocalVariable(name: "n", arg: 1, scope: !3352, file: !105, line: 962, type: !35)
!3357 = !DILocalVariable(name: "s", arg: 2, scope: !3352, file: !105, line: 962, type: !79)
!3358 = !DILocalVariable(name: "arg", arg: 3, scope: !3352, file: !105, line: 963, type: !49)
!3359 = !DILocalVariable(name: "argsize", arg: 4, scope: !3352, file: !105, line: 963, type: !99)
!3360 = !DILocalVariable(name: "o", scope: !3352, file: !105, line: 965, type: !2085)
!3361 = !DILocation(line: 962, column: 27, scope: !3352)
!3362 = !DILocation(line: 962, column: 49, scope: !3352)
!3363 = !DILocation(line: 963, column: 35, scope: !3352)
!3364 = !DILocation(line: 963, column: 47, scope: !3352)
!3365 = !DILocation(line: 965, column: 3, scope: !3352)
!3366 = !DILocation(line: 965, column: 32, scope: !3352)
!3367 = !DILocation(line: 193, column: 48, scope: !3332, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 965, column: 36, scope: !3352)
!3369 = !DILocation(line: 195, column: 26, scope: !3332, inlinedAt: !3368)
!3370 = !{!3371}
!3371 = distinct !{!3371, !3372, !"quoting_options_from_style: argument 0"}
!3372 = distinct !{!3372, !"quoting_options_from_style"}
!3373 = !DILocation(line: 196, column: 13, scope: !3344, inlinedAt: !3368)
!3374 = !DILocation(line: 196, column: 7, scope: !3332, inlinedAt: !3368)
!3375 = !DILocation(line: 197, column: 5, scope: !3344, inlinedAt: !3368)
!3376 = !DILocation(line: 198, column: 5, scope: !3332, inlinedAt: !3368)
!3377 = !DILocation(line: 198, column: 11, scope: !3332, inlinedAt: !3368)
!3378 = !DILocation(line: 966, column: 10, scope: !3352)
!3379 = !DILocation(line: 967, column: 1, scope: !3352)
!3380 = !DILocation(line: 966, column: 3, scope: !3352)
!3381 = distinct !DISubprogram(name: "quotearg_style", scope: !105, file: !105, line: 970, type: !3382, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!32, !79, !49}
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "s", arg: 1, scope: !3381, file: !105, line: 970, type: !79)
!3386 = !DILocalVariable(name: "arg", arg: 2, scope: !3381, file: !105, line: 970, type: !49)
!3387 = !DILocation(line: 970, column: 36, scope: !3381)
!3388 = !DILocation(line: 970, column: 51, scope: !3381)
!3389 = !DILocation(line: 955, column: 23, scope: !3318, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 972, column: 10, scope: !3381)
!3391 = !DILocation(line: 955, column: 45, scope: !3318, inlinedAt: !3390)
!3392 = !DILocation(line: 955, column: 60, scope: !3318, inlinedAt: !3390)
!3393 = !DILocation(line: 957, column: 3, scope: !3318, inlinedAt: !3390)
!3394 = !DILocation(line: 957, column: 32, scope: !3318, inlinedAt: !3390)
!3395 = !DILocation(line: 193, column: 48, scope: !3332, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 957, column: 36, scope: !3318, inlinedAt: !3390)
!3397 = !DILocation(line: 195, column: 26, scope: !3332, inlinedAt: !3396)
!3398 = !{!3399}
!3399 = distinct !{!3399, !3400, !"quoting_options_from_style: argument 0"}
!3400 = distinct !{!3400, !"quoting_options_from_style"}
!3401 = !DILocation(line: 196, column: 13, scope: !3344, inlinedAt: !3396)
!3402 = !DILocation(line: 196, column: 7, scope: !3332, inlinedAt: !3396)
!3403 = !DILocation(line: 197, column: 5, scope: !3344, inlinedAt: !3396)
!3404 = !DILocation(line: 198, column: 5, scope: !3332, inlinedAt: !3396)
!3405 = !DILocation(line: 198, column: 11, scope: !3332, inlinedAt: !3396)
!3406 = !DILocation(line: 958, column: 10, scope: !3318, inlinedAt: !3390)
!3407 = !DILocation(line: 959, column: 1, scope: !3318, inlinedAt: !3390)
!3408 = !DILocation(line: 972, column: 3, scope: !3381)
!3409 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !105, file: !105, line: 976, type: !3410, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!32, !79, !49, !99}
!3412 = !{!3413, !3414, !3415}
!3413 = !DILocalVariable(name: "s", arg: 1, scope: !3409, file: !105, line: 976, type: !79)
!3414 = !DILocalVariable(name: "arg", arg: 2, scope: !3409, file: !105, line: 976, type: !49)
!3415 = !DILocalVariable(name: "argsize", arg: 3, scope: !3409, file: !105, line: 976, type: !99)
!3416 = !DILocation(line: 976, column: 40, scope: !3409)
!3417 = !DILocation(line: 976, column: 55, scope: !3409)
!3418 = !DILocation(line: 976, column: 67, scope: !3409)
!3419 = !DILocation(line: 962, column: 27, scope: !3352, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 978, column: 10, scope: !3409)
!3421 = !DILocation(line: 962, column: 49, scope: !3352, inlinedAt: !3420)
!3422 = !DILocation(line: 963, column: 35, scope: !3352, inlinedAt: !3420)
!3423 = !DILocation(line: 963, column: 47, scope: !3352, inlinedAt: !3420)
!3424 = !DILocation(line: 965, column: 3, scope: !3352, inlinedAt: !3420)
!3425 = !DILocation(line: 965, column: 32, scope: !3352, inlinedAt: !3420)
!3426 = !DILocation(line: 193, column: 48, scope: !3332, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 965, column: 36, scope: !3352, inlinedAt: !3420)
!3428 = !DILocation(line: 195, column: 26, scope: !3332, inlinedAt: !3427)
!3429 = !{!3430}
!3430 = distinct !{!3430, !3431, !"quoting_options_from_style: argument 0"}
!3431 = distinct !{!3431, !"quoting_options_from_style"}
!3432 = !DILocation(line: 196, column: 13, scope: !3344, inlinedAt: !3427)
!3433 = !DILocation(line: 196, column: 7, scope: !3332, inlinedAt: !3427)
!3434 = !DILocation(line: 197, column: 5, scope: !3344, inlinedAt: !3427)
!3435 = !DILocation(line: 198, column: 5, scope: !3332, inlinedAt: !3427)
!3436 = !DILocation(line: 198, column: 11, scope: !3332, inlinedAt: !3427)
!3437 = !DILocation(line: 966, column: 10, scope: !3352, inlinedAt: !3420)
!3438 = !DILocation(line: 967, column: 1, scope: !3352, inlinedAt: !3420)
!3439 = !DILocation(line: 978, column: 3, scope: !3409)
!3440 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !105, file: !105, line: 982, type: !3441, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!32, !49, !99, !33}
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DILocalVariable(name: "arg", arg: 1, scope: !3440, file: !105, line: 982, type: !49)
!3445 = !DILocalVariable(name: "argsize", arg: 2, scope: !3440, file: !105, line: 982, type: !99)
!3446 = !DILocalVariable(name: "ch", arg: 3, scope: !3440, file: !105, line: 982, type: !33)
!3447 = !DILocalVariable(name: "options", scope: !3440, file: !105, line: 984, type: !112)
!3448 = !DILocation(line: 982, column: 32, scope: !3440)
!3449 = !DILocation(line: 982, column: 44, scope: !3440)
!3450 = !DILocation(line: 982, column: 58, scope: !3440)
!3451 = !DILocation(line: 984, column: 3, scope: !3440)
!3452 = !DILocation(line: 985, column: 13, scope: !3440)
!3453 = !{i64 0, i64 4, !807, i64 4, i64 4, !716, i64 8, i64 32, !807, i64 40, i64 8, !638, i64 48, i64 8, !638}
!3454 = !DILocation(line: 984, column: 26, scope: !3440)
!3455 = !DILocation(line: 152, column: 43, scope: !2106, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 986, column: 3, scope: !3440)
!3457 = !DILocation(line: 152, column: 51, scope: !2106, inlinedAt: !3456)
!3458 = !DILocation(line: 152, column: 58, scope: !2106, inlinedAt: !3456)
!3459 = !DILocation(line: 154, column: 17, scope: !2106, inlinedAt: !3456)
!3460 = !DILocation(line: 156, column: 62, scope: !2106, inlinedAt: !3456)
!3461 = !DILocation(line: 156, column: 57, scope: !2106, inlinedAt: !3456)
!3462 = !DILocation(line: 155, column: 17, scope: !2106, inlinedAt: !3456)
!3463 = !DILocation(line: 157, column: 15, scope: !2106, inlinedAt: !3456)
!3464 = !DILocation(line: 157, column: 7, scope: !2106, inlinedAt: !3456)
!3465 = !DILocation(line: 158, column: 12, scope: !2106, inlinedAt: !3456)
!3466 = !DILocation(line: 158, column: 15, scope: !2106, inlinedAt: !3456)
!3467 = !DILocation(line: 158, column: 25, scope: !2106, inlinedAt: !3456)
!3468 = !DILocation(line: 158, column: 7, scope: !2106, inlinedAt: !3456)
!3469 = !DILocation(line: 159, column: 18, scope: !2106, inlinedAt: !3456)
!3470 = !DILocation(line: 159, column: 23, scope: !2106, inlinedAt: !3456)
!3471 = !DILocation(line: 159, column: 6, scope: !2106, inlinedAt: !3456)
!3472 = !DILocation(line: 987, column: 10, scope: !3440)
!3473 = !DILocation(line: 988, column: 1, scope: !3440)
!3474 = !DILocation(line: 987, column: 3, scope: !3440)
!3475 = distinct !DISubprogram(name: "quotearg_char", scope: !105, file: !105, line: 991, type: !3476, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!32, !49, !33}
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "arg", arg: 1, scope: !3475, file: !105, line: 991, type: !49)
!3480 = !DILocalVariable(name: "ch", arg: 2, scope: !3475, file: !105, line: 991, type: !33)
!3481 = !DILocation(line: 991, column: 28, scope: !3475)
!3482 = !DILocation(line: 991, column: 38, scope: !3475)
!3483 = !DILocation(line: 982, column: 32, scope: !3440, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 993, column: 10, scope: !3475)
!3485 = !DILocation(line: 982, column: 44, scope: !3440, inlinedAt: !3484)
!3486 = !DILocation(line: 982, column: 58, scope: !3440, inlinedAt: !3484)
!3487 = !DILocation(line: 984, column: 3, scope: !3440, inlinedAt: !3484)
!3488 = !DILocation(line: 985, column: 13, scope: !3440, inlinedAt: !3484)
!3489 = !DILocation(line: 984, column: 26, scope: !3440, inlinedAt: !3484)
!3490 = !DILocation(line: 152, column: 43, scope: !2106, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 986, column: 3, scope: !3440, inlinedAt: !3484)
!3492 = !DILocation(line: 152, column: 51, scope: !2106, inlinedAt: !3491)
!3493 = !DILocation(line: 152, column: 58, scope: !2106, inlinedAt: !3491)
!3494 = !DILocation(line: 154, column: 17, scope: !2106, inlinedAt: !3491)
!3495 = !DILocation(line: 156, column: 62, scope: !2106, inlinedAt: !3491)
!3496 = !DILocation(line: 156, column: 57, scope: !2106, inlinedAt: !3491)
!3497 = !DILocation(line: 155, column: 17, scope: !2106, inlinedAt: !3491)
!3498 = !DILocation(line: 157, column: 15, scope: !2106, inlinedAt: !3491)
!3499 = !DILocation(line: 157, column: 7, scope: !2106, inlinedAt: !3491)
!3500 = !DILocation(line: 158, column: 12, scope: !2106, inlinedAt: !3491)
!3501 = !DILocation(line: 158, column: 15, scope: !2106, inlinedAt: !3491)
!3502 = !DILocation(line: 158, column: 25, scope: !2106, inlinedAt: !3491)
!3503 = !DILocation(line: 158, column: 7, scope: !2106, inlinedAt: !3491)
!3504 = !DILocation(line: 159, column: 18, scope: !2106, inlinedAt: !3491)
!3505 = !DILocation(line: 159, column: 23, scope: !2106, inlinedAt: !3491)
!3506 = !DILocation(line: 159, column: 6, scope: !2106, inlinedAt: !3491)
!3507 = !DILocation(line: 987, column: 10, scope: !3440, inlinedAt: !3484)
!3508 = !DILocation(line: 988, column: 1, scope: !3440, inlinedAt: !3484)
!3509 = !DILocation(line: 993, column: 3, scope: !3475)
!3510 = distinct !DISubprogram(name: "quotearg_colon", scope: !105, file: !105, line: 997, type: !3294, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3511)
!3511 = !{!3512}
!3512 = !DILocalVariable(name: "arg", arg: 1, scope: !3510, file: !105, line: 997, type: !49)
!3513 = !DILocation(line: 997, column: 29, scope: !3510)
!3514 = !DILocation(line: 991, column: 28, scope: !3475, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 999, column: 10, scope: !3510)
!3516 = !DILocation(line: 991, column: 38, scope: !3475, inlinedAt: !3515)
!3517 = !DILocation(line: 982, column: 32, scope: !3440, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 993, column: 10, scope: !3475, inlinedAt: !3515)
!3519 = !DILocation(line: 982, column: 44, scope: !3440, inlinedAt: !3518)
!3520 = !DILocation(line: 982, column: 58, scope: !3440, inlinedAt: !3518)
!3521 = !DILocation(line: 984, column: 3, scope: !3440, inlinedAt: !3518)
!3522 = !DILocation(line: 985, column: 13, scope: !3440, inlinedAt: !3518)
!3523 = !DILocation(line: 984, column: 26, scope: !3440, inlinedAt: !3518)
!3524 = !DILocation(line: 152, column: 43, scope: !2106, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 986, column: 3, scope: !3440, inlinedAt: !3518)
!3526 = !DILocation(line: 152, column: 51, scope: !2106, inlinedAt: !3525)
!3527 = !DILocation(line: 152, column: 58, scope: !2106, inlinedAt: !3525)
!3528 = !DILocation(line: 154, column: 17, scope: !2106, inlinedAt: !3525)
!3529 = !DILocation(line: 156, column: 57, scope: !2106, inlinedAt: !3525)
!3530 = !DILocation(line: 155, column: 17, scope: !2106, inlinedAt: !3525)
!3531 = !DILocation(line: 157, column: 7, scope: !2106, inlinedAt: !3525)
!3532 = !DILocation(line: 158, column: 12, scope: !2106, inlinedAt: !3525)
!3533 = !DILocation(line: 159, column: 6, scope: !2106, inlinedAt: !3525)
!3534 = !DILocation(line: 987, column: 10, scope: !3440, inlinedAt: !3518)
!3535 = !DILocation(line: 988, column: 1, scope: !3440, inlinedAt: !3518)
!3536 = !DILocation(line: 999, column: 3, scope: !3510)
!3537 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !105, file: !105, line: 1003, type: !3305, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3538)
!3538 = !{!3539, !3540}
!3539 = !DILocalVariable(name: "arg", arg: 1, scope: !3537, file: !105, line: 1003, type: !49)
!3540 = !DILocalVariable(name: "argsize", arg: 2, scope: !3537, file: !105, line: 1003, type: !99)
!3541 = !DILocation(line: 1003, column: 33, scope: !3537)
!3542 = !DILocation(line: 1003, column: 45, scope: !3537)
!3543 = !DILocation(line: 982, column: 32, scope: !3440, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 1005, column: 10, scope: !3537)
!3545 = !DILocation(line: 982, column: 44, scope: !3440, inlinedAt: !3544)
!3546 = !DILocation(line: 982, column: 58, scope: !3440, inlinedAt: !3544)
!3547 = !DILocation(line: 984, column: 3, scope: !3440, inlinedAt: !3544)
!3548 = !DILocation(line: 985, column: 13, scope: !3440, inlinedAt: !3544)
!3549 = !DILocation(line: 984, column: 26, scope: !3440, inlinedAt: !3544)
!3550 = !DILocation(line: 152, column: 43, scope: !2106, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 986, column: 3, scope: !3440, inlinedAt: !3544)
!3552 = !DILocation(line: 152, column: 51, scope: !2106, inlinedAt: !3551)
!3553 = !DILocation(line: 152, column: 58, scope: !2106, inlinedAt: !3551)
!3554 = !DILocation(line: 154, column: 17, scope: !2106, inlinedAt: !3551)
!3555 = !DILocation(line: 156, column: 57, scope: !2106, inlinedAt: !3551)
!3556 = !DILocation(line: 155, column: 17, scope: !2106, inlinedAt: !3551)
!3557 = !DILocation(line: 157, column: 7, scope: !2106, inlinedAt: !3551)
!3558 = !DILocation(line: 158, column: 12, scope: !2106, inlinedAt: !3551)
!3559 = !DILocation(line: 159, column: 6, scope: !2106, inlinedAt: !3551)
!3560 = !DILocation(line: 987, column: 10, scope: !3440, inlinedAt: !3544)
!3561 = !DILocation(line: 988, column: 1, scope: !3440, inlinedAt: !3544)
!3562 = !DILocation(line: 1005, column: 3, scope: !3537)
!3563 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !105, file: !105, line: 1009, type: !3319, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3564)
!3564 = !{!3565, !3566, !3567, !3568}
!3565 = !DILocalVariable(name: "n", arg: 1, scope: !3563, file: !105, line: 1009, type: !35)
!3566 = !DILocalVariable(name: "s", arg: 2, scope: !3563, file: !105, line: 1009, type: !79)
!3567 = !DILocalVariable(name: "arg", arg: 3, scope: !3563, file: !105, line: 1009, type: !49)
!3568 = !DILocalVariable(name: "options", scope: !3563, file: !105, line: 1011, type: !112)
!3569 = !DILocation(line: 195, column: 26, scope: !3332, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 1012, column: 13, scope: !3563)
!3571 = !DILocation(line: 1009, column: 29, scope: !3563)
!3572 = !DILocation(line: 1009, column: 51, scope: !3563)
!3573 = !DILocation(line: 1009, column: 66, scope: !3563)
!3574 = !DILocation(line: 1011, column: 3, scope: !3563)
!3575 = !DILocation(line: 1012, column: 13, scope: !3563)
!3576 = !DILocation(line: 193, column: 48, scope: !3332, inlinedAt: !3570)
!3577 = !{!3578}
!3578 = distinct !{!3578, !3579, !"quoting_options_from_style: argument 0"}
!3579 = distinct !{!3579, !"quoting_options_from_style"}
!3580 = !DILocation(line: 196, column: 13, scope: !3344, inlinedAt: !3570)
!3581 = !DILocation(line: 196, column: 7, scope: !3332, inlinedAt: !3570)
!3582 = !DILocation(line: 197, column: 5, scope: !3344, inlinedAt: !3570)
!3583 = !DILocation(line: 1011, column: 26, scope: !3563)
!3584 = !DILocation(line: 152, column: 43, scope: !2106, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 1013, column: 3, scope: !3563)
!3586 = !DILocation(line: 152, column: 51, scope: !2106, inlinedAt: !3585)
!3587 = !DILocation(line: 152, column: 58, scope: !2106, inlinedAt: !3585)
!3588 = !DILocation(line: 154, column: 17, scope: !2106, inlinedAt: !3585)
!3589 = !DILocation(line: 156, column: 57, scope: !2106, inlinedAt: !3585)
!3590 = !DILocation(line: 155, column: 17, scope: !2106, inlinedAt: !3585)
!3591 = !DILocation(line: 157, column: 7, scope: !2106, inlinedAt: !3585)
!3592 = !DILocation(line: 158, column: 12, scope: !2106, inlinedAt: !3585)
!3593 = !DILocation(line: 159, column: 6, scope: !2106, inlinedAt: !3585)
!3594 = !DILocation(line: 1014, column: 10, scope: !3563)
!3595 = !DILocation(line: 1015, column: 1, scope: !3563)
!3596 = !DILocation(line: 1014, column: 3, scope: !3563)
!3597 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !105, file: !105, line: 1018, type: !3598, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3600)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!32, !35, !49, !49, !49}
!3600 = !{!3601, !3602, !3603, !3604}
!3601 = !DILocalVariable(name: "n", arg: 1, scope: !3597, file: !105, line: 1018, type: !35)
!3602 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3597, file: !105, line: 1018, type: !49)
!3603 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3597, file: !105, line: 1019, type: !49)
!3604 = !DILocalVariable(name: "arg", arg: 4, scope: !3597, file: !105, line: 1019, type: !49)
!3605 = !DILocation(line: 1018, column: 24, scope: !3597)
!3606 = !DILocation(line: 1018, column: 39, scope: !3597)
!3607 = !DILocation(line: 1019, column: 32, scope: !3597)
!3608 = !DILocation(line: 1019, column: 57, scope: !3597)
!3609 = !DILocalVariable(name: "n", arg: 1, scope: !3610, file: !105, line: 1026, type: !35)
!3610 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !105, file: !105, line: 1026, type: !3611, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!32, !35, !49, !49, !49, !99}
!3613 = !{!3609, !3614, !3615, !3616, !3617, !3618}
!3614 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3610, file: !105, line: 1026, type: !49)
!3615 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3610, file: !105, line: 1027, type: !49)
!3616 = !DILocalVariable(name: "arg", arg: 4, scope: !3610, file: !105, line: 1028, type: !49)
!3617 = !DILocalVariable(name: "argsize", arg: 5, scope: !3610, file: !105, line: 1028, type: !99)
!3618 = !DILocalVariable(name: "o", scope: !3610, file: !105, line: 1030, type: !112)
!3619 = !DILocation(line: 1026, column: 28, scope: !3610, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 1021, column: 10, scope: !3597)
!3621 = !DILocation(line: 1026, column: 43, scope: !3610, inlinedAt: !3620)
!3622 = !DILocation(line: 1027, column: 36, scope: !3610, inlinedAt: !3620)
!3623 = !DILocation(line: 1028, column: 36, scope: !3610, inlinedAt: !3620)
!3624 = !DILocation(line: 1028, column: 48, scope: !3610, inlinedAt: !3620)
!3625 = !DILocation(line: 1030, column: 3, scope: !3610, inlinedAt: !3620)
!3626 = !DILocation(line: 1030, column: 30, scope: !3610, inlinedAt: !3620)
!3627 = !DILocation(line: 1030, column: 26, scope: !3610, inlinedAt: !3620)
!3628 = !DILocation(line: 179, column: 45, scope: !2155, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 1031, column: 3, scope: !3610, inlinedAt: !3620)
!3630 = !DILocation(line: 180, column: 33, scope: !2155, inlinedAt: !3629)
!3631 = !DILocation(line: 180, column: 57, scope: !2155, inlinedAt: !3629)
!3632 = !DILocation(line: 184, column: 6, scope: !2155, inlinedAt: !3629)
!3633 = !DILocation(line: 184, column: 12, scope: !2155, inlinedAt: !3629)
!3634 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3629)
!3635 = !DILocation(line: 185, column: 23, scope: !2171, inlinedAt: !3629)
!3636 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3629)
!3637 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3629)
!3638 = !DILocation(line: 187, column: 6, scope: !2155, inlinedAt: !3629)
!3639 = !DILocation(line: 187, column: 17, scope: !2155, inlinedAt: !3629)
!3640 = !DILocation(line: 188, column: 6, scope: !2155, inlinedAt: !3629)
!3641 = !DILocation(line: 188, column: 18, scope: !2155, inlinedAt: !3629)
!3642 = !DILocation(line: 1032, column: 10, scope: !3610, inlinedAt: !3620)
!3643 = !DILocation(line: 1033, column: 1, scope: !3610, inlinedAt: !3620)
!3644 = !DILocation(line: 1021, column: 3, scope: !3597)
!3645 = !DILocation(line: 1026, column: 28, scope: !3610)
!3646 = !DILocation(line: 1026, column: 43, scope: !3610)
!3647 = !DILocation(line: 1027, column: 36, scope: !3610)
!3648 = !DILocation(line: 1028, column: 36, scope: !3610)
!3649 = !DILocation(line: 1028, column: 48, scope: !3610)
!3650 = !DILocation(line: 1030, column: 3, scope: !3610)
!3651 = !DILocation(line: 1030, column: 30, scope: !3610)
!3652 = !DILocation(line: 1030, column: 26, scope: !3610)
!3653 = !DILocation(line: 179, column: 45, scope: !2155, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 1031, column: 3, scope: !3610)
!3655 = !DILocation(line: 180, column: 33, scope: !2155, inlinedAt: !3654)
!3656 = !DILocation(line: 180, column: 57, scope: !2155, inlinedAt: !3654)
!3657 = !DILocation(line: 184, column: 6, scope: !2155, inlinedAt: !3654)
!3658 = !DILocation(line: 184, column: 12, scope: !2155, inlinedAt: !3654)
!3659 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3654)
!3660 = !DILocation(line: 185, column: 23, scope: !2171, inlinedAt: !3654)
!3661 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3654)
!3662 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3654)
!3663 = !DILocation(line: 187, column: 6, scope: !2155, inlinedAt: !3654)
!3664 = !DILocation(line: 187, column: 17, scope: !2155, inlinedAt: !3654)
!3665 = !DILocation(line: 188, column: 6, scope: !2155, inlinedAt: !3654)
!3666 = !DILocation(line: 188, column: 18, scope: !2155, inlinedAt: !3654)
!3667 = !DILocation(line: 1032, column: 10, scope: !3610)
!3668 = !DILocation(line: 1033, column: 1, scope: !3610)
!3669 = !DILocation(line: 1032, column: 3, scope: !3610)
!3670 = distinct !DISubprogram(name: "quotearg_custom", scope: !105, file: !105, line: 1036, type: !3671, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!32, !49, !49, !49}
!3673 = !{!3674, !3675, !3676}
!3674 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3670, file: !105, line: 1036, type: !49)
!3675 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3670, file: !105, line: 1036, type: !49)
!3676 = !DILocalVariable(name: "arg", arg: 3, scope: !3670, file: !105, line: 1037, type: !49)
!3677 = !DILocation(line: 1036, column: 30, scope: !3670)
!3678 = !DILocation(line: 1036, column: 54, scope: !3670)
!3679 = !DILocation(line: 1037, column: 30, scope: !3670)
!3680 = !DILocation(line: 1018, column: 24, scope: !3597, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 1039, column: 10, scope: !3670)
!3682 = !DILocation(line: 1018, column: 39, scope: !3597, inlinedAt: !3681)
!3683 = !DILocation(line: 1019, column: 32, scope: !3597, inlinedAt: !3681)
!3684 = !DILocation(line: 1019, column: 57, scope: !3597, inlinedAt: !3681)
!3685 = !DILocation(line: 1026, column: 28, scope: !3610, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 1021, column: 10, scope: !3597, inlinedAt: !3681)
!3687 = !DILocation(line: 1026, column: 43, scope: !3610, inlinedAt: !3686)
!3688 = !DILocation(line: 1027, column: 36, scope: !3610, inlinedAt: !3686)
!3689 = !DILocation(line: 1028, column: 36, scope: !3610, inlinedAt: !3686)
!3690 = !DILocation(line: 1028, column: 48, scope: !3610, inlinedAt: !3686)
!3691 = !DILocation(line: 1030, column: 3, scope: !3610, inlinedAt: !3686)
!3692 = !DILocation(line: 1030, column: 30, scope: !3610, inlinedAt: !3686)
!3693 = !DILocation(line: 1030, column: 26, scope: !3610, inlinedAt: !3686)
!3694 = !DILocation(line: 179, column: 45, scope: !2155, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1031, column: 3, scope: !3610, inlinedAt: !3686)
!3696 = !DILocation(line: 180, column: 33, scope: !2155, inlinedAt: !3695)
!3697 = !DILocation(line: 180, column: 57, scope: !2155, inlinedAt: !3695)
!3698 = !DILocation(line: 184, column: 6, scope: !2155, inlinedAt: !3695)
!3699 = !DILocation(line: 184, column: 12, scope: !2155, inlinedAt: !3695)
!3700 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3695)
!3701 = !DILocation(line: 185, column: 23, scope: !2171, inlinedAt: !3695)
!3702 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3695)
!3703 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3695)
!3704 = !DILocation(line: 187, column: 6, scope: !2155, inlinedAt: !3695)
!3705 = !DILocation(line: 187, column: 17, scope: !2155, inlinedAt: !3695)
!3706 = !DILocation(line: 188, column: 6, scope: !2155, inlinedAt: !3695)
!3707 = !DILocation(line: 188, column: 18, scope: !2155, inlinedAt: !3695)
!3708 = !DILocation(line: 1032, column: 10, scope: !3610, inlinedAt: !3686)
!3709 = !DILocation(line: 1033, column: 1, scope: !3610, inlinedAt: !3686)
!3710 = !DILocation(line: 1039, column: 3, scope: !3670)
!3711 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !105, file: !105, line: 1043, type: !3712, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!32, !49, !49, !49, !99}
!3714 = !{!3715, !3716, !3717, !3718}
!3715 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3711, file: !105, line: 1043, type: !49)
!3716 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3711, file: !105, line: 1043, type: !49)
!3717 = !DILocalVariable(name: "arg", arg: 3, scope: !3711, file: !105, line: 1044, type: !49)
!3718 = !DILocalVariable(name: "argsize", arg: 4, scope: !3711, file: !105, line: 1044, type: !99)
!3719 = !DILocation(line: 1043, column: 34, scope: !3711)
!3720 = !DILocation(line: 1043, column: 58, scope: !3711)
!3721 = !DILocation(line: 1044, column: 34, scope: !3711)
!3722 = !DILocation(line: 1044, column: 46, scope: !3711)
!3723 = !DILocation(line: 1026, column: 28, scope: !3610, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 1046, column: 10, scope: !3711)
!3725 = !DILocation(line: 1026, column: 43, scope: !3610, inlinedAt: !3724)
!3726 = !DILocation(line: 1027, column: 36, scope: !3610, inlinedAt: !3724)
!3727 = !DILocation(line: 1028, column: 36, scope: !3610, inlinedAt: !3724)
!3728 = !DILocation(line: 1028, column: 48, scope: !3610, inlinedAt: !3724)
!3729 = !DILocation(line: 1030, column: 3, scope: !3610, inlinedAt: !3724)
!3730 = !DILocation(line: 1030, column: 30, scope: !3610, inlinedAt: !3724)
!3731 = !DILocation(line: 1030, column: 26, scope: !3610, inlinedAt: !3724)
!3732 = !DILocation(line: 179, column: 45, scope: !2155, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 1031, column: 3, scope: !3610, inlinedAt: !3724)
!3734 = !DILocation(line: 180, column: 33, scope: !2155, inlinedAt: !3733)
!3735 = !DILocation(line: 180, column: 57, scope: !2155, inlinedAt: !3733)
!3736 = !DILocation(line: 184, column: 6, scope: !2155, inlinedAt: !3733)
!3737 = !DILocation(line: 184, column: 12, scope: !2155, inlinedAt: !3733)
!3738 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3733)
!3739 = !DILocation(line: 185, column: 23, scope: !2171, inlinedAt: !3733)
!3740 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3733)
!3741 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3733)
!3742 = !DILocation(line: 187, column: 6, scope: !2155, inlinedAt: !3733)
!3743 = !DILocation(line: 187, column: 17, scope: !2155, inlinedAt: !3733)
!3744 = !DILocation(line: 188, column: 6, scope: !2155, inlinedAt: !3733)
!3745 = !DILocation(line: 188, column: 18, scope: !2155, inlinedAt: !3733)
!3746 = !DILocation(line: 1032, column: 10, scope: !3610, inlinedAt: !3724)
!3747 = !DILocation(line: 1033, column: 1, scope: !3610, inlinedAt: !3724)
!3748 = !DILocation(line: 1046, column: 3, scope: !3711)
!3749 = distinct !DISubprogram(name: "quote_n_mem", scope: !105, file: !105, line: 1061, type: !3750, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!49, !35, !49, !99}
!3752 = !{!3753, !3754, !3755}
!3753 = !DILocalVariable(name: "n", arg: 1, scope: !3749, file: !105, line: 1061, type: !35)
!3754 = !DILocalVariable(name: "arg", arg: 2, scope: !3749, file: !105, line: 1061, type: !49)
!3755 = !DILocalVariable(name: "argsize", arg: 3, scope: !3749, file: !105, line: 1061, type: !99)
!3756 = !DILocation(line: 1061, column: 18, scope: !3749)
!3757 = !DILocation(line: 1061, column: 33, scope: !3749)
!3758 = !DILocation(line: 1061, column: 45, scope: !3749)
!3759 = !DILocation(line: 1063, column: 10, scope: !3749)
!3760 = !DILocation(line: 1063, column: 3, scope: !3749)
!3761 = distinct !DISubprogram(name: "quote_mem", scope: !105, file: !105, line: 1067, type: !3762, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!49, !49, !99}
!3764 = !{!3765, !3766}
!3765 = !DILocalVariable(name: "arg", arg: 1, scope: !3761, file: !105, line: 1067, type: !49)
!3766 = !DILocalVariable(name: "argsize", arg: 2, scope: !3761, file: !105, line: 1067, type: !99)
!3767 = !DILocation(line: 1067, column: 24, scope: !3761)
!3768 = !DILocation(line: 1067, column: 36, scope: !3761)
!3769 = !DILocation(line: 1061, column: 18, scope: !3749, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 1069, column: 10, scope: !3761)
!3771 = !DILocation(line: 1061, column: 33, scope: !3749, inlinedAt: !3770)
!3772 = !DILocation(line: 1061, column: 45, scope: !3749, inlinedAt: !3770)
!3773 = !DILocation(line: 1063, column: 10, scope: !3749, inlinedAt: !3770)
!3774 = !DILocation(line: 1069, column: 3, scope: !3761)
!3775 = distinct !DISubprogram(name: "quote_n", scope: !105, file: !105, line: 1073, type: !3776, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!49, !35, !49}
!3778 = !{!3779, !3780}
!3779 = !DILocalVariable(name: "n", arg: 1, scope: !3775, file: !105, line: 1073, type: !35)
!3780 = !DILocalVariable(name: "arg", arg: 2, scope: !3775, file: !105, line: 1073, type: !49)
!3781 = !DILocation(line: 1073, column: 14, scope: !3775)
!3782 = !DILocation(line: 1073, column: 29, scope: !3775)
!3783 = !DILocation(line: 1061, column: 18, scope: !3749, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 1075, column: 10, scope: !3775)
!3785 = !DILocation(line: 1061, column: 33, scope: !3749, inlinedAt: !3784)
!3786 = !DILocation(line: 1061, column: 45, scope: !3749, inlinedAt: !3784)
!3787 = !DILocation(line: 1063, column: 10, scope: !3749, inlinedAt: !3784)
!3788 = !DILocation(line: 1075, column: 3, scope: !3775)
!3789 = distinct !DISubprogram(name: "quote", scope: !105, file: !105, line: 1079, type: !1904, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !3790)
!3790 = !{!3791}
!3791 = !DILocalVariable(name: "arg", arg: 1, scope: !3789, file: !105, line: 1079, type: !49)
!3792 = !DILocation(line: 1079, column: 20, scope: !3789)
!3793 = !DILocation(line: 1073, column: 14, scope: !3775, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 1081, column: 10, scope: !3789)
!3795 = !DILocation(line: 1073, column: 29, scope: !3775, inlinedAt: !3794)
!3796 = !DILocation(line: 1061, column: 18, scope: !3749, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 1075, column: 10, scope: !3775, inlinedAt: !3794)
!3798 = !DILocation(line: 1061, column: 33, scope: !3749, inlinedAt: !3797)
!3799 = !DILocation(line: 1061, column: 45, scope: !3749, inlinedAt: !3797)
!3800 = !DILocation(line: 1063, column: 10, scope: !3749, inlinedAt: !3797)
!3801 = !DILocation(line: 1081, column: 3, scope: !3789)
!3802 = distinct !DISubprogram(name: "strintcmp", scope: !3803, file: !3803, line: 29, type: !3804, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !160, retainedNodes: !3806)
!3803 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!35, !49, !49}
!3806 = !{!3807, !3808}
!3807 = !DILocalVariable(name: "a", arg: 1, scope: !3802, file: !3803, line: 29, type: !49)
!3808 = !DILocalVariable(name: "b", arg: 2, scope: !3802, file: !3803, line: 29, type: !49)
!3809 = !DILocation(line: 29, column: 24, scope: !3802)
!3810 = !DILocation(line: 29, column: 39, scope: !3802)
!3811 = !DILocalVariable(name: "a", arg: 1, scope: !3812, file: !3813, line: 114, type: !49)
!3812 = distinct !DISubprogram(name: "numcompare", scope: !3813, file: !3813, line: 114, type: !3814, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !160, retainedNodes: !3816)
!3813 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!35, !49, !49, !35, !35}
!3816 = !{!3811, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3817 = !DILocalVariable(name: "b", arg: 2, scope: !3812, file: !3813, line: 114, type: !49)
!3818 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3812, file: !3813, line: 115, type: !35)
!3819 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3812, file: !3813, line: 115, type: !35)
!3820 = !DILocalVariable(name: "tmpa", scope: !3812, file: !3813, line: 117, type: !2114)
!3821 = !DILocalVariable(name: "tmpb", scope: !3812, file: !3813, line: 118, type: !2114)
!3822 = !DILocalVariable(name: "tmp", scope: !3812, file: !3813, line: 119, type: !35)
!3823 = !DILocalVariable(name: "log_a", scope: !3812, file: !3813, line: 120, type: !99)
!3824 = !DILocalVariable(name: "log_b", scope: !3812, file: !3813, line: 121, type: !99)
!3825 = !DILocation(line: 114, column: 25, scope: !3812, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 31, column: 10, scope: !3802)
!3827 = !DILocation(line: 114, column: 40, scope: !3812, inlinedAt: !3826)
!3828 = !DILocation(line: 115, column: 17, scope: !3812, inlinedAt: !3826)
!3829 = !DILocation(line: 115, column: 36, scope: !3812, inlinedAt: !3826)
!3830 = !DILocation(line: 117, column: 24, scope: !3812, inlinedAt: !3826)
!3831 = !DILocation(line: 117, column: 17, scope: !3812, inlinedAt: !3826)
!3832 = !DILocation(line: 118, column: 24, scope: !3812, inlinedAt: !3826)
!3833 = !DILocation(line: 118, column: 17, scope: !3812, inlinedAt: !3826)
!3834 = !DILocation(line: 123, column: 12, scope: !3835, inlinedAt: !3826)
!3835 = distinct !DILexicalBlock(scope: !3812, file: !3813, line: 123, column: 7)
!3836 = !DILocation(line: 123, column: 7, scope: !3812, inlinedAt: !3826)
!3837 = !DILocation(line: 126, column: 17, scope: !3838, inlinedAt: !3826)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !3813, line: 124, column: 5)
!3839 = !DILocation(line: 126, column: 16, scope: !3838, inlinedAt: !3826)
!3840 = !DILocation(line: 127, column: 19, scope: !3838, inlinedAt: !3826)
!3841 = !DILocation(line: 127, column: 35, scope: !3838, inlinedAt: !3826)
!3842 = !DILocation(line: 128, column: 16, scope: !3843, inlinedAt: !3826)
!3843 = distinct !DILexicalBlock(scope: !3838, file: !3813, line: 128, column: 11)
!3844 = !DILocation(line: 128, column: 11, scope: !3838, inlinedAt: !3826)
!3845 = !DILocation(line: 134, column: 15, scope: !3846, inlinedAt: !3826)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !3813, line: 134, column: 15)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !3813, line: 129, column: 9)
!3848 = !DILocation(line: 134, column: 15, scope: !3847, inlinedAt: !3826)
!3849 = !DILocation(line: 136, column: 23, scope: !3847, inlinedAt: !3826)
!3850 = !DILocation(line: 136, column: 39, scope: !3847, inlinedAt: !3826)
!3851 = !DILocation(line: 137, column: 21, scope: !3847, inlinedAt: !3826)
!3852 = !DILocation(line: 137, column: 20, scope: !3847, inlinedAt: !3826)
!3853 = distinct !{!3853, !3854, !3855}
!3854 = !DILocation(line: 136, column: 11, scope: !3847)
!3855 = !DILocation(line: 137, column: 23, scope: !3847)
!3856 = !DILocation(line: 0, scope: !3847, inlinedAt: !3826)
!3857 = !DILocation(line: 142, column: 20, scope: !3847, inlinedAt: !3826)
!3858 = !DILocation(line: 142, column: 18, scope: !3847, inlinedAt: !3826)
!3859 = !DILocation(line: 142, column: 11, scope: !3847, inlinedAt: !3826)
!3860 = !DILocation(line: 145, column: 17, scope: !3838, inlinedAt: !3826)
!3861 = !DILocation(line: 145, column: 16, scope: !3838, inlinedAt: !3826)
!3862 = !DILocation(line: 146, column: 19, scope: !3838, inlinedAt: !3826)
!3863 = !DILocation(line: 146, column: 35, scope: !3838, inlinedAt: !3826)
!3864 = !DILocation(line: 148, column: 14, scope: !3838, inlinedAt: !3826)
!3865 = !DILocation(line: 148, column: 19, scope: !3838, inlinedAt: !3826)
!3866 = !DILocation(line: 148, column: 30, scope: !3838, inlinedAt: !3826)
!3867 = !DILocation(line: 148, column: 27, scope: !3838, inlinedAt: !3826)
!3868 = !DILocation(line: 151, column: 21, scope: !3869, inlinedAt: !3826)
!3869 = distinct !DILexicalBlock(scope: !3838, file: !3813, line: 149, column: 9)
!3870 = !DILocation(line: 151, column: 20, scope: !3869, inlinedAt: !3826)
!3871 = !DILocation(line: 154, column: 21, scope: !3869, inlinedAt: !3826)
!3872 = !DILocation(line: 154, column: 20, scope: !3869, inlinedAt: !3826)
!3873 = !DILocation(line: 148, column: 22, scope: !3838, inlinedAt: !3826)
!3874 = !DILocation(line: 164, column: 23, scope: !3875, inlinedAt: !3826)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3813, line: 164, column: 7)
!3876 = distinct !DILexicalBlock(scope: !3838, file: !3813, line: 164, column: 7)
!3877 = !DILocation(line: 0, scope: !3869, inlinedAt: !3826)
!3878 = !DILocation(line: 162, column: 18, scope: !3838, inlinedAt: !3826)
!3879 = !DILocation(line: 119, column: 7, scope: !3812, inlinedAt: !3826)
!3880 = !DILocation(line: 120, column: 10, scope: !3812, inlinedAt: !3826)
!3881 = !DILocation(line: 164, column: 7, scope: !3876, inlinedAt: !3826)
!3882 = !DILocation(line: 0, scope: !3875, inlinedAt: !3826)
!3883 = !DILocation(line: 121, column: 10, scope: !3812, inlinedAt: !3826)
!3884 = !DILocation(line: 169, column: 23, scope: !3885, inlinedAt: !3826)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !3813, line: 169, column: 7)
!3886 = distinct !DILexicalBlock(scope: !3838, file: !3813, line: 169, column: 7)
!3887 = !DILocation(line: 169, column: 7, scope: !3886, inlinedAt: !3826)
!3888 = !DILocation(line: 166, column: 19, scope: !3875, inlinedAt: !3826)
!3889 = !DILocation(line: 166, column: 18, scope: !3875, inlinedAt: !3826)
!3890 = !DILocation(line: 164, column: 39, scope: !3875, inlinedAt: !3826)
!3891 = distinct !{!3891, !3892, !3893}
!3892 = !DILocation(line: 164, column: 7, scope: !3876)
!3893 = !DILocation(line: 167, column: 37, scope: !3876)
!3894 = !DILocation(line: 171, column: 19, scope: !3885, inlinedAt: !3826)
!3895 = !DILocation(line: 171, column: 18, scope: !3885, inlinedAt: !3826)
!3896 = !DILocation(line: 169, column: 39, scope: !3885, inlinedAt: !3826)
!3897 = distinct !{!3897, !3898, !3899}
!3898 = !DILocation(line: 169, column: 7, scope: !3886)
!3899 = !DILocation(line: 172, column: 37, scope: !3886)
!3900 = !DILocation(line: 0, scope: !3885, inlinedAt: !3826)
!3901 = !DILocation(line: 174, column: 17, scope: !3902, inlinedAt: !3826)
!3902 = distinct !DILexicalBlock(scope: !3838, file: !3813, line: 174, column: 11)
!3903 = !DILocation(line: 174, column: 11, scope: !3838, inlinedAt: !3826)
!3904 = !DILocation(line: 175, column: 22, scope: !3902, inlinedAt: !3826)
!3905 = !DILocation(line: 175, column: 16, scope: !3902, inlinedAt: !3826)
!3906 = !DILocation(line: 175, column: 9, scope: !3902, inlinedAt: !3826)
!3907 = !DILocation(line: 177, column: 12, scope: !3908, inlinedAt: !3826)
!3908 = distinct !DILexicalBlock(scope: !3838, file: !3813, line: 177, column: 11)
!3909 = !DILocation(line: 178, column: 9, scope: !3908, inlinedAt: !3826)
!3910 = !DILocation(line: 182, column: 17, scope: !3911, inlinedAt: !3826)
!3911 = distinct !DILexicalBlock(scope: !3835, file: !3813, line: 182, column: 12)
!3912 = !DILocation(line: 182, column: 12, scope: !3835, inlinedAt: !3826)
!3913 = !DILocation(line: 203, column: 19, scope: !3914, inlinedAt: !3826)
!3914 = distinct !DILexicalBlock(scope: !3911, file: !3813, line: 202, column: 5)
!3915 = !DILocation(line: 203, column: 35, scope: !3914, inlinedAt: !3826)
!3916 = !DILocation(line: 185, column: 17, scope: !3917, inlinedAt: !3826)
!3917 = distinct !DILexicalBlock(scope: !3911, file: !3813, line: 183, column: 5)
!3918 = !DILocation(line: 185, column: 16, scope: !3917, inlinedAt: !3826)
!3919 = !DILocation(line: 186, column: 19, scope: !3917, inlinedAt: !3826)
!3920 = !DILocation(line: 186, column: 35, scope: !3917, inlinedAt: !3826)
!3921 = !DILocation(line: 191, column: 11, scope: !3922, inlinedAt: !3826)
!3922 = distinct !DILexicalBlock(scope: !3917, file: !3813, line: 191, column: 11)
!3923 = !DILocation(line: 191, column: 11, scope: !3917, inlinedAt: !3826)
!3924 = !DILocation(line: 193, column: 19, scope: !3917, inlinedAt: !3826)
!3925 = !DILocation(line: 193, column: 35, scope: !3917, inlinedAt: !3826)
!3926 = !DILocation(line: 194, column: 17, scope: !3917, inlinedAt: !3826)
!3927 = !DILocation(line: 194, column: 16, scope: !3917, inlinedAt: !3826)
!3928 = distinct !{!3928, !3929, !3930}
!3929 = !DILocation(line: 193, column: 7, scope: !3917)
!3930 = !DILocation(line: 194, column: 19, scope: !3917)
!3931 = !DILocation(line: 0, scope: !3917, inlinedAt: !3826)
!3932 = !DILocation(line: 199, column: 14, scope: !3917, inlinedAt: !3826)
!3933 = !DILocation(line: 199, column: 7, scope: !3917, inlinedAt: !3826)
!3934 = !DILocation(line: 0, scope: !3914, inlinedAt: !3826)
!3935 = !DILocation(line: 205, column: 19, scope: !3914, inlinedAt: !3826)
!3936 = !DILocation(line: 205, column: 35, scope: !3914, inlinedAt: !3826)
!3937 = !DILocation(line: 204, column: 17, scope: !3914, inlinedAt: !3826)
!3938 = !DILocation(line: 204, column: 16, scope: !3914, inlinedAt: !3826)
!3939 = distinct !{!3939, !3940, !3941}
!3940 = !DILocation(line: 203, column: 7, scope: !3914)
!3941 = !DILocation(line: 204, column: 19, scope: !3914)
!3942 = !DILocation(line: 208, column: 14, scope: !3914, inlinedAt: !3826)
!3943 = !DILocation(line: 208, column: 19, scope: !3914, inlinedAt: !3826)
!3944 = !DILocation(line: 208, column: 30, scope: !3914, inlinedAt: !3826)
!3945 = !DILocation(line: 208, column: 27, scope: !3914, inlinedAt: !3826)
!3946 = !DILocation(line: 206, column: 17, scope: !3914, inlinedAt: !3826)
!3947 = !DILocation(line: 206, column: 16, scope: !3914, inlinedAt: !3826)
!3948 = distinct !{!3948, !3949, !3950}
!3949 = !DILocation(line: 205, column: 7, scope: !3914)
!3950 = !DILocation(line: 206, column: 19, scope: !3914)
!3951 = !DILocation(line: 211, column: 21, scope: !3952, inlinedAt: !3826)
!3952 = distinct !DILexicalBlock(scope: !3914, file: !3813, line: 209, column: 9)
!3953 = !DILocation(line: 211, column: 20, scope: !3952, inlinedAt: !3826)
!3954 = !DILocation(line: 214, column: 21, scope: !3952, inlinedAt: !3826)
!3955 = !DILocation(line: 214, column: 20, scope: !3952, inlinedAt: !3826)
!3956 = !DILocation(line: 208, column: 22, scope: !3914, inlinedAt: !3826)
!3957 = !DILocation(line: 224, column: 23, scope: !3958, inlinedAt: !3826)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !3813, line: 224, column: 7)
!3959 = distinct !DILexicalBlock(scope: !3914, file: !3813, line: 224, column: 7)
!3960 = !DILocation(line: 0, scope: !3952, inlinedAt: !3826)
!3961 = !DILocation(line: 222, column: 18, scope: !3914, inlinedAt: !3826)
!3962 = !DILocation(line: 224, column: 7, scope: !3959, inlinedAt: !3826)
!3963 = !DILocation(line: 0, scope: !3958, inlinedAt: !3826)
!3964 = !DILocation(line: 229, column: 23, scope: !3965, inlinedAt: !3826)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !3813, line: 229, column: 7)
!3966 = distinct !DILexicalBlock(scope: !3914, file: !3813, line: 229, column: 7)
!3967 = !DILocation(line: 229, column: 7, scope: !3966, inlinedAt: !3826)
!3968 = !DILocation(line: 226, column: 19, scope: !3958, inlinedAt: !3826)
!3969 = !DILocation(line: 226, column: 18, scope: !3958, inlinedAt: !3826)
!3970 = !DILocation(line: 224, column: 39, scope: !3958, inlinedAt: !3826)
!3971 = distinct !{!3971, !3972, !3973}
!3972 = !DILocation(line: 224, column: 7, scope: !3959)
!3973 = !DILocation(line: 227, column: 37, scope: !3959)
!3974 = !DILocation(line: 231, column: 19, scope: !3965, inlinedAt: !3826)
!3975 = !DILocation(line: 231, column: 18, scope: !3965, inlinedAt: !3826)
!3976 = !DILocation(line: 229, column: 39, scope: !3965, inlinedAt: !3826)
!3977 = distinct !{!3977, !3978, !3979}
!3978 = !DILocation(line: 229, column: 7, scope: !3966)
!3979 = !DILocation(line: 232, column: 37, scope: !3966)
!3980 = !DILocation(line: 0, scope: !3965, inlinedAt: !3826)
!3981 = !DILocation(line: 234, column: 17, scope: !3982, inlinedAt: !3826)
!3982 = distinct !DILexicalBlock(scope: !3914, file: !3813, line: 234, column: 11)
!3983 = !DILocation(line: 234, column: 11, scope: !3914, inlinedAt: !3826)
!3984 = !DILocation(line: 235, column: 22, scope: !3982, inlinedAt: !3826)
!3985 = !DILocation(line: 235, column: 16, scope: !3982, inlinedAt: !3826)
!3986 = !DILocation(line: 235, column: 9, scope: !3982, inlinedAt: !3826)
!3987 = !DILocation(line: 237, column: 12, scope: !3988, inlinedAt: !3826)
!3988 = distinct !DILexicalBlock(scope: !3914, file: !3813, line: 237, column: 11)
!3989 = !DILocation(line: 238, column: 9, scope: !3988, inlinedAt: !3826)
!3990 = !DILocation(line: 0, scope: !3991, inlinedAt: !3826)
!3991 = distinct !DILexicalBlock(scope: !3914, file: !3813, line: 218, column: 11)
!3992 = !DILocation(line: 31, column: 3, scope: !3802)
!3993 = distinct !DISubprogram(name: "verror", scope: !3994, file: !3994, line: 43, type: !3995, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !4004)
!3994 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !35, !35, !49, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !164, size: 192, elements: !3999)
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3998, file: !164, baseType: !7, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3998, file: !164, baseType: !7, size: 32, offset: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3998, file: !164, baseType: !34, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3998, file: !164, baseType: !34, size: 64, offset: 128)
!4004 = !{!4005, !4006, !4007, !4008}
!4005 = !DILocalVariable(name: "status", arg: 1, scope: !3993, file: !3994, line: 43, type: !35)
!4006 = !DILocalVariable(name: "errnum", arg: 2, scope: !3993, file: !3994, line: 43, type: !35)
!4007 = !DILocalVariable(name: "format", arg: 3, scope: !3993, file: !3994, line: 43, type: !49)
!4008 = !DILocalVariable(name: "args", arg: 4, scope: !3993, file: !3994, line: 43, type: !3997)
!4009 = !DILocation(line: 43, column: 13, scope: !3993)
!4010 = !DILocation(line: 43, column: 25, scope: !3993)
!4011 = !DILocation(line: 43, column: 45, scope: !3993)
!4012 = !DILocation(line: 43, column: 61, scope: !3993)
!4013 = !DILocation(line: 45, column: 3, scope: !3993)
!4014 = !DILocation(line: 46, column: 1, scope: !3993)
!4015 = distinct !DISubprogram(name: "verror_at_line", scope: !3994, file: !3994, line: 55, type: !4016, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !35, !35, !49, !7, !49, !3997}
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025}
!4019 = !DILocalVariable(name: "status", arg: 1, scope: !4015, file: !3994, line: 55, type: !35)
!4020 = !DILocalVariable(name: "errnum", arg: 2, scope: !4015, file: !3994, line: 55, type: !35)
!4021 = !DILocalVariable(name: "file", arg: 3, scope: !4015, file: !3994, line: 55, type: !49)
!4022 = !DILocalVariable(name: "line_number", arg: 4, scope: !4015, file: !3994, line: 56, type: !7)
!4023 = !DILocalVariable(name: "format", arg: 5, scope: !4015, file: !3994, line: 56, type: !49)
!4024 = !DILocalVariable(name: "args", arg: 6, scope: !4015, file: !3994, line: 56, type: !3997)
!4025 = !DILocalVariable(name: "message", scope: !4015, file: !3994, line: 58, type: !32)
!4026 = !DILocation(line: 55, column: 21, scope: !4015)
!4027 = !DILocation(line: 55, column: 33, scope: !4015)
!4028 = !DILocation(line: 55, column: 53, scope: !4015)
!4029 = !DILocation(line: 56, column: 30, scope: !4015)
!4030 = !DILocation(line: 56, column: 55, scope: !4015)
!4031 = !DILocation(line: 56, column: 71, scope: !4015)
!4032 = !DILocation(line: 58, column: 19, scope: !4015)
!4033 = !DILocation(line: 58, column: 9, scope: !4015)
!4034 = !DILocation(line: 59, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4015, file: !3994, line: 59, column: 7)
!4036 = !DILocation(line: 59, column: 7, scope: !4015)
!4037 = !DILocation(line: 64, column: 11, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !3994, line: 64, column: 11)
!4039 = distinct !DILexicalBlock(scope: !4035, file: !3994, line: 60, column: 5)
!4040 = !DILocation(line: 64, column: 11, scope: !4039)
!4041 = !DILocation(line: 65, column: 9, scope: !4038)
!4042 = !DILocation(line: 67, column: 9, scope: !4038)
!4043 = !DILocation(line: 73, column: 17, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4035, file: !3994, line: 70, column: 5)
!4045 = !DILocation(line: 73, column: 24, scope: !4044)
!4046 = !DILocation(line: 73, column: 7, scope: !4044)
!4047 = !DILocation(line: 74, column: 7, scope: !4044)
!4048 = !DILocation(line: 76, column: 3, scope: !4015)
!4049 = !DILocation(line: 77, column: 1, scope: !4015)
!4050 = distinct !DISubprogram(name: "version_etc_arn", scope: !169, file: !169, line: 62, type: !4051, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !4104)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !4053, !49, !49, !49, !4103, !99}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4055, line: 7, baseType: !4056)
!4055 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4057, line: 49, size: 1728, elements: !4058)
!4057 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4074, !4076, !4077, !4078, !4079, !4080, !4082, !4084, !4087, !4089, !4092, !4095, !4096, !4097, !4098, !4099}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4056, file: !4057, line: 51, baseType: !35, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4056, file: !4057, line: 54, baseType: !32, size: 64, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4056, file: !4057, line: 55, baseType: !32, size: 64, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4056, file: !4057, line: 56, baseType: !32, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4056, file: !4057, line: 57, baseType: !32, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4056, file: !4057, line: 58, baseType: !32, size: 64, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4056, file: !4057, line: 59, baseType: !32, size: 64, offset: 384)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4056, file: !4057, line: 60, baseType: !32, size: 64, offset: 448)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4056, file: !4057, line: 61, baseType: !32, size: 64, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4056, file: !4057, line: 64, baseType: !32, size: 64, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4056, file: !4057, line: 65, baseType: !32, size: 64, offset: 640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4056, file: !4057, line: 66, baseType: !32, size: 64, offset: 704)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4056, file: !4057, line: 68, baseType: !4072, size: 64, offset: 768)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4057, line: 36, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4056, file: !4057, line: 70, baseType: !4075, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4056, file: !4057, line: 72, baseType: !35, size: 32, offset: 896)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4056, file: !4057, line: 73, baseType: !35, size: 32, offset: 928)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4056, file: !4057, line: 74, baseType: !1213, size: 64, offset: 960)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4056, file: !4057, line: 77, baseType: !36, size: 16, offset: 1024)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4056, file: !4057, line: 78, baseType: !4081, size: 8, offset: 1040)
!4081 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4056, file: !4057, line: 79, baseType: !4083, size: 8, offset: 1048)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !784)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4056, file: !4057, line: 81, baseType: !4085, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4057, line: 43, baseType: null)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4056, file: !4057, line: 89, baseType: !4088, size: 64, offset: 1152)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !159, line: 151, baseType: !1214)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4056, file: !4057, line: 91, baseType: !4090, size: 64, offset: 1216)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !4057, line: 37, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4056, file: !4057, line: 92, baseType: !4093, size: 64, offset: 1280)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !4057, line: 38, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4056, file: !4057, line: 93, baseType: !4075, size: 64, offset: 1344)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4056, file: !4057, line: 94, baseType: !34, size: 64, offset: 1408)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4056, file: !4057, line: 95, baseType: !99, size: 64, offset: 1472)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4056, file: !4057, line: 96, baseType: !35, size: 32, offset: 1536)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4056, file: !4057, line: 98, baseType: !4100, size: 160, offset: 1568)
!4100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !4101)
!4101 = !{!4102}
!4102 = !DISubrange(count: 20)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110}
!4105 = !DILocalVariable(name: "stream", arg: 1, scope: !4050, file: !169, line: 62, type: !4053)
!4106 = !DILocalVariable(name: "command_name", arg: 2, scope: !4050, file: !169, line: 63, type: !49)
!4107 = !DILocalVariable(name: "package", arg: 3, scope: !4050, file: !169, line: 63, type: !49)
!4108 = !DILocalVariable(name: "version", arg: 4, scope: !4050, file: !169, line: 64, type: !49)
!4109 = !DILocalVariable(name: "authors", arg: 5, scope: !4050, file: !169, line: 65, type: !4103)
!4110 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4050, file: !169, line: 65, type: !99)
!4111 = !DILocation(line: 62, column: 24, scope: !4050)
!4112 = !DILocation(line: 63, column: 30, scope: !4050)
!4113 = !DILocation(line: 63, column: 56, scope: !4050)
!4114 = !DILocation(line: 64, column: 30, scope: !4050)
!4115 = !DILocation(line: 65, column: 39, scope: !4050)
!4116 = !DILocation(line: 65, column: 55, scope: !4050)
!4117 = !DILocation(line: 67, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4050, file: !169, line: 67, column: 7)
!4119 = !DILocation(line: 67, column: 7, scope: !4050)
!4120 = !DILocation(line: 68, column: 5, scope: !4118)
!4121 = !DILocation(line: 70, column: 5, scope: !4118)
!4122 = !DILocation(line: 84, column: 3, scope: !4050)
!4123 = !DILocation(line: 86, column: 3, scope: !4050)
!4124 = !DILocation(line: 95, column: 3, scope: !4050)
!4125 = !DILocation(line: 99, column: 7, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4050, file: !169, line: 96, column: 5)
!4127 = !DILocation(line: 102, column: 7, scope: !4126)
!4128 = !DILocation(line: 103, column: 7, scope: !4126)
!4129 = !DILocation(line: 106, column: 7, scope: !4126)
!4130 = !DILocation(line: 107, column: 7, scope: !4126)
!4131 = !DILocation(line: 110, column: 7, scope: !4126)
!4132 = !DILocation(line: 112, column: 7, scope: !4126)
!4133 = !DILocation(line: 117, column: 7, scope: !4126)
!4134 = !DILocation(line: 119, column: 7, scope: !4126)
!4135 = !DILocation(line: 124, column: 7, scope: !4126)
!4136 = !DILocation(line: 126, column: 7, scope: !4126)
!4137 = !DILocation(line: 131, column: 7, scope: !4126)
!4138 = !DILocation(line: 134, column: 7, scope: !4126)
!4139 = !DILocation(line: 139, column: 7, scope: !4126)
!4140 = !DILocation(line: 142, column: 7, scope: !4126)
!4141 = !DILocation(line: 147, column: 7, scope: !4126)
!4142 = !DILocation(line: 151, column: 7, scope: !4126)
!4143 = !DILocation(line: 156, column: 7, scope: !4126)
!4144 = !DILocation(line: 160, column: 7, scope: !4126)
!4145 = !DILocation(line: 167, column: 7, scope: !4126)
!4146 = !DILocation(line: 171, column: 7, scope: !4126)
!4147 = !DILocation(line: 173, column: 1, scope: !4050)
!4148 = distinct !DISubprogram(name: "version_etc_ar", scope: !169, file: !169, line: 180, type: !4149, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !4053, !49, !49, !49, !4103}
!4151 = !{!4152, !4153, !4154, !4155, !4156, !4157}
!4152 = !DILocalVariable(name: "stream", arg: 1, scope: !4148, file: !169, line: 180, type: !4053)
!4153 = !DILocalVariable(name: "command_name", arg: 2, scope: !4148, file: !169, line: 181, type: !49)
!4154 = !DILocalVariable(name: "package", arg: 3, scope: !4148, file: !169, line: 181, type: !49)
!4155 = !DILocalVariable(name: "version", arg: 4, scope: !4148, file: !169, line: 182, type: !49)
!4156 = !DILocalVariable(name: "authors", arg: 5, scope: !4148, file: !169, line: 182, type: !4103)
!4157 = !DILocalVariable(name: "n_authors", scope: !4148, file: !169, line: 184, type: !99)
!4158 = !DILocation(line: 180, column: 23, scope: !4148)
!4159 = !DILocation(line: 181, column: 29, scope: !4148)
!4160 = !DILocation(line: 181, column: 55, scope: !4148)
!4161 = !DILocation(line: 182, column: 29, scope: !4148)
!4162 = !DILocation(line: 182, column: 59, scope: !4148)
!4163 = !DILocation(line: 184, column: 10, scope: !4148)
!4164 = !DILocation(line: 186, column: 8, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4148, file: !169, line: 186, column: 3)
!4166 = !DILocation(line: 0, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4165, file: !169, line: 186, column: 3)
!4168 = !DILocation(line: 186, column: 23, scope: !4167)
!4169 = !DILocation(line: 186, column: 3, scope: !4165)
!4170 = !DILocation(line: 186, column: 52, scope: !4167)
!4171 = distinct !{!4171, !4169, !4172}
!4172 = !DILocation(line: 187, column: 5, scope: !4165)
!4173 = !DILocation(line: 188, column: 3, scope: !4148)
!4174 = !DILocation(line: 189, column: 1, scope: !4148)
!4175 = distinct !DISubprogram(name: "version_etc_va", scope: !169, file: !169, line: 196, type: !4176, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !4185)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !4053, !49, !49, !49, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !166, line: 189, size: 192, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4184}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4179, file: !166, line: 189, baseType: !7, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4179, file: !166, line: 189, baseType: !7, size: 32, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4179, file: !166, line: 189, baseType: !34, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4179, file: !166, line: 189, baseType: !34, size: 64, offset: 128)
!4185 = !{!4186, !4187, !4188, !4189, !4190, !4191, !4192}
!4186 = !DILocalVariable(name: "stream", arg: 1, scope: !4175, file: !169, line: 196, type: !4053)
!4187 = !DILocalVariable(name: "command_name", arg: 2, scope: !4175, file: !169, line: 197, type: !49)
!4188 = !DILocalVariable(name: "package", arg: 3, scope: !4175, file: !169, line: 197, type: !49)
!4189 = !DILocalVariable(name: "version", arg: 4, scope: !4175, file: !169, line: 198, type: !49)
!4190 = !DILocalVariable(name: "authors", arg: 5, scope: !4175, file: !169, line: 198, type: !4178)
!4191 = !DILocalVariable(name: "n_authors", scope: !4175, file: !169, line: 200, type: !99)
!4192 = !DILocalVariable(name: "authtab", scope: !4175, file: !169, line: 201, type: !4193)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, elements: !108)
!4194 = !DILocation(line: 196, column: 23, scope: !4175)
!4195 = !DILocation(line: 197, column: 29, scope: !4175)
!4196 = !DILocation(line: 197, column: 55, scope: !4175)
!4197 = !DILocation(line: 198, column: 29, scope: !4175)
!4198 = !DILocation(line: 198, column: 46, scope: !4175)
!4199 = !DILocation(line: 201, column: 3, scope: !4175)
!4200 = !DILocation(line: 201, column: 15, scope: !4175)
!4201 = !DILocation(line: 200, column: 10, scope: !4175)
!4202 = !DILocation(line: 205, column: 35, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !169, line: 203, column: 3)
!4204 = distinct !DILexicalBlock(scope: !4175, file: !169, line: 203, column: 3)
!4205 = !DILocation(line: 205, column: 14, scope: !4203)
!4206 = !DILocation(line: 205, column: 33, scope: !4203)
!4207 = !DILocation(line: 205, column: 67, scope: !4203)
!4208 = !DILocation(line: 203, column: 3, scope: !4204)
!4209 = !DILocation(line: 0, scope: !4203)
!4210 = !DILocation(line: 208, column: 3, scope: !4175)
!4211 = !DILocation(line: 210, column: 1, scope: !4175)
!4212 = distinct !DISubprogram(name: "version_etc", scope: !169, file: !169, line: 227, type: !4213, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !4215)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !4053, !49, !49, !49, null}
!4215 = !{!4216, !4217, !4218, !4219, !4220}
!4216 = !DILocalVariable(name: "stream", arg: 1, scope: !4212, file: !169, line: 227, type: !4053)
!4217 = !DILocalVariable(name: "command_name", arg: 2, scope: !4212, file: !169, line: 228, type: !49)
!4218 = !DILocalVariable(name: "package", arg: 3, scope: !4212, file: !169, line: 228, type: !49)
!4219 = !DILocalVariable(name: "version", arg: 4, scope: !4212, file: !169, line: 229, type: !49)
!4220 = !DILocalVariable(name: "authors", scope: !4212, file: !169, line: 231, type: !4221)
!4221 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !773, line: 52, baseType: !4222)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !775, line: 48, baseType: !4223)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, line: 231, baseType: !4224)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4179, size: 192, elements: !784)
!4225 = !DILocation(line: 227, column: 20, scope: !4212)
!4226 = !DILocation(line: 228, column: 26, scope: !4212)
!4227 = !DILocation(line: 228, column: 52, scope: !4212)
!4228 = !DILocation(line: 229, column: 26, scope: !4212)
!4229 = !DILocation(line: 231, column: 3, scope: !4212)
!4230 = !DILocation(line: 231, column: 11, scope: !4212)
!4231 = !DILocation(line: 233, column: 3, scope: !4212)
!4232 = !DILocation(line: 234, column: 3, scope: !4212)
!4233 = !DILocation(line: 235, column: 3, scope: !4212)
!4234 = !DILocation(line: 236, column: 1, scope: !4212)
!4235 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !169, file: !169, line: 239, type: !1021, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !47)
!4236 = !DILocation(line: 245, column: 3, scope: !4235)
!4237 = !DILocation(line: 251, column: 3, scope: !4235)
!4238 = !DILocation(line: 256, column: 3, scope: !4235)
!4239 = !DILocation(line: 258, column: 1, scope: !4235)
!4240 = distinct !DISubprogram(name: "xnmalloc", scope: !177, file: !177, line: 99, type: !4241, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!34, !99, !99}
!4243 = !{!4244, !4245}
!4244 = !DILocalVariable(name: "n", arg: 1, scope: !4240, file: !177, line: 99, type: !99)
!4245 = !DILocalVariable(name: "s", arg: 2, scope: !4240, file: !177, line: 99, type: !99)
!4246 = !DILocation(line: 99, column: 18, scope: !4240)
!4247 = !DILocation(line: 99, column: 28, scope: !4240)
!4248 = !DILocation(line: 101, column: 7, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4240, file: !177, line: 101, column: 7)
!4250 = !DILocation(line: 101, column: 7, scope: !4240)
!4251 = !DILocation(line: 102, column: 5, scope: !4249)
!4252 = !DILocation(line: 103, column: 21, scope: !4240)
!4253 = !DILocalVariable(name: "n", arg: 1, scope: !4254, file: !4255, line: 39, type: !99)
!4254 = distinct !DISubprogram(name: "xmalloc", scope: !4255, file: !4255, line: 39, type: !4256, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4258)
!4255 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!34, !99}
!4258 = !{!4253, !4259}
!4259 = !DILocalVariable(name: "p", scope: !4254, file: !4255, line: 41, type: !34)
!4260 = !DILocation(line: 39, column: 17, scope: !4254, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 103, column: 10, scope: !4240)
!4262 = !DILocation(line: 41, column: 13, scope: !4254, inlinedAt: !4261)
!4263 = !DILocation(line: 41, column: 9, scope: !4254, inlinedAt: !4261)
!4264 = !DILocation(line: 42, column: 8, scope: !4265, inlinedAt: !4261)
!4265 = distinct !DILexicalBlock(scope: !4254, file: !4255, line: 42, column: 7)
!4266 = !DILocation(line: 42, column: 15, scope: !4265, inlinedAt: !4261)
!4267 = !DILocation(line: 42, column: 10, scope: !4265, inlinedAt: !4261)
!4268 = !DILocation(line: 43, column: 5, scope: !4265, inlinedAt: !4261)
!4269 = !DILocation(line: 103, column: 3, scope: !4240)
!4270 = !DILocation(line: 39, column: 17, scope: !4254)
!4271 = !DILocation(line: 41, column: 13, scope: !4254)
!4272 = !DILocation(line: 41, column: 9, scope: !4254)
!4273 = !DILocation(line: 42, column: 8, scope: !4265)
!4274 = !DILocation(line: 42, column: 15, scope: !4265)
!4275 = !DILocation(line: 42, column: 10, scope: !4265)
!4276 = !DILocation(line: 43, column: 5, scope: !4265)
!4277 = !DILocation(line: 44, column: 3, scope: !4254)
!4278 = distinct !DISubprogram(name: "xnrealloc", scope: !177, file: !177, line: 112, type: !4279, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!34, !34, !99, !99}
!4281 = !{!4282, !4283, !4284}
!4282 = !DILocalVariable(name: "p", arg: 1, scope: !4278, file: !177, line: 112, type: !34)
!4283 = !DILocalVariable(name: "n", arg: 2, scope: !4278, file: !177, line: 112, type: !99)
!4284 = !DILocalVariable(name: "s", arg: 3, scope: !4278, file: !177, line: 112, type: !99)
!4285 = !DILocation(line: 112, column: 18, scope: !4278)
!4286 = !DILocation(line: 112, column: 28, scope: !4278)
!4287 = !DILocation(line: 112, column: 38, scope: !4278)
!4288 = !DILocation(line: 114, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4278, file: !177, line: 114, column: 7)
!4290 = !DILocation(line: 114, column: 7, scope: !4278)
!4291 = !DILocation(line: 115, column: 5, scope: !4289)
!4292 = !DILocation(line: 116, column: 25, scope: !4278)
!4293 = !DILocalVariable(name: "p", arg: 1, scope: !4294, file: !4255, line: 51, type: !34)
!4294 = distinct !DISubprogram(name: "xrealloc", scope: !4255, file: !4255, line: 51, type: !4295, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!34, !34, !99}
!4297 = !{!4293, !4298}
!4298 = !DILocalVariable(name: "n", arg: 2, scope: !4294, file: !4255, line: 51, type: !99)
!4299 = !DILocation(line: 51, column: 17, scope: !4294, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 116, column: 10, scope: !4278)
!4301 = !DILocation(line: 51, column: 27, scope: !4294, inlinedAt: !4300)
!4302 = !DILocation(line: 53, column: 8, scope: !4303, inlinedAt: !4300)
!4303 = distinct !DILexicalBlock(scope: !4294, file: !4255, line: 53, column: 7)
!4304 = !DILocation(line: 53, column: 13, scope: !4303, inlinedAt: !4300)
!4305 = !DILocation(line: 53, column: 10, scope: !4303, inlinedAt: !4300)
!4306 = !DILocation(line: 57, column: 7, scope: !4307, inlinedAt: !4300)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !4255, line: 54, column: 5)
!4308 = !DILocation(line: 58, column: 7, scope: !4307, inlinedAt: !4300)
!4309 = !DILocation(line: 61, column: 7, scope: !4294, inlinedAt: !4300)
!4310 = !DILocation(line: 62, column: 8, scope: !4311, inlinedAt: !4300)
!4311 = distinct !DILexicalBlock(scope: !4294, file: !4255, line: 62, column: 7)
!4312 = !DILocation(line: 62, column: 13, scope: !4311, inlinedAt: !4300)
!4313 = !DILocation(line: 62, column: 10, scope: !4311, inlinedAt: !4300)
!4314 = !DILocation(line: 63, column: 5, scope: !4311, inlinedAt: !4300)
!4315 = !DILocation(line: 0, scope: !4294, inlinedAt: !4300)
!4316 = !DILocation(line: 116, column: 3, scope: !4278)
!4317 = !DILocation(line: 51, column: 17, scope: !4294)
!4318 = !DILocation(line: 51, column: 27, scope: !4294)
!4319 = !DILocation(line: 53, column: 8, scope: !4303)
!4320 = !DILocation(line: 53, column: 13, scope: !4303)
!4321 = !DILocation(line: 53, column: 10, scope: !4303)
!4322 = !DILocation(line: 57, column: 7, scope: !4307)
!4323 = !DILocation(line: 58, column: 7, scope: !4307)
!4324 = !DILocation(line: 61, column: 7, scope: !4294)
!4325 = !DILocation(line: 62, column: 8, scope: !4311)
!4326 = !DILocation(line: 62, column: 13, scope: !4311)
!4327 = !DILocation(line: 62, column: 10, scope: !4311)
!4328 = !DILocation(line: 63, column: 5, scope: !4311)
!4329 = !DILocation(line: 0, scope: !4294)
!4330 = !DILocation(line: 65, column: 1, scope: !4294)
!4331 = !DILocation(line: 174, column: 19, scope: !178)
!4332 = !DILocation(line: 174, column: 30, scope: !178)
!4333 = !DILocation(line: 174, column: 41, scope: !178)
!4334 = !DILocation(line: 176, column: 14, scope: !178)
!4335 = !DILocation(line: 176, column: 10, scope: !178)
!4336 = !DILocation(line: 178, column: 9, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !178, file: !177, line: 178, column: 7)
!4338 = !DILocation(line: 178, column: 7, scope: !178)
!4339 = !DILocation(line: 180, column: 13, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !177, line: 180, column: 11)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !177, line: 179, column: 5)
!4342 = !DILocation(line: 180, column: 11, scope: !4341)
!4343 = !DILocation(line: 188, column: 30, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4340, file: !177, line: 181, column: 9)
!4345 = !DILocation(line: 189, column: 16, scope: !4344)
!4346 = !DILocation(line: 189, column: 13, scope: !4344)
!4347 = !DILocation(line: 190, column: 9, scope: !4344)
!4348 = !DILocation(line: 0, scope: !4344)
!4349 = !DILocation(line: 191, column: 11, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4341, file: !177, line: 191, column: 11)
!4351 = !DILocation(line: 191, column: 11, scope: !4341)
!4352 = !DILocation(line: 206, column: 7, scope: !178)
!4353 = !DILocation(line: 207, column: 25, scope: !178)
!4354 = !DILocation(line: 51, column: 17, scope: !4294, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 207, column: 10, scope: !178)
!4356 = !DILocation(line: 51, column: 27, scope: !4294, inlinedAt: !4355)
!4357 = !DILocation(line: 53, column: 10, scope: !4303, inlinedAt: !4355)
!4358 = !DILocation(line: 192, column: 9, scope: !4350)
!4359 = !DILocation(line: 200, column: 69, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !177, line: 200, column: 11)
!4361 = distinct !DILexicalBlock(scope: !4337, file: !177, line: 195, column: 5)
!4362 = !DILocation(line: 201, column: 11, scope: !4360)
!4363 = !DILocation(line: 200, column: 11, scope: !4361)
!4364 = !DILocation(line: 202, column: 9, scope: !4360)
!4365 = !DILocation(line: 203, column: 14, scope: !4361)
!4366 = !DILocation(line: 203, column: 18, scope: !4361)
!4367 = !DILocation(line: 203, column: 9, scope: !4361)
!4368 = !DILocation(line: 53, column: 8, scope: !4303, inlinedAt: !4355)
!4369 = !DILocation(line: 57, column: 7, scope: !4307, inlinedAt: !4355)
!4370 = !DILocation(line: 58, column: 7, scope: !4307, inlinedAt: !4355)
!4371 = !DILocation(line: 61, column: 7, scope: !4294, inlinedAt: !4355)
!4372 = !DILocation(line: 62, column: 8, scope: !4311, inlinedAt: !4355)
!4373 = !DILocation(line: 62, column: 13, scope: !4311, inlinedAt: !4355)
!4374 = !DILocation(line: 62, column: 10, scope: !4311, inlinedAt: !4355)
!4375 = !DILocation(line: 63, column: 5, scope: !4311, inlinedAt: !4355)
!4376 = !DILocation(line: 0, scope: !4294, inlinedAt: !4355)
!4377 = !DILocation(line: 207, column: 3, scope: !178)
!4378 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !3089, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4379)
!4379 = !{!4380}
!4380 = !DILocalVariable(name: "n", arg: 1, scope: !4378, file: !177, line: 216, type: !99)
!4381 = !DILocation(line: 216, column: 20, scope: !4378)
!4382 = !DILocation(line: 39, column: 17, scope: !4254, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 218, column: 10, scope: !4378)
!4384 = !DILocation(line: 41, column: 13, scope: !4254, inlinedAt: !4383)
!4385 = !DILocation(line: 41, column: 9, scope: !4254, inlinedAt: !4383)
!4386 = !DILocation(line: 42, column: 8, scope: !4265, inlinedAt: !4383)
!4387 = !DILocation(line: 42, column: 15, scope: !4265, inlinedAt: !4383)
!4388 = !DILocation(line: 42, column: 10, scope: !4265, inlinedAt: !4383)
!4389 = !DILocation(line: 43, column: 5, scope: !4265, inlinedAt: !4383)
!4390 = !DILocation(line: 218, column: 3, scope: !4378)
!4391 = distinct !DISubprogram(name: "x2realloc", scope: !4255, file: !4255, line: 74, type: !4392, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4394)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!34, !34, !181}
!4394 = !{!4395, !4396}
!4395 = !DILocalVariable(name: "p", arg: 1, scope: !4391, file: !4255, line: 74, type: !34)
!4396 = !DILocalVariable(name: "pn", arg: 2, scope: !4391, file: !4255, line: 74, type: !181)
!4397 = !DILocation(line: 74, column: 18, scope: !4391)
!4398 = !DILocation(line: 74, column: 29, scope: !4391)
!4399 = !DILocation(line: 174, column: 19, scope: !178, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 76, column: 10, scope: !4391)
!4401 = !DILocation(line: 174, column: 30, scope: !178, inlinedAt: !4400)
!4402 = !DILocation(line: 174, column: 41, scope: !178, inlinedAt: !4400)
!4403 = !DILocation(line: 176, column: 14, scope: !178, inlinedAt: !4400)
!4404 = !DILocation(line: 176, column: 10, scope: !178, inlinedAt: !4400)
!4405 = !DILocation(line: 178, column: 9, scope: !4337, inlinedAt: !4400)
!4406 = !DILocation(line: 178, column: 7, scope: !178, inlinedAt: !4400)
!4407 = !DILocation(line: 180, column: 13, scope: !4340, inlinedAt: !4400)
!4408 = !DILocation(line: 180, column: 11, scope: !4341, inlinedAt: !4400)
!4409 = !DILocation(line: 191, column: 11, scope: !4350, inlinedAt: !4400)
!4410 = !DILocation(line: 191, column: 11, scope: !4341, inlinedAt: !4400)
!4411 = !DILocation(line: 206, column: 7, scope: !178, inlinedAt: !4400)
!4412 = !DILocation(line: 51, column: 17, scope: !4294, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 207, column: 10, scope: !178, inlinedAt: !4400)
!4414 = !DILocation(line: 51, column: 27, scope: !4294, inlinedAt: !4413)
!4415 = !DILocation(line: 53, column: 10, scope: !4303, inlinedAt: !4413)
!4416 = !DILocation(line: 192, column: 9, scope: !4350, inlinedAt: !4400)
!4417 = !DILocation(line: 201, column: 11, scope: !4360, inlinedAt: !4400)
!4418 = !DILocation(line: 200, column: 11, scope: !4361, inlinedAt: !4400)
!4419 = !DILocation(line: 202, column: 9, scope: !4360, inlinedAt: !4400)
!4420 = !DILocation(line: 203, column: 14, scope: !4361, inlinedAt: !4400)
!4421 = !DILocation(line: 203, column: 18, scope: !4361, inlinedAt: !4400)
!4422 = !DILocation(line: 203, column: 9, scope: !4361, inlinedAt: !4400)
!4423 = !DILocation(line: 53, column: 8, scope: !4303, inlinedAt: !4413)
!4424 = !DILocation(line: 57, column: 7, scope: !4307, inlinedAt: !4413)
!4425 = !DILocation(line: 58, column: 7, scope: !4307, inlinedAt: !4413)
!4426 = !DILocation(line: 61, column: 7, scope: !4294, inlinedAt: !4413)
!4427 = !DILocation(line: 62, column: 8, scope: !4311, inlinedAt: !4413)
!4428 = !DILocation(line: 62, column: 13, scope: !4311, inlinedAt: !4413)
!4429 = !DILocation(line: 62, column: 10, scope: !4311, inlinedAt: !4413)
!4430 = !DILocation(line: 63, column: 5, scope: !4311, inlinedAt: !4413)
!4431 = !DILocation(line: 0, scope: !4294, inlinedAt: !4413)
!4432 = !DILocation(line: 76, column: 3, scope: !4391)
!4433 = distinct !DISubprogram(name: "xzalloc", scope: !4255, file: !4255, line: 84, type: !4256, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4434)
!4434 = !{!4435}
!4435 = !DILocalVariable(name: "s", arg: 1, scope: !4433, file: !4255, line: 84, type: !99)
!4436 = !DILocation(line: 84, column: 17, scope: !4433)
!4437 = !DILocation(line: 39, column: 17, scope: !4254, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 86, column: 18, scope: !4433)
!4439 = !DILocation(line: 41, column: 13, scope: !4254, inlinedAt: !4438)
!4440 = !DILocation(line: 41, column: 9, scope: !4254, inlinedAt: !4438)
!4441 = !DILocation(line: 42, column: 8, scope: !4265, inlinedAt: !4438)
!4442 = !DILocation(line: 42, column: 15, scope: !4265, inlinedAt: !4438)
!4443 = !DILocation(line: 42, column: 10, scope: !4265, inlinedAt: !4438)
!4444 = !DILocation(line: 43, column: 5, scope: !4265, inlinedAt: !4438)
!4445 = !DILocation(line: 86, column: 10, scope: !4433)
!4446 = !DILocation(line: 86, column: 3, scope: !4433)
!4447 = distinct !DISubprogram(name: "xcalloc", scope: !4255, file: !4255, line: 93, type: !4241, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4448)
!4448 = !{!4449, !4450, !4451}
!4449 = !DILocalVariable(name: "n", arg: 1, scope: !4447, file: !4255, line: 93, type: !99)
!4450 = !DILocalVariable(name: "s", arg: 2, scope: !4447, file: !4255, line: 93, type: !99)
!4451 = !DILocalVariable(name: "p", scope: !4447, file: !4255, line: 95, type: !34)
!4452 = !DILocation(line: 93, column: 17, scope: !4447)
!4453 = !DILocation(line: 93, column: 27, scope: !4447)
!4454 = !DILocation(line: 100, column: 7, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4447, file: !4255, line: 100, column: 7)
!4456 = !DILocation(line: 101, column: 7, scope: !4455)
!4457 = !DILocation(line: 101, column: 18, scope: !4455)
!4458 = !DILocation(line: 95, column: 9, scope: !4447)
!4459 = !DILocation(line: 101, column: 16, scope: !4455)
!4460 = !DILocation(line: 100, column: 7, scope: !4447)
!4461 = !DILocation(line: 102, column: 5, scope: !4455)
!4462 = !DILocation(line: 103, column: 3, scope: !4447)
!4463 = distinct !DISubprogram(name: "xmemdup", scope: !4255, file: !4255, line: 111, type: !4464, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4468)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!34, !4466, !99}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4468 = !{!4469, !4470}
!4469 = !DILocalVariable(name: "p", arg: 1, scope: !4463, file: !4255, line: 111, type: !4466)
!4470 = !DILocalVariable(name: "s", arg: 2, scope: !4463, file: !4255, line: 111, type: !99)
!4471 = !DILocation(line: 111, column: 22, scope: !4463)
!4472 = !DILocation(line: 111, column: 32, scope: !4463)
!4473 = !DILocation(line: 39, column: 17, scope: !4254, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 113, column: 18, scope: !4463)
!4475 = !DILocation(line: 41, column: 13, scope: !4254, inlinedAt: !4474)
!4476 = !DILocation(line: 41, column: 9, scope: !4254, inlinedAt: !4474)
!4477 = !DILocation(line: 42, column: 8, scope: !4265, inlinedAt: !4474)
!4478 = !DILocation(line: 42, column: 15, scope: !4265, inlinedAt: !4474)
!4479 = !DILocation(line: 42, column: 10, scope: !4265, inlinedAt: !4474)
!4480 = !DILocation(line: 43, column: 5, scope: !4265, inlinedAt: !4474)
!4481 = !DILocation(line: 113, column: 10, scope: !4463)
!4482 = !DILocation(line: 113, column: 3, scope: !4463)
!4483 = distinct !DISubprogram(name: "xstrdup", scope: !4255, file: !4255, line: 119, type: !3294, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !4484)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "string", arg: 1, scope: !4483, file: !4255, line: 119, type: !49)
!4486 = !DILocation(line: 119, column: 22, scope: !4483)
!4487 = !DILocation(line: 121, column: 27, scope: !4483)
!4488 = !DILocation(line: 121, column: 43, scope: !4483)
!4489 = !DILocation(line: 111, column: 22, scope: !4463, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 121, column: 10, scope: !4483)
!4491 = !DILocation(line: 111, column: 32, scope: !4463, inlinedAt: !4490)
!4492 = !DILocation(line: 39, column: 17, scope: !4254, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 113, column: 18, scope: !4463, inlinedAt: !4490)
!4494 = !DILocation(line: 41, column: 13, scope: !4254, inlinedAt: !4493)
!4495 = !DILocation(line: 41, column: 9, scope: !4254, inlinedAt: !4493)
!4496 = !DILocation(line: 42, column: 8, scope: !4265, inlinedAt: !4493)
!4497 = !DILocation(line: 42, column: 15, scope: !4265, inlinedAt: !4493)
!4498 = !DILocation(line: 42, column: 10, scope: !4265, inlinedAt: !4493)
!4499 = !DILocation(line: 43, column: 5, scope: !4265, inlinedAt: !4493)
!4500 = !DILocation(line: 113, column: 10, scope: !4463, inlinedAt: !4490)
!4501 = !DILocation(line: 121, column: 3, scope: !4483)
!4502 = distinct !DISubprogram(name: "xalloc_die", scope: !4503, file: !4503, line: 32, type: !1021, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !190, retainedNodes: !47)
!4503 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4504 = !DILocation(line: 34, column: 10, scope: !4502)
!4505 = !DILocation(line: 34, column: 33, scope: !4502)
!4506 = !DILocation(line: 34, column: 3, scope: !4502)
!4507 = !DILocation(line: 40, column: 3, scope: !4502)
!4508 = distinct !DISubprogram(name: "xvasprintf", scope: !4509, file: !4509, line: 76, type: !4510, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !4519)
!4509 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!32, !49, !4512}
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !193, size: 192, elements: !4514)
!4514 = !{!4515, !4516, !4517, !4518}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4513, file: !193, baseType: !7, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4513, file: !193, baseType: !7, size: 32, offset: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4513, file: !193, baseType: !34, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4513, file: !193, baseType: !34, size: 64, offset: 128)
!4519 = !{!4520, !4521, !4522, !4523, !4525}
!4520 = !DILocalVariable(name: "format", arg: 1, scope: !4508, file: !4509, line: 76, type: !49)
!4521 = !DILocalVariable(name: "args", arg: 2, scope: !4508, file: !4509, line: 76, type: !4512)
!4522 = !DILocalVariable(name: "result", scope: !4508, file: !4509, line: 78, type: !32)
!4523 = !DILocalVariable(name: "argcount", scope: !4524, file: !4509, line: 84, type: !99)
!4524 = distinct !DILexicalBlock(scope: !4508, file: !4509, line: 83, column: 3)
!4525 = !DILocalVariable(name: "f", scope: !4524, file: !4509, line: 85, type: !49)
!4526 = !DILocation(line: 76, column: 25, scope: !4508)
!4527 = !DILocation(line: 76, column: 41, scope: !4508)
!4528 = !DILocation(line: 78, column: 3, scope: !4508)
!4529 = !DILocation(line: 84, column: 12, scope: !4524)
!4530 = !DILocation(line: 85, column: 17, scope: !4524)
!4531 = !DILocation(line: 87, column: 10, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4524, file: !4509, line: 87, column: 5)
!4533 = !DILocation(line: 0, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !4509, line: 88, column: 7)
!4535 = distinct !DILexicalBlock(scope: !4532, file: !4509, line: 87, column: 5)
!4536 = !DILocation(line: 89, column: 13, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4534, file: !4509, line: 89, column: 13)
!4538 = !DILocation(line: 89, column: 13, scope: !4534)
!4539 = !DILocation(line: 94, column: 10, scope: !4534)
!4540 = !DILocation(line: 95, column: 13, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4534, file: !4509, line: 95, column: 13)
!4542 = !DILocation(line: 95, column: 16, scope: !4541)
!4543 = !DILocation(line: 95, column: 13, scope: !4534)
!4544 = !DILocation(line: 97, column: 10, scope: !4534)
!4545 = !DILocation(line: 98, column: 17, scope: !4534)
!4546 = !DILocation(line: 87, column: 5, scope: !4535)
!4547 = distinct !{!4547, !4548, !4549}
!4548 = !DILocation(line: 87, column: 5, scope: !4532)
!4549 = !DILocation(line: 99, column: 7, scope: !4532)
!4550 = !DILocation(line: 91, column: 18, scope: !4537)
!4551 = !DILocation(line: 78, column: 9, scope: !4508)
!4552 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4553, file: !4554, line: 210, type: !4557)
!4553 = distinct !DISubprogram(name: "vasprintf", scope: !4554, file: !4554, line: 210, type: !4555, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !4559)
!4554 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!35, !4557, !4558, !4512}
!4557 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!4558 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!4559 = !{!4552, !4560, !4561}
!4560 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4553, file: !4554, line: 210, type: !4558)
!4561 = !DILocalVariable(name: "__ap", arg: 3, scope: !4553, file: !4554, line: 210, type: !4512)
!4562 = !DILocation(line: 210, column: 1, scope: !4553, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 102, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4508, file: !4509, line: 102, column: 7)
!4565 = !DILocation(line: 213, column: 10, scope: !4553, inlinedAt: !4563)
!4566 = !DILocation(line: 102, column: 41, scope: !4564)
!4567 = !DILocation(line: 102, column: 7, scope: !4508)
!4568 = !DILocation(line: 104, column: 11, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !4509, line: 104, column: 11)
!4570 = distinct !DILexicalBlock(scope: !4564, file: !4509, line: 103, column: 5)
!4571 = !DILocation(line: 104, column: 17, scope: !4569)
!4572 = !DILocation(line: 104, column: 11, scope: !4570)
!4573 = !DILocation(line: 105, column: 9, scope: !4569)
!4574 = !DILocation(line: 109, column: 10, scope: !4508)
!4575 = !DILocation(line: 109, column: 3, scope: !4508)
!4576 = !DILocation(line: 0, scope: !4537)
!4577 = !DILocation(line: 110, column: 1, scope: !4508)
!4578 = distinct !DISubprogram(name: "xstrcat", scope: !4509, file: !4509, line: 33, type: !4579, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !4581)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!32, !99, !4512}
!4581 = !{!4582, !4583, !4584, !4585, !4590, !4591, !4592, !4593, !4597, !4601}
!4582 = !DILocalVariable(name: "argcount", arg: 1, scope: !4578, file: !4509, line: 33, type: !99)
!4583 = !DILocalVariable(name: "args", arg: 2, scope: !4578, file: !4509, line: 33, type: !4512)
!4584 = !DILocalVariable(name: "result", scope: !4578, file: !4509, line: 35, type: !32)
!4585 = !DILocalVariable(name: "ap", scope: !4578, file: !4509, line: 36, type: !4586)
!4586 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !773, line: 52, baseType: !4587)
!4587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !775, line: 48, baseType: !4588)
!4588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !193, line: 36, baseType: !4589)
!4589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4513, size: 192, elements: !784)
!4590 = !DILocalVariable(name: "totalsize", scope: !4578, file: !4509, line: 37, type: !99)
!4591 = !DILocalVariable(name: "i", scope: !4578, file: !4509, line: 38, type: !99)
!4592 = !DILocalVariable(name: "p", scope: !4578, file: !4509, line: 39, type: !32)
!4593 = !DILocalVariable(name: "next", scope: !4594, file: !4509, line: 46, type: !49)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !4509, line: 45, column: 5)
!4595 = distinct !DILexicalBlock(scope: !4596, file: !4509, line: 44, column: 3)
!4596 = distinct !DILexicalBlock(scope: !4578, file: !4509, line: 44, column: 3)
!4597 = !DILocalVariable(name: "next", scope: !4598, file: !4509, line: 65, type: !49)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !4509, line: 64, column: 5)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !4509, line: 63, column: 3)
!4600 = distinct !DILexicalBlock(scope: !4578, file: !4509, line: 63, column: 3)
!4601 = !DILocalVariable(name: "len", scope: !4598, file: !4509, line: 66, type: !99)
!4602 = !DILocation(line: 33, column: 17, scope: !4578)
!4603 = !DILocation(line: 33, column: 35, scope: !4578)
!4604 = !DILocation(line: 36, column: 3, scope: !4578)
!4605 = !DILocation(line: 36, column: 11, scope: !4578)
!4606 = !DILocation(line: 37, column: 10, scope: !4578)
!4607 = !DILocation(line: 43, column: 3, scope: !4578)
!4608 = !DILocation(line: 38, column: 10, scope: !4578)
!4609 = !DILocation(line: 44, column: 24, scope: !4595)
!4610 = !DILocation(line: 44, column: 3, scope: !4596)
!4611 = !DILocation(line: 49, column: 3, scope: !4578)
!4612 = !DILocation(line: 61, column: 12, scope: !4578)
!4613 = !DILocation(line: 35, column: 9, scope: !4578)
!4614 = !DILocation(line: 39, column: 9, scope: !4578)
!4615 = !DILocation(line: 63, column: 3, scope: !4600)
!4616 = !DILocation(line: 46, column: 26, scope: !4594)
!4617 = !DILocation(line: 46, column: 19, scope: !4594)
!4618 = !DILocation(line: 47, column: 36, scope: !4594)
!4619 = !DILocalVariable(name: "size1", arg: 1, scope: !4620, file: !4621, line: 63, type: !99)
!4620 = distinct !DISubprogram(name: "xsum", scope: !4621, file: !4621, line: 63, type: !4622, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !4624)
!4621 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!99, !99, !99}
!4624 = !{!4619, !4625, !4626}
!4625 = !DILocalVariable(name: "size2", arg: 2, scope: !4620, file: !4621, line: 63, type: !99)
!4626 = !DILocalVariable(name: "sum", scope: !4620, file: !4621, line: 65, type: !99)
!4627 = !DILocation(line: 63, column: 14, scope: !4620, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 47, column: 19, scope: !4594)
!4629 = !DILocation(line: 63, column: 28, scope: !4620, inlinedAt: !4628)
!4630 = !DILocation(line: 65, column: 22, scope: !4620, inlinedAt: !4628)
!4631 = !DILocation(line: 65, column: 10, scope: !4620, inlinedAt: !4628)
!4632 = !DILocation(line: 66, column: 15, scope: !4620, inlinedAt: !4628)
!4633 = !DILocation(line: 66, column: 11, scope: !4620, inlinedAt: !4628)
!4634 = !DILocation(line: 44, column: 30, scope: !4595)
!4635 = distinct !{!4635, !4610, !4636}
!4636 = !DILocation(line: 48, column: 5, scope: !4596)
!4637 = !DILocation(line: 54, column: 42, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4578, file: !4509, line: 54, column: 7)
!4639 = !DILocation(line: 54, column: 29, scope: !4638)
!4640 = !DILocation(line: 56, column: 7, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4638, file: !4509, line: 55, column: 5)
!4642 = !DILocation(line: 56, column: 13, scope: !4641)
!4643 = !DILocation(line: 57, column: 7, scope: !4641)
!4644 = !DILocation(line: 65, column: 26, scope: !4598)
!4645 = !DILocation(line: 65, column: 19, scope: !4598)
!4646 = !DILocation(line: 66, column: 20, scope: !4598)
!4647 = !DILocation(line: 66, column: 14, scope: !4598)
!4648 = !DILocation(line: 67, column: 7, scope: !4598)
!4649 = !DILocation(line: 68, column: 9, scope: !4598)
!4650 = !DILocation(line: 63, column: 30, scope: !4599)
!4651 = !DILocation(line: 63, column: 24, scope: !4599)
!4652 = distinct !{!4652, !4615, !4653}
!4653 = !DILocation(line: 69, column: 5, scope: !4600)
!4654 = !DILocation(line: 0, scope: !4598)
!4655 = !DILocation(line: 70, column: 6, scope: !4578)
!4656 = !DILocation(line: 72, column: 3, scope: !4578)
!4657 = !DILocation(line: 0, scope: !4578)
!4658 = !DILocation(line: 73, column: 1, scope: !4578)
!4659 = distinct !DISubprogram(name: "rpl_calloc", scope: !4660, file: !4660, line: 42, type: !4241, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !4661)
!4660 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4661 = !{!4662, !4663, !4664, !4665}
!4662 = !DILocalVariable(name: "n", arg: 1, scope: !4659, file: !4660, line: 42, type: !99)
!4663 = !DILocalVariable(name: "s", arg: 2, scope: !4659, file: !4660, line: 42, type: !99)
!4664 = !DILocalVariable(name: "result", scope: !4659, file: !4660, line: 44, type: !34)
!4665 = !DILocalVariable(name: "bytes", scope: !4666, file: !4660, line: 56, type: !99)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !4660, line: 53, column: 5)
!4667 = distinct !DILexicalBlock(scope: !4659, file: !4660, line: 47, column: 7)
!4668 = !DILocation(line: 42, column: 20, scope: !4659)
!4669 = !DILocation(line: 42, column: 30, scope: !4659)
!4670 = !DILocation(line: 47, column: 9, scope: !4667)
!4671 = !DILocation(line: 47, column: 19, scope: !4667)
!4672 = !DILocation(line: 47, column: 14, scope: !4667)
!4673 = !DILocation(line: 56, column: 24, scope: !4666)
!4674 = !DILocation(line: 56, column: 14, scope: !4666)
!4675 = !DILocation(line: 57, column: 17, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4666, file: !4660, line: 57, column: 11)
!4677 = !DILocation(line: 57, column: 21, scope: !4676)
!4678 = !DILocation(line: 57, column: 11, scope: !4666)
!4679 = !DILocation(line: 59, column: 11, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !4660, line: 58, column: 9)
!4681 = !DILocation(line: 59, column: 17, scope: !4680)
!4682 = !DILocation(line: 65, column: 12, scope: !4659)
!4683 = !DILocation(line: 44, column: 9, scope: !4659)
!4684 = !DILocation(line: 72, column: 3, scope: !4659)
!4685 = !DILocation(line: 0, scope: !4680)
!4686 = !DILocation(line: 73, column: 1, scope: !4659)
!4687 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4688, file: !4688, line: 385, type: !4689, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !4703)
!4688 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!99, !4691, !49, !99, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2254, line: 6, baseType: !4694)
!4694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2256, line: 21, baseType: !4695)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2256, line: 13, size: 64, elements: !4696)
!4696 = !{!4697, !4698}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4695, file: !2256, line: 15, baseType: !35, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4695, file: !2256, line: 20, baseType: !4699, size: 32, offset: 32)
!4699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4695, file: !2256, line: 16, size: 32, elements: !4700)
!4700 = !{!4701, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4699, file: !2256, line: 18, baseType: !7, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4699, file: !2256, line: 19, baseType: !2265, size: 32)
!4703 = !{!4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4704 = !DILocalVariable(name: "pwc", arg: 1, scope: !4687, file: !4688, line: 385, type: !4691)
!4705 = !DILocalVariable(name: "s", arg: 2, scope: !4687, file: !4688, line: 385, type: !49)
!4706 = !DILocalVariable(name: "n", arg: 3, scope: !4687, file: !4688, line: 385, type: !99)
!4707 = !DILocalVariable(name: "ps", arg: 4, scope: !4687, file: !4688, line: 385, type: !4692)
!4708 = !DILocalVariable(name: "ret", scope: !4687, file: !4688, line: 387, type: !99)
!4709 = !DILocalVariable(name: "wc", scope: !4687, file: !4688, line: 388, type: !2270)
!4710 = !DILocalVariable(name: "uc", scope: !4711, file: !4688, line: 449, type: !2114)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !4688, line: 448, column: 5)
!4712 = distinct !DILexicalBlock(scope: !4687, file: !4688, line: 447, column: 7)
!4713 = !DILocation(line: 385, column: 23, scope: !4687)
!4714 = !DILocation(line: 385, column: 40, scope: !4687)
!4715 = !DILocation(line: 385, column: 50, scope: !4687)
!4716 = !DILocation(line: 385, column: 64, scope: !4687)
!4717 = !DILocation(line: 388, column: 3, scope: !4687)
!4718 = !DILocation(line: 404, column: 9, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4687, file: !4688, line: 404, column: 7)
!4720 = !DILocation(line: 404, column: 7, scope: !4687)
!4721 = !DILocation(line: 439, column: 9, scope: !4687)
!4722 = !DILocation(line: 387, column: 10, scope: !4687)
!4723 = !DILocation(line: 447, column: 19, scope: !4712)
!4724 = !DILocation(line: 447, column: 31, scope: !4712)
!4725 = !DILocation(line: 447, column: 26, scope: !4712)
!4726 = !DILocation(line: 447, column: 41, scope: !4712)
!4727 = !DILocation(line: 447, column: 7, scope: !4687)
!4728 = !DILocation(line: 449, column: 26, scope: !4711)
!4729 = !DILocation(line: 449, column: 21, scope: !4711)
!4730 = !DILocation(line: 450, column: 14, scope: !4711)
!4731 = !DILocation(line: 450, column: 12, scope: !4711)
!4732 = !DILocation(line: 0, scope: !4711)
!4733 = !DILocation(line: 456, column: 1, scope: !4687)
!4734 = distinct !DISubprogram(name: "close_stream", scope: !4735, file: !4735, line: 56, type: !4736, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !4772)
!4735 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!35, !4738}
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4055, line: 7, baseType: !4740)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4057, line: 49, size: 1728, elements: !4741)
!4741 = !{!4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4740, file: !4057, line: 51, baseType: !35, size: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4740, file: !4057, line: 54, baseType: !32, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4740, file: !4057, line: 55, baseType: !32, size: 64, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4740, file: !4057, line: 56, baseType: !32, size: 64, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4740, file: !4057, line: 57, baseType: !32, size: 64, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4740, file: !4057, line: 58, baseType: !32, size: 64, offset: 320)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4740, file: !4057, line: 59, baseType: !32, size: 64, offset: 384)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4740, file: !4057, line: 60, baseType: !32, size: 64, offset: 448)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4740, file: !4057, line: 61, baseType: !32, size: 64, offset: 512)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4740, file: !4057, line: 64, baseType: !32, size: 64, offset: 576)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4740, file: !4057, line: 65, baseType: !32, size: 64, offset: 640)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4740, file: !4057, line: 66, baseType: !32, size: 64, offset: 704)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4740, file: !4057, line: 68, baseType: !4072, size: 64, offset: 768)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4740, file: !4057, line: 70, baseType: !4756, size: 64, offset: 832)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4740, file: !4057, line: 72, baseType: !35, size: 32, offset: 896)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4740, file: !4057, line: 73, baseType: !35, size: 32, offset: 928)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4740, file: !4057, line: 74, baseType: !1213, size: 64, offset: 960)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4740, file: !4057, line: 77, baseType: !36, size: 16, offset: 1024)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4740, file: !4057, line: 78, baseType: !4081, size: 8, offset: 1040)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4740, file: !4057, line: 79, baseType: !4083, size: 8, offset: 1048)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4740, file: !4057, line: 81, baseType: !4085, size: 64, offset: 1088)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4740, file: !4057, line: 89, baseType: !4088, size: 64, offset: 1152)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4740, file: !4057, line: 91, baseType: !4090, size: 64, offset: 1216)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4740, file: !4057, line: 92, baseType: !4093, size: 64, offset: 1280)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4740, file: !4057, line: 93, baseType: !4756, size: 64, offset: 1344)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4740, file: !4057, line: 94, baseType: !34, size: 64, offset: 1408)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4740, file: !4057, line: 95, baseType: !99, size: 64, offset: 1472)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4740, file: !4057, line: 96, baseType: !35, size: 32, offset: 1536)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4740, file: !4057, line: 98, baseType: !4100, size: 160, offset: 1568)
!4772 = !{!4773, !4774, !4776, !4777}
!4773 = !DILocalVariable(name: "stream", arg: 1, scope: !4734, file: !4735, line: 56, type: !4738)
!4774 = !DILocalVariable(name: "some_pending", scope: !4734, file: !4735, line: 58, type: !4775)
!4775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!4776 = !DILocalVariable(name: "prev_fail", scope: !4734, file: !4735, line: 59, type: !4775)
!4777 = !DILocalVariable(name: "fclose_fail", scope: !4734, file: !4735, line: 60, type: !4775)
!4778 = !DILocation(line: 56, column: 21, scope: !4734)
!4779 = !DILocation(line: 58, column: 30, scope: !4734)
!4780 = !DILocalVariable(name: "__stream", arg: 1, scope: !4781, file: !4782, line: 135, type: !4738)
!4781 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4782, file: !4782, line: 135, type: !4736, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !4783)
!4782 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4783 = !{!4780}
!4784 = !DILocation(line: 135, column: 1, scope: !4781, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 59, column: 27, scope: !4734)
!4786 = !DILocation(line: 137, column: 10, scope: !4781, inlinedAt: !4785)
!4787 = !{!4788, !717, i64 0}
!4788 = !{!"_IO_FILE", !717, i64 0, !639, i64 8, !639, i64 16, !639, i64 24, !639, i64 32, !639, i64 40, !639, i64 48, !639, i64 56, !639, i64 64, !639, i64 72, !639, i64 80, !639, i64 88, !639, i64 96, !639, i64 104, !717, i64 112, !717, i64 116, !1458, i64 120, !1918, i64 128, !640, i64 130, !640, i64 131, !639, i64 136, !1458, i64 144, !639, i64 152, !639, i64 160, !639, i64 168, !639, i64 176, !1458, i64 184, !717, i64 192, !640, i64 196}
!4789 = !DILocation(line: 59, column: 43, scope: !4734)
!4790 = !DILocation(line: 60, column: 29, scope: !4734)
!4791 = !DILocation(line: 60, column: 45, scope: !4734)
!4792 = !DILocation(line: 70, column: 17, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4734, file: !4735, line: 70, column: 7)
!4794 = !DILocation(line: 58, column: 50, scope: !4734)
!4795 = !DILocation(line: 70, column: 33, scope: !4793)
!4796 = !DILocation(line: 70, column: 53, scope: !4793)
!4797 = !DILocation(line: 70, column: 59, scope: !4793)
!4798 = !DILocation(line: 70, column: 7, scope: !4734)
!4799 = !DILocation(line: 72, column: 11, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4793, file: !4735, line: 71, column: 5)
!4801 = !DILocation(line: 73, column: 9, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4800, file: !4735, line: 72, column: 11)
!4803 = !DILocation(line: 73, column: 15, scope: !4802)
!4804 = !DILocation(line: 0, scope: !4734)
!4805 = !DILocation(line: 78, column: 1, scope: !4734)
!4806 = distinct !DISubprogram(name: "hard_locale", scope: !4807, file: !4807, line: 38, type: !793, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !4808)
!4807 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4808 = !{!4809, !4810, !4811}
!4809 = !DILocalVariable(name: "category", arg: 1, scope: !4806, file: !4807, line: 38, type: !35)
!4810 = !DILocalVariable(name: "hard", scope: !4806, file: !4807, line: 40, type: !59)
!4811 = !DILocalVariable(name: "p", scope: !4806, file: !4807, line: 41, type: !49)
!4812 = !DILocation(line: 38, column: 18, scope: !4806)
!4813 = !DILocation(line: 40, column: 8, scope: !4806)
!4814 = !DILocation(line: 41, column: 19, scope: !4806)
!4815 = !DILocation(line: 41, column: 15, scope: !4806)
!4816 = !DILocation(line: 43, column: 7, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4806, file: !4807, line: 43, column: 7)
!4818 = !DILocation(line: 43, column: 7, scope: !4806)
!4819 = !DILocation(line: 47, column: 15, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !4807, line: 47, column: 15)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !4807, line: 46, column: 9)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !4807, line: 45, column: 11)
!4823 = distinct !DILexicalBlock(scope: !4817, file: !4807, line: 44, column: 5)
!4824 = !DILocation(line: 47, column: 31, scope: !4820)
!4825 = !DILocation(line: 47, column: 36, scope: !4820)
!4826 = !DILocation(line: 47, column: 39, scope: !4820)
!4827 = !DILocation(line: 47, column: 59, scope: !4820)
!4828 = !DILocation(line: 47, column: 15, scope: !4821)
!4829 = !DILocation(line: 48, column: 13, scope: !4820)
!4830 = !DILocation(line: 71, column: 3, scope: !4806)
!4831 = distinct !DISubprogram(name: "locale_charset", scope: !4832, file: !4832, line: 687, type: !4833, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !204, retainedNodes: !4835)
!4832 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!49}
!4835 = !{!4836}
!4836 = !DILocalVariable(name: "codeset", scope: !4831, file: !4832, line: 689, type: !49)
!4837 = !DILocation(line: 696, column: 13, scope: !4831)
!4838 = !DILocation(line: 689, column: 15, scope: !4831)
!4839 = !DILocation(line: 754, column: 15, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4831, file: !4832, line: 754, column: 7)
!4841 = !DILocation(line: 754, column: 7, scope: !4831)
!4842 = !DILocation(line: 907, column: 13, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !4832, line: 907, column: 13)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !4832, line: 897, column: 7)
!4845 = distinct !DILexicalBlock(scope: !4831, file: !4832, line: 856, column: 3)
!4846 = !DILocation(line: 907, column: 24, scope: !4843)
!4847 = !DILocation(line: 907, column: 13, scope: !4844)
!4848 = !DILocation(line: 995, column: 3, scope: !4831)
!4849 = distinct !DISubprogram(name: "rpl_fclose", scope: !4850, file: !4850, line: 58, type: !4851, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !593, retainedNodes: !4887)
!4850 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!35, !4853}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4055, line: 7, baseType: !4855)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4057, line: 49, size: 1728, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4855, file: !4057, line: 51, baseType: !35, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4855, file: !4057, line: 54, baseType: !32, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4855, file: !4057, line: 55, baseType: !32, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4855, file: !4057, line: 56, baseType: !32, size: 64, offset: 192)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4855, file: !4057, line: 57, baseType: !32, size: 64, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4855, file: !4057, line: 58, baseType: !32, size: 64, offset: 320)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4855, file: !4057, line: 59, baseType: !32, size: 64, offset: 384)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4855, file: !4057, line: 60, baseType: !32, size: 64, offset: 448)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4855, file: !4057, line: 61, baseType: !32, size: 64, offset: 512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4855, file: !4057, line: 64, baseType: !32, size: 64, offset: 576)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4855, file: !4057, line: 65, baseType: !32, size: 64, offset: 640)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4855, file: !4057, line: 66, baseType: !32, size: 64, offset: 704)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4855, file: !4057, line: 68, baseType: !4072, size: 64, offset: 768)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4855, file: !4057, line: 70, baseType: !4871, size: 64, offset: 832)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4855, file: !4057, line: 72, baseType: !35, size: 32, offset: 896)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4855, file: !4057, line: 73, baseType: !35, size: 32, offset: 928)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4855, file: !4057, line: 74, baseType: !1213, size: 64, offset: 960)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4855, file: !4057, line: 77, baseType: !36, size: 16, offset: 1024)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4855, file: !4057, line: 78, baseType: !4081, size: 8, offset: 1040)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4855, file: !4057, line: 79, baseType: !4083, size: 8, offset: 1048)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4855, file: !4057, line: 81, baseType: !4085, size: 64, offset: 1088)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4855, file: !4057, line: 89, baseType: !4088, size: 64, offset: 1152)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4855, file: !4057, line: 91, baseType: !4090, size: 64, offset: 1216)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4855, file: !4057, line: 92, baseType: !4093, size: 64, offset: 1280)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4855, file: !4057, line: 93, baseType: !4871, size: 64, offset: 1344)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4855, file: !4057, line: 94, baseType: !34, size: 64, offset: 1408)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4855, file: !4057, line: 95, baseType: !99, size: 64, offset: 1472)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4855, file: !4057, line: 96, baseType: !35, size: 32, offset: 1536)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4855, file: !4057, line: 98, baseType: !4100, size: 160, offset: 1568)
!4887 = !{!4888, !4889, !4890, !4891}
!4888 = !DILocalVariable(name: "fp", arg: 1, scope: !4849, file: !4850, line: 58, type: !4853)
!4889 = !DILocalVariable(name: "saved_errno", scope: !4849, file: !4850, line: 60, type: !35)
!4890 = !DILocalVariable(name: "fd", scope: !4849, file: !4850, line: 61, type: !35)
!4891 = !DILocalVariable(name: "result", scope: !4849, file: !4850, line: 62, type: !35)
!4892 = !DILocation(line: 58, column: 19, scope: !4849)
!4893 = !DILocation(line: 60, column: 7, scope: !4849)
!4894 = !DILocation(line: 62, column: 7, scope: !4849)
!4895 = !DILocation(line: 65, column: 8, scope: !4849)
!4896 = !DILocation(line: 61, column: 7, scope: !4849)
!4897 = !DILocation(line: 66, column: 10, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4849, file: !4850, line: 66, column: 7)
!4899 = !DILocation(line: 66, column: 7, scope: !4849)
!4900 = !DILocation(line: 67, column: 12, scope: !4898)
!4901 = !DILocation(line: 67, column: 5, scope: !4898)
!4902 = !DILocation(line: 72, column: 9, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4849, file: !4850, line: 72, column: 7)
!4904 = !DILocation(line: 72, column: 23, scope: !4903)
!4905 = !DILocation(line: 72, column: 33, scope: !4903)
!4906 = !DILocation(line: 72, column: 26, scope: !4903)
!4907 = !DILocation(line: 72, column: 59, scope: !4903)
!4908 = !DILocation(line: 73, column: 7, scope: !4903)
!4909 = !DILocation(line: 73, column: 10, scope: !4903)
!4910 = !DILocation(line: 72, column: 7, scope: !4849)
!4911 = !DILocation(line: 100, column: 12, scope: !4849)
!4912 = !DILocation(line: 105, column: 7, scope: !4849)
!4913 = !DILocation(line: 74, column: 19, scope: !4903)
!4914 = !DILocation(line: 105, column: 19, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4849, file: !4850, line: 105, column: 7)
!4916 = !DILocation(line: 107, column: 13, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4915, file: !4850, line: 106, column: 5)
!4918 = !DILocation(line: 109, column: 5, scope: !4917)
!4919 = !DILocation(line: 0, scope: !4849)
!4920 = !DILocation(line: 112, column: 1, scope: !4849)
!4921 = distinct !DISubprogram(name: "rpl_fflush", scope: !4922, file: !4922, line: 129, type: !4923, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !595, retainedNodes: !4959)
!4922 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!35, !4925}
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4055, line: 7, baseType: !4927)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4057, line: 49, size: 1728, elements: !4928)
!4928 = !{!4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4927, file: !4057, line: 51, baseType: !35, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4927, file: !4057, line: 54, baseType: !32, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4927, file: !4057, line: 55, baseType: !32, size: 64, offset: 128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4927, file: !4057, line: 56, baseType: !32, size: 64, offset: 192)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4927, file: !4057, line: 57, baseType: !32, size: 64, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4927, file: !4057, line: 58, baseType: !32, size: 64, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4927, file: !4057, line: 59, baseType: !32, size: 64, offset: 384)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4927, file: !4057, line: 60, baseType: !32, size: 64, offset: 448)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4927, file: !4057, line: 61, baseType: !32, size: 64, offset: 512)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4927, file: !4057, line: 64, baseType: !32, size: 64, offset: 576)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4927, file: !4057, line: 65, baseType: !32, size: 64, offset: 640)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4927, file: !4057, line: 66, baseType: !32, size: 64, offset: 704)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4927, file: !4057, line: 68, baseType: !4072, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4927, file: !4057, line: 70, baseType: !4943, size: 64, offset: 832)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4927, file: !4057, line: 72, baseType: !35, size: 32, offset: 896)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4927, file: !4057, line: 73, baseType: !35, size: 32, offset: 928)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4927, file: !4057, line: 74, baseType: !1213, size: 64, offset: 960)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4927, file: !4057, line: 77, baseType: !36, size: 16, offset: 1024)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4927, file: !4057, line: 78, baseType: !4081, size: 8, offset: 1040)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4927, file: !4057, line: 79, baseType: !4083, size: 8, offset: 1048)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4927, file: !4057, line: 81, baseType: !4085, size: 64, offset: 1088)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4927, file: !4057, line: 89, baseType: !4088, size: 64, offset: 1152)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4927, file: !4057, line: 91, baseType: !4090, size: 64, offset: 1216)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4927, file: !4057, line: 92, baseType: !4093, size: 64, offset: 1280)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4927, file: !4057, line: 93, baseType: !4943, size: 64, offset: 1344)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4927, file: !4057, line: 94, baseType: !34, size: 64, offset: 1408)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4927, file: !4057, line: 95, baseType: !99, size: 64, offset: 1472)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4927, file: !4057, line: 96, baseType: !35, size: 32, offset: 1536)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4927, file: !4057, line: 98, baseType: !4100, size: 160, offset: 1568)
!4959 = !{!4960}
!4960 = !DILocalVariable(name: "stream", arg: 1, scope: !4921, file: !4922, line: 129, type: !4925)
!4961 = !DILocation(line: 129, column: 19, scope: !4921)
!4962 = !DILocation(line: 150, column: 14, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 150, column: 7)
!4964 = !DILocation(line: 150, column: 22, scope: !4963)
!4965 = !DILocation(line: 150, column: 27, scope: !4963)
!4966 = !DILocation(line: 150, column: 7, scope: !4921)
!4967 = !DILocation(line: 151, column: 12, scope: !4963)
!4968 = !DILocation(line: 151, column: 5, scope: !4963)
!4969 = !DILocalVariable(name: "fp", arg: 1, scope: !4970, file: !4922, line: 41, type: !4925)
!4970 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4922, file: !4922, line: 41, type: !4971, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !595, retainedNodes: !4973)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{null, !4925}
!4973 = !{!4969}
!4974 = !DILocation(line: 41, column: 48, scope: !4970, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 156, column: 3, scope: !4921)
!4976 = !DILocation(line: 43, column: 11, scope: !4977, inlinedAt: !4975)
!4977 = distinct !DILexicalBlock(scope: !4970, file: !4922, line: 43, column: 7)
!4978 = !DILocation(line: 43, column: 18, scope: !4977, inlinedAt: !4975)
!4979 = !DILocation(line: 43, column: 7, scope: !4970, inlinedAt: !4975)
!4980 = !DILocation(line: 45, column: 5, scope: !4977, inlinedAt: !4975)
!4981 = !DILocation(line: 158, column: 10, scope: !4921)
!4982 = !DILocation(line: 158, column: 3, scope: !4921)
!4983 = !DILocation(line: 0, scope: !4921)
!4984 = !DILocation(line: 232, column: 1, scope: !4921)
!4985 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4986, file: !4986, line: 28, type: !4987, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !597, retainedNodes: !5024)
!4986 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!35, !4989, !5023, !35}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4055, line: 7, baseType: !4991)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4057, line: 49, size: 1728, elements: !4992)
!4992 = !{!4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4991, file: !4057, line: 51, baseType: !35, size: 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4991, file: !4057, line: 54, baseType: !32, size: 64, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4991, file: !4057, line: 55, baseType: !32, size: 64, offset: 128)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4991, file: !4057, line: 56, baseType: !32, size: 64, offset: 192)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4991, file: !4057, line: 57, baseType: !32, size: 64, offset: 256)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4991, file: !4057, line: 58, baseType: !32, size: 64, offset: 320)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4991, file: !4057, line: 59, baseType: !32, size: 64, offset: 384)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4991, file: !4057, line: 60, baseType: !32, size: 64, offset: 448)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4991, file: !4057, line: 61, baseType: !32, size: 64, offset: 512)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4991, file: !4057, line: 64, baseType: !32, size: 64, offset: 576)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4991, file: !4057, line: 65, baseType: !32, size: 64, offset: 640)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4991, file: !4057, line: 66, baseType: !32, size: 64, offset: 704)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4991, file: !4057, line: 68, baseType: !4072, size: 64, offset: 768)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4991, file: !4057, line: 70, baseType: !5007, size: 64, offset: 832)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4991, file: !4057, line: 72, baseType: !35, size: 32, offset: 896)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4991, file: !4057, line: 73, baseType: !35, size: 32, offset: 928)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4991, file: !4057, line: 74, baseType: !1213, size: 64, offset: 960)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4991, file: !4057, line: 77, baseType: !36, size: 16, offset: 1024)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4991, file: !4057, line: 78, baseType: !4081, size: 8, offset: 1040)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4991, file: !4057, line: 79, baseType: !4083, size: 8, offset: 1048)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4991, file: !4057, line: 81, baseType: !4085, size: 64, offset: 1088)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4991, file: !4057, line: 89, baseType: !4088, size: 64, offset: 1152)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4991, file: !4057, line: 91, baseType: !4090, size: 64, offset: 1216)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4991, file: !4057, line: 92, baseType: !4093, size: 64, offset: 1280)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4991, file: !4057, line: 93, baseType: !5007, size: 64, offset: 1344)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4991, file: !4057, line: 94, baseType: !34, size: 64, offset: 1408)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4991, file: !4057, line: 95, baseType: !99, size: 64, offset: 1472)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4991, file: !4057, line: 96, baseType: !35, size: 32, offset: 1536)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4991, file: !4057, line: 98, baseType: !4100, size: 160, offset: 1568)
!5023 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !773, line: 63, baseType: !1213)
!5024 = !{!5025, !5026, !5027, !5028}
!5025 = !DILocalVariable(name: "fp", arg: 1, scope: !4985, file: !4986, line: 28, type: !4989)
!5026 = !DILocalVariable(name: "offset", arg: 2, scope: !4985, file: !4986, line: 28, type: !5023)
!5027 = !DILocalVariable(name: "whence", arg: 3, scope: !4985, file: !4986, line: 28, type: !35)
!5028 = !DILocalVariable(name: "pos", scope: !5029, file: !4986, line: 117, type: !5023)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !4986, line: 113, column: 5)
!5030 = distinct !DILexicalBlock(scope: !4985, file: !4986, line: 52, column: 7)
!5031 = !DILocation(line: 28, column: 15, scope: !4985)
!5032 = !DILocation(line: 28, column: 25, scope: !4985)
!5033 = !DILocation(line: 28, column: 37, scope: !4985)
!5034 = !DILocation(line: 52, column: 11, scope: !5030)
!5035 = !{!4788, !639, i64 16}
!5036 = !DILocation(line: 52, column: 31, scope: !5030)
!5037 = !{!4788, !639, i64 8}
!5038 = !DILocation(line: 52, column: 24, scope: !5030)
!5039 = !DILocation(line: 53, column: 7, scope: !5030)
!5040 = !DILocation(line: 53, column: 14, scope: !5030)
!5041 = !{!4788, !639, i64 40}
!5042 = !DILocation(line: 53, column: 35, scope: !5030)
!5043 = !{!4788, !639, i64 32}
!5044 = !DILocation(line: 53, column: 28, scope: !5030)
!5045 = !DILocation(line: 54, column: 7, scope: !5030)
!5046 = !DILocation(line: 54, column: 14, scope: !5030)
!5047 = !{!4788, !639, i64 72}
!5048 = !DILocation(line: 54, column: 28, scope: !5030)
!5049 = !DILocation(line: 52, column: 7, scope: !4985)
!5050 = !DILocation(line: 117, column: 26, scope: !5029)
!5051 = !DILocation(line: 117, column: 19, scope: !5029)
!5052 = !DILocation(line: 117, column: 13, scope: !5029)
!5053 = !DILocation(line: 118, column: 15, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5029, file: !4986, line: 118, column: 11)
!5055 = !DILocation(line: 118, column: 11, scope: !5029)
!5056 = !DILocation(line: 129, column: 11, scope: !5029)
!5057 = !DILocation(line: 129, column: 18, scope: !5029)
!5058 = !DILocation(line: 130, column: 11, scope: !5029)
!5059 = !DILocation(line: 130, column: 19, scope: !5029)
!5060 = !{!4788, !1458, i64 144}
!5061 = !DILocation(line: 161, column: 7, scope: !5029)
!5062 = !DILocation(line: 163, column: 10, scope: !4985)
!5063 = !DILocation(line: 163, column: 3, scope: !4985)
!5064 = !DILocation(line: 0, scope: !4985)
!5065 = !DILocation(line: 164, column: 1, scope: !4985)
